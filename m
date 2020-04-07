Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784731A0CA9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 13:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCu7PoPTiRkxSpRTDx+1l2Zl21oVRh/7xWQs3qY/5fw=; b=jd8uzDeaDfGBf3
	a7yJOuJyljFoZMcdwkPH+olNSj9yDS+z7bfvChCDy9dDBKzOKRLcA0lZjRRe8KRFcZr8IH3ZcG6qd
	SA5RDng5a43VjC6m+TVRR8H/fsppy7wJcvn+iMwL/zUfDLnaLfe6fZW6Ki4Icxz+YfLLrYjV5a1DL
	aqoUKbGJ73I4PlP2KPSP4x6UIsbsUWNhdx7S2Ppt1ek37IkARHC3nsd0/mQTxwhE2IdwkNLPFA9kF
	WX4LT2IusoF6feFZ9WyWVul/+Cz9Lkei9Rtx2BLLxV3ySpAd7tA3x2rXf4AhOutqYRM/eJtDyKnAu
	hPOBLwVnp3v87jur6OJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmBX-0003V2-KQ; Tue, 07 Apr 2020 11:14:27 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmBQ-0003UL-VQ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 11:14:22 +0000
Received: by mail-oi1-f196.google.com with SMTP id l22so1094748oii.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 04:14:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6LFIhFPtPPKJ3ndghHuNkRs8YK+fMEM1IjmTl+p5MPs=;
 b=V6rUuTWWW/DwQx21qTypJ/bmQ9re3dTN24Eys6fEyaBB7GuToL6wtu1Cb2+b4px9fF
 rHrW0cH8mEX09YSLa+nCZnNDty86bRaufuACSgVx4fg/b2T1tuPXdU3KczQU4iZtG81j
 vlfbSxs/lNEJFPFxNR4dXTPBKjPYRRmQCvnPISI61iK2qSzZAL0QjlU+g5AqA7k5WY3B
 cHRH/EhIiGSq7CdogZ3UWELsEl1LCzdfK4re7kY9Rsq/XwPzWqG+utJXzzSgDooqq9Ci
 nY/yzZUifbho/Wae5hyXuOG2bDj9g61z+q/0uBjlQ3ZsVvRN+hWt06IjEFw7myVA722k
 J+3g==
X-Gm-Message-State: AGi0PuZJrnIb3DrtlmKijCMsxRfkLUnoxeQnKCL3DEIBckhPB0yHpuO2
 7J9ShOilYXrgMHO+TROqQmFEaTvvomem8Zq34Ow=
X-Google-Smtp-Source: APiQypLaq1/7PvbU+aucJpFvKxhOnhbk0dV8Qd3pppkFhUN10n44mcY0arNBmKRwHIkNZilLzSf/4/95JSUapvY/ftg=
X-Received: by 2002:aca:4e57:: with SMTP id c84mr1165333oib.148.1586258058642; 
 Tue, 07 Apr 2020 04:14:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200407103537.4138-1-max.krummenacher@toradex.com>
 <20200407103537.4138-4-max.krummenacher@toradex.com>
In-Reply-To: <20200407103537.4138-4-max.krummenacher@toradex.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 7 Apr 2020 13:14:07 +0200
Message-ID: <CAMuHMdUBMwwBNhBABu-9=oz02hO2=vPkMjUyG=Q43FPTPMxJjg@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: defconfig: ARCH_R8A7795: follow changed config
 symbol name
To: Max Krummenacher <max.oss.09@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_041421_159228_AD937ED1 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Max,

On Tue, Apr 7, 2020 at 12:36 PM Max Krummenacher <max.oss.09@gmail.com> wrote:
> Completes commit b925adfceb52 ("soc: renesas: Add ARCH_R8A7795[01] for
> existing R-Car H3") and commit 361c5dbb446e ("arm64: dts: renesas:
> Remove use of ARCH_R8A7795").
>
> CONFIG_ARCH_R8A7795 was split in CONFIG_ARCH_R8A77950 and
> CONFIG_ARCH_R8A77951.
>
> Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

Thanks, as I was going to send a similar patch after v5.7-rc1:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
