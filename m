Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D008F4EC63
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEHhJR+GbNGjz1UGsdxjK4b5Qxt0GEDDpl0o6NapA04=; b=mNhz47I6QRRJW9
	63o+B0CDlufMDhtFYPdMWfPeqYSk5l15/f3GaeQcnSUa5pn6iit+I1EkLr8XeeZ2Dg031elupQCLs
	N1S72k3ZCKXTBZ410clptwYZaryMGN0KbF9j/NjQ8ncXIRYzs+ZzgtQZumESo4t1wfDwJww04+QcB
	/gcR/9E+jlvNQ5Jq3Eu67VIAuFxJ5Y/yq6dazcHrDRW60qLINAhJ3sESjFy9PZ3Fry6oEmgx49bGM
	vh+4FbePtjK/gpVgkPq4aSb7t3YyrwIdAMOue4sdlL4oB9mOC/dFMLQ80tAU18LTrxuwtLkkVgDYI
	I+g1Oc6g8G6ZssQeRuMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLg4-0007L1-16; Fri, 21 Jun 2019 15:42:12 +0000
Received: from mail-eopbgr780079.outbound.protection.outlook.com
 ([40.107.78.79] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLe1-0004dq-Jn
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:40:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W1vK+WymXNoSphbkOiOkOBFOg9Zs+c4Ct2cLCmklynQ=;
 b=ZKDVJrJ1dc0f0KmTcwJgtMDSrlAuoOEs3RwUBroiifAZFf3HCJ0c4DPq0eucGlhPLcoqfRVDY8BvSmwmR02Dzwdinezxb1rctYPI0Hu0OlRBxbd2YoKZhXuB8VEHGdkuZKTs03oj6So/rS5eL8jeNnuZEEgZ2OxTsmx88gSl7kQ=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6328.namprd02.prod.outlook.com (52.132.231.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Fri, 21 Jun 2019 15:39:59 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55%5]) with mapi id 15.20.1987.014; Fri, 21 Jun 2019
 15:39:59 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V7 04/11] misc: xilinx_sdfec: Store driver config and state
Thread-Topic: [PATCH V7 04/11] misc: xilinx_sdfec: Store driver config and
 state
Thread-Index: AQHVIHtIV/9OJEFHFE2Nh7XS0XIE3qamNlqAgAAXK9A=
Date: Fri, 21 Jun 2019 15:39:59 +0000
Message-ID: <CH2PR02MB63590483D68D5516AF415B78CBE70@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <1560274185-264438-1-git-send-email-dragan.cvetic@xilinx.com>
 <1560274185-264438-5-git-send-email-dragan.cvetic@xilinx.com>
 <20190621141437.GA4130@kroah.com>
