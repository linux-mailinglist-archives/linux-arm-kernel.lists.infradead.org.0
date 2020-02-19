Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDBD16415F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkQUUD36Pq8/EJRqSqjTH1bcRuUPtFf51k0EGUdGDws=; b=GD3EXx+dvUZxAt
	rW5t2hnZXOTqzLd1O6C7d61+kxbln14sB2ExLxrpUE/OWhVLgnOf9i5FNpL9s7JSFUztjtvousiCE
	voa+BrFMQjOWTA4rb0Y3srPB7Cm9jizTb1owejyWMlWzDQ9ObVZdsCe7Sk8JKQsVymeizysy9v8Hf
	3k9Ps/zvnSYwKSghPV+dj7E5+9HtNBaKYkzyd+HrWcnLNjeklZU4+7jleW3cXhEXw9fy3r9ii1BDO
	r6nsbJmRCMHpydVVpF//IkxIuvivvjYTodOVWeP6bDtGnha1b0YSbiLZh739MFFjOv55/Ve7fcE/p
	6JWaAJuofl++Gtqs6ieA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MT3-00044v-94; Wed, 19 Feb 2020 10:20:33 +0000
Received: from mail-eopbgr140058.outbound.protection.outlook.com
 ([40.107.14.58] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4MSr-000446-RR
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:20:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dj23PwS4B23XdnVblyp92xrEh74AKxHo20SJUc4nbDXBEF1Vk3KSggyMnRKLvYVhckhi9lInNcD/QV91YIZvPsVg+ZLERM01naAe9V92uhFXmX4DxGTCjbM1jGUbPl3Yo+xV+psaHwfSt6b5oV2AoNxPnR0OLKZLHGZJKfSBO2JK3V2B77b6eHbdyozr5pQvMyIqVgG/brPQEWtaC0dzarEGd5nUj69/Luk8lRi57oNe/wsLgAw4I4tVvN2uAycFp5Qjm9ObAUpKaTLlR0Y1575yIVsDvgXqfhu6fvi56/J2e79lB2EV0SRzd0jzcUeOgidPsT2MzxBrpWIeXiWV4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P3dB2i0Ig86H8iZdEGCP5pr7VoOEGZmTbWhiO8QzFXQ=;
 b=ZPN7BbweQDPwhEivDg0if/wSGL13tyjTR3Hv1JoJD9Tz5Y3i7XLdrbrblKTF2pYWxF1RurdbF9qlDPMgIwHZIzbpuibmsKCk8LuTUHJx5sjBOPVBwm8jCoKi7cmpP9D5lNkFCMgvOXxKD55arz4c3e3rH34Dk7evV6fqtLWOUX5crcMq6516vIgMePEKVmMLLfl/9vIxlVoGUMDff+uG5UV0gMUw29EbGSH1gVuIuaJaFRZW+7c1hz/36378eGjoWWidehMwCOY9L8VRKrcJjJt030eJ4AQY7sYdQybYF4HW6rXElcOSv3DCsRNUrnPNQcztsItcYEXS6gC5z2tYvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P3dB2i0Ig86H8iZdEGCP5pr7VoOEGZmTbWhiO8QzFXQ=;
 b=V4l8bC6n0if8+dGoi/mA7KTvLNcdjubRbMVsifymDMJ95lxbCi+AX3JTcmPleruf+Wdn3289WyKGdf+sea2i9MMuh/ononVqPX5JVrfx9gaQN+NF/AzNO7FyKJy+PunIvHVjsLKQsiZYRvf1Be7Swjzy8vi6kjUFEhDa4pZ44DY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6884.eurprd04.prod.outlook.com (52.132.213.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18; Wed, 19 Feb 2020 10:20:18 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 10:20:18 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH V3 1/4] clk: imx: composite-8m: add
 imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V3 1/4] clk: imx: composite-8m: add
 imx8m_clk_hw_composite_core
