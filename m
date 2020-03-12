Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD06182A0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 08:57:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+VpN2kGzhO1f7B74v3TXwzX7ngXy+0JjtSpiLoIQec=; b=uLWKi7k32EzVg6
	qqLHP9ov+6AaZqcHjjU49HvGchZA6M6kfzcC79HOc5uLxvQCb9v6/cqpTUpmvoSMVFasGZXEUJxoc
	fgSeo9fvAp5kpzq2UpVS+xppM0SJkdIeiKyJ6rd6fdsrg3jGdbbEA57ixY/a3yoaOJbIGxlAOpHht
	ybmXjs0/LNOgcbWb1eO495PpPE71hRt4zrVLbO9slSCe0rKNdRfi7+fmK7AQwh8nw4QtIb68M4nKJ
	m0QmIDf+DElyiGGs9iPwwy3e62Z62RdRJSUifFTLvIT9lg0xM1V/2QpWyFU9TKPwHY171oFLXgMr7
	WKMI5pVVNRijo9jr9aNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCIi3-0003ws-Nn; Thu, 12 Mar 2020 07:56:51 +0000
Received: from mail-am6eur05on2042.outbound.protection.outlook.com
 ([40.107.22.42] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCIhq-0003ux-Q4
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 07:56:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gMGwHhZ3ktePwuGbgRRh0TH4OovZOR9qirtg7HGG3VlU9FlosMurlJJnS4MIi/Fq6QaB93OLACFJeFxSGFPOGnDuVLOeUFLqfJTMW3ROc3RarvgbbNxwmxntpJtZ4LyHD5b6YgGkvRgI/tyw9V/LQXynTwqfJQ8KmFMNcZPZUSBW8kXtehA2uAk+Q3NWZ88KV62/ugWq+4WsWqlAvI2tQmTrusT51fMb1xFNp+Mj+O4qUoQCnMJNnv31W4YY+SEQ1GqBP8HMw9IACTfvtTo0qbMxxdW5DOedAln9nJpmRYS+/UfhUzpnTnzGsZYy68jQwH4MABrEti1+ZvKpQ2+w0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vWaFaPA568nRE6L1/jGBRG3nOf2JlpUxFEPe/eR/aak=;
 b=TsEO//vLqN7l1h1q73PBKxc03jhc/ey+06zP2EnuqnXPc1wQ1t+wPClCzEJU04Lfni+963TaCB20hBUMszmCIp5wo1fUin7Xt74qdiH+WYdEqrZW2fgTwcuIw5EJ+ELkTc2Z0j0sXTLGH65sDBxHkYLRHkPGqxrILW5KvhpT4NQErPFhpsPiMsr49jFaHM0no1zaJrs4N6BSncjOjv/dCAWUdKEccMZ6Ibo5RgL1THLFtKWH2X5Eb4sxuOBjoCHo2A0B6Frw91FzhIunz7E+6xobvcHle0V04Idu70dwYZ795+SbAUs98AnXTxv5CRVe9+hAsLZGjdFRupDov3Orpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vWaFaPA568nRE6L1/jGBRG3nOf2JlpUxFEPe/eR/aak=;
 b=mAd2WlsGW7fsb5a+1nNgSIPLr6OZpcz0pq9GfI9YuZQsQ6rVyJS9/gyeAa7B2CHB1tNL1mGimwtW+xnQyyo0UhYOjaY1BPbVE0ftKaRwr4f9v+WgNny8HuSyTOFRUyqsAR7xzAsbR0HRjPoUlgHQlfKOaUUGtMdxxq8oZJ//xmE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB3696.eurprd04.prod.outlook.com (52.134.15.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Thu, 12 Mar 2020 07:56:35 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::751e:7e8d:ed4:ef5f]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::751e:7e8d:ed4:ef5f%7]) with mapi id 15.20.2793.013; Thu, 12 Mar 2020
 07:56:35 +0000
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add snvs clock to powerkey
To: Anson Huang <Anson.Huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <1583998450-19292-1-git-send-email-Anson.Huang@nxp.com>
 <1583998450-19292-2-git-send-email-Anson.Huang@nxp.com>
From: =?UTF-8?Q?Horia_Geant=c4=83?= <horia.geanta@nxp.com>
Message-ID: <6d28f6b5-8736-1c99-b3fb-ba253c9873d4@nxp.com>
Date: Thu, 12 Mar 2020 09:56:32 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <1583998450-19292-2-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-ClientProxiedBy: AM4PR05CA0021.eurprd05.prod.outlook.com (2603:10a6:205::34)
 To VI1PR0402MB3485.eurprd04.prod.outlook.com
 (2603:10a6:803:7::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.129] (84.117.251.185) by
 AM4PR05CA0021.eurprd05.prod.outlook.com (2603:10a6:205::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16 via Frontend Transport; Thu, 12 Mar 2020 07:56:34 +0000
X-Originating-IP: [84.117.251.185]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 307f4581-8746-4cf7-91a4-08d7c65ae2e9
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3696:|VI1PR0402MB3696:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB36961C95BD53B5E158991FDF98FD0@VI1PR0402MB3696.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1107;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(136003)(376002)(396003)(199004)(66476007)(66946007)(4326008)(66556008)(36756003)(2616005)(956004)(558084003)(16526019)(186003)(8936002)(26005)(316002)(5660300002)(8676002)(81156014)(31686004)(16576012)(110136005)(53546011)(2906002)(81166006)(478600001)(52116002)(6486002)(86362001)(31696002)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3696;
 H:VI1PR0402MB3485.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H3HNDDT24cugO0dAXo0epA59TsmiPWIZjrfUTQ300SuGbj7U3xPqDLzUo6Roqn5V9Xl/+P53HwhepqD5TMXcYt0lWOm1A2D/ogYrjMlgsJZ6ikvyZOMfvU9DdJCpw2xFhDTuOJ4PiP7OC3RHauo0ybDzwphoEjaBEfPJ11dW1nmA543/H/QSkKkVl8ET+TRvzwR5fPlarxqz4nARybII6a41GLWgQElHPp5uctImOZdZeHO4jKA5scQHbyqxEZJw30Idu8gOdMPg4PhPzfBihq8ROtYW7/SFEGsUSNUOlLndoyQ6zvTA9DivWfgpDn3lVBd8S2Zwg3zBsF+k1e7n+rsbKFhH7jWcKYWztcxQJh12Tb7RLdIqHfr+wkJs21KIsposyrXX14/LNoyDJxukQ609+SOS6Hf+o0PJKOviZbsP+sXYcQXPf2ogJbRTF6gaCYvT6GrwPMdxFkI5Fei++p/qeRDKW2nv3bNEpqLc+230p9dSzSf3MgZ/UYI1r/tzI9YURLQG0cP39WyFgwxKjA==
X-MS-Exchange-AntiSpam-MessageData: FBhdA4USMzIkRgAhguEWHUk2ASjoR5JI2XGdWvOXF2wd0ZDZQfmYCHtv4R7ftIVFtxQI24hRP3MerB67wpsPh1AUT/3sHwr+wPwJI3Xao3zi2+euN/m47+slpcpOYWVs4zQP3FPdeDyN7DuJWdv0kQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 307f4581-8746-4cf7-91a4-08d7c65ae2e9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 07:56:35.6666 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5wCrJE3NebuylffAwLKehMKTLc8uNdA8qwIM5PKnpbN2nST0jT626wve2/a6fsnLhIX/zRynR1+2uwJeL2dOtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3696
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_005638_843096_87EF1909 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8xMi8yMDIwIDk6NDAgQU0sIEFuc29uIEh1YW5nIHdyb3RlOgo+IFNOVlMgcG93ZXJrZXkg
ZHJpdmVyIG5lZWRzIHNudnMgY2xvY2sgZm9yIHByb3BlciBjbG9jayBtYW5hZ2VtZW50LAo+IGFk
ZCBzdXBwb3J0IGZvciBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbnNvbiBIdWFuZyA8QW5zb24u
SHVhbmdAbnhwLmNvbT4KUmV2aWV3ZWQtYnk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBu
eHAuY29tPgoKVGhhbmtzLApIb3JpYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
