Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFF916B804
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 04:24:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uq0wD1tYsu/iQUOsTxPK2ZCFQr55Tgb6mLlBV7wuDl4=; b=QCnl7fXsax8SKd
	pH+IxJQGXT5Wqb9cT0Ae+L5W1v1xx0M1jsQsIBbGtE9DGXSWNS5ln4U/eCjR8TyHYFPJMd52Lwstv
	TRx6eMGzq+Urm5/pyhJ7OcJLHNrWR3xkPfnRiSWIDKjaXI1vxPdql+1UX7eIM5wU51CYdikT7GmSO
	kBHmKL50l9BLdrQjqQpzcIJH6jRwCsQZ1KSg/jFnVecmwcjk8fdKmxlKmbdb9d9HXK1i7ayqcO/pO
	yhq5XYDtKC6lYCvzlFKfnvFqL6+LajIdXQXyHYL+cpO9EDCGJhpZFY6oxFMLxmlVrjgWyGgnc0OY8
	/E7yjuRhpVoqeGYC80hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6QpK-000132-AJ; Tue, 25 Feb 2020 03:24:06 +0000
Received: from mail-am6eur05on2086.outbound.protection.outlook.com
 ([40.107.22.86] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Qoq-0000oA-Al
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 03:23:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jy30nSkpBXm6PhPwzs9jIkEyb6Tmt/J3qU6v8nkNhYjdwvPukWBa2MJyEkbMgSEJ2L32hsRvhjP4+jWTEWGI6vE09tzDWIfAzUHtcH5Go74Jm4fRgcAmgz/LgfCK3numGqgexiE/7UlTOCVdzBeiorp33FZYs5Ed2jcOdoLOGzPPn2WUxH5WEQ88iPJrUVHdZq3q9ndMjhv6AyThCzaJICR51HIciqq6lyHotoWLSq+UX6DiTSO5iyC44GPO2+g5m9LLpvhNOwyHuL0glh9bP9qaRIdrGAKV3UbHWeZm86wbRt6J1g1JWuQJdrvZX65M6luIf3rBcHDY3xjqUeS37g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7fJyU8zrMqOjpeQFbAy7mevrx8zFjHvNVX5MfodSa2Y=;
 b=TtOhHe5NXRb6897P8jojUFoPbAcAcV/FCqVAAcALFsp5GdHKmuhNMlzXfJzmwzJqd36g4aUBTZvnWEg/Np6FKN9OG2/lXELkpbuTb6V0pXIedyS8o+iJOPynOf84sIUqbd9TcyU9KTy729nH4qkW9wNfG4uvTgolhN6fFNCBRfQ5tOWAM+S4iQrg2/lD5SKY7yVOIuec+UrDXOqhYNcgyy19wYgNrJykhFQJg5vNv84omfZ4BtkF52uorSeX9IUl0L+lA3zExVvjQRhC2a59za4C1d1IzOVnktMi0iz2PFXUjTmhdFWzgkaBSHwUfG/12E8wzUvQxLRZjCfAX3gB1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7fJyU8zrMqOjpeQFbAy7mevrx8zFjHvNVX5MfodSa2Y=;
 b=HxeCbEeAfiBXUMCTE9B9/K+gqIGWV1gtp927h/HivhHESWEKQ0ISswC5D7pr1NRhG0MvZuaJH6cXjmUjnLARRLRGzM8UBR8yt8YjpHmyW+Sts4em/DyWkYpzSKKEqXGhA0XLp3V7Br1/rwjkTBoyk347Yz1Uqcq6bp6CgDE1/pI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5938.eurprd04.prod.outlook.com (20.178.112.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Tue, 25 Feb 2020 03:23:31 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 03:23:30 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de
Subject: [PATCH V2 1/2] mailbox: imx: support SCU channel type
Date: Tue, 25 Feb 2020 11:17:06 +0800
Message-Id: <1582600627-28415-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582600627-28415-1-git-send-email-peng.fan@nxp.com>
References: <1582600627-28415-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR04CA0089.apcprd04.prod.outlook.com
 (2603:1096:202:15::33) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR04CA0089.apcprd04.prod.outlook.com (2603:1096:202:15::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.18 via Frontend Transport; Tue, 25 Feb 2020 03:23:27 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5bbf50ae-d00e-458a-389b-08d7b9a21658
X-MS-TrafficTypeDiagnostic: AM0PR04MB5938:|AM0PR04MB5938:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5938A654659B20DF1A819E6988ED0@AM0PR04MB5938.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0324C2C0E2
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(39860400002)(366004)(396003)(199004)(189003)(6486002)(8676002)(81156014)(81166006)(316002)(15650500001)(66476007)(66556008)(52116002)(66946007)(5660300002)(8936002)(186003)(478600001)(9686003)(6512007)(36756003)(86362001)(6506007)(2616005)(6666004)(2906002)(956004)(4326008)(26005)(16526019);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5938;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kAVqp6hIVt5F0OgAcvvWui3qFgzrTtWKwIQYOpP14/YTGfYY1GWWwpljjZNGpwghHk2qDxbE+SmyYCb54i4dWaD85C+Wx+fzdtYyizf65Fj7VypQ6hG8MmTvs7b0IIrWroCqUnpLEp43ABw6wEaLS3KwvPfZkG7a9TxD0sbrWTmyOt0fEAQq8FZi3k54d7PEMUTKs40pUD2V4MEXAd9PHonavoMUwq8CrzTcu8eRT5UaPPK14QYznsxxWMdPLsN7fW2F10nM2MElpweWjjB9txLPKzCQLoonwNkeugcGp1ljPeaZlSv7OY0CqH9QThXHp1PCxm0uJtTWwXzBnX4yUETANUvnb7IFIueEbFuEOIVxGUb9tPvVhAWpBnLLwFl2cTTy0m6UevGGf1IsYIkkBP0Bx6/QfX0vL08jmTj8q0x8HStH8Elim3vpt27cBHzX
X-MS-Exchange-AntiSpam-MessageData: iT5NzbdOgzmd/q0UzGekSMlkemNb7UNPu+FAAso8Ktiy+fr1I4xaFopHMHjQo1ksArVQI0R9ZPExdpQitMYCnmI+ymQCWmRav4YRKK21c03booVwXueeysUcI78jgwl9jBoFMe6Cbnmz6ZuA68j2GQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bbf50ae-d00e-458a-389b-08d7b9a21658
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 03:23:30.8954 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EYWj8a0Po92+wAI1JKyJ5WmGqZssnHHwg5IvbGWdbVkZ1TyxAbChVa8WPSDzQHVvxjctXKs0+qAomrQQV0e1eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5938
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_192336_373847_3C6621C9 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+CgpQZXIgaS5NWDhRWFAgUmVmZXJlbmNl
IG1hbm51YWwsIENoYXB0ZXIgIjEyLjkuMi4zLjIgTWVzc2FnaW5nIEV4YW1wbGVzIiwKIFBhc3Np
bmcgc2hvcnQgbWVzc2FnZXM6IFRyYW5zbWl0IHJlZ2lzdGVyKHMpIGNhbiBiZSB1c2VkIHRvIHBh
c3MKIHNob3J0IG1lc3NhZ2VzIGZyb20gb25lIHRvIGZvdXIgd29yZHMgaW4gbGVuZ3RoLiBGb3Ig
ZXhhbXBsZSwgd2hlbgogYSBmb3VyLXdvcmQgbWVzc2FnZSBpcyBkZXNpcmVkLCBvbmx5IG9uZSBv
ZiB0aGUgcmVnaXN0ZXJzIG5lZWRzIHRvCiBoYXZlIGl0cyBjb3JyZXNwb25kaW5nIGludGVycnVw
dCBlbmFibGUgYml0IHNldCBhdCB0aGUgcmVjZWl2ZXIgc2lkZTsKIHRoZSBtZXNzYWdl4oCZcyBm
aXJzdCB0aHJlZSB3b3JkcyBhcmUgd3JpdHRlbiB0byB0aGUgcmVnaXN0ZXJzIHdob3NlCiBpbnRl
cnJ1cHQgaXMgbWFza2VkLCBhbmQgdGhlIGZvdXJ0aCB3b3JkIGlzIHdyaXR0ZW4gdG8gdGhlIG90
aGVyCiByZWdpc3RlciAod2hpY2ggdHJpZ2dlcnMgYW4gaW50ZXJydXB0IGF0IHRoZSByZWNlaXZl
ciBzaWRlKS4KCmkuTVg4LzhYIFNDVSBmaXJtd2FyZSBJUEMgaXMgYW4gaW1wbGVtZW50YXRpb24g
b2YgcGFzc2luZyBzaG9ydAptZXNzYWdlcy4gQnV0IGN1cnJlbnQgaW14LW1haWxib3ggZHJpdmVy
IG9ubHkgc3VwcG9ydCBvbmUgd29yZAptZXNzYWdlLCBpLk1YOC84WCBsaW51eCBzaWRlIGZpcm13
YXJlIGhhcyB0byByZXF1ZXN0IGZvdXIgVFgKYW5kIGZvdXIgUlggdG8gc3VwcG9ydCBJUEMgdG8g
U0NVIGZpcm13YXJlLiBUaGlzIGlzIGxvdyBlZmZpY2VudAphbmQgbW9yZSBpbnRlcnJ1cHRzIHRy
aWdnZXJlZCBjb21wYXJlZCB3aXRoIG9uZSBUWCBhbmQKb25lIFJYLgoKVG8gbWFrZSBTQ1UgY2hh
bm5lbCB0eXBlIHdvcmssCiAgLSBwYXJzZSB0aGUgc2l6ZSBvZiBtc2cuCiAgLSBPbmx5IGVuYWJs
ZSBUUjAvUlIwIGludGVycnVwdCBmb3IgdHJhbnNtaXQvcmVjZWl2ZSBtZXNzYWdlLgoKU2lnbmVk
LW9mZi1ieTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+Ci0tLQogZHJpdmVycy9tYWlsYm94
L2lteC1tYWlsYm94LmMgfCA0NiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYyBiL2RyaXZlcnMvbWFp
bGJveC9pbXgtbWFpbGJveC5jCmluZGV4IDJjZGNkYzVmMTExOS4uMGI0YTMzMjU0MTE0IDEwMDY0
NAotLS0gYS9kcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYworKysgYi9kcml2ZXJzL21haWxi
b3gvaW14LW1haWxib3guYwpAQCAtNCw2ICs0LDcgQEAKICAqLwogCiAjaW5jbHVkZSA8bGludXgv
Y2xrLmg+CisjaW5jbHVkZSA8bGludXgvZmlybXdhcmUvaW14L2lwYy5oPgogI2luY2x1ZGUgPGxp
bnV4L2ludGVycnVwdC5oPgogI2luY2x1ZGUgPGxpbnV4L2lvLmg+CiAjaW5jbHVkZSA8bGludXgv
a2VybmVsLmg+CkBAIC02NSw4ICs2NiwxNCBAQCBzdHJ1Y3QgaW14X211X3ByaXYgewogCWludAkJ
CWlycTsKIAogCWJvb2wJCQlzaWRlX2I7CisJYm9vbAkJCXNjdTsKIH07CiAKK3N0cnVjdCBpbXhf
c2NfcnBjX21zZ19tYXggeworCXN0cnVjdCBpbXhfc2NfcnBjX21zZyBoZHI7CisJdTMyIGRhdGFb
N107Cit9IF9fcGFja2VkIF9fYWxpZ25lZCg0KTs7CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW14
X211X2RjZmcgaW14X211X2NmZ19pbXg2c3ggPSB7CiAJLnhUUgk9IHsweDAsIDB4NCwgMHg4LCAw
eGN9LAogCS54UlIJPSB7MHgxMCwgMHgxNCwgMHgxOCwgMHgxY30sCkBAIC0xMjMsNyArMTMwLDEw
IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBpbXhfbXVfaXNyKGludCBpcnEsIHZvaWQgKnApCiAJc3Ry
dWN0IG1ib3hfY2hhbiAqY2hhbiA9IHA7CiAJc3RydWN0IGlteF9tdV9wcml2ICpwcml2ID0gdG9f
aW14X211X3ByaXYoY2hhbi0+bWJveCk7CiAJc3RydWN0IGlteF9tdV9jb25fcHJpdiAqY3AgPSBj
aGFuLT5jb25fcHJpdjsKKwlzdHJ1Y3QgaW14X3NjX3JwY19tc2dfbWF4IG1zZzsKKwl1MzIgKnBf
bXNnID0gKHUzMiAqKSZtc2c7CiAJdTMyIHZhbCwgY3RybCwgZGF0OworCWludCBpOwogCiAJY3Ry
bCA9IGlteF9tdV9yZWFkKHByaXYsIHByaXYtPmRjZmctPnhDUik7CiAJdmFsID0gaW14X211X3Jl
YWQocHJpdiwgcHJpdi0+ZGNmZy0+eFNSKTsKQEAgLTE1Miw4ICsxNjIsMTkgQEAgc3RhdGljIGly
cXJldHVybl90IGlteF9tdV9pc3IoaW50IGlycSwgdm9pZCAqcCkKIAkJaW14X211X3hjcl9ybXco
cHJpdiwgMCwgSU1YX01VX3hDUl9USUVuKGNwLT5pZHgpKTsKIAkJbWJveF9jaGFuX3R4ZG9uZShj
aGFuLCAwKTsKIAl9IGVsc2UgaWYgKHZhbCA9PSBJTVhfTVVfeFNSX1JGbihjcC0+aWR4KSkgewot
CQlkYXQgPSBpbXhfbXVfcmVhZChwcml2LCBwcml2LT5kY2ZnLT54UlJbY3AtPmlkeF0pOwotCQlt
Ym94X2NoYW5fcmVjZWl2ZWRfZGF0YShjaGFuLCAodm9pZCAqKSZkYXQpOworCQlpZiAoIXByaXYt
PnNjdSkgeworCQkJZGF0ID0gaW14X211X3JlYWQocHJpdiwgcHJpdi0+ZGNmZy0+eFJSW2NwLT5p
ZHhdKTsKKwkJCW1ib3hfY2hhbl9yZWNlaXZlZF9kYXRhKGNoYW4sICh2b2lkICopJmRhdCk7CisJ
CX0gZWxzZSB7CisJCQlpbXhfbXVfeGNyX3Jtdyhwcml2LCAwLCBJTVhfTVVfeENSX1JJRW4oMCkp
OworCQkJKnBfbXNnKysgPSBpbXhfbXVfcmVhZChwcml2LCBwcml2LT5kY2ZnLT54UlJbMF0pOwor
CQkJZm9yIChpID0gMTsgaSA8IG1zZy5oZHIuc2l6ZTsgaSsrKSB7CisJCQkJKnBfbXNnKysgPSBp
bXhfbXVfcmVhZChwcml2LAorCQkJCQkJICAgICAgIHByaXYtPmRjZmctPnhSUltpICUgNF0pOwor
CQkJfQorCQkJaW14X211X3hjcl9ybXcocHJpdiwgSU1YX01VX3hDUl9SSUVuKDApLCAwKTsKKwkJ
CW1ib3hfY2hhbl9yZWNlaXZlZF9kYXRhKGNoYW4sICh2b2lkICopJm1zZyk7CisJCX0KIAl9IGVs
c2UgaWYgKHZhbCA9PSBJTVhfTVVfeFNSX0dJUG4oY3AtPmlkeCkpIHsKIAkJaW14X211X3dyaXRl
KHByaXYsIElNWF9NVV94U1JfR0lQbihjcC0+aWR4KSwgcHJpdi0+ZGNmZy0+eFNSKTsKIAkJbWJv
eF9jaGFuX3JlY2VpdmVkX2RhdGEoY2hhbiwgTlVMTCk7CkBAIC0xNjksMTEgKzE5MCwyMCBAQCBz
dGF0aWMgaW50IGlteF9tdV9zZW5kX2RhdGEoc3RydWN0IG1ib3hfY2hhbiAqY2hhbiwgdm9pZCAq
ZGF0YSkKIHsKIAlzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYgPSB0b19pbXhfbXVfcHJpdihjaGFu
LT5tYm94KTsKIAlzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICpjcCA9IGNoYW4tPmNvbl9wcml2Owor
CXN0cnVjdCBpbXhfc2NfcnBjX21zZ19tYXggKm1zZyA9IGRhdGE7CiAJdTMyICphcmcgPSBkYXRh
OworCWludCBpOwogCiAJc3dpdGNoIChjcC0+dHlwZSkgewogCWNhc2UgSU1YX01VX1RZUEVfVFg6
Ci0JCWlteF9tdV93cml0ZShwcml2LCAqYXJnLCBwcml2LT5kY2ZnLT54VFJbY3AtPmlkeF0pOwor
CQlpZiAocHJpdi0+c2N1KSB7CisJCQlmb3IgKGkgPSAwOyBpIDwgbXNnLT5oZHIuc2l6ZTsgaSsr
KSB7CisJCQkJaW14X211X3dyaXRlKHByaXYsICphcmcrKywKKwkJCQkJICAgICBwcml2LT5kY2Zn
LT54VFJbaSAlIDRdKTsKKwkJCX0KKwkJfSBlbHNlIHsKKwkJCWlteF9tdV93cml0ZShwcml2LCAq
YXJnLCBwcml2LT5kY2ZnLT54VFJbY3AtPmlkeF0pOworCQl9CiAJCWlteF9tdV94Y3Jfcm13KHBy
aXYsIElNWF9NVV94Q1JfVElFbihjcC0+aWR4KSwgMCk7CiAJCWJyZWFrOwogCWNhc2UgSU1YX01V
X1RZUEVfVFhEQjoKQEAgLTI1OSw2ICsyODksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1ib3hf
Y2hhbl9vcHMgaW14X211X29wcyA9IHsKIHN0YXRpYyBzdHJ1Y3QgbWJveF9jaGFuICogaW14X211
X3hsYXRlKHN0cnVjdCBtYm94X2NvbnRyb2xsZXIgKm1ib3gsCiAJCQkJICAgICAgIGNvbnN0IHN0
cnVjdCBvZl9waGFuZGxlX2FyZ3MgKnNwKQogeworCXN0cnVjdCBpbXhfbXVfcHJpdiAqcHJpdiA9
IHRvX2lteF9tdV9wcml2KG1ib3gpOwogCXUzMiB0eXBlLCBpZHgsIGNoYW47CiAKIAlpZiAoc3At
PmFyZ3NfY291bnQgIT0gMikgewpAQCAtMjcwLDcgKzMwMSw5IEBAIHN0YXRpYyBzdHJ1Y3QgbWJv
eF9jaGFuICogaW14X211X3hsYXRlKHN0cnVjdCBtYm94X2NvbnRyb2xsZXIgKm1ib3gsCiAJaWR4
ID0gc3AtPmFyZ3NbMV07IC8qIGluZGV4ICovCiAJY2hhbiA9IHR5cGUgKiA0ICsgaWR4OwogCi0J
aWYgKGNoYW4gPj0gbWJveC0+bnVtX2NoYW5zKSB7CisJLyogRm9yIFRYL1JYIFNDVSwgb25seSBv
bmUgY2hhbm5lbCBzdXBwb3J0ZWQgKi8KKwlpZiAoKGNoYW4gPj0gbWJveC0+bnVtX2NoYW5zKSB8
fAorCSAgICAocHJpdi0+c2N1ICYmIHR5cGUgPCAxICYmIGlkeCA+PSAxKSkgewogCQlkZXZfZXJy
KG1ib3gtPmRldiwgIk5vdCBzdXBwb3J0ZWQgY2hhbm5lbCBudW1iZXI6ICVkLiAodHlwZTogJWQs
IGlkeDogJWQpXG4iLCBjaGFuLCB0eXBlLCBpZHgpOwogCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFM
KTsKIAl9CkBAIC0zNDEsNiArMzc0LDExIEBAIHN0YXRpYyBpbnQgaW14X211X3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJfQogCiAJcHJpdi0+c2lkZV9iID0gb2ZfcHJvcGVy
dHlfcmVhZF9ib29sKG5wLCAiZnNsLG11LXNpZGUtYiIpOworCW5wID0gb2ZfZmluZF9jb21wYXRp
YmxlX25vZGUoTlVMTCwgTlVMTCwgImZzbCxpbXgtc2N1Iik7CisJaWYgKG5wKSB7CisJCXByaXYt
PnNjdSA9IHRydWU7CisJCW9mX25vZGVfcHV0KG5wKTsKKwl9CiAKIAlzcGluX2xvY2tfaW5pdCgm
cHJpdi0+eGNyX2xvY2spOwogCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
