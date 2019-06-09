Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD5C3AB45
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 21:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bkh6WBS3tBt6TqXQ/amWkUK9tFG7UBEbhokt3vHn4UU=; b=rGG8w4AYMCH6+G
	unY391r9fYvZQSh9MjFrmqYVBSq2Bk5yugopB+bjBZK9a425ErpW7/vS6AY2TzGA1JLe4ALmh1xZT
	sJ/mGhwwBa7bqWWM7BruVda5noiR7uNHlENjlVkLCCyNweySGuh6WsJLpXqpAVVXQp978OhAqF1He
	lERjxEJCUpCxODCAsRbj/EIrY6KUsiLj+K4zXWArSEikgzGilucaLauVS4uBu0oO3KKRzub6a7Aht
	Jxf4ft/E95rk6QPPZcWUHRf2M5f8+AAwHEkNivxJteS3mfTjXN9H14YBjDTjrg1K0RbBL81oUyqwu
	u9HA25v2YxmFk1lXu4Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha372-0006s2-Ff; Sun, 09 Jun 2019 19:04:16 +0000
Received: from mail-eopbgr780072.outbound.protection.outlook.com
 ([40.107.78.72] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha36u-0006rU-Od
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 19:04:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vipFVQZ13occJeKPa4gMIqCdplOduENlZPM47G5lmQU=;
 b=sAMfTBwFCXmx1FoGlhAjiejr+vvU37KeaCYinrC1GkoUDlm6/kPTKF5aeM0EIHkDuT8phckwv0K06flFrPgEahH7NS//8xS8Pav1S0oNGsNQJYADjAYbEt0JSVaHjfoJv8bDdVNlsYVwO+EtctNEutbXLCWOyobAb1Qy2eIgYw4=
Received: from CH2PR02MB6359.namprd02.prod.outlook.com (52.132.231.93) by
 CH2PR02MB6343.namprd02.prod.outlook.com (52.132.231.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Sun, 9 Jun 2019 19:04:05 +0000
Received: from CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55]) by CH2PR02MB6359.namprd02.prod.outlook.com
 ([fe80::b9dd:11e0:7fca:ba55%5]) with mapi id 15.20.1965.017; Sun, 9 Jun 2019
 19:04:05 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH V5 04/11] misc: xilinx_sdfec: Store driver config and state
Thread-Topic: [PATCH V5 04/11] misc: xilinx_sdfec: Store driver config and
 state
Thread-Index: AQHVHlbxzdzmznNl2EafUzQutwvON6aTL/oAgAB+B5A=
Date: Sun, 9 Jun 2019 19:04:05 +0000
Message-ID: <CH2PR02MB635901D11605FAFEFEA7A319CB120@CH2PR02MB6359.namprd02.prod.outlook.com>
References: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
 <1560038656-380620-5-git-send-email-dragan.cvetic@xilinx.com>
 <20190609112732.GA31438@kroah.com>
