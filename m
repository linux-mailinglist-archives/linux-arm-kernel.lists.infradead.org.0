Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2450616926D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 01:01:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAUYEeyezeRDXF68hUZ2keLlQt6teA/OgehqxJy1vrk=; b=RJjz8Qg+7LhglF
	N4q8vrMComg9OWqGmwPTT29uYncs7ohwJtDJXhNERwjNa+Y+ZLNc9d3cP/OLClqnbPcBIys5DiZrS
	PYP/dn1fMTOvk20tIthlIKOcVk84nL9lcV0Qto1UW0jzSnCsv8efae+khCsaTyMAJxZmYp2cLsI94
	jddtb6ft3o6ABdSEPmt/+XhMyPG6oG6qS3qj/wdtumhJnCXegPtnVyIRqXml2iVVPWeFDYh2S4fVt
	XOYSPjg+FwwSXwN9bQPMVMUod65vm8/Rt5Dxu216yIzhBMD8pqxNadO4YbFP6BaE2wZ60x9OChwqw
	fpSwG7k54gPjvt7p6neA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5eiX-0000oz-Va; Sun, 23 Feb 2020 00:01:53 +0000
Received: from mail-vi1eur04on0613.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::613]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5eiO-0000nQ-4P
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 00:01:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q1Ocl/eyCAo0o4avnpq5ecN9yDL5TH6E/hiMP/5DbZF+YGW7BstieX6zdsk/8U1EbXRko4CZ+tLJX5jRSTXRWIrWGfHrG/zyXiWuVJOwrCCUEGY+twpykwcqPzKo2PqgaUfqLYiiVaGwy42ViWuKIRHwrMn4GbphD6wA4ZdwH7eYx8QEmj8Hp60mVzugAcfW9gWTA4LKzKYwI61QcFb2TZPj/LnvY5VhkAIGxEJKQpvzhD2PF2EK2L5BRxR88jL2FL+GSr/F7J4DyTJs9k44g7qIfVSPiy+m0Wnci6fLRFf2YWoY4KiLTptB9lyD1H+xcP0WXsCP4ozoDS58GaIGBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZwE/mmrHGrzg8quN3M2ttt3p23R1oFXKNG8rqxD47jc=;
 b=IpJzCqIBUppgbM25LZVVgxrpblhCjrPV2oHwEIaT21dhyDvZEZmFwAFgENdWlfVL4h0XyWaSpM8YrO14und9UwIVCre4oKFfVcownIoS36/SfGoi4k+Pto4t/JnziQwH5d2t2VAbsvF/QHZilzkYcPvyh2xM7xiu0q0epnEW+JTdMCCLcnfEJlnL5TP6mwNilQpzcZobi+d2H794PE0tkmJV4bThHqNECgpUGD2PRkVEPLzCwA9Rq5/BwPJFAGcOXxmtaCNiCpJLlF3AAFIj3dbP3ifMiZONi859hhq4KmTbp6hZZoRnkZ4ksyVu+yfLghYk+jKfxP6vubNXbWQKcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZwE/mmrHGrzg8quN3M2ttt3p23R1oFXKNG8rqxD47jc=;
 b=jnTHWOW50KqeAYMTaqgRSDXaVXQB2Ha7VGyde68zB7xvyByZP/FCb40GIDpF8hGqX5A0Vx78AsIRPF1SAWpmnMpXZG7+VyJGEFghposRuv0W504oh6QSCVY4XevLRpIPzP1+IPWXF8OEe0ZPc5Pg8noyRm6h8qIxnF2IyqRe8P8=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4785.eurprd04.prod.outlook.com (20.176.215.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Sun, 23 Feb 2020 00:01:38 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.033; Sun, 23 Feb 2020
 00:01:38 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: RE: [PATCH 3/9] remoteproc: add support to skip firmware load when
 recovery
Thread-Topic: [PATCH 3/9] remoteproc: add support to skip firmware load when
 recovery
Thread-Index: AQHV5vbtBcsi7uUDB0+hcFvNM8RaVqgl/3AAgAHq/5A=
Date: Sun, 23 Feb 2020 00:01:38 +0000
Message-ID: <AM0PR04MB44810B020E8C4F099D8F47A588EF0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
 <1582097265-20170-4-git-send-email-peng.fan@nxp.com>
 <20200221184236.GA10368@xps15>
In-Reply-To: <20200221184236.GA10368@xps15>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [117.82.241.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 458ee98e-6f4e-45c7-31d9-08d7b7f38e25
x-ms-traffictypediagnostic: AM0PR04MB4785:|AM0PR04MB4785:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB478503D2AC58297EB7CA7D2188EF0@AM0PR04MB4785.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0322B4EDE1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(346002)(39860400002)(136003)(189003)(199004)(86362001)(52536014)(81166006)(8676002)(81156014)(8936002)(6916009)(7696005)(4326008)(54906003)(76116006)(66476007)(66946007)(66556008)(7416002)(5660300002)(71200400001)(316002)(64756008)(66446008)(6506007)(44832011)(26005)(186003)(2906002)(33656002)(55016002)(9686003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4785;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L2LsAKB3OMKFCfMX60UD+S3ROmC8lelaat7eu1NAJaE1hWPznZMAajG5yag9iKpZT5j5MDoqQr/lC6WfyfIbQ3PkBDF4hyohUgiEPxsW9yvhGXSEtgHhWhMEuN+JVZltwVCdlyrHFwLqg5k41wWPL6hU+I/2RaZNRtLVU9o7cLzcvtsSpxEHqhq055o/BGyb0H3AmleZtoJ7Uhof9LZhL7bFPfszkk+vaCQz1o0GfVspsVnXPFYgRDp5tqPvN0ZIKx2xZUhmvjNc4bGlWkkfliGaztBL8xGL2pYwMMVNRSl6UTTpVHxjwFyYFDb4rR2Y7CX9O2x0BEGAxsqvhnNkixaXTLM1dkV8e/w0LpsErs3/Utt/Y/LgG4/q6BC4NPOPjjb2S8K7n8k3N1xi7DCunfA3oMAufuAsFX/cf1awoWZZw00MACjUY01boDm+ZmBX
x-ms-exchange-antispam-messagedata: MF6f8pFJx4pAbTJ8sRbTCfGVGfkmTA6zqNG1sgfFzQbxT0wMoU/51bppjga26axigMQiMwfROJDzrQl985Vb7mt/f6SKxA5lZov6uvqOQCRaw2MJtY0Dlx2YGNHJxsyP+me2YqxiWKgJkJ7JwYKeHA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 458ee98e-6f4e-45c7-31d9-08d7b7f38e25
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2020 00:01:38.5073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GJovSucEXBk3laAdehfJbRjMtt0TrC5vFmIHN9HbTfPnHJTtrD9RDpkDGWg1YpoH94i3CGPPozgqLdHDRvx/SA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4785
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_160144_286797_59402424 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:613 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "ohad@wizery.com" <ohad@wizery.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

> Subject: Re: [PATCH 3/9] remoteproc: add support to skip firmware load when
> recovery
> 
> Hi Peng,
> 
> On Wed, Feb 19, 2020 at 03:27:39PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Remote processor such as M4 inside i.MX8QXP is not handled by Linux
> > when it is configured to run inside its own hardware partition by
> > system control unit(SCU). So even remote processor crash reset, it is
> > handled by SCU, not linux. To such case, firmware load should be
> > ignored, So introduce skip_fw_load_recovery and platform driver should
> > set it if needed.
> 
> For now I will not comment on the code - I just need clarifications on the
> scenario.
> 
> In the specific case you are trying to address here, I understand that when the
> M4 crashes, the SCU will recognize that and reload the MCU firmware. Does
> the SCU also start the MCU or is that left to the remoteproc subsystem?

SCU starts M4. Linux has no permission to start/stop M4 from hardware
perspective with hardware partition feature enabled.

Regards,
Peng.

> 
> Thanks,
> Mathieu
> 
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
> > --
> > 2.16.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
