Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96849117E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 13:04:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HY+c5tlkdQUSD6rYcTX1LmJ7zLqsZacbooLAWWK0c2Q=; b=kfgyxkcXqQ+mzC
	GN9vhb0cVuZej1trHnz+hvJki7rGUOl3+wSZp/H7BS6BzrzbCPyYYof07IcKB8eaKQOeYRrTufCIK
	L7nN5QhRs49Ko4GeePaK7OIaXmd3uKVyRHoNZyxeBZIaFm2GPofO+oV11dy+1SwqIjtkbMIQ0ThFZ
	u4vljTCRC9sbjgf5Qpsq/qAlqVi0rnWlNFOOQL4CZZLfch/tnaRRBgynUJ1Z0Rio8Fjh/fB21Bthe
	PArbjt3T1baTj9diTnokNMWAzu0NbJWe7r1MNImLl+/0Q9Tdjuku28GgFK6g3QpeHFq2PBah5KU7w
	DnquDrKGjB3w50wM+lTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9W4-0001e4-SR; Thu, 02 May 2019 11:04:40 +0000
Received: from mail-cys01nam02on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe45::618]
 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9Vx-0001dV-Nd
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 11:04:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Fxz5rwDocQxZsxmYG4zmrOEB63+gnFkQNPThFTNI4U=;
 b=MQTTjKJnX3tvIkg2Lug44plksJIK5QsIrxAKcFVAfgEUJnuw1AEOV7jQy+r9NL4OPVlwXUJRThq9bd5O0ivpbI46tOomKYOWqqKyWknPeh3ftqVIdvtENPP2GDagSDVuCncrT5dGGVGFliBfCtFDbwn3l6BCqsR/KvaRamPnxKg=
Received: from BL0PR02MB5681.namprd02.prod.outlook.com (20.177.241.92) by
 BL0PR02MB3777.namprd02.prod.outlook.com (52.132.8.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Thu, 2 May 2019 11:04:30 +0000
Received: from BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d]) by BL0PR02MB5681.namprd02.prod.outlook.com
 ([fe80::6cde:f726:b36e:752d%5]) with mapi id 15.20.1835.018; Thu, 2 May 2019
 11:04:30 +0000
From: Dragan Cvetic <draganc@xilinx.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH V3 01/12] dt-bindings: xilinx-sdfec: Add SDFEC binding
Thread-Topic: [PATCH V3 01/12] dt-bindings: xilinx-sdfec: Add SDFEC binding
Thread-Index: AQHU/UVMESM8TKHZf0mZ8yysxzDRXaZWsusAgAD9BPA=
Date: Thu, 2 May 2019 11:04:30 +0000
Message-ID: <BL0PR02MB56815DFC139D65D46D5DFF50CB340@BL0PR02MB5681.namprd02.prod.outlook.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-2-git-send-email-dragan.cvetic@xilinx.com>
 <20190501194738.GA1441@bogus>
