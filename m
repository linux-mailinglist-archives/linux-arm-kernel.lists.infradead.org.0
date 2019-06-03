Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A9F32926
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 09:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKYJiqFG3fPrKJ6T8ZiRd/9BGPBrtoMOtwscpZmQDpg=; b=aHdZg85Q3u6btn
	2tW+Vsycp9uVBFBA1UkDMYywaXCCX8Vzi+orbR3V0dqX2P4h8rFZ2O2fHbyiWicnmXsltv6N+OPPE
	Zyxh0rQDxjHsoTa4+cjPZl88AGY/0iZGpcgDGiUVVZev9r34OjgJpQ0f9/lxRClM5Y+AHDwfr35w+
	faJbypvdkffr7/nmPfg+W6+fdFT+w0j24zY3gpf3axGO/rnNYzCVoqP29OS+eQGxAFAPkZPmLzdQ9
	kCUzGSOGm9CiEmFzCmKbmvlCTqzsmEFKvBkHNbUwkAMcwMbN9kUym/FsImb1wtBeXaeA0iIfDtmH8
	5WjsJ22zuzxoPH1VlNfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXh7n-0003tR-Rv; Mon, 03 Jun 2019 07:11:19 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXh7g-0003t3-FM
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 07:11:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id t16so1229706pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 00:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Qm18g2EWN56tn+30WXhvjhc6Deqa0sfwyr6OO2dMMGc=;
 b=EVkE7KvhSAwj6CijMdMBTze/Y3Ta1Ydzm7tQIDqJY3uO1UUehTqRfjLhag2P0TOyu4
 X8J5kctBrCbCH10ff3m1LM693Ylt6Rk4qFfJ6HqRQN6hgqCnvKmXOJ23JvBRljl+8aGy
 Mvt4Hh1OiOlXrDD5afZ0y3IMVxGiTrElV/54EenbtcpdNwFnIhBOYgiluF41GR70istx
 3JcK4VAD5GlxYBCEYMfjqrrF9yoL7k13d4vv5GxOzM6rVM/EsgQ0VwG/kFwjV+XxOPTg
 HjfVu0+KNrZscWWdph/AzQGxVPHszKPTejeBG/EkLjz20uwUFT1neQGiwf1l5A1ZosZd
 N6hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Qm18g2EWN56tn+30WXhvjhc6Deqa0sfwyr6OO2dMMGc=;
 b=XEjXRlWghSZxiMeb0WzYv8dnYT8w/m9vpm2aUWN9X0c4LqaGj0+xHE2V2r5NOb1rS7
 ZK5ZhyJvn61Bf0qwvp5HC3PxfIzmTf3Py7NVui304GtS35MUyl0blkaZHIfJfEKiLxc6
 XkISk4ZNNWQaFM3rsBhJ1TK2nvNqDBcpWLYO1djG8e9x1/nsRDRywzRkotypiDMaS1bj
 q9KWCw5NyR0YPgHUKAr8vxiPjQCsOuUAyuU+iHDDeSbnQ9YQCcJvsxsmNcHHhDMDKS+w
 A5VJskdfWZLRbBQNOnTtSHVeqE6VBhhQkT9AfuUahZ+XbvPye1oEssPX7HMpuItGmAAj
 UtJw==
X-Gm-Message-State: APjAAAV3o4LurdodGG9XYV9OEkdygHnH4INdtPsTjFke1Ydn+v6j5laU
 /R9c7aRKnRPOj0618WY3H7iU8IADjZo=
X-Google-Smtp-Source: APXvYqzzgxYFOssxgDncS+tgpwltYQPncZLlvPo5Vj1BvECm+EaZeUf2qkpwOqD/qtwtgaGrzOHlmA==
X-Received: by 2002:a63:5ca:: with SMTP id 193mr2657457pgf.232.1559545871531; 
 Mon, 03 Jun 2019 00:11:11 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id m7sm21245374pff.44.2019.06.03.00.11.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 00:11:10 -0700 (PDT)
Date: Mon, 3 Jun 2019 12:41:08 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 3/3] cpufreq: Switch imx7d to imx-cpufreq-dt for speed
 grading
Message-ID: <20190603071108.toainiom76pth4qs@vireshk-i7>
References: <b6a9b9f80534af5c12db30a0bb699ec850f85be7.1559131365.git.leonard.crestez@nxp.com>
 <8787934ff35e7e55837f2caabc0d5bf65828d971.1559131365.git.leonard.crestez@nxp.com>
 <20190603053850.tkskdzcloir4k3kw@vireshk-i7>
 <VI1PR04MB50551BDB2D0AA64D7192D98CEE140@VI1PR04MB5055.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB50551BDB2D0AA64D7192D98CEE140@VI1PR04MB5055.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_001112_537250_7F12C1E8 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03-06-19, 07:01, Leonard Crestez wrote:
> On 6/3/2019 8:39 AM, Viresh Kumar wrote:
> > On 29-05-19, 12:03, Leonard Crestez wrote:
> >> This driver can handle speed grading bits on imx7d just like on imx8mq
> >> and imx8mm.
> >>
> >> diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
> >> index 5061503cb0a1..ce26ffc18ce6 100644
> >> --- a/drivers/cpufreq/imx-cpufreq-dt.c
> >> +++ b/drivers/cpufreq/imx-cpufreq-dt.c
> >> @@ -18,10 +18,11 @@
> >>   #define OCOTP_CFG3_SPEED_GRADE_MASK	(0x3 << 8)
> >>   #define OCOTP_CFG3_MKT_SEGMENT_SHIFT    6
> >>   #define OCOTP_CFG3_MKT_SEGMENT_MASK     (0x3 << 6)
> >>   
> >>   static const struct of_device_id imx_cpufreq_dt_match_list[] = {
> >> +	{ .compatible = "fsl,imx7d" },
> >>   	{ .compatible = "fsl,imx8mm" },
> >>   	{ .compatible = "fsl,imx8mq" }, >>   	{}
> >>   };
> > 
> > What is the purpose of this array and can we get rid of it instead ? I am asking
> > as this driver gets probed only if the platform code has created the
> > imx-cpufreq-dt device and it shouldn't get created for other machines than what
> > is supported.
> 
> Maybe it will be useful in the future to add .data here if a chip starts 
> using 3 speed grading bits?
> 
> It can be removed for now.

Yep, please remove it then for now. And it would be better to break the current
patch into arch and cpufreq part, so I can apply only the cpufreq parts easily.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
