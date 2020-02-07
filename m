Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5921550A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 03:16:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iu9aPz5ThKJJmPcvQK33ZxoD8tzeoZ0ofSM1CjHjhRM=; b=GzIIzSuWndU2vl
	JT+nhonrlniVXo6htQX4qjrn/7z/azE500v/4e72bZCXcmrPzfTsiWpDOC7DH84tKRAvvkuXkNwWW
	uTw3O4OQNuIZ5pBvtj8hNsyp0Uf/B7zK1FyW3s8PUznfu27x+nPwwbzkKpP5k57GczTy/UkmiASQ5
	iMRuzkykJreBmK0eh5L53/S58mezHKQ5Iv2TAbFhdNA/w7eHJ9LqywD8wVLVCGj4EQYNK+1tUqxf+
	re2ugzncUW4u8Q1zNhDzpb57ZNpH+ZC+8tGXV4p7xOXgBtu372hILJ5+pQFlTYXVuWXF3hXZmGeOU
	VwQyicG72SpoMxbK9Dkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iztBt-00051M-Ow; Fri, 07 Feb 2020 02:16:21 +0000
Received: from mail-eopbgr70070.outbound.protection.outlook.com ([40.107.7.70]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iztBm-000504-4R
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 02:16:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FTZtI7ZmZv9K3HbRw/KwasNDKcToG/ufKeCJfDs2XKh830IaXTVfMlOkbrWlnDxYfuUbxOivdoCloPyGqRswaf5ko4X3expkwyLKHpeTyY67/hUK12tw6hm9n9NDh+DPh6FISlFfX1f6PJgPHvANc+4D9DmgH8fkw/OhJUdBEjxtJ0Ft1RPMEGI1x9eiDYv2aDzZi+OnFfsYYKCFGLwPxmheR5QU+XCnvEcHedp/8yMLtBHzThqWdRG/f9T68dd7ocZm5W1JOSLdgs/iEUhYVoBHLupkTlGHNAzQj2xhau46ptn87+qpObyadF7A3wZoVhOy8XVfiIqwu25yVR7Qyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dLPdVFnrQtiq9mtFw++tvHD9dlYAIDzdaZU8wgIBhYc=;
 b=ZxxsTlu07K/T4XZvYjXNR1JgQ3mvnRZvg803OdqyXs4+vQkoldO4UYZL6fa4QQ00fUza2UmAX5jRRVO2kotMF8fpluc5cdDBOW6E/3EO99U0tb1PC15QUJhnjqTDLEbkiA8WZrlO/jBtYUh2UFzAbmgAEuWxo1bkMYVEkMiBKRvRJaOMoIJrqOr/AYiZAY6bhfoOEXwDENpF/+I+oSZvAwJrRKI26Tfn5Gw8z2KFX7yjy/YREXa3lpIKc/FqB3K/DBCKun2BU6P/tdbGEaYZVbSd0ahif9lrleuj13mA+HuVLB1IIpjRubFD4+pGCtbzgfop7ZG6SVJP9SXVwpLzXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dLPdVFnrQtiq9mtFw++tvHD9dlYAIDzdaZU8wgIBhYc=;
 b=aCOz3wD19/M9qV2/12PIj/jpa2ETDw0oKuY1f/bMfSVxPh/ILQUIzXeDWMXLoRUGb/cSRgHDJTOTW0eCUB82IvYvsyFZtwzPXqx6nmGUIi9sPgsHk6UEx/6yQ/d1lmbNy2BQ1qcC6OCH2LMoSelAZsQXzlYaPAbciHVtd1oFNIA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6962.eurprd04.prod.outlook.com (52.132.214.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.24; Fri, 7 Feb 2020 02:16:04 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.020; Fri, 7 Feb 2020
 02:16:04 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH 2/2] firmware: arm_scmi: mark channel free when init
Thread-Topic: [PATCH 2/2] firmware: arm_scmi: mark channel free when init
Thread-Index: AQHV3O25X/FFlEFpBUK1Q7PthmZs26gOOvqAgADCJ6A=
Date: Fri, 7 Feb 2020 02:16:04 +0000
Message-ID: <AM0PR04MB44817B64CB35B2B2FB50D8F7881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1580993846-17712-1-git-send-email-peng.fan@nxp.com>
 <1580993846-17712-2-git-send-email-peng.fan@nxp.com>
 <20200206143337.GC3383@bogus>
In-Reply-To: <20200206143337.GC3383@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 126afa4f-9721-4db3-bbdb-08d7ab73af6d
x-ms-traffictypediagnostic: AM0PR04MB6962:|AM0PR04MB6962:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6962E50A9D1A286E172A0490881C0@AM0PR04MB6962.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0306EE2ED4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(366004)(346002)(376002)(199004)(189003)(6506007)(81166006)(81156014)(8676002)(44832011)(54906003)(316002)(66476007)(64756008)(66556008)(52536014)(5660300002)(71200400001)(66446008)(8936002)(66946007)(76116006)(6916009)(55016002)(4326008)(7696005)(9686003)(33656002)(2906002)(86362001)(26005)(186003)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6962;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /PowTgFWjOzezxxbJEwV+xIvXP1U0TwrHiqvLNW2PqExNYXuAZxm9JAmBmyFY8WFjHPiN6of13ztZba7DdlxaaUfHnrvR7zp2Q7c8CcEZTCC7yzAYdql6P7lZc9LkSUmYCM5LUhHNuFAdp5LjD/B820oLzvPqx2Hxivgz+WMVjXT3lD0wUZ3JZhyuMFGeuS5qMKOFYtgNDWR/7FDSwIzLYSnw/LK2PAWQ5WOobN9FHRExo4JcxHre53SbtDrS6Kkr0XjJvfh7mGcJ8PQTRgZKJgh4B88W7rQ8TvbLa9pSbDxskWOeyFFdBdMfDV/fKxEgABc6nmmxtjMjYhMAP36IVg/nMiE47lXUFHHKipqp0rfkT2fEV6gRsvsuOX9Zq8WpRFiFwTpL2LimuXcn44aEA1hA7AWK+DnF+sqRoUB1XHSvlxbXGB3LPgty3S/onv7
x-ms-exchange-antispam-messagedata: MGmcEwtdUGzQABjUgiyoeWO+k0Hdsqz9kxa1Dq1Mo/YmxIbg98kzHfoB6Ip3V2pclratrosHmW2Hxsjhl4qfOQVzamHo1yUAn2qPPXcAvgc0w7ybt6lMW7yj6DxTtCN6ihP8ecNo1r4NIqbJAfIxXg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 126afa4f-9721-4db3-bbdb-08d7ab73af6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2020 02:16:04.7678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZtH6F7wPBTpWIlELwzlkNzmeVhN3nCh1KqePFtQMbIwqrx6OsB6ovzQrg10BHJYwRqgHmv1cjPyGu8LuinGRtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6962
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_181615_270978_649CE424 
X-CRM114-Status: GOOD (  19.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>, "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Subject: Re: [PATCH 2/2] firmware: arm_scmi: mark channel free when init
> 
> On Thu, Feb 06, 2020 at 08:57:26PM +0800, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > The firmware itself might not mark channel free, so let's explicitly
> > mark it free when do initialization.
> >
> > Also move struct scmi_shared_mem to common.h
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  drivers/firmware/arm_scmi/common.h  | 19 +++++++++++++++++--
> > drivers/firmware/arm_scmi/mailbox.c |  2 ++
> >  drivers/firmware/arm_scmi/shmem.c   | 18 ------------------
> >  3 files changed, 19 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/firmware/arm_scmi/common.h
> > b/drivers/firmware/arm_scmi/common.h
> > index fd091a4ccbff..5df262a564a4 100644
> > --- a/drivers/firmware/arm_scmi/common.h
> > +++ b/drivers/firmware/arm_scmi/common.h
> > @@ -211,8 +211,23 @@ extern const struct scmi_desc scmi_mailbox_desc;
> > void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr);
> > void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr,
> > int id);
> >
> > -/* shmem related declarations */
> > -struct scmi_shared_mem;
> > +/*
> > + * SCMI specification requires all parameters, message headers,
> > +return
> > + * arguments or any protocol data to be expressed in little endian
> > + * format only.
> > + */
> > +struct scmi_shared_mem {
> > +	__le32 reserved;
> > +	__le32 channel_status;
> > +#define SCMI_SHMEM_CHAN_STAT_CHANNEL_ERROR	BIT(1)
> > +#define SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE	BIT(0)
> > +	__le32 reserved1[2];
> > +	__le32 flags;
> > +#define SCMI_SHMEM_FLAG_INTR_ENABLED	BIT(0)
> > +	__le32 length;
> > +	__le32 msg_header;
> > +	u8 msg_payload[0];
> > +};
> >
> >  void shmem_tx_prepare(struct scmi_shared_mem __iomem *shmem,
> >  		      struct scmi_xfer *xfer);
> > diff --git a/drivers/firmware/arm_scmi/mailbox.c
> > b/drivers/firmware/arm_scmi/mailbox.c
> > index 68ed58e2a47a..2d34bf6e94e2 100644
> > --- a/drivers/firmware/arm_scmi/mailbox.c
> > +++ b/drivers/firmware/arm_scmi/mailbox.c
> > @@ -104,6 +104,8 @@ static int mailbox_chan_setup(struct
> scmi_chan_info *cinfo, struct device *dev,
> >  	cinfo->transport_info = smbox;
> >  	smbox->cinfo = cinfo;
> >
> > +	iowrite32(BIT(0), &smbox->shmem->channel_status);
> > +
> 

+arm list

> If we need this then we may need to put this as a function in shmem.c I am
> still not convinced if we can do this unconditionally, i.e. will that affect Rx
> channel if there's notification pending before we initialise. But we can deal
> with that later.

Per understanding, channel is specific to an agent, it could not be shared.
So the shmem binded to the channel will not be used by others.

Since this is the initialization process, the firmware might not init the shmem.

The shmem.c shmem_tx_prepare will spin until channel free, so I did the patch.
Otherwise it might spin forever.

I'll add a check as following
if (tx)
 iowrite32(BIT(0), &smbox->shmem->channel_status);

I not find a good place to put this in shmem.c (:

> 
> Also what about error fields ? I would rather clear it to 0, not just BIT(0)

Tx channel error should also be cleared, fix in v2.

Thanks,
Peng

> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
