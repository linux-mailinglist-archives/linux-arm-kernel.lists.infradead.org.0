Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C851E1D4D58
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eNRc8Vf8oTu1IOpFbjR1TbHEALiq1N63nZZr3m0/CYU=; b=LNUj8iF5uCmvRS
	oaVHRSf28hJmjzwNJo9Zh7WCB2DLec6G7OIK9Re6cTV+Wz+yEYgdstngQEBz2jZwa4ql6GU+XswK3
	XAUabWMVYpT400CPGYrnrpFsMs4SArJsDjtgQ7zmEAwpv5DOL1m+lI2xFMEaU9viWUk0/IN9XET09
	fCekNvYqDl1Oe/+YEfRuisgZFusRki0VFGiVbgwTvVn/kkkYa382Fjn4dBpkXwt1WiEx0VIAyEMup
	drS4dRYD6NTWXNsDnuiN3IZW0PVh130lwHM0/8rxOcfHEI3ldvbxKWXJp3b/Lo9LYIaG8FGScumqs
	5V6Ok+/sgBdmn7sDaXSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZ5H-0000AG-HU; Fri, 15 May 2020 12:04:59 +0000
Received: from mail-db8eur05on2081.outbound.protection.outlook.com
 ([40.107.20.81] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZ54-00009f-UI
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:04:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GakRaHszA36F8KkKA6IskoBKEmPyt3LszhQFogIOAEI=;
 b=g9zhiQ7g/myKWlzoNZ2x9g7G/9kLYq3eEm16gYFq5Uz6iPMpZ2ho4B1nmuzigzz+3mBKH2euIxtZ3spM+WL+XrpRaSq+vxRbu/eVPNpXNmrfKnyRay/LmuZhXDNNcZb9ooFU2ucdsACdmnb418Gb9mdJMdAWJHhC3S52W7Hm7RE=
Received: from AM5PR1001CA0024.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:206:2::37)
 by AM6PR08MB5110.eurprd08.prod.outlook.com (2603:10a6:20b:d5::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Fri, 15 May
 2020 12:04:43 +0000
Received: from AM5EUR03FT045.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:206:2:cafe::a) by AM5PR1001CA0024.outlook.office365.com
 (2603:10a6:206:2::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24 via Frontend
 Transport; Fri, 15 May 2020 12:04:43 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT045.mail.protection.outlook.com (10.152.17.105) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.19 via Frontend Transport; Fri, 15 May 2020 12:04:42 +0000
Received: ("Tessian outbound 5abcb386707e:v54");
 Fri, 15 May 2020 12:04:42 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 01a8068636f8397a
X-CR-MTA-TID: 64aa7808
Received: from 4dd3ab939d8e.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 82E89776-DB01-45B0-BF6E-F35C22E89D05.1; 
 Fri, 15 May 2020 12:04:36 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4dd3ab939d8e.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 15 May 2020 12:04:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HXz3aI+VVh4bWEMlyNSdbmqxsydfnRGyto38muC6le9kKCjPAGIJzx0ky/aLrEWex1p0uFqpyl4ugJijysucMW+DGSIjS7k74dX6UICEGvrxt62SBbOCViCk19CjqWPFWwJH3LLGGMOYe3+KMFXccP4nAanHesZNUvDrWIcdWYkfyyqINe3B1fNgmQjv0+r2KoBGuu4lPyVUmP2A4djkARPX0ey8obcIpCaBcOoWA+Lau8GpWxZM5RSnoNVibPAfnwwM6A+JVhUQ5cV8lrXx4UxdUECH6jGwTrm63QM8jhdNhc0xEJRR5qqVPzc+FWPfMI5/+Sj2Eh0z0yQnRx1qWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GakRaHszA36F8KkKA6IskoBKEmPyt3LszhQFogIOAEI=;
 b=FiL/d97wbM8bueds9Gm+z4wKwgVxdTdSNiBjl5nL9DNiy1JBj0tiClWkI2zyYP2EL8WwFvFAohDOaBSd0T1nfzvg3D3/Evvt1ge2rSoU18uVCpWk7i5lCN7//eRtrVnashuIguPuJ+6tEIWiCgCBJH+19coZ9Kg5hF5+n2tS0HblGS+xsAwZpBGLFHgnK3E0FMp1+sju05fwgxQF6llfxxacswqS3GqeXSOk5eHG/iyopcZnUSTQI6qF783T97R27o21Kc0oZnCFZKA66CipbZPiPnGhaayiCbaAE2fKf6MB8Q4ikwkFV1mDIMAOsOcit93pwhZxkA9RtMS5DDXQFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GakRaHszA36F8KkKA6IskoBKEmPyt3LszhQFogIOAEI=;
 b=g9zhiQ7g/myKWlzoNZ2x9g7G/9kLYq3eEm16gYFq5Uz6iPMpZ2ho4B1nmuzigzz+3mBKH2euIxtZ3spM+WL+XrpRaSq+vxRbu/eVPNpXNmrfKnyRay/LmuZhXDNNcZb9ooFU2ucdsACdmnb418Gb9mdJMdAWJHhC3S52W7Hm7RE=
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com (2603:10a6:209:4c::23)
 by AM6PR08MB3911.eurprd08.prod.outlook.com (2603:10a6:20b:80::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Fri, 15 May
 2020 12:04:35 +0000
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862]) by AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862%7]) with mapi id 15.20.2979.033; Fri, 15 May 2020
 12:04:35 +0000
