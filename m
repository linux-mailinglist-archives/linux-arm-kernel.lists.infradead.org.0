Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7861841F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 08:58:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hta/OsU2wZlLy1VZTAebpbVQO0I4vpUF1Kz5JTmONPE=; b=hpxb70gJpEUiYZ
	/IGl7VXcunl1w9bBZDYtP9Y3taOKi8DL77CmhOpQOYmwxVwOlKbeJiagWrgb2F0lRR4NyanV5sUVH
	EDjIgfmgHzrkLowuuovFPuhOjPnfcvokjEhptqSXt/DRiov/Xrtzg9f/eJw/D9Ya/BnhoXoamQUHQ
	fawz95CK56agOJk9DBDyrzPsOTgHahkyCgJtUzEF4KGZBxx7zxrTGG7Rn/bF0XWC/s0HhacaNGE06
	Qm+F9EFPxbMMUoc2/PTBXgFWugCq0cBCgXiR9O7h5ggf3byTWAFhKKzofoXWtXkqRtng+M2NUYPH5
	hwk3tCCcbnzZ2BkBBxgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCfD9-000390-Qx; Fri, 13 Mar 2020 07:58:27 +0000
Received: from mail-eopbgr10062.outbound.protection.outlook.com ([40.107.1.62]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCfD0-00037e-6d
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 07:58:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WYiyKx0qTyOZfFDMKJkmAeGCbL6MWRKhIY1xmjqMgORx1p/H6bkhJNTfCoy6wnND8wGXN4X5UdHPVFTSKFFUUum6KYqJt8n/9kLbYGZ7a4vBOCOINae2sPyXAF7COd80P0+2zGKkDTzLpnm8GtS2rcSpIzbQZeH8BmW1bNs/xUwqHSJHxGA+SkprpXfts0M7xVQe/GSU5loyugTU2hj+efs7S8E4vHSyQjT/ypgrEnaGL0H9AupYp6UbcYLq3Kwws5A8Le5at8JwufjKp1JH93A+NpElRUByxXJvBHa9DWiGL0kJyNxRBjmXGsRopVou+WRuGNv4RsGejmCWU9ynPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0bfKLPsIoHaf2VUXcYPigbNobdml3pQLe0VzlKaZvMo=;
 b=n1N7c8PlpWrV5t+qaN5DzdJuYmIuJNGXfXDe1wYSAiRutr03BEioX9It2+DojvFL3oCjKX0M6A9sFelB54M/KikJPZ2pk0OPlle8IGCJEj20Zq6bBTHzQLsBIe+rQRDr8htSLR8N5eQ4xTB+ISi4+xfGlmCpzeQIa4sWvcLmEo7VLYiwRcpHt6lJuygjJ+oEe7y26dtF3+lF/hgcdgKLHY+ZyOt6RL3y/5ge5jfkZkuRvDAcOSyMhRrTfDEwIvkY+QNNz2+BvmLbJbJLAPC5KEIvAHz4B7ym7Gk9dDZB3aLmgAlVfafuf85Y/KoWpqb+jfnjkJrgUGlQcDM1Mp4Cow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0bfKLPsIoHaf2VUXcYPigbNobdml3pQLe0VzlKaZvMo=;
 b=YXib8MAz1ck6ixm0fJOJhTtBcX/AFcswml4GAe88X2l5uIsqYFw8JFL9Gn1fJQqRoACIdzDOkNRFgASu4fJYHNr1WgkVjm1GBqBFL+tcJR4W0RUoFWq7deTN/4d1mMU7F2nwEpPgJvgQqPRzdNcWCRNTt8WPZzsS0L6PRrn7AaU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5521.eurprd04.prod.outlook.com (20.178.112.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Fri, 13 Mar 2020 07:58:14 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 07:58:14 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Rob Herring <robh@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam
 <fabio.estevam@nxp.com>, Mike Turquette <mturquette@baylibre.com>, Stephen
 Boyd <sboyd@kernel.org>, Lee Jones <lee.jones@linaro.org>, Anson Huang
 <anson.huang@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai
 <ping.bai@nxp.com>
Subject: RE: [RFC 06/11] clk: imx: Add helpers for passing the device as
 argument
Thread-Topic: [RFC 06/11] clk: imx: Add helpers for passing the device as
 argument
Thread-Index: AQHV8TqqG8jg875rt0+/0iqjNCvp+qhGN6/w
Date: Fri, 13 Mar 2020 07:58:14 +0000
Message-ID: <AM0PR04MB44816071F2A24C60A7DFC73188FA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-7-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1583226206-19758-7-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ec0ac09b-d05d-4747-5133-08d7c7244882
x-ms-traffictypediagnostic: AM0PR04MB5521:|AM0PR04MB5521:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB55211A6CE2F590697103ED5488FA0@AM0PR04MB5521.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(366004)(346002)(396003)(39860400002)(199004)(6506007)(66946007)(6636002)(33656002)(9686003)(76116006)(64756008)(66556008)(52536014)(7696005)(66476007)(81166006)(8936002)(55016002)(81156014)(110136005)(316002)(478600001)(8676002)(44832011)(54906003)(66446008)(5660300002)(71200400001)(4326008)(26005)(7416002)(2906002)(86362001)(186003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5521;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ue4T7VXezXxJ/AjJh/7zE5AmHDVDRFoElRxHQ0VK214XonYyxBqqMtKySmhszLDnqpFeLJwpjv8P7jPs+Mu6gLfWl0+VTwMLXenzteWBPEhNegOScwzf9TfyowEuILtb7mKZc70D3qC07SzrgG1HI4OHEQxo0Oo0YgVCaKKiFh7LZWiBciNPeg8WMdEdmE6ex2Fd6f/k4eZjFE1fNliXBS2Z9ZOl4fQQJYHc9EDygdwP7fdp0UwT+pDslWk0WOxfAXI5GxodGT9ejyy4Facv2gM8Yyo2NQNLdrMCgGjMC+puHr5KMdxUICNwbbr5EfBZRLJNXTIQHrLo2UsoPagmcinjiGBWerhSfh9Pbji8Wf09ttDBxKjro9WalNN7BmIDnLLLDaPVcKl1ncwkPNtS0cXFGuL88GB96IaHpBVScQoX2dQKp969UVaWXYN0O1xRwvlfiB5101LG2jSZ7qVrMr7rZY0w0/ZJOnh7VGZlXVcv0qoWDFJ1QcSfHCvNDNHl
x-ms-exchange-antispam-messagedata: fzTrsAawOE5xF23sYByPm1RZl4kmZpan4Ei5p/2OP2Zcq3xaYfeUehn8tFItmhP7fj8FYQ1bPyKF/8ZkfVdWBZPhetoUJbSF+IGQcSgpoGD6Gr8NeC7cqpfiH62/qNmojv7TedDYL60KLU0eew03ZA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec0ac09b-d05d-4747-5133-08d7c7244882
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 07:58:14.3725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4Y6/ABk4TyzYwPs5N/yvmToGf19oW+obJZIk9kNiahfB4aig97zR22iMnxk5p6N5SRT3ik1mzLvHMN1hz4JulQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5521
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_005818_244843_83265B5F 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [RFC 06/11] clk: imx: Add helpers for passing the device as argument
> 
> All the imx clocks that need to be registered by the audiomix need to pass on
> the device so that the runtime PM support could work properly.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
>  drivers/clk/imx/clk.h | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> cb28f06..42960a9 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -321,6 +321,13 @@ static inline struct clk_hw *imx_clk_hw_gate(const
> char *name, const char *paren
>  				    shift, 0, &imx_ccm_lock);
>  }
> 
> +static inline struct clk_hw *imx_dev_clk_hw_gate(struct device *dev, const
> char *name,
> +						const char *parent, void __iomem *reg, u8 shift)
> {
> +	return clk_hw_register_gate(dev, name, parent, CLK_SET_RATE_PARENT,
> reg,
> +				    shift, 0, &imx_ccm_lock);
> +}
> +
>  static inline struct clk_hw *imx_clk_hw_gate_dis(const char *name, const
> char *parent,
>  		void __iomem *reg, u8 shift)
>  {
> @@ -422,6 +429,15 @@ static inline struct clk_hw *imx_clk_hw_mux(const
> char *name, void __iomem *reg,
>  			width, 0, &imx_ccm_lock);
>  }
> 
> +static inline struct clk_hw *imx_dev_clk_hw_mux(struct device *dev, const
> char *name,
> +                        void __iomem *reg, u8 shift, u8 width,
> +                        const char * const *parents, int num_parents)
> {
> +        return clk_hw_register_mux(dev, name, parents, num_parents,
> +                        CLK_SET_RATE_NO_REPARENT |
> CLK_SET_PARENT_GATE,
> +                        reg, shift, width, 0, &imx_ccm_lock); }
> +
>  static inline struct clk *imx_clk_mux2(const char *name, void __iomem
> *reg,
>  			u8 shift, u8 width, const char * const *parents,
>  			int num_parents)
> @@ -484,6 +500,19 @@ static inline struct clk_hw
> *imx_clk_hw_mux_flags(const char *name,
>  				   reg, shift, width, 0, &imx_ccm_lock);  }
> 
> +static inline struct clk_hw *imx_dev_clk_hw_mux_flags(struct device *dev,
> +						  const char *name,
> +						  void __iomem *reg, u8 shift,
> +						  u8 width,
> +						  const char * const *parents,
> +						  int num_parents,
> +						  unsigned long flags)
> +{
> +	return clk_hw_register_mux(dev, name, parents, num_parents,
> +				   flags | CLK_SET_RATE_NO_REPARENT,
> +				   reg, shift, width, 0, &imx_ccm_lock); }
> +
>  struct clk_hw *imx_clk_hw_cpu(const char *name, const char
> *parent_name,
>  		struct clk *div, struct clk *mux, struct clk *pll,
>  		struct clk *step);
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
