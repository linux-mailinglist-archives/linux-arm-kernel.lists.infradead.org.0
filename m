Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E593558161
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 13:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EF7aPijowq1Sk8csrufyLvo4dPP0fYWhvHs1cgFLSdU=; b=UR45W8+86wUX3g
	fsawfTZr00EdQpkNAQHPmKT6A07cLVzDmUNohrAauVHLC5vXXtREa6Gb/a5qECYly23N1XeMKT6g5
	Ylq+fqLkL1lWA6J0wdbskxrxcyygH2K4vfmnxwsQf1CWSN1XxVBYG0F2tPnGKE1Z9vxBeVkvLkuwf
	3dEgz5sdT2tWcBFHzLlO0DhjE8MO8CHTBPySWOmzcWduS7DsduaBIUZX/1F6SpTc/CqlCHkpDRXAM
	ldcayCGzpSeA9z3YDWSFnisRBV6QA2Qgwe1Vs5NGnr3AkV0SFlgHSIWR4UQ1g/PidFabJ7SFWy64n
	wc6ww003tX4hpVQXBv6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgSVh-0002GL-8F; Thu, 27 Jun 2019 11:24:13 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgSVW-0002FX-PR
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 11:24:04 +0000
Received: by mail-lf1-x142.google.com with SMTP id p24so1312977lfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 04:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F4KskJ1NAl/aeAMSSANWZVmj0vaROvOll7pDHlQvKrE=;
 b=nENRI+O/Sos7OKNBFX4fcuIjQJRwvWzpnQUI823OhuXy+g5L/2I06M0BvsD+EPBkBU
 jnMzz/8KF3lE8zGW4CZDHMmVSPuFkrs5D4b92ModrlnG7TNh9x/cgwb45aONOdqKlEec
 qS39kC+nzP1BDmIUzDeRmazx/dGoP61W2XHfSAtWn3ha5bU5t+BZA1+MNUIR4nBz4tOl
 NAX57XZMuQsMyPqhE+DroIbq+/20QvpPbo+0VMKO0XfCbCXNeQGCCgQ1pIrfPwdKeTta
 XzBI5e2tKYh0r3WdeMUnXmSkKv+DdJ5WiGWdmeTlnDcanzuEXZ+F1JSocegrhnetAmjw
 IkyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F4KskJ1NAl/aeAMSSANWZVmj0vaROvOll7pDHlQvKrE=;
 b=bQZdSUAljtJGNgeJrCTDi2o4IkHWHSKkLrEUBaNz/wlp8q2xKgETv3MZxYAqkavR3o
 RHn4eaElTA9VpL5LKNsA9mh+Qq71syo8joqn9yk9XkUjo5kQ7jGuOFdAgbnSlWUIU8BV
 /RCxth8PjzgpUnVtrSLzd0czxHjFUzyJ8lWiEcbGMdl4pTpnkNsIm2Bfjf+bh9lKSyG+
 O/D/U7xNPeXXP+pMGMpGjuSILvnh9efRFCtUuTlfNDcloGAtRYT/0jT8NTFtIYzrGkVR
 aDUtn0q83zlDogA33cfgbJg25pJLfW/Egvkl6rebN1x6OohQwhmPaTwfRyoZgQE3wt50
 yGJw==
X-Gm-Message-State: APjAAAUaqPbC/Q6i547wxdPY8YcM2y8mQtdxDsJTzbUjnIbXgikyf+Il
 jluTo1L7qtqx8Da7Uc19vqsWxU4eqQdwlg0HmUgj/g==
X-Google-Smtp-Source: APXvYqyeGnTnUh82XE5crL0FuoMFaSxBuAjA0pp9mZU9u9i/T+re4EBzmrybXpa77YjcTHZpDZQGFRLaagUdWo7XHdQ=
X-Received: by 2002:a19:6a01:: with SMTP id u1mr1788889lfu.141.1561634640859; 
 Thu, 27 Jun 2019 04:24:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190626035445.236406-1-drinkcat@chromium.org>
In-Reply-To: <20190626035445.236406-1-drinkcat@chromium.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 27 Jun 2019 12:23:49 +0100
Message-ID: <CACRpkdaK1A2eS5_5Fg40hTV3bwRNvRmqfWidVMpNkxFkzVEVmw@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: mediatek: Update cur_mask in mask/mask ops
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_042402_835335_8756E0DC 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>, Sean Wang <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 4:54 AM Nicolas Boichat <drinkcat@chromium.org> wrote:

> During suspend/resume, mtk_eint_mask may be called while
> wake_mask is active. For example, this happens if a wake-source
> with an active interrupt handler wakes the system:
> irq/pm.c:irq_pm_check_wakeup would disable the interrupt, so
> that it can be handled later on in the resume flow.
>
> However, this may happen before mtk_eint_do_resume is called:
> in this case, wake_mask is loaded, and cur_mask is restored
> from an older copy, re-enabling the interrupt, and causing
> an interrupt storm (especially for level interrupts).
>
> Step by step, for a line that has both wake and interrupt enabled:
>  1. cur_mask[irq] = 1; wake_mask[irq] = 1; EINT_EN[irq] = 1 (interrupt
>     enabled at hardware level)
>  2. System suspends, resumes due to that line (at this stage EINT_EN
>     == wake_mask)
>  3. irq_pm_check_wakeup is called, and disables the interrupt =>
>     EINT_EN[irq] = 0, but we still have cur_mask[irq] = 1
>  4. mtk_eint_do_resume is called, and restores EINT_EN = cur_mask, so
>     it reenables EINT_EN[irq] = 1 => interrupt storm as the driver
>     is not yet ready to handle the interrupt.
>
> This patch fixes the issue in step 3, by recording all mask/unmask
> changes in cur_mask. This also avoids the need to read the current
> mask in eint_do_suspend, and we can remove mtk_eint_chip_read_mask
> function.
>
> The interrupt will be re-enabled properly later on, sometimes after
> mtk_eint_do_resume, when the driver is ready to handle it.
>
> Fixes: 58a5e1b64b ("pinctrl: mediatek: Implement wake handler and suspend resume")
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> Acked-by: Sean Wang <sean.wang@kernel.org>

Patch applied after extending the has for Fixes: to 12 digits.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
