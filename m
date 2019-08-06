Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E445F82E79
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 11:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NRQIGQG074T8peZlFXzJtvHJDRoM/6YsenbtXc6q/g=; b=Yvux+cX929K4gw
	13tF+MPWeV6u+WhbgxeoLNEfbRHv9qxBYSKvsBwAgq6uU8HaTp2tsaXlyah6bEXfUZ66mBJsT0a0C
	28hm97/PsnkqBy7P7Vrqi6XY0WlQedWd+bx3nEKKf3/mAPOV053m5zwkcUqYpLpvCHLUBtY1ga1qR
	pZNmzfcVqRA7cpVJS+v/m9wX+mOGmfS1Z4aEfm8NN9v1+CYwI1eOAfCMnxUGiqS7W2yCDx/v5oKuA
	celtfYKUI1xGGa7hURMDRkDitG/OMJCOPCgTXQQXJtk7m+MtCI+DWO5cXLw603RnMqAuO2pz2m/kg
	8dOiu3fODnk9L2crZGDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huvVw-0003N1-KI; Tue, 06 Aug 2019 09:12:16 +0000
Received: from mail-eopbgr130054.outbound.protection.outlook.com
 ([40.107.13.54] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huvVh-0003Me-4V
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 09:12:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oWs6qsweRK1V83m2vRauYZoWkmM87JnK/uaVYO66ncA=;
 b=r0GlddTZfDHO7poHqb9SWFxrYy1Pe2VmaQGwz/irFLOlJJegpd9DLotgGZOGhj9RlSRN6jQ3IFC+hW7n+qKJiwata7nw3fGlpKw1Oir9QcL4mGXjAFGJe/0oiWPjy5zHZ4ue62+w3IKa/z5vgUzXO7lhcOJFoXXiKc2X4KoTsII=
Received: from HE1PR08CA0065.eurprd08.prod.outlook.com (2603:10a6:7:2a::36) by
 VI1PR0801MB1856.eurprd08.prod.outlook.com (2603:10a6:800:57::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.14; Tue, 6 Aug
 2019 09:11:54 +0000
Received: from AM5EUR03FT056.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::201) by HE1PR08CA0065.outlook.office365.com
 (2603:10a6:7:2a::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.15 via Frontend
 Transport; Tue, 6 Aug 2019 09:11:54 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT056.mail.protection.outlook.com (10.152.17.224) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 6 Aug 2019 09:11:52 +0000
Received: ("Tessian outbound 6d016ca6b65d:v26");
 Tue, 06 Aug 2019 09:11:47 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e38865c1734c979a
X-CR-MTA-TID: 64aa7808
Received: from 0fc3f29db8d9.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.0.51]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 45A301BD-1222-4D25-A165-007336BDF8C0.1; 
 Tue, 06 Aug 2019 09:11:42 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur01lp2051.outbound.protection.outlook.com [104.47.0.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 0fc3f29db8d9.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 06 Aug 2019 09:11:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EyD9nC9LSYYtC6GtBfFz8xeds6Z1lJCExyVxutlWdM4EMjJDVl5ilGAc5agDqsDMrbqAYMuiq1HTLSOEALP+YqVsBDXcTUfMslOIpiVdbzldC5FHVYVKkPky/jwv0Ua6mWaQYZzTcP5PTaR95woAMDvOuO8GhzlNcmvqyeyB5+usdhQ2dD/cliukBfSjrSp00vBbPP9HpVO8ptjEtwFLnJmUBg059H1sFV3ZxwQ2bkOxk4ThPs9vvtGSIwIp+oD+88NDywxPu7AOwXozTFy+M3pD8EUlzfiHrElHGpukuRs/Z22q0s7agvlpXmd9/431QSv4xSf8Pj0Bn3PAoAlUhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oWs6qsweRK1V83m2vRauYZoWkmM87JnK/uaVYO66ncA=;
 b=PSBLEKk4BJlDHbiTq6peUQptpCcaSOZMWT60T7SLungPgPGflBcmERuBaFPPfW5+XSSDl8Az8BQcOpOjeYywWGr2V3WlE9yzVOXhoJutBXcmcIEPvfruh0Ahh+H6bcQqcVVusXaAie/F6Mh6ruk0nV7fOxFemze5FtW3Axgp0XysmTkb3RQBAbHxd28xrRgiyw0Uh2XJtoUkQVvHAaWS46/7w5L8v9e5p8ep//XEjr2g9Uaddr+HLvncwXIF745qKohyY2tStOEmgShY7q7Ab/j6kgHf6BSCjqcAl1p/vKtB8Nou24n3vgEKNs3mzt44dh11kE319l+QYiAkzw4YbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oWs6qsweRK1V83m2vRauYZoWkmM87JnK/uaVYO66ncA=;
 b=r0GlddTZfDHO7poHqb9SWFxrYy1Pe2VmaQGwz/irFLOlJJegpd9DLotgGZOGhj9RlSRN6jQ3IFC+hW7n+qKJiwata7nw3fGlpKw1Oir9QcL4mGXjAFGJe/0oiWPjy5zHZ4ue62+w3IKa/z5vgUzXO7lhcOJFoXXiKc2X4KoTsII=
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com (20.179.12.12) by
 DB8PR08MB5403.eurprd08.prod.outlook.com (52.133.241.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Tue, 6 Aug 2019 09:11:40 +0000
Received: from DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491]) by DB8PR08MB4105.eurprd08.prod.outlook.com
 ([fe80::f558:a6c5:f71c:491%5]) with mapi id 15.20.2136.010; Tue, 6 Aug 2019
 09:11:40 +0000
From: Steve Capper <Steve.Capper@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: Re: [PATCH V4 05/11] arm64: mm: Introduce VA_BITS_MIN
Thread-Topic: [PATCH V4 05/11] arm64: mm: Introduce VA_BITS_MIN
Thread-Index: AQHVRinKapQ74fBHb0+Sxx08Ez8jCKbs17OAgAEJ4QA=
Date: Tue, 6 Aug 2019 09:11:40 +0000
Message-ID: <20190806091137.GA8365@capper-ampere.manchester.arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
 <20190729162117.832-6-steve.capper@arm.com>
 <20190805172000.GL4175@arrakis.emea.arm.com>
In-Reply-To: <20190805172000.GL4175@arrakis.emea.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.10.1 (2018-07-13)
x-originating-ip: [217.140.106.32]
x-clientproxiedby: LO2P265CA0247.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::19) To DB8PR08MB4105.eurprd08.prod.outlook.com
 (2603:10a6:10:b0::12)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 295fa90e-616e-4f8b-0022-08d71a4e1f32
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR08MB5403; 
X-MS-TrafficTypeDiagnostic: DB8PR08MB5403:|VI1PR0801MB1856:
X-Microsoft-Antispam-PRVS: <VI1PR0801MB1856682865D9110E68EFADA881D50@VI1PR0801MB1856.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:8273;
x-forefront-prvs: 0121F24F22
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(346002)(136003)(396003)(189003)(199004)(6116002)(54906003)(316002)(186003)(58126008)(99286004)(66556008)(6636002)(66446008)(66476007)(66946007)(52116002)(64756008)(6512007)(3846002)(229853002)(76176011)(486006)(6486002)(26005)(6436002)(446003)(44832011)(66066001)(476003)(11346002)(68736007)(6862004)(478600001)(53936002)(2906002)(102836004)(86362001)(7736002)(6506007)(6246003)(81166006)(8676002)(33656002)(1076003)(305945005)(71190400001)(4326008)(71200400001)(386003)(81156014)(25786009)(14454004)(5660300002)(8936002)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5403;
 H:DB8PR08MB4105.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: Ax2gNQbm7omg0UKropxSP7le5F1OdIISBisgwYIW95B0D4Sta386aFy4gr6/CHZAJ6Xgn2ctfWWyrZ08Wr16+7gNGCDxV7gqYiy9tNRwv1E27gLrRQVsebT70UO3tLThxkAYC3ncCMaouh0dz9KQ7KVZLAtIc85R993M4BrEiO+ZHv1mIbuL1RD0K5bneuvvzKyxEOTms65qzJcLIUbzr/UNsPOXtXrdUaXVRSOWjUT7cr8cPG84kZA9uYW6Wl4bmzvda5us9YhrYCwpd7xTlqYMXS1gF4R57Dtb8HrsHfLIKTjvhVEW4ZROmbvJzz0P9Bwg3S9AfzhW9V3H+TWExVPcFYk+KqYBZksUWiAbOlZd6FSiSib7PuILKzSIKSjq5ubgeOV/48aMVKFudfJ9Qzf0q6U6BtFUfkTwh8Mdp70=