In-Reply-To: <20190501194738.GA1441@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=draganc@xilinx.com; 
x-originating-ip: [149.199.80.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 06915e2a-760f-4077-9ac6-08d6ceedf376
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BL0PR02MB3777; 
x-ms-traffictypediagnostic: BL0PR02MB3777:
x-microsoft-antispam-prvs: <BL0PR02MB3777F542F067B3525537355CCB340@BL0PR02MB3777.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(366004)(136003)(39860400002)(13464003)(189003)(199004)(68736007)(8676002)(64756008)(107886003)(66446008)(66946007)(66556008)(66476007)(73956011)(102836004)(186003)(256004)(11346002)(86362001)(486006)(52536014)(81156014)(81166006)(8936002)(71200400001)(71190400001)(476003)(5660300002)(26005)(7736002)(446003)(2906002)(478600001)(6506007)(99286004)(76176011)(7696005)(316002)(55016002)(54906003)(53546011)(6246003)(9686003)(6916009)(33656002)(74316002)(229853002)(25786009)(4326008)(66066001)(3846002)(6116002)(6436002)(53936002)(305945005)(14454004)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB3777;
 H:BL0PR02MB5681.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3Y5T033iWgD7r2hr/MQ2u4u2feAL0b1xrxVCgN61NW05NdrvDZCxdN0JCqd9exQ8YO8X8VFCVMWx+CvVRW4C3v5dSOMv8nd3C8ogcKm1kUFYNhHRkjw069+ukU12rIRU01AMwxiTsDUH0+UokR3zCsa6qLjA8ss40fCzP+BNXyER7iNWgk/0soqXdw2fT8Lge8Kcz3LueWSdci0nhwZfw4oSy1MSQN4Ypkdm2RgqPjaVffitqXPTMNMbH4Vl7do5o8Y2b7UMTA2CZDVsyQFx1tBCXXlZEQTX97KJAc8J0+AKEwLoAs0GFcfw4tznggWA+muGYErb4R3KPrAGqCFQko0BRnvG0NOcoP6XOiITlP+qB6vaendyDjzHer1cxkCFI6h0KcbD7nIWMaSf13tsQukx/K+1hT0blDDlNDE2siU=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06915e2a-760f-4077-9ac6-08d6ceedf376
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 11:04:30.4142 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB3777
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_040433_769053_A6B1ABB5 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe45:0:0:0:618 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>, Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Please find my inline comments below

Thank you
Dragan

> -----Original Message-----
> From: Rob Herring [mailto:robh@kernel.org]
> Sent: Wednesday 1 May 2019 20:48
> To: Dragan Cvetic <draganc@xilinx.com>
> Cc: arnd@arndb.de; gregkh@linuxfoundation.org; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org;
> mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> Subject: Re: [PATCH V3 01/12] dt-bindings: xilinx-sdfec: Add SDFEC binding
> 
> On Sat, Apr 27, 2019 at 11:04:55PM +0100, Dragan Cvetic wrote:
> > Add the Soft Decision Forward Error Correction (SDFEC) Engine
> > bindings which is available for the Zynq UltraScale+ RFSoC
> > FPGA's.
> >
> > Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> > Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
> > ---
> >  .../devicetree/bindings/misc/xlnx,sd-fec.txt       | 58 ++++++++++++++++++++++
> >  1 file changed, 58 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
> >
> > diff --git a/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt b/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
> > new file mode 100644
> > index 0000000..425b6a6
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
> > @@ -0,0 +1,58 @@
> > +* Xilinx SDFEC(16nm) IP *
> > +
> > +The Soft Decision Forward Error Correction (SDFEC) Engine is a Hard IP block
> > +which provides high-throughput LDPC and Turbo Code implementations.
> > +The LDPC decode & encode functionality is capable of covering a range of
> > +customer specified Quasi-cyclic (QC) codes. The Turbo decode functionality
> > +principally covers codes used by LTE. The FEC Engine offers significant
> > +power and area savings versus implementations done in the FPGA fabric.
> > +
> > +
> > +Required properties:
> > +- compatible: Must be "xlnx,sd-fec-1.1"
> > +- clock-names : List of input clock names from the following:
> > +    - "core_clk", Main processing clock for processing core (required)
> > +    - "s_axi_aclk", AXI4-Lite memory-mapped slave interface clock (required)
> > +    - "s_axis_din_aclk", DIN AXI4-Stream Slave interface clock (optional)
> > +    - "s_axis_din_words-aclk", DIN_WORDS AXI4-Stream Slave interface clock (optional)
> > +    - "s_axis_ctrl_aclk",  Control input AXI4-Stream Slave interface clock (optional)
> > +    - "m_axis_dout_aclk", DOUT AXI4-Stream Master interface clock (optional)
> > +    - "m_axis_dout_words_aclk", DOUT_WORDS AXI4-Stream Master interface clock (optional)
> > +    - "m_axis_status_aclk", Status output AXI4-Stream Master interface clock (optional)
> > +- clocks : Clock phandles (see clock_bindings.txt for details).
> > +- reg: Should contain Xilinx SDFEC 16nm Hardened IP block registers
> > +  location and length.
> > +- xlnx,sdfec-code : Should contain "ldpc" or "turbo" to describe the codes
> > +  being used.
> > +- xlnx,sdfec-din-words : A value 0 indicates that the DIN_WORDS interface is
> > +  driven with a fixed value and is not present on the device, a value of 1
> > +  configures the DIN_WORDS to be block based, while a value of 2 configures the
> > +  DIN_WORDS input to be supplied for each AXI transaction.
> > +- xlnx,sdfec-din-width : Configures the DIN AXI stream where a value of 1
> > +  configures a width of "1x128b", 2 a width of "2x128b" and 4 configures a width
> > +  of "4x128b".
> 
> Perhaps append with '-bits' and make the values 0, 128, 256, 512.
> 


The suggested will require the extra code for converting from 128,256,512  to 1,2,4, as HW is configured with 1, 2 and 4.


> > +- xlnx,sdfec-dout-words : A value 0 indicates that the DOUT_WORDS interface is
> > +  driven with a fixed value and is not present on the device, a value of 1
> > +  configures the DOUT_WORDS to be block based, while a value of 2 configures the
> > +  DOUT_WORDS input to be supplied for each AXI transaction.
> > +- xlnx,sdfec-dout-width : Configures the DOUT AXI stream where a value of 1
> > +  configures a width of "1x128b", 2 a width of "2x128b" and 4 configures a width
> > +  of "4x128b".
> 
> Same here.
> 


Same comment as previous one.


> > +Optional properties:
> > +- interrupts: should contain SDFEC interrupt number
> 
> The interrupt may not be wired?


My mistake. It should stay:
	interrupt-parent = <&axi_intc>;
	interrupts = <1 0>;


> 
> > +
> > +Example
> > +---------------------------------------
> > +	sd_fec_0: sd-fec@a0040000 {
> > +		compatible = "xlnx,sd-fec-1.1";
> > +		clock-names = "core_clk","s_axi_aclk","s_axis_ctrl_aclk","s_axis_din_aclk","m_axis_status_aclk","m_axis_dout_aclk";
> > +		clocks = <&misc_clk_2>,<&misc_clk_0>,<&misc_clk_1>,<&misc_clk_1>,<&misc_clk_1>, <&misc_clk_1>;
> > +		reg = <0x0 0xa0040000 0x0 0x40000>;
> > +		interrupt-parent = <&gic>;
> > +		interrupts = <0 89 4>;
> > +		xlnx,sdfec-code = "ldpc";
> > +		xlnx,sdfec-din-words = <0>;
> > +		xlnx,sdfec-din-width = <2>;
> > +		xlnx,sdfec-dout-words = <0>;
> > +		xlnx,sdfec-dout-width = <1>;
> > +	};
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
