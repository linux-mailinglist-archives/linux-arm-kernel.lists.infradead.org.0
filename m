Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E0716F69A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 05:48:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ciyAu6RGpeIYjUSpSfaS19fagG0wSjPSCBwBMyA3VEA=; b=R6U6zAjEPoE8A9
	zc+VRDRX12r7ssIdg/CUEHouoBANtlt/9TpmB4uENsS+yKCZRv0cahnJvKm+Vw5vAZoxXl1c8SgI9
	bn4O7Xe4yAy0rJc2U5E/KL7YGyZyvl5gi8WV+yDVjU0knDLTx1P4g2lJILd0rHciKrKMpDYIt/HCV
	HGb1JDsmp8lKEkMu5kUGR2DGA45QQZcYpyzQdfP+3GSYt4QoK0eZUUAv4q2SdlWqyV8hOVDMP7mgb
	x1Ul5eUn7p4wW0556Pvb7blC++ZotcfqrlUl3WAC7sDh4RXDqoiM3ZMlEmE/1JCLLqCQghtI2GaAB
	0BQ9Vtg1uQvWnNIHuptw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6oc1-0003dY-H2; Wed, 26 Feb 2020 04:47:57 +0000
Received: from mail-eopbgr10061.outbound.protection.outlook.com ([40.107.1.61]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ob4-00033h-MC
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 04:47:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UMCDSwzt0M5pNHZXnnasY/K7dTcn3huf1VuTkezFPO9tjaeYwd9pRgV1wU7dI1NvbaMmdNxx2mbkiEnh6OH7qMjhk7qaSYqIMIeQLxLAOn0iNfBwZW5jPDeFW6w2/Ah/uE645SM/YCv0gf7WlxQbLq85yvCKpxdBSfQSAoRg9AQMc62CH8clCV6D0eMYnCgX+hhfyxPrWp1yLtOGyTOYmRqLjpTy7e/D2OdQZUXfRXIL2Rv2rVeV0rtNDKYX6vrWMyj79ag491v0SOIIJyOUM6VgD/gYgv7ofqcnVQN+McQ1i7j2rXLhjO6MgYRdT8tMCi/ts+uM6Q96Dd1fWQvcFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gleWzQx7a+SjOSuQKkgrChtOnBD5CaVd4900zhgJXGQ=;
 b=km/iXULzYfxxHCRbHMXJqJZB70/TuORvTZzsfbK++J6UGm9SvpekvNiY5+twzNYfXJqJvr1lgbwCJqkz1idUmZjMzjfp6WbnYQx9k/Ix5bKGDUaynv4AxI/zU4g/ER/XSN5uZP/adkjB3euy57FYhhgAlgE5JcCyMqSQBwBHxoGK+bx3ZfkqNtOSbVID7BRvbJ5UtDpqAy9HGngWz0DqaYYvh0Kq8ndkq9KKJjUnIb4Bok8RToljoxzlvPDv7ulXfTfHr8mikK42IPUbClYqZ8/Rc7iiDnORtR+Kzpm4o78gaNptEybmJVsMoMdIR2CIMHxiHgbNmsIZpXbABqcwnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gleWzQx7a+SjOSuQKkgrChtOnBD5CaVd4900zhgJXGQ=;
 b=ZqSRDzuXaw2t/jMEgai9Bs/oJzs7RR8FNXPnDwOQi9SKCRqYO3cCn3LPNJBhrH+92K0FOGglFEYw1kZZyNfO+AXUC75//XCkDj+hoUuTbNtY2SHYd0PfCJlNPU3pE87iUArs9y61xn8uJkrbp3KOUqUXf6aCvy3rkqc2lYYcZ3E=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4291.eurprd04.prod.outlook.com (52.134.126.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Wed, 26 Feb 2020 04:46:56 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 04:46:56 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de, robh+dt@kernel.org
Subject: [PATCH V3 3/4] mailbox: imx: add SCU MU support
Date: Wed, 26 Feb 2020 12:40:42 +0800
Message-Id: <1582692043-683-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582692043-683-1-git-send-email-peng.fan@nxp.com>
References: <1582692043-683-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0135.apcprd06.prod.outlook.com
 (2603:1096:1:1f::13) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0135.apcprd06.prod.outlook.com (2603:1096:1:1f::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.14 via Frontend Transport; Wed, 26 Feb 2020 04:46:52 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c42446d6-bbf6-4f42-6527-08d7ba76e802
X-MS-TrafficTypeDiagnostic: AM0PR04MB4291:|AM0PR04MB4291:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB42915D7719A1CAE319A17E9388EA0@AM0PR04MB4291.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(396003)(136003)(39860400002)(189003)(199004)(6486002)(6666004)(316002)(6512007)(9686003)(86362001)(8936002)(2906002)(36756003)(4326008)(8676002)(81156014)(5660300002)(15650500001)(81166006)(52116002)(478600001)(66946007)(956004)(2616005)(66476007)(66556008)(186003)(16526019)(6506007)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4291;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5PniXC5+6E01ItSs5sdyU5k3E1VdH+/ujp6xiQBgJR+xnR6M1UOlHsNncjOkheTRs2I/+dXhI6ffB0JSO4VhE6Jbx6WubtbX2B1xaPmS628mAF6EaY3bf/pOTzaA5w778SPTcSja6BmhXj2CFNoeAmEWQF2Ytyfh6L1eILEj8sZsixCX3ZbGCrWR3HBeW24F2fMn353TQQcTIgIc+HV85A7Rl04dVMq+cV5cDbzo0esonaokXsTse+Mq+woakxBg0LmmLHrF+40RFaGuqwzNYhgo48g5sBHUy+ptN2TmvEXWa0lq36iEf5m9rvVSjBzojuThBL/8IAkaKQWbFwrtB9JULFa+/WlCCqurP4IzY4Aq5pDPWPOLSB5l320abtqHdwJNuMTKlhOLGlB5pLv0PYaIxmxweCEFuMNyTzeA3r0XthN1zME1sTq87TbP6hji
X-MS-Exchange-AntiSpam-MessageData: +jy7j8OatKuy0q0mLBAuAMZAH0a5PJ9P5WGe1NNEQuoGP7iFwR9c+UmjglaVrnEY5r67MiA2LGC+FxfnfMKmvPkBJjNSCk6GsYHwG5fZpAOTXvD4rmqKjzp2CsSxGyoqTaTTROfYvDFI+GtrbNvGcg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c42446d6-bbf6-4f42-6527-08d7ba76e802
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 04:46:55.9851 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7lRtG69iHgeE0nO4c2ZT7rkrF2FOJxR9SlmFVseOWp3TueD6FsXIf5JLq3f4cYe1hBU0gvRMxOwarNCb8xrhrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4291
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_204658_744549_29B6B297 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.61 listed in list.dnswl.org]
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

RnJvbTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+CgppLk1YOC84WCBTQ1UgTVUgaXMgZGVk
aWNhdGVkIGZvciBjb21tdW5pY2F0aW9uIGJldHdlZW4gU0NVIGFuZCBDb3J0ZXgtQQpjb3JlcyBm
cm9tIGhhcmR3YXJlIGRlc2lnbiwgYW5kIGNvdWxkIG5vdCBiZSByZXVzZWQgZm9yIG90aGVyIHB1
cnBvc2UuCgpQZXIgaS5NWDgvOFggUmVmZXJlbmNlIG1hbm51YWwsIENoYXB0ZXIgIjEyLjkuMi4z
LjIgTWVzc2FnaW5nIEV4YW1wbGVzIiwKIFBhc3Npbmcgc2hvcnQgbWVzc2FnZXM6IFRyYW5zbWl0
IHJlZ2lzdGVyKHMpIGNhbiBiZSB1c2VkIHRvIHBhc3MKIHNob3J0IG1lc3NhZ2VzIGZyb20gb25l
IHRvIGZvdXIgd29yZHMgaW4gbGVuZ3RoLiBGb3IgZXhhbXBsZSwgd2hlbgogYSBmb3VyLXdvcmQg
bWVzc2FnZSBpcyBkZXNpcmVkLCBvbmx5IG9uZSBvZiB0aGUgcmVnaXN0ZXJzIG5lZWRzIHRvCiBo
YXZlIGl0cyBjb3JyZXNwb25kaW5nIGludGVycnVwdCBlbmFibGUgYml0IHNldCBhdCB0aGUgcmVj
ZWl2ZXIgc2lkZTsKIHRoZSBtZXNzYWdl4oCZcyBmaXJzdCB0aHJlZSB3b3JkcyBhcmUgd3JpdHRl
biB0byB0aGUgcmVnaXN0ZXJzIHdob3NlCiBpbnRlcnJ1cHQgaXMgbWFza2VkLCBhbmQgdGhlIGZv
dXJ0aCB3b3JkIGlzIHdyaXR0ZW4gdG8gdGhlIG90aGVyCiByZWdpc3RlciAod2hpY2ggdHJpZ2dl
cnMgYW4gaW50ZXJydXB0IGF0IHRoZSByZWNlaXZlciBzaWRlKS4KCmkuTVg4LzhYIFNDVSBmaXJt
d2FyZSBJUEMgaXMgYW4gaW1wbGVtZW50YXRpb24gb2YgcGFzc2luZyBzaG9ydAptZXNzYWdlcy4g
QnV0IGN1cnJlbnQgaW14LW1haWxib3ggZHJpdmVyIG9ubHkgc3VwcG9ydCBvbmUgd29yZAptZXNz
YWdlLCBpLk1YOC84WCBsaW51eCBzaWRlIGZpcm13YXJlIGhhcyB0byByZXF1ZXN0IGZvdXIgVFgK
YW5kIGZvdXIgUlggdG8gc3VwcG9ydCBJUEMgdG8gU0NVIGZpcm13YXJlLiBUaGlzIGlzIGxvdyBl
ZmZpY2VudAphbmQgbW9yZSBpbnRlcnJ1cHRzIHRyaWdnZXJlZCBjb21wYXJlZCB3aXRoIG9uZSBU
WCBhbmQKb25lIFJYLgoKVG8gbWFrZSBTQ1UgTVUgd29yaywKICAtIHBhcnNlIHRoZSBzaXplIG9m
IG1zZy4KICAtIE9ubHkgZW5hYmxlIFRSMC9SUjAgaW50ZXJydXB0IGZvciB0cmFuc21pdC9yZWNl
aXZlIG1lc3NhZ2UuCiAgLSBGb3IgVFgvUlgsIG9ubHkgc3VwcG9ydCBvbmUgVFggY2hhbm5lbCBh
bmQgb25lIFJYIGNoYW5uZWwKClNpZ25lZC1vZmYtYnk6IFBlbmcgRmFuIDxwZW5nLmZhbkBueHAu
Y29tPgotLS0KClYzOgogQWRkZWQgc2N1IHR5cGUgdHgvcnggYW5kIFNDVSBNVSB0eXBlCgogZHJp
dmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMgfCA2NSArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNjQgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jIGIv
ZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMKaW5kZXggOTAxYTM0MzFmZGI1Li40MTY2NGE2
NGM1ZmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jCisrKyBiL2Ry
aXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jCkBAIC00LDYgKzQsNyBAQAogICovCiAKICNpbmNs
dWRlIDxsaW51eC9jbGsuaD4KKyNpbmNsdWRlIDxsaW51eC9maXJtd2FyZS9pbXgvaXBjLmg+CiAj
aW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+CiAjaW5jbHVkZSA8bGludXgvaW8uaD4KICNpbmNs
dWRlIDxsaW51eC9rZXJuZWwuaD4KQEAgLTM4LDExICszOSwxNyBAQCBlbnVtIGlteF9tdV9jaGFu
X3R5cGUgewogCiBlbnVtIGlteF9tdV90eXBlIHsKIAlJTVhfTVVfVFlQRV9HRU5FUklDLAorCUlN
WF9NVV9UWVBFX1NDVSwKIH07CiAKIHN0cnVjdCBpbXhfbXVfcHJpdjsKIHN0cnVjdCBpbXhfbXVf
Y29uX3ByaXY7CiAKK3N0cnVjdCBpbXhfc2NfcnBjX21zZ19tYXggeworCXN0cnVjdCBpbXhfc2Nf
cnBjX21zZyBoZHI7CisJdTMyIGRhdGFbN107Cit9IF9fcGFja2VkIF9fYWxpZ25lZCg0KTs7CisK
IHN0cnVjdCBpbXhfbXVfZGNmZyB7CiAJZW51bSBpbXhfbXVfdHlwZSB0eXBlOwogCWludCAoKnR4
KShzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYsIHN0cnVjdCBpbXhfbXVfY29uX3ByaXYgKmNwLCB2
b2lkICpkYXRhKTsKQEAgLTE0MSw2ICsxNDgsNDggQEAgc3RhdGljIGludCBpbXhfbXVfZ2VuZXJp
Y19yeChzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYsCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBp
bnQgaW14X211X3NjdV90eChzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYsCisJCQkgc3RydWN0IGlt
eF9tdV9jb25fcHJpdiAqY3AsCisJCQkgdm9pZCAqZGF0YSkKK3sKKwlzdHJ1Y3QgaW14X3NjX3Jw
Y19tc2dfbWF4ICptc2cgPSBkYXRhOworCXUzMiAqYXJnID0gZGF0YTsKKwlpbnQgaTsKKworCXN3
aXRjaCAoY3AtPnR5cGUpIHsKKwljYXNlIElNWF9NVV9UWVBFX1RYOgorCQlmb3IgKGkgPSAwOyBp
IDwgbXNnLT5oZHIuc2l6ZTsgaSsrKSB7CisJCQlpbXhfbXVfd3JpdGUocHJpdiwgKmFyZysrLAor
CQkJCSAgICAgcHJpdi0+ZGNmZy0+eFRSW2kgJSA0XSk7CisJCX0KKwkJaW14X211X3hjcl9ybXco
cHJpdiwgSU1YX01VX3hDUl9USUVuKGNwLT5pZHgpLCAwKTsKKwkJYnJlYWs7CisJZGVmYXVsdDoK
KwkJZGV2X3dhcm5fcmF0ZWxpbWl0ZWQocHJpdi0+ZGV2LCAiU2VuZCBkYXRhIG9uIHdyb25nIGNo
YW5uZWwgdHlwZTogJWRcbiIsIGNwLT50eXBlKTsKKwkJcmV0dXJuIC1FSU5WQUw7CisJfQorCisJ
cmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgaW14X211X3NjdV9yeChzdHJ1Y3QgaW14X211X3By
aXYgKnByaXYsCisJCQkgc3RydWN0IGlteF9tdV9jb25fcHJpdiAqY3ApCit7CisJc3RydWN0IGlt
eF9zY19ycGNfbXNnX21heCBtc2c7CisJdTMyICpkYXRhID0gKHUzMiAqKSZtc2c7CisJaW50IGk7
CisKKwlpbXhfbXVfeGNyX3Jtdyhwcml2LCAwLCBJTVhfTVVfeENSX1JJRW4oMCkpOworCSpkYXRh
KysgPSBpbXhfbXVfcmVhZChwcml2LCBwcml2LT5kY2ZnLT54UlJbMF0pOworCWZvciAoaSA9IDE7
IGkgPCBtc2cuaGRyLnNpemU7IGkrKykKKwkJKmRhdGErKyA9IGlteF9tdV9yZWFkKHByaXYsIHBy
aXYtPmRjZmctPnhSUltpICUgNF0pOworCisJaW14X211X3hjcl9ybXcocHJpdiwgSU1YX01VX3hD
Ul9SSUVuKDApLCAwKTsKKwltYm94X2NoYW5fcmVjZWl2ZWRfZGF0YShjcC0+Y2hhbiwgKHZvaWQg
KikmbXNnKTsKKworCXJldHVybiAwOworfQorCiBzdGF0aWMgdm9pZCBpbXhfbXVfdHhkYl90YXNr
bGV0KHVuc2lnbmVkIGxvbmcgZGF0YSkKIHsKIAlzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICpjcCA9
IChzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICopZGF0YTsKQEAgLTI3NCw2ICszMjMsNyBAQCBzdGF0
aWMgc3RydWN0IG1ib3hfY2hhbiAqIGlteF9tdV94bGF0ZShzdHJ1Y3QgbWJveF9jb250cm9sbGVy
ICptYm94LAogCQkJCSAgICAgICBjb25zdCBzdHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzICpzcCkKIHsK
IAl1MzIgdHlwZSwgaWR4LCBjaGFuOworCXN0cnVjdCBpbXhfbXVfcHJpdiAqcHJpdiA9IHRvX2lt
eF9tdV9wcml2KG1ib3gpOwogCiAJaWYgKHNwLT5hcmdzX2NvdW50ICE9IDIpIHsKIAkJZGV2X2Vy
cihtYm94LT5kZXYsICJJbnZhbGlkIGFyZ3VtZW50IGNvdW50ICVkXG4iLCBzcC0+YXJnc19jb3Vu
dCk7CkBAIC0yODQsNyArMzM0LDkgQEAgc3RhdGljIHN0cnVjdCBtYm94X2NoYW4gKiBpbXhfbXVf
eGxhdGUoc3RydWN0IG1ib3hfY29udHJvbGxlciAqbWJveCwKIAlpZHggPSBzcC0+YXJnc1sxXTsg
LyogaW5kZXggKi8KIAljaGFuID0gdHlwZSAqIDQgKyBpZHg7CiAKLQlpZiAoY2hhbiA+PSBtYm94
LT5udW1fY2hhbnMpIHsKKwlpZiAoY2hhbiA+PSBtYm94LT5udW1fY2hhbnMgfHwKKwkgICAgKHBy
aXYtPmRjZmctPnR5cGUgPT0gSU1YX01VX1RZUEVfU0NVICYmCisJICAgICB0eXBlIDwgSU1YX01V
X1RZUEVfVFhEQiAmJiBpZHggPiAwKSkgewogCQlkZXZfZXJyKG1ib3gtPmRldiwgIk5vdCBzdXBw
b3J0ZWQgY2hhbm5lbCBudW1iZXI6ICVkLiAodHlwZTogJWQsIGlkeDogJWQpXG4iLCBjaGFuLCB0
eXBlLCBpZHgpOwogCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKIAl9CkBAIC00MDEsOSArNDUz
LDIwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW14X211X2RjZmcgaW14X211X2NmZ19pbXg3dWxw
ID0gewogCS54Q1IJPSAweDY0LAogfTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBpbXhfbXVfZGNm
ZyBpbXhfbXVfY2ZnX2lteDhfc2N1ID0geworCS50eXBlCT0gSU1YX01VX1RZUEVfU0NVLAorCS50
eAk9IGlteF9tdV9zY3VfdHgsCisJLnJ4CT0gaW14X211X3NjdV9yeCwKKwkueFRSCT0gezB4MCwg
MHg0LCAweDgsIDB4Y30sCisJLnhSUgk9IHsweDEwLCAweDE0LCAweDE4LCAweDFjfSwKKwkueFNS
CT0gMHgyMCwKKwkueENSCT0gMHgyNCwKK307CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2
aWNlX2lkIGlteF9tdV9kdF9pZHNbXSA9IHsKIAl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg3dWxw
LW11IiwgLmRhdGEgPSAmaW14X211X2NmZ19pbXg3dWxwIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJm
c2wsaW14NnN4LW11IiwgLmRhdGEgPSAmaW14X211X2NmZ19pbXg2c3ggfSwKKwl7IC5jb21wYXRp
YmxlID0gImZzbCxpbXg4LW11LXNjdSIsIC5kYXRhID0gJmlteF9tdV9jZmdfaW14OF9zY3UgfSwK
IAl7IH0sCiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgaW14X211X2R0X2lkcyk7Ci0tIAoy
LjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