Content-ID: <5457BE6080EEE34991F748DA1C805CF1@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5403
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Steve.Capper@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT056.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(376002)(39860400002)(2980300002)(199004)(189003)(126002)(70206006)(70586007)(47776003)(476003)(54906003)(76130400001)(1076003)(305945005)(7736002)(50466002)(486006)(316002)(3846002)(97756001)(6116002)(23726003)(8676002)(58126008)(336012)(186003)(99286004)(478600001)(81166006)(6486002)(33656002)(26826003)(81156014)(6246003)(25786009)(446003)(22756006)(6506007)(386003)(14454004)(6512007)(356004)(46406003)(5660300002)(63350400001)(11346002)(6636002)(86362001)(36906005)(66066001)(63370400001)(76176011)(26005)(4326008)(2906002)(229853002)(6862004)(8936002)(8746002)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0801MB1856;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 6aaee4f2-3d3f-4d4f-980e-08d71a4e178b
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0801MB1856; 
NoDisclaimer: True
X-Forefront-PRVS: 0121F24F22
X-Microsoft-Antispam-Message-Info: kwi1WpYpLGxsAE3ub+RQ5RXkbl+HK+QkE+qxcasYdWkhd56h7sJ20Kw2V33qfEyOoeUknRAH157gh2NkAY8uzKMaQOvVbeO9rLiwfKfLmE2AQkmyewNKINbzZybtvNtV/OSgO8xZ/v4LMEFy3suU51TPUfoopV9YW5S7iGXRqhmlSV0IYnS0JJPoZin8+lsw2bAVevcbkde8m+h6fJGVypZdRXqPpUragzIzAr1fQwmBKZueOknNCdpPMhihAEFEP2WfYURhPfUBflAXTuMVkhlu7689m8YqCShKiMDQSUTx0ErH4f0c2oviMhIMQQn/fFDfZvmGbEISCzIQdUh8Bj0H3E4/Y4QsMyojJCerty65qD7qi9dvRfvHxzmSroM6EQWW8VG+rmcfe0KGE/VLloajsv4gF5gK5wkTUGc/VJY=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2019 09:11:52.7514 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 295fa90e-616e-4f8b-0022-08d71a4e1f32
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_021201_180122_F4579921 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "crecklin@redhat.com" <crecklin@redhat.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "maz@kernel.org" <maz@kernel.org>, "bhsharma@redhat.com" <bhsharma@redhat.com>,
 nd <nd@arm.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 06:20:01PM +0100, Catalin Marinas wrote:
