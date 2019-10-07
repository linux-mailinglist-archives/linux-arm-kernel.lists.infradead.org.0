Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7ACDCEC3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 20:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHpfyKB6ZeJWcq/7fGv7lRp+vH7FL8x8Y5Q5YmUIc9A=; b=B3gclVaR0kupyU
	/MC4Ah7LVs9xooKWqPp6KcVCyf/fpkLfhWkTf9PnYzwx4MXbV87sKKF7ZgmXELMj1jlY0p1l0QyKB
	UGcLybPzE91of2+J5p2OGoWI5dV+z2DrZC1KvgecVaN7qJDCK3K7PB8v9pCU/TAeP3bQjMMrxxRB1
	YFNlYggOpWMxpa7Z16ZITap5nEZzrCp23gvYfifcuIl2PmDVhw+9fVMs/mzLwHwNSaCF6jvchX6Ce
	IsxOBL5yEjR5gG60vkXmbImZ2a+IfcBcVfB1aAo6rR6d75BBPTj7/OD+9AR1zprXP6+ef8d+fnaW/
	LPkV1CA9qqOTMIUR9N6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHYCB-0003vx-O4; Mon, 07 Oct 2019 18:57:23 +0000
Received: from mail-bl2nam02on0609.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::609]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHYC5-0003vK-4l
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 18:57:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XdFIFYsnO6fBZqufkMrCrQgWwkvoaYaHP2XYsKCMeOjOEo9ifivbDRBrpJZQ+JyBARPHhQYiwLYngdEu5TYKUFN2hKJ3fkZMru3E/et+ML3ZCyRWMIGTPSF3my3alsaLkTfOB1w5fRjpts7y3SbxdhZQMs1IA2XJKhAadtfg3x8fuHCilFd8MK0svdR74YTvZz2iBvSu0IRrhNLTxYrufR1frSNhd6tvJtLT/b1rtqQFEUkqO7uRRMh5yN3I19B/6NfpIbYQlK7ZnikNHDSS+5w6YIl8UHJSw7K8hCiGCwoeuxaabPcoMCC0m7kexwNzaNILDh2Www93m4fjta58HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t53urfTa6DY0+QeDiLFIsdoOtQKtHDycgygWxu0GPqo=;
 b=krYC4yAmEGcKQaw87I/eDx6R8MKB0XwSri2BTo3fmS4gPpnrKpJF0mTqz4ZDQowwMep9R6+50b4c+0OduWV059paHHKo/3YFP0z1er5/n1IdFHKs3daO7sZP8NLRRb5yfp74I+l/KpZtRmhshCtOLqZA7B+FS8LJiB8tqtRafgZw1gKlCAyBJdBpmsi+B546w+J68NnRdCqDgd/VRFXZVAmSOySj2mwbc3dVDixvJAiid9vzIb7Wr7XD3CFQfnqYtXvVxvQVRKz3hKpFhcyye/rYuzZk+AWCDrHoZeFocHJrCBbLAIXZNvn8+BuwJjktLhRTyxHicAr7Y36T1zj+Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t53urfTa6DY0+QeDiLFIsdoOtQKtHDycgygWxu0GPqo=;
 b=gCXJAhIiA/1UWi+0dXcUVsCUxvwsnIEkKa3wu9eW5eqn7jr2WR+Ve9fbcvZwfN8d9ydgvmrwVWEppQQuX3Fej1U3FuAXmo2wkzi5c/js5K8gPJkETIw7+UJssj87TuSyFRVcK9aT3SIFGCE3XyhydMTOaTyadn/4zIsNMxhSbJA=
Received: from BYAPR02MB5992.namprd02.prod.outlook.com (20.179.89.80) by
 BYAPR02MB4133.namprd02.prod.outlook.com (20.176.249.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Mon, 7 Oct 2019 18:57:13 +0000
Received: from BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::dc47:4e37:db23:90e5]) by BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::dc47:4e37:db23:90e5%3]) with mapi id 15.20.2327.025; Mon, 7 Oct 2019
 18:57:13 +0000
From: Jolly Shah <JOLLYS@xilinx.com>
To: Michal Simek <michals@xilinx.com>, Greg KH <gregkh@linuxfoundation.org>
Subject: RE: [PATCH 1/2] dt-bindings: firmware: Add bindings for Versal
 firmware
Thread-Topic: [PATCH 1/2] dt-bindings: firmware: Add bindings for Versal
 firmware
Thread-Index: AQHVdWtshZwwGbsk+0uSb76OF2B3l6dKs9uAgAQOLICAANUGMA==
Date: Mon, 7 Oct 2019 18:57:13 +0000
Message-ID: <BYAPR02MB59922496F636C8C89B26DA70B89B0@BYAPR02MB5992.namprd02.prod.outlook.com>
References: <1569613206-20189-1-git-send-email-jolly.shah@xilinx.com>
 <1569613206-20189-2-git-send-email-jolly.shah@xilinx.com>
 <20191004161825.GB854302@kroah.com>
 <765978d6-10b3-b0e3-cf69-3c23104a8b6f@xilinx.com>
