Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D60A7B6629
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0R2mdDb0mHVzVlEGUvMhSAdSSwYMR7k2a3L0+Pchl0=; b=pighblVcBYq+XH
	hVnEl6eZ2ORcn2LEMQtFzGSeTlCSVwBX9CZAE/XJUT7RdtFMJZj6lPdROgoGcPEHvxVkjSngsH2QP
	FOz2zyVEfQsXGCAYtESK2l4GzQfKfkC6x31Y/oMUTiSV9ueXNrUURPduPheYyTCvj1FJ5jCW/FlwD
	/Uo++tO+Ol40hxj3rXVLuTZdTFeQ808A8HiT7jorxmTDYe+kuzMEZ3DDe/FbmqotSTMEsahD4PFxK
	BY/mYkW23T+jUydfAjXjyTBSJmML98t+fMPasjI9uAfstU6yiRX/k8bLvwtZymU1vKTafgq+ZKld+
	zzhOd3XfuMd/vFLlJOOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAb0F-0003sS-Pf; Wed, 18 Sep 2019 14:32:19 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAb04-0003ro-Cv
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:32:09 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
 by mx0b-001ae601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8IEEBG9005771; Wed, 18 Sep 2019 09:32:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=85mW0bFWiiIVuyJiPKM02zlJFmWQIMDT9ECHIvX0eJQ=;
 b=AaegY7/Y2PorFSTmv1tusBxEPcjnGNa9+O9pQlrOHZyxaS1oObNe3xbsuJ77XJt/FytV
 ai5CyyauW39nVL7SDis0U7KeZSzTKukIKufMtwUoShvJHhUZ499pdnyNTQ9hgdcuNZNm
 du3u6jEfTBhbFrgSnvrOqZyLQsWUoplVxmY+J8DGixg89IL6RhcQuZ5T8NSyTxOMmzaF
 iS2eg/unL2hWZkWN3ugb5aVWRjRWBC+8I99UdPS8P0+6z8y4no2c5/uJ5dxBQlJZFWZy
 YhU8Efld9uy/LdmNvghxltvCz0tRAeEG95akwMHhZqqioH5bHXF0zOI50aMkGMJSNBfE RA== 
Authentication-Results: ppops.net;
 spf=fail smtp.mailfrom=ckeepax@opensource.cirrus.com
Received: from ediex01.ad.cirrus.com ([87.246.76.36])
 by mx0b-001ae601.pphosted.com with ESMTP id 2v37m197ex-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 18 Sep 2019 09:31:59 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 18 Sep
 2019 15:31:57 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.1591.10 via
 Frontend Transport; Wed, 18 Sep 2019 15:31:57 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
 by ediswmail.ad.cirrus.com (Postfix) with ESMTP id DA4CD2C3;
 Wed, 18 Sep 2019 14:31:57 +0000 (UTC)
Date: Wed, 18 Sep 2019 14:31:57 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v1 4/9] ASoC: wm8994: Add support for MCLKn clock gating
Message-ID: <20190918143157.GH10204@ediswmail.ad.cirrus.com>
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104700eucas1p1ef0775632f5c7259fb54cab8efc96c50@eucas1p1.samsung.com>
 <20190918104634.15216-5-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918104634.15216-5-s.nawrocki@samsung.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-SPF-Result: fail
X-Proofpoint-SPF-Record: v=spf1 include:spf-001ae601.pphosted.com
 include:spf.protection.outlook.com -all
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 lowpriorityscore=0
 malwarescore=0 bulkscore=0 phishscore=0 priorityscore=1501 spamscore=0
 adultscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1909180144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_073208_556522_BFBE14FB 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.152.168 listed in list.dnswl.org]
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

On Wed, Sep 18, 2019 at 12:46:29PM +0200, Sylwester Nawrocki wrote:
> As an intermediate step before covering the clocking subsystem
> of the CODEC entirely by the clk API add handling of external CODEC's
> master clocks in DAPM events when the AIFn clocks are sourced directly
> from MCLKn; when FLLn are used we enable/disable respective MCLKn
> before/after FLLn is enabled/disabled.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> @@ -2260,8 +2321,28 @@ static int _wm8994_set_fll(struct snd_soc_component *component, int id, int src,
>  	/* Clear any pending completion from a previous failure */
>  	try_wait_for_completion(&wm8994->fll_locked[id]);
>  
> +	switch (src) {
> +	case WM8994_FLL_SRC_MCLK1:
> +		mclk = control->mclk[0].clk;
> +		break;
> +	case WM8994_FLL_SRC_MCLK2:
> +		mclk = control->mclk[1].clk;
> +		break;
> +	default:
> +		mclk = NULL;
> +	}
> +
>  	/* Enable (with fractional mode if required) */
>  	if (freq_out) {
> +		if (mclk) {
> +			ret = clk_prepare_enable(mclk);
> +			if (ret < 0) {
> +				dev_err(component->dev,
> +					"Failed to enable MCLK for FLL%d\n",
> +					id + 1);
> +				return ret;
> +			}
> +		}
>  		/* Enable VMID if we need it */
>  		if (!was_enabled) {
>  			active_reference(component);
> @@ -2315,6 +2396,8 @@ static int _wm8994_set_fll(struct snd_soc_component *component, int id, int src,
>  
>  			active_dereference(component);
>  		}
> +		if (mclk)
> +			clk_disable_unprepare(mclk);

I don't think this works in the case of changing active FLLs.
The driver looks like it allows changing the FLL configuration
whilst the FLL is already active in which case it you would have
two wm8994_set_fll calls enabling the FLL but only a single one
disabling it. Resulting in the FLL being off but the MCLK being
left enabled.

Thanks,
Charles

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
