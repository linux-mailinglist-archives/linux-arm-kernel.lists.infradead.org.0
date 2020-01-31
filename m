Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783C414EFB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 16:36:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtVlFuA2AOwoie8UAY8Np3jJNKYW1lMgiRqKiRpgydY=; b=a41FlIOu6UprAE
	uvnAaRleic+iUeOXP+Ww7hBUdnRvOl+CjG2Ev77TG7e7meZfPGBbTf5dOApog1FclzKRT7LNT+2As
	uCxoeordAwRPJYEghUUZngMAvfy9MEbfYa+usVemqHlTSuIfaDvLfN+sTprk/WBGdkYoX7S48Acnx
	umF82dkAg8ySMVUwGGH9MYlfiSA00dkmwvBzE51OiXgAQ5eZSmJTVBwuldccr16YvshRBu4ZDPFYq
	UIDUx7VQEVPitcUqytMjJJB4omIYAGUrKZHEsrvPLoPVtStaorCZROWs8p0/vTeQnn6P2B94+KOe5
	GcRw3sbyZWP1X0oK1k4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYLV-00029N-G2; Fri, 31 Jan 2020 15:36:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYLL-000294-9h
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 15:36:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4DE2511B3;
 Fri, 31 Jan 2020 07:36:26 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81BDA3F67D;
 Fri, 31 Jan 2020 07:36:25 -0800 (PST)
Date: Fri, 31 Jan 2020 15:36:23 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH] drivers/firmware/psci: Assign @err directly in
 hotplug_tests()
Message-ID: <20200131153623.GC54178@bogus>
References: <20200130230845.203466-1-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130230845.203466-1-gshan@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_073627_379225_19BBF693 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 10:08:45AM +1100, Gavin Shan wrote:
> The return value of down_and_up_cpus() can be assigned to @err directly.
> With that, the useless assignment to @err with zero can be dropped.
>

Yes, I was wondering why it's done like this. It may be result of some
refactoring that we ended up with this. Anyways, looks good to me.

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
