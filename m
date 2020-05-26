Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A21EB1E2939
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 19:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KJxV2F/3xVgR8gB14y652j0lSJKBbFvIqivGEBs0f0=; b=Xdin3V2wYJiBoW
	qYEQVNHq0SHD/WkoN0hG4mtfk/HEXjA9aj8wILPVHr9d43PGf/qCAVNvU6/QAGsRz7Yb4VILdmO9O
	vVLzShkFCJAC20zra6zM8FhK7Itqcd0XMKYDUhviwBC0VScsrJCIMomm0ao3UO8FCd/FFtt7GVg1q
	Qbm1hPgVFSnPNGk/7wN3FM9AQ6G70ASdLWDoA7UtXQoU6ATl13/yRVZxQCcvrdRAI/W97HXrula3q
	PnQzbtJE9IzohMrlG3BxKnW4MdI4ibp2eQ2ABSufiHSsQ1wMIBkpGs3tqCu+usJIgnjM7b9q4GFct
	pzGLjzsYWojAQHu8PmkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jddZD-0005tL-Iv; Tue, 26 May 2020 17:40:43 +0000
Received: from mail-dm6nam11on2053.outbound.protection.outlook.com
 ([40.107.223.53] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jddYx-0005s9-DO
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 17:40:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G8/getJTX6mLGZiEPOzLrYezzfh7M2jgZVjEsE809FbNuegWdYkQpKQigYHONuOF2q/h3CafLZ+BpAug3pF7Jcq+PRUCF0MnI2o2yx5nnzoGoNpwsN8F3YD2NM8vOWn7ieL/JFe5x5p4sy+rZyt64fLkHnQ31HNT2M9GacCGIAWNy61fnBXOpMoOb7D9AvhmIVJNVnXWJ6k9r+3DnD7BDH4JoBp9ZuSa9niCz+k80wRB2aPdayR5Sc18e7mpioE2uf1yGszf3lXk+o1diEytVenikpvkLU1JFJK1KjsGPChRw3X6f9oqUDhAqxFeMon9xUtaZVPWI9pwJd2DNk4Ydw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SwYb4Y44y+i3XjTnhjz5aBjKZXIWebNNANpekkBuUgg=;
 b=ZyNXARXVEd5WW3162IwKMKHUat+1wdNXRFige+/rWgO7EgA9UAu5hggalE/pBalxXIMKwUsHkxZOU+a1jT0Ue1v9cR1JTN0jbXjPmkwPiguusJu3aL6+D/+YjyRkSj5Ya/dnymYBZHMmACmfpYM9MsqhWf5omrOx99I186lX4lOuJ0UJo4TkeXuLC8Msz5Tyx2oc4obeYbrzoH2eVDGRhROQbzdl2oecLizxCZCTl3iBC/CXZrxyu81Bo5C1K3rxG6MQadHeHNmMMu2XYSV2vw1FGx8URk223fe4ydND+tNI7AbQZ4eg7MaqsKNUwdvoqkJcpNMSQrlnxXzVkFc2AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SwYb4Y44y+i3XjTnhjz5aBjKZXIWebNNANpekkBuUgg=;
 b=Gm+VG3rqAOjd5sVbEYgvhtmBhwtZtudFQeSb7vmHNy5f8+c3RdLVIaigGLsGZ9c7snP1f0Rfa0p9x9OUBW5ZVUZE+bX6MV4Nc34rK18rUiq2LEn9zc3p+XODbPHYda1RywPd8nOdAEFezHit0Q22XhBheK9dG7QG2d9lCY482RY=
Received: from BYAPR02MB4407.namprd02.prod.outlook.com (2603:10b6:a03:55::31)
 by BYAPR02MB6437.namprd02.prod.outlook.com (2603:10b6:a03:120::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Tue, 26 May
 2020 17:40:22 +0000
Received: from BYAPR02MB4407.namprd02.prod.outlook.com
 ([fe80::e59d:9815:461e:2a79]) by BYAPR02MB4407.namprd02.prod.outlook.com
 ([fe80::e59d:9815:461e:2a79%6]) with mapi id 15.20.3021.027; Tue, 26 May 2020
 17:40:22 +0000
From: Ben Levinsky <BLEVINSK@xilinx.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH v4 4/5] dt-bindings: remoteproc: Add documentation for
 ZynqMP R5 rproc bindings
Thread-Topic: [PATCH v4 4/5] dt-bindings: remoteproc: Add documentation for
 ZynqMP R5 rproc bindings
Thread-Index: AQHWGl7uxdGBAyULe0azD2FJNJZOnqijj0uAgBdEEWA=
Date: Tue, 26 May 2020 17:40:22 +0000
Message-ID: <BYAPR02MB44077C8B7B7FD23FDE8E31B8B5B00@BYAPR02MB4407.namprd02.prod.outlook.com>
References: <1587749770-15082-1-git-send-email-ben.levinsky@xilinx.com>
 <1587749770-15082-5-git-send-email-ben.levinsky@xilinx.com>
 <20200511221755.GA13585@bogus>
In-Reply-To: <20200511221755.GA13585@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=xilinx.com;
x-originating-ip: [98.207.156.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3aa5111d-c412-464e-ea9c-08d8019bdda8
x-ms-traffictypediagnostic: BYAPR02MB6437:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB6437622D6531643C504DBA99B5B00@BYAPR02MB6437.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7+x4p9DsfGjY/tjNdjJ0Bz1evHfRlSPN2tgJtahXpHmaMI1ePAiNB6/zigJRhKxwq6vLmOiy8gTGi1EgN4j4xBlN9dMQC38lS6UT2CC+hCidbcO01NNYtX+yE/TOaeDax36bPJTWfZz8pmnhx4y6yHg5l67agL3DWtKuJ3049qtE6LdR/a+WuXQJcfO5wEtetJ9abgOO+RPJ+lvrj3Vuok9EGNo2Ut57sAeVS3yPHqXUIfbGuBfljpUAoIWgQwVQH6jSZCudrrv5JRQWzJTxe4YcIodGfdQQOapHu5s6fFPGsxMk+TkV0rlFxUvawYyx9OzP/ZgAH8fLyaJrP2kCXxeYg3WfOiL3k0pEoyZ8IM1NT+8sS0wQVbmvocSUulnmYcRV7/r3sQ1g3GccWMOosA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR02MB4407.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(136003)(396003)(366004)(39850400004)(55016002)(66946007)(9686003)(71200400001)(186003)(53546011)(6506007)(54906003)(86362001)(4326008)(316002)(52536014)(107886003)(7696005)(5660300002)(76116006)(64756008)(2906002)(66446008)(478600001)(6916009)(26005)(66476007)(66556008)(33656002)(8676002)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: M/QpV4u9rEjj49+P2Jml4U8nzD2hL2SfOE4Rip78JSXvXu7QNBBrTsDVo3Tq7/xkMbjhXgNsMw7xydS1fzeFXsTFbaO7n0JnJYLxA0zd73da8CnN+uiGw+9hTdTeaDt5ctxfCbdZfWz330szHDLkQW0hrMRQzF98zl+iHia9OPQOMl+kGy/kat9pbf7tQ+axUDmyd0pkw4qt4ttg6AkHDylTp4vXy/Z0COZk2WyKCfFD9YNhkmaSfbtO9hYq9R89PI0xOTInqBHVy47Q5qDNMIBAwkCu1yIeztQJlKT5xrVywRYZE2OhXq4EOOhu3RMkBdXb7++olOjHTEgRI5qz8heNlLQvjud8SVO0MDBhdgJbnRxmgIgycSNKWf9WUTmVJZe5MRoPk5NL9wWSpGSz1udwYU811vPRXYAdWDnSWEWP/dbcxyZ3kvSKj9pzft6tB+C1Y9rnsA4aIsOWGRRcknzxXCcev6NOiJGaO7WQ0hhgOO5krJeiYN6FMLcKNhOW
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aa5111d-c412-464e-ea9c-08d8019bdda8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 17:40:22.1939 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3KaaheJxNzn1ZwL3tj7LkV/r1Mm73Tj5AvCfCAq8wzEKUAstNfHuvdutenTRxcgRL71HOEC14g0C7P07+XI0Vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB6437
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_104028_964963_8F342EB7 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "ohad@wizery.com" <ohad@wizery.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Stefano Stabellini <stefanos@xilinx.com>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 Michal Simek <michals@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

The Xilinx R5 Remoteproc driver has been around for a long time -- admittedly we should have upstreamed it long ago. The driver in the current form is using an "classic" remoteproc device tree node as described here.

I am working with Stefano to come up with an appropriate System Device Tree representation but it is not going to be ready right away. Our preference would be to upstream the remoteproc node and driver in their current forms while system device tree is maturing.

Will also update as per your below comments in a v5 too.

Best Regards,
Ben Levinsky

-----Original Message-----
From: Rob Herring <robh@kernel.org> 
Sent: Monday, May 11, 2020 3:18 PM
To: Ben Levinsky <BLEVINSK@xilinx.com>
Cc: ohad@wizery.com; bjorn.andersson@linaro.org; Michal Simek <michals@xilinx.com>; Jolly Shah <JOLLYS@xilinx.com>; Rajan Vaja <RAJANV@xilinx.com>; mark.rutland@arm.com; linux-remoteproc@vger.kernel.org; linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Jason Wu <j.wu@xilinx.com>; Jiaying Liang <jliang@xilinx.com>
Subject: Re: [PATCH v4 4/5] dt-bindings: remoteproc: Add documentation for ZynqMP R5 rproc bindings

On Fri, Apr 24, 2020 at 10:36:09AM -0700, Ben Levinsky wrote:
> Add binding for ZynqMP R5 OpenAMP.
> 
> Represent the RPU domain resources in one device node. Each RPU 
> processor is a subnode of the top RPU domain node.

This needs to be sorted out as part of the system DT effort that Xilinx is working on. I can't see this binding co-existing with it.

> 
> Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
> Signed-off-by: Jason Wu <j.wu@xilinx.com>
> Signed-off-by: Wendy Liang <jliang@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
> Changes since v2:
> - update zynqmp_r5 yaml parsing to not raise warnings for extra
>   information in children of R5 node. The warning "node has a unit
>   name, but no reg or ranges property" will still be raised though 
>   as this particular node is needed to describe the
>   '#address-cells' and '#size-cells' information.
> Changes since 3:
> - remove warning '/example-0/rpu@ff9a0000/r5@0:
>   node has a unit name, but no reg or ranges property'
>   by adding reg to r5 node.
> ---
> 
>  .../remoteproc/xilinx,zynqmp-r5-remoteproc.yaml    | 127 +++++++++++++++++++++
>  1 file changed, 127 insertions(+)
>  create mode 100644 
> Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remotepr
> oc.yaml
> 
> diff --git 
> a/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remote
> proc.yaml 
> b/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remote
> proc.yaml
> new file mode 100644
> index 0000000..41520b6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-re
> +++ moteproc.yaml
> @@ -0,0 +1,127 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) %YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Xilinx R5 remote processor controller bindings
> +
> +description:
> +  This document defines the binding for the remoteproc component that 
> +loads and
> +  boots firmwares on the Xilinx Zynqmp and Versal family chipset.
> +
> +maintainers:
> +  - Ed Mooring <ed.mooring@xilinx.com>
> +  - Ben Levinsky <ben.levinsky@xilinx.com>
> +
> +properties:
> +  compatible:
> +    const: "xlnx,zynqmp-r5-remoteproc-1.0"
> +
> +  core_conf:
> +    description:
> +      R5 core configuration (valid string - split or lock-step)
> +    maxItems: 1
> +
> +  interrupts:
> +    description:
> +      Interrupt mapping for remoteproc IPI. It is required if the
> +      user uses the remoteproc driver with the RPMsg kernel driver.
> +    maxItems: 6
> +
> +  memory-region:
> +    maxItems: 4
> +    minItems: 4
> +  pnode-id:
> +    maxItems: 1

What is this? 
[Ben Levinsky] I will description for this. This is used by the Xilinx power management code later on when configuring the RPU.

> +  mboxes:
> +    maxItems: 2
> +  mbox-names:
> +    maxItems: 2
> +
> +  r5@0:
> +    type: object
> +    required:
> +        - '#address-cells'
> +        - '#size-cells'
> +        - pnode-id
> +examples:
> +  - |
> +     reserved-memory {
> +          #address-cells = <1>;
> +          #size-cells = <1>;
> +          ranges;
> +          rpu0vdev0vring0: rpu0vdev0vring0@3ed40000 {
> +               no-map;
> +               reg = <0x3ed40000 0x4000>;
> +          };
> +          rpu0vdev0vring1: rpu0vdev0vring1@3ed44000 {
> +               no-map;
> +               reg = <0x3ed44000 0x4000>;
> +          };
> +          rpu0vdev0buffer: rpu0vdev0buffer@3ed48000 {
> +               no-map;
> +               reg = <0x3ed48000 0x100000>;
> +          };
> +          rproc_0_reserved: rproc@3ed000000 {
> +               no-map;
> +               reg = <0x3ed00000 0x40000>;
> +          };
> +     };
> +     rpu: rpu@ff9a0000 {
> +          compatible = "xlnx,zynqmp-r5-remoteproc-1.0";
> +          #address-cells = <1>;
> +          #size-cells = <1>;
> +          ranges;
> +          core_conf = "split";

If split, then where is the 2nd core?
[Ben Levinsky] Will fix, I will add second core in v5.

> +          reg = <0xFF9A0000 0x10000>;
> +          r5_0: r5@0 {

Unit-addresses are based on 'reg' values.
[Ben Levinsky] Will fix this, thanks

> +               ranges;
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +               reg = <0xFF9A0100 0x1000>;
> +               memory-region = <&rproc_0_reserved>, <&rpu0vdev0buffer>, <&rpu0vdev0vring0>, <&rpu0vdev0vring1>;
> +               pnode-id = <0x7>;
> +               mboxes = <&ipi_mailbox_rpu0 0>, <&ipi_mailbox_rpu0 1>;
> +               mbox-names = "tx", "rx";
> +               tcm_0_a: tcm_0@0 {
> +                    #address-cells = <1>;
> +                    #size-cells = <1>;
> +                    reg = <0xFFE00000 0x10000>;
> +                    pnode-id = <0xf>;

These nodes probably need some sort of compatible. And don't the TCMs have different addresses for R5 vs. the A cores?
[Ben Levinsky] I can add a compatible. The addressesing here is absolute (i.e. 0xffex-xxxx ) as it is used from point of view of A core here.

> +               };
> +               tcm_0_b: tcm_0@1 {
> +                    #address-cells = <2>;
> +                    #size-cells = <2>;
> +                    reg = <0xFFE20000 0x10000>;
> +                    pnode-id = <0x10>;
> +               };
> +          };
> +     };
> +
> +
> +     zynqmp_ipi1 {
> +          compatible = "xlnx,zynqmp-ipi-mailbox";
> +          interrupt-parent = <&gic>;
> +          interrupts = <0 29 4>;
> +          xlnx,ipi-id = <7>;
> +          #address-cells = <1>;
> +          #size-cells = <1>;
> +          ranges;
> +
> +          /* APU<->RPU0 IPI mailbox controller */
> +          ipi_mailbox_rpu0: mailbox@ff90000 {
> +               reg = <0xff990600 0x20>,
> +                     <0xff990620 0x20>,
> +                     <0xff9900c0 0x20>,
> +                     <0xff9900e0 0x20>;
> +               reg-names = "local_request_region",
> +                        "local_response_region",
> +                        "remote_request_region",
> +                        "remote_response_region";
> +               #mbox-cells = <1>;
> +               xlnx,ipi-id = <1>;
> +          };
> +     };
> +
> +...
> --
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
