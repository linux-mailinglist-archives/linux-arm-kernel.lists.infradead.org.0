Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2E3182A0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 08:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+VpN2kGzhO1f7B74v3TXwzX7ngXy+0JjtSpiLoIQec=; b=ZiiQgNtQCwrW7c
	/VEsbFH4Y8IGmvYSEecm2KtUhO5wObruXdNBzwKSSKz/VsfE5YRbiP6WpFAQY1VFal00IYjJLf2WZ
	qlfVQY0ovS3hDp5rumSutwRWqPVLm2jekLi7Ce5cIjoda5c5bQko0WPZbBpw70uq5n0VBh6F7zb/l
	DCDj0lLfztWJN9QsTOy1nwxdKdwkvcQ1KkRTIZB+4+zS43X2HkC3BDFUl00ZFL/miIc1yHfpPwCSm
	8AH60GWYOuW6atEBRF2q+SYtutv6hPB6q9HcJkPthodQH1f4o58DwbAj7DkmZ6I5sYfPjtW8KWdEU
	jiGBPikYprqzUZS4jnSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCIhh-0003i8-JU; Thu, 12 Mar 2020 07:56:29 +0000
Received: from mail-am6eur05on2070.outbound.protection.outlook.com
 ([40.107.22.70] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCIhY-0003h8-CV
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 07:56:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f5iVJNXfxPcTMxni8HbRnI7O1oS/BNeiXNtutus1YrgdyMD2X0BgXEW0/Lz2/YZ9tzE1JM8E0f+G2dh95tvN45XudTjzsisZ3mcMC/dZOCcHlp1FNkjOyO3Tz5bO74Q3eGh5LUCRzj7k4CU95dBtsNsvOL1Dv3tbNqOnkZRUo+WXkSrNgfcRGYkYojLpd896HqKRhjnABLMwOpOvyVsJ14quTjyW+benW9p5Lv6/uXwH2p0OSajoCDP4xaeNkH73rWUM0SeXwiWNLUPfYfQXaok37Mth2/zKfEpYBPvgq3/LI44o/KpMKEGBVo+40GiYRDP9S6SMx7gjzSdbX3XtAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vWaFaPA568nRE6L1/jGBRG3nOf2JlpUxFEPe/eR/aak=;
 b=mfj/aXd+XX9W6HkN1vAw3GlS2OstcGqwNuia+iWSJ0fe6IJUeq3j+TBDJ5WHLtZ3FRN8oNYJpQtMsC39nFgHu6gfCyLDpjT44ckHQply0/Gyec2+XNy2iJuZvMsT6QnjZiR1I/SJEnpTvCgL6iY00aEcd0F2AsjP2PnTOF0bfAS1cNX6PEVQBp28JCPB3cjV3bQq0ZUIqI9fygDEKWLjA8k2D9lZ/GUPu30zroAmcyirERKThtMMQgLD9bETHp3aVe6RO51UgdARc082InVvDSdRVE3p7im7OiUahfjnYbBoiJcEFx+S7/PZ2TZKb5ZYeLWv6J47a+gUaw558VlPPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vWaFaPA568nRE6L1/jGBRG3nOf2JlpUxFEPe/eR/aak=;
 b=Vk8jOg3a1DGBblPK2dC9vrMtGHGmClgUmwuALwotYyFnoFVm3S/vdEPzQ1ZrStNm3n6nsI0VuUQbc4DrUlfYHFG0IhBgo0JI5VCSEQzUKJoQ21DeQnYf0aBG9rf3AdvGbimpq2YaLpAGXUZe8xv3RCscCzDBKRz5RydoStQrb4M=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB3696.eurprd04.prod.outlook.com (52.134.15.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Thu, 12 Mar 2020 07:56:14 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::751e:7e8d:ed4:ef5f]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::751e:7e8d:ed4:ef5f%7]) with mapi id 15.20.2793.013; Thu, 12 Mar 2020
 07:56:14 +0000
Subject: Re: [PATCH 1/2] arm64: dts: imx8mn: Add snvs clock to powerkey
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
From: =?UTF-8?Q?Horia_Geant=c4=83?= <horia.geanta@nxp.com>
Message-ID: <cccdc2f9-c92b-999d-f945-ee172cd89fb8@nxp.com>
Date: Thu, 12 Mar 2020 09:56:11 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <1583998450-19292-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-ClientProxiedBy: AM4PR05CA0036.eurprd05.prod.outlook.com (2603:10a6:205::49)
 To VI1PR0402MB3485.eurprd04.prod.outlook.com
 (2603:10a6:803:7::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.129] (84.117.251.185) by
 AM4PR05CA0036.eurprd05.prod.outlook.com (2603:10a6:205::49) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16 via Frontend Transport; Thu, 12 Mar 2020 07:56:13 +0000
X-Originating-IP: [84.117.251.185]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 21dcf506-d060-415d-d709-08d7c65ad67c
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3696:|VI1PR0402MB3696:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB3696A0232BBFA0D3A90CC0A998FD0@VI1PR0402MB3696.eurprd04.prod.outlook.com>
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
X-Microsoft-Antispam-Message-Info: cGTcTbVJMakhUlo8RQb/xuV0csKo/L6jTQiltnU4Hb/gVvI7uwtvnwQntENJ59GBZEMfH6d7G7nFRU+s7yi9NnDMx8iIEQjB2s72SIswPcNVRgnw16JRsWck/QS4srrV1ujBFNw/LMBD1B9yhmb28isQaY0TRq0qAqT6oSG22Mn+TarkFZL53nfBxjfCOrfqeHVSwleWv4tR/XYc8rY9L6mGacErPf5L4uc5DX2q0OAC3XLbSpU6F1sw3Gw+4kE0ZU41ors/BAWsKSMoEMlhZY9CkPFPCb2/7o5JnSRdiz1gwwndQUs6LIGeOSdp9UeDNlviOS8Qzz2PtZmRQ8SojVUnejr4950+6M2ZKvrXGlKx2V24ByUWDBJVH6vi9Yc4qhd3ba4Ul8KBfwB8wPkZo1cAOncnf0/EkjDf5xqhIUDpg4vvXSX/GAepnC9bwkWzYjFtd+gUiiMzP0gSi6INoUfxYIfZS5x2RAphteCj2kzcWwJqTxlYpPAepMe7ZTU8IKojF3HYP/kRIr3+Togaeg==
X-MS-Exchange-AntiSpam-MessageData: pCirVUyeMSaxBdhi6O4iTdtZBpLxBWH1dL/MULUDpZozQ2NasSPCWCbswBV1bPKpZMTQw8tgDV0MnPBjtZPrish/UAbSMDX6aATg1VGcXP6rAJX1m9kHDeGSFe1AJdVvhQNVLB/W8wM1Cka8XTAWyg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21dcf506-d060-415d-d709-08d7c65ad67c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 07:56:14.6395 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xP9gjec7+UwE1dLpAYQw+OngeXwggxOCdhDkPaepCcSsyChuz7V7p+amcP3cqPK9M7R/Ld5MpQWQrM977XNl2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3696
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_005620_517263_70DA0AEB 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.70 listed in list.dnswl.org]
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
