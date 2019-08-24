Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264A59BC7A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 10:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pzR+GmWXFIgexUj3xBmqmkhZKndyDW5E1uurdkpAnA=; b=pWFoXsVz4AP6Ms
	Ai1YIEfgmUNGqw55SDDpez/mw3hVk5zsZP/egRaBG9i0sGHaX4DGJTHm4RD3i2O06zE3WJM+x8I/V
	9QVlG9A4GORN12xGmlFjkJux9l6mJ8TbBV4z7VNR65zBhraZ/BvpMguJrzFcUrkS2RnCABPQY8VBo
	1V0v/nCjkbDY3dzphw0KT5ZRK6jTG85gsOywEF+623OFvwKYWWhVjPBnnK/na4l0JQkGbx0oLoTHS
	4oTXJakBk97BHN40rnbGI1AKLsYCabl8agtV6R1+eqb86NhlpA1yBniFjroPzbh460rqSAB1Cblpb
	GxFBv+wJcGYXmDs6x7cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1R2V-0000nC-Fb; Sat, 24 Aug 2019 08:04:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1R2E-0000mq-IG
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 08:04:32 +0000
Received: by mail-wm1-x343.google.com with SMTP id v15so10845268wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 01:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VWTrrD9BiZwTcjf+bsz7w5cdA1f2skqCvm3ZXEVoQko=;
 b=rLFe9GDUmcKFAgh3siKa6rcZjV6ZTqAECcU7vFmKs+8luJPS6lPf/30lo87A+v/YdA
 k0eEahzlS4MN2UyQZwkJBEXNHSMpQeprmvFCm83j8540sng/XeMTj0zGAEVL3SxFUXMT
 XsEjYrGfUCeeoSPLXrVghHN5ADPy0t6FkPL/RGpXJSr1V6LrhBWeYtVVDVaa+p0gj+Nq
 vXCEarwIW3Z1tJQqFoSHwR2HjJcUUpIj4Q1K0XZ+Q/nV838if8H0+ILcmrYPrqyR/75q
 xB0KQhROV0WLleteEgaruKAin4MdIgqdyxAkARwLvdg7uViPhF9sW6GdV9Tx0fMhfySL
 SIyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VWTrrD9BiZwTcjf+bsz7w5cdA1f2skqCvm3ZXEVoQko=;
 b=TXjahTpL4Hnl2g8OM/q2Yni69aACtNOy76LZCkaAoTA+1iGIV0Rf/fwhmngSo4fTpb
 GJaKaTCzNsc//kJNQXPtLp6r5DC/qCPCYZo3Tm2n3JaGTLnc8QP0iVfvKov3O2L+lHSZ
 KgwopAgvfs0OQOXmn+EpquadZ2dAY+O65RQGXrV/IM90+OPPu5lkYBIi6E6y410TKjho
 sfRJUMC/kY+7/UqfzCekZoFx1DtVQtuln37ZRCI7vGXpspqleApa/4FkP5Ho1N2n2qRs
 y5C7Q+qOUi8mL3gwbJQFFep1uSOr3W+/f26sqe048hN7JVxfpnPFF+7AL7N8KBokgHy4
 tkgA==
X-Gm-Message-State: APjAAAWpYpYVkvRIFWrV2ifpznuimzztHoOiVx5L12JlSSLpIfsAYY+b
 PlElBg63NyaqQP9qxXbPGbg=
X-Google-Smtp-Source: APXvYqzD0Dns5joa+Ot++jWHSQNsQH7+esIAVGFYLB7Fuk220hjiNVzXi3Tb84YV9R8dtQReMAQ8QA==
X-Received: by 2002:a7b:c95a:: with SMTP id i26mr9986010wml.175.1566633867494; 
 Sat, 24 Aug 2019 01:04:27 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net.
 [86.58.59.25])
 by smtp.gmail.com with ESMTPSA id r11sm4727847wrt.84.2019.08.24.01.04.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 01:04:26 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, megous@megous.com
Subject: Re: [linux-sunxi] [PATCH v2 0/3] Add basic support for RTC on
 Allwinner H6 SoC
Date: Sat, 24 Aug 2019 10:04:24 +0200
Message-ID: <3686940.YHdMKP4MVq@jernej-laptop>
In-Reply-To: <20190820151934.3860-1-megous@megous.com>
References: <20190820151934.3860-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_010430_630807_06E79258 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne torek, 20. avgust 2019 ob 17:19:31 CEST je megous@megous.com napisal(a):
> From: Ondrej Jirman <megous@megous.com>
> 
> I went through the datasheets for H6 and H5, and compared the differences.
> RTCs are largely similar, but not entirely compatible. Incompatibilities
> are in details not yet implemented by the rtc driver though.
> 
> I also corrected the clock tree in H6 DTSI.
> 
> This patchset is necessary for implementing the WiFi/Bluetooth support
> on boards using H6 SoC.
> 
> There was some discussion previously of describing HOSC, DCXO and XO
> oscillators and clocks as part of RTC in DT, but I decided against it
> because it's not necessary, becuse information that would be provided
> as a part of DT can already be determined at runtime from RTC registers,
> so this woudn't add any value and would only introduce complications
> to the driver. See: https://patchwork.kernel.org/cover/10898083/
> 
> Please take a look.
> 
> 
> Thank you and regards,
>   Ondrej Jirman

Sorry for a bit late test, but with your patches on Tanix TX6 box I get this 
in dmesg:

[   17.431742] sun6i-rtc 7000000.rtc: Failed to set rtc time.
[   20.439742] sun6i-rtc 7000000.rtc: rtc is still busy.
[   21.435744] sun6i-rtc 7000000.rtc: rtc is still busy.
[   24.055741] sun6i-rtc 7000000.rtc: rtc is still busy.
[   24.439752] sun6i-rtc 7000000.rtc: rtc is still busy.

Last line is repeated non-stop.

Any idea what could be wrong?

Best regards,
Jernej




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
