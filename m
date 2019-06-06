Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907F3377BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 17:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cMYOyiILkpGnF83jBpKW8SIVyhrFXuiBeQ6jU2u+iMI=; b=rMUaAyDGjBdoZHOY4MHmeSKHQ
	h5htR5uHL+J2pCkyWYd40sNiH5NAlh9TqpI+6AzaBeV4TnQtIqEAw7/unXdDBKRm9wNGdzDzyaKI/
	WpjxgXdhxI3xmZlOSsDgJ0TpiAmunD2Qje6GY0MKnGuU/O9XRxWtxEPT9PpBkfjOfiqC56RbMbipa
	T5t7eTFIsq9fvtMNgZ2PGBHWpL7NbD+5mMadzHWR3gZKECpuq+T4qopVuidh/6lkDFAVY/3iv9A5M
	iHAuNldapLNwInJPhhsrBG/Qnf+K3jECBcY8y2PsyC/+FaMgOQROttTACazdkvOgJn/tullLhLv9w
	/dZ6m7ueA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYuD1-0000Ei-Lw; Thu, 06 Jun 2019 15:21:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYuCu-0000EH-LK
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 15:21:37 +0000
Received: from linux-8ccs (ip5f5ade8c.dynamic.kabel-deutschland.de
 [95.90.222.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 04BB620673;
 Thu,  6 Jun 2019 15:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559834496;
 bh=mLdxV+RudsCb8mYr7BWKmOmkMo1rkI6oaKHldh70dBY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WXkkQoMB08AdfjyhCVRCQWQK02WMFqgmrVf8sccWUDOBYEl1wbdCpwyj01MITAJCK
 FUBd9MjAsy7bpv2HUF0UZNYm0a8rx2DCvKFl/k+2uqqfqYXvECShDsV/E6UI+yh4wI
 zEJGEpXilEp9ARxc0/YIA0DKNxtViD+snItNjCls=
Date: Thu, 6 Jun 2019 17:21:31 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: Re: [PATCH modules 0/2] Fix handling of exit unwinding sections (on
 ARM)
Message-ID: <20190606152131.GB27669@linux-8ccs>
References: <20190603105726.22436-1-matthias.schiffer@ew.tq-group.com>
 <61f233518ba863f9d5783dd10e468ee5bf22b69a.camel@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61f233518ba863f9d5783dd10e468ee5bf22b69a.camel@ew.tq-group.com>
X-OS: Linux linux-8ccs 5.1.0-rc1-lp150.12.28-default+ x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_082136_710475_6F9F477A 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

+++ Matthias Schiffer [06/06/19 10:14 +0200]:
>On Mon, 2019-06-03 at 12:57 +0200, Matthias Schiffer wrote:
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
>>
>> Kind regards,
>> Matthias
>
>
>Hi,
>any comments on these patches? If not, who is going to take them in
>their tree?

I don't mind either way. I can take the patches through my tree if
Russell ack's the second one (after comments have been addressed).

Thanks!

Jessica

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
