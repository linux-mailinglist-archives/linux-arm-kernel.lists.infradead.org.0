Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5456EDDEDD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 16:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vo6ZnkInAQzNFERibc1dkNPfzuMWCNm10OBelnU2CvM=; b=nNzaXcfDFe0w2j
	Lny8a//rgisweKidRjpD0w9CY2uPgr6ZEzjGy4xoH2le7lhCvtXqEt0fEEX0u2CEzJIZW3A9vQqAs
	AP6EThJUcWoVHxc4AWyIRlMwW1BGKe47cvRQwsawlBBNOUSSwzTW+3xNiztdpAKXywfSVjcEnzUmW
	50R6zpefnUR7zpbWaUJstbTkoTztLvIhxSPaSqhOW5x6hmE2qEBtDnHF5vhltzeRvUc7mNYmAHF1y
	oXTpEPXgMTrnBb5ssOBh6ByvciqfASokUSQcSLw0wfBK/TOvI45K5oI4r3i1uaa4QMsRO40i/sSzJ
	gd9KqhaW8QWYO9nD0W9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMCB1-0001PP-RR; Sun, 20 Oct 2019 14:27:23 +0000
Received: from mail-eopbgr130052.outbound.protection.outlook.com
 ([40.107.13.52] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMCAg-0000nn-2z
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 14:27:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fsd6NsvLD6CGSho2mnNn8iyu3cmIAiRFaTMQ5x/sR2u7utLj8tf6DRXWc0p2WRovc4c6SNP1p/lic3TwgwyWDlOjk6+3NgjXqfFB6CUwz25viu6OQtGiy7tANERLd8NM82hFTqInGowVW7Yy4aP0ZH+AiKKBgGfdAqRdbX1LUkH/SJAq4ZZak2opPnnTR+Tv7KDn9GKMYBy+fq9lp+1+ftRhiPvUlktogNmFyKQaAOxyrjhW2SzLrPgHXlXvoIUxh1ILbOL29zeGAvPfdm0pYrU0OtEqyZp+L2QsVdMXj7JXj/fMoN1fcfxYOF97qaLdqXjoXKDYOUNV0u+MasB6Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zpppsGF5y3vttei7K+RPR0+O0UdNzNFMrOtAji/nQ0k=;
 b=TtLdPeI8Pz7lLXUqBQLyE6qYNblwyoESC9GELsO7EJ/W6KDRWj0dM/Dow0iNarF2weECQQiAcwyn3CSRm20qQNoDoaoE4dCwxvrCI1PT5UGRwSmxBSgBdGD1UURd3WPMzKDmQ1Daz3qJ4+f9k+DlLT4TBXoSTT2FoX9kOfdJCzM2kHCXJDXEamjaAdD1D6hbd45+yE6QLHk6zjDKZ5WFj1c571wPhAbHB8BFxv5FHS6qRWgC6lalGbdmoIRi68iV9Rr0yQzwjdKyhVBNmnEQ53nO2PXEUnyMrTYhJLO+U54DgpejFELNu6A80HxxWgNSx8azHk3SHRm5ejb3wuvk8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zpppsGF5y3vttei7K+RPR0+O0UdNzNFMrOtAji/nQ0k=;
 b=ebD2POtxxI1Wpwj/nMWCKI1VGY5JlRRJ7nlkWgmGGbekhrEPtHzTEA6y93JwbBfy3pHD584Vs2Ev1cS1QM2o8CnPObH2VZOLRTH54vhJ9I/8JCmYufbkdL8F9WfpjpncV03UGsBoVF6M5H5kAVxdjOcL1gYey2+lkQnwUqGA5dc=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4450.eurprd04.prod.outlook.com (52.135.147.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Sun, 20 Oct 2019 14:26:58 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::4122:fda5:e903:8c02]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::4122:fda5:e903:8c02%3]) with mapi id 15.20.2347.028; Sun, 20 Oct 2019
 14:26:58 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] soc: imx8mq: Read SOC revision from TF-A
