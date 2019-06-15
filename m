Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441294702F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 15:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=komKVGw6oFc1jedSukeieT6TqNuoFRkqYOpNSBRhTTQ=; b=Fg8PhBww+usl+d
	XBYXXTPkIKljGncwlRVzLt/mTxZ8TNNOygqSnE6YaXD4RYTvTPEkbDhAb0M5Y44eWXHRUdUc5bNrB
	VC0L3lLp2yJaM6zRx5fKMyjyzhPOOGD38b/hF4oeqTN07Qy+TSjv2Z/1u4bqp1SI5JqHFB98m9/Mc
	phlBlnvH1EpDZ0Yj2M2OufuedGyA/Q+tPugOem7uVFO/bK2sAVjyIvPrkjSmW57hcGfzwsztTMX7O
	7lShQgTAm0gVTUN5smdmGAqts/CbfIIx+bE4i45eBGCjKmEUqXMcDgHy/SRksdWHOMobh9LquW3tM
	/KgPZm3Dha5e0apqB9GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc8nF-00044q-KJ; Sat, 15 Jun 2019 13:32:29 +0000
Received: from mail-oln040092066094.outbound.protection.outlook.com
 ([40.92.66.94] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc8n3-00043q-8J; Sat, 15 Jun 2019 13:32:19 +0000
Received: from HE1EUR01FT047.eop-EUR01.prod.protection.outlook.com
 (10.152.0.60) by HE1EUR01HT230.eop-EUR01.prod.protection.outlook.com
 (10.152.0.114) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1987.11; Sat, 15 Jun
 2019 13:32:12 +0000
Received: from VI1PR03MB4206.eurprd03.prod.outlook.com (10.152.0.56) by
 HE1EUR01FT047.mail.protection.outlook.com (10.152.1.5) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11 via Frontend Transport; Sat, 15 Jun 2019 13:32:11 +0000
Received: from VI1PR03MB4206.eurprd03.prod.outlook.com
 ([fe80::fdae:4944:7c73:c26a]) by VI1PR03MB4206.eurprd03.prod.outlook.com
 ([fe80::fdae:4944:7c73:c26a%6]) with mapi id 15.20.1987.013; Sat, 15 Jun 2019
 13:32:11 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Peter Geis <pgwipeout@gmail.com>, "Leonidas P. Papadakos"
 <papadakospan@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
Thread-Topic: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
Thread-Index: AQHVHS3xSW3k3OH4HkS23g+pNq5rrKaQJvuAgACqTgCACuQ1gIAA92IAgAAWOQA=
Date: Sat, 15 Jun 2019 13:32:11 +0000
Message-ID: <VI1PR03MB420672DCCFF8BE2161F67A88ACE90@VI1PR03MB4206.eurprd03.prod.outlook.com>
References: <20190607123731.8737-1-pgwipeout@gmail.com>
 <1559912295.22520.0@gmail.com>
 <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
 <1560547631.1367.4@gmail.com>
 <71dc10a5-1024-d849-336e-476d183e5f46@gmail.com>
In-Reply-To: <71dc10a5-1024-d849-336e-476d183e5f46@gmail.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0502CA0012.eurprd05.prod.outlook.com
 (2603:10a6:3:e3::22) To VI1PR03MB4206.eurprd03.prod.outlook.com
 (2603:10a6:803:51::23)
x-incomingtopheadermarker: OriginalChecksum:573E1ADEE52DFC612CA64EE6F6E5BA166805CFE4A4FD04A45DC3F979C6C491AC;
 UpperCasedChecksum:FA724A734FF6C722AB376478982D028B78929CE10C655297378604D28AA5DE82;
 SizeAsReceived:7990; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Twh0QfI+6+pk+T4rm4or7IAJZd+ZObJ8]
x-microsoft-original-message-id: <e5800844-626e-0e17-aff2-913e56c3f265@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT230; 
x-ms-traffictypediagnostic: HE1EUR01HT230:
x-microsoft-antispam-message-info: t3s+Xi7LVBriJtTkKiXuLbeTRxtdK1GNgeOIp9N8Ja5CDMHEZBeshbBFft09As4RD/tpMw0wkgVKD/2selqNbxWE7BAlcXdFfJtRC85C0qI7rZ2q49joFWEMb2RyQ0Rwfu2LxRfhzkS35QND0yBCy0uRoduCIiq/jJRiy240Pp6NhHtP3g3FjYKDlYh0sX5C
Content-ID: <AC1B4905A1B48D4C8A4666AF55652EB0@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 252744fa-1993-4c2b-5f81-08d6f195dee4
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2019 13:32:11.8379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_063217_301027_D8C7716B 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.66.94 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jose Abreu <jose.abreu@synopsys.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-06-15 14:12, Peter Geis wrote:
>
> On 6/14/2019 5:27 PM, Leonidas P. Papadakos wrote:
>>
>>> The big change was actually snps,aal.
>>> As per the TRM, DMA channels not address aligned have severe
>>> limitations, if they work at all.
>>>
>>> Setting the DMA ops as address aligned fixed my 30mbps TX issue when
>>> combined with your snps,txpbl = <0x4>.
>> Honestly, I don't notice any difference either way with aal. So what 
>> happens without it? If You only use the 0x4 txpbl and having removed 
>> thresh dma mode, (2 things then) do you get bad tx?
>>
>>
> I'm unsure why, but I think there might be small variations in the 
> different boards (Firefly, Libre).
> On my board (Libre) with just 0x4 txpbl and thresh dma removed I get a 
> whopping 30mbps.
>
> Adding aal brought it up to 900 mbps.
>
> I also had stability issues on rx, where it would bounce between 200 and 
> 400 mbps, which adding 0x4 rxpbl helped.
> I still haven't been able to get rx above 400mpbs though.
>
> It's definitely the MTU issue, since setting the max mtu to 1496 fixes 
> most problems.
>
> I have to wonder if the pl330 in the rk3328 is bugged, since all of the 
> hardware that misbehaves (usb3, mmc, rgmii) require the dma engine.
>
> If this works as a valid replacement for thresh dma mode, then I can 
> submit it for merging.
> I would like a few more people to test it first.
>
> Anyone else with a rk3328-roc-cc board that can test this patch?
>

I will try to run some tests using this patch on my different rk3328 devices tomorrow.
One thing I have noticed is that when vdd_logic is less then 1.05v the network connection gets super slow.

Earlier I tried to use devfreq and an opp table for gpu, but that caused vdd_logic to use lower voltage.
I have since then run gpu driver without devfreq/opp table and vdd_logic is using default 1.1v.
My board seems much more stable using default 1.1v for vdd_logic.

Regards,
Jonas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
