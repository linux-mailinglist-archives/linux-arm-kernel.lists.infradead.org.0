Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FA31C5465
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiVM4ojTL5mfNHIzaQjR8j48Tm8X25HvBpi8hDsRxJ0=; b=TYTQjFwRLSPMmw
	uv1ansVI6S1qGBnOHXyHj1hxsxS2ENFBLPf1Jnt8Gp+V90BN4GdCUdvuN9K2zmreYdVD8PSvfWsyD
	DjyOqBht9fGMt4kK6RuWpZHkCtAcLPfTklcybAWlJ2GAU/oVQuzfI/Si7H9aX77D8GKQnpFXeMfSk
	A5Omvjtx/JlbVU4Xm0fTSFa6OL+6DUWC+32RCibtRZXmpMle6fZHXa95yTGyROsOdtwbMVo6hf6yh
	wNjfE6bczvgjoWI1TzVHnMCJu11eiJBa7sneoHzPKAu1UVJ+U8StQSeg0Vv7UxcD/RlICsEKzPtXn
	KU9KFaMSu16b9XLc1fwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvol-0002l6-0L; Tue, 05 May 2020 11:32:55 +0000
Received: from mail-eopbgr50085.outbound.protection.outlook.com ([40.107.5.85]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvoe-0002jr-BI
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:32:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KviMX5bmFBkiBH8s7z3eXwrWLD5DZh8BOJgTmFw2Blvtv+O2+ZDtIyAz0onQQCxrWkKo0g3+OIWAo0zQ8s5WwyRGaL23K25U5CEL/sLC8itGmBosx/idvHKDIvyUxVG80JIDXrm41SMmFp28d5hHm0w1jacQ35X4jxRQZowO9P0M2DyEyk8XqQ8o7Z389vH81dgjGBj60/3HBVSBXpcDyTpqsVEhphBa5MSGQaVnXkE36lMbTh31PI+Rvl25BMLVjzCuJ7GB1LYjo15Mz3K6AMR1lCh7tt1BJW2QTgFWXjj2QNu1MUtlM1zc4eYnT8xu49+V5X98oZOuMBhQLAKqMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bH+p4EeLybo1TW2G/iwQloEp+gNAd8uCYBwKq96wfB4=;
 b=elhQufH1jEXOpwzP01rpEXaI7+T3H1dvZSnrIhOPrZSmfoR3dqDprja1lx/OVM426kzx/9AaD5FhQTvxh65ptiIeWWDAB6hrp8uLRknt/7Ygx9cllTrTPKurrDHubaQzS459Qwr5uRBSSzFA2T6M+qRNFMwz4TES6h5a0NCZo6hOld8Q4grjqn9Y67fMucl1z8n+vUFgyCgyGHN/Bn/hz7jMpJN97D2Y9Rr/UsLJLovKg08KZSbTbNsrBpVJ+UZA/uIWIX19w/8DAVsOgn+bA84mFjUP1yoL//zetC3A9kjzMRTtMCZlLmr4FzFIDoeSe2DxzkyIfH/jFmrrrEJqxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bH+p4EeLybo1TW2G/iwQloEp+gNAd8uCYBwKq96wfB4=;
 b=CFwr0VrFGgBcSfHlbQaJgf/YRd871XAvLdBHH9HVw2Qy5KpYQUesERbkFJ3TwiHkPRD2VXX6ss21kocRx9mYKLIDSPFJ9WjXz3oHJGjqScwgSRaR0ndvhHq2//0+k+/jfAUkyAp/WJ8NVB2SN7Ai3qezE4TZAS6aP1YiOXu9m20=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3897.eurprd04.prod.outlook.com (2603:10a6:8:12::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.29; Tue, 5 May
 2020 11:32:42 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 11:32:42 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>
Subject: RE: [PATCH V4 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Thread-Topic: [PATCH V4 1/5] dt-bindings: clock: Convert i.MX6Q clock to
 json-schema
Thread-Index: AQHWHorNsczHs2v1kkSu1x5jB6P3faiZCGeAgABbxrA=
Date: Tue, 5 May 2020 11:32:42 +0000
Message-ID: <DB3PR0402MB39164125CABC889C5DEE5D8AF5A70@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1588207921-20604-1-git-send-email-Anson.Huang@nxp.com>
 <158865854354.11125.10611865219975766594@swboyd.mtv.corp.google.com>
In-Reply-To: <158865854354.11125.10611865219975766594@swboyd.mtv.corp.google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: af35e3ed-88dc-4553-7b73-08d7f0e80664
x-ms-traffictypediagnostic: DB3PR0402MB3897:|DB3PR0402MB3897:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3897F5551EF3C23B5CE81174F5A70@DB3PR0402MB3897.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0394259C80
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k6XvereRedC7NJ4naamQEjcRa9eABLsPWsUiHqb5EZsBY6lZepVmnSuKa8C5kg+javP9ibJoXP3JKmPzdjJ+RzoEAJG9BlHAgQ5zASHnoPlNPGyF0fffhTZKg/dqZV3X8fk9GEZzVpTzHJl/2vnVcTSj5a59DkIExIjjFZ5kwOgvFQtomnDr7a2ZOUkNcSdV/yAFXBcg9I7jHWlqkpnMkEU0HQjRqtbtZnC6Z1Dzpx3RTVK/uIyOQVunFId1Torb7OxSQq+rNKoM1vmOo9Nsz9/+JcpY9ISKN46TqW0E3dPp6/GFv9sQjI05nk3dZXN+GHuwlBnOiFLGyGyQcUX4RLw4fXP0N+FK6mrd+jKiRgcO8HTTiczvzFMv3iaBBCURw7uAK7gGvY/90fDpSU5RM3v0N/U14CownfZLIwttpJWtM7hUBZAUS7pp8/RF/PQK0ihJrnVy5FvHWVoi/nrZ5GjHH5+nXHQSpR0PELFHyvengYw5SCziDRcUuifmCK8v8hWLyy0vm7hXBBu1GpmngGTioLDbvc3mlU8mdJstpd8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(136003)(346002)(366004)(39860400002)(33430700001)(478600001)(4326008)(6506007)(66556008)(186003)(55016002)(86362001)(26005)(71200400001)(9686003)(7416002)(33656002)(110136005)(66446008)(64756008)(66476007)(7696005)(66946007)(2906002)(76116006)(8676002)(5660300002)(52536014)(8936002)(316002)(33440700001)(4744005)(44832011)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: uA8DCwt7Gc/UPoEPy+n6JH4YNYojKMbUupp7gF4a9Pl+9raj3DfSsbDQAm9RhabU/3Dvh2fIu2QD5UPLkS3kbiQ9gAmQhhOrW3kJ/66Hx4DcZrpP7pHq08VistZc3us7b6LfcLO5OKHGu/VoUYd7Ag0pg54ymCr8ySM+bCQYRCI2srVyqlbTJSKkwCn3/mHcu7pqfmMw1gVk8ijHWQju1lMw2GmBakKDgmwKNj77LVTu3R5DugCejTTJAywAkSCRRt3SwbwDZgRmf8duJsul+KBZxucVbS8nOj8J7L7jixFfDEa/+Y+6XI+fDnoecJG65MfO5F/h8Lb0St7t1XdrgBF4npJvl7DI7OmBlu5t4n4VJq78pBp/E8Yump3qatyq4JJckbu5z6WUPybDYnxXThuS9b+l3rbNa4yE7LSv+PLk7uKtam1N6NVE9ZOF3ZDvg1cE8VcctSa4UZChXH9BDGE22EplqSQTdFbcNYDz3wu4SrsTRUsh46PAlaZMIq5lkqHzJOmADPJ0F5LyFAbDU3BJpG4+TXh19QTAWUV/eN2sojdZbyzvIbNroYIYR+NmKVeklq2jfezzvDMGsvhWfVCd90if3+tOB6xbol5DoT2hyafqCSTYZu5QNGMGXiIbxoLiH3f5E9vdS3gC9yQJejIDBCbFcjWAyH97EOzONpyeW/hiyH7BbKr2wj+MwEEVd3mExMpD+nuTwS16kW9bv7jzKLeUHfZlo5vAjhJrrld91BW1RoPcQRHmb/TB4xfUJxbbno8uj3+t2ThW9feoD0pDUK/k4GrZFtEfNa/7Mc8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af35e3ed-88dc-4553-7b73-08d7f0e80664
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2020 11:32:42.5992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7kYBciS7V/cv5hif0FxyuWylVR7/g/dXJdsgKgdTYuUI/16bA9i5HY5/w74VTrHFOxeQSclLl2CTbt7DCAsndQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3897
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_043248_485162_51171CB9 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.85 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stephen


> Subject: Re: [PATCH V4 1/5] dt-bindings: clock: Convert i.MX6Q clock to
> json-schema
> 
> Quoting Anson Huang (2020-04-29 17:51:57)
> > Convert the i.MX6Q clock binding to DT schema format using json-schema.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> 
> Please send a cover letter next time. Who is going to apply these patches? I
> hope Rob? If you need an acked-by feel free to have mine!

OK, will have a cover letter next time for patch series.

Hi, Rob
	Are you going to apply this patch series? If no, can you advise who can apply it, thanks.

> 
> Acked-by: Stephen Boyd <sboyd@kernel.org>

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
