Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86006FAEAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:42:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akKYYt5Hk6p1NVAWenvEeDFuYwpxmvSjy16LbVPFZu8=; b=uUaoj8j5LyPWGd
	+MdsGIgE61s3oop/fhOMjWqwChQ+nbrdm/MVLfgXnZebAA12onR9xg/WWlE9QCFBHaQkOU7kZJohG
	xcW1UBX7kI6bLcjstpm38EURASbsZspyZUTog0MCZ6dJEgVWuK6zUFKdzLDLO9jgrhQQsEY05qHjt
	h9QMz36maGUru++GzfhapjDON8/9N1fqMS1U1hQ7QBsd1X699AtRiY5nkQKMCXWMz2dwpz7/5TrJd
	nFf/8l/aD6V57Fw9tod0xwdkGJbmRc/sdUrXyMO16hLsrwt6L2kuIn70kSMmdsONreVkYxqlWI/QW
	llCpB1al88y7H5+oeZ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUq6N-0004qw-OH; Wed, 13 Nov 2019 10:42:19 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUq6C-0004kx-6S
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:42:11 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: /mYupU6ixXCVNU4IDIaGb/U7m/0b01Dhc4rYhi19XZ++0iuX/x5doyah4Uo+/a01S/2xX+S88f
 l6fK4D7wISr2QYkjcy/EmiRzxZPDVHS8/3YxGi/bc/pKBEwPN2z9YbChWuxQQ9NUphiomE4q7u
 ar9A1lribpfmvImoN14s0ZoHV0LBVSdQgtrrn32VnaNY86PrnNPVRZWocJffBQhevk3xUxKbJB
 F7OW+TnwOe89+fxRl4K+pTUTmttVt7h8rrgjTmgQhEKFbxS9kAgwyN/aj3qxqpZ7nR0MEmec4C
 Ae8=
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="56881745"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Nov 2019 03:42:06 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 Nov 2019 03:42:02 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 13 Nov 2019 03:42:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LX+j8JzrShB1/OklKdpDSBdvg9rDj3PIm9JnwKoYFplq0tN6gbCD7ISq9R2hDb/dPKNEYjjy9NZ7Hh84ylnUJWLTjxxAktRb/GOmtycvwcgUX6g3b0697TGw5FwpmEmnxlUBJZ+e9qh8sjNmBVg2xmLf2txH8e6AXsx1xabwaOWRm3RIaZ2JdEA8XTmy30rRKw0Gwwd1+4zDClYz7VcXd6yD031rlv9dP0d4ULLgyFWHkvEVSJpE2euJW7xtQVN9KSxHiKslyvHOEHWKVL7G83GI/8e1iviKCTpQegxFLleoYfBsolEGtJtbGC8d+st4StrxeLQgx280JgknkMENpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=386jnDsTDHOKdURKmHjkr/XHvkK82FJS7DjHVNK0k2Y=;
 b=DV6NvCSL3HouVnf2YMg5fZk6SRv6Fq3LgJJbfVAAu4x5jxeD44pUEumF2RlhxIeDlynyFtJZnYenSAKUcTEokDObqIzf9Bm51Ye+ZofQMYbKcMaLx3eOYzXp3erXzbiRXq1HGtZgHenrL3lSyncgxjmClKTQSpprRHmjQlkIdityJXx5UXX7cs1tU2s1pqGvOybkTgwhdLFVDKYhvuJ0Jp2QKIZ4oVPMt8j0PKVDYAcMqGfTZ/hmWxnhz0a6KJ1+tA8vonqP5OGTZ425iAVBpSUZObMyYLcB7yr8uFPqGDD1+K9THuQPRCoPrLPmmX0YAJNz+ZlKcUXHKigDPwWnOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=386jnDsTDHOKdURKmHjkr/XHvkK82FJS7DjHVNK0k2Y=;
 b=Syh6aRxQRg4OA0sgg2X8VoUe5IYj2mHvLmf+jfQ50eN85Y9R4GBrjPPyd3Xtc3WBnGiTaQGQnqJO9h2rvCrB2yMpUQvuhlwuzeb4krnF893gGa6zBl53aAM5r+bfFOfJAZCKUZo6nQcfhugE2yTbNnwLB+2jJruSAkr31x+iLAI=
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (20.177.127.88) by
 BYAPR11MB2853.namprd11.prod.outlook.com (52.135.228.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 13 Nov 2019 10:41:59 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::f4eb:2c83:7aec:ee98]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::f4eb:2c83:7aec:ee98%3]) with mapi id 15.20.2430.023; Wed, 13 Nov 2019
 10:41:59 +0000
