Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98601177068
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 08:50:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+3gp4PFB0IgZ+d6h8Wr1/c6iOCoTzU/Eqo6mspKIYo=; b=EPvGmUrYrd+CW+
	Awr7o0n7St+fQpQN9/c4wDcHl0PRNOjR+ecfqpsjPwHL5BBnS53j8qgiFNfclYWuTaSx3Y5Hkov60
	ziNzeuUcLkMiMOW49s+VrTyUX8NDq2fZfgPFsNF/29nouxqi0aPIESprySuQu/J5YVgXjvLDuA53/
	x4Zx03JR5e6ATok3RCEjREZDU+VlhYJ4492uOjcoeF6uUgCYzoWTEcAzco6DkXU020HFAYQ6nn0fO
	/ZwKD0Nzl4ePjrAIaT0TPm2bX96wpNY58ussQq+LGd1WkgcmFvHYkyiIqQgUxMUoOO1aWmKf3qfOm
	/dxBQy1LY2pL/C4HFZNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j92Jk-0003Qh-Ra; Tue, 03 Mar 2020 07:50:16 +0000
Received: from mail-eopbgr80080.outbound.protection.outlook.com ([40.107.8.80]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j92Is-0002qu-Gd
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 07:49:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k0F1j6bKQ5CSdPFekC0wp+cu5XKaKIn4xcHjBWEksQir7RM745nDfdmnkkEXEnpRByPZtWTkL5rszdUGspYVB42UdnNRts1fM+ItF3a8T+OPE8G1/63tdi8jyX2AWNXu/TOklzb+tAYi9JMZJHWoc6veMqR7kkPeLqCm7EKkQDOZVq0yOsCODsrtVWdYqi69BZeiYA3ZUZROu4bZH4IE2hSIVXthJvcotM+VJe9fHQm2ZEgJ7dDgoar/PNi3GJLV9m14lUQKq25mw0oZuu48UT2Za1DXilJudiqQuuk6JXSBG1rCHIP9opzLl8C/bfpxTbB6W6R4k7FeCuYNCKutbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yR6NoMNKXabg6OTqBIWDJz+MgXVJhEXf5bMTknGSLRU=;
 b=HgRWNpOWuZGLnHqRXqEh87lLDxM1EuMjQqHF3K+NJYk/CGCPp9SlZ3n7wHSxACBn25fFez1HTQw/GJavXmlX9KcBzKXf9p9K1/GTDNH3hEAh7bXnjxZzfRus5B8GB7hFBcEAqyJDXDPbYKHdZryARM+Wl7A5cxj0RErkJOenDCxYBDw/mklzNiIXG9Gip6d2+kqFhwu2ZHAAzDKEqecZfcqwfL3DRI5Spi0eLtqRjiRGgA4PgfbVa6I5LwUTB9uwpVKyDN/nisoDp8jEH+90YA9zDuPjIjDiXD1XuA1wRZejgmoJ9cDD1b4dRjwt/XigKJ1CEvVjZ8ZiRY4hV4ksHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yR6NoMNKXabg6OTqBIWDJz+MgXVJhEXf5bMTknGSLRU=;
 b=QABnGxlBJK2A4v774WrKNdbWayoaf3G80gt1J3IVei2un2hsocsfRTbkg1IH7RdmYWo5Bf1M3a91dHQWz25rAPUWYS+TsxER/c7DIHNWuDlp+hr3gW6/D9BcPK5k41OPg3F6kEbMUud/ilGY2snHBKMifNlrq7YXbmzQlsYsBgE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4114.eurprd04.prod.outlook.com (52.134.94.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Tue, 3 Mar 2020 07:49:18 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 07:49:18 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de
Subject: [PATCH V5 3/4] mailbox: imx: add SCU MU support
Date: Tue,  3 Mar 2020 15:42:38 +0800
Message-Id: <1583221359-9285-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583221359-9285-1-git-send-email-peng.fan@nxp.com>
References: <1583221359-9285-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0250.apcprd06.prod.outlook.com
 (2603:1096:4:ac::34) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0250.apcprd06.prod.outlook.com (2603:1096:4:ac::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.15 via Frontend Transport; Tue, 3 Mar 2020 07:49:14 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: eba23cdc-e7be-4d11-2127-08d7bf47608d
X-MS-TrafficTypeDiagnostic: AM0PR04MB4114:|AM0PR04MB4114:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB411475123A8C1827313B5FE788E40@AM0PR04MB4114.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 03319F6FEF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(366004)(199004)(189003)(8936002)(52116002)(9686003)(6486002)(5660300002)(6512007)(8676002)(66946007)(81166006)(66556008)(66476007)(81156014)(26005)(36756003)(6666004)(956004)(478600001)(86362001)(4326008)(2906002)(2616005)(316002)(16526019)(6506007)(186003)(15650500001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4114;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a5tuPIka5EBUfwgiWsvrjFtN7iSN1gUjd5euljJSNWmFN11hLUdQf/4YmISDwpHWA75LPxb7l9oONj1ZPPXk4FXHYL+A4HzjE5k9ceEPoDTwb/y4y6hzUoS6GTVcslbyXG+KyYyroUpStR2vWZMqWTLnX//byzsquA43aDIl04Sk5FP2cwxkSWPmOE887R9E+fi1z1nA2TBbpKmiDkn4TjyxlFc/9X7RUGQgwhDd6j6zM/xPMLbV16m4zCtZN9OrugRot9UFM/a6XJfVazUe/vFv5hfZ3X9zHSL3+d1LMn6sFrXYpM3ClunlFZsVGEmVrUSFDqK1YSnlxf3eVp/bXNSHWHsN9DFVdAUVKsHRL4A2wx0iJHgCCyGoKkgZCisl7d/renIAvzUknonVQ5GGuJFdlmVXsbQl8xXxq21VS/c2tzUQ1QDKxysF3964QNFB
X-MS-Exchange-AntiSpam-MessageData: 4Qdfr70ELA/DqyljOSEeIg8deOIpV8pSvruWs52zL+sSnyc+ZwiKmY/gFtG4UN6oaxC1wsjbIEQDaG06wu/nM6kMMz1fUPA3KIHl7sqoh9OsVw1lv8HMUCFjdx2UzlXn0SdFCDCQk0t9J0pd964KpQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eba23cdc-e7be-4d11-2127-08d7bf47608d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2020 07:49:18.3377 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WSjg2JG8k68XlImRQ76fKYx5c4VsW42EP8Gtmz0euIVl0yXe2PSrnrncO0ve5gvsYcLflLGILz+/DzX5IGq6iQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_234922_597217_2E8C75E2 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
bmQgb25lIFJYIGNoYW5uZWwKICAtIEZvciBSWCwgc3VwcG9ydCByZWNlaXZlIG1zZyBsYXJnZXIg
dGhhbiA0IHUzMiB3b3Jkcy4KICAtIFN1cHBvcnQgNiBjaGFubmVscywgVFgwL1JYMC9SWERCWzAt
M10sIG5vdCBzdXBwb3J0IFRYREIuCgpTaWduZWQtb2ZmLWJ5OiBQZW5nIEZhbiA8cGVuZy5mYW5A
bnhwLmNvbT4KLS0tClY1OgogQ29kZSBzdHlsZSBjbGVhbnVwCiBBZGQgbW9yZSBkZWJ1ZyBtc2cK
IERyb3AgX19wYWNrZWQgYWxpZ25lZAogaWR4IHNhbnRpdHkgY2hlY2sgaW4gc2N1IHhsYXRlCgpW
NDoKIEFkZGVkIHNlcGFyYXRlIGNoYW5zIGluaXQgYW5kIHhsYXRlIGZ1bmN0aW9uIGZvciBTQ1Ug
TVUKIExpbWl0IGNoYW5zIHRvIFRYMC9SWDAvUlhEQlswLTNdLCBtYXggNiBjaGFucy4KIFNhbnRp
dHkgY2hlY2sgdG8gbXNnIHNpemUKClYzOgogQWRkZWQgc2N1IHR5cGUgdHgvcnggYW5kIFNDVSBN
VSB0eXBlCgogZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMgfCAxMzQgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTM0IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYyBiL2Ry
aXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jCmluZGV4IGRmNmM0ZWNkOTEzYy4uM2YyOGM3Njlh
MWMxIDEwMDY0NAotLS0gYS9kcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYworKysgYi9kcml2
ZXJzL21haWxib3gvaW14LW1haWxib3guYwpAQCAtNCw2ICs0LDcgQEAKICAqLwogCiAjaW5jbHVk
ZSA8bGludXgvY2xrLmg+CisjaW5jbHVkZSA8bGludXgvZmlybXdhcmUvaW14L2lwYy5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgogI2luY2x1ZGUgPGxpbnV4L2lvLmg+CiAjaW5jbHVk
ZSA8bGludXgva2VybmVsLmg+CkBAIC0yNyw2ICsyOCw4IEBACiAjZGVmaW5lIElNWF9NVV94Q1Jf
R0lSbih4KQlCSVQoMTYgKyAoMyAtICh4KSkpCiAKICNkZWZpbmUgSU1YX01VX0NIQU5TCQkxNgor
LyogVFgwL1JYMC9SWERCWzAtM10gKi8KKyNkZWZpbmUgSU1YX01VX1NDVV9DSEFOUwk2CiAjZGVm
aW5lIElNWF9NVV9DSEFOX05BTUVfU0laRQkyMAogCiBlbnVtIGlteF9tdV9jaGFuX3R5cGUgewpA
QCAtMzYsNiArMzksMTEgQEAgZW51bSBpbXhfbXVfY2hhbl90eXBlIHsKIAlJTVhfTVVfVFlQRV9S
WERCLAkvKiBSeCBkb29yYmVsbCAqLwogfTsKIAorc3RydWN0IGlteF9zY19ycGNfbXNnX21heCB7
CisJc3RydWN0IGlteF9zY19ycGNfbXNnIGhkcjsKKwl1MzIgZGF0YVs3XTsKK307CisKIHN0cnVj
dCBpbXhfbXVfY29uX3ByaXYgewogCXVuc2lnbmVkIGludAkJaWR4OwogCWNoYXIJCQlpcnFfZGVz
Y1tJTVhfTVVfQ0hBTl9OQU1FX1NJWkVdOwpAQCAtMTM0LDYgKzE0Miw2MyBAQCBzdGF0aWMgaW50
IGlteF9tdV9nZW5lcmljX3J4KHN0cnVjdCBpbXhfbXVfcHJpdiAqcHJpdiwKIAlyZXR1cm4gMDsK
IH0KIAorc3RhdGljIGludCBpbXhfbXVfc2N1X3R4KHN0cnVjdCBpbXhfbXVfcHJpdiAqcHJpdiwK
KwkJCSBzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICpjcCwKKwkJCSB2b2lkICpkYXRhKQoreworCXN0
cnVjdCBpbXhfc2NfcnBjX21zZ19tYXggKm1zZyA9IGRhdGE7CisJdTMyICphcmcgPSBkYXRhOwor
CWludCBpOworCisJc3dpdGNoIChjcC0+dHlwZSkgeworCWNhc2UgSU1YX01VX1RZUEVfVFg6CisJ
CWlmIChtc2ctPmhkci5zaXplID4gc2l6ZW9mKCptc2cpKSB7CisJCQkvKgorCQkJICogVGhlIHJl
YWwgbWVzc2FnZSBzaXplIGNhbiBiZSBkaWZmZXJlbnQgdG8KKwkJCSAqIHN0cnVjdCBpbXhfc2Nf
cnBjX21zZ19tYXggc2l6ZQorCQkJICovCisJCQlkZXZfZXJyKHByaXYtPmRldiwgIkV4Y2VlZCBt
YXggbXNnIHNpemUgKCVsaSkgb24gVFgsIGdvdDogJWlcbiIsIHNpemVvZigqbXNnKSwgbXNnLT5o
ZHIuc2l6ZSk7CisJCQlyZXR1cm4gLUVJTlZBTDsKKwkJfQorCisJCWZvciAoaSA9IDA7IGkgPCBt
c2ctPmhkci5zaXplOyBpKyspCisJCQlpbXhfbXVfd3JpdGUocHJpdiwgKmFyZysrLCBwcml2LT5k
Y2ZnLT54VFJbaSAlIDRdKTsKKworCQlpbXhfbXVfeGNyX3Jtdyhwcml2LCBJTVhfTVVfeENSX1RJ
RW4oY3AtPmlkeCksIDApOworCQlicmVhazsKKwlkZWZhdWx0OgorCQlkZXZfd2Fybl9yYXRlbGlt
aXRlZChwcml2LT5kZXYsICJTZW5kIGRhdGEgb24gd3JvbmcgY2hhbm5lbCB0eXBlOiAlZFxuIiwg
Y3AtPnR5cGUpOworCQlyZXR1cm4gLUVJTlZBTDsKKwl9CisKKwlyZXR1cm4gMDsKK30KKworc3Rh
dGljIGludCBpbXhfbXVfc2N1X3J4KHN0cnVjdCBpbXhfbXVfcHJpdiAqcHJpdiwKKwkJCSBzdHJ1
Y3QgaW14X211X2Nvbl9wcml2ICpjcCkKK3sKKwlzdHJ1Y3QgaW14X3NjX3JwY19tc2dfbWF4IG1z
ZzsKKwl1MzIgKmRhdGEgPSAodTMyICopJm1zZzsKKwlpbnQgaTsKKworCWlteF9tdV94Y3Jfcm13
KHByaXYsIDAsIElNWF9NVV94Q1JfUklFbigwKSk7CisJKmRhdGErKyA9IGlteF9tdV9yZWFkKHBy
aXYsIHByaXYtPmRjZmctPnhSUlswXSk7CisKKwlpZiAobXNnLmhkci5zaXplID4gc2l6ZW9mKG1z
ZykpIHsKKwkJZGV2X2Vycihwcml2LT5kZXYsICJFeGNlZWQgbWF4IG1zZyBzaXplICglbGkpIG9u
IFJYLCBnb3Q6ICVpXG4iLAorCQkJc2l6ZW9mKG1zZyksIG1zZy5oZHIuc2l6ZSk7CisJCXJldHVy
biAtRUlOVkFMOworCX0KKworCWZvciAoaSA9IDE7IGkgPCBtc2cuaGRyLnNpemU7IGkrKykKKwkJ
KmRhdGErKyA9IGlteF9tdV9yZWFkKHByaXYsIHByaXYtPmRjZmctPnhSUltpICUgNF0pOworCisJ
aW14X211X3hjcl9ybXcocHJpdiwgSU1YX01VX3hDUl9SSUVuKDApLCAwKTsKKwltYm94X2NoYW5f
cmVjZWl2ZWRfZGF0YShjcC0+Y2hhbiwgKHZvaWQgKikmbXNnKTsKKworCXJldHVybiAwOworfQor
CiBzdGF0aWMgdm9pZCBpbXhfbXVfdHhkYl90YXNrbGV0KHVuc2lnbmVkIGxvbmcgZGF0YSkKIHsK
IAlzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICpjcCA9IChzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICop
ZGF0YTsKQEAgLTI2Myw2ICszMjgsNDIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBtYm94X2NoYW5f
b3BzIGlteF9tdV9vcHMgPSB7CiAJLnNodXRkb3duID0gaW14X211X3NodXRkb3duLAogfTsKIAor
c3RhdGljIHN0cnVjdCBtYm94X2NoYW4gKmlteF9tdV9zY3VfeGxhdGUoc3RydWN0IG1ib3hfY29u
dHJvbGxlciAqbWJveCwKKwkJCQkJICBjb25zdCBzdHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzICpzcCkK
K3sKKwl1MzIgdHlwZSwgaWR4LCBjaGFuOworCisJaWYgKHNwLT5hcmdzX2NvdW50ICE9IDIpIHsK
KwkJZGV2X2VycihtYm94LT5kZXYsICJJbnZhbGlkIGFyZ3VtZW50IGNvdW50ICVkXG4iLCBzcC0+
YXJnc19jb3VudCk7CisJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOworCX0KKworCXR5cGUgPSBz
cC0+YXJnc1swXTsgLyogY2hhbm5lbCB0eXBlICovCisJaWR4ID0gc3AtPmFyZ3NbMV07IC8qIGlu
ZGV4ICovCisKKwlzd2l0Y2ggKHR5cGUpIHsKKwljYXNlIElNWF9NVV9UWVBFX1RYOgorCWNhc2Ug
SU1YX01VX1RZUEVfUlg6CisJCWlmIChpZHggIT0gMCkKKwkJCWRldl9lcnIobWJveC0+ZGV2LCAi
SW52YWxpZCBjaGFuIGlkeDogJWRcbiIsIGlkeCk7CisJCWNoYW4gPSB0eXBlOworCQlicmVhazsK
KwljYXNlIElNWF9NVV9UWVBFX1JYREI6CisJCWNoYW4gPSAyICsgaWR4OworCQlicmVhazsKKwlk
ZWZhdWx0OgorCQlkZXZfZXJyKG1ib3gtPmRldiwgIkludmFsaWQgY2hhbiB0eXBlOiAlZFxuIiwg
dHlwZSk7CisJCXJldHVybiBOVUxMOworCX0KKworCWlmIChjaGFuID49IG1ib3gtPm51bV9jaGFu
cykgeworCQlkZXZfZXJyKG1ib3gtPmRldiwgIk5vdCBzdXBwb3J0ZWQgY2hhbm5lbCBudW1iZXI6
ICVkLiAodHlwZTogJWQsIGlkeDogJWQpXG4iLCBjaGFuLCB0eXBlLCBpZHgpOworCQlyZXR1cm4g
RVJSX1BUUigtRUlOVkFMKTsKKwl9CisKKwlyZXR1cm4gJm1ib3gtPmNoYW5zW2NoYW5dOworfQor
CiBzdGF0aWMgc3RydWN0IG1ib3hfY2hhbiAqIGlteF9tdV94bGF0ZShzdHJ1Y3QgbWJveF9jb250
cm9sbGVyICptYm94LAogCQkJCSAgICAgICBjb25zdCBzdHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzICpz
cCkKIHsKQEAgLTMxMCw2ICs0MTEsMjggQEAgc3RhdGljIHZvaWQgaW14X211X2luaXRfZ2VuZXJp
YyhzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYpCiAJaW14X211X3dyaXRlKHByaXYsIDAsIHByaXYt
PmRjZmctPnhDUik7CiB9CiAKK3N0YXRpYyB2b2lkIGlteF9tdV9pbml0X3NjdShzdHJ1Y3QgaW14
X211X3ByaXYgKnByaXYpCit7CisJdW5zaWduZWQgaW50IGk7CisKKwlmb3IgKGkgPSAwOyBpIDwg
SU1YX01VX1NDVV9DSEFOUzsgaSsrKSB7CisJCXN0cnVjdCBpbXhfbXVfY29uX3ByaXYgKmNwID0g
JnByaXYtPmNvbl9wcml2W2ldOworCisJCWNwLT5pZHggPSBpIDwgMiA/IDAgOiBpIC0gMjsKKwkJ
Y3AtPnR5cGUgPSBpIDwgMiA/IGkgOiBJTVhfTVVfVFlQRV9SWERCOworCQljcC0+Y2hhbiA9ICZw
cml2LT5tYm94X2NoYW5zW2ldOworCQlwcml2LT5tYm94X2NoYW5zW2ldLmNvbl9wcml2ID0gY3A7
CisJCXNucHJpbnRmKGNwLT5pcnFfZGVzYywgc2l6ZW9mKGNwLT5pcnFfZGVzYyksCisJCQkgImlt
eF9tdV9jaGFuWyVpLSVpXSIsIGNwLT50eXBlLCBjcC0+aWR4KTsKKwl9CisKKwlwcml2LT5tYm94
Lm51bV9jaGFucyA9IElNWF9NVV9TQ1VfQ0hBTlM7CisJcHJpdi0+bWJveC5vZl94bGF0ZSA9IGlt
eF9tdV9zY3VfeGxhdGU7CisKKwkvKiBTZXQgZGVmYXVsdCBNVSBjb25maWd1cmF0aW9uICovCisJ
aW14X211X3dyaXRlKHByaXYsIDAsIHByaXYtPmRjZmctPnhDUik7Cit9CisKIHN0YXRpYyBpbnQg
aW14X211X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IGRl
dmljZSAqZGV2ID0gJnBkZXYtPmRldjsKQEAgLTM5Niw5ICs1MTksMjAgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBpbXhfbXVfZGNmZyBpbXhfbXVfY2ZnX2lteDd1bHAgPSB7CiAJLnhDUgk9IDB4NjQs
CiB9OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IGlteF9tdV9kY2ZnIGlteF9tdV9jZmdfaW14OF9z
Y3UgPSB7CisJLnR4CT0gaW14X211X3NjdV90eCwKKwkucngJPSBpbXhfbXVfc2N1X3J4LAorCS5p
bml0CT0gaW14X211X2luaXRfc2N1LAorCS54VFIJPSB7MHgwLCAweDQsIDB4OCwgMHhjfSwKKwku
eFJSCT0gezB4MTAsIDB4MTQsIDB4MTgsIDB4MWN9LAorCS54U1IJPSAweDIwLAorCS54Q1IJPSAw
eDI0LAorfTsKKwogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgaW14X211X2R0X2lk
c1tdID0gewogCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDd1bHAtbXUiLCAuZGF0YSA9ICZpbXhf
bXVfY2ZnX2lteDd1bHAgfSwKIAl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg2c3gtbXUiLCAuZGF0
YSA9ICZpbXhfbXVfY2ZnX2lteDZzeCB9LAorCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDgtbXUt
c2N1IiwgLmRhdGEgPSAmaW14X211X2NmZ19pbXg4X3NjdSB9LAogCXsgfSwKIH07CiBNT0RVTEVf
REVWSUNFX1RBQkxFKG9mLCBpbXhfbXVfZHRfaWRzKTsKLS0gCjIuMTYuNAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