Thread-Index: AQHV5wtPHJjqDVyDiUGylTO3QWs3rKgiTgRQ
Date: Wed, 19 Feb 2020 10:20:17 +0000
Message-ID: <AM0PR04MB4481BEE793A6FEE5588ACEAC88100@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582106022-20926-1-git-send-email-peng.fan@nxp.com>
 <1582106022-20926-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1582106022-20926-2-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a9f3b8e8-9f5b-44d8-4507-08d7b5255172
x-ms-traffictypediagnostic: AM0PR04MB6884:|AM0PR04MB6884:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB68847C647FD1DFE3451397BF88100@AM0PR04MB6884.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(376002)(346002)(396003)(199004)(189003)(64756008)(66446008)(52536014)(5660300002)(186003)(26005)(2906002)(55016002)(9686003)(76116006)(66946007)(6506007)(4326008)(66476007)(66556008)(7696005)(316002)(6636002)(8676002)(71200400001)(8936002)(81156014)(81166006)(86362001)(33656002)(44832011)(110136005)(54906003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6884;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oaMilSviC/ViaD9VSHsTFYSqNhK9URGOSMNfByfHVULGrMEAZ4c7Mrz0X3nkXH2YO2Vq9ihf9pwqVrN1Ja2jpDUO50uBUk/gRuklXqwFFSR0gSETvPs/mCqraD0OaHP7KBrPg2giexQbpx2DJpGUHiMfozZvqTHwUtZ6L5m/lqkGxcOBvy/gy1OjUymds+SsbWCrwIkK6bDuxw3U37SdPBaDojpzwaf8H+y4ScplVzR830f2qAeaampiMVNvMMPZi7XkS2OGyC7EtVclZyUTh8P0gXSt64ym6r+LuhDS6j5SEyqzp57rT97UP7tnH0xopTXiOwXdwocHx/EtgLaspTRCxn5i3lfLCy3xtkD3ONjtalrNAH9jM2/MJ0ZA9gMWutoq4iFyZ35v7y7sEbMBxZ5hdamBubxxDH35ReMGQJ0ExCqP2pHNZoM1n3ypZPt1
x-ms-exchange-antispam-messagedata: KOohFzGYxJw6zSElvHqH0r1S8igqtTG4q8vl0Iay8t8LvyEOp+XKMs+YreRfkzHz8j77GdP/WAy72yfsrx9iML7MrKilyxmQ2D++hFeHXvFcaHWTutbYlaaPMlG91AxTJujWrOAMBMMjcU22qDPw0w==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9f3b8e8-9f5b-44d8-4507-08d7b5255172
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 10:20:18.0105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /P1I/uUC6bWkCSZ4XEpZthIE3608A+J0Y5yBa9O91wCavvHqr2eJBeDf4/sgmPxhrFzPc36Ix4a8sFIZ/AWmbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_022021_908032_F0C8D120 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH V3 1/4] clk: imx: composite-8m: add
> imx8m_clk_hw_composite_core