From: <Claudiu.Beznea@microchip.com>
To: <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 01/13] ARM: at91: Kconfig: add sam9x60 pll config flag
Thread-Topic: [PATCH 01/13] ARM: at91: Kconfig: add sam9x60 pll config flag
Thread-Index: AQHVmf+FQ6qS2OmDNUiSzPK2UIHXYaeI4OoAgAAJAYA=
Date: Wed, 13 Nov 2019 10:41:59 +0000
Message-ID: <fe2928b1-d6f8-c796-5c49-2f7bc22e6479@microchip.com>
References: <1573635069-30883-1-git-send-email-claudiu.beznea@microchip.com>
 <1573635069-30883-2-git-send-email-claudiu.beznea@microchip.com>
 <20191113110938.5e7ee5cd@windsurf>
In-Reply-To: <20191113110938.5e7ee5cd@windsurf>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM3PR07CA0065.eurprd07.prod.outlook.com
 (2603:10a6:207:4::23) To BYAPR11MB3224.namprd11.prod.outlook.com
 (2603:10b6:a03:77::24)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191113124151025
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d376292c-26c7-4f47-b8a8-08d768261c35
x-ms-traffictypediagnostic: BYAPR11MB2853:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB28533347194375FA896A42B687760@BYAPR11MB2853.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(376002)(366004)(136003)(396003)(189003)(199004)(11346002)(446003)(8936002)(4744005)(2616005)(7736002)(25786009)(478600001)(31686004)(31696002)(6436002)(66946007)(305945005)(229853002)(14454004)(6486002)(5660300002)(486006)(81166006)(81156014)(476003)(6916009)(8676002)(53546011)(386003)(36756003)(6506007)(54906003)(66446008)(64756008)(66556008)(316002)(86362001)(66066001)(3846002)(6116002)(71190400001)(186003)(4326008)(66476007)(6246003)(99286004)(256004)(102836004)(2906002)(26005)(76176011)(71200400001)(6512007)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB2853;
 H:BYAPR11MB3224.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cz3l60AQ0QGfVlU61zp2Hf3DW+oNzx+7OVDDBaeJSAORSw4+4g7dR+b9ddxXeklZwN6/MZsVaL91S5oN49kJEKduc1enk+cAp+g3wjSm4pKVq/1v9+Kps/TqXmjtfHpdhCEFCXQXyerZChXYFUfs8vhRMVvwBLudfLY1rrD+SgdqG4qGOlYu77n73FM1/OA0AkuBFB4/QJuDYCdUk0rPc7/Tj5rTFxApdGDt3UYnnUSeJlpRP4s0EZZKVIV8ZfU0EUFVowlTeFpI8Tzf6+mJBzIJmkgZG0yc6zArFXP7yImaeFPRrgyqcZL2/881e976DUXTHNoFR/E0aU1WYGyq+7+iskUujfciDmM7g5Gsmjg4KxgfGhSYHp6VwyKUrOSohwOUg4ru5bofZHH3DiHof2CnYoadAyAh+lln4qTX51sSr/LRwPSz/mJhhXABtxdZ
Content-ID: <F886BC4D618C5F40BCB90E5A033DCC1A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d376292c-26c7-4f47-b8a8-08d768261c35
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 10:41:59.1161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DFNqQqPnj7M6ouKXtOBLG9HR83gd03183RicN6wAHSgUx1I+Sn8GuLw0gc/snEkWO+j7c/BmujabfgvXys8KcL7C1On5wKuSZT+m6gXkGAM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2853
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_024208_388492_0A026BE5 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 13.11.2019 12:09, Thomas Petazzoni wrote:
> On Wed, 13 Nov 2019 10:50:57 +0200
> Claudiu Beznea <claudiu.beznea@microchip.com> wrote:
> 
>> Add SAM9X60's pll config flag.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> You should explain why this flag is needed, because as it is, this flag
> is here, then selected in your PATCH 2/13, but not used anywhere.
> 
> Could you clarify this ?

It is the flag that introduced drivers/clk/at91/clk-sam9x60-pll.c.

Thank you,
Claudiu Beznea

> 
> Thanks,
> 
> Thomas
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
