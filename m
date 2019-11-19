Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174BE102777
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:56:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/lbljxddH9XkRAj+4KwpbE+U8ffiRlMAW5WACbcyY0=; b=kZtZoeMGmTA5sN
	PVykt0DippJuGVp/queV1+iBN76AELBPbWzn5xuc3kHyH2W94AXw79cZMhk+0I5xJt5VRhka2t5tD
	64GLqGwJXByUosPaqibotvcUOu/S0VLtHIfbUtU00RRrUeB8pw/2VYapsRpVNk8m3wg2YWj19nXn+
	ZvtH9ayVfvpfhLnn8hWy499HfSgw38QO/dbHEn4I16dxfm+DvGETtpYtNs6+0DBw6BDau4WfdF5qX
	PHRWwVdsO8QIdkymyObNfPrKeeDTjl6AgvMJfn9qAtT+wGHMSpvWb8gIx28BDBPNmkpUjJX8fgFUC
	ajL9ZU6a198PailbpRNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4vp-0006Eu-QT; Tue, 19 Nov 2019 14:56:41 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4vb-0006BK-Rc
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:56:30 +0000
Received: by mail-lj1-x241.google.com with SMTP id t5so23703057ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 06:56:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=In1zGBDOC9xdynfqKqKcIIm3nf1+kiAaNiGZnanvLvY=;
 b=QThEqdE2rR48X8oh0OxwIbdEI4egtNMX2nLjCHAmFesH7XsOljlFWzkSlgEJCooM1o
 9oofv6OFX2+StOidzMwZkInUb1q7S3iYe1jGQBVRMnZfOgswcDhgDIWyKOAf1FCD6Rba
 XexJQjvzoZgk++lHzrQt26VgsTLJOx+TUHxlLHOeTK0MJEgCIpwHfRwVqJPlUzHxt9Zb
 /zQmjaHME4cmgDYw5AkgqfCHdJuboeYIpGoueKqYWs0vXtUAB+SkCD6YY4Fo0JRrpLh6
 H7lOZvbGvmSmFckDGq++HhacqpYwrhABTGhOFbyLnnmHLSRxvnwysAiHcwDZn8jbvU6f
 luHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=In1zGBDOC9xdynfqKqKcIIm3nf1+kiAaNiGZnanvLvY=;
 b=LEsJiIc2XxJaritWpe3zUES5hG+mseGps/aBfGaOF7cxU8O3eqLyqkdR24jVe/Fqiu
 4C+jgzZMcPgMWvDcdczc6Ks8dCAirT0S1HyRh4wRw32bVSqOyIt1dLhw3P3oLIUHmRVz
 gEM3Cmycj7pRt7oJPjmrigvSdpMp9yfedHy0BYS/AHsi1HqD7TXGvaHnPswZ6IeNe5pP
 5b38uev+njkm4HxAJWMvlBCFjj+VzbSmEykWvBsFlX4oTJImM2rl2DS8jd4h0iYzf5Sd
 qlCIzAVznldNyUArAg8Lg/LK4gLkBw9xL+GcyOliZEv3H/lMVCo7h2aTHaUUrG8TYt19
 h1YQ==
X-Gm-Message-State: APjAAAXWTjLeT46ilsZ2mDKTCtd2WfRuDrAXR9uxKiE3HDFW3iNkA58/
 rsv3zJXph4HVwaYSWLF2k3/gRLaxBjBTIUqZS7h8TQ==
X-Google-Smtp-Source: APXvYqwcjOU4MhPKyzAkwDWLM/doKxPzlCHlBi90UnHt7hoHtMGu2PLAM9oNBxpASzc6YLHCH2EH7pH6HA2mWJ6HL6A=
X-Received: by 2002:a2e:9699:: with SMTP id q25mr4283993lji.251.1574175385648; 
 Tue, 19 Nov 2019 06:56:25 -0800 (PST)
MIME-Version: 1.0
References: <1573819429-6937-1-git-send-email-qianggui.song@amlogic.com>
 <1573819429-6937-3-git-send-email-qianggui.song@amlogic.com>
In-Reply-To: <1573819429-6937-3-git-send-email-qianggui.song@amlogic.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 19 Nov 2019 15:56:14 +0100
Message-ID: <CACRpkdbQ08ivkyVnuy_+=YqHXcXQDUY8aOpp6evdGLofe3FM0g@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] pinctrl: meson: add pinctrl driver support for
 Meson-A1 SoC
To: Qianggui Song <qianggui.song@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_065627_891857_F685B7AC 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Hanjie Lin <hanjie.lin@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Carlo Caione <carlo@caione.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 1:03 PM Qianggui Song <qianggui.song@amlogic.com> wrote:

> Meson A1 SoC share the same register layout of pinmux with previous
> Meson-G12A, however there is difference for gpio and pin config register
> in A1. The main difference is that registers before A1 are grouped by
> function while those of A1 are by bank. The new register layout is as
> below:
>
> /* first bank */              /* addr */
> - P_PADCTRL_GPIOP_I         base + 0x00 << 2
> - P_PADCTRL_GPIOP_O         base + 0x01 << 2
> - P_PADCTRL_GPIOP_OEN       base + 0x02 << 2
> - P_PADCTRL_GPIOP_PULL_EN   base + 0x03 << 2
> - P_PADCTRL_GPIOP_PULL_UP   base + 0x04 << 2
> - P_PADCTRL_GPIOP_DS        base + 0x05 << 2
>
> /* second bank */
> - P_PADCTRL_GPIOB_I         base + 0x10 << 2
> - P_PADCTRL_GPIOB_O         base + 0x11 << 2
> - P_PADCTRL_GPIOB_OEN       base + 0x12 << 2
> - P_PADCTRL_GPIOB_PULL_EN   base + 0x13 << 2
> - P_PADCTRL_GPIOB_PULL_UP   base + 0x14 << 2
> - P_PADCTRL_GPIOB_DS        base + 0x15 << 2
>
> Each bank contains at least 6 registers to be configured, if one bank
> has more than 16 gpios, an extra P_PADCTRL_GPIO[X]_DS_EXT is included.
> Between two adjacent P_PADCTRL_GPIO[X]_I, there is an offset 0x10, that
> is to say, for third bank, the offsets will be 0x20,0x21,0x22,0x23,0x24
> ,0x25 according to above register layout. For previous chips, registers
> are grouped according to their functions while registers of A1 are
> according to bank.Also note that there is no AO bank any more in A1.
>
> Current Meson pinctrl driver can cover such change by using base address
> of GPIO as that of drive-strength. While simply giving reg_ds = reg_pullen
> make wrong value to reg_ds for Socs that do not support drive-strength
> like AXG.To make things simple, add an extra dt parser function for
> a1 and remain the old dt parser function for only reg parsing.
>
> Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>

Patch applied with Neil's Review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
