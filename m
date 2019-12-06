Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFD3114F0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 11:29:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxIbnVtroZFLNfFXa73vcRD4HIPhGgV4LVlGpzC87GI=; b=U0NC+vABNhecNl
	jkmGGXHoVYKJyYjBHRqhHBxZnpkoxIccTE0zlpZy+XCt9bNqOCs/URKgoTYG86vkRpgbC7EMHSfq/
	PLBW1W/CUYS4RDkrKmytMgq0DwqIO+NK0st6Q7pKD6KbYwG2asoYTH7aD2CjHLxjipAAwZlWrmhf8
	umkUX4OmtgLlMKaBkAgtNo/62Z1Vp+ZasVmeRdIiUabalaD61jLJOAxFpJLteibMyJ/1VlUTF2G8F
	Oe4oojVJ3OkQPo7OuneQeOq4dWjbnpdZvuNXiIPnfoTOS5oeBwzlJPPbIeR7lhil9SuE/3+jLo5w3
	Nra3tc8hct+PNvzP2Z0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idArX-0003yn-QA; Fri, 06 Dec 2019 10:29:27 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idArK-0003x7-6j; Fri, 06 Dec 2019 10:29:16 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB6AM7u0010137; Fri, 6 Dec 2019 11:29:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=ho/sbuk46SVZEILtxoh1iWZ9PESL2p1iRVEuMafk6NI=;
 b=MCJ6e8Wk7J6ysXSdJgo6QfQY0bCfzfPUq8JNcGrn9a1fyOgjFOwGp3/X7PaunmJIlwdL
 TDM0ecGlMLDP/G8v8V6E9NFqiWSPYZdF5gq62dsUex4EI0wEhtiy0WhkQI3R0DW8tpUz
 KQvfMgjsvzIeiVh/IuzFw757ZrSNjWmQIlsjVxH2UMaDb2+C8xkxu1EynJL4AlMDGYH2
 R8kJyazXc4H4EoXIzT+0AviFcXLyA8NP9yMPVWwSaJlHuDmI3ZJ7nO/k0ZhiWVIV4e5F
 IA2cqhIEhglAQHcYbT1CPgw2TsBRUspmbAv0iScqNkimmgrYxA37gJwHYRIqZIDI8mJ/ gQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wkes3817u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 06 Dec 2019 11:29:05 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 885C110002A;
 Fri,  6 Dec 2019 11:29:03 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 562252AE75F;
 Fri,  6 Dec 2019 11:29:03 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 6 Dec
 2019 11:29:03 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Fri, 6 Dec 2019 11:29:02 +0100
From: Philippe CORNU <philippe.cornu@st.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [Linux-stm32] [PATCH v4 0/4] Genericize DW MIPI DSI bridge and
 add i.MX 6 driver
Thread-Topic: [Linux-stm32] [PATCH v4 0/4] Genericize DW MIPI DSI bridge and
 add i.MX 6 driver
Thread-Index: AQHVrB/6dEkIz1e2jUeb7WXRJ/4vMA==
Date: Fri, 6 Dec 2019 10:29:02 +0000
Message-ID: <a356df00-e321-ab8c-61e9-f179cb1f8e12@st.com>
References: <20191202193359.703709-1-adrian.ratiu@collabora.com>
In-Reply-To: <20191202193359.703709-1-adrian.ratiu@collabora.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <2AFA399042EFAD419166C5E33226D3E5@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-06_02:2019-12-05,2019-12-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_022914_610616_E1536373 
X-CRM114-Status: GOOD (  24.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "kernel@collabora.com" <kernel@collabora.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

And sorry for this late reply.
Your patches look good and we ("stm guys") understand that v1.01 is very 
different to v1.30/31.

We are doing our best to review & test your patches and we will go back 
to you asap.
Many thanks,
Philippe :-)


On 12/2/19 8:33 PM, Adrian Ratiu wrote:
> Having a generic Synopsis DesignWare MIPI-DSI host controller bridge
> driver is a very good idea, however the current implementation has
> hardcoded quite a lot of the register layouts used by the two supported
> SoC vendors, STM and Rockchip, which use IP cores v1.30 and v1.31.
> 
> This makes it hard to support other SoC vendors like the FSL/NXP i.MX 6
> which use older v1.01 cores or future versions because, based on history,
> layout changes should also be expected in new DSI versions / SoCs.
> 
> This patch series converts the bridge and platform drivers to access
> registers via generic regmap APIs and allows each platform driver to
> configure its register layout via struct reg_fields, then adds support
> for the host controller found on i.MX 6.
> 
> I only have i.MX hardware with MIPI-DSI panel and relevant documentation
> available for testing so I'll really appreciate it if someone could test
> the series on Rockchip and STM... eyeballing register fields could only
> get me so far, so sorry in advance for any breakage!
> 
> Many thanks to Boris Brezillon <boris.brezillon@collabora.com> for
> suggesting the regmap solution and to Liu Ying <Ying.Liu@freescale.com>
> for doing the initial i.MX platform driver implementation.
> 
> This series applies on top of latest linux-next tree, next-20191202.
> 
> v3 -> v4:
>    * Added commmit message to dt-binding patch (Neil)
>    * Converted the dt-binding to yaml dt-schema format (Neil)
>    * Small DT node + driver fixes (Rob)
>    * Renamed platform driver to reflect it's only for i.MX v6 (Fabio)
>    * Added small panel example to the host controller DT binding
> 
> v2 -> v3:
>    * Added const declarations to dw-mipi-dsi.c structs (Emil)
>    * Fixed Reviewed-by tags and cc'd some more relevant ML (Emil)
> 
> v1 -> v2:
>    * Moved register definitions & regmap initialization into bridge
>    module. Platform drivers get the regmap via plat_data after calling
>    the bridge probe (Emil).
> 
> Adrian Ratiu (4):
>    drm: bridge: dw_mipi_dsi: access registers via a regmap
>    drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
>    drm: imx: Add i.MX 6 MIPI DSI host driver
>    dt-bindings: display: add i.MX6 MIPI DSI host controller doc
> 
>   .../display/imx/fsl,mipi-dsi-imx6.yaml        | 136 ++++
>   drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 699 +++++++++++++-----
>   drivers/gpu/drm/imx/Kconfig                   |   7 +
>   drivers/gpu/drm/imx/Makefile                  |   1 +
>   drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 378 ++++++++++
>   .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  17 +-
>   drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  34 +-
>   include/drm/bridge/dw_mipi_dsi.h              |   2 +-
>   8 files changed, 1067 insertions(+), 207 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
>   create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
