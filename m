Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3FE837AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 19:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=3P3QGHyetkuyivig3mDTYZog8Oa3pbklkTWuXn7m50c=; b=E/B24nK5ZaNFZs
	8hdYcTp5pI8wVZ99GTym7g9u7VtwJ6UmrDTu20DmromQwlxNjN5P717L4RWyQI72jQrVnz86YKy3q
	Is9eYCjVl/l1JbLRHLImvk+z44n9xcwUaHmXEBUTVvLeikNvNENxp0WGBYIQi4b4jQu4n7bIn2LPx
	W50cyllqhmh7kAGL/Qw37crQvZ+NZqHVLvaUb1NrMcdcdqz2rAgcCuQMJzCuttjziHJm6Uk+lwoNL
	zT8TOgxh60cx1Vhzfm/XKjgLT/I4Gsd87XcvI2dVg5lO7iid82cmYyqvsIaWuGgcwpkfeN8iXKcQr
	0qd0Gx+KiyefQqJpwktQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2zk-0006sL-5J; Tue, 06 Aug 2019 17:11:32 +0000
Received: from mail-eopbgr70058.outbound.protection.outlook.com ([40.107.7.58]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2zc-0006rS-5C
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 17:11:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vxm5RE49shRV2hTcUfrFMQoRotGSb6PkbQT1WNJMZAd9po1Gp8MmWxb2/eVHVpfpy4Eqk+IH9ym4KNmWK+xABzpEngtwUm3v8cUTTYxUHBEHUckxFJ/go1Y1ZWicHy10YiR+dB45y1SnscaXvYSuBH6yCeYhtf3GGC88N/14m/9uWq6IK9M1Pc4zklfBjZFaCpCmYfdhulNu61U4Bkb0kSs49CFvwZGT1GzLINp9f2tQvvNfLp1urj8uE7uRsCtYkJSxt9LicmT7ZxwP7D1RVcrQseECMsjQNYK3Ym3l6TqtxBDDhAnfFMoNQdnlUokZHCxXOuMCBsxJNxmqfCoLAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YHe2KIGn3QBQdyBwIdd9a0pE6v/FfkYw/l0ipDDlpnQ=;
 b=IaYk/Ll+4Xi9OD7JXJ1eAWP9C0r8kZ8d6j11WYXi3TtUz2rw+56W6JikhuPOsN3bt6fe9kMi5qzgZbB254H5WRtdIqfpjjtYyzTndwZHaQHBEK2KlYjJH9r6s3Vi7hpinZVA3xxhrLf2eriYjKydc1ia3HOJu+YB6WJkRd15b95r2YvxuHPL8uSEyCsbEVG0uXWOmY1Vrf5ThXxo6SvvdI9M0Sc38IIeoFOvGXQ21rQoDC94+EdJcNqg1zqS/eN+QZDMGM0i0c57zkYJRqmfTQ40QMpEqWJN/7SAdQZr9HO+gB0mp5Jr4wAIlQCIa8HMqgsJwrtxUGTV3berCrQoWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YHe2KIGn3QBQdyBwIdd9a0pE6v/FfkYw/l0ipDDlpnQ=;
 b=sMWtBIw4VlMf/+movomvq7ogx5MFv3Sb6MXtGtFgPpPWS3cfYOY7yy5V2qXWcs+aadz7ngzk8JGGOvqZ529bBKOGm1b/gEuDGGbW2RJV6mwg4bHgHdKkxHG7lidZw4WQVPd1vjJAq3gvn0eYndLqtM1Bjy83lbrszl9Ez23Ps2Q=
Received: from HE1PR0402MB2857.eurprd04.prod.outlook.com (10.175.29.135) by
 HE1PR0402MB3578.eurprd04.prod.outlook.com (10.167.126.140) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Tue, 6 Aug 2019 17:11:17 +0000
Received: from HE1PR0402MB2857.eurprd04.prod.outlook.com
 ([fe80::1ced:9626:a551:ec5f]) by HE1PR0402MB2857.eurprd04.prod.outlook.com
 ([fe80::1ced:9626:a551:ec5f%11]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 17:11:17 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 5/6] tty: serial: Add linflexuart driver for S32V234
Thread-Topic: [PATCH 5/6] tty: serial: Add linflexuart driver for S32V234
Thread-Index: AQHVTHn1y10az0N8mUWM4VNvSHKzDA==
Date: Tue, 6 Aug 2019 17:11:17 +0000
Message-ID: <HE1PR0402MB28579034C09EB49A76A4F8E7DFD50@HE1PR0402MB2857.eurprd04.prod.outlook.com>
References: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
 <20190802194702.30249-6-stefan-gabriel.mirea@nxp.com>
 <20190805153114.GA16836@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 703609ad-10c5-439b-4f88-08d71a911843
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:HE1PR0402MB3578; 
x-ms-traffictypediagnostic: HE1PR0402MB3578:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <HE1PR0402MB357893B470A4A40CA87426C0DFD50@HE1PR0402MB3578.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(396003)(346002)(39860400002)(136003)(189003)(199004)(2351001)(99286004)(6436002)(91956017)(6306002)(2501003)(33656002)(55016002)(5640700003)(8676002)(66556008)(64756008)(9686003)(66446008)(66476007)(229853002)(66946007)(4326008)(5660300002)(53936002)(1730700003)(81156014)(81166006)(478600001)(14444005)(6916009)(52536014)(256004)(8936002)(76116006)(966005)(6246003)(71200400001)(7416002)(25786009)(71190400001)(3846002)(6116002)(7736002)(486006)(7696005)(316002)(186003)(26005)(14454004)(74316002)(86362001)(446003)(476003)(305945005)(68736007)(53546011)(6506007)(54906003)(66066001)(2906002)(102836004)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0402MB3578;
 H:HE1PR0402MB2857.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3vvQvASBOmKksFhtBOAUw/ZnPoA734mnfKfv3o0JIuvo+qT/vAbO8iHS8lxFAXQagLuwqvE7BFGKIr3bG8kLPCX5wT6tDEzWCTSrZvwV17hFSUTqFF7slT/9Ul4sf2Tv+Y6sqFhtRVfC+mya9ON2w2ePK9lwwdu3CynO+lEKXLYwxMg7bcATaY2Kbo2UnhbVzIf7bvFGr33KrUJcADmPIFCNTmQ21Jc/uI9JKThneuEkDl+VSBLixsKSUVCTjtTHWYBXfc7QNR0H82cnFLAQfouDbFhwgVzIpttWlMA8VAMI5ABh+opDjoLI3zcqiOGArj4og71LYXDw7hyU4RWgm9t78MSL4z5dfha9y42xJZV7eh5diA3/MM4iJRpWOhNVv7tuxNOGC95mt13/QU4kYsBQYhM7gITZ8rtfZx00VbM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 703609ad-10c5-439b-4f88-08d71a911843
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 17:11:17.4749 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stefan-gabriel.mirea@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0402MB3578
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_101124_245094_0E5ECAD7 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/5/2019 6:31 PM, gregkh@linuxfoundation.org wrote:
> On Fri, Aug 02, 2019 at 07:47:23PM +0000, Stefan-gabriel Mirea wrote:
>>
>> +/* Freescale Linflex UART */
>> +#define PORT_LINFLEXUART     121
> 
> Do you really need this modified?

Hello Greg,

This macro is meant to be assigned to port->type in the config_port
method from uart_ops, in order for verify_port to know if the received
serial_struct structure was really targeted for a LINFlex port. It
needs to be defined outside, to avoid "collisions" with other drivers.

As far as I see, uart_set_info() will actually fail at the
"baud_base < 9600" check[1], right after calling verify_port(), when
performing an ioctl() on "/dev/console" with TIOCSSERIAL using a
serial_struct obtained with TIOCGSERIAL. This happens because this
reduced version of the LINFlex UART driver will not touch the uartclk
field of the uart_port (as there is currently no clock support).
Therefore, the linflex_config/verify_port() functions, along with the
PORT_LINFLEXUART macro, may be indeed unnecessary at this point (and
should be added later). Is this what you mean?

Other than that, I do not see anything wrong with the addition of a
define in serial_core.h for this purpose (which is also what most of the
serial drivers do, including amba-pl011.c, mentioned in
Documentation/driver-api/serial/driver.rst as providing the reference
implementation), so please be more specific.

Regards,
Stefan

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/tty/serial/serial_core.c?h=v5.3-rc1#n872

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
