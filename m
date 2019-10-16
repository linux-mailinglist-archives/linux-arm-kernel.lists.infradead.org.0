Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37003D9801
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=5BzRsWw6ufxoaBSS6RR1l/XmfJVurPQhgEkc/AikbG8=; b=tQ361StvJs9CJd
	NCIYDeoJVXSKYSjHcD/6G2asOmLiKMdIbc0clfnOe6tOob3l5GXJZu2oRpnHqA30A3AHOcypQTQIr
	uE0TPHQyL7Bu11LyfgQYhuO15iwZB4pUfiTHo5JUYJTnd/h6+jW/42VU8YxnOG8I8Rl9bl/04kca3
	GT6pzi6LZ5bEpRWtTlk6pDhuYgcEWVkF3H977qIFIFcz6hqOu5MxeLofQdju0dDlILyyNZXZ1oLLT
	aNBobJ7XyrA8OH9mzoGhDW4KTZ7vnq8VgkaT2ov6pp52pi1stePrvase8CwyAjSn+jXVHbm/Nc+rm
	rbJkG8USH+pOei34q/Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmaF-0007kJ-11; Wed, 16 Oct 2019 16:55:35 +0000
Received: from mail-eopbgr80084.outbound.protection.outlook.com ([40.107.8.84]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmZq-0006iu-HZ
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:55:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QZGn4HYg5xVf7q1Pp60OxKjn1sJSzELUn+hv5yZPP/3BSo1Y8FyTgRvSaD4K+LhkvU3hhc3KRplnG2myl3z5Tq7Bbd06hKGP8tuSiO7Qf2yiewFsl2CCSBTZhPgsoGdYwRGONxBsM44EGLZj9jT0MEicGjI0SG/BrixAJH9pyA/2231hokY5GMb6fKsHejsRHz5pM++bgRQkzQKmxfRYQWesBVytjaFYGb29riR8NAqGcB3eD7KMrPGnpIbdOR1YerWcRP9KfvWY6+mdp1nEldRhSv/nMJjn6pD01D6tiFigYWbgY5Q924TcwJ2ZOrHkBOJIbN7hOANiMda4hagCGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rcCgJyMBiqPHKqrZGOlXSDdvK5KezEqHCFjVXYRJCgA=;
 b=GtMGrAdfFPfgUYoNuvh0Lu4E/H8MNh3Frqqp5FBPpcPPaRTUAn9E9fPiszamilzQgvPZcEn/Is/Z/hQrvzPClW97QcAudw9b/I/kX7txtzKRFFa9B/Ht0ZsiD8FkytiqKeuHi/oHhteSV20AO+81bfLihgp8UfSh7KJ21wk6/Q7a2W/nIzj3YVMwAIAb7ZcZkG2Cg6AM40DewsVDMZwTP6T5LKw93iGCGsKTemxdffXYQkhCli2zu3bGF5WsLa8sbivhKCsyfGeKs0XMMFz+Cv3corVgrJ77gtnScqyIGyqmymxfJx18XQo5zT+N8P/7+NYsnzBEStXnvhPzMIJ6Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rcCgJyMBiqPHKqrZGOlXSDdvK5KezEqHCFjVXYRJCgA=;
 b=T8byuSSMyiPkC0bKUQ77/1e6pm3ym7FnZPN3oril6Pl02oxaiSRrHODPeSW1DhkSGGdb2TZSZMTYEilYjkVUq36QaMUorcixdnJMUsxEPaKqILaI2d8DeeqhcdFS+YCuDPzSosuVQPJ0FP6xlQnAIzaAHArCh0chY35wsEA/Bfg=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3454.eurprd04.prod.outlook.com (52.134.5.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.22; Wed, 16 Oct 2019 16:54:58 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::d0fc:54d4:86f4:b1d2]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::d0fc:54d4:86f4:b1d2%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 16:54:58 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v7 0/5] Add initial support for S32V234-EVB
