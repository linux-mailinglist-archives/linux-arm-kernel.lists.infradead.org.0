Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 160263B46C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9UWS2OTZRbKECihy/OGhV0pAmWuHqoYLIw1R61Jbck=; b=spcxR4T6hxjFA/
	KU+ceYMbt0al0AVUCxLWvneYanoNPAMpu1aNHKlMKpES/LV+0gbaVpz4tMSYXxTBiwv56Q517sawo
	0pC/TmZfNEgX7o0yQBESOaZvJGxeFCPoIWlewh5D3y2Fly366D01zKpFf/kVuu8CNiXV0R09HKl97
	WcHosxmUEN2jIS0dWNvZA9kdPpGmreGJbz9Pgw1BwisZelrRYPYGlUgTqKW5M8JTs9A8Xsg6qXGQo
	n/kVGpEQ63v5sxjVVzKxMByu135HzAxPwYjysrljyib3j+dD/3f1UZCyPX243ZAiSLO+fYTBPqWo0
	EGL7VAQCc32pw3QUJbZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJDJ-00048X-IX; Mon, 10 Jun 2019 12:15:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJD4-00047K-GP
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:15:36 +0000
Received: by mail-wr1-x442.google.com with SMTP id r18so8926247wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 05:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TNg7dffhdY0k328udTWVO2CXIL9HjzaUVHvDgf+GtK4=;
 b=ZXLPQq+o6b0nHKPZK/M+Qxx+orok889VPYieNoCf6MJVzZ8VSDN1BzvcxpdKVntchY
 C1/sw4NDZP0TUhAMPNkYtDw6AwrsqcnbUmdn4dXvq912jSdsDC+vSyAme9UkMRIga+J3
 +GUHIdXkEjbWUNkxxNmHzZ3NCBqUeSEEeOtOsvnmfAsu23ey6WbVZSOhgpI+KOiGMzzn
 fLpyI+p4nx5dS9N6aPzCZe0vE2r5t440mvO4FK7d60UbD6c8Eq2DPERRqehWbpfAeAHk
 nt+1PpKw+OkF6i+jWmSEygcr4LEoAlH4aEdP/Oj15O7GQrB108NI0bjYSf9znu0e+Spn
 ZWgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TNg7dffhdY0k328udTWVO2CXIL9HjzaUVHvDgf+GtK4=;
 b=FsAhBKc5CehVr/FzKPMyiVp0SfTrpqv+bMuJFhQNGfeF4kyGVbVSliEHix/hdPjp4D
 i0Chzr4eP4mwoGjVX06eChSyrDo6MPWz+fiQjgrRWKT+hicsRDrBS9ECfFtebMMcDLQP
 qm7Y/V4Kha2Nb5gQCmXWKwJ1q+o3tgmxRc3QOpesWN54MOcqs8EM/lnuFqJ3jocTTIQw
 7xkkGgQTnouMLO19HQVImmDeF1AwxIkI0bYZBNZRV3569RTOLDJR28KR2IaTHWFAPUzY
 qdoRwApPxH+InWfg5YBow7QLBNy1NBj5w9BTgAdsZEsWlTX2nUd4FWbhtoCYWWPVVKqs
 avWQ==
X-Gm-Message-State: APjAAAW6xoMgEufiGKsuQ//hxoHuTCkoccV6SeabJvfT8URNDlih74Yt
 ntxnwerZ0QjdnhxHXzXCT5w=
X-Google-Smtp-Source: APXvYqzlQSAtl9/8yztiGR6lp/ce64UZfTWo4eBT3hz9ZP/qGRp2sOkCeft5kX5JxyJgCWLCirAzxQ==
X-Received: by 2002:adf:fb0b:: with SMTP id c11mr4158638wrr.56.1560168930388; 
 Mon, 10 Jun 2019 05:15:30 -0700 (PDT)
Received: from debian64.daheim (pD9E29896.dip0.t-ipconnect.de.
 [217.226.152.150])
 by smtp.gmail.com with ESMTPSA id v67sm11434321wme.24.2019.06.10.05.15.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 05:15:29 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1haJCy-0004Co-5N; Mon, 10 Jun 2019 14:15:28 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH 5/6] arm64: dts: Add ipq6018 SoC and CP01 board support
Date: Mon, 10 Jun 2019 14:15:28 +0200
Message-ID: <4056907.DrFocau5Ix@debian64>
In-Reply-To: <50231fba-7212-f8b9-9313-0c79294d4cc6@codeaurora.org>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <CAAd0S9DKqAgFPgLzHiCBiJgE+OmUW7ainyjM_3-RyfCoKEa51A@mail.gmail.com>
 <50231fba-7212-f8b9-9313-0c79294d4cc6@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_051534_575515_FFF04D63 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 agross@kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 =?utf-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-soc@vger.kernel.org,
 linux-clk@vger.kernel.org,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday, June 10, 2019 12:09:56 PM CEST Sricharan R wrote:
> Hi Christian,
> 
> On 6/6/2019 2:11 AM, Christian Lamparter wrote:
> > On Wed, Jun 5, 2019 at 7:16 PM Sricharan R <sricharan@codeaurora.org> wrote:
> >>
> >> Add initial device tree support for the Qualcomm IPQ6018 SoC and
> >> CP01 evaluation board.
> >>
> >> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> >> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
> >> --- /dev/null
> >> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> >>
> >> +       clocks {
> >> +               sleep_clk: sleep_clk {
> >> +                       compatible = "fixed-clock";
> >> +                       clock-frequency = <32000>;
> >> +                       #clock-cells = <0>;
> >> +               };
> >> +
> > Recently-ish, we ran into an issue with the clock-frequency of the sleep_clk
> > on older IPQ40XX (and IPQ806x) on the OpenWrt Github and ML.
> > From what I know, the external "32KHz" crystals have 32768 Hz, but the QSDK
> > declares them at 32000 Hz. Since you probably have access to the BOM and
> > datasheets. Can you please confirm what's the real clock frequency for
> > the IPQ6018.
> > (And maybe also for the sleep_clk of the IPQ4018 as well?).
> > 
> 
> What exactly is the issue that you faced ?
> Looking in to the docs, it is <32000> only on ipq6018 and ipq40xx as well.

We need just a confirmation.

Then again, Currently the qcom-ipq4019.dtsi is using 32768 Hz.

|		sleep_clk: sleep_clk {
|			compatible = "fixed-clock";
|			clock-frequency = <32768>;
|			#clock-cells = <0>;
|		};

<https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/qcom-ipq4019.dtsi#L144>

Which makes sense, because all previous Qualcomm Atheros MIPS and the
future IPQ8072 SoCs have been either using or deriving a 32768 Hz clock.

For example: The AR9344 derives the clock from the 25MHz/40MHz external
oscillator. This is explained in "8.16.9 Derived RTC Clock (DERIVED_RTC_CLK)".
Which mentions that the "32KHz" clock interval is 30.5 usec / 30.48 usec
depending whenever the external reference crystal has 40MHz or 25MHz.
(1/30.5usec = 32.7868852 kilohertz!). The QCA9558 datasheet says the same
in "10.19.11 Derived RTC Clock". 

For IPQ8072: I point to the post by Sven Eckelmann on the OpenWrt ML:
<http://lists.infradead.org/pipermail/openwrt-devel/2019-May/017131.html>
"I was only able to verify for IPQ8072 that it had a 32.768 KHz
sleep clock." 

So this is pretty much "why there is an issue", it's confusing.
Is possible can you please look if there are (fixed) divisors values
listed in the documentation or the registers and bits that the values
are stored in? Because then we could just calculate it. 

Regards,
Christian



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
