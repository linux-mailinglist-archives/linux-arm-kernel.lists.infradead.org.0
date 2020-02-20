Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030301658E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 09:01:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IwWz01eb1IRpC1fDweVpy652xCmqIMDFmb0Y9/amDPQ=; b=IwaqUIlCXE55U+SKoeH48W+9Z
	4bRQikPXErWhl3sZP8YCyv8RMQDqy3bpQzPNGcHfjOAxPSG0+2/wo54XzUXQ4pPbRaxqjEOsf3pH1
	OUj2QAEJK+WXd7Xt0KRkRk3TJhrd9uAUSXUX6mGt7P+8RvIfh5TauNc/8AyW6kHzknKkXLC9IIdgn
	fgfjzrklVdCTjb64oXKGDZeLPWq7okwdVsa+ckpmjQBV3305LSlX3sdbcvFzVaMwOMHQzAgzuQrWd
	bXfpwdtT5Mv3tyABkIOacDVsbF4aGwJaJIswYvqlkP5zB1elYIpRzbHfuJndmwLCprCxK2KJjQVtj
	AS1QLn7zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4glu-0001eA-Lj; Thu, 20 Feb 2020 08:01:22 +0000
Received: from mail-vi1eur05on2061.outbound.protection.outlook.com
 ([40.107.21.61] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4gll-0001d8-Tw
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 08:01:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oPRENELmRkR+6I2a17hK6bof9j4uHnE2cA0fosT2zC0=;
 b=A87wtMVvtshm85yOgaIVJIyIw1eZrWBSs7GCEXl1MJwMxPTGjiTXAW7SbQbhzSSbgm44r4+Zldc5xv7qe4syws8zICa+wNMsG/0hDWgx4++RVK7vp/bi6GpmBCnYhL2dHDiQMNCxYcrCXOOQQYVbnKWYzHOOiYOkXu7aSYAijp8=
Received: from AM7PR04CA0023.eurprd04.prod.outlook.com (2603:10a6:20b:110::33)
 by VI1PR0402MB2941.eurprd04.prod.outlook.com (2603:10a6:800:b8::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.25; Thu, 20 Feb
 2020 08:01:10 +0000
Received: from HE1EUR01FT064.eop-EUR01.prod.protection.outlook.com
 (2a01:111:f400:7e1f::205) by AM7PR04CA0023.outlook.office365.com
 (2603:10a6:20b:110::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.25 via Frontend
 Transport; Thu, 20 Feb 2020 08:01:10 +0000
Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; vger.kernel.org; dkim=fail (signature did
 not verify) header.d=topicbv.onmicrosoft.com;vger.kernel.org; dmarc=none
 action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com; 
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 HE1EUR01FT064.mail.protection.outlook.com (10.152.1.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.19 via Frontend Transport; Thu, 20 Feb 2020 08:01:10 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (104.47.17.170)
 by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server
 (TLS12) via SMTP; Thu, 20 Feb 2020 08:01:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JJLFbL0DQXeuIuJkeo3ffX7MB7i0y2EyMjwkb0Cu/jeNqw4CP6dBRU/Eivg5odTiiHZajfzVun2s6a8ecW4o6uXMggToAIutMqO0ycbDv3ff7FCmuWz32AiyWgxecexhLPNjsNGZl6vvTGnlm0gUeCdx93qUEBgC1xNyN4BunqbRuuUnCQtv+N9gOJ7sCBHPEKWV1HeSKGUj84fwDtrOPbGhQ+VpeelDRN1HqB3sB5eGGg3f7pNeVRzSHZhZbRopAK1r1FlDjsLnF08GjiiACdxcdfDdevTAVZOO9OVjrOBUNGao34MPYwmmScpU7mPBjeRsWxk5ZFeAp7XiJMt3vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y2c5C6SflPV2ydCHfr/IqTDUoeXFZyYdWh3vROc9fbA=;
 b=fMm9ISi5+ZfZgXNv9YHWqnVoyeHLQbLddJ14fUDqRuykhycQj7YPaMBhT0ShBC4AbAjJ/nFsC42CB1N4GSRCTfGwJhvQHl4m7zX+ZehG1l+fDdGIfPHSj43IcaoBcpTcUD0o7Bsq6jrnHTW2PDqbMFrY7BECeazJ5N9TA9r3CxMCzwQfIOauaPQxx6jXdU9sh3OXseVG560nUn4ZjFguF125W+QiY2KvduPHPHP8n5GWc3S608N4fm37WH/MRs488Phk6SLPrJaJhN49JGSxmnNJP7viZyB0J1kE0waFObt/DJ+zNKwFhUidyCdTJCbxwVWWnCnTSZrTYKH7m/85JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl; 
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y2c5C6SflPV2ydCHfr/IqTDUoeXFZyYdWh3vROc9fbA=;
 b=lPYn2VcCM8r4Ch1Aq22OU+HHaa8JU5GcN2yu35NbjVhxWDqs8ENDyqTjtEINjKTSnvgWeOC05UKHmpDeBmBLU6r5AgAmp1lWZ/NS7lmdTpnlHR2v1xTIGKs0SPBkxK7y9NvUXBnr1V71ZL8rc8r5NbNpsGj/JTmjmGhEcqri2ks=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=mike.looijmans@topicproducts.com; 
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) by
 DB3PR0402MB3899.eurprd04.prod.outlook.com (52.134.71.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.27; Thu, 20 Feb 2020 08:01:03 +0000
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::2921:6c3f:a653:732a]) by DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::2921:6c3f:a653:732a%6]) with mapi id 15.20.2729.032; Thu, 20 Feb 2020
 08:01:03 +0000
