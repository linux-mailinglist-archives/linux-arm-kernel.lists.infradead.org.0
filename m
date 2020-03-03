Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948AC176A4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 03:00:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BrV9Mjhbp0qT0cfEYO3oGIaQLAv5b551Xi950QSfV0g=; b=S6UbpawCYIGt97
	fSPWy+DfRELlzzIGKNhdiHuY0JYb1d+bnWWO50WKxD6/WX6nB1D6pF7kasZ05vH4k5yvRU2/3cu2d
	U2MdOnOjptMtoPLTFvftE13WhYbzW+IYOm2oERMXzkg8jqQ8dLeRp/jWVZ5mRlO8ix+MZBDqr3Yxr
	qMZ2C6zz97IECsdk5aVIsVZ1uSAXYTVkfwNx72XtyuX8Ypj+2hUuqvvaMz49K86cA49q/OZLTOak7
	RYPmGyTIdVMh9ImCl6dyFV/S2gJWmoNhyBVm3zw+Da1CVIE8or+XNRVbtRzQFEtUc5YispFafPw/O
	RyiUTRiFXKXqqU1I6CKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8wrL-0004S4-0P; Tue, 03 Mar 2020 02:00:35 +0000
Received: from mail-eopbgr70057.outbound.protection.outlook.com ([40.107.7.57]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8wqJ-0002Tj-NI
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 01:59:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=biwYjjqF/1g3h6/yM7Pf6uw/OiPcW79BOnnhLTdUOw2dvh8VbYPzq3zJZ1CyO+xVK9vzXKtnauHByHzfFFM4W89pj6ytPw34mugxtGkrj0IRp+9jrL6NduFqZdw4wuSiIsne6dW4JPOOyu4DHYrKZEBptGCl2Ji8RLJInBPwgGw4FNelVsBUjCFnJVNhAuUpsz0oSKGOAmWLtYtuq/I3D3kvF+VEPzatbWHsYSo8TYKCO5+c3khRxnO7lWo9hqU/+YsAp5icm1VfeCPz5HugEEwogPXYF0OJ67V88FmuGywUHxOQwoMQz8qMPSJEiMkosdUZyhrOZYvJ2cfERrIOXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=60ZizmtAEIKQLjv6E0CJQAJdVGhHruo6JrucSzfgi6c=;
 b=ImE9bELW1cpDrZee+iClvtajPSxNyXjHQ1suoUJeVNg7Bv6PXKEi3Ml+3HJaMZ0f131LV7LysxnR2ZoczfcezQXSvJMGAAnh2mte0r0tc7KF9B4JOcONdL9gzGQXA0ZXn4Ng5189zAGfInNV4oMhWOKET8BGfZabQSYx3HUP/hUW7nPWyBiH3kAOOvPucQBkzLH9lTO6pMLGbgQYUPjAuKG7/xs69PGsklXb5k89bqT64KDZV9YwTKb5cP6qAKvDwtPX+9GA3H8A4FtFE50k5VcEJmiYS7ZIxO5OYYTjkzBhniD7aTJoNEQYBS8yi1UU4IcswfEDnRyCxTMCsWveaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=60ZizmtAEIKQLjv6E0CJQAJdVGhHruo6JrucSzfgi6c=;
 b=drMS6vTcG3eKsujqqQoAwzPx5XFeqFT4CLNArecAjM4Gu86BFJ3K9//ANDIc4UamXZMnS0YGb30U6oZjoU1nSy2LKHCqyIWjCekCvdHItsBaOMbGzHDsCMw6ViJzYMd3EfFabXQYUE7l4pDWwlrIztOHNmIz1SPVmzE4k173cUM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7057.eurprd04.prod.outlook.com (10.186.131.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Tue, 3 Mar 2020 01:59:30 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 01:59:30 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de
Subject: [PATCH V4 3/4] mailbox: imx: add SCU MU support
Date: Tue,  3 Mar 2020 09:52:59 +0800
Message-Id: <1583200380-15623-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583200380-15623-1-git-send-email-peng.fan@nxp.com>
References: <1583200380-15623-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR04CA0147.apcprd04.prod.outlook.com
 (2603:1096:3:16::31) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR04CA0147.apcprd04.prod.outlook.com (2603:1096:3:16::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.18 via Frontend Transport; Tue, 3 Mar 2020 01:59:26 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e8a712f1-770e-45da-6e22-08d7bf1682c5
X-MS-TrafficTypeDiagnostic: AM0PR04MB7057:|AM0PR04MB7057:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB70570C6C043BF1148EA931D388E40@AM0PR04MB7057.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 03319F6FEF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(346002)(396003)(376002)(189003)(199004)(9686003)(6512007)(2906002)(15650500001)(6666004)(6506007)(26005)(956004)(81156014)(81166006)(8936002)(52116002)(186003)(6486002)(2616005)(4326008)(16526019)(66946007)(66476007)(8676002)(478600001)(66556008)(86362001)(36756003)(316002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7057;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZYSON2gPvSmTZnRPm1TeJQgSZ0cHMiGW2ra/ZBPUBCXHfsQCwVIiDjjkNhDFXD3uQjthvm60u3l/1GuZm/yP/uxWS8oowLmKW03pcVtto7yPLHqTVSanPZG7+nAc+XpRw7V7s/D4/KDDCeXPMzEM4gQBoRnIzez2usldPOJwVf01fT+EKwoH88yhMGQLdJY0MRb3VhcDl+bqY1m6tnfMrX/3TUkTYFFBViDhw/A947azECBrx1qfjfREaKcnAKR31IuJDTlPZM3njTB2HzcNi1H0VIvPgV76aG8AU50t4SzCqhEEnS0AXi23wREQR68YGpWV9DuSPOjgc/wVR+i1zeMjrLC/DPMpq7djw9UEFID187EEaOA7HzKDV6asInvdN/FPlJyfVlay3D8TEYmw1hk2SqeGDqCa1jfJc4ZDDEa6TLKlOpuX0cynhSTzzR4Z
X-MS-Exchange-AntiSpam-MessageData: 7BRbnQOXxbT3QIUBD2lUPjYGTNuB61WH+v0yJviYPzjmBEyQgV5wtWie96wbqC0dEztwMuU2OaNfsufnU5xRJSckLGIgX1bgNj5uLVcYMio5gXVkCa30ibMltGcjbhErwuS0sk6TSOX6CaJokcDWDA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8a712f1-770e-45da-6e22-08d7bf1682c5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2020 01:59:30.3835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q4DEzeYI1SH4iAzPN6CBMhm05FG235kEicXdkZizGM/oaieLccuX7vr7va3kgjCmC4ur+hQa1214f0NW1qL3Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_175931_774110_36BAC5C2 
X-CRM114-Status: GOOD (  19.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.57 listed in list.dnswl.org]
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
bnhwLmNvbT4KLS0tClY0OgogQWRkZWQgc2VwYXJhdGUgY2hhbnMgaW5pdCBhbmQgeGxhdGUgZnVu
Y3Rpb24gZm9yIFNDVSBNVQogTGltaXQgY2hhbnMgdG8gVFgwL1JYMC9SWERCWzAtM10sIG1heCA2
IGNoYW5zLgogU2FudGl0eSBjaGVjayB0byBtc2cgc2l6ZQoKVjM6CiBBZGRlZCBzY3UgdHlwZSB0
eC9yeCBhbmQgU0NVIE1VIHR5cGUKCiBkcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYyB8IDEy
OCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFu
Z2VkLCAxMjcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWFpbGJveC9pbXgtbWFpbGJveC5jIGIvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMK
aW5kZXggZTk4ZjM1NTBmOTk1Li5mYmRjZDY4ZDg0OTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWFp
bGJveC9pbXgtbWFpbGJveC5jCisrKyBiL2RyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jCkBA
IC00LDYgKzQsNyBAQAogICovCiAKICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KKyNpbmNsdWRlIDxs
aW51eC9maXJtd2FyZS9pbXgvaXBjLmg+CiAjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+CiAj
aW5jbHVkZSA8bGludXgvaW8uaD4KICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KQEAgLTI3LDYg
KzI4LDggQEAKICNkZWZpbmUgSU1YX01VX3hDUl9HSVJuKHgpCUJJVCgxNiArICgzIC0gKHgpKSkK
IAogI2RlZmluZSBJTVhfTVVfQ0hBTlMJCTE2CisvKiBUWDAvUlgwL1JYREJbMC0zXSAqLworI2Rl
ZmluZSBJTVhfTVVfU0NVX0NIQU5TCTYKICNkZWZpbmUgSU1YX01VX0NIQU5fTkFNRV9TSVpFCTIw
CiAKIGVudW0gaW14X211X2NoYW5fdHlwZSB7CkBAIC0zOSw2ICs0MiwxMSBAQCBlbnVtIGlteF9t
dV9jaGFuX3R5cGUgewogc3RydWN0IGlteF9tdV9wcml2Owogc3RydWN0IGlteF9tdV9jb25fcHJp
djsKIAorc3RydWN0IGlteF9zY19ycGNfbXNnX21heCB7CisJc3RydWN0IGlteF9zY19ycGNfbXNn
IGhkcjsKKwl1MzIgZGF0YVs3XTsKK30gX19wYWNrZWQgX19hbGlnbmVkKDQpOworCiBzdHJ1Y3Qg
aW14X211X2RjZmcgewogCWludCAoKnR4KShzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYsIHN0cnVj
dCBpbXhfbXVfY29uX3ByaXYgKmNwLCB2b2lkICpkYXRhKTsKIAlpbnQgKCpyeCkoc3RydWN0IGlt
eF9tdV9wcml2ICpwcml2LCBzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICpjcCk7CkBAIC0xMzYsNiAr
MTQ0LDU2IEBAIHN0YXRpYyBpbnQgaW14X211X2dlbmVyaWNfcngoc3RydWN0IGlteF9tdV9wcml2
ICpwcml2LAogCXJldHVybiAwOwogfQogCitzdGF0aWMgaW50IGlteF9tdV9zY3VfdHgoc3RydWN0
IGlteF9tdV9wcml2ICpwcml2LAorCQkJIHN0cnVjdCBpbXhfbXVfY29uX3ByaXYgKmNwLAorCQkJ
IHZvaWQgKmRhdGEpCit7CisJc3RydWN0IGlteF9zY19ycGNfbXNnX21heCAqbXNnID0gZGF0YTsK
Kwl1MzIgKmFyZyA9IGRhdGE7CisJaW50IGk7CisKKwlzd2l0Y2ggKGNwLT50eXBlKSB7CisJY2Fz
ZSBJTVhfTVVfVFlQRV9UWDoKKwkJaWYgKG1zZy0+aGRyLnNpemUgPiBzaXplb2Yoc3RydWN0IGlt
eF9zY19ycGNfbXNnX21heCkpIHsKKwkJCWRldl9lcnIocHJpdi0+ZGV2LCAiRXhjZWVkIG1heCBt
c2cgc2l6ZVxuIik7CisJCQlyZXR1cm4gLUVJTlZBTDsKKwkJfQorCQlmb3IgKGkgPSAwOyBpIDwg
bXNnLT5oZHIuc2l6ZTsgaSsrKSB7CisJCQlpbXhfbXVfd3JpdGUocHJpdiwgKmFyZysrLAorCQkJ
CSAgICAgcHJpdi0+ZGNmZy0+eFRSW2kgJSA0XSk7CisJCX0KKwkJaW14X211X3hjcl9ybXcocHJp
diwgSU1YX01VX3hDUl9USUVuKGNwLT5pZHgpLCAwKTsKKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJ
ZGV2X3dhcm5fcmF0ZWxpbWl0ZWQocHJpdi0+ZGV2LCAiU2VuZCBkYXRhIG9uIHdyb25nIGNoYW5u
ZWwgdHlwZTogJWRcbiIsIGNwLT50eXBlKTsKKwkJcmV0dXJuIC1FSU5WQUw7CisJfQorCisJcmV0
dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgaW14X211X3NjdV9yeChzdHJ1Y3QgaW14X211X3ByaXYg
KnByaXYsCisJCQkgc3RydWN0IGlteF9tdV9jb25fcHJpdiAqY3ApCit7CisJc3RydWN0IGlteF9z
Y19ycGNfbXNnX21heCBtc2c7CisJdTMyICpkYXRhID0gKHUzMiAqKSZtc2c7CisJaW50IGk7CisK
KwlpbXhfbXVfeGNyX3Jtdyhwcml2LCAwLCBJTVhfTVVfeENSX1JJRW4oMCkpOworCSpkYXRhKysg
PSBpbXhfbXVfcmVhZChwcml2LCBwcml2LT5kY2ZnLT54UlJbMF0pOworCWlmIChtc2cuaGRyLnNp
emUgPiBzaXplb2Yoc3RydWN0IGlteF9zY19ycGNfbXNnX21heCkpIHsKKwkJZGV2X2Vycihwcml2
LT5kZXYsICJFeGNlZWQgbWF4IG1zZyBzaXplXG4iKTsKKwkJcmV0dXJuIC1FSU5WQUw7CisJfQor
CWZvciAoaSA9IDE7IGkgPCBtc2cuaGRyLnNpemU7IGkrKykKKwkJKmRhdGErKyA9IGlteF9tdV9y
ZWFkKHByaXYsIHByaXYtPmRjZmctPnhSUltpICUgNF0pOworCisJaW14X211X3hjcl9ybXcocHJp
diwgSU1YX01VX3hDUl9SSUVuKDApLCAwKTsKKwltYm94X2NoYW5fcmVjZWl2ZWRfZGF0YShjcC0+
Y2hhbiwgKHZvaWQgKikmbXNnKTsKKworCXJldHVybiAwOworfQorCiBzdGF0aWMgdm9pZCBpbXhf
bXVfdHhkYl90YXNrbGV0KHVuc2lnbmVkIGxvbmcgZGF0YSkKIHsKIAlzdHJ1Y3QgaW14X211X2Nv
bl9wcml2ICpjcCA9IChzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICopZGF0YTsKQEAgLTI2NSw2ICsz
MjMsMzkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBtYm94X2NoYW5fb3BzIGlteF9tdV9vcHMgPSB7
CiAJLnNodXRkb3duID0gaW14X211X3NodXRkb3duLAogfTsKIAorc3RhdGljIHN0cnVjdCBtYm94
X2NoYW4gKmlteF9tdV9zY3VfeGxhdGUoc3RydWN0IG1ib3hfY29udHJvbGxlciAqbWJveCwKKwkJ
CQkJICBjb25zdCBzdHJ1Y3Qgb2ZfcGhhbmRsZV9hcmdzICpzcCkKK3sKKwl1MzIgdHlwZSwgaWR4
LCBjaGFuOworCisJaWYgKHNwLT5hcmdzX2NvdW50ICE9IDIpIHsKKwkJZGV2X2VycihtYm94LT5k
ZXYsICJJbnZhbGlkIGFyZ3VtZW50IGNvdW50ICVkXG4iLCBzcC0+YXJnc19jb3VudCk7CisJCXJl
dHVybiBFUlJfUFRSKC1FSU5WQUwpOworCX0KKworCXR5cGUgPSBzcC0+YXJnc1swXTsgLyogY2hh
bm5lbCB0eXBlICovCisJaWR4ID0gc3AtPmFyZ3NbMV07IC8qIGluZGV4ICovCisKKwlzd2l0Y2gg
KHR5cGUpIHsKKwljYXNlIElNWF9NVV9UWVBFX1RYOgorCWNhc2UgSU1YX01VX1RZUEVfUlg6CisJ
CWNoYW4gPSB0eXBlOworCQlicmVhazsKKwljYXNlIElNWF9NVV9UWVBFX1JYREI6CisJCWNoYW4g
PSAyICsgaWR4OworCQlicmVhazsKKwlkZWZhdWx0OgorCQlyZXR1cm4gTlVMTDsKKwl9CisKKwlp
ZiAoY2hhbiA+PSBtYm94LT5udW1fY2hhbnMpIHsKKwkJZGV2X2VycihtYm94LT5kZXYsICJOb3Qg
c3VwcG9ydGVkIGNoYW5uZWwgbnVtYmVyOiAlZC4gKHR5cGU6ICVkLCBpZHg6ICVkKVxuIiwgY2hh
biwgdHlwZSwgaWR4KTsKKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7CisJfQorCisJcmV0dXJu
ICZtYm94LT5jaGFuc1tjaGFuXTsKK30KKwogc3RhdGljIHN0cnVjdCBtYm94X2NoYW4gKiBpbXhf
bXVfeGxhdGUoc3RydWN0IG1ib3hfY29udHJvbGxlciAqbWJveCwKIAkJCQkgICAgICAgY29uc3Qg
c3RydWN0IG9mX3BoYW5kbGVfYXJncyAqc3ApCiB7CkBAIC0zMTIsNiArNDAzLDI4IEBAIHN0YXRp
YyB2b2lkIGlteF9tdV9pbml0X2dlbmVyaWMoc3RydWN0IGlteF9tdV9wcml2ICpwcml2KQogCWlt
eF9tdV93cml0ZShwcml2LCAwLCBwcml2LT5kY2ZnLT54Q1IpOwogfQogCitzdGF0aWMgdm9pZCBp
bXhfbXVfaW5pdF9zY3Uoc3RydWN0IGlteF9tdV9wcml2ICpwcml2KQoreworCXVuc2lnbmVkIGlu
dCBpOworCisJZm9yIChpID0gMDsgaSA8IElNWF9NVV9TQ1VfQ0hBTlM7IGkrKykgeworCQlzdHJ1
Y3QgaW14X211X2Nvbl9wcml2ICpjcCA9ICZwcml2LT5jb25fcHJpdltpXTsKKworCQljcC0+aWR4
ID0gaSA8IDIgPyAwIDogaSAtIDI7CisJCWNwLT50eXBlID0gaSA8IDIgPyBpIDogSU1YX01VX1RZ
UEVfUlhEQjsKKwkJY3AtPmNoYW4gPSAmcHJpdi0+bWJveF9jaGFuc1tpXTsKKwkJcHJpdi0+bWJv
eF9jaGFuc1tpXS5jb25fcHJpdiA9IGNwOworCQlzbnByaW50ZihjcC0+aXJxX2Rlc2MsIHNpemVv
ZihjcC0+aXJxX2Rlc2MpLAorCQkJICJpbXhfbXVfY2hhblslaS0laV0iLCBjcC0+dHlwZSwgY3At
PmlkeCk7CisJfQorCisJcHJpdi0+bWJveC5udW1fY2hhbnMgPSBJTVhfTVVfU0NVX0NIQU5TOwor
CXByaXYtPm1ib3gub2ZfeGxhdGUgPSBpbXhfbXVfc2N1X3hsYXRlOworCisJLyogU2V0IGRlZmF1
bHQgTVUgY29uZmlndXJhdGlvbiAqLworCWlteF9tdV93cml0ZShwcml2LCAwLCBwcml2LT5kY2Zn
LT54Q1IpOworfQorCiBzdGF0aWMgaW50IGlteF9tdV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQogewogCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7CkBAIC0zNTUs
NyArNDY4LDEwIEBAIHN0YXRpYyBpbnQgaW14X211X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCiAKIAlwcml2LT5zaWRlX2IgPSBvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wobnAsICJm
c2wsbXUtc2lkZS1iIik7CiAKLQlpbXhfbXVfaW5pdF9nZW5lcmljKHByaXYpOworCWlmIChvZl9k
ZXZpY2VfaXNfY29tcGF0aWJsZShucCwgImZzbCxpbXg4LW11LXNjdSIpKQorCQlpbXhfbXVfaW5p
dF9zY3UocHJpdik7CisJZWxzZQorCQlpbXhfbXVfaW5pdF9nZW5lcmljKHByaXYpOwogCiAJc3Bp
bl9sb2NrX2luaXQoJnByaXYtPnhjcl9sb2NrKTsKIApAQCAtMzk2LDkgKzUxMiwxOSBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IGlteF9tdV9kY2ZnIGlteF9tdV9jZmdfaW14N3VscCA9IHsKIAkueENS
CT0gMHg2NCwKIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW14X211X2RjZmcgaW14X211X2Nm
Z19pbXg4X3NjdSA9IHsKKwkudHgJPSBpbXhfbXVfc2N1X3R4LAorCS5yeAk9IGlteF9tdV9zY3Vf
cngsCisJLnhUUgk9IHsweDAsIDB4NCwgMHg4LCAweGN9LAorCS54UlIJPSB7MHgxMCwgMHgxNCwg
MHgxOCwgMHgxY30sCisJLnhTUgk9IDB4MjAsCisJLnhDUgk9IDB4MjQsCit9OworCiBzdGF0aWMg
Y29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBpbXhfbXVfZHRfaWRzW10gPSB7CiAJeyAuY29tcGF0
aWJsZSA9ICJmc2wsaW14N3VscC1tdSIsIC5kYXRhID0gJmlteF9tdV9jZmdfaW14N3VscCB9LAog
CXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDZzeC1tdSIsIC5kYXRhID0gJmlteF9tdV9jZmdfaW14
NnN4IH0sCisJeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14OC1tdS1zY3UiLCAuZGF0YSA9ICZpbXhf
bXVfY2ZnX2lteDhfc2N1IH0sCiAJeyB9LAogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGlt
eF9tdV9kdF9pZHMpOwotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
