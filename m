Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929831292F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 09:13:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=l4fcqBTS6LPidkpjnuvtrsmSBy92LM+yiZuwb0X5OPY=; b=REw
	0HJ3PbUIfe7CsWfWIc14JEXpycH84gEWYp7nUD61xXdmE4ScqCVb+aGfYI5ekrRpEXxo03XLdpK52
	QgnBV/W8xMDmcQGbp/bwH9MHtuAKYuvEiKBHGP10rTmF5yz+Kp2FNSAsdd0EL3E+lryaQJ6IRW2va
	CWEAb7rF50Vxl6gm/B6weHNMgz2/WtSMdAJsLWHBYgJM+DSGgSNd86argblLq8O7aKY7M+XCJBnK7
	LG8JVbgZEjoLsQhIGPkN7dpPVfKYKqWfueKeZceNuTFjaA/0LAEbhdhDdivRhIbOUxYMAto3Cbld1
	VtdO2f5lA9kBZ1zIi2kiC4I2FC+QsEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijIqb-0006G6-3o; Mon, 23 Dec 2019 08:13:49 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijIqQ-0006Fh-L3
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 08:13:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id AE636DF754;
 Mon, 23 Dec 2019 00:13:03 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4uDTf511eGyR; Mon, 23 Dec 2019 00:13:02 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: shawnguo@kernel.org, robh@kernel.org, mark.rutland@arm.com,
 s.hauer@pengutronix.de
Subject: [PATCH v2 1/2] arm64: dts: imx8mq-librem5-devkit: add accelerometer
 and gyro sensor
Date: Mon, 23 Dec 2019 09:12:52 +0100
Message-Id: <20191223081253.27516-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_001338_688329_0B7544CA 
X-CRM114-Status: UNSURE (   5.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.203.221.185 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kernel@puri.sm,
 Martin Kepplinger <martin.kepplinger@puri.sm>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tm93IHRoYXQgdGhlcmUgaXMgZHJpdmVyIHN1cHBvcnQsIGRlc2NyaWJlIHRoZSBhY2NlbCBhbmQg
Z3lybyBzZW5zb3IgcGFydHMKb2YgdGhlIExTTTlEUzEgSU1VLgoKU2lnbmVkLW9mZi1ieTogTWFy
dGluIEtlcHBsaW5nZXIgPG1hcnRpbi5rZXBwbGluZ2VyQHB1cmkuc20+ClJldmlld2VkLWJ5OiBH
dWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgotLS0KCnJldmlzaW9uIGhpc3RvcnkKLS0t
LS0tLS0tLS0tLS0tLQp2MjogdXNlIGh5cGhlbiBpbiBub2RlIG5hbWUgYW5kIHJlb3JkZXIgKHRo
YW5rcyBTaGF3bikKICAgIGFkZCBHdWlkbydzIHJldmlldyB0YWcKCgogYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cyB8IDcgKysrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5kdHMgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzCmluZGV4IDUyM2U1ZjJj
ZTg3My4uMzc5NTEwODg2ZTNlIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
ZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LWRldmtpdC5kdHMKQEAgLTQ0OSw2ICs0NDksMTMgQEAK
IAkJQVZERDI4LXN1cHBseSA9IDwmcmVnXzJ2OF9wPjsKIAkJVkRESU8tc3VwcGx5ID0gPCZyZWdf
MXY4X3A+OwogCX07CisKKwlhY2NlbC1neXJvQDZhIHsKKwkJY29tcGF0aWJsZSA9ICJzdCxsc205
ZHMxLWltdSI7CisJCXJlZyA9IDwweDZhPjsKKwkJdmRkLXN1cHBseSA9IDwmcmVnXzN2M19wPjsK
KwkJdmRkaW8tc3VwcGx5ID0gPCZyZWdfM3YzX3A+OworCX07CiB9OwogCiAmaW9tdXhjIHsKLS0g
CjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
