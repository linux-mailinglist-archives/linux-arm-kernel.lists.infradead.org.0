Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B200716110A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 12:20:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjVcf0g1NeSR1h0Tnmcc6mqy03OEHX0NrA1AXGC9SUI=; b=L3j8qlXr0Hxj6f
	e3GMN58ju2ncgv8l6Z6JODUcm8roK3kbDXGaZbqH91P9hm0oG8Svm//n3sSFKk/fpc7fak95F6pFX
	6D+DHhYMdXJ7lo2LqWfnBgGKsMAYvpNQxIhlWJh4/fGbB6m1fy1nJpLN/l8dva64TfO9HSLZnOkhZ
	beS60l1xi0MftthWQNicwjXRXOlfXUNcBqrYoMxM6jkWqpDVf0/IhE8Id9RIs5XN3vJm98TWWoUgQ
	kAFGC0qbhNmDtJqaZ9bV7I0mzDr00kPR+SNNmO9h1RRg6q7egNKOBpE/ptnLBPb9bbU2LvRLadYbF
	ArbSmzmICBMAHj2QKNcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3eS7-0002AM-2c; Mon, 17 Feb 2020 11:20:39 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3eR3-00008I-6j
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 11:19:35 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 048F6202B8A;
 Mon, 17 Feb 2020 12:19:32 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4E662202B98;
 Mon, 17 Feb 2020 12:19:26 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 39124402E5;
 Mon, 17 Feb 2020 19:19:19 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 RESEND 4/7] ARM: dts: imx6sx-sabreauto: Use new pin names
 with DCE/DTE for UART pins
Date: Mon, 17 Feb 2020 19:13:38 +0800
Message-Id: <1581938021-16259-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
References: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_031933_381041_EDB69459 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXNlIG5ldyBwaW4gbmFtZXMgY29udGFpbmluZyBEQ0UvRFRFIGZvciBVQVJUIFJYL1RYL1JUUy9D
VFMgcGlucywgdGhpcwppcyB0byBkaXN0aW5ndWlzaCB0aGUgRENFL0RURSBmdW5jdGlvbnMuCgpT
aWduZWQtb2ZmLWJ5OiBBbnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4KUmV2aWV3ZWQt
Ynk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0t
LQpObyBjaGFuZ2UuCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXNhYnJlYXV0by5kdHMg
fCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXNhYnJlYXV0by5kdHMgYi9h
cmNoL2FybS9ib290L2R0cy9pbXg2c3gtc2FicmVhdXRvLmR0cwppbmRleCAzMTUwNDRjLi44MjU5
MjQ0IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2c3gtc2FicmVhdXRvLmR0cwor
KysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2c3gtc2FicmVhdXRvLmR0cwpAQCAtMjI5LDggKzIy
OSw4IEBACiAKIAlwaW5jdHJsX3VhcnQxOiB1YXJ0MWdycCB7CiAJCWZzbCxwaW5zID0gPAotCQkJ
TVg2U1hfUEFEX0dQSU8xX0lPMDRfX1VBUlQxX1RYCQkweDFiMGIxCi0JCQlNWDZTWF9QQURfR1BJ
TzFfSU8wNV9fVUFSVDFfUlgJCTB4MWIwYjEKKwkJCU1YNlNYX1BBRF9HUElPMV9JTzA0X19VQVJU
MV9EQ0VfVFgJCTB4MWIwYjEKKwkJCU1YNlNYX1BBRF9HUElPMV9JTzA1X19VQVJUMV9EQ0VfUlgJ
CTB4MWIwYjEKIAkJPjsKIAl9OwogCi0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
