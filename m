Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC4C4182F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 00:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rusGqamYAAE4hqEduqZVaYtkVxicmjLmYW6qyGjY/qA=; b=qw0oeatGbjLc2X
	38LA/5AajRgpaQiFfvi1QkCtOjXkuMWipe3kjJcACG5bFPGNxRXRK8ArfAQlZA6WRotRu/7KNqUFA
	3YX1cLXO37hodaWrnWkZddnMR6dBnPfMl4qnorOHwA9Pqt3bKbhKegmap2P0vR9pYN90UusW2ebg6
	aTaH0lCC1+dyNDVlVrV9o7k+aMGGaXxE+dxInzpMWLcJJVaawtWMbRkHH91e4YiWl7Ht+8YjJ0z/+
	yBgYCtj7S0IH+z5ZNNF18+yjcbtZqhe0pCw6BgJ5nrNhcrqYI0xNHLQltrZwHI0GbYP/38mk33ebx
	WpXYovpUX5IAEk4n7iKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hapI2-000113-98; Tue, 11 Jun 2019 22:30:50 +0000
Received: from mail-eopbgr750108.outbound.protection.outlook.com
 ([40.107.75.108] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hapHp-0000zj-HY
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 22:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wavesemi.onmicrosoft.com; s=selector1-wavesemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aHs4WCFJoCNWGVZh4UTOPAhGgp0lKw/NT9HamZ2eYeE=;
 b=edQYTSnVLCdJKoCsGS1OaIObW3Mx5FMuOdVSgzVDPZf6qAF5aSaz46lOzVJeWAh6XZvRkMHnX0hTicB6+l1FycWIF7tOblLGHRzvYaLoE5XrvWqc44ZG3kmTEqTCFQgmt/lDjEgqxM31j74desA3QsL85EPxVW1Kl11CZQvpBoA=
Received: from CY4PR2201MB1272.namprd22.prod.outlook.com (10.171.214.23) by
 CY4PR2201MB1014.namprd22.prod.outlook.com (10.171.220.163) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Tue, 11 Jun 2019 22:30:33 +0000
Received: from CY4PR2201MB1272.namprd22.prod.outlook.com
 ([fe80::d571:f49f:6a5c:4962]) by CY4PR2201MB1272.namprd22.prod.outlook.com
 ([fe80::d571:f49f:6a5c:4962%7]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 22:30:33 +0000
From: Paul Burton <paul.burton@mips.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] MIPS: configs: Remove useless UEVENT_HELPER_PATH
Thread-Topic: [PATCH] MIPS: configs: Remove useless UEVENT_HELPER_PATH
Thread-Index: AQHVGqrQKwfEze7GG0KYKt5bg4AUGqaXFTiA
Date: Tue, 11 Jun 2019 22:30:33 +0000
Message-ID: <CY4PR2201MB12726C7AAEE8A350CF777839C1ED0@CY4PR2201MB1272.namprd22.prod.outlook.com>
References: <1559634891-20075-1-git-send-email-krzk@kernel.org>
In-Reply-To: <1559634891-20075-1-git-send-email-krzk@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR03CA0034.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::47) To CY4PR2201MB1272.namprd22.prod.outlook.com
 (2603:10b6:910:6e::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a16460c-18de-4239-ee4c-08d6eebc6a84
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CY4PR2201MB1014; 
x-ms-traffictypediagnostic: CY4PR2201MB1014:
x-microsoft-antispam-prvs: <CY4PR2201MB10140D34688189A24DB0431FC1ED0@CY4PR2201MB1014.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(396003)(366004)(39840400004)(346002)(199004)(189003)(476003)(8676002)(446003)(486006)(4326008)(11346002)(7696005)(2906002)(6506007)(386003)(26005)(52116002)(102836004)(316002)(76176011)(66066001)(68736007)(6916009)(6116002)(99286004)(33656002)(3846002)(55016002)(44832011)(9686003)(186003)(6246003)(305945005)(66476007)(54906003)(52536014)(71200400001)(71190400001)(66556008)(64756008)(66946007)(7736002)(4744005)(66446008)(5660300002)(8936002)(25786009)(14454004)(73956011)(53936002)(74316002)(478600001)(42882007)(229853002)(81166006)(14444005)(81156014)(6436002)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR2201MB1014;
 H:CY4PR2201MB1272.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vEDoYPYD+YXaINEQFGvOYZccLuuwCOUIf+42CRmGjjLRJMT32Rj7+IReUg/0MZY2dmfAZtpRctDbe7Rdppj6O1tcgQn1p0JntI6CO/sgHXEZlhOJHvT2wwYUoPyo3jSO12UaNqDlRFLRTkuX3/wwsenhvo035gssIrDd2qwXUOUwEpLpmhlT77angUqo9z6TElMobW54efH5TWwD4BGfAojlPnHSaew+4UiB5Y9r3VdhHUYo7IqmWtIyB6ngxE/yWG++uXmtUyzTaIy41NH0Urjt01pMf0sqERJvmPNWYdwwyfQaJFk/sWF9C72ZTHQof849+CboHcZdX7dX7lNhSl1R6miRR5Ms1BBFzz6VFVjCLu76TWXRAwFbrrX4bPmm5ydFKVK+LGSUTXDHgTkCISWq7V2KkNdJIIgfxAchCkc=
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a16460c-18de-4239-ee4c-08d6eebc6a84
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 22:30:33.2086 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR2201MB1014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_153037_578705_B8C62DED 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.108 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Burton <pburton@wavecomp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, James Hogan <jhogan@kernel.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Krzysztof Kozlowski wrote:
> Remove the CONFIG_UEVENT_HELPER_PATH because:
> 1. It is disabled since commit 1be01d4a5714 ("driver: base: Disable
> CONFIG_UEVENT_HELPER by default") as its dependency (UEVENT_HELPER) was
> made default to 'n',
> 2. It is not recommended (help message: "This should not be used today
> [...] creates a high system load") and was kept only for ancient
> userland,
> 3. Certain userland specifically requests it to be disabled (systemd
> README: "Legacy hotplug slows down the system and confuses udev").
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>

Applied to mips-next.

Thanks,
    Paul

[ This message was auto-generated; if you believe anything is incorrect
  then please email paul.burton@mips.com to report it. ]
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
