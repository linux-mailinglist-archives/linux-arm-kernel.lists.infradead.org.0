Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9DC81127
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 06:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXCoHP2wX+Q5ZVwLXzot7Mi9HHY43j7gF2SiyWIwe1M=; b=a8vzfTm7sAoYpU
	bAn1OpPrrQiWAe/ndRxab8l4WUmJwbKXimgnojB6SFWeioXE74hqvbLPuCGQoRovTT4+nJ6IeWOMU
	7/irN1rI6dIuuf7GGMmyAsQ494Zmugt01N6VSMPvqgFxkKc4uBubul7FGrA1rZx/ltQ9xCFPiCORb
	zao/Q8N9NLMv4hTljZXldoSgL+1GKwq8ZFftVyrr6Kg1vNuRlp0FeP/y2rgxuKUaVCnJ00lmEmXRs
	k40Uz2TKEln1spbyMtCTno72z6aTIzUL7FEjGY5WaCpq8BkxXBhy5cmvxcNmpZuGBBIcipP4RSP5w
	/gt4NLhvstOs4RuhnmYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huUqc-0002cw-HU; Mon, 05 Aug 2019 04:43:50 +0000
Received: from mail-eopbgr150070.outbound.protection.outlook.com
 ([40.107.15.70] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huUqO-0002cV-Du
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 04:43:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RCVscB5nCrYNaC7epyaGUKu+x3ieinkHRd1dh6Z5xo0/NGznnNI7I3hCJtS9d7eFV7xQLIoSzUhU0hpopQ1TYHf01f+xhddxJOIhBMimahRfeUsR1SCICsp7ZSvOwLviiz6jChNPONn0CYeOu2Z/jJzyPQLhkUnRC6/oL/75+W/FS6UgRq7N0/YyMUVHV6eeRyoD3yzuyBYW7j/8AcUUAaQvHtuTP7q3g21TP4Igckf44sG0zue6/Kz8PRhIF/0HzxhWgyb2+yKwoE24mNNoQ3+xFZytwlFZQ7rzk52eklFN1/9d4exCBWPdOYBPeBhxntjzptL1rjYPQcgjRUkw8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JXpQ398Ss/+OpEOoNror9sQM89T4nx7yOqWHspdvXZ4=;
 b=e6ym6U6yiVuHsK4EZ6TAmj9AN86pKIS51jmJ0oprivKBjT4HnQ9U03kpypiq8PKfMM5swjcsWXXABCxf2n8AFLZA6dUvIjGvndVic30JAo6rb8e6RouIzFEni5Wn3wxH3U55VKMf+w1NU1Y7s4nIAOu1JMhp5ZM+vX+qsyiGiNkehc+eTwPsQGSTJ3Nc85CTuwdGk3bqhog6oF19LZMBZuwfP6w7gDbx7QuSirifSXjWzeQzsSAiZX7Vpwrs7a0fDNRcnp+9G9j5EYYY6EpQDKsYL6SDuVwE0DlD1Qbwp+0TEf1XY57psCrAZHR2MVtkfEIGiTHxkAiOCH0HMXc6Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JXpQ398Ss/+OpEOoNror9sQM89T4nx7yOqWHspdvXZ4=;
 b=qNSSHBmIOnazhJhXiYufNn5D6kdxJJbkK2b0DgKPNX4MdTKPUfP9+6BNLK1y8nXJ5UQLqMpgq+HP8IhD0hPeqVIl2FDK/i3Du2RDv/I0d5us/dIHEfjWbryFX1L46Iy8IFnieppD9HGg/yMfBu6q4lS02n7NlU5ckyc/rffiBCo=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4708.eurprd04.prod.outlook.com (20.177.41.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Mon, 5 Aug 2019 04:43:33 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::5553:29b6:d66c:6afe]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::5553:29b6:d66c:6afe%5]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 04:43:33 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Richard Zhu <hongxing.zhu@nxp.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "o.rempel@pengutronix.de"
 <o.rempel@pengutronix.de>, Daniel Baluta <daniel.baluta@nxp.com>
