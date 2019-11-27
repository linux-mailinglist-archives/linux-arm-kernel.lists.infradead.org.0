Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 493FD10B609
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:47:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zIYcpCRpuyq1qww+S5bHS/KnmPnh29h78c9VZutiOOc=; b=mNQHaBHCEOSz0AeHwq/R7RuOPi
	Cpz1XG5Vu9iYDlBjgJFKJW0xOEpLQ16Fli80Ch5S0hsnNxPKM6DlcECzr7gYaL0S/C5uw9x1V7TBi
	0IkQ+5M/E4keehJWO8IWpebDvtwRSSQh7KoNiw9wWF4nKi14KlgQJBwX4CxkeSlmKuXN4xpLNjFCa
	drc0hEVj/wqf8I5ViCi4TCwiTgDeodeAfD6UWFULVaCvherjTlD2Qo17/fDrq5T8Ri7eO5w+VwItk
	Uc4qcCWJEEEdrY96rRDsjVVFMyIxDlG1jKOHHQs1g+1VzQy/56Q5rylFsnhZwiX5d21gNKiH2EfcG
	fOAXxl/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia2LA-0003Oj-12; Wed, 27 Nov 2019 18:47:04 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia2Kb-00037Q-QA
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:46:32 +0000
Received: by mail-ed1-x544.google.com with SMTP id p59so20548398edp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 10:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=tpI2XoAW/k1mZjy4gzuYvN2YL24d+FpjBX490TbnwUE=;
 b=RH8LeJhvVzlMCXZ7WjoiTtiM9N/So7uV3pgPiPV7vKSq/PW1mZ1u5DwGUkxNZYEuOE
 e5Z7Qsn+A0tUMMAoWegrtL2O64E4FgS6loxu/UM+cXi2JMBYH87LuyZMB/RSdXvhLtYm
 DEAgkP9gDh78EeN0vs6/VRGYYfyBllv8qhI9zmOdq2d8Z+MnfH33AwMB77n7qG8eTTQq
 0R00yySmFT074wdZ/W7URfBlaP1Epqn9FU74eMCZc4szX45AKQJB649QOtmGsbzHjUrR
 nNo/IBNQnWbwb3iO2Y9cm8ePzpJ97HiwmBW4sqOssrUPcTGwLzIMmo6SMS1yrPv8b5ch
 hLsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=tpI2XoAW/k1mZjy4gzuYvN2YL24d+FpjBX490TbnwUE=;
 b=m47XPNNu1EBGocKxNzIyI4Rb5B9BowqRqKjaqYzLyvC4pIivd7Qvy+ObYyA3I4mKl1
 64mlb7vrOhrhi9aOvyisaMqTeYUPlXIPWc61gljc1Aj3VmZfhd+Bjq8xX9x60Bvw1dDj
 frY6fhNKpMpGulJicSfJi742VT/ELjr5btlpBGqCUqK6Bajx1yfTkTSZZQJHeFwDMc8x
 DynyTDLtqe84MD2N66TDt1is5RvFpDU+1aPn7uVarRHlnLj+UISRsqp2TYeFJ+ckRxcN
 JKFZKYQ6HCaT6ZoyU0iklydUgn/IfLEU4DPOGk4mnBe9N2yvAo/hYOOIVbrg678jwOv4
 BhDw==
X-Gm-Message-State: APjAAAWWr7gfMI7R6qCvLywtsqGfk3v7TFGsHKehG5EeDRc/co5FKarR
 CmYmRleCfjvKFgDtxz8h8x8tA3i1LToPq3tKFo6JsokH6WI=
X-Google-Smtp-Source: APXvYqxzK9b1CLo07dbU3ghSiRxdeAWfozjlG21pdzxsPLtKe5C44CL7hIgPgRxjHBMEtB/mwGcYWK9arS+KDvH76zw=
X-Received: by 2002:a17:906:b30c:: with SMTP id
 n12mr49955881ejz.96.1574880387878; 
 Wed, 27 Nov 2019 10:46:27 -0800 (PST)
MIME-Version: 1.0
References: <20191127184453.229321-1-pasha.tatashin@soleen.com>
In-Reply-To: <20191127184453.229321-1-pasha.tatashin@soleen.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 27 Nov 2019 13:46:17 -0500
Message-ID: <CA+CK2bDk13O5-Yx9Kz_ZXj=JpfBWbqVUVgpsXcjW0TvKaRnxAw@mail.gmail.com>
Subject: Re: [PATCH 0/3] Use C inlines for uaccess
To: Pavel Tatashin <pasha.tatashin@soleen.com>,
 James Morris <jmorris@namei.org>, 
 Sasha Levin <sashal@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 steve.capper@arm.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <marc.zyngier@arm.com>, 
 James Morse <james.morse@arm.com>, Vladimir Murzin <vladimir.murzin@arm.com>, 
 Mark Rutland <mark.rutland@arm.com>, Thomas Gleixner <tglx@linutronix.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, allison@lohutok.net,
 info@metux.net, 
 alexios.zavras@intel.com, Stefano Stabellini <sstabellini@kernel.org>, 
 boris.ostrovsky@oracle.com, jgross@suse.com, Stefan Agner <stefan@agner.ch>, 
 Masahiro Yamada <yamada.masahiro@socionext.com>, xen-devel@lists.xenproject.org,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_104629_878743_59CCCA5D 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry, forgot to set the subject prefix correctly. It should be: [PATCH v3 0/3].

On Wed, Nov 27, 2019 at 1:44 PM Pavel Tatashin
<pasha.tatashin@soleen.com> wrote:
>
> Changelog
> v3:
>         - Added Acked-by from Stefano Stabellini
>         - Addressed comments from Mark Rutland
> v2:
>         - Addressed Russell King's concern by not adding
>           uaccess_* to ARM.
>         - Removed the accidental change to xtensa
>
> Convert the remaining uaccess_* calls from ASM macros to C inlines.
>
> These patches apply against linux-next. I boot tested ARM64, and
> compile tested ARM change
> Pavel Tatashin (3):
>   arm/arm64/xen: use C inlines for privcmd_call
>   arm64: remove uaccess_ttbr0 asm macros from cache functions
>   arm64: remove the rest of asm-uaccess.h
>
>  arch/arm/include/asm/assembler.h       |  2 +-
>  arch/arm/include/asm/xen/hypercall.h   | 10 +++++
>  arch/arm/xen/enlighten.c               |  2 +-
>  arch/arm/xen/hypercall.S               |  4 +-
>  arch/arm64/include/asm/asm-uaccess.h   | 61 --------------------------
>  arch/arm64/include/asm/cacheflush.h    | 39 ++++++++++++++--
>  arch/arm64/include/asm/xen/hypercall.h | 28 ++++++++++++
>  arch/arm64/kernel/entry.S              | 27 +++++++++++-
>  arch/arm64/lib/clear_user.S            |  2 +-
>  arch/arm64/lib/copy_from_user.S        |  2 +-
>  arch/arm64/lib/copy_in_user.S          |  2 +-
>  arch/arm64/lib/copy_to_user.S          |  2 +-
>  arch/arm64/mm/cache.S                  | 42 ++++++------------
>  arch/arm64/mm/flush.c                  |  2 +-
>  arch/arm64/xen/hypercall.S             | 19 +-------
>  include/xen/arm/hypercall.h            | 12 ++---
>  16 files changed, 130 insertions(+), 126 deletions(-)
>  delete mode 100644 arch/arm64/include/asm/asm-uaccess.h
>
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