Date: Fri, 15 May 2020 13:04:33 +0100
From: Szabolcs Nagy <szabolcs.nagy@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 23/23] arm64: mte: Add Memory Tagging Extension
 documentation
Message-ID: <20200515120433.GE27289@arm.com>
References: <20200421142603.3894-24-catalin.marinas@arm.com>
 <20200429164705.GF30377@arm.com> <20200430162316.GJ2717@gaia>
 <20200504164617.GK30377@arm.com> <20200511164018.GC19176@gaia>
 <20200513154845.GT21779@arm.com> <20200514113722.GA1907@gaia>
 <20200515103839.GA22393@gaia> <20200515111359.GC27289@arm.com>
 <20200515112740.GB22393@gaia>
Content-Disposition: inline
In-Reply-To: <20200515112740.GB22393@gaia>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: LO2P265CA0344.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:d::20) To AM6PR08MB3047.eurprd08.prod.outlook.com
 (2603:10a6:209:4c::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from arm.com (217.140.106.55) by
 LO2P265CA0344.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:d::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.20 via Frontend Transport; Fri, 15 May 2020 12:04:35 +0000
X-Originating-IP: [217.140.106.55]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a3c9dce2-2fd4-4148-10f6-08d7f8c826fa
X-MS-TrafficTypeDiagnostic: AM6PR08MB3911:|AM6PR08MB5110:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB511047D5AECDE6D472FC9EECEDBD0@AM6PR08MB5110.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-Forefront-PRVS: 04041A2886
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: PMUjniqh90HxO54jLCRigwTgV+h1hNwEKNsy7nQgxlNzCjrGn+WuCw4FYnqZCNcqe7pCyZDWLObvxasMUCsVXONt2770pUDcymE2s7cjAQyjyZewYpF6sUff3D/3iYFXtihcw+YEJRHNmykOYqnmK8tuaqwLnlSEgxW2zMM8DAxZj60Yg/32EgdPLk3UbPY8rxgOB0MRDg1a6va6QrAIaftDqDOY59Z8pPTwh3wxp7B3AqLl17Ch83fTi/9eMQIGqWuj1PNak8ILG5fBcCveDBOVpl43vulVoo+/9NIzMvNfohcUhblARTCYRMlAp9BTzKi3++08Hec0Lc8ndI7l4Sjz9BFkleTfEbDUim4gPobdFkMmX+cETspezhlF0tXO++d85UcZfzNFuzubnbvS+S2NcNNydatxatoQXG3Tb5/juZgm2LK2V4vCNTjKFp+W
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB3047.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(366004)(39860400002)(346002)(136003)(396003)(376002)(54906003)(26005)(186003)(16526019)(8886007)(52116002)(2616005)(956004)(6636002)(7696005)(55016002)(4744005)(8936002)(37006003)(66556008)(44832011)(478600001)(6862004)(66476007)(2906002)(86362001)(8676002)(33656002)(4326008)(36756003)(1076003)(316002)(5660300002)(66946007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: vHNoMi8bt57OWASlmfOPYxo6146R5a74b1Lkr1/V/xRIr8RvR6q9ZWEAucehpvSO5JImee8moEIbKpe0wGR3+zdDEOvK7eRgIWb8rIZ3mBfOH4Kj8r/s15iyLkjd/efCId2PDgJU70EfoWe6mrPkBkSPNcqXwXi7D/3n4wW49ymGZ9ns3BVFrK3eijTtdqPYaYEMcG0zNRTC6y+4eD/wrMtsDksHt7ENKxBmg2Sod3U2FIeOZO2C9Rbxb0ePcMI/2IMpsQ7l97/vOYopJ1RbUJ6tSKQrBFT5SBAxuevqjzx9GFPljNgvpA0TzcJJSh5UZJw1GpxqxPmyPeHuOfNNoCp+gBnlSSg8v902kF9XDCpq9v5JF99TPxrne8khGkr1YDadKOdTNzi/OLNLTOg7dsN8BSWMmc7nsM/gbX32D3iUmGZKfTrNugl3yBAypdxSzF1bynrS1FRJYBc1ck8QfnAvx67dXA8sj1vmgCANYTndu/BsPwLTENpymFLL/xwz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3911
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT045.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(396003)(39860400002)(346002)(376002)(46966005)(4744005)(55016002)(82740400003)(956004)(36906005)(8936002)(478600001)(2906002)(37006003)(54906003)(5660300002)(47076004)(36756003)(6862004)(82310400002)(16526019)(1076003)(86362001)(316002)(2616005)(33656002)(356005)(8676002)(44832011)(186003)(70586007)(26005)(4326008)(336012)(8886007)(70206006)(7696005)(6636002)(81166007);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 5bdbc560-2235-4c74-a59a-08d7f8c822a7
X-Forefront-PRVS: 04041A2886
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1jAUBz5GYhDDnVVFjLRhZrx1BBKoRIdS9THwbmlfwkWJe6aIFKjvLnOvQ83i5p7wdfpShuwMlkfbuBV+2q43E0P7eRykGal8EKTABGVaE8XmWko1BlefMcDln256/ivL/ZXlGzU8jW5HrHAKC1z4tOVhBmUQxvf148T+byogg/Mh1ZutFBhQzcKo768apM145AwJjuPBTA+CNLicIbGNuYXPCZ+98Nv/Xv2SlFihHwzZqQF3YMv3DcK2459qnW6AjiGRDZnBo7K92QiwGwoBTlWWUOpmYjI8OGwk6uA1sOt1z71W69ZBOz4RaDNBGsdg5KXeYF4VT7DWyrGbmGe6LWskqhH5FE+yC4D5NhPZbG656+PvgvpojEFzZQ61X5B/HBVFdQAQVo5uwC24QXor7UrnL+eBBuew8fH42JU5Rhn3sMt5q+uHUA2kprQ0X8xQnZ+gWYEDQoHt2nHjacVPk0YOI6XolfNiRp5VdJyKUV8D+oVDhArKo61kar9Q1XKXnVmpwE3jUDfAFdkuKOxAzw==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2020 12:04:42.6505 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a3c9dce2-2fd4-4148-10f6-08d7f8c826fa
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB5110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_050446_982333_A53939B4 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.81 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 nd@arm.com, Will Deacon <will@kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 05/15/2020 12:27, Catalin Marinas wrote:
> Thanks Szabolcs. While we are at this, no-one so far asked for the
> GCR_EL1.RRND to be exposed to user (and this implies RGSR_EL1.SEED).
> Since RRND=1 guarantees a distribution "no worse" than that of RRND=0, I
> thought there isn't much point in exposing this configuration to the
> user. The only advantage of RRND=0 I see is that the kernel can change

it seems RRND=1 is the impl specific algorithm.

> the seed randomly but, with only 4 bits per tag, it really doesn't
> matter much.
> 
> Anyway, mentioning it here in case anyone is surprised later about the
> lack of RRND configurability.

i'm not familiar with how irg works.

is the seed per process state that's set
up at process startup in some way?
or shared (and thus effectively irg is
non-deterministic in userspace)?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
