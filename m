Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C9D2795F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+7TPT7bgFUrcwC/Kx0XrIVLUYS/H0Sptv2IpRsYreY=; b=OezGfYH2QUjfDJ
	1Go4OcAsQVyM6Kn352PP2CMMQ/s/HGH03fKaQxh5XAihmsdaWJfEwFwJ3d618P59llizIbEYcH0XY
	lKW5FEMfTynt3OWa77aXGEsRLO7HIGXqyaYxZa2265c+sjw08TQpsk2hXeR4ckdtCbhodWAtJ7Fdo
	sAPLnMEIG4Eu5VdkB0/7UGOnDJ9qakGTepNyMQsv4bdTsQf61jFA3/BWiJNszM97U4Qmwscm4ug8U
	0vAN+SUxh9gseQAUrRB+OGssSoO32o2+QXDUZemeFkWO9LO1bzWo1o8rhuxJfLVwvYFhiNEu8noxI
	QOaOTNBBZaTSJYe1hSZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTk8o-0000D3-GX; Thu, 23 May 2019 09:36:02 +0000
Received: from mail-ve1eur01on0614.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::614]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTk8f-0000Cb-Uw
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 09:35:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AY7pJIbkluEbMt/+VyZhiElfd+4JG5HAdglHhR/+OFc=;
 b=aPFoUTnzFeDWiP5PeiHRsyc7KOruvwHif6Km7mSnEklJ0f5Xq422/+BLyvn7VeT1ntdfYHuKSixbjnQc6g6Wn3zI9BBvFlwIw9Qo+mzzJGJ7RgoVF8pUsvAecqqa6fFtYak7+YCb79zjiKXm+f4mt5YAq+R9SjiK2w5oyD8ZPHc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3932.eurprd04.prod.outlook.com (52.134.72.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Thu, 23 May 2019 09:35:48 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1922.017; Thu, 23 May 2019
 09:35:48 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: RE: [PATCH V6 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V6 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVESOBOi968fgyqkGLTWjGKVXT0qZ4bDuAgAAF4qA=
Date: Thu, 23 May 2019 09:35:48 +0000
Message-ID: <DB3PR0402MB3916311773BADACCC5DC3A7CF5010@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1558586911-29309-1-git-send-email-Anson.Huang@nxp.com>
 <20190523090941.zd4rbvcimgit5lq5@shell.armlinux.org.uk>
In-Reply-To: <20190523090941.zd4rbvcimgit5lq5@shell.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25f8706b-244f-44ad-8b76-08d6df620a0a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3932; 
x-ms-traffictypediagnostic: DB3PR0402MB3932:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <DB3PR0402MB3932E970313D0ADEEC06AEB4F5010@DB3PR0402MB3932.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(366004)(136003)(39860400002)(199004)(189003)(13464003)(2906002)(316002)(66476007)(66556008)(64756008)(73956011)(66946007)(76116006)(66446008)(7736002)(26005)(305945005)(6116002)(3846002)(53546011)(6506007)(99286004)(186003)(74316002)(8676002)(76176011)(229853002)(8936002)(81156014)(81166006)(6916009)(7696005)(68736007)(55016002)(6306002)(9686003)(6246003)(44832011)(486006)(7416002)(54906003)(6436002)(446003)(11346002)(476003)(33656002)(5660300002)(478600001)(71200400001)(86362001)(4326008)(71190400001)(45080400002)(52536014)(102836004)(14444005)(53936002)(14454004)(966005)(66066001)(25786009)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3932;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ltoM48UUt8e4gK6xnbITEnqt2GioC12SpaHl9h+PNsCqm1mmZgfWtqK2JG6HrDKU5fHaqshKlqlybqBCdmxY3Xpho4odSVO+tB4lkldLkK69tDL+s6Emd6gJUiFCfRkqeePTshxA3YygjsvNBiDGnfmpUmZLSmf5XAJZc+fdJAFv6qZwtq8D5weIbW/AgKkVtMaPnHLv89FaDaFLM6avrNvHepnlWLIeju4aXbftwthaH9pWR1QLIntRsoQdkr1rcwUCbMEDJSr2S6AglZHtaIW3TOMt6Bs82rKbgCj00b2ImFiO4GSkXiUWCs6nuGJlc9FmROwAZoB+FZRZVnZAOeN9nLd2eE/ibDtCe9EHCh/ReOBiciHCT/Q915eZ3zbShSlqulPhmRPwjBTU7ADPWtXUQx9AvW00jtcv9PAxG0g=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25f8706b-244f-44ad-8b76-08d6df620a0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 09:35:48.6107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3932
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_023554_153995_81C09139 
X-CRM114-Status: GOOD (  26.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:614 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh@kernel.org" <robh@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Russell

> -----Original Message-----
> From: Russell King - ARM Linux admin [mailto:linux@armlinux.org.uk]
> Sent: Thursday, May 23, 2019 5:10 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: catalin.marinas@arm.com; will.deacon@arm.com;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; maxime.ripard@bootlin.com; olof@lixom.net;
> agross@kernel.org; jagan@amarulasolutions.com;
> bjorn.andersson@linaro.org; Leonard Crestez <leonard.crestez@nxp.com>;
> dinguyen@kernel.org; enric.balletbo@collabora.com; Aisheng Dong
> <aisheng.dong@nxp.com>; Abel Vesa <abel.vesa@nxp.com>;
> l.stach@pengutronix.de; tglx@linutronix.de; robh@kernel.org;
> gregkh@linuxfoundation.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH V6 1/2] soc: imx: Add SCU SoC info driver support
> 
> On Thu, May 23, 2019 at 04:53:46AM +0000, Anson Huang wrote:
> > Add i.MX SCU SoC info driver to support i.MX8QXP SoC, introduce driver
> > dependency into Kconfig as CONFIG_IMX_SCU must be selected to support
> > i.MX SCU SoC driver, also need to use platform driver model to make
> > sure IMX_SCU driver is probed before i.MX SCU SoC driver.
> 
> This seems buggy...

We have to use platform driver model, but there is no such soc device in DT file,
so we created the platform device in this driver directly.

> 
> > +static int imx_scu_soc_probe(struct platform_device *pdev) {
> > +	struct soc_device_attribute *soc_dev_attr;
> > +	struct soc_device *soc_dev;
> > +	u32 id, val;
> > +	int ret;
> > +
> > +	ret = imx_scu_get_handle(&soc_ipc_handle);
> > +	if (ret)
> > +		return ret;
> > +
> > +	soc_dev_attr = devm_kzalloc(&pdev->dev, sizeof(*soc_dev_attr),
> > +				    GFP_KERNEL);
> > +	if (!soc_dev_attr)
> > +		return -ENOMEM;
> > +
> > +	soc_dev_attr->family = "Freescale i.MX";
> > +
> > +	ret = of_property_read_string(of_root,
> > +				      "model",
> > +				      &soc_dev_attr->machine);
> > +	if (ret)
> > +		return ret;
> > +
> > +	id = imx_scu_soc_id();
> > +
> > +	/* format soc_id value passed from SCU firmware */
> > +	val = id & 0x1f;
> > +	soc_dev_attr->soc_id = val ? kasprintf(GFP_KERNEL, "0x%x", val)
> > +			       : "unknown";
> 
> soc_id can either be an allocated string, or it can be a static string of
> "unknown".
> 
> > +	if (!soc_dev_attr->soc_id)
> > +		return -ENOMEM;
> > +
> > +	/* format revision value passed from SCU firmware */
> > +	val = (id >> 5) & 0xf;
> > +	val = (((val >> 2) + 1) << 4) | (val & 0x3);
> > +	soc_dev_attr->revision = val ? kasprintf(GFP_KERNEL,
> > +						 "%d.%d",
> > +						 (val >> 4) & 0xf,
> > +						 val & 0xf) : "unknown";
> 
> revision here is the same.
> 
> > +	if (!soc_dev_attr->revision) {
> > +		ret = -ENOMEM;
> > +		goto free_soc_id;
> > +	}
> > +
> > +	soc_dev = soc_device_register(soc_dev_attr);
> > +	if (IS_ERR(soc_dev)) {
> > +		ret = PTR_ERR(soc_dev);
> > +		goto free_revision;
> > +	}
> > +
> > +	return 0;
> > +
> > +free_revision:
> > +	kfree(soc_dev_attr->revision);
> > +free_soc_id:
> > +	kfree(soc_dev_attr->soc_id);
> 
> Yet here you blindly kfree(), which means you could be doing in effect
> kfree("unknown") - which will likely result in a kernel oops.
> 
> Either always make revision/soc_id an allocated string, or use some static
> storage for the strings (they're only small, static storage is likely to be much
> more efficient in this case, and there can only be one of these in any case.)

You are right, actually the "unknown" message is NOT helpful at all, so in next version,
I will just check the return value from SCU firmware, if it fail, just skip this driver probe,
If it success, it will just print out the soc_id and revision passing from SCU firmware, so no
need to have "unknown" string here.

+++ b/drivers/soc/imx/soc-imx-scu.c
@@ -27,7 +27,7 @@ struct imx_sc_msg_misc_get_soc_id {
        } data;
 } __packed;

-static u32 imx_scu_soc_id(void)
+static int imx_scu_soc_id(void)
 {
        struct imx_sc_msg_misc_get_soc_id msg;
        struct imx_sc_rpc_msg *hdr = &msg.hdr;
@@ -44,8 +44,7 @@ static u32 imx_scu_soc_id(void)
        ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
        if (ret) {
                pr_err("%s: get soc info failed, ret %d\n", __func__, ret);
-               /* return 0 means getting revision failed */
-               return 0;
+               return ret;
        }

        return msg.data.resp.id;
@@ -55,7 +54,8 @@ static int imx_scu_soc_probe(struct platform_device *pdev)
 {
        struct soc_device_attribute *soc_dev_attr;
        struct soc_device *soc_dev;
-       u32 id, val;
+       u32 val;
+       int id;
        int ret;

        ret = imx_scu_get_handle(&soc_ipc_handle);
@@ -76,21 +76,22 @@ static int imx_scu_soc_probe(struct platform_device *pdev)
                return ret;

        id = imx_scu_soc_id();
+       if (id < 0)
+               return -EINVAL;

        /* format soc_id value passed from SCU firmware */
        val = id & 0x1f;
-       soc_dev_attr->soc_id = val ? kasprintf(GFP_KERNEL, "0x%x", val)
-                              : "unknown";
+       soc_dev_attr->soc_id = kasprintf(GFP_KERNEL, "0x%x", val);
        if (!soc_dev_attr->soc_id)
                return -ENOMEM;

        /* format revision value passed from SCU firmware */
        val = (id >> 5) & 0xf;
        val = (((val >> 2) + 1) << 4) | (val & 0x3);
-       soc_dev_attr->revision = val ? kasprintf(GFP_KERNEL,
-                                                "%d.%d",
-                                                (val >> 4) & 0xf,
-                                                val & 0xf) : "unknown";
+       soc_dev_attr->revision = kasprintf(GFP_KERNEL,
+                                          "%d.%d",
+                                          (val >> 4) & 0xf,
+                                          val & 0xf);
        if (!soc_dev_attr->revision) {

Thanks,
Anson.

> 
> > +	return ret;
> > +}
> > +
> > +static struct platform_driver imx_scu_soc_driver = {
> > +	.driver = {
> > +		.name = IMX_SCU_SOC_DRIVER_NAME,
> > +	},
> > +	.probe = imx_scu_soc_probe,
> > +};
> > +
> > +static int __init imx_scu_soc_init(void) {
> > +	struct platform_device *imx_scu_soc_pdev;
> > +	struct device_node *np;
> > +	int ret;
> > +
> > +	np = of_find_compatible_node(NULL, NULL, "fsl,imx-scu");
> > +	if (!np)
> > +		return -ENODEV;
> > +
> > +	of_node_put(np);
> > +
> > +	ret = platform_driver_register(&imx_scu_soc_driver);
> > +	if (ret)
> > +		return ret;
> > +
> > +	imx_scu_soc_pdev =
> > +
> 	platform_device_register_simple(IMX_SCU_SOC_DRIVER_NAME,
> > +						-1,
> > +						NULL,
> > +						0);
> > +	if (IS_ERR(imx_scu_soc_pdev))
> > +		platform_driver_unregister(&imx_scu_soc_driver);
> > +
> > +	return PTR_ERR_OR_ZERO(imx_scu_soc_pdev);
> > +}
> > +device_initcall(imx_scu_soc_init);
> > --
> > 2.7.4
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists
> > .infradead.org%2Fmailman%2Flistinfo%2Flinux-arm-
> kernel&amp;data=02%7C0
> >
> 1%7Canson.huang%40nxp.com%7C6ef296866ce243d9473c08d6df5e6b5f%7C
> 686ea1d
> >
> 3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636941993959195561&amp;sdat
> a=mXdow
> >
> fLshJ%2BQlyLJ%2BbyYwuDUXh3CwOBAiZ%2BvVED%2FRh4%3D&amp;reserve
> d=0
> >
> 
> --
> RMK's Patch system:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.
> armlinux.org.uk%2Fdeveloper%2Fpatches%2F&amp;data=02%7C01%7Canso
> n.huang%40nxp.com%7C6ef296866ce243d9473c08d6df5e6b5f%7C686ea1d3
> bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636941993959195561&amp;sdata
> =rsrH%2F9pqdLZUJ0E%2BWUa2Kf71rtOcNDyjJ81R8Ex6yQs%3D&amp;reserve
> d=0
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down
> 622kbps up According to speedtest.net: 11.9Mbps down 500kbps up
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
