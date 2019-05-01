Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EA4109D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 17:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXO12LlOa7FAAuS8QIYaH7qoyY1OK0AWXKhGuFnjlzg=; b=peU1Lc/RONywh/
	et8/XhiY0eNP9Rdb209BIgjvj+WLk+zvldRdX0Xrv6wM4QDe8pghsA8MzGvTDv2uEC8XWw96XA0cd
	wtTc8XxQ/2yl0OqLBrTA8+HXv9kvdH0aMrrOPCedHZtuZtc9ZT4nqrbJfjM9kJ5C2WmxzP+yV/QO5
	Sj032fs4dSM1GiCEGPdq1v+GY9HAySSUe+P4GWQV9h3xFctvqNeXaC7u0/EdjMq8neyVJY0tV3UAn
	gzH+ZRZ4iilSNymydtve3J8TCwzPH/vv8LUOvbchmfA6cI/l5s+VblqQYtbCmwex/OYOq2199E0dX
	tNCShk89FRspXUpO29BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLquu-0005DD-IH; Wed, 01 May 2019 15:13:04 +0000
Received: from mail-eopbgr740089.outbound.protection.outlook.com
 ([40.107.74.89] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqum-0005Cj-O8
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 15:12:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=infinera.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rwoLqd3A2pffZHiTQr1ps4Ogxnn8s7CWEpwht+QlX34=;
 b=VPD3sRuUomxuPcWhSqUQnEQuolasjwi5bS1NW/VynHpj5OWyhzp/14ah60B/n3ba41dXaBeuIZWHeHstlFOQY8wfVu7aH8gsPSRQCFY10Gig9EVRWZ5bl4y7GBbSK8u7QVoByqzCFaPExUhlrwcJfMr/sNrOCMotF/MGQeKAHHc=
Received: from BN8PR10MB3540.namprd10.prod.outlook.com (20.179.78.205) by
 BN8PR10MB3217.namprd10.prod.outlook.com (20.179.138.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Wed, 1 May 2019 15:12:52 +0000
Received: from BN8PR10MB3540.namprd10.prod.outlook.com
 ([fe80::24c5:ea68:cff3:4a16]) by BN8PR10MB3540.namprd10.prod.outlook.com
 ([fe80::24c5:ea68:cff3:4a16%7]) with mapi id 15.20.1856.008; Wed, 1 May 2019
 15:12:52 +0000
From: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
To: "rasmus.villemoes@prevas.dk" <rasmus.villemoes@prevas.dk>,
 "leoyang.li@nxp.com" <leoyang.li@nxp.com>, "qiang.zhao@nxp.com"
 <qiang.zhao@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 4/6] dt-bindings: soc/fsl: qe: document new
 fsl,qe-snums binding
Thread-Topic: [PATCH v2 4/6] dt-bindings: soc/fsl: qe: document new
 fsl,qe-snums binding
Thread-Index: AQHVAAEbcR+EIbNgq0q8q5zRwMqM06ZWYK2A
Date: Wed, 1 May 2019 15:12:52 +0000
Message-ID: <4c3aef881393398ca18efac99b1f76e7dbd19acf.camel@infinera.com>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-5-rasmus.villemoes@prevas.dk>
In-Reply-To: <20190501092841.9026-5-rasmus.villemoes@prevas.dk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Joakim.Tjernlund@infinera.com; 
x-originating-ip: [88.131.87.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24f776e0-b661-4e67-7b9f-08d6ce477b7b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BN8PR10MB3217; 
x-ms-traffictypediagnostic: BN8PR10MB3217:
x-microsoft-antispam-prvs: <BN8PR10MB32175B4C5538F43C485C14C3F43B0@BN8PR10MB3217.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(346002)(366004)(136003)(376002)(40224003)(199004)(189003)(66066001)(53936002)(36756003)(25786009)(6512007)(5660300002)(99286004)(76176011)(316002)(8676002)(86362001)(54906003)(110136005)(2201001)(7416002)(102836004)(476003)(2616005)(11346002)(486006)(256004)(14444005)(14454004)(26005)(6506007)(446003)(118296001)(66556008)(73956011)(66446008)(64756008)(66476007)(72206003)(66946007)(81156014)(81166006)(305945005)(186003)(7736002)(5024004)(91956017)(76116006)(2501003)(68736007)(71190400001)(71200400001)(4326008)(2906002)(6486002)(8936002)(229853002)(478600001)(6116002)(3846002)(6246003)(6436002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR10MB3217;
 H:BN8PR10MB3540.namprd10.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: infinera.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xeALA3hdN25/YrneNVKQ9E5TcKKXwTTBiLExr7cJmLM5VqPsPdcu+PKEA0nd+L0cGajrsHcLnmxUoEGnRyw/n4HgHTV57VlPGaPbW0+N5yEJIHBeMcny02gHXEvRoYvjIlAeCIyAFxdEpdsv521IQEbuj4oKEiFKoE49BkWyoV8SZQd385kKG7K+2tk9v24XhQTRLiJVK0voVuZZUIUwXr75XDukM+tnF9NY8yk06GCqZnykoLIifyG62kA8K9LLGRP9AUhBQiaSZeDxDGrXzaTaHQQ7sg6B7ctwlbUmkssQSlUQeRkO8oHBO+rPN38/LdaASlQpkgnM6wWdh46cFAXCjNJ4vRFOOrbbv9qdu78Ae/j3W7Y/LfUTcKs2nDCS1lnXW6DqOMUgp2whdfxf+iu6tYjoMDL2MvhojJQC+G0=
Content-ID: <D0283986214D8D409C19E11E53FCFC81@namprd10.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: infinera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24f776e0-b661-4e67-7b9f-08d6ce477b7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2019 15:12:52.8714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 285643de-5f5b-4b03-a153-0ae2dc8aaf77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR10MB3217
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_081257_009568_37E95337 
X-CRM114-Status: GOOD (  21.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.74.89 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "Rasmus.Villemoes@prevas.se" <Rasmus.Villemoes@prevas.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "oss@buserror.net" <oss@buserror.net>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-05-01 at 09:29 +0000, Rasmus Villemoes wrote:
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
> For example, for the MPC8309, one would specify the property as
> 
>                fsl,qe-snums = /bits/ 8 <
>                        0x88 0x89 0x98 0x99 0xa8 0xa9 0xb8 0xb9
>                        0xc8 0xc9 0xd8 0xd9 0xe8 0xe9>;

I think you need add this example to the qe.txt doc itselft. BTW, what is /bits/ ?
> 
> Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
> ---
>  Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/qe.txt
> index d7afaff5faff..05f5f485562a 100644
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
> --
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
