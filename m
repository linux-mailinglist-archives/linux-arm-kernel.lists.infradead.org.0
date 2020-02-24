Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 775C416A60B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:21:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJ+zTyjlyO6NCWNEKTxzvS8aOcdNjXpgwF0suazkV4Q=; b=COMORBWTQBFto+
	eLwGFA5GxLWNhxQzmC2X2bWBvpoiaqwfCQJHlhZI25NjPpynHXbCpoM/qkuiPl5VYCB54mfkESKeF
	t+4uVXEJu0nMcI+QiRWlXi5da8Gv1mJZx3OBeZa6kqwAETX/Cn1OTCh7UkPjD7ufPk6QwaqSUCI8G
	fW9wu+u88egw2mvSH501sZBAAbY4eCKcvckGBCrMkL9AVGULNypcu6SrDTA7lJzPCy6bR4vVa4BG0
	8WCeZizuhJZ3tI/9r5ULFy3vhkd6mZvXlJC7uwB20spC2/dqr+GJdzcLfQKEtfAK2bI5S30tvqIA8
	PmHS36tpApEth6gtkmfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Ck8-0002xg-F7; Mon, 24 Feb 2020 12:21:48 +0000
Received: from mail-am6eur05on2077.outbound.protection.outlook.com
 ([40.107.22.77] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CjS-0002X9-0V
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:21:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OFXyIJsanEnr34HT+yjQYfFZyuzdYVOqLE3d1nVGA7+s5iX2RQVqcQ8MCI7fm1eI+Dhz2/coJAsnQAkHp32S6i2PAIFEdrO5Y5BN5Hl2EPLTblGyM6JhDO7aGEgiGbV0us7xq+fOlYb+3Jsakz8xSjlezRPJYLzrfo6XqN8HbPU+zisaq81R7QAX/0kbe2zMIjEeRO2DXhmwTo2byUcxbaoLBvHPIxlkpfmzt81JWKqT6HfJgH0uWPu16vF6lezwoxd/ygKs4ct9ZBFd1Rta/iDDPBf9+sqTLetBNDGliRYVHEuxs1fCVQ+QyBaAlbOaaheGsLCjTPxytDbad29Whg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9b0P30RauOuxXqIFF2yZYxrPdIhC11iMBQNzcj1LzhI=;
 b=J2z704t5+4z8gCmbtnjTDfnxYwFH1/WxET1ugDR2/MB7gslnkUPwbQx2VfUxd1+LBYS2ZDxAgGmA0AdEnUyAZoWi1/enkAqdm2iEoORW/jYM88XioCllNi08T24nBt0xlScr8t6ygZmOXoH6y4PWcb4S9EQLhev9ThR9eBPECW/Hynx+Xcu35VTAcxf3l2iWWLjOn+cLWVHBvHw4sl9e7ngDiun1um7xzh/Ux6Kc0CLzNXr8boswRLzHl+kQGD/MIkD7Uc1qeZT1KB6Jlgsx6S3O6Bv1U2an/wMqotMYlBfNvBbh2MVmG2VfTJ5m1EwGBzG9wBe4pcwB/IwONr6+AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9b0P30RauOuxXqIFF2yZYxrPdIhC11iMBQNzcj1LzhI=;
 b=fWenbjiVzs6ivFDTaMbRbkHyTDP2WicEe5axfAJ4KlgMCnMdRKNl9tD/WzHc1RJGcAgcV7mmV/AWCEnkB+YVOQtxsoOR3xDxQyjFuCxAjvh2B2dUP60tHszTI/aZO/sIJcF5FRc2DZAKtRNrnf+qJBXZLvgcdPYKPbwdDat62TU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6289.eurprd04.prod.outlook.com (20.179.35.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Mon, 24 Feb 2020 12:21:03 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 12:21:03 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 leonard.crestez@nxp.com, o.rempel@pengutronix.de
Subject: [PATCH 2/3] mailbox: imx: support SCU channel type
Date: Mon, 24 Feb 2020 20:14:33 +0800
Message-Id: <1582546474-21721-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582546474-21721-1-git-send-email-peng.fan@nxp.com>
References: <1582546474-21721-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR04CA0077.apcprd04.prod.outlook.com
 (2603:1096:202:15::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR04CA0077.apcprd04.prod.outlook.com (2603:1096:202:15::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.18 via Frontend Transport; Mon, 24 Feb 2020 12:20:59 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b7c1b406-8124-4a06-16ec-08d7b92403fa
X-MS-TrafficTypeDiagnostic: AM0PR04MB6289:|AM0PR04MB6289:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB628928806CB311BD43CE940788EC0@AM0PR04MB6289.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 032334F434
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(39860400002)(396003)(346002)(199004)(189003)(2616005)(6506007)(9686003)(6512007)(15650500001)(26005)(86362001)(81166006)(52116002)(6666004)(8936002)(7416002)(8676002)(81156014)(5660300002)(66556008)(316002)(16526019)(6486002)(4326008)(66946007)(36756003)(186003)(66476007)(478600001)(2906002)(956004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6289;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U0Uup3zogofMY+mV/Pd7c9AyaCwiCpwnh9OuJbDecdPdrioLnQgM/Xjvv1lC9KM5ghyjdmM+mtWciVpIgCs9yvNcPUTmJQj/hq4IYvRrjbperU+ufzJ1LQz7YyXlpMq+3bMfKJIRB+o2Emn1jX1rvESm2aHNqL56QwdPhFsxl6RTwGPDcpSuRwMrMJmPSPSCfApV/WqKzGer7TnrCCfbPaDZ9aBgZ8kBXBZodgmmFjYE7DXYLX8BcmlhSGOL7Zk2lZB8q+F1USaK21V6W7e0qdBciXn3JzMpMSNuJyT9WawUmKCJGrFopafSRuzBJmiNR8Y9j67QVnNLy4XHM6RQTK+QqdyYmIGYMXklhjf0UwnVAuv0NV5SynAu33C5U4/mybM2J55/zs7YwnWHYHEf+hVFlYoj4ESrCwkf0dAPtMNL7x88dd9QoEA46dLcmkuT
X-MS-Exchange-AntiSpam-MessageData: a2QNxPD6ST0y7CWQ3SXTPwJoIFh/iuwDu+GHG+zOdVtFTKhOmN9GzWRnH+WS03rZ6ttZOob9vYCwNXebpx8E38m+RSTibayOpNMnfMDCOpmzP9jVdP8VYZbb2L0DzdOeaH2+nbh5Cnq1htlagVJBxg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7c1b406-8124-4a06-16ec-08d7b92403fa
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 12:21:03.4896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LonljUA3DzE9+ZpRB8VIoqmc0sp727zxwoXcsXslMU2+h0WNZ2RXW1kYvo0yeCL9poHxPgQlyOYmvH6UmL5S/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6289
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_042106_083522_5D4B22EA 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.77 listed in list.dnswl.org]
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org,
 Peng Fan <peng.fan@nxp.com>, hongxing.zhu@nxp.com, m.felsch@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
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
L2lteC1tYWlsYm94LmMgfCA0MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Ky0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jIGIvZHJpdmVycy9tYWls
Ym94L2lteC1tYWlsYm94LmMKaW5kZXggMmNkY2RjNWYxMTE5Li43ZDlhYWZmZjVmNmQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jCisrKyBiL2RyaXZlcnMvbWFpbGJv
eC9pbXgtbWFpbGJveC5jCkBAIC00LDYgKzQsNyBAQAogICovCiAKICNpbmNsdWRlIDxsaW51eC9j
bGsuaD4KKyNpbmNsdWRlIDxsaW51eC9maXJtd2FyZS9pbXgvaXBjLmg+CiAjaW5jbHVkZSA8bGlu
dXgvaW50ZXJydXB0Lmg+CiAjaW5jbHVkZSA8bGludXgvaW8uaD4KICNpbmNsdWRlIDxsaW51eC9r
ZXJuZWwuaD4KQEAgLTY1LDggKzY2LDE0IEBAIHN0cnVjdCBpbXhfbXVfcHJpdiB7CiAJaW50CQkJ
aXJxOwogCiAJYm9vbAkJCXNpZGVfYjsKKwlib29sCQkJc2N1OwogfTsKIAorc3RydWN0IGlteF9z
Y19ycGNfbXNnX21heCB7CisJc3RydWN0IGlteF9zY19ycGNfbXNnIGhkcjsKKwl1MzIgZGF0YVs3
XTsKK30gX19wYWNrZWQgX19hbGlnbmVkKDQpOzsKKwogc3RhdGljIGNvbnN0IHN0cnVjdCBpbXhf
bXVfZGNmZyBpbXhfbXVfY2ZnX2lteDZzeCA9IHsKIAkueFRSCT0gezB4MCwgMHg0LCAweDgsIDB4
Y30sCiAJLnhSUgk9IHsweDEwLCAweDE0LCAweDE4LCAweDFjfSwKQEAgLTEyMyw3ICsxMzAsMTAg
QEAgc3RhdGljIGlycXJldHVybl90IGlteF9tdV9pc3IoaW50IGlycSwgdm9pZCAqcCkKIAlzdHJ1
Y3QgbWJveF9jaGFuICpjaGFuID0gcDsKIAlzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYgPSB0b19p
bXhfbXVfcHJpdihjaGFuLT5tYm94KTsKIAlzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICpjcCA9IGNo
YW4tPmNvbl9wcml2OworCXN0cnVjdCBpbXhfc2NfcnBjX21zZ19tYXggbXNnOworCXUzMiAqcF9t
c2cgPSAodTMyICopJm1zZzsKIAl1MzIgdmFsLCBjdHJsLCBkYXQ7CisJaW50IGk7CiAKIAljdHJs
ID0gaW14X211X3JlYWQocHJpdiwgcHJpdi0+ZGNmZy0+eENSKTsKIAl2YWwgPSBpbXhfbXVfcmVh
ZChwcml2LCBwcml2LT5kY2ZnLT54U1IpOwpAQCAtMTUyLDggKzE2MiwxOSBAQCBzdGF0aWMgaXJx
cmV0dXJuX3QgaW14X211X2lzcihpbnQgaXJxLCB2b2lkICpwKQogCQlpbXhfbXVfeGNyX3Jtdyhw
cml2LCAwLCBJTVhfTVVfeENSX1RJRW4oY3AtPmlkeCkpOwogCQltYm94X2NoYW5fdHhkb25lKGNo
YW4sIDApOwogCX0gZWxzZSBpZiAodmFsID09IElNWF9NVV94U1JfUkZuKGNwLT5pZHgpKSB7Ci0J
CWRhdCA9IGlteF9tdV9yZWFkKHByaXYsIHByaXYtPmRjZmctPnhSUltjcC0+aWR4XSk7Ci0JCW1i
b3hfY2hhbl9yZWNlaXZlZF9kYXRhKGNoYW4sICh2b2lkICopJmRhdCk7CisJCWlmICghcHJpdi0+
c2N1KSB7CisJCQlkYXQgPSBpbXhfbXVfcmVhZChwcml2LCBwcml2LT5kY2ZnLT54UlJbY3AtPmlk
eF0pOworCQkJbWJveF9jaGFuX3JlY2VpdmVkX2RhdGEoY2hhbiwgKHZvaWQgKikmZGF0KTsKKwkJ
fSBlbHNlIHsKKwkJCWlteF9tdV94Y3Jfcm13KHByaXYsIDAsIElNWF9NVV94Q1JfUklFbigwKSk7
CisJCQkqcF9tc2crKyA9IGlteF9tdV9yZWFkKHByaXYsIHByaXYtPmRjZmctPnhSUlswXSk7CisJ
CQlmb3IgKGkgPSAxOyBpIDwgbXNnLmhkci5zaXplOyBpKyspIHsKKwkJCQkqcF9tc2crKyA9IGlt
eF9tdV9yZWFkKHByaXYsCisJCQkJCQkgICAgICAgcHJpdi0+ZGNmZy0+eFJSW2kgJSA0XSk7CisJ
CQl9CisJCQlpbXhfbXVfeGNyX3Jtdyhwcml2LCBJTVhfTVVfeENSX1JJRW4oMCksIDApOworCQkJ
bWJveF9jaGFuX3JlY2VpdmVkX2RhdGEoY2hhbiwgKHZvaWQgKikmbXNnKTsKKwkJfQogCX0gZWxz
ZSBpZiAodmFsID09IElNWF9NVV94U1JfR0lQbihjcC0+aWR4KSkgewogCQlpbXhfbXVfd3JpdGUo
cHJpdiwgSU1YX01VX3hTUl9HSVBuKGNwLT5pZHgpLCBwcml2LT5kY2ZnLT54U1IpOwogCQltYm94
X2NoYW5fcmVjZWl2ZWRfZGF0YShjaGFuLCBOVUxMKTsKQEAgLTE2OSwxMSArMTkwLDIwIEBAIHN0
YXRpYyBpbnQgaW14X211X3NlbmRfZGF0YShzdHJ1Y3QgbWJveF9jaGFuICpjaGFuLCB2b2lkICpk
YXRhKQogewogCXN0cnVjdCBpbXhfbXVfcHJpdiAqcHJpdiA9IHRvX2lteF9tdV9wcml2KGNoYW4t
Pm1ib3gpOwogCXN0cnVjdCBpbXhfbXVfY29uX3ByaXYgKmNwID0gY2hhbi0+Y29uX3ByaXY7CisJ
c3RydWN0IGlteF9zY19ycGNfbXNnX21heCAqbXNnID0gZGF0YTsKIAl1MzIgKmFyZyA9IGRhdGE7
CisJaW50IGk7CiAKIAlzd2l0Y2ggKGNwLT50eXBlKSB7CiAJY2FzZSBJTVhfTVVfVFlQRV9UWDoK
LQkJaW14X211X3dyaXRlKHByaXYsICphcmcsIHByaXYtPmRjZmctPnhUUltjcC0+aWR4XSk7CisJ
CWlmIChwcml2LT5zY3UpIHsKKwkJCWZvciAoaSA9IDA7IGkgPCBtc2ctPmhkci5zaXplOyBpKysp
IHsKKwkJCQlpbXhfbXVfd3JpdGUocHJpdiwgKmFyZysrLAorCQkJCQkgICAgIHByaXYtPmRjZmct
PnhUUltpICUgNF0pOworCQkJfQorCQl9IGVsc2UgeworCQkJaW14X211X3dyaXRlKHByaXYsICph
cmcsIHByaXYtPmRjZmctPnhUUltjcC0+aWR4XSk7CisJCX0KIAkJaW14X211X3hjcl9ybXcocHJp
diwgSU1YX01VX3hDUl9USUVuKGNwLT5pZHgpLCAwKTsKIAkJYnJlYWs7CiAJY2FzZSBJTVhfTVVf
VFlQRV9UWERCOgpAQCAtMjU5LDYgKzI4OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWJveF9j
aGFuX29wcyBpbXhfbXVfb3BzID0gewogc3RhdGljIHN0cnVjdCBtYm94X2NoYW4gKiBpbXhfbXVf
eGxhdGUoc3RydWN0IG1ib3hfY29udHJvbGxlciAqbWJveCwKIAkJCQkgICAgICAgY29uc3Qgc3Ry
dWN0IG9mX3BoYW5kbGVfYXJncyAqc3ApCiB7CisJc3RydWN0IGlteF9tdV9wcml2ICpwcml2ID0g
dG9faW14X211X3ByaXYobWJveCk7CiAJdTMyIHR5cGUsIGlkeCwgY2hhbjsKIAogCWlmIChzcC0+
YXJnc19jb3VudCAhPSAyKSB7CkBAIC0yNzAsNyArMzAxLDkgQEAgc3RhdGljIHN0cnVjdCBtYm94
X2NoYW4gKiBpbXhfbXVfeGxhdGUoc3RydWN0IG1ib3hfY29udHJvbGxlciAqbWJveCwKIAlpZHgg
PSBzcC0+YXJnc1sxXTsgLyogaW5kZXggKi8KIAljaGFuID0gdHlwZSAqIDQgKyBpZHg7CiAKLQlp
ZiAoY2hhbiA+PSBtYm94LT5udW1fY2hhbnMpIHsKKwkvKiBGb3IgVFgvUlggU0NVLCBvbmx5IG9u
ZSBjaGFubmVsIHN1cHBvcnRlZCAqLworCWlmICgoY2hhbiA+PSBtYm94LT5udW1fY2hhbnMpIHx8
CisJICAgIChwcml2LT5zY3UgJiYgdHlwZSA8IDEgJiYgaWR4ID49IDEpKSB7CiAJCWRldl9lcnIo
bWJveC0+ZGV2LCAiTm90IHN1cHBvcnRlZCBjaGFubmVsIG51bWJlcjogJWQuICh0eXBlOiAlZCwg
aWR4OiAlZClcbiIsIGNoYW4sIHR5cGUsIGlkeCk7CiAJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwp
OwogCX0KQEAgLTM0MSw2ICszNzQsNyBAQCBzdGF0aWMgaW50IGlteF9tdV9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCX0KIAogCXByaXYtPnNpZGVfYiA9IG9mX3Byb3BlcnR5
X3JlYWRfYm9vbChucCwgImZzbCxtdS1zaWRlLWIiKTsKKwlwcml2LT5zY3UgPSBvZl9wcm9wZXJ0
eV9yZWFkX2Jvb2wobnAsICJmc2wsc2N1Iik7CiAKIAlzcGluX2xvY2tfaW5pdCgmcHJpdi0+eGNy
X2xvY2spOwogCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
