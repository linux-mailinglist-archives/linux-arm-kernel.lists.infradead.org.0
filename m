Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F297192783
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 12:50:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LGovm7Jw+0n5rbzn/zu1ygUz53ayRGGATt+Ja0H+xY=; b=l5GYpdH00LT/cE
	9DO6DlJm0X2UMh59rlYdaGBDGdDl3IcvBbZ/PGJqzA5LMLijAJvbd2ccpklt16NDn4VXMRReSaLUn
	1So586fRb+gFvy5YnjtpwoirjOfuE00gpiocG6Q5d9bstZjQUHrkXZHuMMAb61NLykMABLFtSWsxb
	4wv3u0NTdHDaGdm2VHV1svnZ5Waqa/4Q6Kuaji2xY6ht1zrvI5s/n+zaq1aoYfq8L4QJhZUGRIz4b
	cQCdF1aZfOoQOMtb0JJeRYBp9aH4bVKnGsiEaymzytBbTTyE+5YbX8hzylkjFNpVdttw8/Fe+qmd7
	upsvvQsmvBd/k0WsPf8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4Xf-00055U-OK; Wed, 25 Mar 2020 11:49:51 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4XV-0004uS-U4
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 11:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585136978;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fZvGX3lVQz4M8ZGNf5aR/qLT36/9iVdc45E4SCbiKsk=;
 b=RhiFt0J45rIXSsnXP7xajUoN6d7s6hZM6vZoezZgVTk+X/o95Ar9pYzwLkXw3Uh+hpe+ne
 rqmkWNub+sxOWXrx4jZXSVotI2ThKaIAQEEttGWj5n7uvVACFhTilW0p0hUn0XJmMIjCoC
 LSr1ILV/JT2+eqd3W9+MrWLmmU7Xg/U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-2hZYOyt4M2WpyYiEKbJCbw-1; Wed, 25 Mar 2020 07:49:37 -0400
X-MC-Unique: 2hZYOyt4M2WpyYiEKbJCbw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB512800D50;
 Wed, 25 Mar 2020 11:49:35 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-43.bne.redhat.com [10.64.54.43])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E2D5194B55;
 Wed, 25 Mar 2020 11:49:32 +0000 (UTC)
Subject: Re: [PATCH v5 0/4] arm64: Dereference CPU operations indirectly
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200318230145.72097-1-gshan@redhat.com>
 <20200324172922.GG3901@mbp>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <9dce73a8-5893-1f65-7962-bace2daca7d9@redhat.com>
Date: Wed, 25 Mar 2020 22:49:30 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200324172922.GG3901@mbp>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_044942_053140_DDEE9EE5 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 shan.gavin@gmail.com, sudeep.holla@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/25/20 4:29 AM, Catalin Marinas wrote:
> On Thu, Mar 19, 2020 at 10:01:41AM +1100, Gavin Shan wrote:
>> Gavin Shan (4):
>>    arm64: Declare ACPI parking protocol CPU operation if needed
>>    arm64: Rename cpu_read_ops() to init_cpu_ops()
>>    arm64: Introduce get_cpu_ops() helper function
>>    arm64: Remove CPU operations dereferencing array
> 
> I queued the first 3 patches for 5.7, they are useful on their own as a
> code clean-up. I'll wait for the debate with Mark to settle on the last
> patch.
> 
> Thanks.
> 

Thanks, Catalin. I'm also waiting for further comments on the last patch
from Mark. The patch can also be dropped if your guys think it's not needed.
Anyway, please let me know :)

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
