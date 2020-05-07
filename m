Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A48B01C85BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 11:29:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MygF7+tY0qWEK071mfHQm0O/svMBkorjipol9DM3dLY=; b=SETPXCae3rZpDG
	9E7gt/lmN7kc1b6A8tIAj+GSADOUeV1wtmjeZGaCt1lkSCDyJKbGRPN71isOM1USlPHWv8AC78Aa7
	1Jwf1Fi8bvOwm3goi4JDJlowkVL+Boml7mTIwSlQa/aO1v8Y0dvsW/Fpkt7iL/zzJ5nLtM2rzHWs/
	AOW4ChCL7qhXUoJ7w4Hb78Ldr52zr/7r04QCFzOvwLsdHhIeXeq5oydgkWkweE1OCdiMMYHmCNIKw
	ZEIlRGB5m0a36tQyWQGAHCDRQeUFWvSWAXlWIsBEP3QIzEoxlORmCvInSldjZXqrCmYQsMoJygig1
	5qLypVywTtwi0vl6vTvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWcqV-0000dl-Hf; Thu, 07 May 2020 09:29:35 +0000
Received: from mail-db8eur05on2124.outbound.protection.outlook.com
 ([40.107.20.124] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWcqB-0000X9-VQ
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 09:29:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lNyUHM0m5gTxHWHnZY/RX+MuQ5m1kzgdBEzX2bl9WGVoaNBr0xNgOS2AOuFZ5hKET6tJDVLrlDFVQzu5sOpoHEnNlngwlVyuql84pYk8LvPECOjVSy6k2zArw/j1OMmNhNKL4JBhO8/GsZB8rIBq/+f+JJBxh4mbQR8ALlsSeJ+hfIl1VW67Vn22agXo3SmozUjv4LZnzlVR55I4VqCpVBiC9zqqL1qk9TihFiSd7uBmR1aC7v3REEzAZYtQuIOSg1rmWIajnA+i/azZcNAAkERq3qPi8OEqxHY5TeHxQE3iMBdzpQ3qYco/JhhN3vtcaf6M5Ap9OLBBkJ0DmINiZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VXM7p5YPzCrYtrQmBcctITv8skIU/S73tOtu84RqL3g=;
 b=XfkzHN5BIwllyxvIsEncO7YjEARAszeCcltvvGGXPiM7nle71Vlxm3joeUTYUeqOrtd4MsRTwbc6L2W96E7uUPY3j6jM0X62flngZ+lGR3PTFfdZrX31dcrGcNuyppYlHNyUqP5VYhw5ZVPISnGzHfoLYjZxda31AetslbY317MQFGMWSdRth7KgmsWupVL3v/t5s4j3mI1QEqsrR1zXB+MHvx7u7NZIX7LkS5dotZCxcng6EChVcDzz6Yu1vXdYO4GEFYSym1LMGJ123nVbtJwK3yscgQQEK55h/hEpynZ5tCI8/vaeTlQrHEY5tgBuZv6Nem9y/WTHaEbtuqWIlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VXM7p5YPzCrYtrQmBcctITv8skIU/S73tOtu84RqL3g=;
 b=byZL+6YKNB4qlWwiGz4XEqnh04QaeOsKDdkQpFjnLJhav69nFxNHPe7w5OYqjZnXnYOqV5Z9w2RTcQ1tdYrFElO/gBMSfQwdYaQdXTsenBoeuX4Uu/HaVEONt/hAwXvkK/XaP+V7XjMQCf/NnSHrcJdqr3wUg0bvJPEvWLY/SXA=
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com (2603:10a6:20b:a8::25)
 by AM6PR05MB5521.eurprd05.prod.outlook.com (2603:10a6:20b:5e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Thu, 7 May
 2020 09:29:13 +0000
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::d8d3:ead7:9f42:4289]) by AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::d8d3:ead7:9f42:4289%6]) with mapi id 15.20.2979.030; Thu, 7 May 2020
 09:29:12 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "dillon.minfei@gmail.com" <dillon.minfei@gmail.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>
