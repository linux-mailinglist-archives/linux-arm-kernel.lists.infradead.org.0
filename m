Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7BC1C535A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaMMQLPRvqCDqZo7yxDxsz2KY3FgEpMcoyN9WfF3GxY=; b=cY1czo88BAZ9Jv
	XLPxYwI8VtMXN0YK7eRJsAABSfMRgjvvE2KfmGVWLEn50PUr2ygVPfbYWNzSdcixwCDpVSbWTOLwT
	fTAciHWbnUuZyG4N8M+/K0bcPbhBvXZy1DOcA5MnYtaLPsD2GYsn+xShJUDm3dYe+aNGV293fSf/2
	+ve1hjqRKAkrSLWJUpSCjMnyWBvMWXmH2HOMDh2/W+B1p5pRd83a6aRJ8jOTQNagw0CDMIXvmvkas
	Q+V/up9O3a5P5uztZR2+bCVqQoo1B6526az66tYfzZx+CVXAv8yZfAhTsBEBAIO5Mljj9tUBJElEm
	nc4L3EcrBtNS7UXtc4qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuso-0000pk-0Z; Tue, 05 May 2020 10:33:02 +0000
Received: from mail-eopbgr30076.outbound.protection.outlook.com ([40.107.3.76]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVusf-0000n9-Tc
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FWErISOSiGr/gMY8/gcntypbuCM3iSx6TOVygVZ9ftQ=;
 b=3DUrE0/ztiz78tHf/J2ORoveWkFId644xnq0i42AUIeKthr9Lw4EDxZWbKg2BQCGvnGFtxT0jxAQzJlHPvWljrdGMP2Lxm75UXgFXIFe93MIH+9KTsYuj7subiI7qZB++XnMG2QWm+GrxtUZuL6wnd0I8VqwaprFZzhcIVzYuuU=
Received: from AM6P195CA0016.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:81::29)
 by VE1PR08MB4958.eurprd08.prod.outlook.com (2603:10a6:803:108::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.29; Tue, 5 May
 2020 10:32:48 +0000
Received: from AM5EUR03FT037.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:81:cafe::4c) by AM6P195CA0016.outlook.office365.com
 (2603:10a6:209:81::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20 via Frontend
 Transport; Tue, 5 May 2020 10:32:48 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT037.mail.protection.outlook.com (10.152.17.241) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Tue, 5 May 2020 10:32:47 +0000
Received: ("Tessian outbound 5abcb386707e:v54");
 Tue, 05 May 2020 10:32:47 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: bcddc00738aee723
X-CR-MTA-TID: 64aa7808
Received: from 16548247431d.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 1AB50A38-3CF0-4144-B563-2919B6DF3C8C.1; 
 Tue, 05 May 2020 10:32:42 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 16548247431d.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 05 May 2020 10:32:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IKSVHuYW3kMEiXIQcgxBedHG6ipPLMgQBDAR2ulZ6dsQU2reBlL8wKQyQQt06N7r/Zm0bpLpZxeDf4g+wgbSXXubkJYWDNoDeVs8aMwwcmrYSWYl3ye04XlsBHR2KoV9qWr/iRfnqrLB0PlnmDodBjcoWzHEVzkvsH6mogv6ez4L4AWNBI67dzCn7VswDaxKlMGgNfhvm1kdS1+4HMMRTOm6P1Gks5SbptfWJ2ZPX70SgTEvpvis/b17g3hUAsfqTnQYyD8d8Yq2wr9T4cxJgWev9PiCWkM/E/17Xga/pXbhmYLz6C7uczimVRfTCTb+WXPvZLNOCaY5cGxRzJGCcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FWErISOSiGr/gMY8/gcntypbuCM3iSx6TOVygVZ9ftQ=;
 b=NWkF3Gn4AZysntocid5dvxFsnS3uE4wUOp614QlRTuH2TXBgWsZUNZzQDThC4Cj3gIDajVEetpHO48PVhQ9axYGMpryxwKT5pgjDT9KRj68MIxVJ5LldF8OyZ26ksD1AK03/IVnyciu5Gxf8NUUOxMdNzxh0VxGhcoFEYA87JPdCf+gHm78KE5g59+EQAxikGbGVKIteMSNHm154aDY7N018dbHC12XoEeVTnia5SDtiZNR+qDDlaDOM8+kxfugE8LUGnnl3jYUM5c66kSPW0b+ME6sF7J1irTy0Zs655n/dxpBLGHRcHDFwp9eI2UqnkRsruDJY1yN1KK/FGWV0rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FWErISOSiGr/gMY8/gcntypbuCM3iSx6TOVygVZ9ftQ=;
 b=3DUrE0/ztiz78tHf/J2ORoveWkFId644xnq0i42AUIeKthr9Lw4EDxZWbKg2BQCGvnGFtxT0jxAQzJlHPvWljrdGMP2Lxm75UXgFXIFe93MIH+9KTsYuj7subiI7qZB++XnMG2QWm+GrxtUZuL6wnd0I8VqwaprFZzhcIVzYuuU=
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com (2603:10a6:209:4c::23)
 by AM6PR08MB4866.eurprd08.prod.outlook.com (2603:10a6:20b:c8::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Tue, 5 May
 2020 10:32:41 +0000
Received: from AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862]) by AM6PR08MB3047.eurprd08.prod.outlook.com
 ([fe80::49fd:6ded:4da7:8862%7]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 10:32:41 +0000
Date: Tue, 5 May 2020 11:32:33 +0100
From: Szabolcs Nagy <szabolcs.nagy@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 23/23] arm64: mte: Add Memory Tagging Extension
 documentation
