Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF3C9DD7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 08:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gw/ixL8NUP2iSICzyQH5JhfP57M3y4LrGViCnYTEBDs=; b=C8cyvQwzeeCoJM
	r14rnPe/tyfw1eb1S7mDdjGYnj0YKogND8dczy024EIWMkImf0J48aI0aWo5ZEbse+zUpe4GWIz+b
	qYjYVl3vidHNJDk+ACB7yy055MfG0LmRFwy0ajNfEJrGyo41NC1a+M0XZlRhiIUF553lUB00F1ka3
	DgYCtw1E4+mpktQvTN5qinTLsCI9QiHez/xm+n/kslgRSX9FTSMBKrUZY3hsCRdE6z7kVv0SLgApF
	MQhi9j31EeOVzlKjCjYI176JInRGdkBohsrsek1Ax4vE9t4nuu5fxdmPi7VW0lgeAxrJnBx84o17R
	QjLX58COsVg+uNVy+d0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Uo2-0006Dd-Ny; Tue, 27 Aug 2019 06:18:14 +0000
Received: from mail-eopbgr20077.outbound.protection.outlook.com ([40.107.2.77]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Unr-0006Ct-4t
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 06:18:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ajehQUUlW/5Goap9q643tNGjL1BbLSIJUDFKEjpnvF27tK8rXBKfZlqEsq25o3Jh4LElF8HmbW7ecZ+8ceb4WJ19FdHQGfvrkkACkcMfD0Rvj1P1XFpBU9CkGu45b/wrLi6cR//IjJxUpCHoMAiVIO3xlEUuQk1C5X4J2qN2s4hLY7TB2L+FMU8ZeHDAsB2K8porABklJHXVBcopqVW0ydOiLEfB0nxwJHL05dlEaBCAbqqXrFzsxIxSE9DaO9al2jDZxjt8kvXBMriQQz+xsKJhejpJR1ac7596R5m+ty3CFlg/3m5AgcCH3mT9YJE77Fq72ml1WNZXOT684Q3xlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bh8Y7POGQExJuCAZLqVXeYBNrtw6e7YdTml3Dludo+w=;
 b=TKYn3mcbBV+dNw3zA30WLDIxYMiKnH6SDXo4DY2861+zFeEGX0r1IefO4KWUmFFd/NOv0XF1Jqtzttj47UfTmFRx9nQXOIlSXhOQnVVhXD8lCH3Uwq4SYxWTQRF8vKQQhnPZDBPhAGRyaBCFLUi6fE/4/sXMiwT4rhXF2y5y8O5rg2BkXtSoXsyt/ou3mkGj9uqyISp+nLb3rthoBujrwhOQQg/5rIHXIWtYhlm5ri1BEkAElFlYe9xyVLenC7f+AadgWVGnqOIRze+3YYvm0OiFCGRjQxlafYiZQYRA5pl/UYjKVIQYf3v42S5Y/3SPSrrVigMljwuT7jWZyguyPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bh8Y7POGQExJuCAZLqVXeYBNrtw6e7YdTml3Dludo+w=;
 b=BFY/tA9shlLD/v5c2JzBHg+fPvS2fe53eHlrlj6nq+OonodofGFhkmUYhgfc5l19K0oO233bhPqKT81natxRT+37caGUylKY/pwA3QS+rKlg91ybYGuQQt4o7WsxIROHgnQOsN1xJRsHAuBH93H83sytRpXiD/XNpDpa3j2WHGE=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 06:17:53 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::8f2:412c:88c6:a365]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::8f2:412c:88c6:a365%7]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 06:17:53 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Robin van der Gracht <robin@protonic.nl>
Subject: RE: [PATCH] input: keyboard: snvs_pwrkey: Send press and release
 event for i.MX6 S,DL and Q
Thread-Topic: [PATCH] input: keyboard: snvs_pwrkey: Send press and release
 event for i.MX6 S,DL and Q
