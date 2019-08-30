Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83575A32C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 10:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1QyaEBO5ZGKvaM3IGBSKBNPNe2crD5Gombyspw07slM=; b=du+NKpxwkzGtl4
	SV951FRkBafLQ5iRk3Ayt0eFejA+GCiFF+eJ9Cyanoz9fKKgYjJ5swz/T5rmYDcxutaIH3eUE5ax6
	cam5gaPC4xZdgE90zNx8GtsubX+aW/gKPNGcVyIYVvzj2gRTzrJGxfqYP/iGS6e8LGLbX9cHfcEte
	NxCNj02b2fcv8YM0UwuZ0wmL6KzutAw7reZXG2hTnaAtcO781/f1FIxOl9jMAJ5EhUQc1myh9qrt8
	XaUK8nsqgZhuc/rh36ZQ/PPj1NKzYC87fNL3hqafaEoNdgxXYikDKRr/m5Jzf4GfiHlz2ntwieKur
	nLFTAC4tZIG4nfbd9jLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cS7-0006er-HT; Fri, 30 Aug 2019 08:40:16 +0000
Received: from mail-am5eur03on0621.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::621]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cRo-0006dS-Ls
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 08:39:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGT9YH9p6azSMowrxmSwm6trTNZbQTAk5yiLmTrmUiU=;
 b=mbmFCogR8IAO8n3xvf7smeg+x5yC7S1qrHs5bWH7p3qNy1ZjOQwN48twLpz++J6Zs3NvKkmzpfCnSKSQC85BhZNlQN7z9BU1GeowyopDxVLiKQht9S29pk5AKvHDURxTsCgDP3YdcE42O+OJzh7ayTf9hWe5qgnyfb3WPo+UogM=
Received: from DB6PR0802CA0037.eurprd08.prod.outlook.com (2603:10a6:4:a3::23)
 by AM6SPR01MB14.eurprd08.prod.outlook.com (2603:10a6:209:3c::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.16; Fri, 30 Aug
 2019 08:39:50 +0000
Received: from DB5EUR03FT023.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::206) by DB6PR0802CA0037.outlook.office365.com
 (2603:10a6:4:a3::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.19 via Frontend
 Transport; Fri, 30 Aug 2019 08:39:50 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT023.mail.protection.outlook.com (10.152.20.68) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2220.16 via Frontend Transport; Fri, 30 Aug 2019 08:39:49 +0000
Received: ("Tessian outbound ea3fc1501f20:v27");
 Fri, 30 Aug 2019 08:39:49 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ce4f17bbcbb3b2f8
X-CR-MTA-TID: 64aa7808
Received: from 3ddf30178b44.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.13.55]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 B41527FC-56D6-4598-A33F-C19E755D20CF.1; 
 Fri, 30 Aug 2019 08:39:44 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2055.outbound.protection.outlook.com [104.47.13.55])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 3ddf30178b44.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 30 Aug 2019 08:39:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lW9Vy/Y4eDxjZ2/nSlHIPZ1ZMS0Jv39La0yfAXaIcFhKZrmp4lIQnoLScbxkuNCwur0Y3M5ZgVDT86paxOvy2M5Pks7seWaIqHQp1g4n8mnUZLcLg76/aqeKlyyQZTp9EGfgiy4lKus5KHG3RncniwWmZcmCrtQVVFhPQ3D2pEjLHRJzWCO6qOTBZ7zG67wYkcb5bl5J2cxdd7q85U1pyMmHai3rzpERA5pKGjPGQfpLroqLXlfUvxrbtpDGUr22d5m/Zz3Du559kAFF9Zgro4+c1I0ph0UQi1+JgkW2sU0WU1trjw5yUsYl9VRaP7O5rup7hGMcpDjyH1CC+66AIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGT9YH9p6azSMowrxmSwm6trTNZbQTAk5yiLmTrmUiU=;
 b=D+ZM4jwFHyxjqTX6iGt8vQVolUei0wd/qb/CJka2/3/hYH+zf2i+8L/o6+tAKrbwhhdD2T2CExr3vnRoJEMHoaQk5nZXRtAhOZDiSG9R8l1PA3nTPalvSxE+QzIUwvboOsvLP0hUYIyVD3To4xaQYzB1sokmePwMHmpDo1FMnAwjuBaq2H2iPofaJZ6rP7KnW2ah0Ymy8obuRrTGZn+tip+Vkt0BWhS/T1stlLLg161yhHsgIi/VWo1zNhScjiUgwVRZJ9QjeLY2ThoM+UjJ50MXpSFPz71jn2UQNN9TgIDTpWgOSmtXV5FsHdWbXYBjoBonVSrliGsPsxlAVbabOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGT9YH9p6azSMowrxmSwm6trTNZbQTAk5yiLmTrmUiU=;
 b=mbmFCogR8IAO8n3xvf7smeg+x5yC7S1qrHs5bWH7p3qNy1ZjOQwN48twLpz++J6Zs3NvKkmzpfCnSKSQC85BhZNlQN7z9BU1GeowyopDxVLiKQht9S29pk5AKvHDURxTsCgDP3YdcE42O+OJzh7ayTf9hWe5qgnyfb3WPo+UogM=
