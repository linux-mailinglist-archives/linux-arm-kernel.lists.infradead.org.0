Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56C25C895
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 07:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbRRFvRGESRywofjmt9CNNDPDoCo6gMaRa0xuMAaMIc=; b=G4QnJpuQ6XbHY3
	xkOF6wE4SMyybvJWztqedmc7QdBNwIewl6mjYS4LRLrtVChRxDVFY+7UYe+jbGsywNU8Her9hZqf3
	4AugYPJKLaY6VkKyfx6m6gu7ysrOJrtDZw69OXLnU1wbeIqId8Jh+xRfl3aMtWbzQAvYtVkYw2yY0
	S3wpQvfE2AR6fXcAr858+HAFI9nQ0GI51w7Imij+CFwdCIaH1/ehhnRV9UNEZWXwRMXJW6iVpmtTe
	ZAGWSJ4qs6NZjfjLicvFNShfY0mMZ0pwzIO9a+RZ55wHPKw3ipAqkNbusotyIgqj9a8yGViNcItIU
	Q7pc7TUDRceAByV7iidQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiAxN-0001jX-Te; Tue, 02 Jul 2019 05:03:53 +0000
Received: from mail-eopbgr820055.outbound.protection.outlook.com
 ([40.107.82.55] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiAxB-0001io-Hf; Tue, 02 Jul 2019 05:03:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=T/jtYkLUmd9vp+0S+Sl9IHcdUzIaBZfHmOOncrQLtH9Kjyg8BT5o9GGZf4HQWur5hSlLeCb7/fnEkiESGRDfJeHkYJrG9KwPPr8DCTYjzdZthTRD0DSXAucEJl3Z1dqZ7NsK8nf8/aF02vtPQOU+eh/EL7E7eWU6QDOx/a4AyGQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q9tjPnojdKxr0Bp4Q+c4jyY/pkhQslgoo3EupspDCIQ=;
 b=TpARg9e4Jm+jSc5GWceM8TZs/CeUg6Vipf1FxBIJRCWWMc9L4ObsaG5FtY5DR/mBT+qtZoceOM4ouqJ65PVaeUj1jypzkFM5YdJW2qfV8dyAV11IN2bHH6cPugPoF+n5C+B0uCpxJOIMC8trvhaPTmg01gxqB4ndzNUEW+nuoAw=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q9tjPnojdKxr0Bp4Q+c4jyY/pkhQslgoo3EupspDCIQ=;
 b=eezTsubU3xB1C+Fyvg2vZYBBRnSrQO1DDf6O9QiMx6kriMK+kkf/sSlA7UXnz01G0k9suWRqvPNRM+Up+798h178F8KtabbmebCLR2xsWC9VlpbuyV5YWIqDOsiItJblgIX5qQ7UJzMYXMdrSI1bThcgcmN+/xzXPt+EXU845FQ=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (10.255.7.10) by
 MN2PR02MB6206.namprd02.prod.outlook.com (52.132.174.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 2 Jul 2019 05:03:36 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e880:6205:6aac:21a3]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e880:6205:6aac:21a3%7]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 05:03:35 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Jolly Shah <JOLLYS@xilinx.com>, "ulf.hansson@linaro.org"
 <ulf.hansson@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "heiko@sntech.de"
 <heiko@sntech.de>, Michal Simek <michals@xilinx.com>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "christoph.muellner@theobroma-systems.com"
 <christoph.muellner@theobroma-systems.com>,
 "philipp.tomsich@theobroma-systems.com"
 <philipp.tomsich@theobroma-systems.com>, "viresh.kumar@linaro.org"
 <viresh.kumar@linaro.org>, "scott.branden@broadcom.com"
 <scott.branden@broadcom.com>, "ayaka@soulik.info" <ayaka@soulik.info>,
 "kernel@esmil.dk" <kernel@esmil.dk>, "tony.xie@rock-chips.com"
 <tony.xie@rock-chips.com>, Rajan Vaja <RAJANV@xilinx.com>, Nava kishore Manne
 <navam@xilinx.com>, "mdf@kernel.org" <mdf@kernel.org>, "olof@lixom.net"
 <olof@lixom.net>