Message-ID: <20200505103232.GE23080@arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-24-catalin.marinas@arm.com>
Content-Disposition: inline
In-Reply-To: <20200421142603.3894-24-catalin.marinas@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: DM3PR12CA0125.namprd12.prod.outlook.com
 (2603:10b6:0:51::21) To AM6PR08MB3047.eurprd08.prod.outlook.com
 (2603:10a6:209:4c::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from arm.com (217.140.106.55) by
 DM3PR12CA0125.namprd12.prod.outlook.com (2603:10b6:0:51::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Tue, 5 May 2020 10:32:38 +0000
X-Originating-IP: [217.140.106.55]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f7fca3c0-e22f-4d24-623b-08d7f0dfa7d2
X-MS-TrafficTypeDiagnostic: AM6PR08MB4866:|AM6PR08MB4866:|VE1PR08MB4958:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR08MB49581B169734B56E33435BC7EDA70@VE1PR08MB4958.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;OLM:7691;
X-Forefront-PRVS: 0394259C80
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: zqgH35D3f7U9OJbdv4+nQchZhjayG8J5NpirUkYbHCQVczk988jQg4jO8VTD3gWuMbhXINCaHGti5qQ+YQ8VGE5Qj2lDJsVnkTyYX9MzL48wWX4y3zPrtSG/qhtR/maq1zKmFAdZvciEIdei8QlmWW2Sd9SOWv6zpGEGCQEhuYoZrlPGPQxe3bheEkUfSJgBoP7qpeq05U8cAMJw3SqZ671JRB93AayQ/iaGdMBAl4HmAioJWE+lyWjvoP1rl2zgo63T9DEPjBpdYrYMuO9BEz/UrpAyvwbFTxNmWdtQneKBJdd8GOc/NSx/DOjcNb+VreeUdHyGUdK39WRe7lsjht+dv7dbZtrdFTNAOYPF2Hmsi4PovYm5b9NrPZTqyHeWc6e4MP1qAkCvxxcM4RdKbHbUIQkTORN+1csg11KBP4JDOF7AxbjeDKPXSuKZjwk1Svctm/l7scOGJrRb4+51NzBAHQBPLunMjo5jxAq/43nSvQByYFTHrXvCYa54V6xzX87FeZAASBj742u6Bx+ENQ==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AM6PR08MB3047.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(376002)(346002)(396003)(39860400002)(366004)(33430700001)(956004)(478600001)(44832011)(86362001)(4326008)(5660300002)(6636002)(2616005)(1076003)(6862004)(33440700001)(2906002)(186003)(55016002)(16526019)(7696005)(52116002)(26005)(66556008)(66946007)(66476007)(8676002)(6666004)(33656002)(316002)(36756003)(8936002)(37006003)(8886007)(54906003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 9r3eWd4f83xCaPGQDenpobsPvVfI0W1t5ZG0HIwRrXhF1ZNv/vDHntz8vhtRxhEBVBOO9UcJdvjNn14wzrSGLT7qyrwQ9iIvhDBM6tdUJZUzdvcRogatAooMymRZ4DfQ/8ACuwGQbhwEvzhI0e61l9ezSpc/723Ov2Ujz5iE3zGn/MmLbYC2qRpoxaXhL9Sm4vhv1fU4PT/XjuhXh33n4kejXGEzPWTEIyyuN7URH0y4XzAxhfzjMjrlKclan9ZhZDmCngGj9MKTDNOkI1n27IRA43A9vNyOOMqze2yLpqKt21+8xUj/2Gea3ZgDmXM7e8tucGTb/ydKCZd5fWUnRnU4ur7Jv9jIuItmXuXmvpJSMU4OHCgTe1smbu69y/Or0vyMm4J1nVRPzRtnFy43AHah7K/2dkrpb9n5qRqOqnoJE/DrwatfttGXkvAPrvGxf6Qnh09Qz8mpBEqh9OIf4aGHrGPRW+oVG3tU+PQMHauCXTds2IsjfnEQIAge+dcvlgV+w5k40MiYhr/q3V+vewdOQmlwyqLrXLEW+n9UKqHOPnagXhnZqdAK2iTfOD8qICtfl/CSNVVo+NmVi7nBMbpgzaKTr7hQDUWFWJaG1d0qfZSfzyDzE3QQJlPo8oFh6Jo5WBB/97KsPKZs+WbUs66htwcJC70GowcJJDQmz4+9dbxuAm+RMEe5GTLjHVp3FzN8p2vVOL8Z5iaQIYcQfMuvH6kwoL3eMB6VPgVeRB6vm8QAktYdWadY3Bsj6rGppo+hZ0OpNHbn3+OtivZaXQAKmzxoo0kv1l1MycFzr+Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4866
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT037.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(39860400002)(136003)(376002)(346002)(46966005)(33430700001)(47076004)(36756003)(8676002)(37006003)(36906005)(5660300002)(8936002)(54906003)(316002)(6666004)(86362001)(1076003)(55016002)(6862004)(7696005)(186003)(16526019)(26005)(356005)(82310400002)(81166007)(478600001)(8886007)(4326008)(6636002)(33656002)(44832011)(2906002)(70206006)(336012)(2616005)(33440700001)(82740400003)(956004)(70586007);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 0d2054ea-e075-4f5a-3853-08d7f0dfa39f
X-Forefront-PRVS: 0394259C80
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6Dz94E3Pr0ivtQUMjm1TebtrvKfRcHAsQbe+A8mhhc3W+3x2p15lmm5uIntDepspgwOwOYE+foN0LqshbPFPnr4Zhos6Ymt/hxa1+HlgROeBi2D1E20BIgk662VPQ2VQBeP1Q+taChLHU8nX3/lWJPDtKc/+B6Wspbkz9Yh7yBf+hl96Dq9rwEvE5+5EVSuGK9u7jADtGtJwovqGCZtii9aVTmrKXUT1Hv7cZ0PkRkJ137O59q0NHgFFeCB72m9fArDw/rw2Mu5rbbR0rv1nZTKDk9ZEWNa9DJ9SK4lc3ghtoUSmOaX51g9mQq5jD8C3/jG8iAkJAGj+JYe52NpGhdUH+TJEWSMLBRBJA5tnrPn5ViIKYQZ5XKIBJVaN2oJIgOyx1SV9M7PQ58ESOiYgtj2Qo813YDCY5gdbK2nkzgG5CTtILspTKzUfMx5f+q6ruYSqVqDLiOmpWJLaH4dAK2r017g/yIelbP6141hEuQnRYI2F+UIADus6ImPfX3Xy8cyoV1gdiG7D2Eo1NPcEOg0ykbD9cazXW1YKkt45D2S4erjYB8VZlr5JF4DiZ9mE6Fk4fC3ZHz5DzWYxUYM2EA==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2020 10:32:47.9520 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f7fca3c0-e22f-4d24-623b-08d7f0dfa7d2
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4958
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_033254_183839_874B34B8 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.76 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.76 listed in wl.mailspike.net]
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
 nd@arm.com, Peter Collingbourne <pcc@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 04/21/2020 15:26, Catalin Marinas wrote:
> diff --git a/Documentation/arm64/memory-tagging-extension.rst b/Documentation/arm64/memory-tagging-extension.rst
> new file mode 100644
> index 000000000000..f82dfbd70061
> --- /dev/null
> +++ b/Documentation/arm64/memory-tagging-extension.rst
> @@ -0,0 +1,260 @@
> +===============================================
> +Memory Tagging Extension (MTE) in AArch64 Linux
> +===============================================
> +
> +Authors: Vincenzo Frascino <vincenzo.frascino@arm.com>
> +         Catalin Marinas <catalin.marinas@arm.com>
> +
> +Date: 2020-02-25
> +
> +This document describes the provision of the Memory Tagging Extension
> +functionality in AArch64 Linux.
> +
> +Introduction
> +============
> +
> +ARMv8.5 based processors introduce the Memory Tagging Extension (MTE)
> +feature. MTE is built on top of the ARMv8.0 virtual address tagging TBI
> +(Top Byte Ignore) feature and allows software to access a 4-bit
> +allocation tag for each 16-byte granule in the physical address space.
> +Such memory range must be mapped with the Normal-Tagged memory
> +attribute. A logical tag is derived from bits 59-56 of the virtual
> +address used for the memory access. A CPU with MTE enabled will compare
> +the logical tag against the allocation tag and potentially raise an
> +exception on mismatch, subject to system registers configuration.
> +
> +Userspace Support
> +=================
> +
> +When ``CONFIG_ARM64_MTE`` is selected and Memory Tagging Extension is
> +supported by the hardware, the kernel advertises the feature to
> +userspace via ``HWCAP2_MTE``.
> +
> +PROT_MTE
> +--------
> +
> +To access the allocation tags, a user process must enable the Tagged
> +memory attribute on an address range using a new ``prot`` flag for
> +``mmap()`` and ``mprotect()``:
> +
> +``PROT_MTE`` - Pages allow access to the MTE allocation tags.
> +
> +The allocation tag is set to 0 when such pages are first mapped in the
> +user address space and preserved on copy-on-write. ``MAP_SHARED`` is
> +supported and the allocation tags can be shared between processes.
> +
> +**Note**: ``PROT_MTE`` is only supported on ``MAP_ANONYMOUS`` and
> +RAM-based file mappings (``tmpfs``, ``memfd``). Passing it to other
> +types of mapping will result in ``-EINVAL`` returned by these system
> +calls.
> +
> +**Note**: The ``PROT_MTE`` flag (and corresponding memory type) cannot
> +be cleared by ``mprotect()``.

i think there are some non-obvious madvise operations that may
be worth documenting too for mte specific semantics.

e.g. MADV_DONTNEED or MADV_FREE can presumably drop tags which
means that existing pointers can no longer write to the memory
which is a change of behaviour compared to the non-mte case.
(affects most malloc implementations that will have to deal
with this when implementing heap coloring) there might be other
similar problems like MADV_WIPEONFORK that wont work as
currently expected when mte is enabled.

if such behaviour changes cause serious problems to existing
software there may be a need to have a way to opt out from
these changes (e.g. MADV_ flag variant that only affects the
memory content but not the tags) or to make that the default
behaviour. (but i can't tell how widely these are used in
ways that can be expected to work with PROT_MTE)


> +Tag Check Faults
> +----------------
> +
> +When ``PROT_MTE`` is enabled on an address range and a mismatch between
> +the logical and allocation tags occurs on access, there are three
> +configurable behaviours:
> +
> +- *Ignore* - This is the default mode. The CPU (and kernel) ignores the
> +  tag check fault.
> +
> +- *Synchronous* - The kernel raises a ``SIGSEGV`` synchronously, with
> +  ``.si_code = SEGV_MTESERR`` and ``.si_addr = <fault-address>``. The
> +  memory access is not performed.
> +
> +- *Asynchronous* - The kernel raises a ``SIGSEGV``, in the current
> +  thread, asynchronously following one or multiple tag check faults,
> +  with ``.si_code = SEGV_MTEAERR`` and ``.si_addr = 0``.
> +
> +**Note**: There are no *match-all* logical tags available for user
> +applications.
> +
> +The user can select the above modes, per thread, using the
> +``prctl(PR_SET_TAGGED_ADDR_CTRL, flags, 0, 0, 0)`` system call where
> +``flags`` contain one of the following values in the ``PR_MTE_TCF_MASK``
> +bit-field:
> +
> +- ``PR_MTE_TCF_NONE``  - *Ignore* tag check faults
> +- ``PR_MTE_TCF_SYNC``  - *Synchronous* tag check fault mode
> +- ``PR_MTE_TCF_ASYNC`` - *Asynchronous* tag check fault mode
> +
> +Tag checking can also be disabled for a user thread by setting the
> +``PSTATE.TCO`` bit with ``MSR TCO, #1``.
> +
> +**Note**: Signal handlers are always invoked with ``PSTATE.TCO = 0``,
> +irrespective of the interrupted context.
> +
> +**Note**: Kernel accesses to user memory (e.g. ``read()`` system call)
> +are only checked if the current thread tag checking mode is
> +PR_MTE_TCF_SYNC.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
