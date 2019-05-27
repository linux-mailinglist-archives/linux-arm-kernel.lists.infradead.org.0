Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3462B525
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBGcyXU/7bwDncLzoPdikPmAWBQl/LHFQHd9xhj73hE=; b=nNlTjpb6TqJ5gL
	nntJ1vDO81AotJDzGbmovLUvLYkcJy/hRM4XJSN/51wVsrQiaN1i5IMWp7q+jCFJjJ1d67/xppKt7
	X6Ee3nQbDa3JFXldpNYnddt6zN/rGkM1vS1/DHWm4Q2fJ/uyVkqdmBmUqc8Zmf9WL7vV321a0rNE6
	ifkfvmvLFijliLITg9xxgYmNBwXYBxNe8yZwIIzSWiNuVl4SxVOJJAk3o+Zg50HDAZAFjuh8Uh8lL
	/TYx2xbT4JI/TcOPVmOtUDJX171G5TP+l+K50uulbLPYYpoYW+/RjhDuSvc4/LXLDA7n9Olzi9V4A
	3k+kvK1tJR+0fP+fWivQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEjT-0006hP-E6; Mon, 27 May 2019 12:28:03 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEjJ-0006bJ-2i
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:27:56 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4RCKsX7019436; Mon, 27 May 2019 14:27:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=hK01vThxixP1NwoQSa3cr+03QYzdY/PdiNnc3e3F6Mc=;
 b=da8q5f/hZrKd7eaf/m6ng7ojS7/YMNLZmJZO6NaFRVme9aLxDV6aIXRharB5WHRNMOye
 94r8RGFdV63Ant/ZkQt17zSvUn+1vdPFelhRehynqvK711DieG+8PFBsR77eMLrSXCRY
 vZ0kDVmCqS1jfoGC3ctuiMmwH9izg3tlgnQP1JvotGdx6OuUw9lY6Z1MH8KzvH4iKe5n
 PSO1pY0RQ2qLY5bS4E3uSv4YDIMR2PDl4f9sT3pmqCAK8VsN9pQT+X7cU9lKVHbIy8Zz
 ZzMEbDCeB1CiO+dMxTYoHsTGDwB891xIfBsuqK0mKbN194WtS/FR9Y2m+GPIYNin4lou 4g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2spu602xsw-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 27 May 2019 14:27:45 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C590F38;
 Mon, 27 May 2019 12:27:44 +0000 (GMT)
Received: from Webmail-eu.st.com (gpxdag3node5.st.com [10.75.127.72])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5108A2A63;
 Mon, 27 May 2019 12:27:44 +0000 (GMT)
Received: from GPXDAG6NODE6.st.com (10.75.127.82) by GPXDAG3NODE5.st.com
 (10.75.127.72) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 27 May
 2019 14:27:43 +0200
Received: from GPXDAG6NODE6.st.com ([fe80::57f:5f53:243f:cb11]) by
 GPXDAG6NODE6.st.com ([fe80::57f:5f53:243f:cb11%19]) with mapi id
 15.00.1473.003; Mon, 27 May 2019 14:27:44 +0200
From: Philippe CORNU <philippe.cornu@st.com>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>, Yannick FERTRE
 <yannick.fertre@st.com>, "airlied@linux.ie" <airlied@linux.ie>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, Alexandre TORGUE
 <alexandre.torgue@st.com>
Subject: Re: [PATCH] drm/stm: ltdc: restore calls to clk_{enable/disable}
Thread-Topic: [PATCH] drm/stm: ltdc: restore calls to clk_{enable/disable}
Thread-Index: AQHVFIODRdknuk/3QUK12OrUD+2oRaZ+xJoA
Date: Mon, 27 May 2019 12:27:43 +0000
Message-ID: <1e4c4cbf-869e-8b6a-a1d6-cc7dccb2515a@st.com>
References: <20190527115830.15836-1-benjamin.gaignard@st.com>
In-Reply-To: <20190527115830.15836-1-benjamin.gaignard@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <3CE08C584D2B4941A38EAA7DF3901AFF@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-27_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_052753_858672_D36A1005 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin,

Many thanks for this fix (and more generally for pushing STM patches on 
misc :-)

Acked-by: Philippe Cornu <philippe.cornu@st.com>

Philippe :-)

On 5/27/19 1:58 PM, Benjamin Gaignard wrote:
> From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
> 
> Restore calls to clk_{enable/disable} deleted after applying the wrong
> version of the patch
> 
> Fixes: fd6905fca4f0 ("drm/stm: ltdc: remove clk_round_rate comment")
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@linaro.org>
> ---
>   drivers/gpu/drm/stm/ltdc.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/stm/ltdc.c b/drivers/gpu/drm/stm/ltdc.c
> index ae2aaf2a62ee..ac29890edeb6 100644
> --- a/drivers/gpu/drm/stm/ltdc.c
> +++ b/drivers/gpu/drm/stm/ltdc.c
> @@ -507,10 +507,12 @@ static bool ltdc_crtc_mode_fixup(struct drm_crtc *crtc,
>   	struct ltdc_device *ldev = crtc_to_ltdc(crtc);
>   	int rate = mode->clock * 1000;
>   
> +	clk_disable(ldev->pixel_clk);
>   	if (clk_set_rate(ldev->pixel_clk, rate) < 0) {
>   		DRM_ERROR("Cannot set rate (%dHz) for pixel clk\n", rate);
>   		return false;
>   	}
> +	clk_enable(ldev->pixel_clk);
>   
>   	adjusted_mode->clock = clk_get_rate(ldev->pixel_clk) / 1000;
>   
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
