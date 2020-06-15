Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA431F9DD3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KlSXO7Mvzt1F0zTkiLAUTLz8Rs4NPdqkN2RGUUoj/o=; b=djBDX8d3YJJ8AH
	cCUh3k10d5r5eeHZQwd8fPK42ucxrMP28/aXrG500AbbCWEfC8yJOj26o4/RTgYmY1frTzrQGZ/GD
	SfJ6gCRiPBB6lkd1UGPvGtrKBMFIW727wPa6muin2x0p2lY3pKTW0UMoy2q19aZsasR6OM2lsXVYL
	VmxxQvjkXB0mL31V7KwHtFqQvpZGGwjZ8rUe6H/iyuinJdy7aj1bxJUAbm8rkOc1/B+IHvMcSBxJJ
	qQJ3bSOHKg07qwvjFqxPBSfeu5nVM654CC9L3SZCNXyre/PHLcbNQk6zbPvQHtxf6d7Tb8/iuCRNv
	eX8+4XmGphaokJW5K0dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jksHu-000860-AX; Mon, 15 Jun 2020 16:48:46 +0000
Received: from mail-db8eur05on2084.outbound.protection.outlook.com
 ([40.107.20.84] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksHl-00085M-Ow
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:48:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/XII8QcwjX2ZlQ/t/6zDZoPb+Foy1EiQBkIIF6r14xA=;
 b=icsSOJgWIEWLupJFgnLyKilLNax3OdLpU1p5auD39TlCyw21vAxzriys7ZctqphQWFFIU3pszcyOHN+r7KvleJmVe5CnZdwhbjqQyec4VIsbgLeqLTpRu1wegcEWVfFTOYZJTc+9433ZzRvcSIWrcMtqV65FPmPT9aZKHkfkkjY=
Received: from AM6P192CA0098.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:8d::39)
 by AM6PR08MB5207.eurprd08.prod.outlook.com (2603:10a6:20b:ea::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.23; Mon, 15 Jun
 2020 16:48:30 +0000
Received: from AM5EUR03FT046.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:8d:cafe::68) by AM6P192CA0098.outlook.office365.com
 (2603:10a6:209:8d::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.19 via Frontend
 Transport; Mon, 15 Jun 2020 16:48:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT046.mail.protection.outlook.com (10.152.16.164) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18 via Frontend Transport; Mon, 15 Jun 2020 16:48:30 +0000
Received: ("Tessian outbound 299e58e1e4d2:v59");
 Mon, 15 Jun 2020 16:48:30 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e940e49eeb63e485
X-CR-MTA-TID: 64aa7808
Received: from 62014d520eec.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 A11F0873-122C-4234-A956-4402A4DF4A7A.1; 
 Mon, 15 Jun 2020 16:48:24 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 62014d520eec.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 15 Jun 2020 16:48:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g+M3vjmSh3JGbQdjvwnA8/4XzNlAHQTzM3pfonHc3Cuxa2KdHaHaR7BK6mybuKWWeiOC7hVDd+24Pw2b3w+fXyIy6h189pu00ELdJmOMiEEKFGM0dk7iUKDzy/VP4Nv02Jzohnt1XgU9FiStufH/+fZ0QcMHRbmwiLuyfZJEdNgyAQSyrOY2fhIamapWFb0w27B4r9xm082/C+VyGHUnBmQ39rHWLBRatixs49oeuwQVwtUuBEYc5FYgPYr9R7bey1Jd3nz4De4p4zWi/nL1//63era+QGjB3K5MNDMervKYvxUDAldp66/7g2/c5uMhA0++D0TewAB/hrkYzsrQNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/XII8QcwjX2ZlQ/t/6zDZoPb+Foy1EiQBkIIF6r14xA=;
 b=WHBJM6wnWtygWivSbE4C+iBwD52LS+cvZpilg2gaLDBR655lPXBxBYfp+FO1evnoL5fJ2nm5A1v/B8sjnDUduZPq7Ty84i4kH+qzp7NQNcDksqam1SlOOh/18t+4Fz3Jl7ms83qgp/5L9OiAQsk0PPt3pEdLU6HTT7vVVTCiVcvgZer0I1DHETVm/Ak9TYb0I0Ivw2G6BJgjT/ghM41GnNEJMC1ZKBkkKiRcSJgCpS/ZtjwEmE5KGVHFNOpjeDZV6HuWFqRXyJ0jGz7UFqfXhT/XUbLHfOTBX54FRBRW+onV0aRV8tFrzCZQDmSAssQz+ilK7bmvvTuiaL7V+xCH7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/XII8QcwjX2ZlQ/t/6zDZoPb+Foy1EiQBkIIF6r14xA=;
 b=icsSOJgWIEWLupJFgnLyKilLNax3OdLpU1p5auD39TlCyw21vAxzriys7ZctqphQWFFIU3pszcyOHN+r7KvleJmVe5CnZdwhbjqQyec4VIsbgLeqLTpRu1wegcEWVfFTOYZJTc+9433ZzRvcSIWrcMtqV65FPmPT9aZKHkfkkjY=
Authentication-Results-Original: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
Received: from DB6PR0801MB1861.eurprd08.prod.outlook.com (2603:10a6:4:73::21)
 by DB6PR0801MB2006.eurprd08.prod.outlook.com (2603:10a6:4:79::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.19; Mon, 15 Jun
 2020 16:48:23 +0000
Received: from DB6PR0801MB1861.eurprd08.prod.outlook.com
 ([fe80::ac31:e5b9:8aa0:4a33]) by DB6PR0801MB1861.eurprd08.prod.outlook.com
 ([fe80::ac31:e5b9:8aa0:4a33%8]) with mapi id 15.20.3088.029; Mon, 15 Jun 2020
 16:48:23 +0000
Date: Mon, 15 Jun 2020 17:48:14 +0100
From: Achin Gupta <achin.gupta@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH 1/3] dt-bindings: Add ARM PSA FF binding for
 non-secure VM partitions
Message-ID: <20200615164814.GG46361@C02TC1ARHF1T>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
 <20200601094512.50509-2-sudeep.holla@arm.com>
 <20200609223551.GA1620273@bogus>
 <20200610074346.GB15939@willie-the-truck>
 <5B3F18A4-5DA4-411E-9E26-7D25DEE3D414@arm.com>
 <20200611171222.GB7725@willie-the-truck>
 <20200615091639.GD46361@C02TC1ARHF1T>
 <20200615095133.GA2477@willie-the-truck>
 <20200615114220.GE46361@C02TC1ARHF1T>
 <20200615115549.GB2694@willie-the-truck>
Content-Disposition: inline
In-Reply-To: <20200615115549.GB2694@willie-the-truck>
X-ClientProxiedBy: LO2P265CA0380.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::32) To DB6PR0801MB1861.eurprd08.prod.outlook.com
 (2603:10a6:4:73::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from C02TC1ARHF1T (217.140.99.251) by
 LO2P265CA0380.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:a3::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.19 via Frontend Transport; Mon, 15 Jun 2020 16:48:22 +0000
X-Originating-IP: [217.140.99.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 57212954-390b-4261-acf7-08d8114bef06
X-MS-TrafficTypeDiagnostic: DB6PR0801MB2006:|AM6PR08MB5207:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB5207C4797C714D40211C25B3FF9C0@AM6PR08MB5207.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;OLM:9508;
X-Forefront-PRVS: 04359FAD81
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: MY2/v3GjNX/MjUuOGFJ28Srm6QXkKosJjExPIw5ICSpOh22UDU47JkViNCYwCPX1ztEK5KzoQ49LVc/F5fMYtrlTwSo3nrE8lNfFnIf0Qz+Pt94QwTbnB3HTdtENKmHW+psVDNOuoVNTp+jI0PndpH6a589AMnXX78lBTM2Jr89i8eGy8D+kwne36rHDQA2/8j92XZtYvEfMLlPG/6c4qILO0tF14o37+NxTssXiM3XvXt9dCqXYWEz1CTxzLzgLcEzMO3mHCXr2CY+XxCmLhxTtVAKqQ9AEP9gj/UbtYVfVekfB5kfEW2CP38yeAvd24II9BzS9npq+7UBw928Zbw==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DB6PR0801MB1861.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(39860400002)(136003)(366004)(86362001)(186003)(478600001)(1076003)(16526019)(2906002)(26005)(6496006)(6916009)(52116002)(4326008)(5660300002)(55016002)(33716001)(9686003)(316002)(33656002)(66946007)(66476007)(66556008)(956004)(6666004)(8936002)(83380400001)(54906003)(8676002)(44832011);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: wykljrHBU1kO+A8BgAQYsLNMyl7CpYvylLOXjgB18t3X2860uCLXYg3t+hjYUoR9950GhtIUc17gna3KI5jGMBwB1WW08tVAd1wbyrp00M7Pse4AUN6Us+vNL1V7F2YoG2PtPplCd4rHuTB+6ifKM/NXzL8G9ZFyBNfwS5qUsiGiesKwntWnfpsCYZk0Eb6cun8JVURfO8PnXhpoBL4RaHqbtmZcP90+fyqchKI8cpRmeNbdskc9or+Wb54J/r8tiNBUvzs1bRu73KqCT/v+DlZT141LAGKmT+JJQhUrz1LwOptbeblHAecNr0WMJZQC+XkTpDHydzLYfgfmIQblyNk2w+ib4cGO8Rmewvz/XZuPtBy1PyZUkwCN+rL3gZbbfnjbf+xTrEmLclKCDCtJSKRz/f8zR07cVfhfyFTHWsMZVlSErCFJ+1k7uUwULKbJGUMmdpLOZGKsM7tsgdOn81yGVbwJVtXQ5746GB9SLoqOTFcBbWSUvKds+YkNhwDC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB2006
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT046.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(39860400002)(346002)(396003)(136003)(376002)(46966005)(47076004)(316002)(356005)(82310400002)(82740400003)(81166007)(86362001)(36906005)(54906003)(186003)(16526019)(478600001)(26005)(4326008)(6862004)(8936002)(44832011)(9686003)(8676002)(2906002)(70586007)(1076003)(5660300002)(55016002)(83380400001)(33716001)(336012)(33656002)(956004)(6666004)(6496006)(70206006);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 9762414e-9c30-4f16-9efc-08d8114bea85
X-Forefront-PRVS: 04359FAD81
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hFKMmPLPUnJ3kki7TQJQIrVMbgbM9UUl90dqH7BnbMd7HFNoSKulXsq1aI5HxhYvMKeaC8yRMcYi1ZSVmXvMADt+HpHUmEr/+j2Dduoy2RBiXzo7UhmqkwHUS4lBwbOhwMk9SxehhAtVnCYCZ9S4c/CaoMEBU53yU5mAH9rc2J6xvab71U1RpibmkaUFu5GZaQsR7BpH3pkE5jSUkqUbkUQ1AjTVG/wCedIovZKMMu+VLDBYz3xNG7ITwydl2VHXs+PIcJlUtlFw8aHSNSvDe3o4LISmICW/cSMq7dvaG0YLPCQ8JZhDLLS9GLHEqAJ5M3dGExHhPw+OzrtePuzYldj/JvGl7aC7FCQj15zEzWTB/FQuS3gbmxEDwwMSx3kPKjuwbpw2d2IhXzrYYu1zJQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2020 16:48:30.2717 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 57212954-390b-4261-acf7-08d8114bef06
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB5207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_094837_892465_40854BCB 
X-CRM114-Status: GOOD (  23.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.84 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 12:55:49PM +0100, Will Deacon wrote:
> On Mon, Jun 15, 2020 at 12:42:20PM +0100, Achin Gupta wrote:
> > On Mon, Jun 15, 2020 at 10:51:34AM +0100, Will Deacon wrote:
> > > On Mon, Jun 15, 2020 at 10:16:39AM +0100, Achin Gupta wrote:
> > > > Right! FFA_PARTITION_INFO_GET is meant to help the FF-A driver in the kernel to
> > > > determine partition properties. It assumes that EL2 SW has already read each
> > > > partition's manifest and will reply to this ABI.
> > > >
> > > > IIUC, with protected KVM, this information will have to be a part of the
> > > > manifest that the KVM host consumes.
> > >
> > > The host does not consume the manifest directly -- instead, the bootloader
> > > will use the manifest to populate these DT nodes. Again, these are *only*
> > > for non-secure virtual partitions which are to be managed by KVM.
> >
> > Yes. Understand and agree. Manifest is an overloaded term. I was using it to
> > describe the DT nodes that the host will consume.
>
> Hmm, I think that conflates two things though because only the partitions
> managed by KVM will have DT nodes.

Sure. I am realising the need to maintain the distinction :o)

>
> > > > Separate topic, protected KVM does not get dibs on the manifest and it relies on
> > > > the KVM host to specify the address ranges for each partition? Does this not
> > > > mean that the KVM host can control the physical address space each partition
> > > > sees. This seems contrary to the isolation guarantees that protected KVM must
> > > > provide?
> > >
> > > The host is trusted during early boot, and gives up this trust after
> > > initialising EL2 fully. So roughly speaking, we:
> > >
> > > 	* Boot at EL2 and install a shim
> > > 	* Drop down to EL2 and start the host kernel
> > > 	* Before some initialisation (DT parsing, SMP bringup, etc)
> > > 	* Init KVM by calling back up to EL2 to install the full hypervisor
> > >
> > > At that point, the EL1 host is no longer trusted and the last call
> > > effectively "locks it out" from EL2.
> >
> > Ok. Protected KVM (PKVM) must create S2 tables when asked to setup a partition
> > by the Host. My main concern is if PKVM must trust the Host to provide the
> > correct physical address space ranges for a partition?
>
> Yes, but that all happens as part of KVM initialisation: the host parses
> the DT nodes and memory reservations, and then passes this information
> up to EL2.

Ok. Good to know this.

>
> > I guess your point is this is not a problem since PKVM can lock the Host out of
> > those address ranges in any case?
>
> It has to do this, regardless of how they are probed. Once KVM has
> initialised, the host will have a stage-2 which limits it to the memory that
> it is allowed to access.

Agree.

>
> > It is a bit counter intuitive that the Host gets to see and potentially
> > manipulate information that was verified and extracted by the bootloader from
> > the partition's manifest. This hapens before PKVM sees the same
> > information. Can't put my finger on what could go wrong though. Depends upon the
> > threat model too!
>
> I think you're trying too hard to separate the host from the EL2 code during
> early boot. Don't forget -- this is all part of the same binary payload that
> is loaded and initially run at EL2. Having the host take care of early boot
> /significantly/ reduces the amount of code at EL2, which has a very
> clear security benefit.

Fair point!

cheers,
Achin

>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
