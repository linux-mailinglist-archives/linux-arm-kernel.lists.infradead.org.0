Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCADFF290E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:27:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvzRNacFUUlC22LF7Pl2SaaUN6y0E56DCW5fuOfknKM=; b=MAhVwE17xruf8M
	t2GQrqVwcLZzWDn0F00ck94dBZO2XuTaaW+w1VQ19Ov6yLm6FruE6DdVRmWAlLVOhwi2ywKyNhN1j
	g6tAdI8N7Cg1CmR8oKy95mCyTO7hkgE/gzUt1ceUJ18s34nEDmKvLAeXckMPGTiz/n0+c6nw5Du6Z
	KBfuBMQDDldoigB6GI1oolbfo404858qPPvM7SkdZKVv/p9xjQUHNhi6O7fGaHOm5PYM/HGlBgXBB
	WbLPqvEMRMrsqqp6ibscAphb2cePA+Mg46LQyRgfU8+hdJR9deoDLnC387DrdKZ5nIlRDwuqfO4ec
	iTUln6SLE3k0wEJjmzJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSd8C-0001On-QT; Thu, 07 Nov 2019 08:27:04 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSd83-0001OQ-UN
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:26:57 +0000
Received: by mail-lf1-x143.google.com with SMTP id q28so903380lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 00:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=phBcDJeV7MBF9bQlMf3ij0UKdSYwA8jjd7G8D30t7c4=;
 b=w831tmAcyO3WLobHnTFPXruCYHGzWnUTx/uZyJ/iUgE03JdHww/AN01RKTeoGK7q1Y
 ZKPihTKqt27Xq7S028dxWg0FcqROJrXYML0gFgvwwZ95AWUo0BxoMpLlJ2CiOvyvj3DV
 Pqp4z9yseR+vxvE//5tdnk2/vy3vkEwz8tieVo5bgouEo5C/ztCMvH5niylhD3JKyEek
 2tNBNlYN+m3B9N9Mqk++ZMScppwq06kAl3s2tZxl+Crg26SsGDktlVLmRnkXQwm2i75s
 wY8bQkWdc1ydO3iGEnfTH3Vq4SndDluLLJ8Q+tKS4i6/evlJASOohKZALrHx2L0ECP01
 q9Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=phBcDJeV7MBF9bQlMf3ij0UKdSYwA8jjd7G8D30t7c4=;
 b=onP/H0m54lEgiYB2tvajE/WGUWA9rRq03tTQPzMcHoEpwIzjClwPRLeI/rP36/TZI8
 opQUVQ18IGTANb13jVqnNL9VBg/BCv8pJdSHTBws3hKAxQRLdvdvpIRarjjTI/NyXb7K
 ZQk86Ju+8oJ1+x81+IJl3I0vkTj1w65ycRzeUBBQ9m/ilto3VSE8iRmizmCi3xfIlWw3
 4NkbFXvTZ7BX5YK7Mdn7wepgqMPlm2lmxuvPw4EPty/UBPPnf3yckDIXpZ3ii2F+Maum
 bH3dQXILsBV5oO37Zrrq49GnBgZy00t9iuzqNdegkPjApnS3vyhg0bu/J/oYgBYxxInJ
 A2HQ==
X-Gm-Message-State: APjAAAVBUx5WIwKj67c7iakxvRT8e446m6+H2Wh/ZyZLoTkpaANxAFvp
 7Bl9b/bnCOUdgV0FtjGaHTC6G4/dFG4c2Tr7YIZFOQ==
X-Google-Smtp-Source: APXvYqzOH6yF2eurwi6G7Zy/OVyjeTcC1ZJhGmUN59KPuUZStRkxzGBAq+3zPJWvq1cDxiYLHmvPgnV1gSqFJY+xKlM=
X-Received: by 2002:ac2:4a8f:: with SMTP id l15mr1437066lfp.5.1573115214130;
 Thu, 07 Nov 2019 00:26:54 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573029228.git.matti.vaittinen@fi.rohmeurope.com>
 <20191106120846.5bunrqj3uz4khih5@earth.universe>
 <ddcd02cc6c709837a28cae2cbfa672c506927659.camel@fi.rohmeurope.com>
 <20191106142441.GC32742@smile.fi.intel.com>
In-Reply-To: <20191106142441.GC32742@smile.fi.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 7 Nov 2019 09:26:43 +0100
Message-ID: <CACRpkdZ2F3zR2bdHgUV9GJX8iSojiM34BTWizTV_z+j7sS4jtw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add definition for GPIO direction
To: "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_002655_981009_35989C84 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "andrew@aj.id.au" <andrew@aj.id.au>, "Vaittinen,
 Matti" <Matti.Vaittinen@fi.rohmeurope.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 3:25 PM andriy.shevchenko@linux.intel.com
<andriy.shevchenko@linux.intel.com> wrote:
> On Wed, Nov 06, 2019 at 12:25:18PM +0000, Vaittinen, Matti wrote:

> > If no one
> > else will take the pinctrl part then I can probably do pinctrl patches
> > for v5.6 cycle.
>
> For pin control Intel, since we send PR to Linus and it won't be different to
> him, we would like to see patch per driver.

It is generally good to bundle these changes because so many
driver maintainers are passive. (Not Intel!)

If you are concerned, what about we just make a separate patch
for the drivers under drivers/pinctrl/intel and bundle the rest?
Possibly Geert want the sh-pfc changes separately as well
as he build his own pinctrl changes.

Rough consensus and working patches.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
