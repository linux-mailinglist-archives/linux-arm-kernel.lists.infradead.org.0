Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EB050AB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 14:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/VQ3L7FshdhfOUXobD31YMa4z9Ud/Vy9RxWdVGf4IWU=; b=hR+M0o7OVhqVumQ9rnAOCu0vP
	KX0RQ0sPjB7dLjdn81xp/pf9E3mbz62AesnVVbS55K9qqKtjZBRiXMvRUEcrwQR9iiLSyhon1aVrU
	RHopOJGcAJqV5VQ1nqasouwhFDerd+BA8SysOAwFevgtOz35BLzrbBC6D59YG+Q+pt2xUbp0yBImv
	2jDwUVr3216StnkCvtZc8VIOb/1fYYnBzD38Q8cVcQpiedMDx4+QCTCTbtqo6DgzFGpAh5sbCHwii
	RDum8s7PcLceM1QMesVniHJWumnx+br8RqbQzxM3B3AkSd/ebbCMSc4PbHFzC644clPWyH1l5Jc4g
	p6484CtkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfO8w-0005Nm-02; Mon, 24 Jun 2019 12:32:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfO8m-0005Mq-4o
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 12:32:09 +0000
Received: from linux-8ccs (nat.nue.novell.com [195.135.221.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F2E8205C9;
 Mon, 24 Jun 2019 12:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561379524;
 bh=a3K3DY7Vl1R9i4uY3YJgDprYWQNpO5K3lg8iFltccQg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iLycqTq+aNbxd3gjPjNE9eolP7uheTaiE+2YXket8RcX0W8qyre9yJudYBufPfpKm
 jUvfAJJrJXmZeGmgaflV39AQzCx0zIiY52gWJ3gnVpF8VcEWbtYqYnKXHsBz1END0/
 P3jMzy4V3tkHZRmIVZqd5LCLKdT6/vx5oRoZkvgM=
Date: Mon, 24 Jun 2019 14:32:00 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: Re: [PATCH modules v2 0/2] Fix handling of exit unwinding sections
 (on ARM)
Message-ID: <20190624123200.GB22519@linux-8ccs>
References: <20190607104912.6252-1-matthias.schiffer@ew.tq-group.com>
 <c52edcd84b01970113fc046d11c38276d51886e0.camel@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c52edcd84b01970113fc046d11c38276d51886e0.camel@ew.tq-group.com>
X-OS: Linux linux-8ccs 5.1.0-rc1-lp150.12.28-default+ x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_053208_210361_FCE0E03A 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-ia64@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+++ Matthias Schiffer [21/06/19 14:35 +0200]:
>On Fri, 2019-06-07 at 12:49 +0200, Matthias Schiffer wrote:
>> For some time (050d18d1c651 "ARM: 8650/1: module: handle negative
>> R_ARM_PREL31 addends correctly", v4.11+), building a kernel without
>> CONFIG_MODULE_UNLOAD would lead to module loads failing on ARM
>> systems with
>> certain memory layouts, with messages like:
>>
>>   imx_sdma: section 16 reloc 0 sym '': relocation 42 out of range
>>   (0x7f015260 -> 0xc0f5a5e8)
>>
>> (0x7f015260 is in the module load area, 0xc0f5a5e8 a regular vmalloc
>> address; relocation 42 is R_ARM_PREL31)
>>
>> This is caused by relocatiosn in the .ARM.extab.exit.text and
>> .ARM.exidx.exit.text sections referencing the .exit.text section. As
>> the
>> module loader will omit loading .exit.text without
>> CONFIG_MODULE_UNLOAD,
>> there will be relocations from loaded to unloaded sections; the
>> resulting
>> huge offsets trigger the sanity checks added in 050d18d1c651.
>>
>> IA64 might be affected by a similar issue - sections with names like
>> .IA_64.unwind.exit.text and .IA_64.unwind_info.exit.text appear in
>> the ld
>> script - but I don't know much about that arch.
>>
>> Also, I'm not sure if this is stable-worthy - just enabling
>> CONFIG_MODULE_UNLOAD should be a viable workaround on affected
>> kernels.
>>
>> v2: Use __weak function as suggested by Jessica
>
>Hi Russell,
>
>this patch series is still waiting for your thoughts - in reponse to
>v1, Jessica already offered to take it through her tree if you give
>your Acked-by.
>
>Thanks,
>
>Matthias

Hi Matthias,

There doesn't seem to be any complaints and I think the patchset looks
good, so I've taken it up the modules-next tree. Thanks!

Jessica

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
