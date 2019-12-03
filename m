Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C329810FE5B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:05:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6FsCwIrVeqAhuniHgL8v32tLLxlCwUvcrrAaA7qzRc=; b=XKz77NZCtJ/jJI
	LvLG50BWLgWVMjnwMo+PmzlNB6Z3t+d7Yk/ob3zR3Y2qVIfxEkH9UAzEHVUqEFzWeER8LvwOGwvka
	lLTjhVxnuQq5cZow8J100CtJTiYw6bFNc5gbm4SdCj/7TRTdPdEPWZ03cccB4sxsxH9DZAqxX4T3+
	FM+itwtF4UM/zLuLtcZWhxcopIAe0pV0VK8HBjdjwXHFJMrX95OfzdHuar+4zP8frAElGaNQStm9a
	3UUN4vJsgTHVF3d7ustva/Yn5ToVkq3i0V9VRXYPagYDVXz0j66ZF6JrFc7ZVcYsyZxZVba3f5iHb
	hRmuqp72MCzt8WNJ+iOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7rl-0008WQ-49; Tue, 03 Dec 2019 13:05:21 +0000
Received: from mail-eopbgr140107.outbound.protection.outlook.com
 ([40.107.14.107] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7rX-0007FP-ID
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:05:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=itiSklXH9YMNpPXmSVS+jPtpU1jIFWuvWyYurdVlGO6lWxrUG9+Sm1LNCyp58uOaMcKf1AE0fBzej1o8Y2+W1P/hO9FZVwVML0resZiwvrAN1JTlyjUZ5WVfhnSFNGRu8qC/IMPQ+zWroImQsxAzSPhIhdfVfAKGJNh8h6Y2c/BI1HEa9kifs1bTMb13yB6k07Ikai93pgd6jQysOXNJuI4RnScuy1V+2jRFfTDH158272FWhy0Os7/LLYejAHClaQeEjcTogjrPPDlHQBIyzOv53F2kiWVYlGV1m681fCgwG2oOBLNnhluRgCZRGCGliZ5SMK/LpkL3R01k/+a7VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y6H4RF7fl5CSFX/0j+TWyz1D3w/8Bk8M64RsIspG79Y=;
 b=PH4+LDDtYMAg7ZnPzOsI30yUXioCSkqSloAjub8Yyy00tbnGrAhEiSP5TN062QKsjG7dZVMpjFUyV7R4WPhX2CZQbLslN4FkET60z2oXSwaVn5ITC0lA8GTjYiVxBlpsisa5uSPDhJCy+ypL2yntltyOog7szG3eR4bfbIdb69lD7eilOzeOQvhlM60FKjPWtbQJktttKhGqOvVrgUK1otDfR5FpqkpwuvUtOZlsSjaBWtaDlI7eq7mVUzVs0lNasaJgHkPX20viGWD5jYrhnNvGEKUd3exH+DyAqknQjeAGdbTRxPj9/t03EqDy4cVTOu2gkfzBx5IxXNUPC3cf1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y6H4RF7fl5CSFX/0j+TWyz1D3w/8Bk8M64RsIspG79Y=;
 b=GZ1ph2Ws0sGreY8b6udkcp3pAaMdfQ0ebEuy7XlkuaqDuPKrotMNkdDjHY62mBRHESOQOHfeJV31wCL8tkmakUcvXxeawtBPNhivhvptLYyqFPez+cJQImVHWOd8W7jyrVOakmxgJWu/GNCk7Atxa2XsWPJgoc9KjNP9Gpa+aRs=
Received: from AM6PR0202MB3432.eurprd02.prod.outlook.com (52.133.11.29) by
 AM6PR0202MB3432.eurprd02.prod.outlook.com (52.133.11.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Tue, 3 Dec 2019 13:04:57 +0000
Received: from AM6PR0202MB3432.eurprd02.prod.outlook.com
 ([fe80::dc43:ed2c:945a:cd5]) by AM6PR0202MB3432.eurprd02.prod.outlook.com
 ([fe80::dc43:ed2c:945a:cd5%6]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 13:04:56 +0000
From: Peter Rosin <peda@axentia.se>
To: Ingo van Lil <inguin@gmx.de>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] ARM: dts: at91: Reenable UART TX pull-ups
Thread-Topic: [PATCH] ARM: dts: at91: Reenable UART TX pull-ups
Thread-Index: AQHVpdOvdUWDNvrpeU+UsNRoQGwGi6eoaNgA
Date: Tue, 3 Dec 2019 13:04:56 +0000
Message-ID: <8e8dfc02-bdab-d6f1-f6e9-e1dba7e38bfd@axentia.se>
References: <20191128100629.10247-1-inguin@gmx.de>
In-Reply-To: <20191128100629.10247-1-inguin@gmx.de>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1PR0501CA0018.eurprd05.prod.outlook.com
 (2603:10a6:3:1a::28) To AM6PR0202MB3432.eurprd02.prod.outlook.com
 (2603:10a6:209:26::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7947a15e-1176-4e68-4c89-08d777f16542
x-ms-traffictypediagnostic: AM6PR0202MB3432:
x-microsoft-antispam-prvs: <AM6PR0202MB3432543D7F9A72DC1E7F2763BC420@AM6PR0202MB3432.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(376002)(136003)(366004)(346002)(396003)(189003)(199004)(229853002)(5660300002)(7736002)(305945005)(71190400001)(4326008)(110136005)(71200400001)(6436002)(508600001)(31696002)(25786009)(2201001)(8936002)(14444005)(186003)(316002)(99286004)(6486002)(4001150100001)(54906003)(6246003)(256004)(6512007)(2616005)(81166006)(2501003)(66946007)(66556008)(64756008)(58126008)(11346002)(66446008)(6506007)(446003)(81156014)(36756003)(65956001)(66476007)(3846002)(53546011)(2906002)(102836004)(6116002)(386003)(14454004)(4744005)(31686004)(8676002)(26005)(76176011)(86362001)(52116002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR0202MB3432;
 H:AM6PR0202MB3432.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OW7JiUo2rj5SorxM8jmVHQ0LkOFQg5sbAHBz7EkHkjMJZxsWZhjtfZLxiuq99dLtuAU0XEn2KS7Sw4Fez8/RQZ1NkCQVwRF/a+IfQizPTDp6j43e/HI4Ck/n2UZgktdbV2xOhAL9GhdvTrFDjij8A1JgfyhDc+bNvtcySbXYbS04dYcVOkae3kN6d1lzKIQyGxbrBkz/EYXfgIfuhdeJLPLD7dQs9XRpbSuVEZE0rDCRaICXm7skuHENTXtRy2QLtwh4KKzQcal11HWwA0YiY0lS04trp+b1IP9gGqqIJONuuraOKKdavHDp4PEUrZ5VQh6G1lgVePvKUamhj4btyJ/PquTuofIjrDlO/qJXZAVHJ86fh4PSWSgbxpgT/9wt2Ue16Gv/s7qOzdWzBaytSL26sipzqU501N+/i1wGLGoJ3oF8DwpAqee1gScXOzZM
x-ms-exchange-transport-forked: True
Content-ID: <67E14BFC18AD7247B2E9B05C77247FF9@eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 7947a15e-1176-4e68-4c89-08d777f16542
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 13:04:56.8200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BX7/dn1le8ArtHpHh8NeM4BRgis99HE5mKiuzWMmpPjk/OPpxiSBlesPU2CTn7+u
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0202MB3432
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_050507_673944_CD9F042F 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-28 11:06, Ingo van Lil wrote:
> Pull-ups for SAM9 UART/USART TX lines were disabled in 5e04822f.
> However, several chips in the SAM9 family require pull-ups to prevent
> the TX lines from falling (and causing an endless break condition) when
> the transceiver is disabled.
> 
> From the SAM9G20 datasheet, 32.5.1: "To prevent the TXD line from
> falling when the USART is disabled, the use of an internal pull up
> is mandatory.". This commit reenables the pull-ups for all chips having
> that sentence in their datasheets.
> 
> Signed-off-by: Ingo van Lil <inguin@gmx.de>

Sounds reasonable, and sorry for the breakage. However, perhaps a proper
fixes tag (with the prescribed length of the commit hash) should be in
there somewhere?

Fixes: 5e04822f7db5 ("ARM: dts: at91: fixes uart pinctrl, set pullup on rx, clear pullup on tx")

Also, I think the same kind of change was made to the barebox bootloader
at about the same time. Is there a fix for that queued up as well?

Cheers,
Peter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