Received: from VI1PR0802MB2431.eurprd08.prod.outlook.com (10.175.20.10) by
 VI1PR0802MB2253.eurprd08.prod.outlook.com (10.172.13.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Fri, 30 Aug 2019 08:39:40 +0000
Received: from VI1PR0802MB2431.eurprd08.prod.outlook.com
 ([fe80::a954:a45a:ed8e:75d2]) by VI1PR0802MB2431.eurprd08.prod.outlook.com
 ([fe80::a954:a45a:ed8e:75d2%7]) with mapi id 15.20.2199.021; Fri, 30 Aug 2019
 08:39:40 +0000
From: Julien Grall <Julien.Grall@arm.com>
To: Peng Fan <peng.fan@nxp.com>, "sstabellini@kernel.org"
 <sstabellini@kernel.org>, "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 Catalin Marinas <Catalin.Marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, Robin Murphy <Robin.Murphy@arm.com>
Subject: Re: [PATCH V2] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Topic: [PATCH V2] arm: xen: mm: use __GPF_DMA32 for arm64
Thread-Index: AQHVXtqjidV/KwEkYkeguLx++Vlcn6cTXzGA
Date: Fri, 30 Aug 2019 08:39:40 +0000
Message-ID: <d7477406-a8a0-5c3c-13dc-2c84e27b8afa@arm.com>
References: <1567175255-1798-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1567175255-1798-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LNXP265CA0051.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::15) To VI1PR0802MB2431.eurprd08.prod.outlook.com
 (2603:10a6:800:af::10)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Julien.Grall@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a01:cb08:86b1:6600:a573:4b2e:766:58a4]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 90cadfa9-7862-4a61-20c8-08d72d259eac
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0802MB2253; 
X-MS-TrafficTypeDiagnostic: VI1PR0802MB2253:|VI1PR0802MB2253:|AM6SPR01MB14:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6SPR01MB14DA6B85FEE74C8D9BEF0380BD0@AM6SPR01MB14.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 0145758B1D
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(366004)(396003)(346002)(199004)(189003)(6512007)(2501003)(76176011)(6506007)(102836004)(46003)(25786009)(53936002)(6246003)(4326008)(486006)(256004)(44832011)(446003)(476003)(2616005)(11346002)(14444005)(386003)(99286004)(53546011)(81156014)(81166006)(6436002)(478600001)(6636002)(2906002)(31696002)(14454004)(8676002)(305945005)(7736002)(36756003)(2201001)(316002)(6116002)(86362001)(186003)(71190400001)(66946007)(66556008)(52116002)(66476007)(66446008)(64756008)(71200400001)(5660300002)(229853002)(31686004)(110136005)(54906003)(8936002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0802MB2253;
 H:VI1PR0802MB2431.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: sHroK7arnOYZKzytftVqgGl08BJppyFSFkUsrPJFtuLWfvNohcGynmAlDFA5B5mZy8QoLUd0NJah9mNvwdlaAE0ryMTj5uJUWRXvbW0fIcYx4J+RmjQpZ9j3ENCcYza5luYUUE+43V1op1SHCnaQklp7hoPJHaCqh8aHKHmJBveLFbXXEB0UcJnlh3NTBhaeqBP46hIdSwVBj3T87eZfoHFatO29I8T+PVGllfTMnraxCFOPAl6ba45trys0NNfrt/rH9P3v6Q/H2jzgoc1dmzMhNoeBEtrWbD4kdeeSrBZxhBwa1jxzSTp/OnW6KoC4Qbc3EPEuBi5UpXQ4r0nhrrUoFd1ys0JM08+JgkgNPjgc+UFm0ML5GO6qHVflqSBHBRCUz9xlHdwYWuJdMUjncsK+U2t5XZHrUj8KFR5D/kk=
Content-ID: <4B6CC26985B43A458DE7D52F68DB5C74@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0802MB2253
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Julien.Grall@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT023.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(396003)(346002)(2980300002)(199004)(189003)(70206006)(81166006)(31696002)(2501003)(76130400001)(336012)(81156014)(6486002)(63350400001)(47776003)(14444005)(6246003)(4326008)(186003)(6512007)(436003)(316002)(102836004)(356004)(478600001)(26826003)(63370400001)(2201001)(99286004)(8676002)(6506007)(8936002)(53546011)(386003)(86362001)(476003)(6116002)(2486003)(70586007)(126002)(23676004)(36756003)(26005)(7736002)(54906003)(486006)(76176011)(2906002)(31686004)(446003)(110136005)(2616005)(11346002)(305945005)(22756006)(6636002)(229853002)(50466002)(5660300002)(25786009)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6SPR01MB14;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 95763250-b297-4c66-7cb8-08d72d25992f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(710020)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6SPR01MB14; 
NoDisclaimer: True
X-Forefront-PRVS: 0145758B1D
X-Microsoft-Antispam-Message-Info: m0ufFjgnYwGyHjjEKTsHsjJ6fuo5nJTAcXK5SS9QOyRiNhcr+on/wyjGA56ibK5t77mFq4f4sD9EHEQx3TgO/F9wWJ5JgD95uul3M7/JHbhH8ZnT5imImR2fWFPhNNY3QnmaLU4Bka4uLqpmnGoFQ3u34r7bjnPOjV5cnN22r0DlwGlqmTS7cufuUQ8CPtA/jV0BrXKJaJkeyQth9SDQXcVKy3GLmkYChWeEMKr0iJJeJQIn6IFxMjvQo1bzU+cv9pT0OZ+0gq3j1hKFwSoo0il8Siq1f1Z/mexrkNmh+m8VLU+/aFIPHpRRlxq1f6u9Mo/QRwrv1dNBo8c2nIwN6ywfmNsmIuJjvJXuSfXv6egaT+cWwP8xabrlutxiKKNSQ3bZg6O95e3lMChshUDN/TEgV3jWbWje0PfhdbC8DfE=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2019 08:39:49.4774 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 90cadfa9-7862-4a61-20c8-08d72d259eac
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6SPR01MB14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_013956_810701_4663A891 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:621 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 nd <nd@arm.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On 30/08/2019 04:28, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> arm64 shares some code under arch/arm/xen, including mm.c.
> However ZONE_DMA is removed by commit
> ad67f5a6545("arm64: replace ZONE_DMA with ZONE_DMA32").
> So introduce xen_set_gfp_dma for arm32/arm64 and using __GFP_DMA
> for the former and __GFP_DMA32 for the latter.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V2:
>   Follow suggestion from Stefano,
>   introduce static inline void xen_set_gfp_dma(gfp_t *flags) for arm32/arm64, and
>   for arm64 using __GFP_DMA for the former and __GFP_DMA32 for the latter.
> 
>   arch/arm/include/asm/xen/page.h   | 5 +++++
>   arch/arm/xen/mm.c                 | 2 +-
>   arch/arm64/include/asm/xen/page.h | 5 +++++
>   3 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/xen/page.h b/arch/arm/include/asm/xen/page.h
> index 31bbc803cecb..d08309c45e6c 100644
> --- a/arch/arm/include/asm/xen/page.h
> +++ b/arch/arm/include/asm/xen/page.h
> @@ -1 +1,6 @@
>   #include <xen/arm/page.h>
> +
> +static inline void xen_set_gfp_dma(gfp_t *flags)
> +{
> +	*flags |= __GFP_DMA;
> +}
> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
> index d33b77e9add3..828f49dc95f9 100644
> --- a/arch/arm/xen/mm.c
> +++ b/arch/arm/xen/mm.c
> @@ -28,7 +28,7 @@ unsigned long xen_get_swiotlb_free_pages(unsigned int order)
>   
>   	for_each_memblock(memory, reg) {
>   		if (reg->base < (phys_addr_t)0xffffffff) {
> -			flags |= __GFP_DMA;
> +			xen_set_gfp_dma(&flags);

The name of the helper is quite misleading, this is specific to swiotlb 
yet it gives the impression it can be used everywhere. The helper will 
actually set the flags in order to allocate memory below 4GB.

Also, I saw an e-mail suggesting that __GFP_DMA may be used on Arm64. So 
a user may think using xen_set_gfp_dma() will set _GFP_DMA and not 
_GFP_DMA32.

I know duplication is not great but it feels that duplicating the full 
function (or only the allocation part) would be the best. This would 
require to introduce a new file mm{32,64}.c in the respective arch 
directory.

Cheers,

-- 
Julien Grall
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
