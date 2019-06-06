Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9980A37C3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 20:27:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6VThfCJdVF6vXImTJXCx+x+IH0ZX3vbfQ5/y3CCw2k=; b=kCp9GSbd/uqmGv
	YNGDoSo5PfsJq1jJCj2uajmakOsdeGca0+k45/8/prC7oKY8PXLCjmEtTNwOtqQjxxx/tIrhgDmPO
	/608c7vKEkhNEIHnRhJAo6dxKTtNObGBmGQUAZjN3OpLDhvVHdMa2XXgEqSvSpZlAiXC56M9dH0xu
	ASi02IGVct7DT3OTUeHM18slpjfXdFmZsN9awRh/5tlMKx8PH6rOHbw70NHYppVhqwENKdqXfwwfQ
	e5ha7fi5ptcB0tiIe2/9dgkKkzK/kpEH1IbLL8LpmPOJFgQVO9BnO8RfFU46tAIXuA9WdmViqbEtq
	NVSG//UBd2XZlpYBSUMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYx6t-0007Tp-Kx; Thu, 06 Jun 2019 18:27:35 +0000
Received: from mail-eopbgr720088.outbound.protection.outlook.com
 ([40.107.72.88] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYx6l-0007TO-RS
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 18:27:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BcxPZJ8Cyu/te9TYREK31YISsiKlZdZy+PGqS11EjaY=;
 b=ibEa8c2ZdjR+V4psqbbKnRn09/cXcDzLPz8Y1y2Ym4XIalh34OeEq/QCNzQY83n518W5Agvb3elC7hOcdCKnOZ+KDyw1w0ItbuAflNtOi+FLDUUzwKA0SVLtaebogQE0WqKs3v4oF5ad1smQuGl8mA7+rsYFXdym5mnZKpk2vlw=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6199.namprd02.prod.outlook.com (52.132.229.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Thu, 6 Jun 2019 18:27:23 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55%5]) with mapi id 15.20.1943.018; Thu, 6 Jun 2019
 18:27:23 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V4 10/12] misc: xilinx_sdfec: Add stats & status ioctls
Thread-Topic: [PATCH V4 10/12] misc: xilinx_sdfec: Add stats & status ioctls
Thread-Index: AQHVEu5G4Eibm0gnKE+3rKpAEh7MYqaOvaYAgABGCVA=
Date: Thu, 6 Jun 2019 18:27:23 +0000
Message-ID: <CH2PR02MB635905A42F3F667E81D30E27CB170@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
 <1558784245-108751-11-git-send-email-dragan.cvetic@xilinx.com>
 <20190606141138.GD7943@kroah.com>
