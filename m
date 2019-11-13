Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AB3FB637
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 18:18:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQgKmpfqS6kNXYZLGsB6OKNDcatPsOPpNmTaTXLS7IM=; b=KGAkYqiU9b4s7C
	7tDmwTsdZdIiX1PwX+8sRLDSVXMxa6RHhm97mtET+cFiXY95dYlytPwBFYCrPL51QBAMFg8SBuDO6
	B9X2io3V691qltQsdguBfkedHS1LJGmu3eu2/Y5JVF8IH3IKyNpJV6eDWhnbZ+FqywZCSJPb5CNhJ
	xHiHdkTh1NRcjqQgZS03foo+9MgQEvtD871ZvMxMd2BpUNhu2wjqZGH29gAaWYHQS1I148sDGN7wc
	lPI8BfvZDym5vAjGhImWYVib055JQ1y/5Sbs69wCtpYVIaEafheqCwGfpyNRFm4/E0MBU8aogRbZg
	UJFiP+VFkaTjfXg5zcbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwHt-0003Gd-Rg; Wed, 13 Nov 2019 17:18:37 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwHj-0003Da-5F
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 17:18:28 +0000
Received: by mail-lj1-x242.google.com with SMTP id g3so3433411ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 09:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WgpjeDP92LtqHtJXxSWI//ZDvUBHvFnRmWqhhvkv3sU=;
 b=KvuV0fh/hJQyvRYAMyLtyX7TtdrS4cRfCetdL0REIkE+MZASromLfykUpUl271O+CX
 vFdpD6FCntAze0eiaLeCGewSPBYzWcMyf8dAip0r8ZYXAdwDlGykLbTwiivROOyI2jcu
 UqZ9m0g904KiBxG4PAMdp1dQu69o/iLfXSGCuUSWnkAM1RZk4SKm02qXOtPg478nMo1w
 2u+noeVIBVZdLdjiJORmfrpGe4D8XpbYfR67n+nowmC4HyebMgPh4pG3a2eeWqFYwJwr
 JuqVAGOMP2v4G0vVkcsS9JARWxnX0VZhRa5GgVLcIqhEySXkSYAdEzE9f/BdNMWNDQFQ
 6eXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WgpjeDP92LtqHtJXxSWI//ZDvUBHvFnRmWqhhvkv3sU=;
 b=O9kJWrMAQIGeazghH7UsLq80ihzqzpvp5+fNwhPSyeUPOguRglk09de6iwylOwlwOu
 lPPn3sSqcm1tV2gkaYS0SI05+6ULT4s91m55bmM0SmfEPdK/lQAWFS7x1+JH9szJIxRZ
 O/gi6Cpc1uTrbi/cCGCmKxcCkGv9mv3sSVP5oM64+ZuVbZ929Y4mUexVWuHY4nMyrSFF
 pb4mU68gtr9XAGFKIHzhTou+eHPQQgaXaNzzz3c9IpQK+OotdwFGtqUn9CwSsasr312q
 DESbHslmBEL315UUaYUn1BYMtEF/9ErQ7gP0Ox4tm2qlv2dvY0BcXRw1QVXkv/JDdlOU
 ZMuA==
X-Gm-Message-State: APjAAAXymirEgB+NL2aDplzkAsAmjp0PXPH+4u4/rpz196d/2J7EP55h
 PNFBM2emzgjun3tn5jRcM5XtG/fIGSW1bThRE033HQ==
X-Google-Smtp-Source: APXvYqzb9LSbjvyTYyJro6roGfmfcXuB5wD3OhRztdb8g4aem5VqSxWcjf73KgosmX+l6Ndl56jWPa35+BrI2knRZzU=
X-Received: by 2002:a2e:5c46:: with SMTP id q67mr3315497ljb.42.1573665504123; 
 Wed, 13 Nov 2019 09:18:24 -0800 (PST)
MIME-Version: 1.0
References: <20191112141819.GA22076@localhost.localdomain>
 <201911131438.KT6pnFZ7%lkp@intel.com>
 <ac16492e11899ef4ec981f7f2e84714c7d61d2a7.camel@fi.rohmeurope.com>
 <CACRpkdYAmye8wT39fqy=LN+6pXDvrcQ0SyDTCvG7aSgea3Uumw@mail.gmail.com>
 <b67faf875fd0060ad36db04b29c109f01e58ab1a.camel@fi.rohmeurope.com>
In-Reply-To: <b67faf875fd0060ad36db04b29c109f01e58ab1a.camel@fi.rohmeurope.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 13 Nov 2019 18:18:11 +0100
Message-ID: <CACRpkdZy73oFmHcjGuxCCYD0kxWuAi4xp9s+fHVLcGXwPzc5TQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
To: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_091827_228524_D81D47CB 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "patrice.chotard@st.com" <patrice.chotard@st.com>,
 "paul@crapouillou.net" <paul@crapouillou.net>,
 "eric@anholt.net" <eric@anholt.net>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>, "lkp@intel.com" <lkp@intel.com>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "sean.wang@kernel.org" <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "wahrenst@gmx.net" <wahrenst@gmx.net>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-oxnas@groups.io" <linux-oxnas@groups.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 11:06 AM Vaittinen, Matti
<Matti.Vaittinen@fi.rohmeurope.com> wrote:
> On Wed, 2019-11-13 at 10:40 +0100, Linus Walleij wrote:

> > I think I already merged it, just send a new patch on top fixing the
> > problem.
>
> Hmm. Are you sure you did merge the pincontrol part already?

No I confused it for the GPIO part. Sorry!

Please keep iterarating this patch.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
