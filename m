Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FD9E04C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:19:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UIfhwhuiwnzAlqBlHH18eqCr7QmXrkA44nJjVSGwCE=; b=WOmqwsWeugarty
	sEjXSAglk8w/YhQWUeKlfdy4TXzcHu7vXnsdh3qalxXZtZBTeNYcAM24UNpMaj0a/9cfljwlE62nW
	DbLuaSHVMMNH9CI83c45K84YQscjYgW7tagVr3kenxTwxoPKrM5/38yYIMa467PlHUmT9b1qYCtO1
	2lcd7+rGsX+fRbSO3kNgQIXbXOlKV3xT7R35NSHui/lyW0HATl1hpbVzPQ2aygp2K5n0OddZc48ht
	qfV+2CnMzNMptn480tRWRpXwKWygmsromicvNZULPkElZ2/ee63SDK3/DT4NR7Yl63ReN7DDItiEO
	XFmOONcWKTds8MwmMp1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMu4r-0000dE-8o; Tue, 22 Oct 2019 13:19:57 +0000
Received: from 3.mo69.mail-out.ovh.net ([188.165.52.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMu3q-0008M4-HX
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 13:18:57 +0000
Received: from player793.ha.ovh.net (unknown [10.108.57.18])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id 1976D6AE7E
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 15:18:52 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player793.ha.ovh.net (Postfix) with ESMTPSA id 6FF1CB3E4182;
 Tue, 22 Oct 2019 13:18:38 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 5/9] ARM: dts: imx6qdl-apf6: fix WiFi
Date: Tue, 22 Oct 2019 15:16:51 +0200
Message-Id: <20191022131655.25737-6-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
References: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 124974891696215109
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrkeejgdeivdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_061854_834824_B3CCB4D7 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.165.52.203 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Julien Boibessot <julien.boibessot@armadeus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlc2UgY2hhbmdlcyBtYWtlIHRoZSBXaUZpIG9uIHRoZSBBUEY2IGJvYXJkIHdvcmsgYWdhaW4u
CgpTaWduZWQtb2ZmLWJ5OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNr
aUBhcm1hZGV1cy5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1hcGY2LmR0c2kg
fCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMjYgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0
cy9pbXg2cWRsLWFwZjYuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtYXBmNi5kdHNp
CmluZGV4IGM5OWU3NjRhMjViNy4uOTk3ZDY4NWVjYzk4IDEwMDY0NAotLS0gYS9hcmNoL2FybS9i
b290L2R0cy9pbXg2cWRsLWFwZjYuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRs
LWFwZjYuZHRzaQpAQCAtNSw2ICs1LDI0IEBACiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9n
cGlvLmg+CiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvaXJxLmg+
CiAKKy8geworCXJlZ18xcDh2OiByZWd1bGF0b3ItMXA4diB7CisJCWNvbXBhdGlibGUgPSAicmVn
dWxhdG9yLWZpeGVkIjsKKwkJcmVndWxhdG9yLW5hbWUgPSAiMVA4ViI7CisJCXJlZ3VsYXRvci1t
aW4tbWljcm92b2x0ID0gPDE4MDAwMDA+OworCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwx
ODAwMDAwPjsKKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKKwkJdmluLXN1cHBseSA9IDwmcmVnXzNw
M3Y+OworCX07CisKKwl1c2RoYzFfcHdyc2VxOiB1c2RoYzEtcHdyc2VxIHsKKwkJY29tcGF0aWJs
ZSA9ICJtbWMtcHdyc2VxLXNpbXBsZSI7CisJCXJlc2V0LWdwaW9zID0gPCZncGlvMiA4IEdQSU9f
QUNUSVZFX0xPVz47CisJCXBvc3QtcG93ZXItb24tZGVsYXktbXMgPSA8MTU+OworCQlwb3dlci1v
ZmYtZGVsYXktdXMgPSA8NzA+OworCX07Cit9OworCiAmZmVjIHsKIAlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmcGluY3RybF9lbmV0PjsKQEAgLTQwLDYgKzU4LDEy
IEBACiAmdXNkaGMxIHsKIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9
IDwmcGluY3RybF91c2RoYzE+OworCWJ1cy13aWR0aCA9IDw0PjsKKwltbWMtcHdyc2VxID0gPCZ1
c2RoYzFfcHdyc2VxPjsKKwl2bW1jLXN1cHBseSA9IDwmcmVnXzNwM3Y+OworCXZxbW1jLXN1cHBs
eSA9IDwmcmVnXzFwOHY+OworCWNhcC1wb3dlci1vZmYtY2FyZDsKKwlrZWVwLXBvd2VyLWluLXN1
c3BlbmQ7CiAJbm9uLXJlbW92YWJsZTsKIAlzdGF0dXMgPSAib2theSI7CiAKQEAgLTEwNiw4ICsx
MzAsOCBAQAogCQkJTVg2UURMX1BBRF9TRDFfREFUMV9fU0QxX0RBVEExCTB4MTcwNTkKIAkJCU1Y
NlFETF9QQURfU0QxX0RBVDJfX1NEMV9EQVRBMgkweDE3MDU5CiAJCQlNWDZRRExfUEFEX1NEMV9E
QVQzX19TRDFfREFUQTMJMHgxNzA1OQotCQkJTVg2UURMX1BBRF9TRDRfREFUMF9fR1BJTzJfSU8w
OAkweDFiMGIwIC8qIFdMX0VOICovCi0JCQlNWDZRRExfUEFEX1NENF9EQVQyX19HUElPMl9JTzEw
CTB4MWIwYjAgLyogV0xfSVJRICovCisJCQlNWDZRRExfUEFEX1NENF9EQVQwX19HUElPMl9JTzA4
CTB4MTMwYjAgLyogV0xfRU4gKi8KKwkJCU1YNlFETF9QQURfU0Q0X0RBVDJfX0dQSU8yX0lPMTAJ
MHgxMzBiMCAvKiBXTF9JUlEgKi8KIAkJPjsKIAl9OwogCi0tIAoyLjIxLjAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
