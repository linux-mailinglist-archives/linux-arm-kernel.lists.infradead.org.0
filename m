Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2111ACF2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktyKIN2b1e7mF1hjeiVKl/RGMGGMm4EFQBPOa2dpMJc=; b=J8/8uNlfs03O/f
	BrfN0ENZBcDBWzzHskvhgDxMcBl7kBCHLKp29DOEigPorZO5HRzp2gju/72pwifNpPXizwenII4Mu
	UoHt+0DDy7XA7DgfTSsFzmvBxZT4vCVEU4c2btDbCnpa1/dkkmGM+oLLOw2k8TFpC5bXOu8w89Lim
	ZHOCB8vjzhy0WZy4FiWYiP8AsjMcfr0fKApl9fr78ea9stjoRouAd5ttxjcGz9EBy+SctSycb1tEp
	3RMCpVFLfbcgOBQIhsl4lb1kCbHf2Yz237mqw4kRsOeHpOqqw28HCrcMY1yTU/yKSy1xO/kJeBoar
	WVE8b076D+k2tiXLCuUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8le-00070S-K1; Thu, 16 Apr 2020 17:57:38 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8lR-0006yw-0H; Thu, 16 Apr 2020 17:57:26 +0000
Received: by mail-ed1-x542.google.com with SMTP id v1so9270098edq.8;
 Thu, 16 Apr 2020 10:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JukI2qcxSNyf52yHJpjT80gtxp48IEr/CgsVukdEHTM=;
 b=P8MVDNhJHnmJHFsyNYdMUXiwT4Boy56Wj9P0YtJb/1bhSGy0Sq9YmMAwAx2VB52AFK
 Zss8GsK7Kpyp3LpBdHprlBx15LXeBhFrIkVJna99hU10FiNhstMqpfRlqIbRd4nUtUxI
 /t5t9AhsXVsn6JgUXYHApplj9PeOV9c4wc6T4gdCyoTtCSjuUiObUepbSIu9GBRBIEXJ
 Z5B4o3o4JFGnTPUil5PURBCM7zLs0u/yyH7eL5prUOV2Buf96fVQfbXTRjicCdB4xbn9
 qzxOgL7Nqnw86kl0wrZ/lqyQaHs8UDqRnaDcph/hj7J1I59KM4wmo2q9sLEai6zBMnR8
 jjQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JukI2qcxSNyf52yHJpjT80gtxp48IEr/CgsVukdEHTM=;
 b=n+HcQ1egBg/+MzfW955Du1bg01ke+VvZueJ1BPn53dwDxm0dY8i6R0cuiMvFF2rBMy
 m60M1EM4PP9+seyKswfqEAznhy94NRnjLn8unJP7KypsO5WJfvaiET4/rwg3vQAmP8OR
 PyJXkfXyZe+Wqr6nzIDDlVVqdlschtbGxOjOTVvjevyBAKOlIyADeUi7rHb0+1bh6Akv
 NvTxdxloMPyEOqkt3kidMCZcP+4oJ8ZKORT752YIRVoouHBs49RPPZjHBjr10gL0W1ts
 h2irU5adGizP1/AS0b+v6+uG/jeDSrRNLGwZmKqy/1dhib6nDFGpqPwrQDuBcWx6El/p
 VDdw==
X-Gm-Message-State: AGi0PuY/Zx/8UXvmNBJLZRr8gf5EtuFXjj9uzkv7ZI/Rs+uqL6nmunmD
 jP02pM+0KSetor0tC3DBGcCdCNv1G7MsqVdaywo=
X-Google-Smtp-Source: APiQypKcDeq4UvvtUEjHkgd5bJB0lxfAAkyoWXwHMWWPoZHwjBNFu/BEW/23s3wmsXEJ4Qju54+NKGyUKcjSV132BrI=
X-Received: by 2002:aa7:d3d6:: with SMTP id o22mr4503774edr.52.1587059841831; 
 Thu, 16 Apr 2020 10:57:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200410213043.1091851-1-martin.blumenstingl@googlemail.com>
 <CAPDyKFpsTTUaTLy--DvOr0oAB71cTBdH1pfTV63LtcKOKOsnDw@mail.gmail.com>
 <CAFBinCAhfgEdT383x61mh9E0y3-3MLA-fUmZj-4C-_VUdGWtGQ@mail.gmail.com>
 <CAPDyKFrj6jdHe8OSvtuT7=QdreZ1YzMt=791ABSZfos8yux71A@mail.gmail.com>
