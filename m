Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DF0132D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 19:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9g72bHtEWTZHzhpdgj8w5oyLwpUrIqbwA0kpvWQ0+c=; b=Iu/Z2kJceHZ8FW
	xVD1yXTaAMfQEXjTVG6oSx2Kdt6gC3Q5Q3s95Kc0K3v6IQ/TamLjJ3A49odyHs4h/EnOUmMM514sW
	mKtYA7XIopiprKAGDlpY73sNhSMzcxbHwyBMzhbyRnDffgov5BCFhG1ho8xA/qKp8llckx44p4rCi
	tc7BhUZXJDyQemBTUgGcAdgPiBEloMLSAEam2D9ZooBirCnAFC9xx1UrDevpMouTnuk8SrCvopf/2
	IjB7JQ6HSk14udCITKC4ieKFS6mJHS66bOJ+fze0k5u8yfZCND2i00GZ/FMyr++r0Z+F7vAIrinVA
	AIynsLCYsopsYdw+4UoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbbs-0005ZO-Gz; Fri, 03 May 2019 17:04:32 +0000
Received: from mail-eopbgr730070.outbound.protection.outlook.com
 ([40.107.73.70] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbbk-0005YO-KF
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 17:04:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QI4SwQR5RQkVqW+Q0jY+s+NyNw8aiN9otNV5LN2xGz8=;
 b=UN6Sl/a7WcUYGZNXU4PHAHHBv7XMuJ83fkXbNMg0eUS4x31amOeD4CmWUcHE1OKhrAI3SJfugTJD76YryPzmfPghsiulV0DkHEQbaaorL09jSWBH4O2KzpaQb37cddjhlpWjY5vHFeKUM364viGUMMVnfw7Gpn0KNAHOtMAUn8E=
Received: from BL0PR02MB5681.namprd02.prod.outlook.com (20.177.241.92) by
 BL0PR02MB4289.namprd02.prod.outlook.com (10.167.172.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Fri, 3 May 2019 17:04:17 +0000
Received: from BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d]) by BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d%5]) with mapi id 15.20.1856.012; Fri, 3 May 2019
 17:04:17 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH V3 01/12] dt-bindings: xilinx-sdfec: Add SDFEC binding
Thread-Topic: [PATCH V3 01/12] dt-bindings: xilinx-sdfec: Add SDFEC binding
Thread-Index: AQHU/UVMESM8TKHZf0mZ8yysxzDRXaZWsusAgAD9BPCAAJ0dgIABWLzg
Date: Fri, 3 May 2019 17:04:17 +0000
Message-ID: <BL0PR02MB5681ECF087DF6672F1611A1BCB350@BL0PR02MB5681.namprd02.prod.outlook.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-2-git-send-email-dragan.cvetic@xilinx.com>
 <20190501194738.GA1441@bogus>
 <BL0PR02MB56815DFC139D65D46D5DFF50CB340@BL0PR02MB5681.namprd02.prod.outlook.com>
 <CAL_JsqLhmtqUdUd8OPdx-390imegzouAJ43JOhYr16w87afS-Q@mail.gmail.com>
