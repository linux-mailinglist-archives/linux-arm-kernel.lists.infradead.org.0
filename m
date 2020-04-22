Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D558B1B4E59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 22:30:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EGLpvs43WCa+eRXIEpwJ89DUgeMRsNOspeifvwJzE8=; b=lK7+2ibhthYQXc
	Cmv0o8iwi9AiDfohWHTMQoMhsUkMeVdLf69ahp1/W34F+khysHTehInY7dNF4Do9d4tzpChaglbwB
	nW0NIAMqUBp5k8a146wnJmSSUlm+Naye/jwq0IpsiZdxyLSYeFQ6a16SvzV8bvWZTYvRvX2cF1hZ9
	QGNGa3A3NzEXrnu8w18T4flVcBVM0K15/Pa4fjhkjc/uLE2f7XzibWtXnqGKIfktRs6cqs+sau1Er
	KRaJGUjm4B/4gPMMFzwS1Y5Wp+PqdcWbDsn4L1vKnmSjyeOC2PjwwbBTaJJJzlJQIOMyovUtaXMgX
	wOWJXgwKC+AoVLp/ZhiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRM0J-0006of-GS; Wed, 22 Apr 2020 20:29:55 +0000
Received: from mail-bn8nam12on2052.outbound.protection.outlook.com
 ([40.107.237.52] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRM0A-0006mp-DZ
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 20:29:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kxha90fovEWKZeCRF/8DF4mVOmXk4EDq09P3nQBQL8qCwtQo9za5NW2/WLsB5wAmE4QTkNSkSBWtd0rknrTieEoJ/07nLTNQ8gUdnJ/3vg0SXJu3JFUjlfaoa637KEXKU6RNC37uXhz/D8wOKFRTJBc2sqgZ+E5Tj/RU1QLwl4lJoLD6FNC/BjLH7jCSq4Oj58KglPIbgvY/KdJWxxezdct2IwuIS/hM3wW2LJEqBhXBmqliH5nA40JPmB14zaDsQ3PluDoZgINCmA5hK3a5clKn3whuwb8T2s4mSbL45/KPYJyoFcsMXbI1bCNDHhy6OCCW8ALNsYqgvHIXB4VfyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wfo8yVd87PTERktSQ/mfKzMU/zlm2Ull6Zu1VGWVIRo=;
 b=kMBfrbakJNscm1mdunNduLULaxoyHB559YG2V8dr/N4i3rbWT2k7rrNjNUIpKM4lz+Az2NpiFnGxXUpW/vnzz5vODQDDmsLIFE7XPrqdK0rA4vNoMeE7u49STAkno+ZJsDxAyWTjfC8QFQ9E+gRs2KdgpxOkQmvUoKSJ16ogzF/py3RMN3+Dv4RdJZlbwslW0G/VokJKnXRXDgfQ/VkgMQvbGN5nn4YsO0fsMvTuXhgi3vpydUPQtzVfYD1bkcBSDijDFIDrCR1ib395kbMuz+UZIfqWk8d2GQ/3vNmZ24LVS0n46q7wrCyVOmoh3+oBMRZfez2uyuw45pyBSB570w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wfo8yVd87PTERktSQ/mfKzMU/zlm2Ull6Zu1VGWVIRo=;
 b=bBmpwu3HcBBk6D8t6QyPt9hUrTeUPHIPH7KbnE1jPGmxIs7BU527PA8kE9PN3YM5Zy6KYl0LE/rWUAaa6u8oZ/Bh2klM7wh+KA6iz6kJigPHoWavTqZFShNYo7wOZVZ61IBAzyr79hBET5YQPSEPupGYLVgjA1d4CPr2WHzsUZ0=
Received: from BYAPR02MB4856.namprd02.prod.outlook.com (2603:10b6:a03:51::28)
 by BYAPR02MB4951.namprd02.prod.outlook.com (2603:10b6:a03:51::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Wed, 22 Apr
 2020 20:29:41 +0000
Received: from BYAPR02MB4856.namprd02.prod.outlook.com
 ([fe80::d8e6:e16e:4a44:3e4f]) by BYAPR02MB4856.namprd02.prod.outlook.com
 ([fe80::d8e6:e16e:4a44:3e4f%7]) with mapi id 15.20.2921.030; Wed, 22 Apr 2020
 20:29:41 +0000
From: Ben Levinsky <BLEVINSK@xilinx.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH v3 4/5] dt-bindings: remoteproc: Add documentation for
 ZynqMP R5 rproc bindings
Thread-Topic: [PATCH v3 4/5] dt-bindings: remoteproc: Add documentation for
 ZynqMP R5 rproc bindings
Thread-Index: AQHWF2LzW/qPWa5cD0yVrqMFCa5VQqiFjGCAgAANlvA=
Date: Wed, 22 Apr 2020 20:29:41 +0000
Message-ID: <BYAPR02MB4856EDC95308C0F91C4413C7B5D20@BYAPR02MB4856.namprd02.prod.outlook.com>
References: <1587421629-914-1-git-send-email-ben.levinsky@xilinx.com>
 <1587421629-914-5-git-send-email-ben.levinsky@xilinx.com>
 <20200422193819.GA1685@bogus>
In-Reply-To: <20200422193819.GA1685@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=BLEVINSK@xilinx.com; 
x-originating-ip: [98.207.156.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1dcdafc3-affc-4df9-c044-08d7e6fbe2e0
x-ms-traffictypediagnostic: BYAPR02MB4951:|BYAPR02MB4951:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB4951A6D383233156696B379FB5D20@BYAPR02MB4951.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03818C953D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR02MB4856.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(366004)(136003)(39860400002)(55016002)(5660300002)(966005)(54906003)(71200400001)(76116006)(81156014)(107886003)(33656002)(186003)(7696005)(6506007)(26005)(4326008)(53546011)(6916009)(2906002)(316002)(66946007)(52536014)(86362001)(478600001)(8676002)(66556008)(64756008)(9686003)(8936002)(66476007)(66446008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7W8yABIymukmOg9wC9g5/4etSKoQ3b93nfDa2vUUeYpv8o/JwhGokt3NxlYYVJLZx3GmdRLkGRe6R/r7fTiWTiDgNMWgqysfDSB2/7D9+y3QIaXt+9Vod7VIEnF1zzq+qOft8DrsAVCxUT95xva0p130+cuEOp6U4bP/EFs4srdER+NaGgKIQjM01rR3ie+2g981Yxv3XVOQLL9oW9oqcWltc01M3d/KHIzl2WSsQ+xqlPIfzMfLNjqcIqKKkMTn1wUv/Tje/opNOiB9BvkJMpdw+rLr/gkjJOQEYzSZDUNBzUiB1JAbpj1w2MUaUqH1JYWNm/bIZ1CMPTnxVxfpXbOGVXEvPE/vtVm5etcFAnuvkJ611XBjNqItZ7R4pbvui3nyXf9TLozdxmiaNF+LB4EEG4vJI2kj1YStIafQh6cgJIo4/QMQisNN6r002z4y5Q28v305n0U/CtiL+itP2OerJS/iP/bpnmJyT36G5TwQqaVKhQk+w0eVdcSf8xNxjWzi3DlPUBAM/RmA9kOpEw==
x-ms-exchange-antispam-messagedata: eX9kWsdmey+puAwgAv0/egMBpU9HIovI7EJtmwKsJdKiG9tky8ytSx7FjV79P2fQcdq3TPnDLtuosYoaq3Pz3w2PJUGW0ig7GeQPu2sKXothtMlt4pQwerBeouwL7egq9f9f0LMYLmVLXNfYiw461pNJzx7XUOnyYcWjjwriLtv0f05sobZzCxS+TfjfRuW8DBxB1dRWKCV8V2jNU2JNbnZl33zbFk7GvWiUBqFUzgDP0RQmpaMVkX8HaMlXS+Sb2FD1R9JKLXp9ecPeAt2wlMT6mdGGLRPJxQTK8MyXrCgDUJ9mZm72wDBT8/UsT/uMBuHkYdNO+36acCatxSz/qBqa3YVxru5tCOdpC8RAVRI8VRaKEuCEt3zXikVoWXXZZn6XQbMfmwgBJIigGNV9iDr6JV5Ul+8qC2HLy42MB9+dM6MZaPnYkyrQRSdADqVbhV6MFw77Rq1a3RQfi8pDwEbMdU2GMk3/MngTnBOSdV7PQ6+LXanPa4MaiTsCHskMdg8xH9d4/7J/axcb3RLATGhhFkyCo+m3xZBADdQ3HPLajaJDsgkbesW/wxlajI8WVMbFAAAMccp4GBFpKX23qM1+gSTBeWPanTTNvjnok3WpYdkHuuClWGGnhC0M8mtcS3HeRHlpF5rXQUMEZPoeMJ4Gld9IrtkSGsldhRA/8hR4gK0J6FRpCyTC2KHBQNT3LHZKmwdWZ2/EeMzpcKYv+w26vAIUNpSgVIyIz+CSGhucWwUY3tc6FzD0Q8zQUEEtHkKlSqKhZuY4IR7k+Tg7kA2C5ON4po3UoyFlvyYZJNk=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dcdafc3-affc-4df9-c044-08d7e6fbe2e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2020 20:29:41.2635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AOPONj0WWr8s5Eo69Uz/qsGH6yAWBeMKVGpAiN2JdY26LVZb0hgzVBo0kJu4VPbOtrK/8U3F5MEDrnztCROE3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4951
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_132946_530265_30E294F3 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "Ed T.
 Mooring" <emooring@xilinx.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Jiaying Liang <jliang@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Please see my replies inline.

Best Regards
Ben

-----Original Message-----
From: Rob Herring <robh@kernel.org> 
Sent: Wednesday, April 22, 2020 12:38 PM
To: Ben Levinsky <BLEVINSK@xilinx.com>
Cc: ohad@wizery.com; bjorn.andersson@linaro.org; Michal Simek <michals@xilinx.com>; Jolly Shah <JOLLYS@xilinx.com>; Rajan Vaja <RAJANV@xilinx.com>; robh+dt@kernel.org; mark.rutland@arm.com; linux-remoteproc@vger.kernel.org; linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Jason Wu <j.wu@xilinx.com>; Jiaying Liang <jliang@xilinx.com>
Subject: Re: [PATCH v3 4/5] dt-bindings: remoteproc: Add documentation for ZynqMP R5 rproc bindings

On Mon, 20 Apr 2020 15:27:08 -0700, Ben Levinsky wrote:
> Add binding for ZynqMP R5 OpenAMP.
> 
> Represent the RPU domain resources in one device node. Each RPU 
> processor is a subnode of the top RPU domain node.
> 
> Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
> Signed-off-by: Jason Wu <j.wu@xilinx.com>
> Signed-off-by: Wendy Liang <jliang@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
> Changes since v2:
> 	- update zynqmp_r5 yaml parsing to not raise warnings for extra
> 	 information in children of R5 node. The warning "node has a unit
> 	 name, but no reg or ranges property" will still be raised though 
> 	 as this particular node is needed to describe the
> 	 '#address-cells' and '#size-cells' information.
> ---
>  .../remoteproc/xilinx,zynqmp-r5-remoteproc.yaml    | 126 +++++++++++++++++++++
>  1 file changed, 126 insertions(+)
>  create mode 100644 
> Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remotepr
> oc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.example.dts:45.25-65.16: Warning (unit_address_vs_reg): /example-0/rpu@ff9a0000/r5@0: node has a unit name, but no reg or ranges property
[Ben Levinsky] Yes the following warning is expected. As the node in question has to describe the address-cells and size-cells. As these are needed for its children to then also have address-cells, size-cells and reg values without raising more warnings.

See https://patchwork.ozlabs.org/patch/1273784

If you already ran 'make dt_binding_check' and didn't see the above error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
