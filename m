Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C7AB35DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 09:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2CK8rjt2a2tve8NbEMI6wSEXs2eKROrcpGn0mdZN0k=; b=EyU4KR8j/q8xxB
	jzlwjmzYNs7EWtBO076zkRAOMnPuu/2MmpPmpA9W1LxBD0yQn7/Z0hiNhtH+KBMbrpSvug6pkfnXQ
	9wVZMaw6GsyEbZ/AVPQhWf/5Tpl9Pv9YIQilx7p3WAQzAZfuAcCsyMPoEC2JYvk1SCrcV/t5I+Q7l
	n/7smNBqBtTPLifpOQ0FYMU/RP/AbhdjlMf4ZAlUfnDGgYUiKnys4QWdYHlEwFG0gUQHFRp06TDbw
	7GY1pMH1v/aziF08tXn2yomXelPlE6ivkophNbLFS8iwS/gWrwjGWB9wSBXqRAwtpcLBHvOBChd5K
	4GSXXhqSKOrPrAcjlTbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9lhz-0005wk-7t; Mon, 16 Sep 2019 07:46:03 +0000
Received: from mail-eopbgr00052.outbound.protection.outlook.com ([40.107.0.52]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lhd-0005wK-OH
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 07:45:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ecr1Md7MQ6YhuKteiMMMtMG9sxLSSy17k1LVrVrQBgTWC4fbH25Gh6A1YwWFy2cbNQVclFo0cGYO5xaJqk7elzfGjxdR7NR/c1wMH2cBEmI2Rs5ej7Kxx1fKc8nDEVt3rv8Dkhbl3uiuOWdEYypswrXEkOIoVOou7GJT7VqnXmzuogKhb0Obn1nFYYx4J3LiIbINLXJKN9H8eJWj94NHlLNxECOYeEkyAfab2L+hO1DVQFfqo4lddmm2sh0v3yAHdIB3bZkMNFJmvlv1Z4BGlqWxsRz/6dgPibanh6AU2sawqxZm/hfXw+rANDuOfoAdjQAoMGf7+hEsIg5LQSgkqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oGCpiGKdmDKiVzfzcw2XD6SJFDf8aXxvrOc7Ss9hWiE=;
 b=SWUN+XRf41nwszepKhDIZwTSkSO8jnBJ/KwpaEzbvoLFuhLtPXUcfTdXtKNC0ZCqETiwvkVG2WYgtgzEjJxQORlwyXNiKj3ISRXcOWJOj3GQmzyfVlFtIbqih91n7D+pBM+JlOHLvzH/aAspf4vEExHLFVaQax+0H8z4g70698tXYDF38yN8opvOx2AE8o/jy2TjF+2BQwSWlyRJVYOLJlmU+Ema0fnyR6zhsYJdUvb5cwIJ6bjuung0Nt2MOG+nbH6mYcWhBQcMwhiyVayb+mXTs62jFTWkvzBKhZocd4FjwVgBP/a2MzIeoSNgnyjyzgLT76z2m0bEZjssTA4L5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oGCpiGKdmDKiVzfzcw2XD6SJFDf8aXxvrOc7Ss9hWiE=;
 b=UNkwXv1YUxRxn/TnGBx7wK+i2VYfAB54yP8drGArads2vHUTj7HsmCpCJOXDS5ZHMHPh3BuE1NGgBxOLqfmvhzclPUFagHPgxWRGqlKQ+w/jXJHGlT2Osx3lF9KhCMgzQr9eZCrVG7LO4DaRkDW+mVdBTozKhmezgDfS+T7/ySg=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.235.81) by
 VE1PR04MB6767.eurprd04.prod.outlook.com (20.179.235.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Mon, 16 Sep 2019 07:45:37 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::c8ae:f1f7:b7be:5976]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::c8ae:f1f7:b7be:5976%4]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 07:45:37 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: robin <robin@protonic.nl>, Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: RE: [PATCH v3] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
Thread-Topic: [PATCH v3] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
Thread-Index: AQHVYulGitMh2z9280mHPSfJdecGJqcohyAAgAC9Y4CABLkHYA==
Date: Mon, 16 Sep 2019 07:45:37 +0000
Message-ID: <VE1PR04MB663896B94C68B5EF9AE0BE36898C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190904062329.97520-1-robin@protonic.nl>
 <20190912201300.GA636@penguin> <803592d161b9ca75d6ac1c2c54e891a1@protonic.nl>