In-Reply-To: <765978d6-10b3-b0e3-cf69-3c23104a8b6f@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=JOLLYS@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1131b65f-c058-455b-ffbc-08d74b582a6a
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: BYAPR02MB4133:|BYAPR02MB4133:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB413349620A41F938A63C94D2B89B0@BYAPR02MB4133.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(346002)(396003)(136003)(39860400002)(199004)(13464003)(189003)(25786009)(7736002)(102836004)(14444005)(64756008)(66446008)(99286004)(66476007)(66556008)(66946007)(76116006)(74316002)(305945005)(33656002)(256004)(4326008)(7416002)(6246003)(316002)(53546011)(14454004)(76176011)(6506007)(229853002)(52536014)(186003)(81156014)(11346002)(6436002)(9686003)(81166006)(26005)(8676002)(54906003)(71190400001)(71200400001)(110136005)(66066001)(6116002)(478600001)(3846002)(5660300002)(2906002)(476003)(55016002)(486006)(446003)(7696005)(86362001)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4133;
 H:BYAPR02MB5992.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VlDnp401fvWxNmGS7nygDFyXtyYK0IlJcaAWCr0sjVkHt3RPw4SSzYz0Xc3jUbk383uWvtH1fTPewMF82hSkViSn1wayNXJrNtq4Wcjw9le6dWm+99nic6+35yvCZGV5bC2QHpQQLtnIoZD7l3/of1R6Jymbzsw3/e13AWkEkG4JWQfUa6KVnc7LAA0+OG9ok1HLI9xmJT4daj85jKCUqPEGKciiuxJd/sT/NgPB4SG/Q6WmjOnJl5/bu2iSqH97HGYZ1pDY5oElOFDxePA4CMDxCHybJToiSZ+W6ImX2De2w5bEjYCJXIm9MHShlZJq/gVM509PctCy7xnScLfbFRg5SZ9OkI7gZu5TccWJZOGtVjoBD0xgxnOV6NjfwP3PNXPOkveZMucsTrGW1ONNOQFDIIoU6Pab70DFrWLbbvU=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1131b65f-c058-455b-ffbc-08d74b582a6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 18:57:13.5416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WX3kheuQoRq0NQFb5ZHGYZMCGs9WbEhQSuUcUyLGYE/shSsvqLnpOef9/wMGysEa7PnzmqJzmbUJsIu1VPRySA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_115717_188659_30A4C01D 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michal and Greg,

> -----Original Message-----
> From: Michal Simek <michal.simek@xilinx.com>
> Sent: Sunday, October 06, 2019 11:14 PM
> To: Greg KH <gregkh@linuxfoundation.org>; Jolly Shah <JOLLYS@xilinx.com>
> Cc: ard.biesheuvel@linaro.org; mingo@kernel.org; matt@codeblueprint.co.uk;
> sudeep.holla@arm.com; hkallweit1@gmail.com; keescook@chromium.org;
> dmitry.torokhov@gmail.com; Michal Simek <michals@xilinx.com>; Rajan Vaja
> <RAJANV@xilinx.com>; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH 1/2] dt-bindings: firmware: Add bindings for Versal firmware
> 
> On 04. 10. 19 18:18, Greg KH wrote:
> > On Fri, Sep 27, 2019 at 12:40:05PM -0700, Jolly Shah wrote:
> >> ZynqMP firmware driver can be used for versal also.
> >> Add versal compatible string to zynqmp firmware driver
> >> doc.
> >>
> >> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> >> ---
> >>  .../bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt    | 16
> +++++++++++++++-
> >>  1 file changed, 15 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-
> firmware.txt
> b/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-
> firmware.txt
> >> index a4fe136..18c3aea 100644
> >> --- a/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-
> firmware.txt
> >> +++ b/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-
> firmware.txt
> >> @@ -11,7 +11,9 @@ power management service, FPGA service and other
> platform management
> >>  services.
> >>
> >>  Required properties:
> >> - - compatible:	Must contain:	"xlnx,zynqmp-firmware"
> >> + - compatible:	Must contain any of below:
> >> +		"xlnx,zynqmp-firmware" for Zynq Ultrascale+ MPSoC
> >> +		"xlnx,versal-firmware" for Versal
> >>   - method:	The method of calling the PM-API firmware layer.
> >>  		Permitted values are:
> >>  		  - "smc" : SMC #0, following the SMCCC
> >> @@ -21,6 +23,8 @@ Required properties:
> >>  Example
> >>  -------
> >>
> >> +Zynq Ultrascale+ MPSoC
> >> +----------------------
> >>  firmware {
> >>  	zynqmp_firmware: zynqmp-firmware {
> >>  		compatible = "xlnx,zynqmp-firmware";
> >> @@ -28,3 +32,13 @@ firmware {
> >>  		...
> >>  	};
> >>  };
> >> +
> >> +Versal
> >> +------
> >> +firmware {
> >> +	versal_firmware: versal-firmware {
> >> +		compatible = "xlnx,versal-firmware";
> >> +		method = "smc";
> >> +		...
> >> +	};
> >> +};
> >> --
> >> 2.7.4
> >>
> >
> >
> > For new dt bindings, don't you have to cc: the dt maintainers and
> > mailing list?  I can't take the patch until I get an ack from them.
> 
> Yes dt guys should be in CC and normally I am taking this via ARM soc tree.
> 
> Jolly: Please resend
> 

Sorry missed it earlier. Sent v2 including DT maintainers.

Thanks,
Jolly Shah

> Thanks,
> Michal
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