In-Reply-To: <CAL_JsqLhmtqUdUd8OPdx-390imegzouAJ43JOhYr16w87afS-Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20505d24-e144-425a-b980-08d6cfe960df
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BL0PR02MB4289; 
x-ms-traffictypediagnostic: BL0PR02MB4289:
x-microsoft-antispam-prvs: <BL0PR02MB428974C526DCE3186FF100BECB350@BL0PR02MB4289.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(366004)(396003)(376002)(136003)(13464003)(189003)(199004)(6436002)(256004)(6506007)(316002)(53546011)(6116002)(52536014)(74316002)(54906003)(478600001)(25786009)(68736007)(64756008)(6916009)(102836004)(2906002)(99286004)(71200400001)(66446008)(66946007)(73956011)(71190400001)(8936002)(66556008)(8676002)(229853002)(81156014)(81166006)(3846002)(14454004)(76116006)(33656002)(305945005)(86362001)(9686003)(7736002)(66476007)(186003)(66066001)(107886003)(6246003)(53936002)(76176011)(476003)(11346002)(55016002)(5660300002)(4326008)(486006)(7696005)(26005)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4289;
 H:BL0PR02MB5681.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vwY8WFbufxbrIxH9DIyoxxTDqRmMw7RZD+B/wYaiBBtOpT6ungKOKiB6sanxA5qY5AUnhgbp04TJyR6uP9vx3K7NhmAPCfeBAULbJ/wmQXjTy+0hkhzyqx9zcjwruKCTsR4KgcMmRJ3UP4cXK/Ogd5w6HtRPZsySViSd9es0JV4elg2PHvSM0oA4BhZR0P48xSPLDg29K3r9wx6foxoDNof3RDtad9XxiUVlZtSgn5G2uOy+xNKAVZu/Ns6bBfwy2akZ0GST0s1skac7lZEGPOXAVlSw0EdCCqoBtI+by/na5g9yeTfpys7W8sONhDbneTJgNbeD0ZjHVpZAj14kLOiWsqmnV9DhjxjYEVzVwl2Hl9TMyABUtK8rKKchV6FP/JNtIXXLaTRQDc2q5DjKenJnqnvWXbuKH2IjnAfTQLo=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20505d24-e144-425a-b980-08d6cfe960df
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 17:04:17.7848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4289
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_100424_665266_E7518D90 
X-CRM114-Status: GOOD (  22.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>, Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Please find inline comments below

Regards
Dragan

> -----Original Message-----
> From: Rob Herring [mailto:robh@kernel.org]
> Sent: Thursday 2 May 2019 21:16
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; gregkh@linuxfoundation.org; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V3 01/12] dt-bindings: xilinx-sdfec: Add SDFEC binding
> 
> On Thu, May 2, 2019 at 6:04 AM Dragan Cvetic <draganc@xilinx.com> wrote:
> >
> > Hi Rob,
> >
> > Please find my inline comments below
> >
> > Thank you
> > Dragan
> >
> > > -----Original Message-----
> > > From: Rob Herring [mailto:robh@kernel.org]
> > > Sent: Wednesday 1 May 2019 20:48
> > > To: Dragan Cvetic <draganc@xilinx.com>
> > > Cc: arnd@arndb.de; gregkh@linuxfoundation.org; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org;
> > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > Subject: Re: [PATCH V3 01/12] dt-bindings: xilinx-sdfec: Add SDFEC binding
> > >
> > > On Sat, Apr 27, 2019 at 11:04:55PM +0100, Dragan Cvetic wrote:
> > > > Add the Soft Decision Forward Error Correction (SDFEC) Engine
> > > > bindings which is available for the Zynq UltraScale+ RFSoC
> > > > FPGA's.
> > > >
> > > > Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> > > > Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
> > > > ---
> > > >  .../devicetree/bindings/misc/xlnx,sd-fec.txt       | 58 ++++++++++++++++++++++
> > > >  1 file changed, 58 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt b/Documentation/devicetree/bindings/misc/xlnx,sd-
> fec.txt
> > > > new file mode 100644
> > > > index 0000000..425b6a6
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
> > > > @@ -0,0 +1,58 @@
> > > > +* Xilinx SDFEC(16nm) IP *
> > > > +
> > > > +The Soft Decision Forward Error Correction (SDFEC) Engine is a Hard IP block
> > > > +which provides high-throughput LDPC and Turbo Code implementations.
> > > > +The LDPC decode & encode functionality is capable of covering a range of
> > > > +customer specified Quasi-cyclic (QC) codes. The Turbo decode functionality
> > > > +principally covers codes used by LTE. The FEC Engine offers significant
> > > > +power and area savings versus implementations done in the FPGA fabric.
> > > > +
> > > > +
> > > > +Required properties:
> > > > +- compatible: Must be "xlnx,sd-fec-1.1"
> > > > +- clock-names : List of input clock names from the following:
> > > > +    - "core_clk", Main processing clock for processing core (required)
> > > > +    - "s_axi_aclk", AXI4-Lite memory-mapped slave interface clock (required)
> > > > +    - "s_axis_din_aclk", DIN AXI4-Stream Slave interface clock (optional)
> > > > +    - "s_axis_din_words-aclk", DIN_WORDS AXI4-Stream Slave interface clock (optional)
> > > > +    - "s_axis_ctrl_aclk",  Control input AXI4-Stream Slave interface clock (optional)
> > > > +    - "m_axis_dout_aclk", DOUT AXI4-Stream Master interface clock (optional)
> > > > +    - "m_axis_dout_words_aclk", DOUT_WORDS AXI4-Stream Master interface clock (optional)
> > > > +    - "m_axis_status_aclk", Status output AXI4-Stream Master interface clock (optional)
> > > > +- clocks : Clock phandles (see clock_bindings.txt for details).
> > > > +- reg: Should contain Xilinx SDFEC 16nm Hardened IP block registers
> > > > +  location and length.
> > > > +- xlnx,sdfec-code : Should contain "ldpc" or "turbo" to describe the codes
> > > > +  being used.
> > > > +- xlnx,sdfec-din-words : A value 0 indicates that the DIN_WORDS interface is
> > > > +  driven with a fixed value and is not present on the device, a value of 1
> > > > +  configures the DIN_WORDS to be block based, while a value of 2 configures the
> > > > +  DIN_WORDS input to be supplied for each AXI transaction.
> > > > +- xlnx,sdfec-din-width : Configures the DIN AXI stream where a value of 1
> > > > +  configures a width of "1x128b", 2 a width of "2x128b" and 4 configures a width
> > > > +  of "4x128b".
> > >
> > > Perhaps append with '-bits' and make the values 0, 128, 256, 512.
> > >
> >
> >
> > The suggested will require the extra code for converting from 128,256,512  to 1,2,4, as HW is configured with 1, 2 and 4.
> 
> A simple divide by 128.
> 
> We generally prefer DT to use real units rather than register values.

The data enters/exits SDFEC in 128 bits word units (__int128).
1,2,4 are not a register values only, they represent a number
of units which are used in SDFEC communication.

> 
> Rob
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
