Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 471CE1B522
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gkhauzjs1xrwzvOBN68huKTPve1/p1DyrDA/+g+DawM=; b=jswzZ9lTUMSoSq
	kFnXhTsH1b3ZXppU0Z5lCRKq5c5vPp2oDDsGt4t3M8xKmClZfJVB3RWfJ6aLWGByrVUvS88rVKess
	XEiNVYX2VMNP2fR9KEh1LxlzyDxMeAm3uVjG+PmfgcWO9M5ubxtdrEuo7lr4Cp3dP4aWlB5wTZh5D
	cpeZ6tmCC2fSrovzfDzrf4XVyNSI3kuI7z5Yh6kTDZCQ7SdXRshCIreSamoMiGZ+pRwg0mKWAeMKr
	QDowudU/0RQQN4hKGaXn57jKXpTs3pqxwal4TUgyHyxIRB8ct1hOMH7WVinojdu0LEXo4fXo4bbAs
	IU1/L/2/r++BNQJ9P0ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ9IW-0004T3-AZ; Mon, 13 May 2019 11:39:12 +0000
Received: from mail-eopbgr740075.outbound.protection.outlook.com
 ([40.107.74.75] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9IO-0004SH-Iw
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:39:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=infinera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7bFwWqOQHMOO+34Oa8D7hVJuyV7G6ZKpj+L+SAshp40=;
 b=VkqJcfyetNKc0vn8PtEFzEdyFAgzQVJTGOp1jpnYoc1pYlx3pmnzLxuPARhaUNc/JzH9MkbAgM+gvH9xj/fpOhvCBhc+hkmGW+eTEHmM7q/HlaF4s+CreVwN0Pfe7ptcDHXBGvVMTKvu7VT4FNE0fQ3nKU6X2zwtz0rjHO9sazY=
Received: from BN8PR10MB3540.namprd10.prod.outlook.com (20.179.78.205) by
 BN8PR10MB3730.namprd10.prod.outlook.com (20.179.97.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Mon, 13 May 2019 11:39:01 +0000
Received: from BN8PR10MB3540.namprd10.prod.outlook.com
 ([fe80::24c5:ea68:cff3:4a16]) by BN8PR10MB3540.namprd10.prod.outlook.com
 ([fe80::24c5:ea68:cff3:4a16%7]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 11:39:01 +0000
From: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
To: "rasmus.villemoes@prevas.dk" <rasmus.villemoes@prevas.dk>,
 "leoyang.li@nxp.com" <leoyang.li@nxp.com>, "qiang.zhao@nxp.com"
 <qiang.zhao@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 4/6] dt-bindings: soc/fsl: qe: document new
 fsl,qe-snums binding
Thread-Topic: [PATCH v3 4/6] dt-bindings: soc/fsl: qe: document new
 fsl,qe-snums binding
Thread-Index: AQHVCX0dAJ3DoPo7GkSqekfXCWC8OKZo7e6A
Date: Mon, 13 May 2019 11:39:01 +0000
Message-ID: <35d7ec55a136259668cadbb662bfd4913c4423ca.camel@infinera.com>
References: <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190513111442.25724-1-rasmus.villemoes@prevas.dk>
 <20190513111442.25724-5-rasmus.villemoes@prevas.dk>
In-Reply-To: <20190513111442.25724-5-rasmus.villemoes@prevas.dk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Joakim.Tjernlund@infinera.com; 
x-originating-ip: [88.131.87.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 11214e72-c1b0-4e30-2f8d-08d6d797987b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BN8PR10MB3730; 
x-ms-traffictypediagnostic: BN8PR10MB3730:
x-microsoft-antispam-prvs: <BN8PR10MB3730703F403556E2FCC7C3FFF40F0@BN8PR10MB3730.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(39860400002)(136003)(376002)(366004)(396003)(346002)(40224003)(199004)(189003)(51914003)(52084003)(186003)(446003)(54906003)(14454004)(305945005)(229853002)(66556008)(66066001)(6486002)(99286004)(11346002)(66446008)(64756008)(7416002)(66476007)(3846002)(26005)(6116002)(6506007)(102836004)(6512007)(476003)(76176011)(2906002)(6436002)(2616005)(110136005)(7736002)(76116006)(91956017)(66946007)(73956011)(486006)(6246003)(2501003)(86362001)(36756003)(118296001)(316002)(256004)(5024004)(8676002)(81166006)(14444005)(81156014)(5660300002)(53936002)(71190400001)(71200400001)(68736007)(8936002)(72206003)(4326008)(2201001)(478600001)(25786009)(142933001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR10MB3730;
 H:BN8PR10MB3540.namprd10.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: infinera.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BnAdRF8xk/oDQ7bQP4AFZAcaWjDFZ5fmdZhODaOpjs/bt02E4XObfbVJXu9cvndwqcM8BQL0zN0M07pJJhIeaRLuRT3G/1yy1rK0dRedHS8UB/Poi9HOT7A6fldznUQB6kGHuZ3ogEswHB1Zf3/mu1jma8PFikWWk5sO5LkqDATfJ32sMHyZN0XbXPpWrYDmwVaBkpVY/IHh1PSO0oueWKiJ+VMSqQzO6LBO9Fm1oAtfAK4gGlMJDWQdidPJ6YxtzJBYaX+u/ycDvBkXZHXXmnk1hWzwh5ibFCrGUJow0conPwVI08XK46QgHKyKvBkRVhOLkVlzSmRqV/PDK31oGLPnHtTH3GMDfyKcJuxunhg9CXqREY/ENHI1VZLOWlr+/+6UBZm3t2CvLMZDPkB5UR4B9dm8hWSOVnExZ7Zx+g0=
Content-ID: <AFB1973088CD854496BB37D5532730F9@namprd10.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: infinera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11214e72-c1b0-4e30-2f8d-08d6d797987b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 11:39:01.6378 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 285643de-5f5b-4b03-a153-0ae2dc8aaf77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR10MB3730
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_043904_730857_D8147879 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "christophe.leroy@c-s.fr" <christophe.leroy@c-s.fr>,
 "oss@buserror.net" <oss@buserror.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Rasmus.Villemoes@prevas.se" <Rasmus.Villemoes@prevas.se>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-05-13 at 11:14 +0000, Rasmus Villemoes wrote:
> CAUTION: This email originated from outside of the organization. Do not click links or open attachments unless you recognize the sender and know the content is safe.
> 
> 
> Reading table 4-30, and its footnotes, of the QUICC Engine Block
> Reference Manual shows that the set of snum _values_ is not
> necessarily just a function of the _number_ of snums, as given in the
> fsl,qe-num-snums property.
> 
> As an alternative, to make it easier to add support for other variants
> of the QUICC engine IP, this introduces a new binding fsl,qe-snums,
> which automatically encodes both the number of snums and the actual
> values to use.
> 
> Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
> ---
> Rob, thanks for the review of v2. However, since I moved the example
> from the commit log to the binding (per Joakim's request), I didn't

Thanks, looks good now.

> add a Reviewed-by tag for this revision.
> 
>  .../devicetree/bindings/soc/fsl/cpm_qe/qe.txt       | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt
> index d7afaff5faff..05ec2a838c54 100644
> --- a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt
> +++ b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt
> @@ -18,7 +18,8 @@ Required properties:
>  - reg : offset and length of the device registers.
>  - bus-frequency : the clock frequency for QUICC Engine.
>  - fsl,qe-num-riscs: define how many RISC engines the QE has.
> -- fsl,qe-num-snums: define how many serial number(SNUM) the QE can use for the
> +- fsl,qe-snums: This property has to be specified as '/bits/ 8' value,
> +  defining the array of serial number (SNUM) values for the virtual
>    threads.
> 
>  Optional properties:
> @@ -34,6 +35,11 @@ Recommended properties
>  - brg-frequency : the internal clock source frequency for baud-rate
>    generators in Hz.
> 
> +Deprecated properties
> +- fsl,qe-num-snums: define how many serial number(SNUM) the QE can use
> +  for the threads. Use fsl,qe-snums instead to not only specify the
> +  number of snums, but also their values.
> +
>  Example:
>       qe@e0100000 {
>         #address-cells = <1>;
> @@ -44,6 +50,11 @@ Example:
>         reg = <e0100000 480>;
>         brg-frequency = <0>;
>         bus-frequency = <179A7B00>;
> +       fsl,qe-snums = /bits/ 8 <
> +               0x04 0x05 0x0C 0x0D 0x14 0x15 0x1C 0x1D
> +               0x24 0x25 0x2C 0x2D 0x34 0x35 0x88 0x89
> +               0x98 0x99 0xA8 0xA9 0xB8 0xB9 0xC8 0xC9
> +               0xD8 0xD9 0xE8 0xE9>;
>       }
> 
>  * Multi-User RAM (MURAM)
> --
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