Subject: RE: [PATCH v5 2/4] mailbox: imx: Clear the right interrupts at
 shutdown
Thread-Topic: [PATCH v5 2/4] mailbox: imx: Clear the right interrupts at
 shutdown
Thread-Index: AQHVSzveTVDkYvl4CU+OG2/I92EF2qbr+Z4Q
Date: Mon, 5 Aug 2019 04:43:33 +0000
Message-ID: <AM0PR04MB4211D61BDF46688E5825DF0F80DA0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1564973491-18286-1-git-send-email-hongxing.zhu@nxp.com>
 <1564973491-18286-3-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1564973491-18286-3-git-send-email-hongxing.zhu@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7abbbc75-288e-4ece-7752-08d7195f78b9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4708; 
x-ms-traffictypediagnostic: AM0PR04MB4708:
x-microsoft-antispam-prvs: <AM0PR04MB4708B508E759D62D7BBCBBB180DA0@AM0PR04MB4708.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:489;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(346002)(39860400002)(366004)(199004)(189003)(6436002)(5660300002)(9686003)(2501003)(81166006)(44832011)(26005)(486006)(14454004)(11346002)(186003)(6506007)(52536014)(66446008)(8676002)(110136005)(66946007)(53936002)(6636002)(55016002)(305945005)(4326008)(71190400001)(66476007)(76116006)(64756008)(8936002)(54906003)(66556008)(99286004)(86362001)(256004)(66066001)(15650500001)(229853002)(25786009)(68736007)(71200400001)(6246003)(2906002)(102836004)(316002)(446003)(7696005)(81156014)(74316002)(2201001)(7736002)(33656002)(76176011)(478600001)(6116002)(3846002)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4708;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: G+MkYqgODGy1ue2j5e1TVmd07rKFKn7UryUzo1yMNY8Sa3Gs2TC4wXD+pZsNYwGUiqnKsgUONQ+yD6dLERvVH8SemqERalpECaKEsVtOJ8kg1AaCi6Kh3bhL/u32qeOAzR2G6TlSrh3FkbnjjsrD34lERW3EARvmSFXGae7pCfBphgr/LopcrSdE0Zvy1T6Msb6a4Lmuw6Fkez4wXbtT3Vlo7+LP0KuTNfwkyPamSB/D8Gb5OPLu9mto0b5AWi0XxuitxgZrTotuApsP6H7VXYFr3v4qdoXj2fgKZGckzNtE0F71N+LqD4ZA4N3Z9ckDXEmeM3gjuXATiv2dKUdiMqDlD5vy/N5C4+T3IBAauQxrl85n2Qqb52IiT1vfn3jDU+VBv6sULcfQH5SqhqmYePjf4+TXaZF7Y4cD/x3NLN0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7abbbc75-288e-4ece-7752-08d7195f78b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 04:43:33.2983 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aisheng.dong@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4708
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_214336_472104_2539F3C3 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Richard Zhu <hongxing.zhu@nxp.com>
> Sent: Monday, August 5, 2019 10:51 AM
> 
> Make sure to only clear enabled interrupts keeping count of the connection
> type.
> 
> Suggested-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>

Keep original author if any.
Otherwise:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> ---
>  drivers/mailbox/imx-mailbox.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index 1eeabc5..afe625e 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -219,8 +219,19 @@ static void imx_mu_shutdown(struct mbox_chan
> *chan)
>  		return;
>  	}
> 
> -	imx_mu_xcr_rmw(priv, 0,
> -		   IMX_MU_xCR_TIEn(cp->idx) | IMX_MU_xCR_RIEn(cp->idx));
> +	switch (cp->type) {
> +	case IMX_MU_TYPE_TX:
> +		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
> +		break;
> +	case IMX_MU_TYPE_RX:
> +		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_RIEn(cp->idx));
> +		break;
> +	case IMX_MU_TYPE_RXDB:
> +		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_GIEn(cp->idx));
> +		break;
> +	default:
> +		break;
> +	}
> 
>  	free_irq(priv->irq, chan);
>  }
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
