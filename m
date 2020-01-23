Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D76681472AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 21:39:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p46JkyVlsLhXgFwRckZNznzK6grCuZMi/W5BZtL8UIg=; b=L0WfD18yTIthC/
	9h4r5YtKrZMLp5qWR89PbwIFSaCz5P8jeAN2cofJqa5GXSq8X0dnQv06gNx/+CsEsXKp+dpavwqLB
	3Kbf1Gj1GNzTu91ixFT08oYeIuGZrGmf7yQ42WSEC836nplXsGH/sTtUfGg8mOjiLbcfthsyOrHEU
	MUPAr8ir5GjUWf0tKwVUGl9bXMQxlq/zQQsOUauzKik97J/myHjY3qGZ6OrExQuG735uK8c+GAK/F
	PktiF6RgYWCVHMOwFNyBnqyQEH8b2J8KduSQdrnfFcCk0KmJk6suVUNk0QzN++sLvBN/K0doq9uTe
	ZxIovdKvU2ucEWZXVfkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iujG9-0000I5-7w; Thu, 23 Jan 2020 20:39:25 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iujFw-0000HN-6l
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 20:39:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579811950;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MyE9Ytq4amd8dy1aNSoOTSin79NmbQ0RcZM9I95mUT0=;
 b=STJAmv29aw/1UJ5kiPoVoiX31pHlUVqSiD3QvSucw6+MOPoQ/LsXdhOqYdH3dKd2eEl6aI
 +HsKMftT4pwm5x0vc0MCJvj36xW2uK/gnqB/UHpkEEd83NL6TpIQO1XjtuyG1Gsz3OK50U
 65AZ8Ktj012bFhWLYkHrtTX6HxccPOc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-274-D5EjJrCwNdypAXS4I0YCEQ-1; Thu, 23 Jan 2020 15:39:06 -0500
X-MC-Unique: D5EjJrCwNdypAXS4I0YCEQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 08E1F14E2;
 Thu, 23 Jan 2020 20:39:04 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 50FE185741;
 Thu, 23 Jan 2020 20:39:01 +0000 (UTC)
Subject: Re: [PATCH v9 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
From: Waiman Long <longman@redhat.com>
To: Alex Kogan <alex.kogan@oracle.com>, linux@armlinux.org.uk,
 peterz@infradead.org, mingo@redhat.com, will.deacon@arm.com, arnd@arndb.de,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <20200115035920.54451-5-alex.kogan@oracle.com>
 <f5e31716-d687-f64c-0fc5-f1c9b539c4ff@redhat.com>
Organization: Red Hat
Message-ID: <5f865b62-4867-2c7b-715a-0605759e647f@redhat.com>
Date: Thu, 23 Jan 2020 15:39:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <f5e31716-d687-f64c-0fc5-f1c9b539c4ff@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_123912_322635_92E5EA0D 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dave.dice@oracle.com, steven.sistare@oracle.com, daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/23/20 2:55 PM, Waiman Long wrote:
> Playing with lock event counts, I would like you to change the meaning
> intra_count parameter that you are tracking. Instead of tracking the
> number of times a lock is passed to a waiter of the same node
> consecutively, I would like you to track the number of times the head
> waiter in the secondary queue has given up its chance to acquire the
> lock because a later waiter has jumped the queue and acquire the lock
> before it. This value determines the worst case latency that a secondary
> queue waiter can experience. So

Well, that is not strictly true as a a waiter in the middle of the
secondary queue can go back and fro between the queues for a number of
times. Of course, if we can ensure that when a FLUSH_SECONDARY_QUEUE is
issued, those waiters that were in the secondary queue won't be put back
into the secondary queue again. The parameter will then really determine
the worst case latency.

One way to do it is to store the tail of the secondary queue into the
CNA node and passed it down the queue until it matches the current
encoded tail. That will require changing both numa_node and intra_count
into u16 to squeeze out space for another u32.

That will also make the code a bit easier to analyze.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
