Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B23B14652C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:54:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRID8qMED99xlwhstLd4CfB6fhE2XTfigXwBUN0SgGY=; b=B21tgmyF7nuS/5
	hQm9PtiX09vcHv8lfMAASQilslvxyL+saRsCMGgvTiMWxN/IkOqukIsw0cDKyIhvCZ+W5JZqDGONu
	KwGMoWXqhVWO4uf1J8vaWxvSw4uHFL4yrYOb/WotIztSy2OeZ5G6nwshWiscKW9skvvSWUbVgCGs/
	nQPKSdg6vujW7btwsG0Myy7vXXD+i2pmtcB9d3XzXcgTPtW40UhUz4i0SkOopL5vkzpyRMj9K3AeT
	4Nbq7nOcfllCw/bWBWIKvIDbmf4MSO2EDOktABXUwe/muNODIRba/ETlXuu+Dvr1U1hqDjhr6BlMh
	aoOg0ez2pS1eaazPxXJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZCI-0002jH-Vs; Thu, 23 Jan 2020 09:54:47 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZC8-0002io-Le
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 09:54:38 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00N9qYtZ031103; Thu, 23 Jan 2020 10:54:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=BECIotAqTZ4curw6tCZp7XoV78IzRZm8xDxenBuoeYg=;
 b=v5co6l0ZT0ja4V444Q2EDiWN48TF9JtopDiyHfdxtgtrK6wKjZXYZWW/tvL8DC/7528h
 ndu/iObcqI+9foqqxMixF8AQG+qqi5GyMICYMGWfmivAldkqC/RJVvRxQ0CvIOy26Cgt
 qjzQO07ievY49x92P3GjLXgcIGewPdkp+cbB5lmymzLasxuZRMIEO3+AgrsZNUfIhP2Y
 z167R2XX6xpRw3y0HAFBv1cV8bGRCVjborvMAF6HWiEa5QW3itXx7E/P5HUgLKQF3Cgd
 DUGEhBKXb/fayv76FNlFbV9aCy6IZrSybiZZL8rtsFvr1UUlR9kyygeUlRFIUs2LMJ9s kA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrp2hev9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Jan 2020 10:54:32 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E11CD10003D;
 Thu, 23 Jan 2020 10:54:30 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D4C42220303;
 Thu, 23 Jan 2020 10:54:30 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 23 Jan
 2020 10:54:30 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Thu, 23 Jan 2020 10:54:30 +0100
From: Philippe CORNU <philippe.cornu@st.com>
To: Yannick FERTRE <yannick.fertre@st.com>, Benjamin GAIGNARD
 <benjamin.gaignard@st.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 TORGUE" <alexandre.torgue@st.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] drm/stm: dsi: stm mipi dsi doesn't print error on probe
 deferral
Thread-Topic: [PATCH] drm/stm: dsi: stm mipi dsi doesn't print error on probe
 deferral
Thread-Index: AQHV0ETplOrB/RayDE+q4WmBGigVhKf39OeA
Date: Thu, 23 Jan 2020 09:54:30 +0000
Message-ID: <1fd9adf5-873b-2b9d-fe22-278f2ea64746@st.com>
References: <1579602245-7577-1-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1579602245-7577-1-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <8B3A3BD23C9EC140904C34361AB91F6F@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-23_01:2020-01-23,
 2020-01-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_015437_009224_CEB3DE98 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dears Yannick & Etienne,
Thank you for your patch,

Reviewed-by: Philippe Cornu <philippe.cornu@st.com>

Philippe :-)

On 1/21/20 11:24 AM, Yannick Fertre wrote:
> From: Etienne Carriere <etienne.carriere@st.com>
> 
> Change DSI driver to not print an error trace when probe
> is deferred for a clock resource.
> 
> Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> ---
>   drivers/gpu/drm/stm/dw_mipi_dsi-stm.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> index 4b16563..2e1f266 100644
> --- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> +++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> @@ -377,7 +377,9 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
>   	dsi->pllref_clk = devm_clk_get(dev, "ref");
>   	if (IS_ERR(dsi->pllref_clk)) {
>   		ret = PTR_ERR(dsi->pllref_clk);
> -		DRM_ERROR("Unable to get pll reference clock: %d\n", ret);
> +		if (ret != -EPROBE_DEFER)
> +			DRM_ERROR("Unable to get pll reference clock: %d\n",
> +				  ret);
>   		goto err_clk_get;
>   	}
>   
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
