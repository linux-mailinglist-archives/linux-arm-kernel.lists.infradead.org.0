Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F92114B0CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 09:21:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsXsP+VlY9tU7ouT3xz+QXkcQrmW+koOo6kB/AwRLo4=; b=Pz9+nSJQk6lN+U
	ggm6yJk6WQUrEmEm2xti6dfimCOxfKCjec9pa6AhrVrQoDceoSHrnwfqnWHIAa9JPizBx8zoBaM/r
	2YHPnVPS94826Xz+Qc5KrhnMlKtFFoqbmAOWLOi062sEfflRcxGdD76Yr+BGlqm8zjlRdch/skejs
	Sijx/SQvglQqKEJ+Zn00OwrqTvTDlhhcN1f+Wwh8zluj1UqGGzaNBEPruRQR7HsuM9d7UAEwQt1fe
	xAhSf9yAQ4t1IXIN+HMtyKkKwqwfWoRv5XBJKqIHwv7lNZUmDyhd8wUguQHUt8e2MD/gIu9bTaqyF
	0XZWmGJ+x7pH/SwMzH+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwM7s-0002Tz-U6; Tue, 28 Jan 2020 08:21:36 +0000
Received: from mail-eopbgr30051.outbound.protection.outlook.com ([40.107.3.51]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwM7j-0002TE-K0
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 08:21:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CKWBP+NDmRj1c5EF+RG7U+f3xn9WHZOSC/tKLPbP0vEGzlYqc4vKjA8C+JIY8w6M/8efW8yMIMeqJAVczTv3tUhKj64A6VuFW/UMEUf2HrdF1bYdBtaITID4L3g0XJaQIZu9BuY14T/Vo4WrLSHBDXfHcYowQckmB8kltN/v4BvwtnzmAIoCQ3Cl3CMVz+orJQJLdNW7n8Rh7IfbAQTjh+3Svyp5rSzHj85HVbinrsYY9NNQdpHE/aLL4IkCheqIZrkXJpSVODmmgJoPi/MaBU0GbxUNSQftJwr/tDIdijanR0WKoNjGVyRzoCf9RIF2oeSMnGm8rQ6CH7vtPnQ1Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lJoziJ8jytSyYedncwrf8aT4bSZwWIWSs04uIQsdf/I=;
 b=DVhleadfpr0w8C9Xk3vFZ7dKOiqgxnDZszakiutWGpSuxUK/cCXO5w+TqSgLpnWTJuDZRKu32eD3TFi36UaRhHVzEhzNHz5Eh9HjrhaJRQ4udvi6sHp0NA+1/+dLc/WDAIJ17oQAx4ETy3h1eek4b1FGkuH6EvoJX+IPlKj44EgNUEh0uohvS3UHZf55aw1pJV/BEWi8EMCP8FeNfcyMhhoPEPaShkwTf52/LPELb0ggFdjto6ctlls9PfAtZQrWpjO+w9Up7xAoBC4G+u+JVMI44BkCGE+Vu1ouHKE6+huTUhzCxOogcckBWwkcUdGeIs7Y5Kc/i7Z68owMEKCxnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lJoziJ8jytSyYedncwrf8aT4bSZwWIWSs04uIQsdf/I=;
 b=UHwM9Ysb8pQuWux735oHmAyhPvsFuoYWIdaAmQPUbXdDjUK2kxaoJcZioOPrY45MF5Ez4NHv8zjro779ZJTwERONBGmBnfTq/H9m17kEcRhqpt4+9uFS/i3Ui3V8iqRu2BAxYtIRGo8abUCckq3oq9kPOfqmKbtBnNjjzgPeLUM=
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3423.eurprd04.prod.outlook.com (52.134.4.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Tue, 28 Jan 2020 08:06:32 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1%4]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 08:06:32 +0000
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM4PR0701CA0015.eurprd07.prod.outlook.com (2603:10a6:200:42::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.13 via Frontend
 Transport; Tue, 28 Jan 2020 08:06:31 +0000
From: "Daniel Baluta (OSS)" <daniel.baluta@oss.nxp.com>
To: "broonie@kernel.org" <broonie@kernel.org>, "alsa-devel@alsa-project.org"
 <alsa-devel@alsa-project.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: [PATCH 2/4] ASoC: SOF: imx8: Add ops for i.MX8QM
Thread-Topic: [PATCH 2/4] ASoC: SOF: imx8: Add ops for i.MX8QM
Thread-Index: AQHV1bHa9PHYbG+3W0m1ALyE7dW7sg==
Date: Tue, 28 Jan 2020 08:06:32 +0000
Message-ID: <20200128080518.29970-3-daniel.baluta@oss.nxp.com>
References: <20200128080518.29970-1-daniel.baluta@oss.nxp.com>
In-Reply-To: <20200128080518.29970-1-daniel.baluta@oss.nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0701CA0015.eurprd07.prod.outlook.com
 (2603:10a6:200:42::25) To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 63fab73a-2641-4986-0391-08d7a3c8fca8
x-ms-traffictypediagnostic: VI1PR0402MB3423:|VI1PR0402MB3423:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3423382F493700E3594D49B9B80A0@VI1PR0402MB3423.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:949;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(366004)(39860400002)(396003)(346002)(199004)(189003)(5660300002)(6486002)(66556008)(66476007)(66446008)(64756008)(52116002)(66946007)(110136005)(316002)(54906003)(16526019)(8676002)(8936002)(81166006)(81156014)(186003)(956004)(2616005)(71200400001)(1076003)(26005)(2906002)(478600001)(6506007)(6512007)(86362001)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3423;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bSssJ+Diz6DPLLNxfOFRYMMVpH6b0OGtU6Zy2Mmm9PWKbkIWD/pNJqMRQONqCZeyywG9Fi5s4aif0lHMQ9tIxvBEl4468XgLLkY+ebuliKaBv4XQ4DcqN0bZj4z9dcfTLC5568Ec9C3dXrHBUtDCt0k4Pc6AhwYO8KWPt3IjDsaa0YswVYpp2W95kNmi4OTgF1MYT3Wnob36s0aWLVFBZj+5kYJG4Gsb1q1IxhbUSlHQt2JjqUlJtLeSPqCLn3xYeHhZdhy74spx5csb3pMjSusScVsTq//pwvvOG2MVsDvT1ok+NK4u1+zL0T2kbJgB+ax/rRsGqr0ecEgMs64YNJmLOq9Tj3OT5SIRsJ0/AqbFRVBrt58JlY/NvTV+3YjXP+E1DYENLtg+w7YCHGC0NMKN5Fb8BeD1PbokZwgufW7OuqfXywqqEr5PU1kswpkz
x-ms-exchange-antispam-messagedata: cVeicKpOUlun8QwAlElVHddKLjvIfYuQ4v0XNWxKfYwaGsfMoqhhdSIXFW7FH0pH1LDtU0RiD81hfiha8/mZz2iIcULmxQcwZDD4WmkULe7pQ5dGZemUmm8fW+QCUuVRDyTJ6h1BmmAK4TOkj4tSrw==
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63fab73a-2641-4986-0391-08d7a3c8fca8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 08:06:32.6389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0cbFe/5Zfx5iXO0RelSivphxNzCf5hBHxECUgstzeLdG+fahiB8od/SXlup/VvlRwNdScjNwB0Y7aFwSLNSuIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3423
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_002127_658164_8221CF68 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "pierre-louis.bossart@linux.intel.com" <pierre-louis.bossart@linux.intel.com>,
 Paul Olaru <paul.olaru@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Paul Olaru <paul.olaru@nxp.com>

i.MX8QM and i.MX8QXP are mostly identical platforms with minor hardware
differences. One of these differences affects the firmware boot process,
requiring the run operation to differ. All other ops are reused.

Signed-off-by: Paul Olaru <paul.olaru@nxp.com>
Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 sound/soc/sof/imx/imx8.c | 51 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/sound/soc/sof/imx/imx8.c b/sound/soc/sof/imx/imx8.c
index 94481adc2240..a849a9380d88 100644
--- a/sound/soc/sof/imx/imx8.c
+++ b/sound/soc/sof/imx/imx8.c
@@ -178,6 +178,24 @@ static int imx8x_run(struct snd_sof_dev *sdev)
 	return 0;
 }
 
+static int imx8_run(struct snd_sof_dev *sdev)
+{
+	struct imx8_priv *dsp_priv = (struct imx8_priv *)sdev->private;
+	int ret;
+
+	ret = imx_sc_misc_set_control(dsp_priv->sc_ipc, IMX_SC_R_DSP,
+				      IMX_SC_C_OFS_SEL, 0);
+	if (ret < 0) {
+		dev_err(sdev->dev, "Error system address offset source select\n");
+		return ret;
+	}
+
+	imx_sc_pm_cpu_start(dsp_priv->sc_ipc, IMX_SC_R_DSP, true,
+			    RESET_VECTOR_VADDR);
+
+	return 0;
+}
+
 static int imx8_probe(struct snd_sof_dev *sdev)
 {
 	struct platform_device *pdev =
@@ -361,6 +379,39 @@ static struct snd_soc_dai_driver imx8_dai[] = {
 },
 };
 
+/* i.MX8 ops */
+struct snd_sof_dsp_ops sof_imx8_ops = {
+	/* probe and remove */
+	.probe		= imx8_probe,
+	.remove		= imx8_remove,
+	/* DSP core boot */
+	.run		= imx8_run,
+
+	/* Block IO */
+	.block_read	= sof_block_read,
+	.block_write	= sof_block_write,
+
+	/* ipc */
+	.send_msg	= imx8_send_msg,
+	.fw_ready	= sof_fw_ready,
+	.get_mailbox_offset	= imx8_get_mailbox_offset,
+	.get_window_offset	= imx8_get_window_offset,
+
+	.ipc_msg_data	= imx8_ipc_msg_data,
+	.ipc_pcm_params	= imx8_ipc_pcm_params,
+
+	/* module loading */
+	.load_module	= snd_sof_parse_module_memcpy,
+	.get_bar_index	= imx8_get_bar_index,
+	/* firmware loading */
+	.load_firmware	= snd_sof_load_firmware_memcpy,
+
+	/* DAI drivers */
+	.drv = imx8_dai,
+	.num_drv = 1, /* we have only 1 ESAI interface on i.MX8 */
+};
+EXPORT_SYMBOL(sof_imx8_ops);
+
 /* i.MX8X ops */
 struct snd_sof_dsp_ops sof_imx8x_ops = {
 	/* probe and remove */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
