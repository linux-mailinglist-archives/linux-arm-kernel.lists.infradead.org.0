Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A49A536E45
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6V5g1fnDtmc1kxaQRcdox4HLqandmTVpocs9nJLGmYE=; b=c+iQV03mRXERoW
	EWpeSf9Vvoh+NlPSl3lp5oAPvo1W1PsgrOzQxF+B0+eFSXMD6VL4eX2KTqGou7l0k/I1DYL35w/NH
	i19I3XUsvEUoRZIDCPgdr7pmw8Yj1t8h0a7K38JF+7xRtx0IJUFiysCd5rMh5db7AZlZPuleXnlfX
	sDl1/OiGVhWfdmbqPlAiaw9w2TsP9d6PEu6XIwwFipgn3MCSaw4BCW5GLtPP7wc7CaFlHuZeOdc5T
	aDAXoINNDmrHilFvbh/kYPRe6wgd5usb83gaIkoy+P17nLBaWORSgDksxrpcquCSdd6Zk8oBQFl+j
	uVkzjWwXVpbDfXMmJn+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYnYG-0007Oh-VL; Thu, 06 Jun 2019 08:15:12 +0000
Received: from mx1.tq-group.com ([62.157.118.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYnY8-0006Bt-Rp
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 08:15:06 +0000
X-IronPort-AV: E=Sophos;i="5.60,558,1549926000"; 
   d="scan'208";a="7719743"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 06 Jun 2019 10:14:55 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Thu, 06 Jun 2019 10:14:55 +0200
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Thu, 06 Jun 2019 10:14:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1559808895; x=1591344895;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gidmcEXWd6Fs9Jm1YrLEtSu1pDj6rxSgxAoUC5x632M=;
 b=Zf957eeRwDVqFX58P4ouQ+lHOtr5F0uv+gAZpioj0rzkycSca9xzfIfv
 qHpfpUq+bjV/HpJ1JtvAG8riB7JQql2EBVGc3o4qNXwn3Zs3+NCYhVJ+0
 lPF9us9u+JD5RL1xCY860HkUIa9HI5RxWbYWODoWSez3hJ+nQvTHr8QHa
 HUfoeamWPtbDjHvC7fywDx77ERXMfrnD7q2tEaihI4nWV/IbvUpVJXA9N
 DEBOKU7FnisGp9yUiKV5tOsd9VmEq+bxEz8SDYR5rUUvwELpfVdCpQf1z
 bIRAcKu/byIfTXKZJA1w0pg6YgGTLJL8ZbJwlliIT1GXfhgNlpyrPo9Y8 w==;
X-IronPort-AV: E=Sophos;i="5.60,558,1549926000"; 
   d="scan'208";a="7719742"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 06 Jun 2019 10:14:55 +0200
Received: from schifferm-ubuntu4.tq-net.de (schifferm-ubuntu4.tq-net.de
 [10.117.49.26])
 by vtuxmail01.tq-net.de (Postfix) with ESMTPA id 9F20E280074;
 Thu,  6 Jun 2019 10:15:01 +0200 (CEST)
Message-ID: <61f233518ba863f9d5783dd10e468ee5bf22b69a.camel@ew.tq-group.com>
Subject: Re: [PATCH modules 0/2] Fix handling of exit unwinding sections (on
 ARM)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Russell King <linux@armlinux.org.uk>, Jessica Yu <jeyu@kernel.org>
Date: Thu, 06 Jun 2019 10:14:44 +0200
In-Reply-To: <20190603105726.22436-1-matthias.schiffer@ew.tq-group.com>
References: <20190603105726.22436-1-matthias.schiffer@ew.tq-group.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_011505_224551_C33568F8 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.157.118.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ia64@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-06-03 at 12:57 +0200, Matthias Schiffer wrote:
> For some time (050d18d1c651 "ARM: 8650/1: module: handle negative
> R_ARM_PREL31 addends correctly", v4.11+), building a kernel without
> CONFIG_MODULE_UNLOAD would lead to module loads failing on ARM
> systems with
> certain memory layouts, with messages like:
> 
>   imx_sdma: section 16 reloc 0 sym '': relocation 42 out of range
>   (0x7f015260 -> 0xc0f5a5e8)
> 
> (0x7f015260 is in the module load area, 0xc0f5a5e8 a regular vmalloc
> address; relocation 42 is R_ARM_PREL31)
> 
> This is caused by relocatiosn in the .ARM.extab.exit.text and
> .ARM.exidx.exit.text sections referencing the .exit.text section. As
> the
> module loader will omit loading .exit.text without
> CONFIG_MODULE_UNLOAD,
> there will be relocations from loaded to unloaded sections; the
> resulting
> huge offsets trigger the sanity checks added in 050d18d1c651.
> 
> IA64 might be affected by a similar issue - sections with names like
> .IA_64.unwind.exit.text and .IA_64.unwind_info.exit.text appear in
> the ld
> script - but I don't know much about that arch.
> 
> Also, I'm not sure if this is stable-worthy - just enabling
> CONFIG_MODULE_UNLOAD should be a viable workaround on affected
> kernels.
> 
> 
> Kind regards,
> Matthias


Hi,
any comments on these patches? If not, who is going to take them in
their tree?

Note that I'll be out of office for the next week, and I won't be able
to read my mail during this period.


Kind regards,
Matthias




> 
> 
> Matthias Schiffer (2):
>   module: allow arch overrides for .exit section names
>   ARM: module: recognize unwind exit sections
> 
>  arch/arm/include/asm/module.h | 11 +++++++++++
>  include/linux/moduleloader.h  |  8 ++++++++
>  kernel/module.c               |  2 +-
>  3 files changed, 20 insertions(+), 1 deletion(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