In-Reply-To: <20190609112732.GA31438@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c2a1c65-750d-4916-b0c5-08d6ed0d3e67
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CH2PR02MB6343; 
x-ms-traffictypediagnostic: CH2PR02MB6343:
x-microsoft-antispam-prvs: <CH2PR02MB63437EC2A5BE3AF7590F5DB9CB120@CH2PR02MB6343.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 006339698F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39850400004)(376002)(136003)(366004)(199004)(189003)(13464003)(53546011)(73956011)(478600001)(81166006)(9686003)(6436002)(11346002)(26005)(229853002)(66476007)(66556008)(64756008)(66446008)(4326008)(25786009)(6506007)(53936002)(107886003)(33656002)(81156014)(76116006)(6246003)(476003)(71200400001)(68736007)(76176011)(102836004)(66946007)(99286004)(53946003)(8676002)(8936002)(6116002)(446003)(305945005)(7696005)(186003)(3846002)(55016002)(30864003)(2906002)(6916009)(7736002)(486006)(71190400001)(14444005)(74316002)(256004)(14454004)(54906003)(5660300002)(66066001)(52536014)(316002)(86362001)(461764006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6343;
 H:CH2PR02MB6359.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 88ERd7RNRnTNf7I8cw+YQBzzSl50Pre09DQXQ8vmlDIXIKbSeZKUrHGLln/uGZ7r0DFMyXXhJXO3I73HSOwAefocI+fvKOnLJSuR7nKUA19lWuzrTTCk/g3T3zuH0RjaoaukEwK25SmMlLVtFxULTsJcRTiokru+ABe0SZe5qYdfShmjPPKjm5dYfU2jA+36EdWDfohePgow6Ita4ScBWtO4uojb/t/XyYOAzS1UBaiuf/+0BPA+EWY22+Ztgh7QJRlbscSQgTw1ycHKHw+ALESQbep4e/aUnBXN8fEL16AuFLv2COqhVlt/rbgKEqSHVWWLyziRpNX5ovluFBtZEX0PO3/gBAeQRNYks5b/MndyRZmH8x3pVQqK7jel/LdIqCxmROFBoJ9WG22jbbH6eOCOqYxTiwqY8qigKZ9BFcE=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c2a1c65-750d-4916-b0c5-08d6ed0d3e67
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2019 19:04:05.6034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: draganc@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6343
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_120408_815259_4D495DB3 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.72 listed in list.dnswl.org]
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
> Sent: Sunday 9 June 2019 12:28
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V5 04/11] misc: xilinx_sdfec: Store driver config and state
> 
> On Sun, Jun 09, 2019 at 01:04:09AM +0100, Dragan Cvetic wrote:
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
> > index 4524677..ddfca54 100644
> > --- a/drivers/misc/xilinx_sdfec.c
> > +++ b/drivers/misc/xilinx_sdfec.c
> > @@ -20,8 +20,89 @@
> >  #include <linux/slab.h>
> >  #include <linux/clk.h>
> >
> > +#include <uapi/misc/xilinx_sdfec.h>
> > +
> >  static int xsdfec_ndevs;
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
> > @@ -48,6 +129,8 @@ struct xsdfec_clks {
> >   * struct xsdfec_dev - Driver data for SDFEC
> >   * @regs: device physical base address
> >   * @dev: pointer to device struct
> > + * @state: State of the SDFEC device
> > + * @config: Configuration of the SDFEC device
> >   * @miscdev: Misc device handle
> >   * @error_data_lock: Error counter and states spinlock
> >   * @clks: Clocks managed by the SDFEC driver
> > @@ -57,16 +140,220 @@ struct xsdfec_clks {
> >  struct xsdfec_dev {
> >  	void __iomem *regs;
> >  	struct device *dev;
> > +	enum xsdfec_state state;
> > +	struct xsdfec_config config;
> >  	struct miscdevice miscdev;
> >  	/* Spinlock to protect state_updated and stats_updated */
> >  	spinlock_t error_data_lock;
> >  	struct xsdfec_clks clks;
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
> > +	u32 din_width;
> > +	u32 din_word_include;
> > +	u32 dout_width;
> > +	u32 dout_word_include;
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
> > @@ -247,6 +534,12 @@ static int xsdfec_probe(struct platform_device *pdev)
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
> > index 0000000..7b47a4c
> > --- /dev/null
> > +++ b/include/uapi/misc/xilinx_sdfec.h
> > @@ -0,0 +1,138 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note */
> > +/*
> > + * Xilinx SD-FEC
> > + *
> > + * Copyright (C) 2016 - 2017 Xilinx, Inc.
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
> > +	enum xsdfec_code code;
> > +	enum xsdfec_order order;
> > +	__s8 bypass;
> > +	__s8 code_wr_protect;
> > +	enum xsdfec_axis_width din_width;
> > +	enum xsdfec_axis_word_include din_word_include;
> > +	enum xsdfec_axis_width dout_width;
> > +	enum xsdfec_axis_word_include dout_word_include;
> 
> You can't put an 'enum' in a structure that crosses the user/kernel
> boundry, as you really do not "know" what the size is going to be.  A
> compiler can pick whatever width it wants to here.
> 
> So, if you "know" this is going to fit in 8 bits, then use __u8 for
> these and then cast on the kernel side if you care about trying to keep
> typesafe things.  If it is going to be bigger then 8 bits, then use the
> correct variable.
> 

Accepted.
I'm planning to keep the enum definitions  in include. They are user/kernel interfaces.
Please confirm this is OK with you.

Thanks 
Dragan

> thanks,
> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
