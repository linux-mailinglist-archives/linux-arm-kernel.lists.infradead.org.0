Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C12C685E87
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGeb/7VRE3oHU1VQxMx1IuGAbOa/EZJbA375TqbpHHc=; b=mbqgroRIW1gPho
	rganEPtL6eg8Ggz1Z6rsNYs8n90uma8EFj7QjKlRWBxA5TVNTdeIlXfDuB9ZtFCpWAKgKyjTb/6BU
	IG3UAx3k68jtsNiQQ9eMUO4TJI73ZtTGkVbodI2aZ3SzsWya68IxpqWrbMNsPii5FpZ9ZV+lwIiDp
	c6iN7XVULbUs1+XoPPPx/TaiKS1FG8vs1mVxMZjVtl63TZHkIN5f2nLiUCkERUob81QMla+/OY4aC
	eFd0JNmCgIulS6lkEP9o0k+go2khnvFBNI7uVAot+kKmneqzfaot55FA767VVUwJ8geQCMpU/yVjR
	N1rOdC0yD2EatX+Ni+WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hven9-0005FF-KL; Thu, 08 Aug 2019 09:33:03 +0000
Received: from mail-eopbgr70044.outbound.protection.outlook.com ([40.107.7.44]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvemt-0005EZ-4e
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZHYOkepV1GeGGpuIlCr9zOnX82EtrrYCPqngyYpjKfA=;
 b=9UfFfaQ+4SYoyXV7ZvuRbmk9SAgEiKnJiNT9CRBSLyag0jBLP4O1g7qFwCpGR85g10Kgd1oipo5h9TDNCxnHX/ne5/wjY0+QDl4ZG6HyD4/kOGpYH7YLBKqSsrQMI9zSTE2tTjhAY0f4f7jE2QcMcjtHXANMtm8HDtjMbNVemTI=
Received: from AM4PR08CA0053.eurprd08.prod.outlook.com (2603:10a6:205:2::24)
 by AM5PR0802MB2595.eurprd08.prod.outlook.com (2603:10a6:203:a2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.17; Thu, 8 Aug
 2019 09:32:41 +0000
Received: from AM5EUR03FT022.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::205) by AM4PR08CA0053.outlook.office365.com
 (2603:10a6:205:2::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.14 via Frontend
 Transport; Thu, 8 Aug 2019 09:32:41 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT022.mail.protection.outlook.com (10.152.16.79) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Thu, 8 Aug 2019 09:32:39 +0000
Received: ("Tessian outbound 6d016ca6b65d:v26");
 Thu, 08 Aug 2019 09:32:36 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 0a296c13c8d686c1
X-CR-MTA-TID: 64aa7808
Received: from fe0455a3223b.1 (cr-mta-lb-1.cr-mta-net [104.47.9.54])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 37286508-3FF9-42C0-9BA4-07CB454BDCFD.1; 
 Thu, 08 Aug 2019 09:32:30 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2054.outbound.protection.outlook.com [104.47.9.54])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id fe0455a3223b.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Thu, 08 Aug 2019 09:32:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TNYT9+cPojR0fy5n3n2eXgB7wyrqX66VMD4CTtPloAQblioreC6bYWnTvl0s8SvYPioWQz7fKr6uBNAGtiawH4zY6UR6jkbB3sUP+bkymI8ejeK8b0YqD5LeFTxKNZdl5UCm1725rNLpn121EBbjUX3ZzAZzcP6sMdapHxTuT+dUvhSwkfOaD0Rp5qnP+ZsF3TzvHBNn9I8wFJEF/q3+WGlOFjgrYeCA2R7oe5RLZseh/n/a92AmHcdGjVw80wzI04+kH5mcxO5W7OAAo7cxxPUNjrIzOTu8eDjlLjQqbZFoA1/C72aihzHSuFiiyOAG00PalByvksH7jfWARzCM9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZHYOkepV1GeGGpuIlCr9zOnX82EtrrYCPqngyYpjKfA=;
 b=MEECGjx7vRrX01RKz19SkVLegQgZqzUhEiLfK5HcrOLFP+vscDPoUpzVPJF9JIMZa90WGCTsa7f5Lgc2ehU0T40S4QqiM3rQD/tCR91RDLPDUan07jCtM2gEJpFL+pTOISTKQxh8/hqamxfWMdcVGXeEoYPdgLtCMUWuqxg149ZmCzd125b61TpJ3MkP5sDas7guwD87zlnhF852OW83ga+ZftEH4J1FsWxOUen3WgUCPnDf7Qjs424iSpitvhfcBz9/iTjsE71InIkDQHkwiSzsxwvN0t6tHb70wxKGOjB4TT+2O55DuQ/rjxqJbz39wVVgtKVlrvyxfCcFz7bcUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZHYOkepV1GeGGpuIlCr9zOnX82EtrrYCPqngyYpjKfA=;
 b=9UfFfaQ+4SYoyXV7ZvuRbmk9SAgEiKnJiNT9CRBSLyag0jBLP4O1g7qFwCpGR85g10Kgd1oipo5h9TDNCxnHX/ne5/wjY0+QDl4ZG6HyD4/kOGpYH7YLBKqSsrQMI9zSTE2tTjhAY0f4f7jE2QcMcjtHXANMtm8HDtjMbNVemTI=
Received: from AM4PR0802MB2307.eurprd08.prod.outlook.com (10.172.219.8) by
 AM4PR0802MB2161.eurprd08.prod.outlook.com (10.172.216.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Thu, 8 Aug 2019 09:32:28 +0000
Received: from AM4PR0802MB2307.eurprd08.prod.outlook.com
 ([fe80::e854:32de:1cad:f93a]) by AM4PR0802MB2307.eurprd08.prod.outlook.com
 ([fe80::e854:32de:1cad:f93a%9]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 09:32:28 +0000
From: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v7 0/2] arm64 tagged address ABI
Thread-Topic: [PATCH v7 0/2] arm64 tagged address ABI
Thread-Index: AQHVTThJ40O32AFbdkapzf5hdYvQPKbw/fAA
Date: Thu, 8 Aug 2019 09:32:28 +0000
Message-ID: <44bc76f2-e782-b3ac-5ba3-39ef59be6fe9@arm.com>
References: <20190807155321.9648-1-catalin.marinas@arm.com>
In-Reply-To: <20190807155321.9648-1-catalin.marinas@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [217.140.106.55]
x-clientproxiedby: LO2P265CA0076.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8::16) To AM4PR0802MB2307.eurprd08.prod.outlook.com
 (2603:10a6:200:61::8)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 782f96be-5519-42c0-b4a7-08d71be35b30
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM4PR0802MB2161; 
X-MS-TrafficTypeDiagnostic: AM4PR0802MB2161:|AM5PR0802MB2595:
X-MS-Exchange-PUrlCount: 2
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM5PR0802MB2595A98395B3C87AD9F407D0EDD70@AM5PR0802MB2595.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 012349AD1C
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(366004)(39860400002)(51914003)(199004)(189003)(6512007)(52116002)(53936002)(6306002)(86362001)(25786009)(7736002)(99286004)(71190400001)(71200400001)(476003)(36756003)(102836004)(386003)(53546011)(6506007)(44832011)(256004)(486006)(4326008)(6246003)(14444005)(76176011)(2616005)(11346002)(446003)(186003)(5660300002)(26005)(66946007)(66476007)(66556008)(64756008)(66446008)(31696002)(2501003)(6116002)(14454004)(966005)(65806001)(65956001)(66066001)(3846002)(65826007)(478600001)(6486002)(81156014)(81166006)(2906002)(54906003)(110136005)(316002)(58126008)(229853002)(305945005)(64126003)(8676002)(6436002)(31686004)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR0802MB2161;
 H:AM4PR0802MB2307.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: J9dX/k4JAEpDfgQngapDQX+XDLGM7ZFTbwydZBC6Z3zgrQ9ru0UIK3K0O5KbJHygMiaPqr7pf99rX9339bsh8hGV4YJFCZq+Sr9fSRtrTY9BTzDjFs1rYvGRTIWSQM7FpE34XS7HjBOHelFCOXr6iliQvv8uNE+mNadecBuzpZGuyJfha/CNbJub4fOU1lLYNnNyiZTF+1IUDvtPAr9BaopcbcLnEnEcE8jgpzkOxXbqWEyhcVYfXm1vFq1VBd3HmfQb842Cj6f3M2dQu6E19H3smK67QLz0MdKtZhivv49DQqOoSrWubwmtInENCR1FfwvFAg09OwVJT7llb81RomBvF7Uwq4py/NbHOIdsASVpXyCfLuLNMMp1K4max8vZbxd2oyrnqgAl+vPDV1kYQ62TndMtS3DRHfH6VwEdyNU=
Content-ID: <E89EAA9961235F47ADB26CEFBCAEB557@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0802MB2161
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT022.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: =?utf-8?B?Q0lQOjYzLjM1LjM1LjEyMztJUFY6Q0FMO1NDTDotMTtDVFJZOklFO0VGVjpO?=
 =?utf-8?B?TEk7U0ZWOk5TUE07U0ZTOigxMDAwOTAyMCkoNDYzNjAwOSkoMTM2MDAzKSgz?=
 =?utf-8?B?OTg2MDQwMDAwMikoMzc2MDAyKSgzOTYwMDMpKDM0NjAwMikoMjk4MDMwMDAw?=
 =?utf-8?B?MikoMTg5MDAzKSg1MTkxNDAwMykoMTk5MDA0KSgyMjc1NjAwNikoODkzNjAw?=
 =?utf-8?B?MikoODY3NjAwMikoODExNjYwMDYpKDgxMTU2MDE0KSgzMTYwMDIpKDU0OTA2?=
 =?utf-8?B?MDAzKSg5NjYwMDUpKDExMDEzNjAwNSkoMjY4MjYwMDMpKDM2OTA2MDA1KSg0?=
 =?utf-8?B?Nzg2MDAwMDEpKDU4MTI2MDA4KSg2MzA2MDAyKSgzMDU5NDUwMDUpKDI1MDEw?=
 =?utf-8?B?MDMpKDQzMjYwMDgpKDIyOTg1MzAwMikoMzY3NTYwMDMpKDI1Nzg2MDA5KSg0?=
 =?utf-8?B?ODYwMDYpKDc3MzYwMDIpKDEyNjAwMikoMTAyODM2MDA0KSg1MzU0NjAxMSko?=
 =?utf-8?B?NjUwNjAwNykoMzE2OTYwMDIpKDI2MTYwMDUpKDQ3NjAwMykoNDQ2MDAzKSgx?=
 =?utf-8?B?MTM0NjAwMikoNjI0NjAwMykoNjMzNzA0MDAwMDEpKDYzMzUwNDAwMDAxKSg0?=
 =?utf-8?B?MzYwMDMpKDg2MzYyMDAxKSgzODYwMDMpKDY0MTI2MDAzKSg2NTEyMDA3KSgy?=
 =?utf-8?B?MzY3NjAwNCkoMjQ4NjAwMykoNzYxNzYwMTEpKDU2NjAzMDAwMDIpKDE4NjAw?=
 =?utf-8?B?MykoOTkyODYwMDQpKDY1ODI2MDA3KSg2NDg2MDAyKSgyNjAwNSkoMzM2MDEy?=
 =?utf-8?B?KSgxMDc4ODYwMDMpKDc2MTMwNDAwMDAxKSg2NTk1NjAwMSkoMzg0NjAwMiko?=
 =?utf-8?B?NjExNjAwMikoNjYwNjYwMDEpKDY1ODA2MDAxKSgxNDQ0NDAwNSkoNzA1ODYw?=
 =?utf-8?B?MDcpKDMxNjg2MDA0KSgzNTYwMDQpKDI5MDYwMDIpKDcwMjA2MDA2KSg1MDQ2?=
 =?utf-8?B?NjAwMikoNDc3NzYwMDMpKDE0NDU0MDA0KTtESVI6T1VUO1NGUDoxMTAxO1ND?=
 =?utf-8?B?TDoxO1NSVlI6QU01UFIwODAyTUIyNTk1O0g6NjRhYTc4MDgtb3V0Ym91bmQt?=
 =?utf-8?B?MS5tdGEuZ2V0Y2hlY2tyZWNpcGllbnQuY29tO0ZQUjo7U1BGOlRlbXBFcnJv?=
 =?utf-8?B?cjtMQU5HOmVuO1BUUjplYzItNjMtMzUtMzUtMTIzLmV1LXdlc3QtMS5jb21w?=
 =?utf-8?Q?ute.amazonaws.com;MX:1;A:1;?=
X-MS-Office365-Filtering-Correlation-Id-Prvs: 49eee5c6-97b4-48e5-b903-08d71be3541c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM5PR0802MB2595; 
NoDisclaimer: True
X-Forefront-PRVS: 012349AD1C
X-Microsoft-Antispam-Message-Info: H1QkWUFAj9z7NtQPztVQ9anXevogTTl/rAHRIUkc6iSjrVUZ0dioTcXlHztFjeHAinyv4tbSsSf+XC50PMBZaNjaNT6eDfVaZovvARYMwZCxW7xxmtKncBLPmzAQfZUIMwbivGtrB5aCyIzMyNNhXmvKv1KRk32TJJXcQaUxVXfVIM0KIRQTP6ksacEOIq3gUgBSg73ONm1ZP5kkpnmdR1w17EVZqfbcvd2/cHg4jpfyCBdqY+RLoBlhMsX8PK+EGeSadtNnpnacdNaRA1bjsGUJeutsbINr3RvIPfwhhmBI3sJzNDRf2kLy20xN6J6vtMdJpFe+7YXL5aCO24ounPF+iib29WBV+df6IK20l9dzhjAwmFdSZMuCMuL1gFq7j41sbkrkvmxyb/cp+43/4Xgpd0CvZ6yr56xxeOJzOYY=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2019 09:32:39.6698 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 782f96be-5519-42c0-b4a7-08d71be35b30
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0802MB2595
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_023247_201103_CF5F72DB 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Will
 Deacon <Will.Deacon@arm.com>, Dave Hansen <dave.hansen@intel.com>,
 nd <nd@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/08/2019 16:53, Catalin Marinas wrote:
> Hi,
> 
> Thanks for the feedback so far. This is an updated series documenting
> the AArch64 Tagged Address ABI as implemented by these patches:
> 
> http://lkml.kernel.org/r/cover.1563904656.git.andreyknvl@google.com
> 
> Version 6 of the documentation series is available here:
> 
> http://lkml.kernel.org/r/20190725135044.24381-1-vincenzo.frascino@arm.com
> 
> Changes in v7:
> 
> - Dropped the MAP_PRIVATE requirements for tagged pointers for both
>   anonymous and file mappings. One reason is that we can't enforce such
>   restriction anyway. The other reason is that a future series
>   implementing support for the hardware MTE will detect
>   incompatibilities of the new PROT_MTE flag with various mmap()
>   options.

OK.

> - As a consequence of the above, I removed Szabolcs ack as I'm not sure
>   he's ok with the change.
> 
> - Clarified the sysctl and prctl() interaction and reordered the
>   descriptions.
> 
> - Reworded the prctl(PR_SET_MM) restrictions.
> 
> - Removed the description of the tag preservation from the first patch
>   as it didn't really make sense (the syscall ABI has always preserved
>   all registers other than x0 on return to user).

preservation is more interesting when a user pointer
is passed to the kernel and later it is passed back
to user space (e.g. set/get_robust_list, or sigaction
where old handler pointer is returned), then the
kernel may want to drop the tag to do something with
the pointer, but user space may want it to be preserved.

in principle segfault si_addr is a similar case when
memory access via tagged pointer faults: currently
the kernel does not preserve the tag.

so i think it's interesting to know when exactly the
kernel preserves the tags, but it may not be easy to
document in a generic way.

> 
> - s/ARM64/AArch64/ for consistency with the tagged-pointers.rst
>   document.
> 
> - Other minor rewordings.
> 
> Vincenzo Frascino (2):
>   arm64: Define Documentation/arm64/tagged-address-abi.rst
>   arm64: Relax Documentation/arm64/tagged-pointers.rst
> 
>  Documentation/arm64/tagged-address-abi.rst | 151 +++++++++++++++++++++
>  Documentation/arm64/tagged-pointers.rst    |  23 +++-
>  2 files changed, 167 insertions(+), 7 deletions(-)
>  create mode 100644 Documentation/arm64/tagged-address-abi.rst
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
