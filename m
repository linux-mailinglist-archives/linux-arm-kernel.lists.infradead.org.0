Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC384E818
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 14:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhtR2L8HZUWn3i1+ue+Ba+zq1v/GNfPo8dw8oa9i4M0=; b=mP0m7SIBZB4Z9P
	oEpYtBI+uMksC+G8o3GClnI1DiAJfUaxKN4XtgCqY4LLnGLVvPcuY3+9RNi+ptuNRrnQdIRDlYP5n
	86fHuEfntXap+btUI0Q/TDEODvroZXpOLAjw9P5JQkuAFEvVrWfKQ8xACXVdNSsVuBTHlxjeadDP4
	Gz8vFbkVDQ6kZ28m5BCa647cOS6W6K06vPw8otgPgvjlUkqs0Z7VRdIYVbc62yNR0GXkeE2IRjS9T
	2dNyL0vITukdx0s15d/YOlc4cOQzJ9H/VFrzKTlB/l+YxalpvXnMjWF/GGU3ep8UBEr8EdxmbHvrC
	njjS0Q+hVtjQHSRHFqzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heIlx-0005UE-EC; Fri, 21 Jun 2019 12:36:05 +0000
Received: from mx1.tq-group.com ([62.157.118.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heIlh-0005TZ-7P
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 12:35:50 +0000
X-IronPort-AV: E=Sophos;i="5.62,400,1554760800"; 
   d="scan'208";a="7910699"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 21 Jun 2019 14:35:32 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Fri, 21 Jun 2019 14:35:32 +0200
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Fri, 21 Jun 2019 14:35:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1561120532; x=1592656532;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5tDcdFA7jt8oRJCaRznIaC8jGoQmD68px+5NZuAjsmM=;
 b=EBbxJy8mZJFU6+uPddrVEBEOugyrubakp1oD3LsqOslvl/CZo5fDxZbM
 HatbJuyRnWa79a8POBo8M7Y7dzAhcCWQnDH08/xH2W+MjAA+BGnfeK1XZ
 0bSl4PvF7ZcytPOZtnlHoAOGcHVcejqfDNDMKFm+1Fs1DjBDnAM0JMHik
 B9BUm6qaC0kwTR+kqePvQKHn3pkMUGaZUrpT6X+j6LoEnPp58G7/7uQfl
 +fh10r9sTeU7LQ+qO1hcDDZcaTuFyeEKTF/kDqO0epMtvohnRSLNGgzNd
 umeeOyZ7hT/0SO/D4MtogO0ThrEBIdXZYuqTzUX4oSoMRYiZTgPSCEZQP Q==;
X-IronPort-AV: E=Sophos;i="5.62,400,1554760800"; 
   d="scan'208";a="7910698"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 21 Jun 2019 14:35:32 +0200
Received: from schifferm-ubuntu4.tq-net.de (schifferm-ubuntu4.tq-net.de
 [10.117.49.26])
 by vtuxmail01.tq-net.de (Postfix) with ESMTPA id 957D7280074;
 Fri, 21 Jun 2019 14:35:51 +0200 (CEST)
Message-ID: <c52edcd84b01970113fc046d11c38276d51886e0.camel@ew.tq-group.com>
Subject: Re: [PATCH modules v2 0/2] Fix handling of exit unwinding sections
 (on ARM)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Russell King <linux@armlinux.org.uk>
Date: Fri, 21 Jun 2019 14:35:29 +0200
In-Reply-To: <20190607104912.6252-1-matthias.schiffer@ew.tq-group.com>
References: <20190607104912.6252-1-matthias.schiffer@ew.tq-group.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_053549_585903_52FEE9DE 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.157.118.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ia64@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jessica Yu <jeyu@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-06-07 at 12:49 +0200, Matthias Schiffer wrote:
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
> v2: Use __weak function as suggested by Jessica

Hi Russell,

this patch series is still waiting for your thoughts - in reponse to
v1, Jessica already offered to take it through her tree if you give
your Acked-by.

Thanks,

Matthias


> 
> 
> Matthias Schiffer (2):
>   module: allow arch overrides for .exit section names
>   ARM: module: recognize unwind exit sections
> 
>  arch/arm/kernel/module.c     | 7 +++++++
>  include/linux/moduleloader.h | 5 +++++
>  kernel/module.c              | 7 ++++++-
>  3 files changed, 18 insertions(+), 1 deletion(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