Subject: Re: [PATCH] devicetree: zynqmp.dtsi: Add bootmode selection support
To: Michal Simek <michal.simek@xilinx.com>,
 =?UTF-8?B?VmVzYSBKw6TDpHNrZWzDpGluZW4=?= <dachaac@gmail.com>,
 robh+dt@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org
References: <20200219122036.24575-1-mike.looijmans@topic.nl>
 <07c68809-f65f-91ff-62eb-f12aa8960634@gmail.com>
 <85a5807e-1d66-867f-1d83-36e8a054a511@topic.nl>
 <f2592ed7-9f1b-9a23-a6bd-ed8773a7873e@xilinx.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <a4fa4009-8d1e-1e5c-2b5c-0f9f1209e78d@topic.nl>
Date: Thu, 20 Feb 2020 09:01:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <f2592ed7-9f1b-9a23-a6bd-ed8773a7873e@xilinx.com>
Content-Language: en-CA
X-ClientProxiedBy: AM6P195CA0024.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:81::37) To DB3PR0402MB3947.eurprd04.prod.outlook.com
 (2603:10a6:8:7::19)
MIME-Version: 1.0
Received: from [192.168.80.121] (81.173.50.109) by
 AM6P195CA0024.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:81::37) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Thu, 20 Feb 2020 08:01:03 +0000
X-Originating-IP: [81.173.50.109]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4094d0b3-db27-4dcc-5e8e-08d7b5db0c2e
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3899:|VI1PR0402MB2941:
X-Microsoft-Antispam-PRVS: <VI1PR0402MB2941A3E65908789C86DC9AC496130@VI1PR0402MB2941.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-Forefront-PRVS: 031996B7EF
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(199004)(189003)(31696002)(26005)(31686004)(7416002)(8676002)(81166006)(5660300002)(8936002)(52116002)(36916002)(508600001)(81156014)(53546011)(16576012)(2906002)(110136005)(6486002)(16526019)(4326008)(956004)(66556008)(36756003)(44832011)(186003)(66476007)(66574012)(2616005)(66946007)(42882007)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3899;
 H:DB3PR0402MB3947.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: topicproducts.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: SbgDvGHO+dDwHJ2LU7u+LYRhQswd1/JjBG8CHB5ZobL/NXCYIlg3/TxKmDWvtgDKMpwniYjU8GxeDtlsbTlMM9u8XueuwzyDSWWHZf3vqvdWd4EGhRWqutwQ78f96ULLbSM97OG2Xqg/fodiAC77gEaJp7UIZCg+IUsS4//UfNe/SoJTKtWhzNyipA0MvIbgZZ4bVhbAKgHRlIqLcrNSj8dLoEp2G+RZk76IscBPPkYhNErrWaNSEK02gVjAq464C3131jCL3RiU8WdvgD8wzhSabeQvGYPBQ2uM5fRwgmSSpSjGbxkAawPCtcSLaO61EGcBSaOLMMCaqAThPh/jK5OK8+TEG/2SvhqVFwShwlwQuzTuLAXnA9K9bD0tWdsazoEugWl731Iaz+vwB9kc7ykoEl/gLXRT2zWMyI9S9htX+xRMGLGfGziNuO6NhbI4B72wguqmJMii2FOxn2gHlDGKpnjgbksSjemFIX7EFHOpN4uFnQEwYMECQgoh+LuJ