Thread-Topic: [PATCH] soc: imx8mq: Read SOC revision from TF-A
Thread-Index: AQHVf34QXSNU+xh6v0qOtJN97CQGF6djpd0A
Date: Sun, 20 Oct 2019 14:26:58 +0000
Message-ID: <20191020142656.q2qajgknymu7tfjt@fsr-ub1664-175>
References: <c4f9d238a08b5c8de6c14e86cfbe3fe8b8a55f4f.1570720648.git.leonard.crestez@nxp.com>
In-Reply-To: <c4f9d238a08b5c8de6c14e86cfbe3fe8b8a55f4f.1570720648.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM5P190CA0019.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:206:14::32) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b2725c0-8882-476b-4fe8-08d755699083
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR04MB4450:|AM0PR04MB4450:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB445099B865908C678570BEDCF66E0@AM0PR04MB4450.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0196A226D1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(39860400002)(346002)(376002)(366004)(136003)(396003)(189003)(199004)(7736002)(305945005)(316002)(6636002)(33716001)(1076003)(5660300002)(8676002)(25786009)(11346002)(486006)(44832011)(446003)(476003)(66066001)(54906003)(8936002)(66476007)(66946007)(966005)(52116002)(66556008)(86362001)(2906002)(478600001)(256004)(3846002)(66446008)(64756008)(76176011)(99286004)(186003)(26005)(53546011)(102836004)(6506007)(386003)(6116002)(9686003)(6512007)(6306002)(4326008)(6436002)(229853002)(71200400001)(71190400001)(6486002)(6862004)(6246003)(14454004)(81156014)(45080400002)(81166006)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4450;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qKkRlXcHTulOA/29nvARHFqf7XHGA6l1GLqtOkA4jTFhXozaWrBU0a5PzECQVHymuUJzPl6SANFAboMH0Vyhzm743ybYn24ZapFCH529WBM6OgeTPPIMlMOoMjE6lRNgIPgvQIMzbbG2q6/K37GNCK+aRFkbjRlntSxOYgsu7WMqnnn8HnopUreJ2jndq1e9VngHE1DvI0t3uLmUUpXdrysHJcuKFDTSIZdcCxEQOopwfD+56KlQhe9/7wSm8ZFUB4uzK3/fe12gDxEu5PtoyjaJY768jFXmQ2xT1zAZReg/v8zfJMydudUQEfwHUOlbqKQ1q9RhCjk5hdN73wBx8WVygZmh3VeFcOnTVF091YEvvp0gxgGaVKNUVA7V1M7Nkv7amHKW+8tQoqOzM0V1WPe3W2ZINO922j6D6vDK8pmbhoDgdpajsbpkGcMoXzBs4jQ2OpuYctY+/kkoa8YHBw==
Content-ID: <E416603DB285354F882F12D81AA6518A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b2725c0-8882-476b-4fe8-08d755699083
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2019 14:26:58.2325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j+tN52sPL6xMjcjBln90Ox+IcOquuvM7IS3F2YHFmbICQwu37YyX9fsJFzTvxg+qmMsZ09O1eclGU6BdLSp7rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4450
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_072702_147403_96CFC747 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 =?iso-8859-1?Q?Guido_G=FCnther?= <agx@sigxcpu.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-10-10 18:19:03, Leonard Crestez wrote:
> SOC revision on older imx8mq is not available in fuses so on anything
> other than B1 current code just reports "unknown".
> 
> TF-A already handles this by parsing the ROM and exposes the value
> through a SMC call. Call this instead of reimplementing the workaround
> in the kernel itself.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> 
> ---
> This was discussed previously and but nothing was merged. I'm having
> trouble finding email archive links but here's one:
> 
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fpatch%2F10935599%2F&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C71f4817b96664652f41d08d74d95327d%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637063175494533275&amp;sdata=QyDT2NyNYVIY0OCxxscL4RkW2iNUVOuRK5OeVOz%2BP%2Bc%3D&amp;reserved=0
> 
> NXP vendor tree always used TF-A for this and from previous discussion
> it is reasonable to rely on firmware for workarounds.
> 
> The SMC call has been in TF-A upstream for a while.
> 
>  drivers/soc/imx/soc-imx8.c | 28 +++++++++++++++++++++++++---
>  1 file changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
> index b9831576dd25..20af442a247a 100644
> --- a/drivers/soc/imx/soc-imx8.c
> +++ b/drivers/soc/imx/soc-imx8.c
> @@ -7,17 +7,20 @@
>  #include <linux/io.h>
>  #include <linux/of_address.h>
>  #include <linux/slab.h>
>  #include <linux/sys_soc.h>
>  #include <linux/platform_device.h>
> +#include <linux/arm-smccc.h>
>  #include <linux/of.h>
>  
>  #define REV_B1				0x21
>  
>  #define IMX8MQ_SW_INFO_B1		0x40
>  #define IMX8MQ_SW_MAGIC_B1		0xff0055aa
>  
> +#define IMX_SIP_GET_SOC_INFO		0xc2000006
> +
>  #define OCOTP_UID_LOW			0x410
>  #define OCOTP_UID_HIGH			0x420
>  
>  /* Same as ANADIG_DIGPROG_IMX7D */
>  #define ANADIG_DIGPROG_IMX8MM	0x800
> @@ -35,10 +38,22 @@ static ssize_t soc_uid_show(struct device *dev,
>  	return sprintf(buf, "%016llX\n", soc_uid);
>  }
>  
>  static DEVICE_ATTR_RO(soc_uid);
>  
> +static u32 imx8mq_soc_revision_from_atf(void)
> +{
> +	struct arm_smccc_res res;
> +
> +	arm_smccc_smc(IMX_SIP_GET_SOC_INFO, 0, 0, 0, 0, 0, 0, 0, &res);
> +
> +	if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
> +		return 0;
> +	else
> +		return res.a0 & 0xff;
> +}
> +
>  static u32 __init imx8mq_soc_revision(void)
>  {
>  	struct device_node *np;
>  	void __iomem *ocotp_base;
>  	u32 magic;
> @@ -49,13 +64,20 @@ static u32 __init imx8mq_soc_revision(void)
>  		goto out;
>  
>  	ocotp_base = of_iomap(np, 0);
>  	WARN_ON(!ocotp_base);
>  
> -	magic = readl_relaxed(ocotp_base + IMX8MQ_SW_INFO_B1);
> -	if (magic == IMX8MQ_SW_MAGIC_B1)
> -		rev = REV_B1;
> +	/*
> +	 * SOC revision on older imx8mq is not available in fuses so query
> +	 * the value from ATF instead.
> +	 */
> +	rev = imx8mq_soc_revision_from_atf();
> +	if (!rev) {
> +		magic = readl_relaxed(ocotp_base + IMX8MQ_SW_INFO_B1);
> +		if (magic == IMX8MQ_SW_MAGIC_B1)
> +			rev = REV_B1;
> +	}
>  
>  	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
>  	soc_uid <<= 32;
>  	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
