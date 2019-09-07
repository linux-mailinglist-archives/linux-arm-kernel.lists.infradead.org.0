Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EF2AC43D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 05:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=crmdqtgbn9qU7Y6DeYAAY3+zPmOmifAX/V7s8w+EN/k=; b=Cjyni3OGtGBNmM
	IuWy6Ja7g+NOjXRjla7V0y6YdBnJbD/2D+nWHB52lnkjtuwLuo7XchzKxulhWvvbdjXpL3s9ieljA
	kaxGUzMr928bRnAAsq2rSD9k2YmyFf7K79NNU7WCHv/Z3r5nf0xjiLBwTPCuvIymk//AbOr9NTVsf
	VTNg+pymPBZiUPmDw5mYKl9BHHjzGNmLhuI+v4Dns/Fn/RjIGin2xnvzsnAVP/cshJhDm9mkhNK6K
	O2/l+h7xGGrDyUGJYKXtUBfvMGJlvGgZvIl4eGto9Ks729C82Gfe+LyfN5jsR3Q0A3S6mna6LGuQF
	eHeyOqlB/HZP6zzJHb9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6RQW-000118-1P; Sat, 07 Sep 2019 03:30:16 +0000
Received: from mail-oln040092005071.outbound.protection.outlook.com
 ([40.92.5.71] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6RQJ-0000Mm-Ah
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 03:30:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DFrTnOzMiiw4EAKnVNAFOZ7YZKgYSD/GGqT7niRHNHF8cudzWcGr9jdfkN90Jc9RwFLsol8Af4pmFVp/D2OX7ZnT8qyHBFl7Gi/P3akMq0m/KkUlYLSN9Y2TLEJc6nOR7SJnw80OoLt/7B9LIdUNMOZk6EcEIpfdRtlNM4HtRcoRjt3IakqEORIw+aoKP87bFBnc98NKtPc8Ec1j+vkz7TkSe9swrgy7oAPw1DVSBglvkApJdpT4qolstJYP17wf4/f2ECefLsvlii7f9TJ86fWaDIXzFTS+VdUZitX45U/8EXWY2cWEFxIS8yc1a4MdtKj2ACyQuFdU/hK6dH8/MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IKj6+F6CBgwQrs+F6UpCX38QiHo5Es13HGM1lLFuMvw=;
 b=JKsub6fnB2qnNonrarjXYvQV1ZgFoG77vQGaKB5KyxGwwN145pKh1BXlzA4VSxDKlfYut0UOEd0Wn+2x21kwToW0z07+JEitwvwVZ8MfezBkB0oZwTLe6tWwNKmUhWbNMd6NdfQGrkiry2DaLdtzsJ2xWNzi75NJ7fAhLG71Sa9Ax2amnpza/pVv9UZncrw6NN7Mc5CIS3j/Vzj9+JKRRBopmlpthsSJr+ztscQZREKpdjOr0qXKgw/xL+8WqLbWhd3i4/MLmM1UApwGn+6TM0BK5ko4uv9zz/gOPftBB0M3vMQKmOBjMxUBwhykJ+XmTqSSrj4BTKWV41JA1D8VbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IKj6+F6CBgwQrs+F6UpCX38QiHo5Es13HGM1lLFuMvw=;
 b=kgxrqwUW03deUczmRO6rjQk/JA1JTugxwp/d5bSNNyBH/HTwSys8qy4czseCdopKkJP2gk4Zg7k1Dz3kzK+UAc5FtOS9cLtmAtIfYOJjZAffIejTlD7R7/C7pJJ0PQlE890GNGARWhlMIJ+HlJmLJ9XjXs6oSqax0wBmkC3Mky3wjKfJv/HiE7pr9v0/RJIs0SEPdo6eKu8eX5bYjxFrJ6heANp0Qj9Q8HY9dGzmFkWxdq0uJYLqLI0GbltLDwUrHfkJ9Q9IdmhmM07dQ4txDVBluey7hfu08HyEmne/NHTgOB5sEif8cAt30qlzoPFvfxJKhxrUUq3WU3YeGnyA0A==
Received: from BL2NAM02FT041.eop-nam02.prod.protection.outlook.com
 (10.152.76.56) by BL2NAM02HT068.eop-nam02.prod.protection.outlook.com
 (10.152.77.137) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2241.14; Sat, 7 Sep
 2019 03:30:01 +0000
Received: from BY5PR12MB3699.namprd12.prod.outlook.com (10.152.76.53) by
 BL2NAM02FT041.mail.protection.outlook.com (10.152.77.122) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14 via Frontend Transport; Sat, 7 Sep 2019 03:30:01 +0000
Received: from BY5PR12MB3699.namprd12.prod.outlook.com
 ([fe80::2429:2cff:48e7:4d89]) by BY5PR12MB3699.namprd12.prod.outlook.com
 ([fe80::2429:2cff:48e7:4d89%5]) with mapi id 15.20.2220.024; Sat, 7 Sep 2019
 03:30:01 +0000
From: Yao Lihua <ylhuajnu@outlook.com>
To: "krzk@kernel.org" <krzk@kernel.org>, "kgene@kernel.org"
 <kgene@kernel.org>, "linux-samsung-soc@vger.kernel.org"
 <linux-samsung-soc@vger.kernel.org>
Subject: [PATCH] ARM: SAMSUNG: Fix system restart support on s3c6410
Thread-Topic: [PATCH] ARM: SAMSUNG: Fix system restart support on s3c6410
Thread-Index: AQHVZSyH8vIh3QkSA0SXmzTHY3wurA==
Date: Sat, 7 Sep 2019 03:30:01 +0000
Message-ID: <BY5PR12MB3699F7EF4920F878F3096DE7C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR0302CA0007.apcprd03.prod.outlook.com
 (2603:1096:202::17) To BY5PR12MB3699.namprd12.prod.outlook.com
 (2603:10b6:a03:195::16)
x-incomingtopheadermarker: OriginalChecksum:99D461DF0B4754D067793352F60EA619AA2B422DF13C22E43139F2453581FB92;
 UpperCasedChecksum:89870684F5AC7F9E712E7EEF6AA83559951CF9A64387EA1601343CA97C7A695F;
 SizeAsReceived:7456; Count:48
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [OF2JpBRUIylKjuzUPzD7nSKAdCPeXe6W]
x-microsoft-original-message-id: <20190907032930.29280-1-ylhuajnu@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 48
x-eopattributedmessage: 0
x-ms-exchange-slblob-mailprops: S/btQ8cKWiQhn5yLDXsDpGWWc6rhV8TTfuVqEadzm23LjFRPSD14TicBkr+3Cw2VpAQ9erYuPlXGbyTxWBZuGmzIEqKOE/eKIIeBG1Si5OUy+B0kbXlruINr9ooOiRBS3byM9+u7MowEt3hxox+3PuBUc0v6Y4gnqAqpSTWZ40YhLa1XJCEEC5oBH+zXAtNl6xfbKvyqpSd3rgP+XqG9W1XFgf9jyaFlH1vPhmcpqb0h8tCFuQ2TJvdrcQQ1XkUI9Hx2iMIktLzZAm0qmfK9Drwe0QymNoOQ/r6f4K+ssiTnprvcElfTjuDhPUMBbu/zWd7bKQpECXlrdlK+QDmCOf0aW2W1xfeYipUoDflYddE7ZkljTXRv4KihOTAS81QK97+zllakoIYJZ1EuUQt/WEmen8Y+C5JZ6Yy2CxEuzrE2XXfmq5x1akAfYiszvnHc9nW12X+d5GdJU1dOQiq34T+wNo7z4GZlzRaaPb1kRc/EQTdW9UF3cLyrpUOQhJItJPsjRqxdvxBLbmjxQK9UP1LBwNC9PdVvT9bGIz5mwshlos3jBcjATmIU6V/Ae+FyRhxotzz7U141H81bl2BkOftQMlgM4M0TYuyP+5pcPKxUJnEs4Vf1XO4k2ztMkFy+EEn++EiXBmzQJCiABEc/EbLLtIYgSu2tMWbFUZEAZ1NgtENbHCdIjOhMAkE5HcJg9MEwl182zpa12Ye69GKihU27PIBwgfbMdHsyoT89A7jBtdTf4FikhoIt6xZy8zAEh/zhfs0n0wo=
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119158)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(201702181274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:BL2NAM02HT068; 
x-ms-traffictypediagnostic: BL2NAM02HT068:
x-microsoft-antispam-message-info: LI+UIGlRoU7d8cm128q9NEvSI73NG+tmyT+qpFfNFT6NTeoIWKa97XIT4FhV6h9CzrFgH/q8P3Hjc/ZGaDzDyAahnTVDGV69Y7MeYxOxVrB+5wBxm/flgrTk+N+Kpegi7JT1qx4yuFOO01x2tpvytHPLMQXm3aPdtnMy0lCIK+xpIyJQqO9ZSm50d9xY7AEs
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c7371436-e736-44cc-bd9e-08d73343aa30
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2019 03:30:01.1548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_203003_468201_71B090F3 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.5.71 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ylhuajnu[at]outlook.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yao Lihua <ylhuajnu@outlook.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lihua Yao <ylhuajnu@outlook.com>

S3C6410 system restart is triggered by watchdog reset.

Fixes: 9f55342cc2de ("ARM: dts: s3c64xx: Fix infinite interrupt in soft mode")
Signed-off-by: Lihua Yao <ylhuajnu@outlook.com>
---
 arch/arm/plat-samsung/watchdog-reset.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/plat-samsung/watchdog-reset.c b/arch/arm/plat-samsung/watchdog-reset.c
index ce42cc640a61..71d85ff323f7 100644
--- a/arch/arm/plat-samsung/watchdog-reset.c
+++ b/arch/arm/plat-samsung/watchdog-reset.c
@@ -62,6 +62,7 @@ void samsung_wdt_reset(void)
 #ifdef CONFIG_OF
 static const struct of_device_id s3c2410_wdt_match[] = {
 	{ .compatible = "samsung,s3c2410-wdt" },
+	{ .compatible = "samsung,s3c6410-wdt" },
 	{},
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