In-Reply-To: <CAPDyKFrj6jdHe8OSvtuT7=QdreZ1YzMt=791ABSZfos8yux71A@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 16 Apr 2020 19:57:10 +0200
Message-ID: <CAFBinCDT08bts6xfNkTV-aqgOq=jDo+BQHGOVOQyFjRSQJpBvA@mail.gmail.com>
Subject: Re: [PATCH 1/1] mmc: meson-mx-sdio: Set MMC_CAP_WAIT_WHILE_BUSY
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_105725_069635_32B19F44 
X-CRM114-Status: GOOD (  33.00  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf,

On Thu, Apr 16, 2020 at 1:26 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
[...]
> > > First, can you double check so the original polling with CMD13 is
> > > still okay, by trying the below minor change. The intent is to force
> > > polling with CMD13 for the erase/discard operation.
> > I have tried this one and it seems to work around the problem (before
> > I reverted my change and dropped MMC_CAP_WAIT_WHILE_BUSY from
> > mmc->caps)
> > also I did not see meson_mx_mmc_card_busy being invoked (not even
> > once, but I don't know if that's expected)
>
> For eMMC it should be used quite frequently, as CMD6 is sent quite
> often, during initialization for example (see mmc_switch() and
> __mmc_switch()).
I only tested the meson-mx-sdio driver with eMMC once (a long time
ago) and it did not work.
...maybe this is the reason ;)

> For SD cards, it's being used for erase/trim/discard and while
> changing to UHS-I speed modes (1.8V I/O voltage, see
> mmc_set_uhs_voltage(). The latter also requires your host driver to
> implement the ->start_signal_voltage_switch() host ops, which isn't
> the case (yet!?)
SD cards and SDIO cards are the main use-case for this driver.
I don't know of any board which connects this controller to a card
with 1.8V (or 1.8V/3.3V configurable) I/O voltage. This is why I
didn't care about ->start_signal_voltage_switch() so far

[...]
> > > Second, if the above works, it looks like the polling with
> > > ->card_busy() isn't really working for meson-mx-sdio.c, together with
> > > erase/discard. To narrow down that problem, I suggest to try with a
> > > longer erase/discard timeout in a retry fashion, while using
> > > ->card_busy(). Along the lines of the below:
> > I have tried this one as well (before I reverted the earlier CMD13
> > patch) and with MMC_CAP_WAIT_WHILE_BUSY unset in mmc->caps
> > This doesn't seem to work around the issue - kernel log extract attached.
> > Also I'm seeing that the the current meson_mx_mmc_card_busy
> > implementation returns that the card is busy.
> > example: 0x1f001f10 & 0x3c00 = 0x1c00. the busy logic in the driver
> > is: !!0x1c00 = 1
> >
> > My conclusion is:
> > - meson_mx_mmc_card_busy is not working and should be removed (because
> > I don't know how to make it work). it probably never worked but we
> > didn't notice until a recent change
>
> I see.
>
> Depending on what your driver plans to support for the future, see
> above, you may need to come back to this in future.
I'll let future Martin deal with that - he can add it back as needed ;-)
current Martin has his doubts that it'll be needed (see above)

> > - set MMC_CAP_WAIT_WHILE_BUSY as per my initial patch
> > - use Fixes: ed80a13bb4c4c9 ("mmc: meson-mx-sdio: Add a driver for the
> > Amlogic Meson8 and Meson8b SoCs")
> >
> > Does this make sense?
>
> Yes, I think so.
thank you for double-checking!

> > Also please let me know if you want me to try something else
>
> I would also suggest adding a patch that removes the ->card_busy() ops
> from the meson driver - and that should probably also carry the same
> fixes tag as above. Just to make sure the callback doesn't get used in
> some other circumstances, when going forward.
agreed, I will send a v2 later which adds the Fixes tag, a bit more
description and an additional patch to remove ->card_busy()


Thank you again very much for the insights!
Have a great day,
Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
