Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D030F159AB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 21:48:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sASCBZKMbZWxeUbqKxOxbW5WOUmP5Pq1RIpFKJDLqA8=; b=N8Jm0svxEkf12i
	ogBeJ5X3gDhGj/WWFgUmSyqTgnJxTVh1KKxPrPkEBLbAzndb1xAV14YoYfo7KCriY8bzITD1z9R4+
	h1w+QIwZZaOudGIzBuqk6TIYVcDK/vazhURDVPYQoeiS1AWE2vbSbv3Fp86vtO+uU3BzFABmez1nl
	4vWNELF3E8ZmAB9BrnPaRtnetPfVaWRBVKhYnvawJpyan3w6A0m/1RzkoD32ODKXpXZPlAthXdlXq
	dTHWIuE1VHKbv5dAEY6soeWgdCh8fTdjV4pfQjRi/9Jf9X9Igh6Vb5PY0Z2srJROue8gOxZhoAhA9
	KLsThYzuMmTxUv1EilEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1cSZ-0004a7-QW; Tue, 11 Feb 2020 20:48:43 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1cSQ-0004ZT-1R
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 20:48:36 +0000
Received: by mail-lj1-x241.google.com with SMTP id v17so13192864ljg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 12:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LqjAANVr3QUa9/jn5BxY1hlvgQhyJJrq1+NtVKHCduM=;
 b=nZzuIR3P/P33cQ7XHVWp+ufjdXODTG3MtJzSO+ScRXg4S39DMRBCQDNsXJYQElGdzm
 ouIpbn8tkV777xxbILSIJIZF6oKC3I2Si6MwizHxW4aWRfElhhY9X7dWXFdiV30DPesA
 1GNKe0dc6C9lmgr0F7fobbFzgGGVfLGxHD641Oigb/F9laDgG+vmMzcduEN8wahKLTnH
 5bPGYUt8+lVfdT1xzNP1Jau4odY8wAsRLFHNiBtyuidHzkqwt2zwqnqsPtfysLzpNrTN
 lR1TR3goVHtpssWR2h78bQFyQerGdERIYnoz0ngcnt2Z6dcZrYi5nNurGeF7SXk0pAuJ
 n4hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LqjAANVr3QUa9/jn5BxY1hlvgQhyJJrq1+NtVKHCduM=;
 b=QbPBb/VNiLeziics/izX3jtWeQ4ik+q7NjqvVGPiIgcj6u4lM6OeaFl12v3G+XQolq
 PtcYQ2LbJEa3Iy3LhNnI4hlgA4rdC7tJZHzgTtK8UnlBroyCpx7i88jK5ca5XPV8Wo9n
 dVEWEQ4mhzxXVK7QJTkaz4189rVYgD5L7HWpd9JHMlyNaRYZpALCE87MhTEszn3H31E1
 anZCMx4JmQnICwJPFOlo0h6xdlIcpXLE+F/gwZxALtXbzZa4Ph38Cjlt6uJyaAlhhul9
 0D6sanFNs0nABLL+QLlng9un+tpYtZXlYHUOQGFEho0JKcGhncb6Hi1kXeBCvEKpMlhR
 46FA==
X-Gm-Message-State: APjAAAW04Pcqkh5uLmp4lzmMf1vCw+RVxNzVqkpOg3mgFYtNHAB4SkJ7
 ra4u1b05D0YqHp3lxBQ+MFg=
X-Google-Smtp-Source: APXvYqxQouPBSnzMQ60Fpg/1V/YGZaJ3zNNtUQbG94tj5k7NHsupGdwEO3PyBcAojadIFe8aR4KdbQ==
X-Received: by 2002:a2e:85ce:: with SMTP id h14mr5365962ljj.41.1581454111246; 
 Tue, 11 Feb 2020 12:48:31 -0800 (PST)
Received: from kedthinkpad ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id r20sm2354515lfi.91.2020.02.11.12.48.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 12:48:30 -0800 (PST)
Date: Tue, 11 Feb 2020 22:48:28 +0200
From: Andrey Lebedev <andrey.lebedev@gmail.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/1] Support LVDS output on Allwinner A20
Message-ID: <20200211204828.GA4361@kedthinkpad>
References: <20200210195633.GA21832@kedthinkpad>
 <20200211072004.46tbqixn5ftilxae@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211072004.46tbqixn5ftilxae@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_124834_109686_DBB7A616 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrey.lebedev[at]gmail.com]
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Maxime, thanks for your comments. I'll update the patch, but meanwhile,
I have some remarks/questions, see below.

On Tue, Feb 11, 2020 at 08:20:04AM +0100, Maxime Ripard wrote:
> > +	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA1_REG,
> > +			   SUN4I_TCON0_LVDS_ANA1_UPDATE,
> > +			   SUN4I_TCON0_LVDS_ANA1_UPDATE);
> 
> You refer to U-Boot in your commit log, but the sequence is not quite
> the same, why did you change it?

I actually had two reference implementations at my hand. One was u-boot
and another - an old (abandoned) branch of Priit Laes [1] (I took the
split-up of u-boot SUNXI_LCDC_LVDS_ANA0 constant from there).

This is an attempt to simplify the sequence, since I noticed that the
same bit was being set to the same register twice [2] and removing that
duplication didn't produce any observable regression. Priit
implementation didn't have that bit set in the end of the sequence
either, so I omitted it. That said, I agree that it could've been a bit
naive on my side, and I can get it back to match u-boot version, if you
feel that might be important.

For the reference the U-Boot code is here: [3]

[1] https://github.com/plaes/linux/commit/cc8c8bab2f2f2752ba6b11632dcd0f41bac249bc#diff-014a76a5007005a7a240825a972b8c7fR127
[2] setbits_le32(&lcdc->lvds_ana0, SUNXI_LCDC_LVDS_ANA0_UPDATE);
[3] https://github.com/ARM-software/u-boot/blob/master/drivers/video/sunxi/lcdc.c#L60

> > +#define SUN4I_TCON0_LVDS_ANA1_REG		0x224
> > +#define SUN4I_TCON0_LVDS_ANA1_INIT			(0x1f << 26 | 0x1f << 10)
> > +#define SUN4I_TCON0_LVDS_ANA1_UPDATE			(0x1f << 16 | 0x1f << 00)
> 
> Having proper defines for those fields would be great too.

If by "proper" you mean "split them up to individual bits", I would
agree, but I can't find any actual hardware reference documentation that
would mention the meaning of these registers.

In both places (u-boot and Priit) these constants are defined the same way. 

I took the liberty to rename ANA1_INIT1 to ANA1_INIT and ANA1_INIT2 to
ANA1_UPDATE to match Priit naming rather than u-boot, as I felt it was
more descriptive. I have no strong opinion here though. 

> Side question, this will need some DT changes too, right?

Hm, I agree. I think it would be reasonable to include LVDS0/1 pins and
sample (but disabled) lvds panel, connected to tcon to
arch/arm/boot/dts/sun7i-a20.dtsi. Does that make sense to you? Would you
expect dts changes in the same patch or separate?

P.S. This is my first patch to the linux kernel, please forgive me my
inexperience.

-- 
Andrey Lebedev aka -.- . -.. -.. . .-.
Software engineer
Homepage: http://lebedev.lt/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