In-Reply-To: <803592d161b9ca75d6ac1c2c54e891a1@protonic.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2dc73ceb-5f57-4a58-56dd-08d73a79dd41
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VE1PR04MB6767; 
x-ms-traffictypediagnostic: VE1PR04MB6767:
x-microsoft-antispam-prvs: <VE1PR04MB676728E8E7DEBF897C4A560A898C0@VE1PR04MB6767.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(366004)(396003)(189003)(199004)(26005)(316002)(110136005)(8936002)(14454004)(305945005)(74316002)(7736002)(14444005)(86362001)(476003)(256004)(486006)(446003)(11346002)(5660300002)(6116002)(3846002)(2906002)(99286004)(66066001)(102836004)(186003)(6506007)(53546011)(71200400001)(71190400001)(6246003)(7696005)(25786009)(52536014)(54906003)(76176011)(33656002)(6436002)(55016002)(53936002)(229853002)(9686003)(76116006)(66446008)(64756008)(66556008)(66476007)(4326008)(66946007)(81166006)(81156014)(8676002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6767;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0+atXQt1NvuFlq1DSb9EXs4kPFXFXre/iQhnnPyuLSAeU43A0hDEDw3Tkdwb2dN89IdO6IaT0QkaWzJlZaxmBb1gE8CLUUsL6kjfUX00wclSIE+HdFtuC+Yinp2gGy6e6anvj9oVhYSUDtDb/c09N37NLDihrOtI3ykg1ja91TYOYapE34y5O45l4fqUYHAh0p8YwFJ/3tBqfwKumbdxLFhajGt7bNAfpuOky7vMe+/dI/xwZeVu2wNTunt/Wkx82zrkG19489SzvwUJRs9VK7D3lAwFj3ZZ8AclZx9fBDa0AQmjXaCV/AIBEOjvYVn7J223dJ2QP+FG3qnFcKCJdkvIN7dJvT9gZzQyGBVXdsonIfd6brcn8z6xNximltMhbZ5GECe1YhYekMcPiXfIozBvgEj1Mx1N9xFLiGJiG3I=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dc73ceb-5f57-4a58-56dd-08d73a79dd41
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 07:45:37.1936 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: APbXdOkUue43I8Dzuf1T7ZgKBvdov9OetuJIbpKsUppACpou7KTHSHsayddfto09w88S04QAdA9oHALI46dFWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6767
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_004541_904079_5A09D089 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Marco Felsch <m.felsch@pengutronix.de>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input @ vger . kernel . org" <linux-input@vger.kernel.org>,
 Adam Ford <aford173@gmail.com>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/9/13 15:31 robin <robin@protonic.nl> wrote:> 
> Hi Dmitry,
> 
> On 2019-09-12 22:13, Dmitry Torokhov wrote:
> > Hi Robin,
> >
> > On Wed, Sep 04, 2019 at 06:23:29AM +0000, Robin van der Gracht wrote:
> >> The first generation i.MX6 processors does not send an interrupt when
> >> the power key is pressed. It sends a power down request interrupt if
> >> the key is released before a hard shutdown (5 second press). This
> >> should allow software to bring down the SoC safely.
> >>
> >> For this driver to work as a regular power key with the older SoCs,
> >> we need to send a keypress AND release when we get the power down
> >> request irq.
> >>
> >> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> >> ---
> >> @@ -67,13 +83,17 @@ static irqreturn_t imx_snvs_pwrkey_interrupt(int
> >> irq, void *dev_id)  {
> >>  	struct platform_device *pdev = dev_id;
> >>  	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
> >> +	unsigned long expire = jiffies;
> >>  	u32 lp_status;
> >>
> >>  	pm_wakeup_event(pdata->input->dev.parent, 0);
> >>
> >>  	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
> >> -	if (lp_status & SNVS_LPSR_SPO)
> >> -		mod_timer(&pdata->check_timer, jiffies +
> >> msecs_to_jiffies(DEBOUNCE_TIME));
> >> +	if (lp_status & SNVS_LPSR_SPO) {
> >> +		if (pdata->minor_rev > 0)
> >> +			expire = jiffies + msecs_to_jiffies(DEBOUNCE_TIME);
> >> +		mod_timer(&pdata->check_timer, expire);
> >
> > Why do we even need to fire the timer in case of the first generation
> > hardware? Just send press and release events directly from the ISR.
That timer looks like a software debounce to prevent unexpected and
meaningless interrupt/event caused by quick press/release.   
> 
> Robin Gong proposed to move the code to imx_imx_snvs_check_for_events()
> to improve readability and unload the ISR.
> 
> But since I, eventually, couldn't use the existing handling in
> imx_imx_snvs_check_for_events(), I do see why you're asking.
> 
> I'll move the code to the ISR and submit a new patch.
> 
> Robin van der Gracht

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
