Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC2261BAB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 10:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vErdYt9iJ9Sbt1tmbo5YAfsgwfoaieBrAdfo1ztWaI=; b=XvhYQI1I1TA4OK
	3oThBbE8D1xLuSP1U0qvCcc0MLKi1v/w6ipNCwOh5cn9y8SVdwNG58xnfvq2k6dscat3JgVdhI+Q4
	5RjhYcyuYnrcxPP+UgMA+9Le5wtgQvKwq4HcBuDD2GwQwHAuyS7MVK7FaqfZ25b/YnsOnOx7sUgck
	AwXQ5pJ5KOeBZNkqouPJCZHgnL+I/yHPZOpichtKVIPR7vmbJiW32GQX6g3ZuzMrXQPs5NJdYf1Bi
	ANaihRIW/wIu+ScDwFbdkbyLOqhpQ1swB8sw/oEtgwO2KZkEHTrAu+hxnYjBLMqVMM53G0/j4hEsv
	qb0nACqtJESo/JthGvXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkOxt-0001zc-CP; Mon, 08 Jul 2019 08:25:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkOxX-0001yu-6K
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 08:25:16 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay6so7850868plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 01:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HBSOpGeilh1d+k1ITUctDAa0jlGTfzm/XYHfd6NAVZs=;
 b=TvcxpHNWz4hgGUB+LNuHI5YWHzDVJt/1XgqQ6DFUhvMzKA3okKMpxbvr4ipDQOrT6v
 cwArEjpPjqqcYw8uYvas1+s7vRj7ogC++JHqyLHMMj42y9wJKuSrE99NAaIapSSpHd0Z
 bX3Qd8NBsMFZOfz4Dxqr3ghsVHfjX5JWFsctmRGbOuQQkxw+te0XbnZkUMzFGfHV+xDi
 X1W1bPjecr55Nnewqc2U778mZbu4vyBHm/2woeQ+8Lyvq6WLSKzDktV/ZgZTtD+d1W8R
 dCeTcHk0vXB/0ru0tum/y/vkPNnHtMUbAsKqibaCZaPqNAKKOV3l2wR1Y1vl+UFCpR2A
 LFJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HBSOpGeilh1d+k1ITUctDAa0jlGTfzm/XYHfd6NAVZs=;
 b=rutZC8qFkPDdIg1HBw8TPPHuqoTG0DDreKF5ePCQmqyGZzVL/UpYioRD/2ZMKuwrTo
 mJBZz/LC0GlFayvWXpfkw0UMVhvZpW3Nhif9kp0viOINvh4gfTqX8baIlMkp3juiL3ny
 qvfNB9dWQbFv0OqaXMmqLrrOZErUA6KkOb8ICxGwpSbH+nYiB9X1H8RlUlAuUDp3m8IG
 /DclxRK+M4Cj6qDYXyWdgpl1nwhB4Nrcd3pas8fBzye5IVN3YOvKtF3/g0njnb58oJKS
 Wx3nd+OiuOvvelDE/a851AGgkAAXaQ92haI/vlhu6Z5c/KVJ1v4iECG+3qjh33UWu0B+
 PG4Q==
X-Gm-Message-State: APjAAAUZRSnXE/WzZ7S7ti0eL/IlUPUzNryZ3oO8J32L5HzHA1rQjN30
 SAGcXihURimWJQ72fq67UtAKOg==
X-Google-Smtp-Source: APXvYqwCjNEbxbwIuNxeO93iHJHDw+JddjwVlDj89IzeQ0Xpdb6vLLbspbd5Q1ZKCMscFgvOECoAXw==
X-Received: by 2002:a17:902:8b82:: with SMTP id
 ay2mr21412249plb.164.1562574313802; 
 Mon, 08 Jul 2019 01:25:13 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id k22sm22327205pfg.77.2019.07.08.01.25.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 01:25:12 -0700 (PDT)
Date: Mon, 8 Jul 2019 13:55:11 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx8mm: Assign highest opp as suspend opp
Message-ID: <20190708082511.py7gnjbqyp7bnhqx@vireshk-i7>
References: <20190704061403.8249-1-Anson.Huang@nxp.com>
 <20190704061403.8249-2-Anson.Huang@nxp.com>
 <DB7PR04MB50519C02D90675070F21501DEEFA0@DB7PR04MB5051.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR04MB50519C02D90675070F21501DEEFA0@DB7PR04MB5051.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_012515_248093_413E46D9 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-07-19, 07:49, Leonard Crestez wrote:
> On 7/4/2019 9:23 AM, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> > 
> > Assign highest OPP as suspend OPP to reduce suspend/resume
> > latency on i.MX8MM.
> > 
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >   arch/arm64/boot/dts/freescale/imx8mm.dtsi | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index b11fc5e..3a62407 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -136,6 +136,7 @@
> >   			opp-microvolt = <1000000>;
> >   			opp-supported-hw = <0x8>, <0x3>;
> >   			clock-latency-ns = <150000>;
> > +			opp-suspend;
> >   		};
> >   	};
> 
> What if the highest OPP is unavailable due to speed grading?

What does this exactly mean ? How is the OPP made unavailable in your
case ?

What will dev_pm_opp_get_suspend_opp_freq() return in this case ?

> Ideally we 
> should find a way to suspend at the highest *supported* OPP.
> 
> Maybe the opp-suspend marking could be assigned from imx-cpufreq-dt 
> driver code?

Sorry for jumping in late, the latest patch from Anson drew my
attention to this topic :)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
