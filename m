Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9601012807
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 08:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=icMrlENutCwEXGtPOXDVOh51rxTf3pvW0b2EJKAr3rM=; b=HQSWvQyMfqB2Y2
	uL4ytgycEGQ8w13hb/TnvJvBBxivdPmC0iB1mBxowqEBR6nbraOO2T9v+l9LdyYufnpqKIFBH9BWa
	g7NDCGYR/gJ64OYbQ80i5v/iELkpiPYcGx8MU9UPS/fTguqkv0kND9noz2J4LGa9pgTq9KvdzUf7l
	AsBXthzMctjzNbt74PScuZwiefx4cIpMWf64EmhTCQzyJzGfnVvwuqfOZ2tZh813VygQ40GTyz5oM
	WTBK1UCrXlpLteajUHpQla7Lxz3m7Jg3XUxJSDVUDmGkvNLwC72dedL7YsJHfjlaG05h9dYtFkljW
	RWZwu+RPPiUvJDNwYUQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMS1n-0001sW-D7; Fri, 03 May 2019 06:50:39 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMS1g-0001s6-8B
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 06:50:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id w24so2257158plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 23:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZusQRLArOzmqo4smuWdH+L1kBJBE5kLkpXfXVHOX9rM=;
 b=dyMaPAIFugojW/MQ5xQzBnuUPvFWpgJpjzGIYRhRbgp8ViJVXWSp5Pw/YEpjDAwc1F
 qsHcQ0tT1uAnj6XB9QNHEwD8Kjmqpkek25svpvwD6JMexr+LhkfjvJVY09BvnlNa/eOQ
 MyEDkuoNpoxumnuim514KRgzXiyCxXp+9c2RxtGLXYwyYbTe77x6B8fOFpQP7agMcrZj
 qdn82U9oxl1ClwmodiKgJs9t2n6+Bcxr8W9LNKkd9jaJDs9+pqjIG7CFnTI5qKWOZy61
 J62U+Ovb92AJ7fMe2Hc5fpNYvYlfpqM+29FQ0M4yz5zOX4VlRUyBtp5W5l57meWDWi6I
 37vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZusQRLArOzmqo4smuWdH+L1kBJBE5kLkpXfXVHOX9rM=;
 b=a6Wl3kbv0ij1PcmBbeJHqyWKnZP5f7puZeviTkGCSOnDtHCJ4FrRlVp+sq5bZ8y09/
 d1NA/vvK02X2sKyQ+soG0DYNXbf3aRMV3o2/K7rNMIJed7E65qHb0OtxhFGiBqDVMZTZ
 FeYNIf0vVDra3a1JQCLaVn39eVEatw4sTewnEuXOlr48INsjfgpcHujaQMOjXTA4NEty
 1WhLIdMTuE9OW65CemT+UatCOoIo4tD56llbvX1RrgyorYVMOwBIJ2luR92NmU0+5JlX
 /lxtNY6OzDIp00DtBrdmfICpPos/3sgLV4BGTwHXaVFQ91P7sl32dsnYbu0u/bDWpuSZ
 Zyjw==
X-Gm-Message-State: APjAAAVPDS1IFQbXrCmzq1pEefi3lqzUQHDLreoZ/T7M7z2KOCWcku3J
 +QQh6AjRoW8uKwDVp09Y2cHfOg==
X-Google-Smtp-Source: APXvYqxhFfCsYglwk894BNIFGSrE92DJ4O80HqScawkzC6+i9SiA0jZsiC9+5lqhAu02+9EHvIxQFQ==
X-Received: by 2002:a17:902:bd88:: with SMTP id
 q8mr8314189pls.287.1556866230990; 
 Thu, 02 May 2019 23:50:30 -0700 (PDT)
Received: from localhost ([171.61.121.242])
 by smtp.gmail.com with ESMTPSA id n67sm1668508pfn.22.2019.05.02.23.50.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 23:50:29 -0700 (PDT)
Date: Fri, 3 May 2019 12:20:26 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 0/3] cpufreq: Add imx-cpufreq-dt driver
Message-ID: <20190503065026.qwroewhu5lxckqgl@vireshk-i7>
References: <cover.1556836868.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1556836868.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_235032_288748_AB2B0ED2 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [171.61.121.242 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02-05-19, 22:44, Leonard Crestez wrote:
> Right now in upstream imx8m cpufreq support just lists a common subset
> of OPPs because the higher ones should only be attempted after checking
> speed grading in fuses.
> 
> Add a small driver which checks speed grading from nvmem cells before
> registering cpufreq-dt.
> 
> ---
> 
> By default kconfig builds it as a module even though it's very small.
> Couldn't find a way for MODULE_DEVICE_TABLE to match on root node compat
> string and there was no other appropriate node so register the
> imx-cpufreq-dt platfrom device directly from imx8 soc driver instead. I
> checked module is probed by default and rmmod/modprobe again works.

I have suggested something in 1/3 for this.

> It seems that cpufreq-dt insists on adding the opp and regulator itself
> so can't actually call dev_pm_opp_of_add_table and then
> dev_pm_opp_disable

Well we can surely implement it someway if that is what you want, like we can
pass postinit() callback in platform data to cpufreq-dt which can get called
after OPP table is added, etc.

But disabling OPPs after they are added isn't a great way of handling it as
well.

> so implementation was switched to opp-supported-hw.

I will say that this is far better than disabling the OPPs after adding them. So
this is a good way of doing it.

> Maybe I'm confused by API quirks?
> 
> The market segment logic was dropped because I couldn't find any good
> references in datasheets for why lower or intermediary OPPs should be
> disabled on certain market segments. Using opp-supported-hw means that
> adding this in the future would require changing flags inside DT instead
> of code, that seems undesirable for DT compat reasons.
> 
> This could also be extended to mach-imx7d speed grading.
> 
> I never noticed anything wrong with going above the fused speed grading
> however it's technically unsafe so the cpufreq parts should go in before
> DT changes.
> 
> Other changes since v1:
>  * Turn into a proper module
>  * Support imx8mq
> Link to v1 (RFC): https://patchwork.kernel.org/patch/10916769/
> 
> Leonard Crestez (3):
>   cpufreq: Add imx-cpufreq-dt driver
>   arm64: dts: imx8mm: Add cpu speed grading and all OPPs
>   arm64: dts: imx8mq: Add cpu speed grading and all OPPs
> 
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 23 +++++-
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 23 +++++-
>  drivers/cpufreq/Kconfig.arm               | 10 +++
>  drivers/cpufreq/Makefile                  |  1 +
>  drivers/cpufreq/cpufreq-dt-platdev.c      |  3 +
>  drivers/cpufreq/imx-cpufreq-dt.c          | 99 +++++++++++++++++++++++
>  drivers/soc/imx/soc-imx8.c                |  3 +
>  7 files changed, 160 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/cpufreq/imx-cpufreq-dt.c
> 
> -- 
> 2.17.1
> 

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
