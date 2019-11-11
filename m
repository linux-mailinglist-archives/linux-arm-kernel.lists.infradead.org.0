Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A802F6DC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 06:13:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hweo89xhbxfmS+KhYojyonOgBYJs+TpFalLBI7rk6o=; b=Is0ePxjvSqeK4J
	SyO2Vpj5xpWkB+ooSeO2gt4pPb2J1P3ggBmd1ziNBBMzOvwRSFQ63gA+PEzc8JRi19v+w9PaIrX43
	GKjEH8ZX9GRxQfH4d2B1dpvw2ZxDUPezjHpqKosWzeQA8oWffDhOx/JhsASdXpoT9/7avw2PUrvvl
	GUtGkb+l7k45Sp1uylxlEon5n3RGby0zbaVwPXyOl8cB4BLNCxhbY9jB31KOktkWm2JnZavdIIYjO
	JyJPlO6XXiXlFqlbYiEtu9RLytRUSu/+rhgjNMULlkNV82vj2jkqe/oQg/wX4ZgeMGd1tJDucwkuL
	Q3yWpn+fLCwaAbOiEybA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU210-0004sT-16; Mon, 11 Nov 2019 05:13:26 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU20p-0004rs-PJ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 05:13:18 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191111051312epoutp016d8a53b71f590fa25afc75f2c825b399~WA7QykXRn3032230322epoutp01h
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 05:13:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191111051312epoutp016d8a53b71f590fa25afc75f2c825b399~WA7QykXRn3032230322epoutp01h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573449192;
 bh=8RH27LGdegbpDX4AFZ61KGA7B//5Q6rs1aAwW41fEwQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=TGHWcrSPjumbZofkJbe4pEwgApsSBMxc/VpxsR+W9s+iMNGBo9xG/aYzJ3iMYpvMn
 cbVfpUB0greHuTxbN6FjNi07uEWZenAN9N74Md8szioi22Feu6g+5yzBBtfE5xUTY8
 ufl24C585QGVzdtNtqWzvUMWrUtb5uNsYmip/dkM=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191111051311epcas1p132ffdfd414c1bd081c3f3cc7d0b8a848~WA7QXF-Ax2925229252epcas1p1i;
 Mon, 11 Nov 2019 05:13:11 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.158]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47BJtF331kzMqYkj; Mon, 11 Nov
 2019 05:13:09 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 CB.80.04085.5EDE8CD5; Mon, 11 Nov 2019 14:13:09 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191111051308epcas1p2ceab84e48e9985159303d8edfa963152~WA7NbEouw2681526815epcas1p2W;
 Mon, 11 Nov 2019 05:13:08 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191111051308epsmtrp23ce9c410049071f29d19039c4d003673~WA7NZ9X8C0734907349epsmtrp28;
 Mon, 11 Nov 2019 05:13:08 +0000 (GMT)
X-AuditID: b6c32a37-e19ff70000000ff5-99-5dc8ede5b2e3
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 4E.6D.25663.4EDE8CD5; Mon, 11 Nov 2019 14:13:08 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191111051308epsmtip2822b619f2bc6d233002429a345593e36~WA7NEqwlt0447004470epsmtip2T;
 Mon, 11 Nov 2019 05:13:08 +0000 (GMT)
Subject: Re: [PATCH v4 5/6] PM / devfreq: imx8m-ddrc: Measure bandwidth with
 perf
To: Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd
 <sboyd@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <59f37128-45e8-763d-dd48-32baa864d2a6@samsung.com>
