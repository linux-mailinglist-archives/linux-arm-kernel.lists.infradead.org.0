Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4B617D792
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 01:47:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zysAuJqN6Xn4rK9CCUfpDL5AcXsderZ8mvZnjcwb2GA=; b=PcpA8vfHLJcMzV
	nYHWffjDJol1FUA41ke3k6B41R7RkuqUulHSsPFxcY6mQYidLr64oaqcvDE/WZ3kXYidzFMB/3XP9
	1ijm5WzNE0/1Uiy+p+itut/7VKlcRV0aJzIhIiRm/wIdvsyzXlcMdk9yFlIZ+ctEeA4HVlth6phsT
	89D4nOccq7HQYwEyWmyPO1RP+9v3Bh5vXP77OMOzSRKP0bFoJHtC8VzI5gVw5iVaSAt7LkXq5x9hG
	NWCGKF/OfT7jzgErdr3ByD9HrgCz/If4W5uijyoLoX5hLmtmpcrqBfjCEuWED9YFsVbHbfxI9amID
	dk6wucjrv398+RpZP7Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB6ZY-0007Jf-Ds; Mon, 09 Mar 2020 00:47:08 +0000
Received: from mail-eopbgr80053.outbound.protection.outlook.com ([40.107.8.53]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB6Y5-0005tV-8d
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 00:45:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UH7iAURSpw39b8JPLJ5h9YaMn60Yu5Gxox2LcWqf1Xu1bE6q7pOVLJ7MMAVGFjYbXGaxTdPZeBQqfDTHFQf4hl96kHLk4Rui9ffeOqGaQzuPOrbiHjGeeAaAJUWradhmKF/oQgKTitkeX3cbOKJBbUXeVvjIiHu7O8+dSLyUZ/ADx01QSixv5TNtrzTryEug9fKiZRVm1TcKXElODCa1163y6CtA8XTMr1zexY9KbQuPdiPD+7GrIeXMpKDjyla5SVttmAPgpMwTDi1z5hcexOL6yMraOjpJfYFtWxCDLl6rChf0Ps+MEcTXEZEll662BmnO/PfZn9pH2hKAJjygiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ZYlF98l73Xk1yo7Rhbc2KoRItKsdu1F7yHHdelc+eY=;
 b=cWz+MKr13ZctPUlWFNcwcMO4ER8aqND3TJXWqseSQCGtC5OmniwlUmd5UPxoq0budCKRroXA5e5LSMYnZJ+zGnW1V6+BtYUDXnqOFve35vBAzmK5notr6yxKUVsGB3kTCbLY1msKi4MJFRin3YpKtQ88P6aR6NiVuVuKJ+IAw9refkBLac7M9r7x0ZaEgNK9Mimb5wLg+SL7Yz4NXtvT+DLEVeTGTtsIsLNwKjUvWjdCV5uvoHPIqN+cR4xq5UP86JQPOI5u0AoVmcJLdsr6SAtj1AxXkSemjn+z5z26O9KyODAfApyBviXqeeX3+QMuNFp1LDMxYLdadd5KYLHrjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ZYlF98l73Xk1yo7Rhbc2KoRItKsdu1F7yHHdelc+eY=;
 b=H/6vRhTwITjSysWJJuYIUWWEDUXwWW7VmvsB5idKJuPXDt4l/HiX/BRgy1ZCmRDgMdJkflE2VCWuU3UBbjYbDPVPiEwn8jV5Km7xh/4ZDq8IgarRewvc2cW/D60HiYwyfmo2E9UXIPfRNAXYl1vIv4zTphEJJsOwybHRNu5QLR4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3897.eurprd04.prod.outlook.com (52.134.73.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Mon, 9 Mar 2020 00:45:27 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 00:45:27 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Guenter Roeck <linux@roeck-us.net>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "dmitry.torokhov@gmail.com"
 <dmitry.torokhov@gmail.com>, "a.zummo@towertech.it" <a.zummo@towertech.it>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "amit.kucheria@verdurent.com"
 <amit.kucheria@verdurent.com>, "wim@linux-watchdog.org"
 <wim@linux-watchdog.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "m.felsch@pengutronix.de"
 <m.felsch@pengutronix.de>, "andriy.shevchenko@linux.intel.com"
 <andriy.shevchenko@linux.intel.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "robh@kernel.org" <robh@kernel.org>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "ronald@innovation.ch" <ronald@innovation.ch>,
 "krzk@kernel.org" <krzk@kernel.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-input@vger.kernel.org"
 <linux-input@vger.kernel.org>, "linux-rtc@vger.kernel.org"
 <linux-rtc@vger.kernel.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>, "linux-watchdog@vger.kernel.org"
 <linux-watchdog@vger.kernel.org>
Subject: RE: [PATCH V2 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Topic: [PATCH V2 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU case
Thread-Index: AQHV9CBLTCB9eihrjkCYi2RNsTJEoqg/Y1uAgAAMPsA=
Date: Mon, 9 Mar 2020 00:45:27 +0000
Message-ID: <DB3PR0402MB3916F180023599ED4A983384F5FE0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1583544359-515-1-git-send-email-Anson.Huang@nxp.com>
 <63862bdf-874f-86d3-3bb5-b41185efffe1@roeck-us.net>
In-Reply-To: <63862bdf-874f-86d3-3bb5-b41185efffe1@roeck-us.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 34605ca5-822f-42bf-c6a5-08d7c3c32967
x-ms-traffictypediagnostic: DB3PR0402MB3897:|DB3PR0402MB3897:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38971F0DC5BECD0BBDC0D824F5FE0@DB3PR0402MB3897.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0337AFFE9A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(366004)(346002)(39860400002)(136003)(189003)(199004)(55016002)(81156014)(53546011)(33656002)(86362001)(81166006)(4326008)(7416002)(7696005)(9686003)(6506007)(8676002)(110136005)(52536014)(186003)(5660300002)(316002)(66556008)(66946007)(76116006)(64756008)(66446008)(71200400001)(44832011)(2906002)(8936002)(478600001)(26005)(66476007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3897;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MltNxdzNZzVv3au0ow2A2tTKaqp4dlSDABEsWLk4K1x2N4gzi+GLS01rLYQiMsb867z7STu7sqSCY0IyKsV4ZfghuBzBN2o5DOKXZU3n1j6Cvn4wzDvniCU7qyDVeSCbPEa//JEpV+OI69FmZYMJDDZHhp0p8NaZ2hbN22K4K1/yWMtGB42C67JumBIqX10GrivwDBYgGUB11H+QF3olOW9i/T8xyLDedUDBOLxg6o8Y0P/Wbi0oEJZLl7GJTKlfmPfv41aGeYDhRCyfZwmkk8KqErQJ+H2oRJbIDdsHhKicajMhXwBgq3prskFWVrWQoBniMEiEXX/Lm7RC8GTLOAejsrl1kCi5T2dgIMi5lYVoYA7HsDxWoWiI3VOqJaYhj5+7VHBkiZZVyEhSMFZAk7Z2uygaDJUuw3NQGb9/cyDMS2b+ga3+lcE+16z/ynakKK63XSkdIydra4T0d6JrsiV/kJgRby78NNc5Nmp3IS0ZO0DeP/mMSgQt6+BRFWKa
x-ms-exchange-antispam-messagedata: YU58KKl3vaoVxREzRLp5YFXeN3UFbUkJ2Pby+hAy93gaWCSUVVs8EBDlL1cDBUEh/afcoemJahS90JIDdnNXuGzPxkyzs0wS+ClH1trOxH9BfkSjsqahoe0VjaasD0v+ixGLtW6MCNRjjQfNQb3Qjw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34605ca5-822f-42bf-c6a5-08d7c3c32967
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2020 00:45:27.4821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UPquhdx4QlX7BKfZJKfSskTPlUvBD+ETs5nNWalIRr7AbS80ykmNn+5GK4AAg8Af3NNE86eYwhBcnwFoCu2Bdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3897
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_174537_436333_B9A3BD26 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Guenter

> Subject: Re: [PATCH V2 1/7] firmware: imx: Add stubs for !CONFIG_IMX_SCU
> case
> 
> On 3/6/20 5:25 PM, Anson Huang wrote:
> > Add stubs for those i.MX SCU APIs to make those modules depending on
> > IMX_SCU can pass build when COMPILE_TEST is enabled.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > new patch.
> > ---
> >  include/linux/firmware/imx/ipc.h | 11 +++++++++++
> > include/linux/firmware/imx/sci.h | 19 +++++++++++++++++++
> >  2 files changed, 30 insertions(+)
> >
> > diff --git a/include/linux/firmware/imx/ipc.h
> > b/include/linux/firmware/imx/ipc.h
> > index 8910574..3fff0e2 100644
> > --- a/include/linux/firmware/imx/ipc.h
> > +++ b/include/linux/firmware/imx/ipc.h
> > @@ -34,6 +34,7 @@ struct imx_sc_rpc_msg {
> >  	uint8_t func;
> >  };
> >
> > +#ifdef CONFIG_IMX_SCU
> >  /*
> >   * This is an function to send an RPC message over an IPC channel.
> >   * It is called by client-side SCFW API function shims.
> > @@ -55,4 +56,14 @@ int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void
> *msg, bool have_resp);
> >   * @return Returns an error code (0 = success, failed if < 0)
> >   */
> >  int imx_scu_get_handle(struct imx_sc_ipc **ipc);
> > +#else
> > +static inline int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void *msg,
> > +bool have_resp) {
> > +	return 0;
> > +}
> > +static inline int imx_scu_get_handle(struct imx_sc_ipc **ipc) {
> > +	return 0;
> > +}
> > +#endif
> >  #endif /* _SC_IPC_H */
> > diff --git a/include/linux/firmware/imx/sci.h
> > b/include/linux/firmware/imx/sci.h
> > index 17ba4e4..4688b60 100644
> > --- a/include/linux/firmware/imx/sci.h
> > +++ b/include/linux/firmware/imx/sci.h
> > @@ -16,8 +16,27 @@
> >  #include <linux/firmware/imx/svc/misc.h>  #include
> > <linux/firmware/imx/svc/pm.h>
> >
> > +#ifdef CONFIG_IMX_SCU
> >  int imx_scu_enable_general_irq_channel(struct device *dev);  int
> > imx_scu_irq_register_notifier(struct notifier_block *nb);  int
> > imx_scu_irq_unregister_notifier(struct notifier_block *nb);  int
> > imx_scu_irq_group_enable(u8 group, u32 mask, u8 enable);
> > +#else
> > +static inline int imx_scu_enable_general_irq_channel(struct device
> > +*dev) {
> > +	return 0;
> > +}
> > +static inline int imx_scu_irq_register_notifier(struct notifier_block
> > +*nb) {
> > +	return 0;
> > +}
> > +static inline int imx_scu_irq_unregister_notifier(struct
> > +notifier_block *nb) {
> > +	return 0;
> > +}
> > +static inline int imx_scu_irq_group_enable(u8 group, u32 mask, u8
> > +enable) {
> > +	return 0;
> > +}
> 
> It would probably be more appropriate to return errors from the stub
> functions.

Agreed, improve them in V3 patch series.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
