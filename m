Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8C91F9346
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHBeV2nD6gKl3oMPUTSuY85LmISLUxij7imj5oiXcKI=; b=ka6MCFrF0N/oQ7
	M79EW5NyVgJdqugyjl+gODWLtBoQd4GUCS9+YPKpFmftPLYfKqt11kVSs6hb7H84+wot8fVaSx597
	jR9Z9b5HxDy34X38aEt22ZchILw7iSjdT6Mwwa7wqWzS+xs1BFZvdPzhdaTD/D7MLzUwu7IpL93VY
	UvXANnl+wt3U5ELp6smqWVm1xzF7KHtfL1Ib1Ctb8qhiSvzOO3PMXPqgTVsyQvU8PVlClDlUfEJKG
	bNqW6hHQrRf+DGJYUVQ6y2mzMXowB3wgenyve39z8EouiQJHCWSslDFKm6DUrvdC/qWV/wVCamLQU
	74fqVg8eEVhZXLVMfrXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklLX-0000bZ-8O; Mon, 15 Jun 2020 09:24:03 +0000
Received: from mail-eopbgr20055.outbound.protection.outlook.com ([40.107.2.55]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklFE-0001C5-6p
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:17:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WEm5mbDJcVCNHg4WEp6wbnYbahjZufexGnoIL2GMBcI=;
 b=KwyOfUD50KQpAmI6CdXAeW4g/4YrgsYyMJK1jksQ+khR2uCah9w5Vba8N+JTjLMxij63+GjBsvT+085F5DL6nWkRcPc+u82b51cGgjVRV6q24EyqBwycfQ/k/EhhIz7uFU4/CaANfRw/6GqbEnRZ4goTLnsvE++Y9iTd+P7kEpA=
Received: from MR2P264CA0122.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500:30::14)
 by VI1PR08MB2974.eurprd08.prod.outlook.com (2603:10a6:803:3f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.23; Mon, 15 Jun
 2020 09:17:27 +0000
Received: from VE1EUR03FT022.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:500:30:cafe::91) by MR2P264CA0122.outlook.office365.com
 (2603:10a6:500:30::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Mon, 15 Jun 2020 09:17:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT022.mail.protection.outlook.com (10.152.18.64) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18 via Frontend Transport; Mon, 15 Jun 2020 09:17:26 +0000
Received: ("Tessian outbound 56dbe829191e:v59");
 Mon, 15 Jun 2020 09:17:26 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: f22448e5125e39bc
X-CR-MTA-TID: 64aa7808
Received: from 875c345a3d9e.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 FDBEE1B2-3EA3-4511-8A10-CB590BDBB2C3.1; 
 Mon, 15 Jun 2020 09:17:20 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 875c345a3d9e.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 15 Jun 2020 09:17:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EZDWOK04ARKxK4FD+3E4M5BObMMcMUL2r+/aFasiyYBZah8D3x9onwUP9izkiJQrWTZeDH2rgpwf8XEoTIYfjS/NbsPS4QemybDBgQxH0lC2FEXZJ7HmTpc+iJxB6gdMGzvYGB07SM5fa609u5Om0w+La5B0IFLDwbY3PjoD1AvyaSn01bM7nMFO1hT7y1zzU07s9gmTebEdFHIEroTuOvyJfZ4ltABVDKFXWSLzd0M3GAZToy2IykUbSrFw+2WSsAhyjxFCCCNV8dblFIArGDe8RudcnpAc1vK35S9TMpwDjsmg88BSSxNLQYm9u7E9cAE34RFeUhAxh4UvA4pZBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WEm5mbDJcVCNHg4WEp6wbnYbahjZufexGnoIL2GMBcI=;
 b=frTpq97JhGVbTUkemae0/kBJug7VOYpn+5CcnHPHPaQQzlJ2arUtekGoOMAYNPSZIEp8iRUOioDLGYcLbhdYo1aOlIhWtMtV5j9LSFX5Vu6/kIa45usQ6RuyDM59OAt1DW+RzX2eklix0cWwn7CILx21OUdGOt+2XqYdi6HGCTRWlDPqTz5SMgTHztuH/CAyC7d5QugladF19EkLoAfwwn5RHn9JegHLnfxNWdv8oWzMKHYxCVjBweUJ3Gwb1G81qpiLPTaIFTPxfExxPYYaKQPkzq3NspbCssBwKotbpWoB76aDfpYLlGm0quFEgG4TVcO4nM27yqrLRlg0ps4sug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WEm5mbDJcVCNHg4WEp6wbnYbahjZufexGnoIL2GMBcI=;
 b=KwyOfUD50KQpAmI6CdXAeW4g/4YrgsYyMJK1jksQ+khR2uCah9w5Vba8N+JTjLMxij63+GjBsvT+085F5DL6nWkRcPc+u82b51cGgjVRV6q24EyqBwycfQ/k/EhhIz7uFU4/CaANfRw/6GqbEnRZ4goTLnsvE++Y9iTd+P7kEpA=
Authentication-Results-Original: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
Received: from DB6PR0801MB1861.eurprd08.prod.outlook.com (2603:10a6:4:73::21)
 by DB6PR0801MB1813.eurprd08.prod.outlook.com (2603:10a6:4:39::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Mon, 15 Jun
 2020 09:17:19 +0000
Received: from DB6PR0801MB1861.eurprd08.prod.outlook.com
 ([fe80::ac31:e5b9:8aa0:4a33]) by DB6PR0801MB1861.eurprd08.prod.outlook.com
 ([fe80::ac31:e5b9:8aa0:4a33%8]) with mapi id 15.20.3088.029; Mon, 15 Jun 2020
 09:17:19 +0000
Date: Mon, 15 Jun 2020 10:16:39 +0100
From: Achin Gupta <achin.gupta@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH 1/3] dt-bindings: Add ARM PSA FF binding for
 non-secure VM partitions
Message-ID: <20200615091639.GD46361@C02TC1ARHF1T>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
 <20200601094512.50509-2-sudeep.holla@arm.com>
 <20200609223551.GA1620273@bogus>
 <20200610074346.GB15939@willie-the-truck>
 <5B3F18A4-5DA4-411E-9E26-7D25DEE3D414@arm.com>
 <20200611171222.GB7725@willie-the-truck>
Content-Disposition: inline
In-Reply-To: <20200611171222.GB7725@willie-the-truck>
X-ClientProxiedBy: LO2P265CA0174.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::18) To DB6PR0801MB1861.eurprd08.prod.outlook.com
 (2603:10a6:4:73::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from C02TC1ARHF1T (217.140.99.251) by
 LO2P265CA0174.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:a::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18 via Frontend Transport; Mon, 15 Jun 2020 09:17:18 +0000
X-Originating-IP: [217.140.99.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 298299d8-2889-4c62-bf2a-08d8110cebef
X-MS-TrafficTypeDiagnostic: DB6PR0801MB1813:|VI1PR08MB2974:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB29744A9E5DDB085CEFDD3CF1FF9C0@VI1PR08MB2974.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;OLM:9508;
X-Forefront-PRVS: 04359FAD81
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: UeK3Mv+gnMEPE6PZoQK4NIiOb0MZzi+LbdERN3BChCn4y28fyOa73ARjuYi8ePHqpYmygTGjEcLo/lnCJdw9+WzTYzHWAlIVzAOeXLcaR9cQHJuNOIScUI5aA459NiYFpKSkmcG6lz1HEoKcKEFkU2FC0a5gsaIvldZPA5zQDJtIut/9cECqlywzqAFKxC58tzZAmd7uHYglMrYGex4mEnz8587WKSawkamxRqUWnMDXVwJKSMVHUF8DoZFC3Q5MYHvn4+MS8ItVLrlcL6VNzyPLpss0Xhf+zNN1QDMWVjOat98Rl3GOS9Q0BK6Ei0u1
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DB6PR0801MB1861.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(136003)(366004)(346002)(396003)(39860400002)(33716001)(54906003)(478600001)(52116002)(9686003)(26005)(1076003)(86362001)(8936002)(2906002)(6666004)(66476007)(66946007)(6496006)(66556008)(44832011)(316002)(33656002)(186003)(8676002)(55016002)(5660300002)(4326008)(6916009)(53546011)(83380400001)(956004)(16526019);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: jN5mu7mfwy7/K0mcKozwLWYUyO+CSiGpbbVoyEr09NaLPb11IirFYnXaA7scC0NImM5XZfMnYmU3n1jcMiDLY8LZjifdD2cK0EUMgO7u3755U/rKzvlY7Qbw9YNDaqHTttq14Sl4xnHRUUqfTlZoGYjw81ngz8Oc3Rseg1exb/Ye4TX7Jqp9s2SVS5KKM2Cp35M6sBr/MjW1vsnQoBaFs1w+WCV8BqM4FfUqUccAO182Kjh5Q7jX77DLPAF5oCPEYQ5VtpvVbCj+XrEK36PjhIaFlWS2y1Sw1TYrKKNU7UYEnAY2RI2iFVPA48rwr6VKroGwcr7VkyeE6aKM+q+fSaEtfIscNPR3pwmZXIuiNmFRV72xoGMQqey+u5HwVAM0nglCjziCY3KeZRm5RrCyfMp88zUUy5Jtzgqe1QEVA7DmepaufwrIGFhA4nGxAjX0m/Tqj9dQNaRPBW4kXxAyfGG10M1Nxcbot5udY9H2g/zdk2vhii0EC0+/FT8yzrcl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1813
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT022.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(136003)(346002)(376002)(39860400002)(46966005)(6496006)(54906003)(86362001)(8936002)(44832011)(8676002)(316002)(9686003)(70206006)(33716001)(336012)(956004)(1076003)(82310400002)(36906005)(2906002)(6666004)(186003)(70586007)(55016002)(16526019)(5660300002)(478600001)(83380400001)(53546011)(81166007)(82740400003)(6862004)(4326008)(47076004)(26005)(356005)(33656002);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 18ed27a0-ec96-4454-d4c3-08d8110ce6e4
X-Forefront-PRVS: 04359FAD81
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ku52Kym2dSl18Bhakf6QbYXbOf+2SDszp8nDYDsbm2KGW16V3Q9r+jUe7O6xSYd+CKwHTg5QwIsNnJJKij/tHei/BvvlAILpSgMPzaXP5RVm1APpoxUkXatHvChs/BodihyjkkeTxenS8Vo4LIlqQHdACPYvSxX7+iP3+oPolH+DJa810ZN0ZIwJjDZCTrfaAQN5f0SxX/0Il/nS3Ym2SERUn2+i4QWhPn6JXvh6wnEzuk22Y2fhBvmVd7WKPmwBanyBUYm2K/azv4B45pOA4rHz0BigloU2sk/WOmTt5Pzpxq1G8fuuW4wlH0+KiY9GVmC9+6oPro4ffhAdIu+WiDg7mJqh9Urc9Alsyqac7005NjQCKId8kwvyg48QE6THTYXuVONbyKSy9uIfbe0y0g==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2020 09:17:26.7453 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 298299d8-2889-4c62-bf2a-08d8110cebef
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2974
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_021732_568099_931CB525 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.2.55 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.55 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Rob Herring <robh@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Holla <Sudeep.Holla@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMTEsIDIwMjAgYXQgMDY6MTI6MjNQTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gVGh1LCBKdW4gMTEsIDIwMjAgYXQgMDM6NDY6MzVQTSArMDAwMCwgQWNoaW4gR3Vw
dGEgd3JvdGU6Cj4gPiA+IE9uIDEwIEp1biAyMDIwLCBhdCAwODo0MywgV2lsbCBEZWFjb24gPHdp
bGxAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgSnVuIDA5LCAyMDIwIGF0IDA0OjM1
OjUxUE0gLTA2MDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+ID4gPj4gT24gTW9uLCBKdW4gMDEsIDIw
MjAgYXQgMTA6NDU6MTBBTSArMDEwMCwgU3VkZWVwIEhvbGxhIHdyb3RlOgo+ID4gPj4+IEFkZCBk
ZXZpY2V0cmVlIGJpbmRpbmdzIGZvciBhIEFybSBQU0EgRkYtQSBjb21wbGlhbnQgbm9uLXNlY3Vy
ZSBwYXJ0aXRpb24KPiA+ID4+PiBhdCB2aXJ0dWFsIGludGVyZmFjZShWTXMpLgo+ID4gPj4+Cj4g
PiA+Pj4gU2lnbmVkLW9mZi1ieTogU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJtLmNvbT4K
PiA+ID4+PiAtLS0KPiA+ID4+PiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vYXJtLHBzYS1m
ZmEudHh0ICAgfCA0NyArKysrKysrKysrKysrKysrKysrCj4gPiA+Pj4gMSBmaWxlIGNoYW5nZWQs
IDQ3IGluc2VydGlvbnMoKykKPiA+ID4+PiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9hcm0scHNhLWZmYS50eHQKPiA+ID4+Cj4gPiA+PiBJ
J20gaG9waW5nIHRoaXMgZ29lcyBhd2F5IGlmIHRoZSBmaXJtd2FyZSBpcyBkaXNjb3ZlcmFibGUs
IGJ1dCBpZiBub3QgRFQKPiA+ID4+IGJpbmRpbmdzIGFyZSBEVCBzY2hlbWEgbm93Lgo+ID4gPgo+
ID4gPiBXZSdsbCBuZWVkIHRoZSBiaW5kaW5nIGZvciB0aGUga3ZtIGhvc3Qgc2lkZSwgYmVjYXVz
ZSB0aGVyZSBhcmUgcGxlbnR5Cj4gPiA+IG9mIHBhcnRpdGlvbiBwcm9wZXJ0aWVzIHRoYXQgYXJl
IG5vdCBkaXNjb3ZlcmFibGUgKGUuZy4gbnVtYmVyIG9mIHZDUFVzKS4KPiA+Cj4gPiBKdXN0IHRy
eWluZyB0byB1bmRlcnN0YW5kIHRoZSByZXEuIGEgYml0IGJldHRlcuKApgo+ID4KPiA+IFRoZSBG
Ri1BIGRyaXZlciBpbiB0aGUgaG9zdCBjYW4gdXNlIEZGQV9QQVJUSVRJT05fSU5GT19HRVQgdG8g
ZGV0ZXJtaW5lCj4gPiB0aGUgY291bnQgb2YgcGFydGl0aW9ucyBhbmQgdGhlaXIgdkNQVXMuCj4g
Pgo+ID4gSXMgdGhpcyBhYm91dCBhIGd1ZXN0IGJlaW5nIGFibGUgdG8gZmluZCBvdXQgaG93IG1h
bnkgdkNQVXMgaXQgaGFzPwo+Cj4gVGhpcyBpcyBhYm91dCBLVk0gZmluZGluZyBvdXQgdGhlIGlu
Zm9ybWF0aW9uIGl0IG5lZWRzIGluIG9yZGVyIHRvIHNwYXduCj4gbm9uLXNlY3VyZSBwYXJ0aXRp
b25zLiBJIGRvbid0IHNlZSBob3cgaXQgY2FuIGRvIHRoYXQgd2l0aAo+IEZGQV9QQVJUSVRJT05f
SU5GT19HRVQgLS0gd2hvIHdvdWxkIHJlc3BvbmQ/CgpSaWdodCEgRkZBX1BBUlRJVElPTl9JTkZP
X0dFVCBpcyBtZWFudCB0byBoZWxwIHRoZSBGRi1BIGRyaXZlciBpbiB0aGUga2VybmVsIHRvCmRl
dGVybWluZSBwYXJ0aXRpb24gcHJvcGVydGllcy4gSXQgYXNzdW1lcyB0aGF0IEVMMiBTVyBoYXMg
YWxyZWFkeSByZWFkIGVhY2gKcGFydGl0aW9uJ3MgbWFuaWZlc3QgYW5kIHdpbGwgcmVwbHkgdG8g
dGhpcyBBQkkuCgpJSVVDLCB3aXRoIHByb3RlY3RlZCBLVk0sIHRoaXMgaW5mb3JtYXRpb24gd2ls
bCBoYXZlIHRvIGJlIGEgcGFydCBvZiB0aGUKbWFuaWZlc3QgdGhhdCB0aGUgS1ZNIGhvc3QgY29u
c3VtZXMuCgpCdXQgdGhlbiwgY2FuIHRoaXMgYmUgbWFkZSBkaXNjb3ZlcmFibGUgKHVzZSBhIFNN
QyBmb3IgZGlzY292ZXJ5KSBhdCBhbGwgYXMgUm9iCmhhZCBvcmlnaW5hbGx5IHN1Z2dlc3RlZC4g
RmlybXdhcmUgKFNlY3VyZSB3b3JsZCkgaGFzIG5vIGNsdWUgYW5kIHRoZSBib290bG9hZGVyCmlz
IGxvbmcgZ29uZS4KClNlcGFyYXRlIHRvcGljLCBwcm90ZWN0ZWQgS1ZNIGRvZXMgbm90IGdldCBk
aWJzIG9uIHRoZSBtYW5pZmVzdCBhbmQgaXQgcmVsaWVzIG9uCnRoZSBLVk0gaG9zdCB0byBzcGVj
aWZ5IHRoZSBhZGRyZXNzIHJhbmdlcyBmb3IgZWFjaCBwYXJ0aXRpb24/IERvZXMgdGhpcyBub3QK
bWVhbiB0aGF0IHRoZSBLVk0gaG9zdCBjYW4gY29udHJvbCB0aGUgcGh5c2ljYWwgYWRkcmVzcyBz
cGFjZSBlYWNoIHBhcnRpdGlvbgpzZWVzLiBUaGlzIHNlZW1zIGNvbnRyYXJ5IHRvIHRoZSBpc29s
YXRpb24gZ3VhcmFudGVlcyB0aGF0IHByb3RlY3RlZCBLVk0gbXVzdApwcm92aWRlPwoKPgo+IEJ1
dCB5b3UncmUgcmlnaHQgdGhhdCBudW1iZXIgb2YgdkNQVXMgd2FzIGEgYmFkIGV4YW1wbGUuIFdl
IGFsc28gbmVlZAo+IGluZm9ybWF0aW9uIHN1Y2ggYXMgdGhlIGVudHJ5IHBvaW50LgoKWWVzLiBG
cm9tIGEgc3BlYyBwZXJzcGVjdGl2ZSB0aGlzIHNob3VsZCBiZSBzcGVjaWZpZWQgaW4gdGhlIHBh
cnRpdGlvbiBtYW5pZmVzdAp1bmxlc3MgdGhlIGJhc2UgYWRkcmVzcyBvZiB0aGUgbG9hZGVkIGlt
YWdlIGNhbiBiZSBhc3N1bW1lZCB0byBiZSB0aGUgZW50cnkKcG9pbnQuCgpjaGVlcnMsCkFjaGlu
Cgo+Cj4gV2lsbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
