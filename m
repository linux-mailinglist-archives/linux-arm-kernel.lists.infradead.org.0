Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36529B665E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1fDgndys/kdU0/Jsxfn8zZA09lRHQcg9G5nYgk+4xA=; b=LZ0BYehoBAYZmb
	5mos3pdwoz6uwVGhQM1yn+lKLHTx8jQlbdb6fBW/b6y9wxtZmuici8CmmuRWrrP//ytvscOdc85wo
	l0D0whjTBhS/YVTpH6EsoUjbjpUSG1u/pvlb1gEGm2pV47PBBMhjjMhsugkbD+Ql9A72oU18mnCm1
	K5Ha8G7iuxs4fCUxuczvREjec4YtFY+LrNaCaKmIshfb7yyP6MUAHdOVtMQ4Isa6eOhPI1dcE14gI
	htWDpwIRmAr+RDXhl+Bcu2iFORyYiHOWwkVqgGhf5DBKsLp3X5vskcOYlbjHpG/B2Af9HdoJ+ErD1
	ieNkyvbOu+1/LFzs+PhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbEG-0001Q3-5m; Wed, 18 Sep 2019 14:46:48 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25]
 helo=mx0b-001ae601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbDV-0001OH-2R
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:46:04 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
 by mx0a-001ae601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8IEhrtO014963; Wed, 18 Sep 2019 09:45:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=/PkaBLjqrZnFFsfMPPGd9OsWu3s/ywG4YE1D4v04UF0=;
 b=KNsjjCzjN0eYGWBtNt8IsihwEEOw+70uSyugZ0kv4joMGKCtiFwEvgTMkhLxd/D7Z6Gt
 IKyQS2IiQJ/ik5Cmr58H+9KB2pABeU5wxjBfk9D3Z72k0MuEj3GbIXnOaRodFAbOlAW4
 rTNNLEBrIFSDUmufaua6aKqlHwAtb/ZZTKG1bkQEWrksB+gqOidoWY2aTmwcnXjw4Z16
 SpmXlDMRH4xYQktdSCWQ+QwSGqF5zJvlMvPCg6KL5mYh9u0u2FcnXTxHUOSl9PkOsSHK
 7h+EKzC22PJ+1sHzE64SMmgtsNFSQOd8Nv5XqtV9o7ancveMqRewd0rrIwGSc4mYKWMf /A== 
Authentication-Results: ppops.net;
 spf=fail smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from ediex01.ad.cirrus.com ([87.246.76.36])
 by mx0a-001ae601.pphosted.com with ESMTP id 2v382qs8fs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 18 Sep 2019 09:45:55 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 18 Sep
 2019 15:45:53 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via
 Frontend Transport; Wed, 18 Sep 2019 15:45:53 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
 by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 9044B2C3;
 Wed, 18 Sep 2019 14:45:53 +0000 (UTC)
Date: Wed, 18 Sep 2019 14:45:53 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v1 7/9] ASoC: samsung: arndale: Add support for WM1811
 CODEC
Message-ID: <20190918144553.GJ10204@ediswmail.ad.cirrus.com>
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104705eucas1p1c01dc05bff199188677915e2bb8f7472@eucas1p1.samsung.com>
 <20190918104634.15216-8-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918104634.15216-8-s.nawrocki@samsung.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-SPF-Result: fail
X-Proofpoint-SPF-Record: v=spf1 include:spf-001ae601.pphosted.com
 include:spf.protection.outlook.com -all
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 bulkscore=0 adultscore=0 spamscore=0 mlxlogscore=999 impostorscore=0
 phishscore=0 mlxscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1909180146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_074602_180385_0C509EB7 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.149.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sbkim73@samsung.com, patches@opensource.cirrus.com, broonie@kernel.org,
 lgirdwood@gmail.com, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 12:46:32PM +0200, Sylwester Nawrocki wrote:
> The Arndale boards come with different types of the audio daughter
> board.  In order to support the WM1811 one we add new definition of
> an ASoC card which will be registered when the driver matches on
> "samsung,arndale-wm1811" compatible.  There is no runtime detection of
> the audio daughter board type at the moment, compatible string of the
> audio card needs to be adjusted in DT, e.g. by the bootloader,
> depending on actual audio board (CODEC) used.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> -static const struct of_device_id samsung_arndale_rt5631_of_match[] __maybe_unused = {
> -	{ .compatible = "samsung,arndale-rt5631", },
> -	{ .compatible = "samsung,arndale-alc5631", },
> +static const struct of_device_id arndale_audio_of_match[] __maybe_unused = {

If your removing the of_match_ptr below I think the
__maybe_unused should be removed as well.

Thanks,
Charles

> +	{ .compatible = "samsung,arndale-rt5631",  .data = &arndale_rt5631 },
> +	{ .compatible = "samsung,arndale-alc5631", .data = &arndale_rt5631 },
> +	{ .compatible = "samsung,arndale-wm1811",  .data = &arndale_wm1811 },
>  	{},
>  };
> -MODULE_DEVICE_TABLE(of, samsung_arndale_rt5631_of_match);
> +MODULE_DEVICE_TABLE(of, arndale_of_match);
>  
>  static struct platform_driver arndale_audio_driver = {
>  	.driver = {
> -		.name   = "arndale-audio",
> +		.name = "arndale-audio",
>  		.pm = &snd_soc_pm_ops,
> -		.of_match_table = of_match_ptr(samsung_arndale_rt5631_of_match),
> +		.of_match_table = arndale_audio_of_match,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