Sorry, some patches are wrongly sent out, please ignore this thread.
I'll use PATCH RESEND to resend and drop unneed patches.

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> There are several clock slices, current composite code only support bus/ip
> clock slices, it could not support core slice.
> 
> So introduce a new API imx8m_clk_hw_composite_core to support core slice.
> To core slice, post divider with 3 bits width and no pre divider. Other fields are
> same as bus/ip slices.
> 
> Add a flag IMX_COMPOSITE_CORE for the usecase.
> 
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/clk/imx/clk-composite-8m.c | 18 ++++++++++++++----
>  drivers/clk/imx/clk.h              | 13 +++++++++++--
>  2 files changed, 25 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-composite-8m.c
> b/drivers/clk/imx/clk-composite-8m.c
> index e0f25983e80f..4174506e8bdd 100644
> --- a/drivers/clk/imx/clk-composite-8m.c
> +++ b/drivers/clk/imx/clk-composite-8m.c
> @@ -15,6 +15,7 @@
>  #define PCG_PREDIV_MAX		8
> 
>  #define PCG_DIV_SHIFT		0
> +#define PCG_CORE_DIV_WIDTH	3
>  #define PCG_DIV_WIDTH		6
>  #define PCG_DIV_MAX		64
> 
> @@ -126,6 +127,7 @@ static const struct clk_ops
> imx8m_clk_composite_divider_ops = {  struct clk_hw
> *imx8m_clk_hw_composite_flags(const char *name,
>  					const char * const *parent_names,
>  					int num_parents, void __iomem *reg,
> +					u32 composite_flags,
>  					unsigned long flags)
>  {
>  	struct clk_hw *hw = ERR_PTR(-ENOMEM), *mux_hw; @@ -133,6 +135,7
> @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>  	struct clk_divider *div = NULL;
>  	struct clk_gate *gate = NULL;
>  	struct clk_mux *mux = NULL;
> +	const struct clk_ops *divider_ops;
> 
>  	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
>  	if (!mux)
> @@ -149,8 +152,16 @@ struct clk_hw
> *imx8m_clk_hw_composite_flags(const char *name,
> 
>  	div_hw = &div->hw;
>  	div->reg = reg;
> -	div->shift = PCG_PREDIV_SHIFT;
> -	div->width = PCG_PREDIV_WIDTH;
> +	if (composite_flags & IMX_COMPOSITE_CORE) {
> +		div->shift = PCG_DIV_SHIFT;
> +		div->width = PCG_CORE_DIV_WIDTH;
> +		divider_ops = &clk_divider_ops;
> +	} else {
> +		div->shift = PCG_PREDIV_SHIFT;
> +		div->width = PCG_PREDIV_WIDTH;
> +		divider_ops = &imx8m_clk_composite_divider_ops;
> +	}
> +
>  	div->lock = &imx_ccm_lock;
>  	div->flags = CLK_DIVIDER_ROUND_CLOSEST;
> 
> @@ -164,8 +175,7 @@ struct clk_hw
> *imx8m_clk_hw_composite_flags(const char *name,
> 
>  	hw = clk_hw_register_composite(NULL, name, parent_names,
> num_parents,
>  			mux_hw, &clk_mux_ops, div_hw,
> -			&imx8m_clk_composite_divider_ops,
> -			gate_hw, &clk_gate_ops, flags);
> +			divider_ops, gate_hw, &clk_gate_ops, flags);
>  	if (IS_ERR(hw))
>  		goto fail;
> 
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> b05213b91dcf..f074dd8ec42e 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -477,20 +477,29 @@ struct clk_hw *imx_clk_hw_cpu(const char *name,
> const char *parent_name,
>  		struct clk *div, struct clk *mux, struct clk *pll,
>  		struct clk *step);
> 
> +#define IMX_COMPOSITE_CORE	BIT(0)
> +
>  struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>  					    const char * const *parent_names,
>  					    int num_parents,
>  					    void __iomem *reg,
> +					    u32 composite_flags,
>  					    unsigned long flags);
> 
> +#define imx8m_clk_hw_composite_core(name, parent_names, reg)	\
> +	imx8m_clk_hw_composite_flags(name, parent_names, \
> +			ARRAY_SIZE(parent_names), reg, \
> +			IMX_COMPOSITE_CORE, \
> +			CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
> +
>  #define imx8m_clk_composite_flags(name, parent_names, num_parents,
> reg, \
>  				  flags) \
>  	to_clk(imx8m_clk_hw_composite_flags(name, parent_names, \
> -				num_parents, reg, flags))
> +				num_parents, reg, 0, flags))
> 
>  #define __imx8m_clk_hw_composite(name, parent_names, reg, flags) \
>  	imx8m_clk_hw_composite_flags(name, parent_names, \
> -		ARRAY_SIZE(parent_names), reg, \
> +		ARRAY_SIZE(parent_names), reg, 0, \
>  		flags | CLK_SET_RATE_NO_REPARENT |
> CLK_OPS_PARENT_ENABLE)
> 
>  #define __imx8m_clk_composite(name, parent_names, reg, flags) \
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