Date: Mon, 11 Nov 2019 14:18:56 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a25094eac4c0f740e0e33c04af699b39a4226a08.1573252696.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUxTVxjO6W1vL24ddwXGGfuwXLMtsCH9sHhcwGwR15vMH03YEmcG9Q5u
 gNDeNr2t0e3HUIKVzqHONRudU5yy0c5NqFXKRyHUihW0DhaQCDgTWDRmlLGCWTC4tb0u49/z
 Pnme9z3Pe/ISmLxfmkPUcjbWyjFGCl8nvnQ5r7Dg9/lIufLLq3IUGrooRcsjwwB9P3YFoCVX
 D4Zmf5sCqKulEp0KRyWo88KUGH0V9OHI6+oWo5s3O6ToxoE/pKh9ZlGCfLMTErR4+I4EOVc8
 GIp/Hgao7daoCE20H5OgeMcsQKPD29HU/nYc/RgdxNH1kTEJagyGpcgZWsXR44lOMbrvz0ad
 y/RbL9EuZzugz508B+iFyUYp/U39qJhu9dlpn7cJp6cn+nD6wtlP6c5YQEQPxvpE9JFVJb1y
 OYv2jzvEdLPfC+i472V9+q664hqWqWKtCparNFfVctUl1Ltlhm0GbZFSVaDagjZTCo4xsSVU
 6Q59wTu1xsR6KMUexmhPUHqG56nCrcVWs93GKmrMvK2EYi1VRssWy0aeMfF2rnpjpdn0pkqp
 VGsTwt11NWGPC7c0bdvb3xjA6sGw1gnSCEhugjPRfswJ1hFyMgDgXN8dkVD8BeBYixMIxUMA
 T/b0SJ2ASFm6/9QLfBDAx80uXCgWAHy46seTfTPIMvjPwYVUq0wyAuDp/dFUgZGPcDh/vAtL
 qnAyHw7cn0w50slcOP73LEhiGbkVjruGxEksJl+BzaHkCILIInfCkWVGkDwLr7XMpSRpZAVc
 bTgtSWKMzIa3506JBLweds2fSIWD5HUCOrwtEiF1KbwxGcEFnAEfXPVLBZwD47HgE/4T6LkW
 xgXzIQD9A788MWvgQNtxUfJBGJkHz/cUCnQu7H70LRAGPwNjy4clwrpk8NBBuSDZAH+9OyMS
 8PPwjKMJPwoo95o47jUR3GsiuP8f1grEXvAca+FN1SyvsmjWfrcPpG4nf3MAdER3hABJAOpp
 mb4wUi6XMHv4faYQgARGZcoCexOUrIrZ9zFrNRusdiPLh4A2sexjWE5WpTlxiZzNoNKqNRoN
 2qQq0qpUVLbs7R/ayuVkNWNj61jWwlr/84mItJx60Pgd93rbz0vTOvtSwxeecEU891LDdPo9
 Xe1PJZ4HmXo9pet+9QWHPb69bOgeu1icWdesdqhP9L720RuD7tzhPJrKGM2GKyPv34od1Q3w
 B576UF+6s6Ko9bPMI4YX1crb6xU6IufKYJC6+/Wu9zbUG/ndM71cpPeD85PBJc6/NHGREvM1
 jCofs/LMv+jRyU9RBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0iTYRTHe/Ze9rocvk3Nx6LEdWWVZVQ8H0oMkx7qiyBE2fVNX9Tc5tqb
 pn1JLY2tm35YMTUvUeJloFuWq9TYvLC0FBdbol0opdKytCVJaNa2Ar/9zzm/3zlfDkPI6qhl
 TLr6DK9Vc0o5LSEfdMgjNo1OOI5u+dm+Ctm774vRdG8PQDXOLoB+GB4RaOTtMEAtxmRU2dlH
 IfO9YRLdbLPQqN7wkET9/U1i9LzgixjVvp6ikGXETaGpK28opP9VRyDP1U6A7r4cECF3bQmF
 PE0jAA30xKPh/FoaNfTZaPSs10mhwrZOMdLb52j0220m0afmMGSexrErsEFfC7CpwgTwt8FC
 MS7LGyBxlSULW+p1NH7lbqXxvTvnsfmrVYRtX1tF+PrcFvyrIxQ3uy6R+FpzPcAey8qEoCTJ
 zhRemZ7NazfHnJCkddYZaI0uLqe90ErkgZ7tesAwkN0GH04m6IGEkbGPAXQXf6b1IOBvPxze
 GOgi/Eww7OgQ/MwEgP3WQeBlgtlEOF/0TeQdhLAOACt0E4S3INh5Gnqe1NB+5T2AlwtMhFeh
 WQV88mnQdyKIjYSumRHfKikbA12GbtKbSXYNvGY3+JhQ9iD82DL4j1kCnxpHfUwAewzOXaim
 vJlg18HZCifhz2FwaLRS5M8RsGWinCgGwaUL9NIFSukCpXSBUgXIehDOawRVqkqI1mxV82ej
 BE4lZKlTo5IzVRbgeyCFwgocjuN2wDJAHiid2eg4KqO4bCFXZQeQIeQhUmvO35Y0hcs9x2sz
 j2uzlLxgB8sZUh4mjcjsPiRjU7kzfAbPa3jt/6mICViWBxKPRK7fMyRuG1fpbONOY8lO46JC
 ZU1J5ofx/uqgjRtsRZMBVYk7NkUuspyAOafDzzrbgvJ3YEHxNrf5dqD24tJ1jcnfk9Zax+L3
 h56PfeySZDREnzrce2e2SHfg3cxYxS7N4vX5B8vDTStv7cUxuznb9Mmbcft6ZKFlq19caPze
 ZZSTQhoXrSC0AvcHurHSPzwDAAA=
