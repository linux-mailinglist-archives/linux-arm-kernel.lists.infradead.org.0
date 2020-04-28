Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E83D61BB656
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 08:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rci+8Ek/FarlZ6Y7OIxzWJW22+JUUH2YtteZg+iVFiM=; b=uD5mALPkrkOcfb
	bzrD32qKypFmjFEjk1JIeSBHq6qwEdJdsT5nBu1nWp7ehD47iguSrTOWEuL92wB0Soc2KeLKki8xS
	8/amFG9PLpX7Nlqmvn8kdbsbmGCt5kdqf0EpG3+VUqxorgbhNUymk4EiB+IhspodWz5mXp457OxPw
	6l8rCllCuIRtyprPnWlmiiCLIa1kp08TgYNPCSk+ky9HVAbNaNiF5U1JrbmfGU7OsVAP9uLa1vtRm
	O4YWFKhMwe62MCtaGkcTr3NRY5Eh4y9h8zAu4TMGkL365XBnTW2lHcwju7UbjoIsGx5+ZiTfZ2syU
	YnF0fl5Iu73ga+UZWiRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTJWb-00019x-Ey; Tue, 28 Apr 2020 06:15:21 +0000
Received: from mail-eopbgr40042.outbound.protection.outlook.com ([40.107.4.42]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTJWM-0007wP-Ka
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 06:15:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zPr3Vr6TWZPdPtYl0j8ft01290WNWZw8bWF3tmEpssk=;
 b=d+/5Z0xP50CUQhVyU6d+OvAVGmDR8gyXn9sz8o/7EM3qNHalkg8o4OC6FC4buTqXeV3nqS10XtWbP89jwN+bD2xEjAEr2DfqNL8uo7gyYfzng5NKYAV5ipG28QYZ6RTPbfgwSi9nz3nO8xIM4haE1ymynOHUMol4JI1aGIZGvGw=
Received: from DB6PR07CA0102.eurprd07.prod.outlook.com (2603:10a6:6:2c::16) by
 DB8PR08MB3977.eurprd08.prod.outlook.com (2603:10a6:10:ad::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.22; Tue, 28 Apr 2020 06:15:01 +0000
Received: from DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:6:2c:cafe::41) by DB6PR07CA0102.outlook.office365.com
 (2603:10a6:6:2c::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.7 via Frontend
 Transport; Tue, 28 Apr 2020 06:15:01 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT033.mail.protection.outlook.com (10.152.20.76) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.19 via Frontend Transport; Tue, 28 Apr 2020 06:15:00 +0000
Received: ("Tessian outbound fb9de21a7e90:v54");
 Tue, 28 Apr 2020 06:15:00 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: f629d18fc52ee4c7
X-CR-MTA-TID: 64aa7808
Received: from 0290c1ce7e80.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 1E74BF0C-578F-4E27-83C3-AE9C8BF93A20.1; 
 Tue, 28 Apr 2020 06:14:55 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 0290c1ce7e80.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 28 Apr 2020 06:14:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N+wjXmdEL69azDzg4CpxBCs2yb7LetkkslG/jB0xi6ZkH02U0GU8cy/IXfVjH385BcOk7sS0sgeO82J8K23XfYbSBTeO3Km4mWAnuIlcKoQa8W2fyKzDnlTTdtiaup0CHiGYYQ5ge4QwCA9lKnLCryQgPnjA3sQH6VcwBqRHg/bFMG4MecoZhbGLdmYDBfDOvie0vd4XVu1j2AiCMAo0Qt9gdlffdg1h4Y0oT7h3VhwqCCA1g9QDZE5kkOKGDpHjYZBlKgp5HMYwdYABDmD8xVUxAVPn+R9n+f1GttvwaHizArDAvDO2UfJO+4riiGYb2b/oSOFAQu3xt4FI0HrPxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zPr3Vr6TWZPdPtYl0j8ft01290WNWZw8bWF3tmEpssk=;
 b=oSlWzLcMKRHaTeQ2Edx9dlSZ1AdCSwIJRjs5KxX18eWH/G9X7YsUJdRQOfjjntt6FGTkFAgU9H1un5pKxUb28TGJLFFjz+PebxT/XZLaCSbZjbTBaqtAPB3GVfcPwhvp6oTGy50P27uiNkDqH89CX9vC4q05gIkXW/UiKiYie7CtUWnTI4yQtEWeZCdL5CIQH8QTtJbG6jOpCE0LhAEYMgtkrt1qsNWnLnIQxGZT3IH9lANRVLe6lgX9NnhmTwuqlu5cL40PuM02+k0TSro3jJH4MNLKNRHpk/ZUKV1bNVOLIdvXG17om4HL2u9WXOxzjBHwtATqE0l3EgaW016+Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zPr3Vr6TWZPdPtYl0j8ft01290WNWZw8bWF3tmEpssk=;
 b=d+/5Z0xP50CUQhVyU6d+OvAVGmDR8gyXn9sz8o/7EM3qNHalkg8o4OC6FC4buTqXeV3nqS10XtWbP89jwN+bD2xEjAEr2DfqNL8uo7gyYfzng5NKYAV5ipG28QYZ6RTPbfgwSi9nz3nO8xIM4haE1ymynOHUMol4JI1aGIZGvGw=
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com (2603:10a6:3:e0::7)
 by HE1PR0802MB2409.eurprd08.prod.outlook.com (2603:10a6:3:dc::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Tue, 28 Apr
 2020 06:14:52 +0000
Received: from HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be]) by HE1PR0802MB2555.eurprd08.prod.outlook.com
 ([fe80::b1eb:9515:4851:8be%6]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 06:14:52 +0000
From: Jianyong Wu <Jianyong.Wu@arm.com>
To: Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [RFC PATCH v11 5/9] psci: Add hypercall service for ptp_kvm.
Thread-Topic: [RFC PATCH v11 5/9] psci: Add hypercall service for ptp_kvm.
Thread-Index: AQHWF4xRpK0ubTCCx0eiqM1JOH1VE6iDV3gAgAQ/ngCAAIMxgIAF/0YA
Date: Tue, 28 Apr 2020 06:14:52 +0000
Message-ID: <b53b0a47-1fe6-ad92-05f4-80d50980c587@arm.com>
References: <20200421032304.26300-1-jianyong.wu@arm.com>
 <20200421032304.26300-6-jianyong.wu@arm.com>
 <20200421095736.GB16306@C02TD0UTHF1T.local>
 <ab629714-c08c-2155-dd13-ad25e7f60b39@arm.com>
 <20200424103953.GD1167@C02TD0UTHF1T.local>
In-Reply-To: <20200424103953.GD1167@C02TD0UTHF1T.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e4694ebf-c393-4ae1-fde1-08d7eb3b7bd1
x-ms-traffictypediagnostic: HE1PR0802MB2409:|HE1PR0802MB2409:|DB8PR08MB3977:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB397756FAE39BF8409064C741F4AC0@DB8PR08MB3977.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 0387D64A71
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR0802MB2555.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(346002)(396003)(39860400002)(366004)(136003)(376002)(66556008)(66946007)(66446008)(91956017)(76116006)(66476007)(64756008)(37006003)(2616005)(54906003)(2906002)(316002)(7416002)(5660300002)(71200400001)(36756003)(6862004)(6636002)(31686004)(31696002)(6486002)(26005)(8676002)(966005)(186003)(8936002)(81156014)(478600001)(86362001)(6512007)(4326008)(6506007)(53546011)(55236004)(21314003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: k0YuxqipcGgklTBhUmRLYgbAR9JQQtES+5mTXORWXOox85LnwOVfxpgo2acKI3T3dxKxvBfv1vJgYyKGClyPuMjizVYSTJBywEFfOZzYXa3nX8H8HiuD4zaZApKiKDIY/kaGfP2RjkBtjY6YwqMxmKrOZAcXmSgkSFsm8HC99K+nzVX7TGPl39v+SuV4px2lqUF9eMsQGuXrNGs3bqrTsgOaCDdUsSjmIkS7euy82WQ/au9sGtZGhZqllwt4Fd4FXvDr7GGkfHpGtsOXWMDoKfpUvzzGeUVdWSQEatHTKyTDs1Gejvy1C6fK9D2P5ZPHQFeXxzWFFSa9nx9XEuRnjknkr5yGRzbo0u3WGcl+FrVDbjrXU5LXAtIVopahYvdnufJC8HuEwPW1u/rsVfCiDvUEjPe06xzRaorUkJM3csyIhrQhHzk/6ybxX7tn8ly+yaTfFmDJVjbKcPypFWJEQMAzee2+AeSknaxq0S0VHv5OonwpBFeVRTo1GT+f8lUqJL5FBAGT0nhKO6kb2M1UYyqw5Y2PEGLGlbV3FdDbXyvBl4tzojZ26fi+jo3PLnYQ
x-ms-exchange-antispam-messagedata: iMUI5KkIEXOFBX7wprG2+LOR3xr8PEteplyfSvkzw9VX9yHGQFmapxMu41v2OW5iEBdJHIs+6J79WKdzkiBjzj+grRSpF65M2yf16hVQ9vjv+Mti3QGMjmxHXSgtSSc3R4FjfB+BrHxwMWDmseJpROhD2tuh1D1vLn4Vq9Vnfth26LT3kH3QSrcDMFFdZ2xK0mgSY8u2wIJ5aAy6P+96nj/lNfQ3dwsihHb0J6sdBxeB8ApAmlouhgLPhwDk1UsymI56f8ZIOKXjF1Vh3rg/EOmIXcGiba3ZXvP1fC/6+Zk8DboPvXfJrbSl5CCL4qfHm879wxJXktpNk/PrdNS0jBAmjca69KYhR9G7q2xZxrgoAVRgUq0Yccqx86bOcd7xyONTO2lFAFsHTxw+pb+BCiI1I5GvwPHNs4RdAzXSJEvwTQPziaMcxma9isMXXP9Wh9XrI0ZClajrvpvABXOhg9nq1jg9oCk7PcIHzHsSzIvK/8LlrgsXOPap95TwYMwJV0GzSWyz/bjjqeKE8lXQMr1qVWWAGzXFlM9PexNp1TrNUlfJmxzArIn6kO8/vKXCNGYK7GlnlhL7A75Q0yjpDkLkqW/gyyiV9v2vYQFOVUTSdcxfgHc/xao13Geh/ngYsbmudZCf0n+TdjnKJZExsLn2cFFrEBmX8e7IQHQuD68TE6dQFy7c88PO0hnXZP/gINZ1l9jSYt0rmh/tFpRC3WO1QxNklDsOGow1ocOiFxe62fYwVAzOskz7eT4ZaDlK26xItn6bBuqLlYPbHSLll20HyvhrbI+y5jM19sEvo5k=
Content-ID: <457310EB5B4E5C4C8A3486656E7C6391@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2409
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(136003)(39860400002)(376002)(346002)(396003)(46966005)(478600001)(186003)(86362001)(70206006)(70586007)(2906002)(31696002)(336012)(6512007)(36756003)(37006003)(6636002)(4326008)(6486002)(54906003)(316002)(966005)(31686004)(6862004)(8676002)(53546011)(82310400002)(8936002)(81156014)(82740400003)(81166007)(356005)(26005)(47076004)(6506007)(2616005)(5660300002)(21314003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: b4aceafe-ef1e-4932-5afd-08d7eb3b76c4
X-Forefront-PRVS: 0387D64A71
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 42pOa+mnApFamSn9VhpASdwvTrgiDJmseBJsXqoNJcPyVXF4IVEhi86xkDXSeOeZlTzpPs3aVRJ3BqpExB4lRTktn4Wx0DbYNH7uKlOZhb72bdsPqkqxvIDUV9NwOW7GFwYXKznXXIxtUCmNbQuvg2HBhU87jRFmmjsU461ncus0DNq1C5uyxR+k5CaS+NUcn+uCKHE/HGhQzVAAxkpeKrcXac81u7UvrJeQntQ3clJsGrHM0Z+7VxMsrSo8XhjCqnYImDgYKgsdveXesptrZE+PmvIa0KiZZldRVoTYzIvty3xO1Y4QTS+tlJQJU/oLc3eygo2ddh8z+UbfkZhtUJNLc3kOv0mtGBc7Igu36MgOAlEN8/a5L6r4pm4ccoj4MERAf0zUqShqoqR5QWklrgL2IysxCb9w3HGZ8jRbUd5x6W+MRaMSKrwYj/nELyChtYGBgNkQ0X+vlP8yC1267aVfGHGWRCZuoYvpT45QaYS8LjR5mkaqsAlIoEvugg/KVSBTxo0yS3Kf9zNGeL0GZkqu+3L2RBxM1KxGz1tliij746ld2u0/BsKko3pqcD6JlCC+iFp2y1Z1smT6i6UYujbUFE5ISfJhfr8Z4oMqdO8=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 06:15:00.9101 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e4694ebf-c393-4ae1-fde1-08d7eb3b7bd1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB3977
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_231506_909395_573DBA46 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "maz@kernel.org" <maz@kernel.org>, Justin He <Justin.He@arm.com>,
 Haibo Xu <Haibo.Xu@arm.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 Steven Price <Steven.Price@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/4/24 6:39 PM, Mark Rutland wrote:

it's a resend of the last email, please ignore if you have received this.

Hi Mark,

thank you for remainder, I hope this email is in the correct format.

> On Fri, Apr 24, 2020 at 03:50:22AM +0100, Jianyong Wu wrote:
>> On 2020/4/21 5:57 PM, Mark Rutland wrote:
>>> On Tue, Apr 21, 2020 at 11:23:00AM +0800, Jianyong Wu wrote:
>>>> diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
>>>> index 550dfa3e53cd..a5309c28d4dc 100644
>>>> --- a/virt/kvm/arm/hypercalls.c
>>>> +++ b/virt/kvm/arm/hypercalls.c
>>>> @@ -62,6 +66,44 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>>>>    if (gpa != GPA_INVALID)
>>>>    val = gpa;
>>>>    break;
>>>> +/*
>>>> + * This serves virtual kvm_ptp.
>>>> + * Four values will be passed back.
>>>> + * reg0 stores high 32-bit host ktime;
>>>> + * reg1 stores low 32-bit host ktime;
>>>> + * reg2 stores high 32-bit difference of host cycles and cntvoff;
>>>> + * reg3 stores low 32-bit difference of host cycles and cntvoff.
>>>> + */
>>>> +case ARM_SMCCC_HYP_KVM_PTP_FUNC_ID:
>>> Shouldn't the host opt-in to providing this to the guest, as with other
>>> features?
>> er, do you mean that "ARM_SMCCC_HV_PV_TIME_XXX" as "opt-in"? if so, I
>> think this
>>
>> kvm_ptp doesn't need a buddy. the driver in guest will call this service
>> in a definite way.
> I mean that when creating the VM, userspace should be able to choose
> whether the PTP service is provided to the guest. The host shouldn't
> always provide it as there may be cases where doing so is undesireable.
>
I think I have implemented in patch 9/9 that userspace can get the info 
that if the host offers the kvm_ptp service. But for now, the host 
kernel will always offer the kvm_ptp capability in the current 
implementation. I think x86 follow the same behavior (see [1]). so I 
have not considered when and how to disable this kvm_ptp service in 
host. Do you think we should offer this opt-in?

[1] kvm_pv_clock_pairing() in 
https://github.com/torvalds/linux/blob/master/arch/x86/kvm/x86.c

>>>> +/*
>>>> + * system time and counter value must captured in the same
>>>> + * time to keep consistency and precision.
>>>> + */
>>>> +ktime_get_snapshot(&systime_snapshot);
>>>> +if (systime_snapshot.cs_id != CSID_ARM_ARCH_COUNTER)
>>>> +break;
>>>> +arg[0] = upper_32_bits(systime_snapshot.real);
>>>> +arg[1] = lower_32_bits(systime_snapshot.real);
>>> Why exactly does the guest need the host's real time? Neither the cover
>>> letter nor this commit message have explained that, and for those of us
>>> unfamliar with PTP it would be very helpful to know that to understand
>>> what's going on.
>> oh, sorry, I should have added more background knowledge here.
>>
>> just give some hints here:
>>
>> the kvm_ptp targets to sync guest time with host. some services in user
>> space
>>
>> like chrony can do time sync by inputing time(in kvm_ptp also clock
>> counter sometimes) from
>>
>> remote clocksource(often network clocksource). This kvm_ptp driver can
>> offer a interface for
>>
>> those user space service in guest to get the host time to do time sync
>> in guest.
> I think it would be very helpful for the commit message and/or cover
> letter to have a high-level desctiption of what PTP is meant to do, and
> an outline of the algorithmm (clearly splitting the host and guest
> bits).

ok, I will add high-level principle of kvm_ptp in commit message.

> It's also not clear to me what notion of host time is being exposed to
> the guest (and consequently how this would interact with time changes on
> the host, time namespaces, etc). Having some description of that would
> be very helpful.

sorry to have not made it clear.

Time will not change in host and only time in guest will change to sync 
with host. host time is the target that time in guest want to adjust to. 
guest need to get the host time then compute the different of the time 
in guest and host, so the guest can adjust the time base on the difference.

I will add the base principle of time sync service in guest using 
kvm_ptp in commit message.


Thanks

Jianyong

> Thanks,
> Mark.


-->
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