In-Reply-To: <20190621141437.GA4130@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a0d4422-367a-40e1-a96d-08d6f65eb812
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6328; 
x-ms-traffictypediagnostic: CH2PR02MB6328:
x-microsoft-antispam-prvs: <CH2PR02MB6328116AF25021B8B153E99FCBE70@CH2PR02MB6328.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(366004)(346002)(396003)(39850400004)(189003)(199004)(13464003)(11346002)(7736002)(305945005)(229853002)(2906002)(316002)(9686003)(86362001)(446003)(14454004)(66946007)(66476007)(66556008)(64756008)(66446008)(76116006)(73956011)(54906003)(6436002)(3846002)(486006)(6116002)(53946003)(66066001)(74316002)(55016002)(476003)(25786009)(52536014)(33656002)(6246003)(26005)(5660300002)(8936002)(102836004)(81166006)(186003)(478600001)(8676002)(81156014)(256004)(107886003)(14444005)(53936002)(76176011)(30864003)(99286004)(6916009)(71190400001)(71200400001)(53546011)(68736007)(4326008)(7696005)(6506007)(461764006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6328;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: x1Jk8Q3zlyiSYctrnqqZXnNG+XDUql+lVkEVtSnmA5yXFU62OF2faETCM3xE3fXk2xG+dk0dbTp2H4Ca0ZTX8DClK6b5O29mcnfcgv2dfATnGvzqOWXRAE3qe2y4owWwXMBjF/x62Nb2R2yXWmjZy2Rko0lwSVCS6Ikmu//XBm6TW4uHGGBWT6tlLrnr9MqRBA/wC9Si/5nRdsscTn6YrWcm1TIqyxIy9i4VkyFSX7kzoJcLGfXBHny8YAD8/eID5cb5QvODb1Vz389zXk3Z6tvhMFISOuSp3vO+XwWAkU5vKgVR+ZySooWzYcMqh20xHELqcN5aFX1UOclWkPqMrT1qpigchxp/gqsWTHjXRHC10ne2pNZtWB+86XvBiEpIT6lXu3mfSUMj48kG17rFl0tDxhoMzBGYaAoiCMlsgqk=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a0d4422-367a-40e1-a96d-08d6f65eb812
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 15:39:59.3304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: draganc@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6328
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_084006_196233_AFCC3233 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
> Sent: Friday 21 June 2019 15:15
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V7 04/11] misc: xilinx_sdfec: Store driver config and state
> 
> On Tue, Jun 11, 2019 at 06:29:38PM +0100, Dragan Cvetic wrote:
> > Stores configuration based on parameters from the DT
> > node and values from the SD-FEC core plus reads
> > the default state from the SD-FEC core. To obtain
> > values from the core register read, write capabilities
> > have been added plus related register map details.
> >
> > Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> > Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
> > Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> > ---
> >  drivers/misc/xilinx_sdfec.c      | 293 +++++++++++++++++++++++++++++++++++++++
> >  include/uapi/misc/xilinx_sdfec.h | 138 ++++++++++++++++++
> >  2 files changed, 431 insertions(+)
> >  create mode 100644 include/uapi/misc/xilinx_sdfec.h
> >
> > diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> > index f257d38..3b031c6 100644
> > --- a/drivers/misc/xilinx_sdfec.c
> > +++ b/drivers/misc/xilinx_sdfec.c
> > @@ -20,11 +20,92 @@
> >  #include <linux/slab.h>
> >  #include <linux/clk.h>
> >
> > +#include <uapi/misc/xilinx_sdfec.h>
> > +
> >  #define DEV_NAME_LEN 12
> >
> >  static struct idr dev_idr;
> >  static struct mutex dev_idr_lock;
> >
> > +/* Xilinx SDFEC Register Map */
> > +/* CODE_WRI_PROTECT Register */
> > +#define XSDFEC_CODE_WR_PROTECT_ADDR (0x4)
> > +
> > +/* ACTIVE Register */
> > +#define XSDFEC_ACTIVE_ADDR (0x8)
> > +#define XSDFEC_IS_ACTIVITY_SET (0x1)
> > +
> > +/* AXIS_WIDTH Register */
> > +#define XSDFEC_AXIS_WIDTH_ADDR (0xC)
> > +#define XSDFEC_AXIS_DOUT_WORDS_LSB (5)
> > +#define XSDFEC_AXIS_DOUT_WIDTH_LSB (3)
> > +#define XSDFEC_AXIS_DIN_WORDS_LSB (2)
> > +#define XSDFEC_AXIS_DIN_WIDTH_LSB (0)
> > +
> > +/* AXIS_ENABLE Register */
> > +#define XSDFEC_AXIS_ENABLE_ADDR (0x10)
> > +#define XSDFEC_AXIS_OUT_ENABLE_MASK (0x38)
> > +#define XSDFEC_AXIS_IN_ENABLE_MASK (0x7)
> > +#define XSDFEC_AXIS_ENABLE_MASK                                                \
> > +	(XSDFEC_AXIS_OUT_ENABLE_MASK | XSDFEC_AXIS_IN_ENABLE_MASK)
> > +
> > +/* FEC_CODE Register */
> > +#define XSDFEC_FEC_CODE_ADDR (0x14)
> > +
> > +/* ORDER Register Map */
> > +#define XSDFEC_ORDER_ADDR (0x18)
> > +
> > +/* Interrupt Status Register */
> > +#define XSDFEC_ISR_ADDR (0x1C)
> > +/* Interrupt Status Register Bit Mask */
> > +#define XSDFEC_ISR_MASK (0x3F)
> > +
> > +/* Write Only - Interrupt Enable Register */
> > +#define XSDFEC_IER_ADDR (0x20)
> > +/* Write Only - Interrupt Disable Register */
> > +#define XSDFEC_IDR_ADDR (0x24)
> > +/* Read Only - Interrupt Mask Register */
> > +#define XSDFEC_IMR_ADDR (0x28)
> > +
> > +/* ECC Interrupt Status Register */
> > +#define XSDFEC_ECC_ISR_ADDR (0x2C)
> > +/* Single Bit Errors */
> > +#define XSDFEC_ECC_ISR_SBE_MASK (0x7FF)
> > +/* PL Initialize Single Bit Errors */
> > +#define XSDFEC_PL_INIT_ECC_ISR_SBE_MASK (0x3C00000)
> > +/* Multi Bit Errors */
> > +#define XSDFEC_ECC_ISR_MBE_MASK (0x3FF800)
> > +/* PL Initialize Multi Bit Errors */
> > +#define XSDFEC_PL_INIT_ECC_ISR_MBE_MASK (0x3C000000)
> > +/* Multi Bit Error to Event Shift */
> > +#define XSDFEC_ECC_ISR_MBE_TO_EVENT_SHIFT (11)
> > +/* PL Initialize Multi Bit Error to Event Shift */
> > +#define XSDFEC_PL_INIT_ECC_ISR_MBE_TO_EVENT_SHIFT (4)
> > +/* ECC Interrupt Status Bit Mask */
> > +#define XSDFEC_ECC_ISR_MASK (XSDFEC_ECC_ISR_SBE_MASK | XSDFEC_ECC_ISR_MBE_MASK)
> > +/* ECC Interrupt Status PL Initialize Bit Mask */
> > +#define XSDFEC_PL_INIT_ECC_ISR_MASK                                            \
> > +	(XSDFEC_PL_INIT_ECC_ISR_SBE_MASK | XSDFEC_PL_INIT_ECC_ISR_MBE_MASK)
> > +/* ECC Interrupt Status All Bit Mask */
> > +#define XSDFEC_ALL_ECC_ISR_MASK                                                \
> > +	(XSDFEC_ECC_ISR_MASK | XSDFEC_PL_INIT_ECC_ISR_MASK)
> > +/* ECC Interrupt Status Single Bit Errors Mask */
> > +#define XSDFEC_ALL_ECC_ISR_SBE_MASK                                            \
> > +	(XSDFEC_ECC_ISR_SBE_MASK | XSDFEC_PL_INIT_ECC_ISR_SBE_MASK)
> > +/* ECC Interrupt Status Multi Bit Errors Mask */
> > +#define XSDFEC_ALL_ECC_ISR_MBE_MASK                                            \
> > +	(XSDFEC_ECC_ISR_MBE_MASK | XSDFEC_PL_INIT_ECC_ISR_MBE_MASK)
> > +
> > +/* Write Only - ECC Interrupt Enable Register */
> > +#define XSDFEC_ECC_IER_ADDR (0x30)
> > +/* Write Only - ECC Interrupt Disable Register */
> > +#define XSDFEC_ECC_IDR_ADDR (0x34)
> > +/* Read Only - ECC Interrupt Mask Register */
> > +#define XSDFEC_ECC_IMR_ADDR (0x38)
> > +
> > +/* BYPASS Register */
> > +#define XSDFEC_BYPASS_ADDR (0x3C)
> > +
> >  /**
> >   * struct xsdfec_clks - For managing SD-FEC clocks
> >   * @core_clk: Main processing clock for core
> > @@ -51,6 +132,8 @@ struct xsdfec_clks {
> >   * struct xsdfec_dev - Driver data for SDFEC
> >   * @regs: device physical base address
> >   * @dev: pointer to device struct
> > + * @state: State of the SDFEC device
> > + * @config: Configuration of the SDFEC device
> >   * @miscdev: Misc device handle
> >   * @error_data_lock: Error counter and states spinlock
> >   * @clks: Clocks managed by the SDFEC driver
> > @@ -62,6 +145,8 @@ struct xsdfec_clks {
> >  struct xsdfec_dev {
> >  	void __iomem *regs;
> >  	struct device *dev;
> > +	enum xsdfec_state state;
> > +	struct xsdfec_config config;
> >  	struct miscdevice miscdev;
> >  	/* Spinlock to protect state_updated and stats_updated */
> >  	spinlock_t error_data_lock;
> > @@ -70,10 +155,212 @@ struct xsdfec_dev {
> >  	int dev_id;
> >  };
> >
> > +static inline void xsdfec_regwrite(struct xsdfec_dev *xsdfec, u32 addr,
> > +				   u32 value)
> > +{
> > +	dev_dbg(xsdfec->dev, "Writing 0x%x to offset 0x%x", value, addr);
> > +	iowrite32(value, xsdfec->regs + addr);
> > +}
> > +
> > +static inline u32 xsdfec_regread(struct xsdfec_dev *xsdfec, u32 addr)
> > +{
> > +	u32 rval;
> > +
> > +	rval = ioread32(xsdfec->regs + addr);
> > +	dev_dbg(xsdfec->dev, "Read value = 0x%x from offset 0x%x", rval, addr);
> > +	return rval;
> > +}
> > +
> > +static void update_bool_config_from_reg(struct xsdfec_dev *xsdfec,
> > +					u32 reg_offset, u32 bit_num,
> > +					char *config_value)
> > +{
> > +	u32 reg_val;
> > +	u32 bit_mask = 1 << bit_num;
> > +
> > +	reg_val = xsdfec_regread(xsdfec, reg_offset);
> > +	*config_value = (reg_val & bit_mask) > 0;
> > +}
> > +
> > +static void update_config_from_hw(struct xsdfec_dev *xsdfec)
> > +{
> > +	u32 reg_value;
> > +	bool sdfec_started;
> > +
> > +	/* Update the Order */
> > +	reg_value = xsdfec_regread(xsdfec, XSDFEC_ORDER_ADDR);
> > +	xsdfec->config.order = reg_value;
> > +
> > +	update_bool_config_from_reg(xsdfec, XSDFEC_BYPASS_ADDR,
> > +				    0, /* Bit Number, maybe change to mask */
> > +				    &xsdfec->config.bypass);
> > +
> > +	update_bool_config_from_reg(xsdfec, XSDFEC_CODE_WR_PROTECT_ADDR,
> > +				    0, /* Bit Number */
> > +				    &xsdfec->config.code_wr_protect);
> > +
> > +	reg_value = xsdfec_regread(xsdfec, XSDFEC_IMR_ADDR);
> > +	xsdfec->config.irq.enable_isr = (reg_value & XSDFEC_ISR_MASK) > 0;
> > +
> > +	reg_value = xsdfec_regread(xsdfec, XSDFEC_ECC_IMR_ADDR);
> > +	xsdfec->config.irq.enable_ecc_isr =
> > +		(reg_value & XSDFEC_ECC_ISR_MASK) > 0;
> > +
> > +	reg_value = xsdfec_regread(xsdfec, XSDFEC_AXIS_ENABLE_ADDR);
> > +	sdfec_started = (reg_value & XSDFEC_AXIS_IN_ENABLE_MASK) > 0;
> > +	if (sdfec_started)
> > +		xsdfec->state = XSDFEC_STARTED;
> > +	else
> > +		xsdfec->state = XSDFEC_STOPPED;
> > +}
> > +
> > +static u32
> > +xsdfec_translate_axis_width_cfg_val(enum xsdfec_axis_width axis_width_cfg)
> > +{
> > +	u32 axis_width_field = 0;
> > +
> > +	switch (axis_width_cfg) {
> > +	case XSDFEC_1x128b:
> > +		axis_width_field = 0;
> > +		break;
> > +	case XSDFEC_2x128b:
> > +		axis_width_field = 1;
> > +		break;
> > +	case XSDFEC_4x128b:
> > +		axis_width_field = 2;
> > +		break;
> > +	}
> > +
> > +	return axis_width_field;
> > +}
> > +
> > +static u32 xsdfec_translate_axis_words_cfg_val(enum xsdfec_axis_word_include
> > +	axis_word_inc_cfg)
> > +{
> > +	u32 axis_words_field = 0;
> > +
> > +	if (axis_word_inc_cfg == XSDFEC_FIXED_VALUE ||
> > +	    axis_word_inc_cfg == XSDFEC_IN_BLOCK)
> > +		axis_words_field = 0;
> > +	else if (axis_word_inc_cfg == XSDFEC_PER_AXI_TRANSACTION)
> > +		axis_words_field = 1;
> > +
> > +	return axis_words_field;
> > +}
> > +
> > +static int xsdfec_cfg_axi_streams(struct xsdfec_dev *xsdfec)
> > +{
> > +	u32 reg_value;
> > +	u32 dout_words_field;
> > +	u32 dout_width_field;
> > +	u32 din_words_field;
> > +	u32 din_width_field;
> > +	struct xsdfec_config *config = &xsdfec->config;
> > +
> > +	/* translate config info to register values */
> > +	dout_words_field =
> > +		xsdfec_translate_axis_words_cfg_val(config->dout_word_include);
> > +	dout_width_field =
> > +		xsdfec_translate_axis_width_cfg_val(config->dout_width);
> > +	din_words_field =
> > +		xsdfec_translate_axis_words_cfg_val(config->din_word_include);
> > +	din_width_field =
> > +		xsdfec_translate_axis_width_cfg_val(config->din_width);
> > +
> > +	reg_value = dout_words_field << XSDFEC_AXIS_DOUT_WORDS_LSB;
> > +	reg_value |= dout_width_field << XSDFEC_AXIS_DOUT_WIDTH_LSB;
> > +	reg_value |= din_words_field << XSDFEC_AXIS_DIN_WORDS_LSB;
> > +	reg_value |= din_width_field << XSDFEC_AXIS_DIN_WIDTH_LSB;
> > +
> > +	xsdfec_regwrite(xsdfec, XSDFEC_AXIS_WIDTH_ADDR, reg_value);
> > +
> > +	return 0;
> > +}
> > +
> >  static const struct file_operations xsdfec_fops = {
> >  	.owner = THIS_MODULE,
> >  };
> >
> > +static int xsdfec_parse_of(struct xsdfec_dev *xsdfec)
> > +{
> > +	struct device *dev = xsdfec->dev;
> > +	struct device_node *node = dev->of_node;
> > +	int rval;
> > +	const char *fec_code;
> > +	enum xsdfec_axis_width din_width;
> > +	enum xsdfec_axis_word_include din_word_include;
> > +	enum xsdfec_axis_width dout_width;
> > +	enum xsdfec_axis_word_include dout_word_include;
> > +
> > +	rval = of_property_read_string(node, "xlnx,sdfec-code", &fec_code);
> > +	if (rval < 0)
> > +		return rval;
> > +
> > +	if (!strcasecmp(fec_code, "ldpc"))
> > +		xsdfec->config.code = XSDFEC_LDPC_CODE;
> > +	else if (!strcasecmp(fec_code, "turbo"))
> > +		xsdfec->config.code = XSDFEC_TURBO_CODE;
> > +	else
> > +		return -EINVAL;
> > +
> > +	rval = of_property_read_u32(node, "xlnx,sdfec-din-words",
> > +				    &din_word_include);
> > +	if (rval < 0)
> > +		return rval;
> > +
> > +	if (din_word_include < XSDFEC_AXIS_WORDS_INCLUDE_MAX)
> > +		xsdfec->config.din_word_include = din_word_include;
> > +	else
> > +		return -EINVAL;
> > +
> > +	rval = of_property_read_u32(node, "xlnx,sdfec-din-width", &din_width);
> > +	if (rval < 0)
> > +		return rval;
> > +
> > +	switch (din_width) {
> > +	/* Fall through and set for valid values */
> > +	case XSDFEC_1x128b:
> > +	case XSDFEC_2x128b:
> > +	case XSDFEC_4x128b:
> > +		xsdfec->config.din_width = din_width;
> > +		break;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	rval = of_property_read_u32(node, "xlnx,sdfec-dout-words",
> > +				    &dout_word_include);
> > +	if (rval < 0)
> > +		return rval;
> > +
> > +	if (dout_word_include < XSDFEC_AXIS_WORDS_INCLUDE_MAX)
> > +		xsdfec->config.dout_word_include = dout_word_include;
> > +	else
> > +		return -EINVAL;
> > +
> > +	rval = of_property_read_u32(node, "xlnx,sdfec-dout-width", &dout_width);
> > +	if (rval < 0)
> > +		return rval;
> > +
> > +	switch (dout_width) {
> > +	/* Fall through and set for valid values */
> > +	case XSDFEC_1x128b:
> > +	case XSDFEC_2x128b:
> > +	case XSDFEC_4x128b:
> > +		xsdfec->config.dout_width = dout_width;
> > +		break;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* Write LDPC to CODE Register */
> > +	xsdfec_regwrite(xsdfec, XSDFEC_FEC_CODE_ADDR, xsdfec->config.code);
> > +
> > +	xsdfec_cfg_axi_streams(xsdfec);
> > +
> > +	return 0;
> > +}
> > +
> >  static int xsdfec_clk_init(struct platform_device *pdev,
> >  			   struct xsdfec_clks *clks)
> >  {
> > @@ -260,6 +547,12 @@ static int xsdfec_probe(struct platform_device *pdev)
> >  		goto err_xsdfec_dev;
> >  	}
> >
> > +	err = xsdfec_parse_of(xsdfec);
> > +	if (err < 0)
> > +		goto err_xsdfec_dev;
> > +
> > +	update_config_from_hw(xsdfec);
> > +
> >  	/* Save driver private data */
> >  	platform_set_drvdata(pdev, xsdfec);
> >
> > diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
> > new file mode 100644
> > index 0000000..aec26b3
> > --- /dev/null
> > +++ b/include/uapi/misc/xilinx_sdfec.h
> > @@ -0,0 +1,138 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note */
> > +/*
> > + * Xilinx SD-FEC
> > + *
> > + * Copyright (C) 2019 Xilinx, Inc.
> > + *
> > + * Description:
> > + * This driver is developed for SDFEC16 IP. It provides a char device
> > + * in sysfs and supports file operations like open(), close() and ioctl().
> > + */
> > +#ifndef __XILINX_SDFEC_H__
> > +#define __XILINX_SDFEC_H__
> > +
> > +#include <linux/types.h>
> > +
> > +/**
> > + * enum xsdfec_code - Code Type.
> > + * @XSDFEC_TURBO_CODE: Driver is configured for Turbo mode.
> > + * @XSDFEC_LDPC_CODE: Driver is configured for LDPC mode.
> > + *
> > + * This enum is used to indicate the mode of the driver. The mode is determined
> > + * by checking which codes are set in the driver. Note that the mode cannot be
> > + * changed by the driver.
> > + */
> > +enum xsdfec_code {
> > +	XSDFEC_TURBO_CODE = 0,
> > +	XSDFEC_LDPC_CODE,
> > +};
> > +
> > +/**
> > + * enum xsdfec_order - Order
> > + * @XSDFEC_MAINTAIN_ORDER: Maintain order execution of blocks.
> > + * @XSDFEC_OUT_OF_ORDER: Out-of-order execution of blocks.
> > + *
> > + * This enum is used to indicate whether the order of blocks can change from
> > + * input to output.
> > + */
> > +enum xsdfec_order {
> > +	XSDFEC_MAINTAIN_ORDER = 0,
> > +	XSDFEC_OUT_OF_ORDER,
> > +};
> > +
> > +/**
> > + * enum xsdfec_state - State.
> > + * @XSDFEC_INIT: Driver is initialized.
> > + * @XSDFEC_STARTED: Driver is started.
> > + * @XSDFEC_STOPPED: Driver is stopped.
> > + * @XSDFEC_NEEDS_RESET: Driver needs to be reset.
> > + * @XSDFEC_PL_RECONFIGURE: Programmable Logic needs to be recofigured.
> > + *
> > + * This enum is used to indicate the state of the driver.
> > + */
> > +enum xsdfec_state {
> > +	XSDFEC_INIT = 0,
> > +	XSDFEC_STARTED,
> > +	XSDFEC_STOPPED,
> > +	XSDFEC_NEEDS_RESET,
> > +	XSDFEC_PL_RECONFIGURE,
> > +};
> > +
> > +/**
> > + * enum xsdfec_axis_width - AXIS_WIDTH.DIN Setting for 128-bit width.
> > + * @XSDFEC_1x128b: DIN data input stream consists of a 128-bit lane
> > + * @XSDFEC_2x128b: DIN data input stream consists of two 128-bit lanes
> > + * @XSDFEC_4x128b: DIN data input stream consists of four 128-bit lanes
> > + *
> > + * This enum is used to indicate the AXIS_WIDTH.DIN setting for 128-bit width.
> > + * The number of lanes of the DIN data input stream depends upon the
> > + * AXIS_WIDTH.DIN parameter.
> > + */
> > +enum xsdfec_axis_width {
> > +	XSDFEC_1x128b = 1,
> > +	XSDFEC_2x128b = 2,
> > +	XSDFEC_4x128b = 4,
> > +};
> > +
> > +/**
> > + * enum xsdfec_axis_word_include - Words Configuration.
> > + * @XSDFEC_FIXED_VALUE: Fixed, the DIN_WORDS AXI4-Stream interface is removed
> > + *			from the IP instance and is driven with the specified
> > + *			number of words.
> > + * @XSDFEC_IN_BLOCK: In Block, configures the IP instance to expect a single
> > + *		     DIN_WORDS value per input code block. The DIN_WORDS
> > + *		     interface is present.
> > + * @XSDFEC_PER_AXI_TRANSACTION: Per Transaction, configures the IP instance to
> > + * expect one DIN_WORDS value per input transaction on the DIN interface. The
> > + * DIN_WORDS interface is present.
> > + * @XSDFEC_AXIS_WORDS_INCLUDE_MAX: Used to indicate out of bound Words
> > + *				   Configurations.
> > + *
> > + * This enum is used to specify the DIN_WORDS configuration.
> > + */
> > +enum xsdfec_axis_word_include {
> > +	XSDFEC_FIXED_VALUE = 0,
> > +	XSDFEC_IN_BLOCK,
> > +	XSDFEC_PER_AXI_TRANSACTION,
> > +	XSDFEC_AXIS_WORDS_INCLUDE_MAX,
> > +};
> > +
> > +/**
> > + * struct xsdfec_irq - Enabling or Disabling Interrupts.
> > + * @enable_isr: If true enables the ISR
> > + * @enable_ecc_isr: If true enables the ECC ISR
> > + */
> > +struct xsdfec_irq {
> > +	__s8 enable_isr;
> > +	__s8 enable_ecc_isr;
> > +};
> > +
> > +/**
> > + * struct xsdfec_config - Configuration of SD-FEC core.
> > + * @code: The codes being used by the SD-FEC instance
> > + * @order: Order of Operation
> > + * @bypass: Is the core being bypassed
> > + * @code_wr_protect: Is write protection of LDPC codes enabled
> > + * @din_width: Width of the DIN AXI4-Stream
> > + * @din_word_include: How DIN_WORDS are inputted
> > + * @dout_width: Width of the DOUT AXI4-Stream
> > + * @dout_word_include: HOW DOUT_WORDS are outputted
> > + * @irq: Enabling or disabling interrupts
> > + */
> > +struct xsdfec_config {
> > +	__u32 code;
> > +	__u32 order;
> > +	__s8 bypass;
> > +	__s8 code_wr_protect;
> > +	__u32 din_width;
> > +	__u32 din_word_include;
> > +	__u32 dout_width;
> > +	__u32 dout_word_include;
> > +	struct xsdfec_irq irq;
> > +};
> 
> Ick, that structure is not a good one to pass across the user/kernel
> boundry.  Are you ok with that big hole in there?
> 
> Please use a tool like pahole to figure out how to get this to work
> properly on both 32 and 64bit machines without unneeded padding.

Accepted, 
I'll run "pahole" and update accordingly	

> 
> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
