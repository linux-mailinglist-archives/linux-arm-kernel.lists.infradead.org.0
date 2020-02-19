Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A10D51648E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:41:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1yus2WYAwc3l9XdR9cd0KLbGQgizy8pkELoojcUk64=; b=BRJ88rgZxcmf8E
	/yAjhh1fH9TjD2uiXRG5X6WNN5EAZb3E3O0RX91fWoK/CZW2CLIbngnMzkUJtSiNwlXAou+xNSQBd
	ehqvuufAtfdbULm99jsiUsrw9edbPAmWzG5b0gl/dqvNNnsj4LHLIUJt+pmSRhMokCjt8G9YvFd+R
	4ENieWtvOGk+3Zyo5YUcjuBJHhgwxO0QlOxbYdCyQlKKOIQrWvenoNJhtlZQzII1eJQrCdL0uQYEC
	/KBJ6dVZs2mD9XRfVC8dDkRKKNsj4FWsxPb0+yNUHbVDkiZA3k9R0WdmXuWoZAFzlNzG1DUzXzasG
	7rJESGKMaW0zJB6hpNiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4RTJ-0007Th-AT; Wed, 19 Feb 2020 15:41:09 +0000
Received: from mail-eopbgr00080.outbound.protection.outlook.com ([40.107.0.80]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RSz-0007Lt-Nw
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:40:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cscKC8aJ7yAhwi0afb5Z6TMbmxjd1xeFprOFTc37ujFaKs9X4jVOMCC+wwSbRBBbRxBDIyrKV0onZH2aiW7SNfJwkegI2xFpVBtCnc0B3nkWDvtFSE1BNtFNFbnv6ceYWTHw0GHP31u9L97AxMJGuSkXQH+QdWOuz31ot1AeP7MMqKrTAeNo8eEu7FVKUCG6DoiLbrS1ivi4O06WVhA6yeaKjixOu2n9aXr0LQobzGnSVfJjVrFrPNz1qsKjW3jCp7oBGQg61a0oOf73C3P1T2gBVCxNXyYfq6KkIVm5Ou0QzVZz5LA9NbgA9HgVqr+0ay2ALWLprTTMC2uwz3YiVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oO0BlFh1YtDNLvXsSac06e52t95pKUx+6j/HrVZE3LY=;
 b=ZCJzAS1JPbFq+YNM4Jqt1oeg5xi8WPwryu0l9G7G4eVNiyRTchhoiaqUXYDMZnHVpxN29ylQ56zaGSnOrDiIdey446wCCiAtuJtinELLGSfhOXmZ5CU0CZwn1Ddpk0e2eOj+S7dvRLHMzrH7Z6wR2cxvA7a/Cwbw2Rp6tg62LgxtGTULx/fK81e0uwXQL2BiQ8ln9/n+BLh6EI9Of3d7LSRefD7qDR6D1qZ+nuNU/WE6Wd3E+mxVHo1++Mtv5Cmc1dU7cbQbMuSv7mOia4A7+U4WysoS28YzXQQZ5Ajf6qvAj3XonHfirQIrhdjQvlfK+2gol3GjWGQGTvXcTjwKEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oO0BlFh1YtDNLvXsSac06e52t95pKUx+6j/HrVZE3LY=;
 b=Nbj0qzyVsdPm//+rLWwLOb2ckchtThqOBJKPvhbgLfYt1X2labnsQqxIV4lq/6+NPjnGqkKuA/VhfgPPWd3qL1Fp1iMoGaHkmH+KjUJHshNNvohdx6IiDGVhQgMIEFxigsWh5uJ2Bf/mOjk4fWAafIYaeMadI08OEMLvscd8CEI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4179.eurprd04.prod.outlook.com (52.134.126.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 15:40:47 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 15:40:46 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Arnaud POULIQUEN <arnaud.pouliquen@st.com>, "ohad@wizery.com"
 <ohad@wizery.com>, "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, 
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: RE: [PATCH 3/9] remoteproc: add support to skip firmware load when
 recovery
Thread-Topic: [PATCH 3/9] remoteproc: add support to skip firmware load when
 recovery
Thread-Index: AQHV5vbtBcsi7uUDB0+hcFvNM8RaVqgilukAgAAQEwA=
Date: Wed, 19 Feb 2020 15:40:46 +0000
Message-ID: <AM0PR04MB4481F7E58E9D09F1779E279988100@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
 <1582097265-20170-4-git-send-email-peng.fan@nxp.com>
 <0d90b2c2-cb02-d052-57cb-b11c5f815f07@st.com>
In-Reply-To: <0d90b2c2-cb02-d052-57cb-b11c5f815f07@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d400722c-34c8-4186-8bbc-08d7b55216c1
x-ms-traffictypediagnostic: AM0PR04MB4179:|AM0PR04MB4179:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4179A6729086C4D3A4B6054488100@AM0PR04MB4179.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:506;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(366004)(39860400002)(346002)(136003)(189003)(199004)(76116006)(9686003)(2906002)(8936002)(71200400001)(55016002)(6506007)(5660300002)(54906003)(7696005)(478600001)(53546011)(186003)(64756008)(4326008)(44832011)(66556008)(33656002)(66476007)(66946007)(7416002)(66446008)(86362001)(110136005)(316002)(52536014)(8676002)(81166006)(26005)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4179;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pXGVApwSkXVriQrqLiZtwH9VhQ1Lav+myN3QZ8PKHNk4c0br56JQOohLZQliG8jD6YhKSk1Ay3vzgi+s4V4HiSMTlyF5Fl2miMgXItr0Df1RjajE7yF6ZeudD49E2dgDv0SqEwcOw9IHDWPevH/B0HG6eedsmEQ2kjIQzq0inonZu34UXuZAu9NcLdag8bILU7lRX/RFtLFSyp5sz69UNVLiW8dHiJm2aznYQrtjaFc/TUoHk68NlnuhMc6RBIELBnglHdIMVgYyOgcVoeufdNdYOClEOHz707sXxsm4vUMJZ479z1EiHhfCcdMfMUIACuqSuklcze94sbOUezyY+BrVMQRhdq3BxB+Y8gH9Ui1F7WC56IoI6cttOieq7zBgUqFgmzR05M5yZ/bv34nQ847rPdri8sN7GF+3aFs3FUQoT2V1ejMhxvzKiFfQCA5C
x-ms-exchange-antispam-messagedata: cnRDhjl7JjH8qzHcEaXgtPi8cjnRJLkbx/xOtxGJ/8JT0pnVeRynnHQvjQbgdKRS1fgMi4fvG3sYY4dD2KK6ThhI8dilzB5099sJ6JRgXtgzedOng3HccWaMT/cuAbfzg+zC4vOh1qC9TsOHpSJcaQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d400722c-34c8-4186-8bbc-08d7b55216c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 15:40:46.9063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vxr73GQTcuQMMhjrVV+wgW6th6JnLOTFKRsOzQtt5LVGuIDhOfIgkl3i5nCfSNwxBmrAhDrJEbLRzqVFxVRetQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4179
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_074049_875076_032FBC1C 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.80 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Subject: Re: [PATCH 3/9] remoteproc: add support to skip firmware load when
> recovery
> 
> Hi,
> 
> On 2/19/20 8:27 AM, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Remote processor such as M4 inside i.MX8QXP is not handled by Linux
> > when it is configured to run inside its own hardware partition by
> > system control unit(SCU). So even remote processor crash reset, it is
> > handled by SCU, not linux. To such case, firmware load should be
> > ignored, So introduce skip_fw_load_recovery and platform driver should
> > set it if needed.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/remoteproc/remoteproc_core.c | 19 +++++++++++--------
> >  include/linux/remoteproc.h           |  1 +
> >  2 files changed, 12 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/remoteproc/remoteproc_core.c
> > b/drivers/remoteproc/remoteproc_core.c
> > index 876b5420a32b..ca310e3582bf 100644
> > --- a/drivers/remoteproc/remoteproc_core.c
> > +++ b/drivers/remoteproc/remoteproc_core.c
> > @@ -1678,20 +1678,23 @@ int rproc_trigger_recovery(struct rproc *rproc)
> >  	if (ret)
> >  		goto unlock_mutex;
> >
> > -	/* generate coredump */
> > -	rproc_coredump(rproc);
> > +	if (!rproc->skip_fw_load_recovery) {
> > +		/* generate coredump */
> > +		rproc_coredump(rproc);
> >
> > -	/* load firmware */
> > -	ret = request_firmware(&firmware_p, rproc->firmware, dev);
> > -	if (ret < 0) {
> > -		dev_err(dev, "request_firmware failed: %d\n", ret);
> > -		goto unlock_mutex;
> > +		/* load firmware */
> > +		ret = request_firmware(&firmware_p, rproc->firmware, dev);
> > +		if (ret < 0) {
> > +			dev_err(dev, "request_firmware failed: %d\n", ret);
> > +			goto unlock_mutex;
> > +		}
> 
> Any specific reason to not reuse skip_fw_load here?

Just thought firmware needs to be loaded by Linux when remote
processor crash, even if it initially booted ealy.

skip_fw_load just handles first boot which no need firmware.
But if recovery boot needs firwarem, skip_fw_load will not handle.

So I add this new bool.

Actually to my platform, skip_fw_load could work when recovery,
I just think other platforms might need firware load when recovery.

Regards,
Peng. 

> FYI i'm reworking the Loic's patch and i plan to implement the recovery part
> using skip_fw_load...



> 
> Regards
> Arnaud
> 
> >  	}
> >
> >  	/* boot the remote processor up again */
> >  	ret = rproc_start(rproc, firmware_p);
> >
> > -	release_firmware(firmware_p);
> > +	if (!rproc->skip_fw_load_recovery)
> > +		release_firmware(firmware_p);
> >
> >  unlock_mutex:
> >  	mutex_unlock(&rproc->lock);
> > diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> > index 4fd5bedab4fa..fe6ee253b385 100644
> > --- a/include/linux/remoteproc.h
> > +++ b/include/linux/remoteproc.h
> > @@ -514,6 +514,7 @@ struct rproc {
> >  	bool has_iommu;
> >  	bool auto_boot;
> >  	bool skip_fw_load;
> > +	bool skip_fw_load_recovery;
> >  	struct list_head dump_segments;
> >  	int nb_vdev;
> >  };
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