Thread-Index: AQHVWa5ZFk23j3f7OEWRDzQvDh9iTqcOfq3w
Date: Tue, 27 Aug 2019 06:17:52 +0000
Message-ID: <VE1PR04MB6638754916357F551502102589A00@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190823123002.10448-1-robin@protonic.nl>
In-Reply-To: <20190823123002.10448-1-robin@protonic.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f6b6e0a-19a3-4317-a10d-08d72ab64b40
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6638; 
x-ms-traffictypediagnostic: VE1PR04MB6638:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB66387E91505A7CBB3D122D1C89A00@VE1PR04MB6638.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(346002)(376002)(136003)(39860400002)(199004)(189003)(6506007)(446003)(7416002)(102836004)(6116002)(6436002)(11346002)(3846002)(26005)(186003)(486006)(66066001)(99286004)(86362001)(2906002)(229853002)(76116006)(33656002)(478600001)(256004)(14444005)(66476007)(66946007)(54906003)(476003)(8676002)(53936002)(81166006)(81156014)(55016002)(8936002)(4326008)(6916009)(305945005)(7736002)(9686003)(74316002)(71190400001)(71200400001)(76176011)(316002)(66556008)(64756008)(7696005)(66446008)(6246003)(14454004)(52536014)(5660300002)(25786009)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6638;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oa92eBpqcOwClrchIzJ8XsWmQRh/4avcISNwo8v3EFZWqAtJT/kpB3BlyzWSPzFSxwbY83SblKR2v27Ah6VUqdlpqLXoCpd8mgCMDo8fxu4nOYrSYEGRzhubR/MbZDv/ful2hVSNxmwncQG4Is5wuo2ygGYv0o7bZG6Tg31lF10yYOpOgAIdq0iL7x1Prw8F8A4l1Sw/F6KXhAqjAPT0md9QdPkwVxL8TMgI8j2eJNVaBYK82EpXlAMUE1nnqQY1kLLC5emXECodOk2BkDNtKaEvw264YJ+E+6yuoWWuyXwcbSMB0H2r02YpMMawHaET4GZU3m0d6/4CA+PxuVodnKq0ihGbSZPbzls0egcRvoCcHTF21oEaiVB/QU0uASDrlkF0P3TyQnRFquS9MyuzJQZmeofAS9v7+VVTXSpnA1I=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f6b6e0a-19a3-4317-a10d-08d72ab64b40
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 06:17:52.9726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +/XtjRz0VVFRYrVLkWVXbf5U9772++bqT/D0GKEaAlazE1VzXnmPk4R0u7FwMP2PYVVctoPw1adsF/GeShXuaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6638
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_231803_271791_D4CFA959 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 Adam Ford <aford173@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 02:30:02PM +0200, Robin van der Gracht wrote:> 
> The older generation i.MX6 processors send a powerdown request interrupt
> if the powerkey is released before a hard shutdown (5 second press). This
> should allow software to bring down the SoC safely.
> 
> For this driver to work as a regular powerkey with the older SoCs, we need to
> send a keypress AND release when we get the powerdown request interrupt.
Please clarify here more clearly that because there is NO press interrupt triggered
but only release interrupt on elder i.mx6 processors and that HW issue fixed from
i.mx6sx.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
>  arch/arm/boot/dts/imx6qdl.dtsi       |  2 +-
>  arch/arm/boot/dts/imx6sll.dtsi       |  2 +-
>  arch/arm/boot/dts/imx6sx.dtsi        |  2 +-
>  arch/arm/boot/dts/imx6ul.dtsi        |  2 +-
>  arch/arm/boot/dts/imx7s.dtsi         |  2 +-
As Shawn talked, please keep the original "fsl,sec-v4.0-pwrkey", just add
'imx6qdl-snvs-pwrkey' for elder i.mx6 processor i.mx6q/dl/sl, thus no need
to touch other newer processor's dts.

> 
>  static void imx_imx_snvs_check_for_events(struct timer_list *t) @@ -67,13
> +85,23 @@ static irqreturn_t imx_snvs_pwrkey_interrupt(int irq, void
> *dev_id)  {
>  	struct platform_device *pdev = dev_id;
>  	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
> +	struct input_dev *input = pdata->input;
>  	u32 lp_status;
> 
> -	pm_wakeup_event(pdata->input->dev.parent, 0);
> +	pm_wakeup_event(input->dev.parent, 0);
> 
>  	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
> -	if (lp_status & SNVS_LPSR_SPO)
> -		mod_timer(&pdata->check_timer, jiffies +
> msecs_to_jiffies(DEBOUNCE_TIME));
> +	if (lp_status & SNVS_LPSR_SPO) {
> +		if (pdata->hwtype == IMX6QDL_SNVS) {
> +			input_report_key(input, pdata->keycode, 1);
> +			input_report_key(input, pdata->keycode, 0);
> +			input_sync(input);
> +			pm_relax(input->dev.parent);
Could you move the above input event report steps into imx_imx_snvs_check_for_events()
as before? That make code better to understand and less operation in ISR.
> +		} else {
> +			mod_timer(&pdata->check_timer,
> +				jiffies + msecs_to_jiffies(DEBOUNCE_TIME));
> +		}
> +	}
> 
>  	/* clear SPO status */
>  	regmap_write(pdata->snvs, SNVS_LPSR_REG, SNVS_LPSR_SPO); @@
> -88,11 +116,24 @@ static void imx_snvs_pwrkey_act(void *pdata)
>  	del_timer_sync(&pd->check_timer);
>  }
> 
> +static const struct of_device_id imx_snvs_pwrkey_ids[] = {
> +	{
> +		.compatible = "fsl,imx6sx-sec-v4.0-pwrkey",
> +		.data = &imx_snvs_devtype[IMX6SX_SNVS],
> +	}, {
> +		.compatible = "fsl,imx6qdl-sec-v4.0-pwrkey",
> +		.data = &imx_snvs_devtype[IMX6QDL_SNVS],
No ' IMX6QDL_SNVS ' defined in your patch or am I missing?
> +	},
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, imx_snvs_pwrkey_ids);
> --
> 2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