Subject: Re: [PATCH 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco
 board
Thread-Topic: [PATCH 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco
 board
Thread-Index: AQHWJFAw2k3Ods8/jU2+K0HVpP++Y6icW04A
Date: Thu, 7 May 2020 09:29:12 +0000
Message-ID: <e7002d31d1392cf8969e56aba060ed3cc1c12ed9.camel@toradex.com>
References: <philippe.schenker@toradex.com>
 <1588842971-20495-1-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1588842971-20495-1-git-send-email-dillon.minfei@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.2 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=toradex.com;
x-originating-ip: [51.154.7.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 553d7c32-7a7b-413e-f6f0-08d7f2691ab0
x-ms-traffictypediagnostic: AM6PR05MB5521:
x-microsoft-antispam-prvs: <AM6PR05MB552121AC7729CDEA9C7A1231F4A50@AM6PR05MB5521.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ol4llQ0pAI7EOUU7QOKRmwkBhiy/ptSXcOfyoXnCCY3Zl9at1HS2fZN2JA5gOd8FnqOOlIOjOJRi/MczR0b/N0mv3GA47QLtnCqRPvjEFyimkmAN5Pe7D0CKPVqcoFyN/M4Y515AtbfJ7s4MY0u32Yzi8p8Z1laAbW7XCZtXWbMwKFKhq0nGRAtdRYavYpOqCzoyNW0fdKiUugUPAgvbBN3JQxZdcsZ4TzYQ1h9bfarpZeo9FrULOJz048sHcFCayHMvVDWM4GooQHlU23MwHsw6Nw4/eYkaMx3r9bL0fJ3CGoA63cuhv92idLKSnyamo266X7iyfWXE9vkMlo5PqLaaIQIIWv8V+CJr2Hrlfv6mnAQMyxEmBDowjNTcZi+4+zp7cj4Tpqxks4dXuTk25V4DH7uHiQtZH5bh8AyIFyOI9ODy0nuIXWK0tbnM0PN8YbAd4oR76HVtywktBRwpRuXPMCcLZdEYKRdUaYJPihKyRJunVs9K/2OxDzfZQ9gteY1QzhxRGo9y5hmUoqsmCzUsy8yAoPJbjzy7quj0XON7jw0cligYUe5zahv3KyJ37GhIRiKmxQ9Spq3OWQpLTJpq8MlmziSGb5csSamjD+k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR05MB6120.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(346002)(366004)(39850400004)(396003)(33430700001)(186003)(26005)(2616005)(66946007)(91956017)(110136005)(86362001)(6512007)(54906003)(33440700001)(316002)(6486002)(66446008)(64756008)(66556008)(66476007)(6506007)(44832011)(966005)(4326008)(478600001)(4744005)(8676002)(71200400001)(76116006)(36756003)(83320400001)(83280400001)(2906002)(83310400001)(8936002)(5660300002)(83300400001)(83290400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: CjuZXDkShw/FWNcXi9vIelDkKCvtXPaK7E0l0U+B2V4zhyXlvakZRqdZaJCNPlD7KKbl1H08A2kWG8DTEbw8hyM3jpyj8BPC7JXQGo8eA0C+nBrvt4ug6T1+wwMV5i0jWeYpG1PMcrRMmpI4jVW2l4D0T0/4Mcsg5Ac1jYNYPW8FmvoCUdNtA4/yY18G+Oq4cFyDgDN9/UnozCUhseasRWruzu78grrwHcvzis/09Xu+i84Lls2BAjBVTWFFkpr7FB7I558RqEltL6CEn/UABKrUt2FCYa1ld2qcUrEkkW+/MPojDadTzjnySZbpK+S/3C/N4+btZ6QaXXXaE31tjNcOW6A7Vl3XuQZeG8/ZXefkY4zwlUvU2X6PAz6+Kc3vBodH1/dL1xqME/UQXE0d+GRPGBKVfubp9XjbwqknHfJLydA/PdfYMJbldlRZLOCfmPIJ4Ue4PV9W1v1mgFSKjyixiVODpJGWoCuD+B/JdCPZ/69ZGOwx2l86bkvREgA0UK+uCN6HQBSca8ZizUAAX0upwiJcxfcmFoyx9ILyQC2d9E1siInmawn95SsgP6a6YAgnA6YfazdSmtVtJtC5Pe6/U0JWUKIUUTDRG6X2JAXORP8gezDI9VBcnxoK2DqM+62ErzNHhSu/NVpuhTc8y4fzqVXSYd45o1Bp/6+ES1zBsxz4o7YADlXXrJjdHeWtSeRwM7SSKVK0KesB3q+giVERbsz1z4HHck3DbCACtvKnY/K8AQNWO2lkPnnhAGYp87t/E/ICN7TN0KZFEmSz4G6SUP/imvYB/MPrKYbeMn8=
x-ms-exchange-transport-forked: True
Content-ID: <8C8175B59EDE444786D2E10D974A5359@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 553d7c32-7a7b-413e-f6f0-08d7f2691ab0
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 09:29:12.8668 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OieHTxGQi5bwKiPCyiMVaHUa+gzIR4JNH7vALDGhPkIyUmFmMumM4i8SINuhlByj2P66NTUHGa/Q6+GefUc4caKnaLhfiDcQeSMiKogcFpA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5521
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_022916_119353_13D400F8 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.124 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi dillon

If you change something in your patchset please make sure to add version
to patch (e.g. [PATCH v2 3/4] ARM: dt....) and also mention in commit
message below Signed-off-by what you changed.

Also make sure to set your
email client to text mode also for replies, that makes life easier for
everyone.

Refer to these instructions:

https://www.kernel.org/doc/html/latest/process/submitting-patches.html

Best Regards,
Philippe

On Thu, 2020-05-07 at 17:16 +0800, dillon.minfei@gmail.com wrote:
> [PATCH 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco board
> 
> remove id, blocks, irq-trigger from the stmpe mfd dts node.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