X-CMS-MailID: 20191111051308epcas1p2ceab84e48e9985159303d8edfa963152
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191108224023epcas1p43cb02d83f5d9b8d8774405dcea03530f
References: <cover.1573252696.git.leonard.crestez@nxp.com>
 <CGME20191108224023epcas1p43cb02d83f5d9b8d8774405dcea03530f@epcas1p4.samsung.com>
 <a25094eac4c0f740e0e33c04af699b39a4226a08.1573252696.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_211316_210828_CDC4F3E6 
X-CRM114-Status: GOOD (  36.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, linux-clk@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Matthias Kaehlcke <mka@chromium.org>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

On 11/9/19 7:39 AM, Leonard Crestez wrote:
> The imx8m ddrc has a performance monitoring block attached which can
> be used to measure bandwidth usage and automatically adjust frequency.
> 
> There is already a perf driver for that block so instead of implementing
> a devfreq events driver use the in-kernel perf API to implement
> get_dev_status directly.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/imx8m-ddrc.c | 153 +++++++++++++++++++++++++++++++++++
>  1 file changed, 153 insertions(+)
> 
> diff --git a/drivers/devfreq/imx8m-ddrc.c b/drivers/devfreq/imx8m-ddrc.c
> index 51903fee21a7..6372191f72d7 100644
> --- a/drivers/devfreq/imx8m-ddrc.c
> +++ b/drivers/devfreq/imx8m-ddrc.c
> @@ -11,10 +11,13 @@
>  #include <linux/pm_opp.h>
>  #include <linux/clk.h>
>  #include <linux/clk-provider.h>
>  #include <linux/arm-smccc.h>
>  
> +#include <asm/perf_event.h>
> +#include <linux/perf_event.h>
> +
>  #define IMX_SIP_DDR_DVFS			0xc2000004
>  
>  /* Values starting from 0 switch to specific frequency */
>  #define IMX_SIP_DDR_FREQ_SET_HIGH		0x00
>  
> @@ -78,10 +81,22 @@ struct imx8m_ddrc {
>  	struct clk *dram_alt;
>  	struct clk *dram_apb;
>  
>  	int freq_count;
>  	struct imx8m_ddrc_freq freq_table[IMX8M_DDRC_MAX_FREQ_COUNT];
> +
> +	/* For measuring load with perf events: */
> +	struct platform_device *pmu_pdev;
> +	struct pmu *pmu;
> +
> +	struct perf_event_attr rd_event_attr;
> +	struct perf_event_attr wr_event_attr;
> +	struct perf_event *rd_event;
> +	struct perf_event *wr_event;
> +
> +	u64 last_rd_val, last_rd_ena, last_rd_run;
> +	u64 last_wr_val, last_wr_ena, last_wr_run;
>  };
>  
>  static struct imx8m_ddrc_freq *imx8m_ddrc_find_freq(struct imx8m_ddrc *priv,
>  						    unsigned long rate)
>  {
> @@ -245,10 +260,131 @@ static int imx8m_ddrc_get_cur_freq(struct device *dev, unsigned long *freq)
>  	*freq = clk_get_rate(priv->dram_core);
>  
>  	return 0;
>  }
>  
> +static int imx8m_ddrc_get_dev_status(struct device *dev,
> +				     struct devfreq_dev_status *stat)
> +{
> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
> +
> +	stat->current_frequency = clk_get_rate(priv->dram_core);
> +
> +	if (priv->rd_event && priv->wr_event) {
> +		u64 rd_delta, rd_val, rd_ena, rd_run;
> +		u64 wr_delta, wr_val, wr_ena, wr_run;
> +
> +		rd_val = perf_event_read_value(priv->rd_event,
> +					       &rd_ena, &rd_run);
> +		wr_val = perf_event_read_value(priv->wr_event,
> +					       &wr_ena, &wr_run);
> +
> +		rd_delta = (rd_val - priv->last_rd_val) *
> +			   (rd_ena - priv->last_rd_ena);
> +		do_div(rd_delta, rd_run - priv->last_rd_run);
> +		priv->last_rd_val = rd_val;
> +		priv->last_rd_ena = rd_ena;
> +		priv->last_rd_run = rd_run;
> +
> +		wr_delta = (wr_val - priv->last_wr_val) *
> +			   (wr_ena - priv->last_wr_ena);
> +		do_div(wr_delta, wr_run - priv->last_wr_run);
> +		priv->last_wr_val = wr_val;
> +		priv->last_wr_ena = wr_ena;
> +		priv->last_wr_run = wr_run;
> +
> +		/* magic numbers, possibly wrong */
> +		stat->busy_time = 4 * (rd_delta + wr_delta);
> +		stat->total_time = stat->current_frequency;
> +	} else {
> +		stat->busy_time = 0;
> +		stat->total_time = 0;
> +	}
> +
> +	return 0;
> +}
> +
> +static int imx8m_ddrc_perf_disable(struct imx8m_ddrc *priv)
> +{
> +	/* release and set to NULL */
> +	if (!IS_ERR_OR_NULL(priv->rd_event))
> +		perf_event_release_kernel(priv->rd_event);
> +	if (!IS_ERR_OR_NULL(priv->wr_event))
> +		perf_event_release_kernel(priv->wr_event);
> +	priv->rd_event = NULL;
> +	priv->wr_event = NULL;
> +
> +	return 0;
> +}
> +
> +static int imx8m_ddrc_perf_enable(struct imx8m_ddrc *priv)

Actually, this function have to call the just function for enabling
the bandwidth monitoring instead of writing the detailed something.
It looks like that you move the part of the different device driver into here.

> +{
> +	int ret;
> +
> +	priv->rd_event_attr.size = sizeof(priv->rd_event_attr);
> +	priv->rd_event_attr.type = priv->pmu->type;
> +	priv->rd_event_attr.config = 0x2a;
> +
> +	priv->rd_event = perf_event_create_kernel_counter(
> +			&priv->rd_event_attr, 0, NULL, NULL, NULL);
> +	if (IS_ERR(priv->rd_event)) {
> +		ret = PTR_ERR(priv->rd_event);
> +		goto err;
> +	}
> +
> +	priv->wr_event_attr.size = sizeof(priv->wr_event_attr);
> +	priv->wr_event_attr.type = priv->pmu->type;
> +	priv->wr_event_attr.config = 0x2b;
> +
> +	priv->wr_event = perf_event_create_kernel_counter(
> +			&priv->wr_event_attr, 0, NULL, NULL, NULL);
> +	if (IS_ERR(priv->wr_event)) {
> +		ret = PTR_ERR(priv->wr_event);
> +		goto err;
> +	}
> +
> +	return 0;
> +
> +err:
> +	imx8m_ddrc_perf_disable(priv);
> +	return ret;
> +}
> +
> +static int imx8m_ddrc_init_events(struct device *dev,
> +				  struct device_node *events_node)

ditto.

> +{
> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
> +	struct device_driver *driver;
> +
> +	/*
> +	 * We need pmu->type for perf_event_attr but there is no API for
> +	 * mapping device_node to pmu. Fetch private data for imx-ddr-pmu and
> +	 * cast that to a struct pmu instead.
> +	 */
> +	priv->pmu_pdev = of_find_device_by_node(events_node);
> +	if (!priv->pmu_pdev)
> +		return -EPROBE_DEFER;
> +	driver = priv->pmu_pdev->dev.driver;
> +	if (!driver)
> +		return -EPROBE_DEFER;
> +	if (strcmp(driver->name, "imx-ddr-pmu")) {
> +		dev_warn(dev, "devfreq-events node %pOF has unexpected driver %s\n",
> +				events_node, driver->name);
> +		return -ENODEV;
> +	}
> +
> +	priv->pmu = platform_get_drvdata(priv->pmu_pdev);

It seems that you access the different device driver without
any standard interface from some linux kernel subsystem.

For the communication or control between different device drivers,
we have to use the standard interface instead of direct access or call.
I think that it make it too tightly coupled driver between them.

So, I developed the devfreq-event subsystem for this reason
in order to remove the non-standard direct access to other device driver.

Unfortunately, I can't agree this approach. I don't prefer to use
the direct access of other device driver(imx-ddr-pmu). You need to
use standard interface provided from subsystem. or You need to make
the new device driver with devfreq-event subsystem.



> +	if (!priv->pmu) {
> +		dev_err(dev, "devfreq-events device missing private data\n");
> +		return -EINVAL;
> +	}
> +
> +	dev_dbg(dev, "events from pmu %s\n", priv->pmu->name);
> +
> +	return imx8m_ddrc_perf_enable(priv);
> +}
> +
>  static int imx8m_ddrc_init_freq_info(struct device *dev)
>  {
>  	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
>  	struct arm_smccc_res res;
>  	int index;
> @@ -328,17 +464,23 @@ static int imx8m_ddrc_check_opps(struct device *dev)
>  	return 0;
>  }
>  
>  static void imx8m_ddrc_exit(struct device *dev)
>  {
> +	struct imx8m_ddrc *priv = dev_get_drvdata(dev);
> +
> +	imx8m_ddrc_perf_disable(priv);
> +	platform_device_put(priv->pmu_pdev);
> +
>  	dev_pm_opp_of_remove_table(dev);
>  }
>  
>  static int imx8m_ddrc_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct imx8m_ddrc *priv;
> +	struct device_node *events_node;
>  	const char *gov = DEVFREQ_GOV_USERSPACE;
>  	int ret;
>  
>  	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
> @@ -350,10 +492,19 @@ static int imx8m_ddrc_probe(struct platform_device *pdev)
>  	if (ret) {
>  		dev_err(dev, "failed to init firmware freq info: %d\n", ret);
>  		return ret;
>  	}
>  
> +	events_node = of_parse_phandle(dev->of_node, "devfreq-events", 0);
> +	if (events_node) {
> +		ret = imx8m_ddrc_init_events(dev, events_node);
> +		of_node_put(events_node);
> +		if (ret)
> +			goto err;
> +		gov = DEVFREQ_GOV_SIMPLE_ONDEMAND;
> +	}
> +
>  	priv->dram_core = devm_clk_get(dev, "core");
>  	priv->dram_pll = devm_clk_get(dev, "pll");
>  	priv->dram_alt = devm_clk_get(dev, "alt");
>  	priv->dram_apb = devm_clk_get(dev, "apb");
>  	if (IS_ERR(priv->dram_core) ||
> @@ -390,10 +541,12 @@ static int imx8m_ddrc_probe(struct platform_device *pdev)
>  	}
>  
>  	return 0;
>  
>  err:
> +	imx8m_ddrc_perf_disable(priv);
> +	platform_device_put(priv->pmu_pdev);
>  	dev_pm_opp_of_remove_table(dev);
>  	return ret;
>  }
>  
>  static const struct of_device_id imx8m_ddrc_of_match[] = {
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