X-MS-Exchange-AntiSpam-MessageData: 0BU/SS89HA1Mo86jygs2ZdiWj5K3TIufWdu84DXdYqdJlQalnjvOH4xl3zXDMza90v2TnHKQtVFpreVVh3XIWcrTBU9JAiAi9GR845jdSeix27hdjjYfMmprAQa4xu5FFpy6zEpAtYYFrZRb4muKmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3899
X-CodeTwo-MessageID: 66a409fa-f0be-477d-9749-7a5dde6b3438.20200220080107@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: HE1EUR01FT064.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:13.81.10.179; IPV:; CTRY:NL; EFV:NLI; SFV:NSPM;
 SFS:(10009020)(346002)(199004)(189003)(42882007)(336012)(26005)(7636002)(7596002)(246002)(31686004)(4326008)(36916002)(186003)(16526019)(82310400001)(6486002)(2906002)(356004)(8676002)(5660300002)(66574012)(53546011)(36756003)(508600001)(44832011)(16576012)(31696002)(110136005)(7416002)(70586007)(70206006)(956004)(2616005)(8936002)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2941;
 H:westeu13-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass; LANG:en;
 PTR:westeu13-emailsignatures-cloud.codetwo.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: d42a32fe-a9af-4adc-aa2f-08d7b5db0824
X-Forefront-PRVS: 031996B7EF
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7mj2xnUtmA4FZUsk2o5wjUtXFqfZC54gyiiQdI2VugXu5dU/4UOPfTQ07mafSxwDJFxULd7BHiDsj1mfoGDElN1trE7uz+hWYg1e635si8p1vyIGi6QsHzXtKRL9Hd9BrQATaNTIMjp7meclL/A9xNpmujEnEe8STMIDEAq2/DCtE39wiLGQPtTQfBOqPwnh9xnGZJ7hJOudBU75E7zllTv2bjsFvi9AOhS5oRKrO/PSeWHp3RoJdAj2dj+JxLUq0Zz/nOHH+abC7Ku5SItd3voKxDS4UxlmA62SPjg87cwjpOce8uCG3fg6tyqGyJPkoHPwPQhXjVEerhd3Jcvs8k9PvKn3SmJMrWGgEpufDz2AHhDsu4D68OP1rBhYKKXLGvGBIYKQP77EMz4CMTi48EO8h4RiKZezWcPho3tEj61XkOF/U0vCwSJTAIFKD4Dd8R+V+8k72+L7pJ6NrCb85JX88epCqxXcu6nDNvCyw9f0LNLMvDIIchXkOm3w59WQ
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2020 08:01:10.0096 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4094d0b3-db27-4dcc-5e8e-08d7b5db0c2e
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3; Ip=[13.81.10.179];
 Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2941
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_000114_183704_06ED34EC 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: rajan.vaja@xilinx.com, nava.manne@xilinx.com, m.tretter@pengutronix.de,
 linux-kernel@vger.kernel.org, manish.narani@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAtMDItMjAyMCAwODowMSwgTWljaGFsIFNpbWVrIHdyb3RlOgo+IE9uIDIwLiAwMi4gMjAg