> On Mon, Jul 29, 2019 at 05:21:11PM +0100, Steve Capper wrote:
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index f7f23e47c28f..0206804b0868 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -797,6 +797,10 @@ config ARM64_VA_BITS
> >  	default 47 if ARM64_VA_BITS_47
> >  	default 48 if ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52
> >  
> > +config ARM64_VA_BITS_MIN
> > +	int
> > +	default ARM64_VA_BITS
> > +
> >  choice
> >  	prompt "Physical address space size"
> >  	default ARM64_PA_BITS_48
> [...]
> > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > index 8b0f1599b2d1..a8a91a573bff 100644
> > --- a/arch/arm64/include/asm/memory.h
> > +++ b/arch/arm64/include/asm/memory.h
> > @@ -52,6 +52,9 @@
> >  #define PCI_IO_END		(VMEMMAP_START - SZ_2M)
> >  #define PCI_IO_START		(PCI_IO_END - PCI_IO_SIZE)
> >  #define FIXADDR_TOP		(PCI_IO_START - SZ_2M)
> > +#define VA_BITS_MIN		(CONFIG_ARM64_VA_BITS_MIN)
> 
> Thinking about it, do we actually need a Kconfig option for VA_BITS_MIN?
> Can we not just generated it here based on VA_BITS as min(48, VA_BITS)?
>

Thanks Catalin,
I'll get rid of the Kconfig option.

Cheers,
-- 
Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
