Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224FE1C8234
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 08:09:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7XH+laceF+3WkTapiFo4TcS7INldJRDsL+H1YEiJgE=; b=Zc/9vWdMB1Ag8r
	WE/EUIxJZWjlstLkQdgUnJ1rKsZld8aSO8ykmyr66lYgGIDGR0ujjItsbrs7RnC6wBmln7CdJ85p4
	v87SbwnjwxLjrPa9BGBoH7DJmTMeIDaogEgUENxW6d2c08/sRUw/iVptVCfleS7vnkVbuWeU9RhPT
	oKE2Rf+GGuvyMBOPUbsRIl2PAoOyUBUxor8t1qGORiRDMOtLsCDZ07Y5esyNi8yH9kxOGgrZq19i5
	+3EoE9JbWe4ExJjg1H7jljfErOfAhukLa6TzBeMNcLvEDx87VWGswL4/jpU4QSxZVTCUNKjjGpQXM
	fl80ETyhsYvhk6mj7cQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZj1-0007Q8-5y; Thu, 07 May 2020 06:09:39 +0000
Received: from mail-eopbgr70079.outbound.protection.outlook.com ([40.107.7.79]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZft-000552-Q8
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 06:06:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oUFbxpyTanLpko96DSVJViCzLG/GZy1kdmmvm42LR0KLLwBHo77KIELw/Z/i2A9kzFnZjE875iaEQYYAM7Z8hgaM2VutGsXefK3LC6mZRGn4dpV5AfYpunyhDU1ScLeetfqi7YAvM9dSFW1fjdzdEzftSLUPdlmiVnqFWAB9bhxrryorN1jl9GOCGwFm3LHpasP9E+o8Hwf2Olf8l15JfpXvIlHUmMtcH4UxLZsioO0lJgEibtJFT8X2lv/Rw4LLX+uZuzkXcqDMh/tymRbDUM0QtC38V7k0alq/8bEMpUqRT0bDftOOacMfw2rpNZNndZXyYxu72+7u3VSNLjHYyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ua3eDSyrLvZQQ8z4E/8SRL7EpI+SLqLXgYNjTduIt9M=;
 b=c+FFXEJcg5nKqdmMY7cKADZpIHZnwekOuPwb7yrjKxd+49jnCahThR6tolVa7dV9kFTGNFu/n80stenGzVJd+RZkCdLnlNrsi92SSnmzfLZWeuF/ct2hpTfLUdtETrK0vh7Ed/qgBlmfJcu8OTPF2xFUukvZ+hF8YI4UqBjI6+oosTfsIQEKZUs/dUabIy2OfnNSWaoQkfsgjsWZtcSRsTlc7xCXO4jVvXca2sFlO3VhvM/yoTALvDNXHNnjQ5TKsJNsB5EAx9sv/wdkIRfgM20zIEZL/T4zRb1cum8ZoJWk4xZFGDd+7z4kJ7IOM6UxiWkf6zOz7QMB0c6ASudarg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ua3eDSyrLvZQQ8z4E/8SRL7EpI+SLqLXgYNjTduIt9M=;
 b=qyBKBT8E5i2trPSvyKL6Egs2GR4vu0IZdpqKd7ey9QbtGB99cNc4seqlvythpPC9VFEHXyd08MUCrbKXMFdO0tw2c/6298Va2aQDekWWjpNjDFlJqMQ2LKS9M1hs+0WDwQytvdNnIz6m8x3fhRQFbJ7GHN+gazXK/scDvhbLF8Y=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2710.eurprd04.prod.outlook.com (2603:10a6:4:95::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Thu, 7 May
 2020 06:06:20 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 06:06:20 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 abel.vesa@nxp.com, aisheng.dong@nxp.com
Subject: [PATCH V3 10/10] clk: imx8mp: mark memrepair clock as critical
Date: Thu,  7 May 2020 13:56:19 +0800
Message-Id: <1588830979-11586-11-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
References: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0147.apcprd01.prod.exchangelabs.com
 (2603:1096:4:8f::27) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0147.apcprd01.prod.exchangelabs.com (2603:1096:4:8f::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.28 via Frontend
 Transport; Thu, 7 May 2020 06:06:16 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f5416266-f311-4917-ea58-08d7f24cc30d
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2710:|DB6PR0402MB2710:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB27109603DF326443934CCEB588A50@DB6PR0402MB2710.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 03965EFC76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qX96wcFsPswwc15SvKf9QoUqK3KlmI3Gyilq5CFSFtnDlMNGmhzwNxLM3Yh5u7rfAhdYjx5MRKrDIxJiTiV2kp8p76ews4vex8dkNxV2Gb5D95xmq5+I2Wwf/eY4uEKuhcpmRKzPLWIe5hpCj8fwdkh+KHr7RZffnO0bD6LX1fFLGl7teZenl+FqaOYPbtDSUdNM/KbNZv+5LzxPDWf8X93LYwVtfksBwNMSdWUJ24OZufA5cpFQtPlq98M6VxVi0DmpodMYUq+/T902SlWZP0LditFsb1HBev61bGRhGWhs87aPvPkiY/pdvGiXCZ4xFTfr6HoStsdRLxzPfjjSCoGZhYUngwGPuuZvZGrJEAGICDIsz68ac6YQJyoHEMZHTZbOBV3avpBjKcf2pVHq2aenNpySQWjH20DTuV66oAUqUJpD7iXhcWGnY7JFYPDqpS6jX7eEKHvMa/gaZB9PP2VL7hseLh89ZcWjyfWx5RjPnsK7rz580VarNt4Jl7nbXIv+bVvHqL7W2IdXtNs3aEq3aGRt2QbRLFaWhIKQ6YPLr6uf9Loj7BT693rBbE5X
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(136003)(39860400002)(396003)(33430700001)(316002)(33440700001)(478600001)(2616005)(16526019)(4326008)(66476007)(66946007)(86362001)(2906002)(66556008)(956004)(6486002)(52116002)(36756003)(8676002)(26005)(6506007)(8936002)(5660300002)(186003)(6512007)(9686003)(83320400001)(83280400001)(83300400001)(83310400001)(83290400001)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 6hHfuq5+ocQjzXhAW0IZSSKBn0bzAuOcpFb/DVr7wdvYuDFKoOgPfPpBDPhPJjCbwSYPzfk3cs1E5AHIoj0cXb9hLxhNQWitN6lQMv3DMy9CWZDvxvD4LxZr2dBLaFSAr9kKEcyZXG9QxM4m1B0TX+zDp0JXY/z/Vu1LmxZIFQxJMRe7lDGIgoHHhBMZEGbY3hbESBrIs8sbrrBoofi335hyuCiKSRxuT9xpIi59+IOpYMcRuK+kF+JlUJP6AfcyChLjH5zOmUjj2HUlTh1KliZS41ZHU3hx85ZdlaeT1PjLva+VJTRMbqcN4N98JdlFSeCgGvv3uI+DNgPAR2s82DmhkV2l20ZVht/at4dpnvze4qMB9zWrkOKcF3n+IMc3sT9g0oMTCMiVmYTgpMb/pLyoLu39e2jzUBpNx19wCrVs0tIX2e9n5376YM8vpXxCqa+Gm1EKL+j7axZRfPbODhvrpqHHiN9ipKBHHy4MfYuRBs8Mc8nsygyOMiNzWnwlMGb28i8A4Vqgm5uO/MGqPMSW2fG+To8ERHUlO2P0DvO7X/P03z7XswLFNg6vje8jQYonUqAQrNJX7onBXc8IOb7jpnYmM/7m9KclOGclw/Pn8LliB8yEDQ1VSTxmHTM3JSGw2niqAaC+0bHPOs78FkZxlDiFIQah0e0VdeTLnYpibYUE5MP9/iNfUKs6W/dAkF7Nl1ouQsh5qCPY7cWZ9UBtrdza3getHX2fRl8wMqD58vsPuC/xcyi75CMADE/uVx5v+yR9PtpOiSSfELdEWivuc61B15iHGnEY95KsTKE=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5416266-f311-4917-ea58-08d7f24cc30d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2020 06:06:20.2448 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +xPF5UTyYKPx2USJxwq0xkwbpIY3KzNeZNbFVbBm/9jKdvK6yoaY6+/Nwc5+8ifbAlRc97MoaRd1s59YVU9d6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_230625_861424_19F0C5F5 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.79 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.79 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+CgpJZiBtZW1yZXBhaXIgcm9vdCBjbG9j
ayBpbiBDQ00gaXMgZGlzYWJsZWQsIHRoZSBtZW1vcnkgcmVwYWlyIGxvZ2ljCmluIEhETUlNSVgg
Y2Fu4oCZdCB3b3JrLiBTbyBsZXQncyBtYXJrIGl0IGFzIGNyaXRpY2FsIGNsb2NrLgoKUmV2aWV3
ZWQtYnk6IExlb25hcmQgQ3Jlc3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+ClNpZ25lZC1v
ZmYtYnk6IFBlbmcgRmFuIDxwZW5nLmZhbkBueHAuY29tPgotLS0KIGRyaXZlcnMvY2xrL2lteC9j
bGstaW14OG1wLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9pbXgvY2xrLWlteDhtcC5jIGIvZHJp
dmVycy9jbGsvaW14L2Nsay1pbXg4bXAuYwppbmRleCBiNGQ5ZGI5ZDViZjEuLmE3YzU5ZDdhNDBk
ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvaW14L2Nsay1pbXg4bXAuYworKysgYi9kcml2ZXJz
L2Nsay9pbXgvY2xrLWlteDhtcC5jCkBAIC01OTAsNyArNTkwLDcgQEAgc3RhdGljIGludCBpbXg4
bXBfY2xvY2tzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaHdzW0lNWDhN
UF9DTEtfVlBVX0cyXSA9IGlteDhtX2Nsa19od19jb21wb3NpdGUoInZwdV9nMiIsIGlteDhtcF92
cHVfZzJfc2VscywgY2NtX2Jhc2UgKyAweGExODApOwogCWh3c1tJTVg4TVBfQ0xLX0NBTjFdID0g
aW14OG1fY2xrX2h3X2NvbXBvc2l0ZSgiY2FuMSIsIGlteDhtcF9jYW4xX3NlbHMsIGNjbV9iYXNl
ICsgMHhhMjAwKTsKIAlod3NbSU1YOE1QX0NMS19DQU4yXSA9IGlteDhtX2Nsa19od19jb21wb3Np
dGUoImNhbjIiLCBpbXg4bXBfY2FuMl9zZWxzLCBjY21fYmFzZSArIDB4YTI4MCk7Ci0JaHdzW0lN
WDhNUF9DTEtfTUVNUkVQQUlSXSA9IGlteDhtX2Nsa19od19jb21wb3NpdGUoIm1lbXJlcGFpciIs
IGlteDhtcF9tZW1yZXBhaXJfc2VscywgY2NtX2Jhc2UgKyAweGEzMDApOworCWh3c1tJTVg4TVBf
Q0xLX01FTVJFUEFJUl0gPSBpbXg4bV9jbGtfaHdfY29tcG9zaXRlX2NyaXRpY2FsKCJtZW1yZXBh
aXIiLCBpbXg4bXBfbWVtcmVwYWlyX3NlbHMsIGNjbV9iYXNlICsgMHhhMzAwKTsKIAlod3NbSU1Y
OE1QX0NMS19QQ0lFX1BIWV0gPSBpbXg4bV9jbGtfaHdfY29tcG9zaXRlKCJwY2llX3BoeSIsIGlt
eDhtcF9wY2llX3BoeV9zZWxzLCBjY21fYmFzZSArIDB4YTM4MCk7CiAJaHdzW0lNWDhNUF9DTEtf
UENJRV9BVVhdID0gaW14OG1fY2xrX2h3X2NvbXBvc2l0ZSgicGNpZV9hdXgiLCBpbXg4bXBfcGNp
ZV9hdXhfc2VscywgY2NtX2Jhc2UgKyAweGE0MDApOwogCWh3c1tJTVg4TVBfQ0xLX0kyQzVdID0g
aW14OG1fY2xrX2h3X2NvbXBvc2l0ZSgiaTJjNSIsIGlteDhtcF9pMmM1X3NlbHMsIGNjbV9iYXNl
ICsgMHhhNDgwKTsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