Nzo1NiwgTWlrZSBMb29pam1hbnMgd3JvdGU6Cj4+IE9uIDE5LTAyLTIwMjAgMTk6MjMsIFZlc2Eg
SsOkw6Rza2Vsw6RpbmVuIHdyb3RlOgo+Pj4gSGkgTWlrZSwKPj4+Cj4+PiBPbiAxOS4yLjIwMjAg
MTQuMjAsIE1pa2UgTG9vaWptYW5zIHdyb3RlOgo+Pj4+IEFkZCBib290bW9kZSBvdmVycmlkZSBz
dXBwb3J0IGZvciBaeW5xTVAgZGV2aWNlcy4gQWxsb3dzIG9uZSB0byBzZWxlY3QKPj4+PiBhIGJv
b3QgZGV2aWNlIGJ5IHJ1bm5pbmcgInJlYm9vdCBxc3BpMzIiIGZvciBleGFtcGxlLiBBY3RpdmF0
ZSBjb25maWcKPj4+PiBpdGVtIENPTkZJR19TWVNDT05fUkVCT09UX01PREUgdG8gbWFrZSB0aGlz
IHdvcmsuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWtlIExvb2lqbWFucyA8bWlrZS5sb29p
am1hbnNAdG9waWMubmw+Cj4+Pj4gLS0tCj4+Pj4gIMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMveGls
aW54L3p5bnFtcC5kdHNpIHwgMjQgKysrKysrKysrKysrKysrKysrKysrKysrCj4+Pj4gIMKgIDEg
ZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy94aWxpbngvenlucW1wLmR0c2kKPj4+PiBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMveGlsaW54L3p5bnFtcC5kdHNpCj4+Pj4gaW5kZXggMjZkOTI2ZWIxNDMxLi40YzM4ZDc3
ZWNiYmEgMTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy94aWxpbngvenlucW1w
LmR0c2kKPj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3hpbGlueC96eW5xbXAuZHRzaQo+
Pj4+IEBAIC0yNDYsNiArMjQ2LDMwIEBACj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IH07Cj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBD
bG9jayBhbmQgUmVzZXQgY29udHJvbCByZWdpc3RlcnMgZm9yIExQRCAqLwo+Pj4+ICvCoMKgwqDC
oMKgwqDCoCBscGRfYXBiOiBhcGJAZmY1ZTAwMDAgewo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNvbXBhdGlibGUgPSAic3lzY29uIiwgInNpbXBsZS1tZmQiOwo+Pj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJlZyA9IDwweDAgMHhmZjVlMDAwMCAweDAgMHg0MDA+Owo+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJlYm9vdC1tb2RlIHsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAic3lzY29uLXJlYm9vdC1tb2RlIjsKPj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9mZnNldCA9IDwweDIwMD47Cj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtYXNrID0gPDB4ZjEwMD47Cj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBCaXQoOCkgaXMgdGhlICJmb3JjZSB1c2VyIiBiaXQg
Ki8KPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtbm9ybWFsID0gPDB4
MDAwMD47Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtb2RlLXBzanRhZyA9
IDwweDAxMDA+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbW9kZS1xc3Bp
MjQgPSA8MHgxMTAwPjsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUt
cXNwaTMyID0gPDB4MjEwMD47Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBt
b2RlLXNkMMKgwqDCoCA9IDwweDMxMDA+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgbW9kZS1uYW5kwqDCoCA9IDwweDQxMDA+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgbW9kZS1zZDHCoMKgwqAgPSA8MHg2MTAwPjsKPj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtZW1tY8KgwqAgPSA8MHg2MTAwPjsKPj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtdXNiMMKgwqAgPSA8MHg3MTAwPjsKPj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUtcGp0YWcwID0gPDB4ODEwMD47Cj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtb2RlLXBqdGFnMSA9IDwweDkxMDA+
Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbW9kZS1zZDFsc8KgID0gPDB4
ZTEwMD47Cj4+Pgo+Pj4gVGhpcyBraW5kYSBsb29rcyBhIGJpdCBtaXN1c2Ugb2YgcmVib290IG1v
ZGUgc3VwcG9ydC4KPj4+Cj4+PiBVc3VhbGx5IHlvdSBhcmUgc2lnbmFsIHdpdGggcmVib290LW1v
ZGUgdGhhdCB5b3Ugd2FudCB0byBkbyBmYWN0b3J5Cj4+PiByZXNldCwgZW50ZXIgcmVjb3Zlcnkg
bW9kZSBvciBzdWNoIHRoaW5ncy4KPj4+Cj4+PiBOb3cgdGhpcyBzaWduYWxpbmcgaGVyZSBpcyB0
ZWxsaW5nIHRoYXQgdGhpcyBpcyB1c2VkIGZvciBzZWxlY3RpbmcKPj4+IGZyb20gd2hhdCBkZXZp
Y2UgdG8gYm9vdCBmcm9tLgo+Pgo+PiBPbiB0aGUgWnlucU1QIHRoaXMgaXMgdGhlIG9ubHkgd2F5
IHRvIGNvbW11bmljYXRlIHdpdGggdGhlIFJPTS4KPj4KPj4+IEFub3RoZXIgcHJvYmxlbSBpcyB0
aGF0IHRoaXMgbm93IG1vZGlmaWVzIGFsbCBYaWxpbnggWnlucSBNUFNvQ3Mgd2hpY2gKPj4+IGlz
IGtpbmRhIHdyb25nLiBUaGlzIGJlaGF2aW9yIHNob3VsZCByZWFsbHkgYmUgcHJvZHVjdC9ib2Fy
ZCBzcGVjaWZpYwo+Pj4gYW5kIG5vdCBjb21tb24gZm9yIGFsbCBib2FyZHMgLS0gdW5kb2luZyB0
aGlzIGluIHByb2R1Y3QvYm9hcmQgaXMKPj4+IHNvbWV3aGF0IGN1bWJlcnNvbWUuCj4+Cj4+IFRo
ZSBib290IG1vZGUgc2V0dGluZyBpcyBpbiB0aGUgU09DLCBhbmQgaXMgbm90IGJvYXJkIHNwZWNp
ZmljLiBUaGUgUk9NCj4+IGludGVycHJldHMgdGhpcyBmaWVsZC4gVGhlIG9ubHkgYm9hcmQgc3Bl
Y2lmaWMgdGhpbmcgaXMgdGhhdCB5b3UgbWF5IG5vdAo+PiBhY3R1YWxseSBoYXZlIGEgTkFORCBj
aGlwIGF0dGFjaGVkIHRvIGl0Lgo+Pgo+PiBNeSBpZGVhIHdhcyB0aGF0IGEgYm9hcmQgY291bGQg
ZWFzaWx5IGFkZCBzYXkgJ21vZGUtcmVjb3Zlcnk9PDB4MjEwMD47Jwo+PiB0byBtYWtlIHRoZSBR
UFNJIGJvb3QgdGhlIG1ldGhvZCBvZiByZWNvdmVyeS4gVGhlIGJvb3Rsb2FkZXIgYWxzbyBoYXMK
Pj4gYWNjZXNzIHRvIHRoaXMgcmVnaXN0ZXIsIHNvIGl0IGNhbiBzZWUgdGhhdCB0aGVyZSB3YXMg
YSBib290IG1vZGUKPj4gb3ZlcnJpZGUgaW4gZWZmZWN0Lgo+Pgo+Pj4gTm93IHRoaXMgY2hhbmdl
IGhpamFja3MgdGhlICJyZWJvb3QgPGFyZz4iIHdpdGggdGhpcyBiZWhhdmlvciB3aGljaCBpcwo+
Pj4gbm90IHNvIG5pY2UuCj4+Cj4+IElmIGFueW9uZSBoYXMgYSBiZXR0ZXIgc3VnZ2VzdGlvbiBh
cyB0byB3aGVyZSB0aGlzIHNob3VsZCBnbywgSSdkIGJlCj4+IG1vcmUgdGhhbiBoYXBweSB0byBo
ZWFyIGFib3V0IGl0LiBJdCdzIHRoZSBvbmx5IGludGVyZmFjZSB0aGF0IEkgY291bGQKPj4gZmlu
ZCBpbiB0aGUga2VybmVsIHRvIGF0dGFjaCBhIGJvb3Rtb2RlIG92ZXJyaWRlIHRvLgo+IAo+IElJ
UkMgYXMgdGhlIHBhcnQgb2YgUFNDSSAxLjEgc3BlYyBpcyBTWVNURU1fUkVTRVQyIHdoZXJlIHlv
dSBjYW4gZGV2aWNlCj4gcmVzZXRfdHlwZS4gSUlSQyB0aGF0IDAgYXMgd2FybSByZXNldCB3YXMg
Y29taW5nIGJhc2VkIG9uIGRpc2N1c3Npb24KPiB3aXRoIFhpbGlueCAoYW5kIG1heWJlIG90aGVy
cykgYW5kIEkgdGhpbmsgdGhpcyBpcyB3aGF0IFhpbGlueCBpcyBzdGlsbAo+IHVzaW5nLiBCdXQg
ZGlkbid0IHRyYWNrIGl0IGlmIHRoYXQgd2FzIHJlYWxseSBpbXBsZW1lbnRlZCBvciBub3QuCgpJ
IGNoZWNrZWQgdGhlIGFybS10cnVzdGVkLWZpcm13YXJlIGNvZGUsIHRoZXJlJ3Mgbm8gWGlsaW54
IHZlbmRvciBzcGVjaWZpYyAKaW1wbGVtZW50YXRpb24gb2YgU1lTVEVNX1JFU0VUMiB0b2RheSwg
c28gaXQgd2lsbCBvbmx5IGRvIGEgZ2VuZXJpYyB3YXJtIApyZWJvb3QgYW5kIG5vdGhpbmcgZWxz
ZS4KCkknbGwgbW92ZSB0aGUgcGF0Y2ggdG8gb3VyIEJTUCwgd2UgbmVlZCB0aGUgZnVuY3Rpb25h
bGl0eSBmb3Igc29mdHdhcmUgCnVwZGF0ZS9yZWNvdmVyeSBtZWNoYW5pc21zLgoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
