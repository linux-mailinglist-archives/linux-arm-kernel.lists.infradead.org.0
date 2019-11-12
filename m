Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90FAF947E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:37:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0v6NZSJBYRVuSqXLDZZ+vXiiotPX9LMHmzIyyDSfm8=; b=CjCuPs+hsFd7eE
	K4x4naBMke3DIsfNQCZD4ysvC2CpHArfi4eprj4mBKZX0t+OOzlJmfzz87tVCH9OZvwsnGFGYPs/Y
	qyblxE29JaX+mGygDcEaFlF6Ph8KT9/qI7hwH8+1gdGNB5OkKD2wCb7ApwSfMIjfLa5O/KbejPg+D
	03B/EIYr6TIxaPyEAJgAKcJn5tl+qPlfjtasCaOXaUUdbTAWC2ocnOYgG/bq1JO5uS1QUsJOLFWV2
	QRNWbmE5InbBdnLqtoxtwZYCjMeBZJEU2M3UVwL+vityTjj2Q1+VzWywrqfqZLkWTudLxPTTeH9kS
	vuswnH92+YA48BTV/iqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYEj-0004Nu-9J; Tue, 12 Nov 2019 15:37:45 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYEZ-0004Mv-71; Tue, 12 Nov 2019 15:37:37 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xACFRtdl018129; Tue, 12 Nov 2019 16:37:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=kaFjGOKCQM/FJHZr1FNHSIjQAeAuSTc0Kd4hNmaNfVo=;
 b=n8SC89Aj8wVgWFJsfYhHOiepQeSYjmLEK89tFRAgoBYBq2LXLSMu+dphIY9qkNyO3HwR
 TEbbeGtEfU+/qBQYbpi4VxFId5zQc8aVKiOR4GFAmLvLEK0yg39DISmoiTiukgsZkXbQ
 XE+nQyzUmTmm2h8E8D6qK+CDxisKR623e8Ilh13z+WO6THp2CoBj5j6dom5jkynW/RDh
 440JJGOAEVN+GFSvyQZ/4cy4zPYZgVG2vnq3qlwwH2dkRXzpbJfoUSWSsUN7sbOO00GC
 axxB9X8uP7ltkSsthF7eev0aMrHSn8W+DohV4ziL87Co4yEqpMnGSLm0OPTCS78Rrnr8 JQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w7psf2yec-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 12 Nov 2019 16:37:20 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F1EDF10003A;
 Tue, 12 Nov 2019 16:37:17 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B65FD2FF5E8;
 Tue, 12 Nov 2019 16:37:17 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 12 Nov
 2019 16:37:17 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Tue, 12 Nov 2019 16:37:17 +0100
From: Philippe CORNU <philippe.cornu@st.com>
To: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "a.hajda@samsung.com" <a.hajda@samsung.com>
Subject: Re: [PATCH v2 1/5] drm/bridge/synopsys: dsi: move phy_ops callbacks
 around panel enablement
Thread-Topic: [PATCH v2 1/5] drm/bridge/synopsys: dsi: move phy_ops callbacks
 around panel enablement
Thread-Index: AQHVlcfsJMoaERwdz0+0Ar27W0nWUqeHocsA
Date: Tue, 12 Nov 2019 15:37:17 +0000
Message-ID: <49f6386b-30c8-a181-5785-2ecdf5f95d2a@st.com>
References: <20191108000253.8560-1-heiko.stuebner@theobroma-systems.com>
 <20191108000253.8560-2-heiko.stuebner@theobroma-systems.com>
In-Reply-To: <20191108000253.8560-2-heiko.stuebner@theobroma-systems.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <9B4E026D2A0B2A4BAC8B6BBE5F14BEA6@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-12_05:2019-11-11,2019-11-12 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_073735_726057_B9D3AED5 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jernej.skrabec@siol.net" <jernej.skrabec@siol.net>,
 "heiko@sntech.de" <heiko@sntech.de>, "jonas@kwiboo.se" <jonas@kwiboo.se>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "hjc@rock-chips.com" <hjc@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "christoph.muellner@theobroma-systems.com"
 <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heiko,

On 11/8/19 1:02 AM, Heiko Stuebner wrote:
> If implementation-specific phy_ops need to be defined they probably
> should be enabled before trying to talk to the panel and disabled only
> after the panel was disabled.
> 
> Right now they are enabled last and disabled first, so might make it
> impossible to talk to some panels - example for this being the px30
> with an external Innosilicon dphy that needs the phy to be enabled
> to transfer commands to the panel.
> 
> So move the calls appropriately.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 13 ++++++-------
>   1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index 675442bfc1bd..49f5600a1dea 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -797,9 +797,6 @@ static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
>   	struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
>   	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;
>   
> -	if (phy_ops->power_off)
> -		phy_ops->power_off(dsi->plat_data->priv_data);
> -
>   	/*
>   	 * Switch to command mode before panel-bridge post_disable &
>   	 * panel unprepare.
> @@ -816,6 +813,9 @@ static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
>   	 */
>   	dsi->panel_bridge->funcs->post_disable(dsi->panel_bridge);
>   
> +	if (phy_ops->power_off)
> +		phy_ops->power_off(dsi->plat_data->priv_data);
> +
>   	if (dsi->slave) {
>   		dw_mipi_dsi_disable(dsi->slave);
>   		clk_disable_unprepare(dsi->slave->pclk);
> @@ -882,6 +882,9 @@ static void dw_mipi_dsi_mode_set(struct dw_mipi_dsi *dsi,
>   
>   	/* Switch to cmd mode for panel-bridge pre_enable & panel prepare */
>   	dw_mipi_dsi_set_mode(dsi, 0);
> +
> +	if (phy_ops->power_on)
> +		phy_ops->power_on(dsi->plat_data->priv_data);
>   }
>   
>   static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
> @@ -898,15 +901,11 @@ static void dw_mipi_dsi_bridge_mode_set(struct drm_bridge *bridge,
>   static void dw_mipi_dsi_bridge_enable(struct drm_bridge *bridge)
>   {
>   	struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);
> -	const struct dw_mipi_dsi_phy_ops *phy_ops = dsi->plat_data->phy_ops;
>   
>   	/* Switch to video mode for panel-bridge enable & panel enable */
>   	dw_mipi_dsi_set_mode(dsi, MIPI_DSI_MODE_VIDEO);
>   	if (dsi->slave)
>   		dw_mipi_dsi_set_mode(dsi->slave, MIPI_DSI_MODE_VIDEO);
> -
> -	if (phy_ops->power_on)
> -		phy_ops->power_on(dsi->plat_data->priv_data);
>   }
>   
>   static enum drm_mode_status
> 

Tested-by: Yannick Fertre <yannick.fertre@st.com>
Reviewed-by: Philippe Cornu <philippe.cornu@st.com>

Many thanks,
Philippe :-)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
