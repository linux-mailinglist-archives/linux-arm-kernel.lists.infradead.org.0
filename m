Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAA21555FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 11:44:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8Vf+tRIn3na4RewcLG2QxYSTBIKW2/lDojQ09VYHGE=; b=ptVzJq5wKoJ4Ih
	Oikkjgu1tsN5+rSizvSXpD+yJ8qSOhR07E6V2Rhp+QQZfnNe6h/g87sRJkrLbxm9SSq/pmKvcBe6i
	1kQzSHIa2FZnWveJ2JHjkZ6/bcl+EE1O/qzliFxHdeBZ2bS6Li7XbPSvujpAmTPNVIfH1dd0QTBnA
	1W640PEwS8WtAs3xhjaIBHFAncqqPwp7sgMz5LK+M3+C6yg+MYA859fzT2IKJpwK2yxheMMGl1rsK
	Y8DyfJEfgxfcZh6KU3kGjf8fsk7uI1QYhmSqLeyDn4UQuiK+z38nzMdLmS6X/AnrjEoCWSbAHtTLj
	TZ9vxng2bxZqZD6LEdog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j017Q-00049B-EE; Fri, 07 Feb 2020 10:44:16 +0000
Received: from mail-db8eur05on2086.outbound.protection.outlook.com
 ([40.107.20.86] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j017H-00048g-VS
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 10:44:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TB7f304UTGB6HRtylE7PM8t7Y7wex/04yhMzrXJ4WTKXL+mmxr2ojbZ8fRHf1Ljdt930YZM9vhLmIHe1ArNcGzg5sIBwBfjrQ/LmeNYAsRp6ddiPx6MdFJpvan4yHIa+QL3v6bA5n+gXnG01hq0SrIsduTh8SC8vNuccDynCN3tQPMyVNT4gDfXdIfoyLPjVvthHcpKydGr915389U6OAM4yeLe1gsIjjPWmLp1uO8wXPRPodcdEJQFqPOYNGLfGoJnze9Wki3kDOho8C58dyXNPeY5or3gGOakfropX+E6Nh/g/RAcpQohHJVnUc0/mcHB6Pf5GsH5gQQc6duFrSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YXeWnBcngxw1tEfH0HIbgxBWm/wC0fIMDiujUK35Ys8=;
 b=Wi7cmO1A85uuyCRKBaSnzBW0QxIK0DgsVHwmkVrnL4EldCNbQHRJcUi2w8my99T0g8rdd1oWuSRLxnf6ljyGw4+ueIYF49KTfoO9/T+BR1iY3oup/jFk/IcxuDVlAegGLIS7wDZOUezxCv3NG8J1zVdOa57degPyf4aOWJKf5ESUx01rTfmuigbBGxAFuS4R7eqdEwr6+a3pLnL4Ztny++BJBStQ5P7vCyRDzwSA7qhyepCB5iyMeL+5QxKxgRA67BszB0kdrCO9quKDasgs5a0cPh6MhuGnsPEG6NAH/y/pxe7qnFf8gk+2HK9YLvVVoxKLbSP5tNvFamQjehxX7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YXeWnBcngxw1tEfH0HIbgxBWm/wC0fIMDiujUK35Ys8=;
 b=Ps0DZYSGiaZGkzGlq6XOam6t86JeswEuS+XuKEMCu/ioppyHXCxdKeMEX3FcRqjMSlXJ6lsZhDP29O0ufLpB+Z0pIrXnB6gxTxWs1nwbG9nNKE3wL1VUzUoRSxbDi1rTjclX5UyMudqhWKkP+9UdcsxXJSIGFb30JkA2g9oORio=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4129.eurprd04.prod.outlook.com (52.134.95.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Fri, 7 Feb 2020 10:44:04 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.024; Fri, 7 Feb 2020
 10:44:04 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: RE: [PATCH 2/2] firmware: arm_scmi: mark channel free when init
Thread-Topic: [PATCH 2/2] firmware: arm_scmi: mark channel free when init
Thread-Index: AQHV3O25X/FFlEFpBUK1Q7PthmZs26gOOvqAgADCJ6CAAI8bgIAAAFJA
Date: Fri, 7 Feb 2020 10:44:04 +0000
Message-ID: <AM0PR04MB4481540FBEB2BD3C897479AB881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1580993846-17712-1-git-send-email-peng.fan@nxp.com>
 <1580993846-17712-2-git-send-email-peng.fan@nxp.com>
 <20200206143337.GC3383@bogus>
 <AM0PR04MB44817B64CB35B2B2FB50D8F7881C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200207104043.GA36345@bogus>
In-Reply-To: <20200207104043.GA36345@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6adfe3ec-c3e2-43ea-36f9-08d7abbaa6da
x-ms-traffictypediagnostic: AM0PR04MB4129:|AM0PR04MB4129:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4129AE446DC81FE987F97832881C0@AM0PR04MB4129.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0306EE2ED4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(366004)(376002)(136003)(39860400002)(189003)(199004)(54906003)(2906002)(26005)(186003)(8676002)(33656002)(8936002)(81156014)(6506007)(316002)(4326008)(71200400001)(81166006)(64756008)(66476007)(66556008)(76116006)(9686003)(6916009)(66946007)(55016002)(66446008)(44832011)(478600001)(5660300002)(52536014)(7696005)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4129;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RlMTcJ9vcwncsQ55YnOudKWVD1LjbFdtyCjx2WKaxI43PVgUa4oROs2DAI9BHKWmHfsVi01154tUxmUB9Y0guJkQl/l988PDJdn4JgiKNAia4bT3u7oJrf0P1neA+YJuE6gZQXAgo7qRws4Yb1IKjBlmCL2zMfoDwMbAtqy4MOF9ptWeKKyE2kINyiAAXHVR4/SGo7hkVzzOQ90A3ztS93LLRaB5Imx9LqT5X0WZ37wWscSDbn/k5//ky3bNCiu5a+Sp4P7ElzhDQaGYgWRfvh84RuQz0T7vItWbPu0lf9WfL4hJ9ZqNY/3DkcY3VTWtSMX1wUEPdXzlB5uGFq1uU9XGs2ockg0Q+1dbPr4voy2JpXo3y7Z++xk2v1EEjAQj/vdrVuhPaTOydxynbH9OHQa7buuCouAoP8jftSUEzT4FpTVY/AMDlqILv9IzZwQC
x-ms-exchange-antispam-messagedata: 70MxAaAFTU94i2OeNstxQEQ9McBGfVVkrFf4z2CcX/oZNThsd8WSLdND7uoPH7ZbOy8Ad9rDQVWFvHPzVJ7AD4KfqysI3N/BYVqwak0sNLHNVaujFvfUYBR91f2PnOcYLnoahWaltYwXyQ/wlgWaIw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6adfe3ec-c3e2-43ea-36f9-08d7abbaa6da
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2020 10:44:04.6810 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OGEmRO/DFxwHbRxshu/XLF85j+jud9b+vQuZfJIpz1hR537AMfSGbpS7DEp1vq6ecPs3gKdHxVI5Z6V/JOVXhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_024408_116882_69EDD515 
X-CRM114-Status: GOOD (  30.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.86 listed in list.dnswl.org]
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
> On Fri, Feb 07, 2020 at 02:16:04AM +0000, Peng Fan wrote:
> >
> > > Subject: Re: [PATCH 2/2] firmware: arm_scmi: mark channel free when
> > > init
> > >
> > > On Thu, Feb 06, 2020 at 08:57:26PM +0800, peng.fan@nxp.com wrote:
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > The firmware itself might not mark channel free, so let's
> > > > explicitly mark it free when do initialization.
> > > >
> > > > Also move struct scmi_shared_mem to common.h
> > > >
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > ---
> > > >  drivers/firmware/arm_scmi/common.h  | 19 +++++++++++++++++--
> > > > drivers/firmware/arm_scmi/mailbox.c |  2 ++
> > > >  drivers/firmware/arm_scmi/shmem.c   | 18 ------------------
> > > >  3 files changed, 19 insertions(+), 20 deletions(-)
> > > >
> > > > diff --git a/drivers/firmware/arm_scmi/common.h
> > > > b/drivers/firmware/arm_scmi/common.h
> > > > index fd091a4ccbff..5df262a564a4 100644
> > > > --- a/drivers/firmware/arm_scmi/common.h
> > > > +++ b/drivers/firmware/arm_scmi/common.h
> > > > @@ -211,8 +211,23 @@ extern const struct scmi_desc
> > > > scmi_mailbox_desc; void scmi_rx_callback(struct scmi_chan_info
> > > > *cinfo, u32 msg_hdr); void scmi_free_channel(struct scmi_chan_info
> > > > *cinfo, struct idr *idr, int id);
> > > >
> > > > -/* shmem related declarations */
> > > > -struct scmi_shared_mem;
> > > > +/*
> > > > + * SCMI specification requires all parameters, message headers,
> > > > +return
> > > > + * arguments or any protocol data to be expressed in little
> > > > +endian
> > > > + * format only.
> > > > + */
> > > > +struct scmi_shared_mem {
> > > > +	__le32 reserved;
> > > > +	__le32 channel_status;
> > > > +#define SCMI_SHMEM_CHAN_STAT_CHANNEL_ERROR	BIT(1)
> > > > +#define SCMI_SHMEM_CHAN_STAT_CHANNEL_FREE	BIT(0)
> > > > +	__le32 reserved1[2];
> > > > +	__le32 flags;
> > > > +#define SCMI_SHMEM_FLAG_INTR_ENABLED	BIT(0)
> > > > +	__le32 length;
> > > > +	__le32 msg_header;
> > > > +	u8 msg_payload[0];
> > > > +};
> > > >
> > > >  void shmem_tx_prepare(struct scmi_shared_mem __iomem *shmem,
> > > >  		      struct scmi_xfer *xfer);
> > > > diff --git a/drivers/firmware/arm_scmi/mailbox.c
> > > > b/drivers/firmware/arm_scmi/mailbox.c
> > > > index 68ed58e2a47a..2d34bf6e94e2 100644
> > > > --- a/drivers/firmware/arm_scmi/mailbox.c
> > > > +++ b/drivers/firmware/arm_scmi/mailbox.c
> > > > @@ -104,6 +104,8 @@ static int mailbox_chan_setup(struct
> > > scmi_chan_info *cinfo, struct device *dev,
> > > >  	cinfo->transport_info = smbox;
> > > >  	smbox->cinfo = cinfo;
> > > >
> > > > +	iowrite32(BIT(0), &smbox->shmem->channel_status);
> > > > +
> > >
> >
> > +arm list
> >
> > > If we need this then we may need to put this as a function in
> > > shmem.c I am still not convinced if we can do this unconditionally,
> > > i.e. will that affect Rx channel if there's notification pending
> > > before we initialise. But we can deal with that later.
> >
> > Per understanding, channel is specific to an agent, it could not be shared.
> > So the shmem binded to the channel will not be used by others.
> >
> 
> Yes
> 
> > Since this is the initialization process, the firmware might not init the
> shmem.
> >
> 
> But, is there any particular reason for firmware not to ? It means platform
> holds the channel and needs to release it to agent(OSPM) in this case after
> initialisation.

It is just my ATF not initialize the shmem area the leave the area with random
data.

So I think that some released buggy firmware might also has similar issue.

To support buggy firmware and bug-fixed firmware, I think it might be helpful
to init shmem in Linux side.

Thanks,
Peng.

> 
> > The shmem.c shmem_tx_prepare will spin until channel free, so I did the
> patch.
> > Otherwise it might spin forever.
> >
> 
> Yes I guessed that to be reason.
> 
> > I'll add a check as following
> > if (tx)
> >  iowrite32(BIT(0), &smbox->shmem->channel_status);
> >
> 
> Not yet, I need answers to above query.
> 
> > I not find a good place to put this in shmem.c (:
> >
> 
> Least of the problem :), let us first agree if we have to have it.
> 
> > >
> > > Also what about error fields ? I would rather clear it to 0, not
> > > just BIT(0)
> >
> > Tx channel error should also be cleared, fix in v2.
> >
> 
> OK but wait for a while before you post for the discussion to end.
> 
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
