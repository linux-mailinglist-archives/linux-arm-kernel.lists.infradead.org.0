Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D884503D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1jHGgGOC5m9PrSJKgvYmlgf2YIly8wnl9gl7f5dljQ=; b=V3sjjXUCvcMtFy
	X2ACzT2EcwEno3UmyZ5Vouio34iAvklKCmq5SbD33kzRXz8SlwwUMilCfW4W5+2cpx0coNWxp+cXq
	vfnGrP9V/36LZF/+uCD1vRImPMJVfabZn3FoFMV6aCx1dXU2zJZ40Vj0RGxYNKx0aagxUYuqXNRxT
	q1FeX7Wt8q/ptQLsI8ovWd97syphre9/TgolvW8me0veKKaUWNrP/UWa15m2blSvnWxHW7vmv4QTY
	DmcRUS7ntOmrkZNwkqEOp9D2vB/a+lRrFHJW5XMT3Qg6if6mokLsHGL/3tnHts+p82dLVf2Ln1279
	sqNcMBWtgiJ0lm6TMOKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJcg-0002Xs-8W; Mon, 24 Jun 2019 07:42:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJbi-0002AV-OY
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:41:45 +0000
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
 [209.85.208.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6B622089F
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561362101;
 bh=L6gUqCG8drdlw0JNPTw4WV1Q9+mlMVk9+r+rpW2w7AE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2qjE1E6++y+RdD7bONTE2cclIYxf/d21bmpIOBDi5ItxCTulU6+cCP4QmSQYO6Q99
 YIp4tfIVt/RGRZdcKgp4rTNKKLxQx8VeMV8NJBA7JpbJSx9t0sPtfTX5tbxN5YUqPf
 EWglztaz5Ph5WxfmAmG0DeQeohJ89YkYuATaiUtk=
Received: by mail-lj1-f178.google.com with SMTP id k18so11574652ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 00:41:40 -0700 (PDT)
X-Gm-Message-State: APjAAAUKcQj9Gd6YJdhfOn1ANCCjL7CWBolBpr+AZBqlxXVVPrBUU6aI
 7z+llOaDkmXs+5QhtvpBfYD7pCr3oZEYW9w7DhQ=
X-Google-Smtp-Source: APXvYqyRaeX7TDpnwHIcIB85B+1Xs+snbFiN+OxL0vV5dvoDI7HDxPRSomSVeOWM1E7yFBBSG3qrtNjtyuH0wVO/59s=
X-Received: by 2002:a2e:8155:: with SMTP id t21mr28115717ljg.80.1561362099155; 
 Mon, 24 Jun 2019 00:41:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190621155845.7079-1-krzk@kernel.org>
 <20190621155845.7079-3-krzk@kernel.org>
 <CGME20190623160226epcas2p3449814deb1faf7bf939481e6d4da2b86@epcas2p3.samsung.com>
 <CANAwSgTFQo8wL5s-djwPXFFOLtTHvRQif6234kFC=23PwMhuEQ@mail.gmail.com>
 <d94a2f99-fb99-c238-7011-9bbb4c0cd90f@samsung.com>
In-Reply-To: <d94a2f99-fb99-c238-7011-9bbb4c0cd90f@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 24 Jun 2019 09:41:27 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeXELUjsuW9eyGuRj56067qnL-J2Lt4U42mYiyx=X+F_Q@mail.gmail.com>
Message-ID: <CAJKOXPeXELUjsuW9eyGuRj56067qnL-J2Lt4U42mYiyx=X+F_Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] ARM: dts: exynos: Add regulator suspend
 configuration to Odroid XU3/XU4/HC1 family
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_004143_401317_C9793C55 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree <devicetree@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019 at 09:20, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
>
> Hi Anand,
>
> On 2019-06-23 18:02, Anand Moon wrote:
> > Thanks for this patch. Please add my
> >
> > Tested-by: Anand Moon <linux.amoon@gmail.com>
> >
> > [snip]
> >
> > Could you integrate below small changes into this patch.
> > with these below changes suspend and resume work correctly at my end.
> >
> > [1] XU4_suspendresume.patch
> >
> > As per S2MPS11B PMIC 1.2.1 Regulator (Features)
> > Fix the min max value for *Buck7* and *Buck8*
> >
> > -- Buck7 (VDD_1.0V_LDO) 1.5 A (1.2 V to 1.5 V, 12.5 mV step, default on 1.35 V)
> > -- Buck8 (VDD_1.8V_LDO) 2.5 A (1.8 V to 2.1 V, 12.5 mV step, default on 2.0 V)
>
> Could you elaborate why such change for Buck7 and Buck8 is needed?

Anand has here valid point - the constraints in DTS do not match
hardware manual. This leads to question whether voltage table in
driver is proper... Another point is the voltage itself. The
schematics describes them as at specific voltage (1.35 V and 2.0 V)
but after boot they are 1.2 V and 1.85 V. Maybe this shift comes from
the problem above.

>
> > Also add suspend-off for *Buck9*
> > Buck9 internally controls the power of USB hub.
> > Adding suspend the this node help proper reset of USB hub on Odroid
> > XU4 / HC1/ XU3
> > during suspend and resume. Below it the logs from my testing.
>
> Disabling Buck9 in suspend indeed reduces the power consumed by the
> board during suspend-to-ram from about 80mA to as little as 7-10mA, what
> matches the results of OdroidXU3. Thanks for the hint!

Although I did not get what is the difference in the logs (Anand
pasted two logs but they look the same) but the power consumption is
reason is good enough. I would be happy to put in the changelog entire
consumption  difference. I can measure it on XU3-Lite but can you give
me the XU4 (before and after)?

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