Subject: RE: [PATCH v2 09/11] firmware: xilinx: Add SDIO Tap Delay APIs
Thread-Topic: [PATCH v2 09/11] firmware: xilinx: Add SDIO Tap Delay APIs
Thread-Index: AQHVL84JeVHP4kxP9EW6vgtCTZmvBKa2D8GAgAC2MfA=
Date: Tue, 2 Jul 2019 05:03:35 +0000
Message-ID: <MN2PR02MB6029CA4163882081D7B8C255C1F80@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
 <1561958991-21935-10-git-send-email-manish.narani@xilinx.com>
 <BYAPR02MB599224BA6280EDF56870E1D8B8F90@BYAPR02MB5992.namprd02.prod.outlook.com>
In-Reply-To: <BYAPR02MB599224BA6280EDF56870E1D8B8F90@BYAPR02MB5992.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d689439-5e58-4f4a-5fc4-08d6feaaa36a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB6206; 
x-ms-traffictypediagnostic: MN2PR02MB6206:
x-microsoft-antispam-prvs: <MN2PR02MB6206382EFADCB53844F872DDC1F80@MN2PR02MB6206.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(366004)(39860400002)(396003)(346002)(13464003)(189003)(199004)(3846002)(53546011)(110136005)(6506007)(446003)(102836004)(66066001)(4326008)(54906003)(11346002)(68736007)(486006)(9686003)(76176011)(52536014)(66946007)(5660300002)(7416002)(6246003)(53936002)(2501003)(74316002)(316002)(64756008)(7696005)(476003)(76116006)(66556008)(66476007)(73956011)(99286004)(6436002)(66446008)(72206003)(55016002)(186003)(305945005)(86362001)(33656002)(2906002)(229853002)(14444005)(256004)(6116002)(2201001)(81166006)(81156014)(8676002)(26005)(14454004)(8936002)(25786009)(7736002)(478600001)(71190400001)(71200400001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6206;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zcCQ7JvN2YlxD0Y9rBA4O2Y7mSXWI933wUOE+uL16YsrqVKxxA+I+06n+YrgAy0M9ht0QglfO+EmQZJxPdtFfh3F+czUefQs97PYoqn0HDO9vPF5JAlL/IIRBWzFtfPAifUoaMuAv74hEfhu31TiqDTckmkECx7dAvc6QUCuugeaF3i1uoP1z8h4CFP+z2qU+oYk7xCwVSiNAoiIAV9JFaIsPi++FMN1ctT1PjWxneaeQ2fLRi4SXMKOrFUZTfvMw2VAPtbANxNSUceat26Q0dosfDt2gdSKZERZrvbVp/htAouZ2wRRILdv+PI2MK1R8tgWAtPnoklyiJa7XSIDSrf7LyhAOlkyso0nAnS7KpwkGgyijyq6WpmkJ+6aW/ynDur8ewf2Fsyl0zqrx0A8l+4BUbaDoEuugm2W5y3x63A=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d689439-5e58-4f4a-5fc4-08d6feaaa36a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 05:03:35.7397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mnarani@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6206
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_220341_669233_60AEA59F 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.55 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jolly,


> -----Original Message-----
> From: Jolly Shah
> Sent: Monday, July 1, 2019 11:36 PM
> To: Manish Narani <MNARANI@xilinx.com>; ulf.hansson@linaro.org;
> robh+dt@kernel.org; mark.rutland@arm.com; heiko@sntech.de; Michal Simek
> <michals@xilinx.com>; adrian.hunter@intel.com;
> christoph.muellner@theobroma-systems.com; philipp.tomsich@theobroma-
> systems.com; viresh.kumar@linaro.org; scott.branden@broadcom.com;
> ayaka@soulik.info; kernel@esmil.dk; tony.xie@rock-chips.com; Rajan Vaja
> <RAJANV@xilinx.com>; Nava kishore Manne <navam@xilinx.com>;
> mdf@kernel.org; Manish Narani <MNARANI@xilinx.com>; olof@lixom.net
> Cc: linux-mmc@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> rockchip@lists.infradead.org
> Subject: RE: [PATCH v2 09/11] firmware: xilinx: Add SDIO Tap Delay APIs
> 
> Hi Manish,
> 
> > -----Original Message-----
> > From: Manish Narani <manish.narani@xilinx.com>
> > Sent: Sunday, June 30, 2019 10:30 PM
> > To: ulf.hansson@linaro.org; robh+dt@kernel.org; mark.rutland@arm.com;
> > heiko@sntech.de; Michal Simek <michals@xilinx.com>;
> > adrian.hunter@intel.com; christoph.muellner@theobroma-systems.com;
> > philipp.tomsich@theobroma-systems.com; viresh.kumar@linaro.org;
> > scott.branden@broadcom.com; ayaka@soulik.info; kernel@esmil.dk;
> > tony.xie@rock-chips.com; Rajan Vaja <RAJANV@xilinx.com>; Jolly Shah
> > <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>;
> > mdf@kernel.org; Manish Narani <MNARANI@xilinx.com>; olof@lixom.net
> > Cc: linux-mmc@vger.kernel.org; devicetree@vger.kernel.org; linux-
> > kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > rockchip@lists.infradead.org
> > Subject: [PATCH v2 09/11] firmware: xilinx: Add SDIO Tap Delay APIs
> >
> > Add APIs for setting SDIO Tap Delays on ZynqMP platform.
> >
> > Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> > ---
> >  drivers/firmware/xilinx/zynqmp.c     | 48
> > ++++++++++++++++++++++++++++++++++++
> >  include/linux/firmware/xlnx-zynqmp.h | 15 ++++++++++-
> >  2 files changed, 62 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/firmware/xilinx/zynqmp.c
> b/drivers/firmware/xilinx/zynqmp.c
> > index fd3d837..b81f1be 100644
> > --- a/drivers/firmware/xilinx/zynqmp.c
> > +++ b/drivers/firmware/xilinx/zynqmp.c
> > @@ -664,6 +664,52 @@ static int zynqmp_pm_set_requirement(const u32
> > node, const u32 capabilities,
> >  				   qos, ack, NULL);
> >  }
> >
> > +/**
> > + * zynqmp_pm_sdio_out_setphase() - PM call to set clock output delays for
> SD
> > + * @device_id:		Device ID of the SD controller
> > + * @tap_delay:		Tap Delay value for output clock
> > + *
> > + * This API function is to be used for setting the clock output delays for SD
> > + * clock.
> > + *
> > + * Return: Returns status, either success or error+reason
> > + */
> > +static int zynqmp_pm_sdio_out_setphase(u32 device_id, u8 tap_delay)
> > +{
> > +	u32 node_id = (!device_id) ? NODE_SD_0 : NODE_SD_1;
> > +	int ret;
> > +
> > +	ret = zynqmp_pm_ioctl(node_id, IOCTL_SET_SD_TAPDELAY,
> > +			      PM_TAPDELAY_OUTPUT, tap_delay, NULL);
> > +	if (ret)
> > +		pr_err("Error setting Output Tap Delay\n");
> > +
> > +	return ret;
> > +}
> > +
> > +/**
> > + * zynqmp_pm_sdio_in_setphase() - PM call to set clock input delays for SD
> > + * @device_id:		Device ID of the SD controller
> > + * @tap_delay:		Tap Delay value for input clock
> > + *
> > + * This API function is to be used for setting the clock input delays for SD
> > + * clock.
> > + *
> > + * Return: Returns status, either success or error+reason
> > + */
> > +static int zynqmp_pm_sdio_in_setphase(u32 device_id, u8 tap_delay)
> > +{
> > +	u32 node_id = (!device_id) ? NODE_SD_0 : NODE_SD_1;
> > +	int ret;
> > +
> > +	ret = zynqmp_pm_ioctl(node_id, IOCTL_SET_SD_TAPDELAY,
> > +			      PM_TAPDELAY_INPUT, tap_delay, NULL);
> > +	if (ret)
> > +		pr_err("Error setting Input Tap Delay\n");
> > +
> > +	return ret;
> > +}
> > +
> >  static const struct zynqmp_eemi_ops eemi_ops = {
> >  	.get_api_version = zynqmp_pm_get_api_version,
> >  	.get_chipid = zynqmp_pm_get_chipid,
> > @@ -687,6 +733,8 @@ static const struct zynqmp_eemi_ops eemi_ops = {
> >  	.set_requirement = zynqmp_pm_set_requirement,
> >  	.fpga_load = zynqmp_pm_fpga_load,
> >  	.fpga_get_status = zynqmp_pm_fpga_get_status,
> > +	.sdio_out_setphase = zynqmp_pm_sdio_out_setphase,
> > +	.sdio_in_setphase = zynqmp_pm_sdio_in_setphase,
> 
> Are these eemi APIs? You are using ioctl eemi api to set the delay.

Yes, I am making these eemi APIs and calling ioctl API from these. This is to make the SD driver code more readable.

Thanks,
Manish

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
