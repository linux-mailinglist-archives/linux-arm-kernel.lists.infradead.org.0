Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF941E61A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 15:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NphA6Gnu4XChyS1kAM5y3zQJNKno9pamqUo1FUI3njk=; b=Qod9gDGwZ8kmNR
	aD4wL2ztEdlkMgIoIAxNtq+ftnIFAI++iKUnFKjoE8GVjtYkvuN584autPXZSWoyT72A0haWZ35Bn
	d/rpQnj04cAhVWMdRuZiGrzp6fKYjGSXtBwbOyPGGqBkRXAe6pRoQ44jP+d/91FBDzTd03S8zB2TI
	jcFxSlb22Po8h5xCnzrWS+i8fqm0glHQMAKGbxoSv/MHufYlraLq9+ke/kiVjUb3wiLbxGhJuYBXH
	LuqvyrcAHOC2vp3dqIPQfpBu7Z17QYDJcR0utn3mdR6fB4eLxtvXqbIHs32RHiCsefTxROk0lmZ8R
	qJIDR4qX69PoVqG5y16A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeIEC-00055F-F2; Thu, 28 May 2020 13:05:44 +0000
Received: from mail-eopbgr70077.outbound.protection.outlook.com ([40.107.7.77]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeIE1-00051m-2w
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 13:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nzOy10LSwpzEObZrYv8zN0nDKkJ/N3TvrAl0SuzWi8A=;
 b=tFoFBUxr1+JpDbaHTpiuBDwSzI+mS6bijoIvjtir8YCUGv8OSsFmddtwmh18ttPiJd53/yOotS6SjbUEL/lr0weyAIyfFSLr86J3T65O1EgTKZPAZlcso35w3evKHMHucTtWMO0WMb8zlNmQaQZp7x5Nk6pYdZ8ypG0Yj3J4qPA=
Received: from DB7PR03CA0087.eurprd03.prod.outlook.com (2603:10a6:10:72::28)
 by VI1PR08MB3629.eurprd08.prod.outlook.com (2603:10a6:803:7f::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Thu, 28 May
 2020 13:05:27 +0000
Received: from DB5EUR03FT047.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:72:cafe::d1) by DB7PR03CA0087.outlook.office365.com
 (2603:10a6:10:72::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19 via Frontend
 Transport; Thu, 28 May 2020 13:05:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT047.mail.protection.outlook.com (10.152.21.232) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Thu, 28 May 2020 13:05:26 +0000
Received: ("Tessian outbound b157666c5529:v57");
 Thu, 28 May 2020 13:05:26 +0000
X-CR-MTA-TID: 64aa7808
Received: from f0ddba7d02b2.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 8AA18E8B-1BBC-4F74-94D1-D87936637E75.1; 
 Thu, 28 May 2020 13:05:21 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f0ddba7d02b2.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 28 May 2020 13:05:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T4YHDkSBKTYRAcqe7zQiXye2g+jxgNlZkzN8hRIDVH+sLaSeLpsAd892yhziZTY4/UGX01WYrqoNMQBwjOKaf1WQ3ZMi67x5gG/hkeZZoaUsX6ynEUUPLfkr5BlE/IIqhAGQk1jF6Z5Aw4nw66MwU/pmCtiYCo22AasT01lL1cA93gXBvi1X7SuWWAUmIxfqEkjqOp8UezVHYXngYAQDkP4+L4IC1KNXrD43QdNeKOJQb2HoAreyMvlUtms5Arp8vbPjZSNRUZFI1X5J3yCuUqMIdgboXhr42GyvoO3jdAW+oOXOWzqonQx6SEtspRc2K2kInIxBeuUNTwE2Ej1Upw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nzOy10LSwpzEObZrYv8zN0nDKkJ/N3TvrAl0SuzWi8A=;
 b=j7/+JQ/pcTVCciip/Jp8E4KhS8hjIxNQ8YrvQGRvfsDTVWqaxBtAgSBbX43lnEWqjCB84/U/FOfqlVWPuFOb4uHpyP1Yq5Dv0SGGDLeR5LQsqURYnwn5Xr5RyJzxVjvpbNYe1Q2PhLBwWrDdpSzG3PmAMmwLMDyjW54R+gpymh0vu+PM8qPfuO6zBi21u3pTR0e8ulFH56PY9wIBu9/zjydMi+sEthT7HwciM88sCqXahzKGLthCf2gyWEFIdWhYBntyDVchoQLWHbn5jPfr1k3eCqKiF9bY5inqNselzbrwC8Lk5VxWGhkeE+MZnzTMiq/scsDE7/gu38vgisSVBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nzOy10LSwpzEObZrYv8zN0nDKkJ/N3TvrAl0SuzWi8A=;
 b=tFoFBUxr1+JpDbaHTpiuBDwSzI+mS6bijoIvjtir8YCUGv8OSsFmddtwmh18ttPiJd53/yOotS6SjbUEL/lr0weyAIyfFSLr86J3T65O1EgTKZPAZlcso35w3evKHMHucTtWMO0WMb8zlNmQaQZp7x5Nk6pYdZ8ypG0Yj3J4qPA=
Received: from AM6PR08MB4311.eurprd08.prod.outlook.com (2603:10a6:20b:b4::12)
 by AM6PR08MB4072.eurprd08.prod.outlook.com (2603:10a6:20b:a8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Thu, 28 May
 2020 13:05:16 +0000
Received: from AM6PR08MB4311.eurprd08.prod.outlook.com
 ([fe80::bdc9:c971:a9e0:647b]) by AM6PR08MB4311.eurprd08.prod.outlook.com
 ([fe80::bdc9:c971:a9e0:647b%2]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 13:05:16 +0000
From: Jose Marinho <Jose.Marinho@arm.com>
To: Arnd Bergmann <arnd@arndb.de>, Sudeep Holla <Sudeep.Holla@arm.com>
Subject: RE: [PATCH 2/2] firmware: smccc: Add ARCH_SOC_ID support
Thread-Topic: [PATCH 2/2] firmware: smccc: Add ARCH_SOC_ID support
Thread-Index: AQHWMFmt9AGTrbTq2UeBYD1povy8MKi0cKaAgAF9e4CAACUkgIAHVVvA
Date: Thu, 28 May 2020 13:05:16 +0000
Message-ID: <AM6PR08MB4311A937BE505BAE0CDF9106888E0@AM6PR08MB4311.eurprd08.prod.outlook.com>
References: <20200522124951.35776-1-sudeep.holla@arm.com>
 <20200522124951.35776-3-sudeep.holla@arm.com>
 <CAK8P3a1t6BrB_Gti138VDRbmaiR_TjwR9d6qMstLBFDWxZ1kjQ@mail.gmail.com>
 <20200522165422.GA18810@bogus>
 <CAK8P3a33_5q1bNRrt+4sQ55QKrN12rOkuzmPH0BDujbug1RTyA@mail.gmail.com>
 <20200523172721.GC18810@bogus>
 <CAK8P3a1+jjgOyJcRQm60RULjwtvWzvYK1QwrjOX_aRAbDGKuJg@mail.gmail.com>
In-Reply-To: <CAK8P3a1+jjgOyJcRQm60RULjwtvWzvYK1QwrjOX_aRAbDGKuJg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 19f4f50a-ca78-4fd4-a169-a7db6f88b5af.1
x-checkrecipientchecked: true
Authentication-Results-Original: arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=none action=none header.from=arm.com;
x-originating-ip: [2a02:c7f:1edb:a800:1c4d:8700:d19e:860d]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2a0a93f2-7f12-4238-3e40-08d80307ca79
x-ms-traffictypediagnostic: AM6PR08MB4072:|VI1PR08MB3629:
x-ld-processed: f34e5979-57d9-4aaa-ad4d-b122a662184d,ExtAddr
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB3629082DC2C1F834EB422612888E0@VI1PR08MB3629.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0417A3FFD2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: tsf0s6CTZ0qAI6tcnURE5ppVyvtXlq5qZ2uTV7ugTECpnPGBPXTLdoBUh4r9vZd7476htZY2GTO620D2Mlc737Su8FnV5RBIpLGPQ4yrU0o1X+RskZ+yV727MCHBBUphXOYzstOt9QLjqGTbooNtC8sHjnkixWw9yyjruFREBr1wtGa6lJwYDgIQcih7IeD1VA3lHJvoJK0j2fVTxjVipsqVvLiWYsh/UT05UymVd1Kj6H+fka1LMTiF+ZKlEcH9EB9mg+D6F7coLwrOGsBPq3hHt7jn1oH0m5eKf9R9DfARhWKReFIFsducYowb2mQfGmQyWrNw5HJno9lqoUfBvA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB4311.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(366004)(396003)(136003)(376002)(346002)(39860400002)(7696005)(66446008)(5660300002)(52536014)(66946007)(76116006)(64756008)(4326008)(8676002)(316002)(110136005)(8936002)(54906003)(66476007)(53546011)(71200400001)(33656002)(6506007)(86362001)(55016002)(9686003)(66556008)(478600001)(6636002)(2906002)(186003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: /I2PhM4SGLIpI0I1rtPAk56kn4v6F+OGAWghRJyX5KXzxnoZj/Ey7pjG4z6/jmj2pFPc2kiMH37dyQfr6o9CbNTZcH8EFLBf3B1UNjR5C8krdA/KTHwhrS2GaiwUA65V50JU6sPTmgIkbmN/A4mtt8FECTw6vvKnD0SSn9enDdW0cdueN7w985d1Fo/LFrrKSNeG50kKHz9/+b0W981pXBSL+4FP7Q0mURJwIkGjzBgbmrxX12Kr9PkTfvDVqjQfedHz2Sw4qWTzAEhLJlly2rYz1LgyozOR2CmnIwD/pXm8lCP+HeuvIfFOqV4DMxdk2FJ6PBDbCnC6F20XM8ilKmewbEVAnLIUn1/Q4T4Ej32ZETEPRKB27BVDuhcpgl0I8cwpUAKf3yNIefRD2Fe3Kd0YB1MiqA0pJ+sW+Pb/1sq0UrqX4gbQkvj1abwGUHy6NTZ9zs22tZKlyrobpF1pJcHWAuoPkpCh377WZBa5pfx741waAIfiq65Z6qTpOLDf5jUjldG1kN5gd/njx66Cb1uEhpmKH6E+7qhircKuj9L0hr7dWzTiN+Rq4/u5Jpi4
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4072
Original-Authentication-Results: arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT047.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(346002)(376002)(136003)(39860400002)(46966005)(81166007)(47076004)(52536014)(8936002)(356005)(82740400003)(2906002)(86362001)(6636002)(478600001)(7696005)(70206006)(53546011)(6506007)(316002)(54906003)(110136005)(70586007)(9686003)(55016002)(5660300002)(33656002)(26005)(4326008)(336012)(8676002)(82310400002)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: e7dd1098-e493-4d1b-dda2-08d80307c458
X-Forefront-PRVS: 0417A3FFD2
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hW2Ir1WqlfCqerVA4vOMXNq91nNdGvKhWJ0IDXdTfZU86edRRFMuBhOE8Cr36q631y+gMx+DHCgTRlr7quvldX5yaqzfpJloB/VnobPz593KgP/UdScrDTzMuxzLlEpC86P4WwXUC72YBHxUG3pdwAWYgi1BrUgUs2fQvm9xMCxIjC6UzzvrxxGn1EuKz3+bMW+s1CRwfe8jliv5h9GF7eRnOXXaJUd5qkUrrTM4Ab6/46G7+N6lf4E9XO66kuHuxrvorB/v+X5C+PNNdjgBPD+RUtixC43dxxGG/6A7sjouDfhllrSKmjsR+VzWFE40aiXWnvRxg5CSAWcKBQqmY8TPcnsIe39sREouAsMLVskZdj4C7NgkjkVoIv1ZiAUlMFp9OVJJ11wF5ZebJgm69w==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2020 13:05:26.9438 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a0a93f2-7f12-4238-3e40-08d80307ca79
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3629
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_060533_185086_C13EE776 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.77 listed in wl.mailspike.net]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Francois Ozog <francois.ozog@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Harb Abdulhamid \(harb@amperecomputing.com\)" <harb@amperecomputing.com>,
 nd <nd@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> On Sat, May 23, 2020 at 7:27 PM Sudeep Holla <sudeep.holla@arm.com>
> wrote:
> > On Fri, May 22, 2020 at 08:41:59PM +0200, Arnd Bergmann wrote:
> > > On Fri, May 22, 2020 at 6:54 PM Sudeep Holla <sudeep.holla@arm.com>
> wrote:
> >
> > > jep106:5678 (the IMP_DEF_SOC_ID field in my example) would probably
> > > be sufficient to not conflict with a another soc_device driver, but
> > > is quite likely to clash with an ID used by another manufacturer.
> > >
> >
> > IIUC, you are fine with "jep106:1234:5678" where 1234 is jep106
> manufacture
> > id code and 5678 is soc_id as it may avoid all the conflicts across
> > the manufacture namespaces.
> 
> I think either jep106:5678 or jep106:1234:5678 (or some variation with
> different field separators if you prefer) would be fine here.
> 
> > > jep106:1234 (the manufacturer ID) in turn seems too broad from
> > > the soc_id field, as that would include every chip made by one
> > > company.
> > >
> >
> > I understand, and IIUC you prefer this to be embedded with soc_id
> > especially to avoid namespace conflicts which makes sense.
> >
> > Thanks for all the discussion and valuable inputs. I am now bit nervous
> > to add SoC info from SMCCC ARCH_SOC_ID to sysfs yet as we need more
> info
> > especially "machine" and "serial_number" for elsewhere(OEM firmware
> mostly
> > from DT or ACPI).
> 
> I probably wouldn't mix those in with the same driver. If machine and
> serial_number have no smccc interface, then they should be left out,
> but there could be a separate soc_device that gets that information
> by other means, usually using one of the existing hardware id register
> drivers.
> 
> > TBH, the mix might be bit of a mess as there are soc drivers that rely
> > on DT completely today. Anyways, this SOC_ID can be added as library that
> > can be used by a *generic* soc driver once we define a standard way to
> > fetch other information("machine" and "serial_number"). I am happy to
> > get suggestions on that front especially from you and Francois as you
> > have got some context already.
> 
> Well, I suppose we could have the entire data from the smccc interface
> in a central place somewhere, such as (to stay with my example)
> "1234:5678:9abcdef0" in an attribute of any soc_device driver that
> adds a call to a library function for the jep106 ID, or possibly in
> /sys/firmware or even a field added to /proc/cpuinfo.

I think this is a great way to expose the SoC ID info. It's important to have the SoC ID as a whole in a sysfs (or somewhere where it's easy to obtain and parse from user-space).
The information provided by SoC ID should be listed in this form jep106:1234:5678, that is jep106:<manufacturer ID>:<SoC ID> .

Regards,

Jose
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