Thread-Topic: [PATCH v7 0/5] Add initial support for S32V234-EVB
Thread-Index: AQHVhEJxhWIy0zctjEGFbT7T+YZTUw==
Date: Wed, 16 Oct 2019 16:54:58 +0000
Message-ID: <VI1PR0402MB28630943CC0820644D26919CDF920@VI1PR0402MB2863.eurprd04.prod.outlook.com>
References: <1571230107-8493-1-git-send-email-stefan-gabriel.mirea@nxp.com>
 <20191016131728.GA56859@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5444904f-63ba-4061-13fd-08d7525993e4
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR0402MB3454:|VI1PR0402MB3454:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB34543956D2811F68673D26EADF920@VI1PR0402MB3454.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(396003)(136003)(39860400002)(346002)(189003)(199004)(51444003)(8936002)(52536014)(229853002)(86362001)(71200400001)(66946007)(66476007)(66556008)(33656002)(6246003)(66446008)(64756008)(76116006)(486006)(14454004)(8676002)(476003)(91956017)(4326008)(71190400001)(6916009)(81156014)(81166006)(6116002)(3846002)(25786009)(5660300002)(316002)(7696005)(256004)(55016002)(66066001)(7416002)(53546011)(6506007)(6306002)(54906003)(305945005)(446003)(76176011)(2906002)(9686003)(6436002)(74316002)(99286004)(966005)(7736002)(186003)(102836004)(26005)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3454;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: svQ0xbvfl/cn2xG251K/b8bnCw3uNr/vVnGzmwoCqg1UKt0ZblliOUiJlG/lQLA3czpuJyx4JTTu+3Y2zWUQ4DBsysmFjdbxNwq4o9aHFjVGtna3P1AgLm9Q8zb1wC0cvMOmBJNYp6gNpZcVDRQ8BFXlKS0pKBs6TqF+x7q6AvyFy1RKzMyvthGf3rRJRiRvcY4iucZxsqmlG3gH7cPCsbc/p5QOKCy/18y1bsfyqi/Q19nyvJYGTe7B9UWUOar+5N0VDyYKIkvkhbgVWTeibhcMf7VfCRDXn62YkWUglUe8EMRTUrUVJY6AqfotLhpONjITVATexHNDQtVkAaIbrhTCVbLnlcRJ3R0/2KjYZCKoqMtS32eGiWQy9cIJ4H3dGa5IgDkOKeZ/rNK6XJOt51TVjP/c0FA5bJQlY5mHAcdGZAk4G4teXfwoR9kbo3633e8Zy4reQvEBU36+bomWXQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5444904f-63ba-4061-13fd-08d7525993e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 16:54:58.1830 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hTlUKMQqrRtiCM1jh8lUsS26CwhIwrfKQDEY5Yf6WcEhfuNZgkHKLTVIhoPQANdUc5ZRFJgWWvJW7dzICxS3Eswglxnw9X+3joHiaL97/Dc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3454
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_095510_752295_2360D364 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/16/2019 4:17 PM, Greg KH wrote:
> 
> I've taken patch 3 in my tty-next tree.  The others should probably go
> through an arm-specific tree, right?

Thank you very much, Greg! That was all for the tty tree.

I think that the other patches should go to the following trees:
* git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git:
    patches #1 and possibly #4 (as it covers arch/*/boot/dts/);
* git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git:
    patches #2, #5 and possibly #4 (as it covers arch/arm64/boot/dts/)
* git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git
    possibly patch #4 (as it covers arch/arm64/boot/dts/freescale/fsl-*)

As a general question, would it be any chance to have the device tree
included in v5.4 (along with its compatible documentation and config
definition, without enablement)? That is, only the patches #1, #2 and
#4, because #3 is a cosmetic change and #5 enables the new configs by
default. That would complete a minimal support for S32V234-EVB, together
with the LINFlexD UART driver which was accepted.

From the development process documentation[1]: "An occasional exception
is made for drivers for previously-unsupported hardware; if they touch
no in-tree code, they cannot cause regressions and should be safe to add
at any time".

I know that it mentions only drivers and not device trees, but from the
history is seems that there have also been dts/dtsi files added outside
of merge windows, such as:
* arch/riscv/boot/dts/sifive/fu540-c000.dtsi;
* arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts;
* arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts;
* arch/xtensa/boot/dts/lx200mx.dts;
* arch/xtensa/boot/dts/kc705.dts;
* arch/xtensa/boot/dts/xtfpga-flash-128m.dtsi;
* arch/arm/boot/dts/omap3-beagle-xm-ab.dts;
* arch/arm/boot/dts/at91-sama5d3_xplained.dts;
* arch/arm/boot/dts/am335x-boneblack.dts;
* arch/powerpc/boot/dts/charon.dts.

I am sorry if my question is inopportune, I am definitely not trying to
rush anyone. I just ask because this has been under review for some
time and all the feedback has been addressed. We would really appreciate
to have this SoC and board supported in the following LTS release if
there are no other issues.

Regards,
Stefan

[1] https://www.kernel.org/doc/html/v5.3/process/2.Process.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
