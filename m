Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 349408FF27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 11:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEHaDmu4e5Lpxamk/3vWbuoP7tItCKGIbihHN6rGGUU=; b=rhqcnmR4yMgkQ7
	OxcpZA1+cqvxbiEdWWmR+fTlj2CHCaUPurjoPmOlx/P582rUJ2JkjDHYZYpd0VTv4kcK1Ppzc4HVR
	DkWocbOvM6mID/aalOSWRxABtbfag9lHaPyoD0/K4T0ocQ/Y+fvqAHJq4PJJRqghAmO6FW9fVAh8P
	2mB9RA4Iit7ck1T7KzwfZqUyrNyCnAijtccwzjvgwsNCOPaqmqKAVItukNEJOjQB+bQEHvbm/J/MZ
	azDX6mvVyZGa4zHTQXC4HxDgd9tOj0n+MnLwOL2it12eXA/irAYzI8hKsm9QLAAIjgaS3S0e4i1D3
	RipQWkpgrX/0WsAtTBQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyYgk-0003kq-Op; Fri, 16 Aug 2019 09:38:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyYgO-0003gz-R9
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 09:38:06 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hyYgI-0008M5-Oy; Fri, 16 Aug 2019 11:37:58 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hyYgG-0003yW-Gx; Fri, 16 Aug 2019 11:37:56 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 4/3] pwm: atmel: document known weaknesses of both hardware
 and software
Date: Fri, 16 Aug 2019 11:37:48 +0200
Message-Id: <20190816093748.11769-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190815214133.11134-1-uwe@kleine-koenig.org>
References: <20190815214133.11134-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_023804_880666_C3477273 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4K
LS0tCiBkcml2ZXJzL3B3bS9wd20tYXRtZWwuYyB8IDEwICsrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAxMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLWF0bWVs
LmMgYi9kcml2ZXJzL3B3bS9wd20tYXRtZWwuYwppbmRleCA0MmZlN2JjMDQzYTguLjFkZGI5M2Ri
OTYyNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLWF0bWVsLmMKKysrIGIvZHJpdmVycy9w
d20vcHdtLWF0bWVsLmMKQEAgLTcsNiArNywxNiBAQAogICoKICAqIFJlZmVyZW5jZSBtYW51YWwg
Zm9yICJhdG1lbCxhdDkxc2FtOXJsLXB3bSI6CiAgKiAgIGh0dHA6Ly93dzEubWljcm9jaGlwLmNv
bS9kb3dubG9hZHMvZW4vRGV2aWNlRG9jL0F0bWVsLTExMDMyLTMyLWJpdC1BUk05MjZFSi1TLU1p
Y3JvY29udHJvbGxlci1TQU05RzI1X0RhdGFzaGVldC5wZGYKKyAqCisgKiBMaW1pdGF0aW9uczoK
KyAqIC0gUGVyaW9kcyBzdGFydCB3aXRoIHRoZSBpbmFjdGl2ZSBsZXZlbC4KKyAqIC0gSGFyZHdh
cmUgaGFzIHRvIGJlIHN0b3BwZWQgaW4gZ2VuZXJhbCB0byB1cGRhdGUgc2V0dGluZ3MuCisgKgor
ICogU29mdHdhcmUgYnVncy9wb3NzaWJsZSBpbXByb3ZlbWVudHM6CisgKiAtIFdoZW4gYXRtZWxf
cHdtX2FwcGx5KCkgaXMgY2FsbGVkIHdpdGggc3RhdGUtPmVuYWJsZWQ9ZmFsc2UgYSBjaGFuZ2Ug
aW4KKyAqICAgc3RhdGUtPnBvbGFyaXR5IGlzbid0IGhvbm9yZWQuCisgKiAtIEluc3RlYWQgb2Yg
c2xlZXBpbmcgdG8gd2FpdCBmb3IgYSBjb21wbGV0ZWQgcGVyaW9kLCB0aGUgaW50ZXJydXB0Cisg
KiAgIGZ1bmN0aW9uYWxpdHkgY291bGQgYmUgdXNlZC4KICAqLwogCiAjaW5jbHVkZSA8bGludXgv
Y2xrLmg+Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
