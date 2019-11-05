Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A095F06B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 21:13:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/foHOClUQ7gXr5hnk69OmP/adNHquahfLkpi5r9TD0=; b=Y9xl7UoDO4eMDx
	wyiPF+M+ULBqBYzfcFoXcO/prIBsscvTn6f71ltxMs6eqZpjgzbHGHRZni1HLrltQmibOGGnWLEwb
	KbjZqwLaOof/pf0X6oCB6kXd/9DozehPtp+yFoAi0AfCgtmqkpJW2+7lqwbIhQmVlTaorTPGSrTBK
	X3iLpO3VfbjiC6h5LgPcyiaRyUVtcNWQ5rdRMtPzXwOls6N+xxyQGezP463p+MpldQrnZ8P2/GIJ/
	olqFdfLaf8al35zQPP/kbEM87qGM5dPQ//rtwkRD/8D1MwtRT3h887BfEQ6NH/vcxZX5ST9CPdVZy
	6uBu0PBhNrZw7G9ycBsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS5CU-0001JR-1D; Tue, 05 Nov 2019 20:13:14 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5CK-0001Iv-Ku
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:13:06 +0000
Received: by mail-oi1-f193.google.com with SMTP id i185so18756691oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 12:13:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mU9UcOU7sHcf7HCmRIHXhWHMA1uoQHabE8Uv8Jt+A7E=;
 b=ezQdxC2CeFaS2s/bbyppjYUWAEKASTxROgfArsnNrysCKPjUJagrVc1VeRfrD3XOca
 4IY4kAaAOpNmjQWo56GBdY2nyF5DiarGCR+8H0Fk4wsRbo7w8L25rIz26Yr65Aw9gFn9
 vnOjWm2/E4Ppxj+G8afY5DWebMnbYIgh+K2E+YMX9mF6iQtRf35+bhBUGf0ah3lKip47
 WweGTshlr+VJyeI3+m5kA7G9j8ch+z5vBoZzURrYxABbUeSP7OJE2E/dLpajMQaI8Ie5
 fqSLpQpUnGhbzgPwbdPxs4HvOt7gohNoOVf9RVYuso6PJmnkq2PVPyNJ7whINh4JRPwE
 8VbQ==
X-Gm-Message-State: APjAAAV7TJ6kplnTMoy1piWfHi5/ALffJEGKpQW31r9XQUxGCHYzFHeW
 LrjufWJjTCMCmHQdu0dDBA==
X-Google-Smtp-Source: APXvYqzy0m98tPqHlFSqTVQuTPMUjEJDLNZe7DOwoduqbUy3ipM2+KtNECfZLQnN0fel0V++XN/OPg==
X-Received: by 2002:aca:dd0a:: with SMTP id u10mr740393oig.130.1572984783628; 
 Tue, 05 Nov 2019 12:13:03 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v13sm1077013ota.53.2019.11.05.12.13.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 12:13:03 -0800 (PST)
Date: Tue, 5 Nov 2019 14:13:02 -0600
From: Rob Herring <robh@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: devfreq: Add bindings for imx ddr
 controller
Message-ID: <20191105201302.GA4772@bogus>
References: <cover.1572558427.git.leonard.crestez@nxp.com>
 <b9a87c69eb603622303add4f0c02dd4c1262462a.1572558427.git.leonard.crestez@nxp.com>
 <20191104222126.GB5218@bogus>
 <VI1PR04MB7023F375AEDC4549FA12247FEE7E0@VI1PR04MB7023.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB7023F375AEDC4549FA12247FEE7E0@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_121304_684448_A0342DA7 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Martin Kepplinger <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 07:25:57PM +0000, Leonard Crestez wrote:
> On 05.11.2019 00:21, Rob Herring wrote:
> > On Thu, Oct 31, 2019 at 11:50:24PM +0200, Leonard Crestez wrote:
> >> Add devicetree bindings for the i.MX DDR Controller on imx8m series
> >> chips. It supports dynamic frequency switching between multiple data
> >> rates and this is exposed to Linux via the devfreq subsystem.
> >>
> >> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> >> ---
> >>   .../devicetree/bindings/devfreq/imx-ddrc.yaml | 60 +++++++++++++++++++
> > 
> > .../bindings/memory-controllers/
> 
> Okay, but I'm not sure about the rules here. Usually there is a 1:1 
> mapping between subsystems and bindings directory but I guess devfreq is 
> odd since it's not really a physical class of device.

Mostly true, but it's not completely 1:1.


> I saw there is also a drivers/memory and there is already a 
> devfreq-using driver in there (EXYNOS5422_DMC).

Yeah, well it's been a while since I last tried to clean up locations of 
things. DDR controller bindings are not in the best shape.


> It's not clear if my driver fits in there; as far as I can see the only 
> "core" functionality in drivers/memory is parsing DDR timings from DTS 
> but for imx8m this is all controlled in firmware.

You shouldn't have to think about that. Bindings should be for DDR 
controllers regardless of whether there's a driver for devfreq, EDAC, 
perf, or ??? or all of those.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