In-Reply-To: <20190606141138.GD7943@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a46c33e0-cfe8-4622-d241-08d6eaac9e8d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6199; 
x-ms-traffictypediagnostic: CH2PR02MB6199:
x-microsoft-antispam-prvs: <CH2PR02MB6199E3BAB5E148152F132B72CB170@CH2PR02MB6199.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(39860400002)(346002)(366004)(189003)(199004)(13464003)(5660300002)(52536014)(3846002)(478600001)(14454004)(33656002)(66476007)(25786009)(64756008)(76116006)(99286004)(66066001)(81156014)(305945005)(86362001)(53936002)(81166006)(73956011)(14444005)(7736002)(4326008)(6916009)(107886003)(74316002)(9686003)(256004)(6246003)(8676002)(68736007)(6436002)(476003)(66446008)(66556008)(53546011)(6506007)(66946007)(76176011)(55016002)(8936002)(71200400001)(71190400001)(229853002)(316002)(6116002)(2906002)(486006)(54906003)(26005)(102836004)(11346002)(186003)(446003)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6199;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: D8q8Z3TukDe/YT/IZHRo7D5w0xDLXSbgnDtOnR9671hSbEsWCC4dg6FOTkpdB2DcJNq823uz4ROxODVvczFuzkkZk2mBxSTE8NoABxY/vlAAyObQq54oySDl07D7bpF85MwPOOUpX5ynBrdG5wr3nGi1k/NGiQSUfxd6IIpbvWlehxFAYxm8VpLyO6gfA6cnXE+cPydMlylNnZZr18ksEx4arJ3mZuagdeTfbbzNExHPNgMRitw4W1M8g0DVjAuIAxGpx/yvrkVZSiPzFix8Sgez0LkfC0PLYXnABa/Lc3l2b2NokTvZTosDjSmPfLwSv9hbpv0jC15zBHjRscgbET66tjP2mLneyC9wBX06YyRLfwcEOwG+DS3VM4s0yFCL2pSUuBvwmPDwysz2E4V+4lT1tkxyb2bigOK4H3cxVEM=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a46c33e0-cfe8-4622-d241-08d6eaac9e8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 18:27:23.2594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: draganc@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6199
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_112727_892360_E3F3451B 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Greg KH [mailto:gregkh@linuxfoundation.org]
> Sent: Thursday 6 June 2019 15:12
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V4 10/12] misc: xilinx_sdfec: Add stats & status ioctls
> 
> On Sat, May 25, 2019 at 12:37:23PM +0100, Dragan Cvetic wrote:
> > SD-FEC statistic data are:
> > - count of data interface errors (isr_err_count)
> > - count of Correctable ECC errors (cecc_count)
> > - count of Uncorrectable ECC errors (uecc_count)
> >
> > Add support:
> > 1. clear stats ioctl callback which clears collected
> > statistic data,
> > 2. get stats ioctl callback which reads a collected
> > statistic data,
> > 3. set default configuration ioctl callback,
> > 4. start ioctl callback enables SD-FEC HW,
> > 5. stop ioctl callback disables SD-FEC HW.
> >
> > In a failed state driver enables the following ioctls:
> > - get status
> > - get statistics
> > - clear stats
> > - set default SD-FEC device configuration
> >
> > Tested-by: Santhosh Dyavanapally <SDYAVANA@xilinx.com>
> > Tested by: Punnaiah Choudary Kalluri <punnaia@xilinx.com>
> > Tested-by: Derek Kiernan <derek.kiernan@xilinx.com>
> > Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> > Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
> > Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> > ---
> >  drivers/misc/xilinx_sdfec.c      | 121 +++++++++++++++++++++++++++++++++++++++
> >  include/uapi/misc/xilinx_sdfec.h |  75 ++++++++++++++++++++++++
> >  2 files changed, 196 insertions(+)
> >
> > diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> > index 544e746..6e04492 100644
> > --- a/drivers/misc/xilinx_sdfec.c
> > +++ b/drivers/misc/xilinx_sdfec.c
> > @@ -189,6 +189,7 @@ struct xsdfec_clks {
> >   * @dev: pointer to device struct
> >   * @state: State of the SDFEC device
> >   * @config: Configuration of the SDFEC device
> > + * @intr_enabled: indicates IRQ enabled
> >   * @state_updated: indicates State updated by interrupt handler
> >   * @stats_updated: indicates Stats updated by interrupt handler
> >   * @isr_err_count: Count of ISR errors
> > @@ -207,6 +208,7 @@ struct xsdfec_dev {
> >  	struct device *dev;
> >  	enum xsdfec_state state;
> >  	struct xsdfec_config config;
> > +	bool intr_enabled;
> >  	bool state_updated;
> >  	bool stats_updated;
> >  	atomic_t isr_err_count;
> > @@ -290,6 +292,26 @@ static int xsdfec_dev_release(struct inode *iptr, struct file *fptr)
> >  	return 0;
> >  }
> >
> > +static int xsdfec_get_status(struct xsdfec_dev *xsdfec, void __user *arg)
> > +{
> > +	struct xsdfec_status status;
> > +	int err;
> > +
> > +	status.fec_id = xsdfec->config.fec_id;
> > +	spin_lock_irqsave(&xsdfec->irq_lock, xsdfec->flags);
> > +	status.state = xsdfec->state;
> > +	xsdfec->state_updated = false;
> > +	spin_unlock_irqrestore(&xsdfec->irq_lock, xsdfec->flags);
> > +	status.activity = (xsdfec_regread(xsdfec, XSDFEC_ACTIVE_ADDR) &
> > +			   XSDFEC_IS_ACTIVITY_SET);
> > +
> > +	err = copy_to_user(arg, &status, sizeof(status));
> > +	if (err)
> > +		err = -EFAULT;
> > +
> > +	return err;
> > +}
> > +
> >  static int xsdfec_get_config(struct xsdfec_dev *xsdfec, void __user *arg)
> >  {
> >  	int err;
> > @@ -850,6 +872,80 @@ static int xsdfec_cfg_axi_streams(struct xsdfec_dev *xsdfec)
> >  	return 0;
> >  }
> >
> > +static int xsdfec_start(struct xsdfec_dev *xsdfec)
> > +{
> > +	u32 regread;
> > +
> > +	regread = xsdfec_regread(xsdfec, XSDFEC_FEC_CODE_ADDR);
> > +	regread &= 0x1;
> > +	if (regread != xsdfec->config.code) {
> > +		dev_dbg(xsdfec->dev,
> > +			"%s SDFEC HW code does not match driver code, reg %d, code %d",
> > +			__func__, regread, xsdfec->config.code);
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* Set AXIS enable */
> > +	xsdfec_regwrite(xsdfec, XSDFEC_AXIS_ENABLE_ADDR,
> > +			XSDFEC_AXIS_ENABLE_MASK);
> > +	/* Done */
> > +	xsdfec->state = XSDFEC_STARTED;
> > +	return 0;
> > +}
> > +
> > +static int xsdfec_stop(struct xsdfec_dev *xsdfec)
> > +{
> > +	u32 regread;
> > +
> > +	if (xsdfec->state != XSDFEC_STARTED)
> > +		dev_dbg(xsdfec->dev, "Device not started correctly");
> > +	/* Disable AXIS_ENABLE Input interfaces only */
> > +	regread = xsdfec_regread(xsdfec, XSDFEC_AXIS_ENABLE_ADDR);
> > +	regread &= (~XSDFEC_AXIS_IN_ENABLE_MASK);
> > +	xsdfec_regwrite(xsdfec, XSDFEC_AXIS_ENABLE_ADDR, regread);
> > +	/* Stop */
> > +	xsdfec->state = XSDFEC_STOPPED;
> > +	return 0;
> > +}
> > +
> > +static int xsdfec_clear_stats(struct xsdfec_dev *xsdfec)
> > +{
> > +	atomic_set(&xsdfec->isr_err_count, 0);
> > +	atomic_set(&xsdfec->uecc_count, 0);
> > +	atomic_set(&xsdfec->cecc_count, 0);
> 
> Atomics for counters?  Are you sure?  Don't we have some sort of sane
> counter api these days for stuff like this instead of abusing atomic
> variables?  What does the networking people use?  How often/fast do
> these change that you need to synchronize things?

Accepted.
No need to have them atomic. They are lock protected already.

> 
> > +
> > +	return 0;
> > +}
> > +
> > +static int xsdfec_get_stats(struct xsdfec_dev *xsdfec, void __user *arg)
> > +{
> > +	int err;
> > +	struct xsdfec_stats user_stats;
> > +
> > +	spin_lock_irqsave(&xsdfec->irq_lock, xsdfec->flags);
> > +	user_stats.isr_err_count = atomic_read(&xsdfec->isr_err_count);
> > +	user_stats.cecc_count = atomic_read(&xsdfec->cecc_count);
> > +	user_stats.uecc_count = atomic_read(&xsdfec->uecc_count);
> > +	xsdfec->stats_updated = false;
> > +	spin_unlock_irqrestore(&xsdfec->irq_lock, xsdfec->flags);
> 
> Wait, you just grabbed a lock, and then read atomic variables, why?  Why
> do these need to be atomic variables if you are already locking around
> them?  Unless you want to be "extra sure" they are safe?  :)

Accepted.
Absolutely no need for atomic variables.
 
> 
> Please fix up.
> 
> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
