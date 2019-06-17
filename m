Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834CD4861A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIj7CrWUhOXXelH/wiNssFOAMPJmtyswD/N34FhmmJw=; b=dr6iDGZrBIPbis
	ELocYswqlQbIvRKGRPBDHW+Fe4r8iQQYsP288gqfuvbT3UqKr1xqW7eil6UY00++j+TBEwApvyGa2
	l4viD3yoMjPStsdBkSq7eotC+v4GxU0OCfwdemUNnRbzABrx5FFwu2fdsu7duOA+TmsJZusqzn//B
	v+iANa+6dyj0Co8yCvrLx2isu3ipIX6nBelaeK5QMX+K7vjQVnMWVqw08QUeh2RnszOBlItOML5Ew
	Y/+4X84TGzvJkX0r9z3V7MxH01XbV5z1rAGJWR6sCZqK4Wj4xblwY+H6tEQJ45ZwdFQsypuOLDnzt
	AdaLkmZ/FjbHAVC55q3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct0B-0005LY-NI; Mon, 17 Jun 2019 14:52:55 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcszH-0004sQ-C5
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:52:01 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 439E6E0011;
 Mon, 17 Jun 2019 14:51:55 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v5 12/12] drm/vc4: hdmi: Set default state margin at reset
Date: Mon, 17 Jun 2019 16:51:39 +0200
Message-Id: <44e24172e300be6a41578517021ef6a6e90ed682.1560783090.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075159_619927_5285F744 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, noralf@tronnes.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tm93IHRoYXQgdGhlIFRWIG1hcmdpbnMgYXJlIHByb3Blcmx5IHBhcnNlZCBhbmQgZmlsbGVkIGlu
dG8KZHJtX2NtZGxpbmVfbW9kZSwgd2UganVzdCBuZWVkIHRvIGluaXRpYWxpc2UgdGhlIGZpcnN0
IHN0YXRlIGF0IHJlc2V0IHRvCmdldCB0aG9zZSB2YWx1ZXMgYW5kIHN0YXJ0IHVzaW5nIHRoZW0u
CgpSZXZpZXdlZC1ieTogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+ClNpZ25l
ZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9vdGxpbi5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL3ZjNC92YzRfaGRtaS5jIHwgOCArKysrKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS92YzQvdmM0X2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2hkbWkuYwpp
bmRleCA2YmVhYzFjYTFmMjcuLjRhOWM4YzlmZTJiMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3ZjNC92YzRfaGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2hkbWkuYwpA
QCAtMjU4LDExICsyNTgsMTcgQEAgc3RhdGljIGludCB2YzRfaGRtaV9jb25uZWN0b3JfZ2V0X21v
ZGVzKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiAJcmV0dXJuIHJldDsKIH0KIAor
c3RhdGljIHZvaWQgdmM0X2hkbWlfY29ubmVjdG9yX3Jlc2V0KHN0cnVjdCBkcm1fY29ubmVjdG9y
ICpjb25uZWN0b3IpCit7CisJZHJtX2F0b21pY19oZWxwZXJfY29ubmVjdG9yX3Jlc2V0KGNvbm5l
Y3Rvcik7CisJZHJtX2F0b21pY19oZWxwZXJfY29ubmVjdG9yX3R2X3Jlc2V0KGNvbm5lY3Rvcik7
Cit9CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9mdW5jcyB2YzRfaGRtaV9j
b25uZWN0b3JfZnVuY3MgPSB7CiAJLmRldGVjdCA9IHZjNF9oZG1pX2Nvbm5lY3Rvcl9kZXRlY3Qs
CiAJLmZpbGxfbW9kZXMgPSBkcm1faGVscGVyX3Byb2JlX3NpbmdsZV9jb25uZWN0b3JfbW9kZXMs
CiAJLmRlc3Ryb3kgPSB2YzRfaGRtaV9jb25uZWN0b3JfZGVzdHJveSwKLQkucmVzZXQgPSBkcm1f
YXRvbWljX2hlbHBlcl9jb25uZWN0b3JfcmVzZXQsCisJLnJlc2V0ID0gdmM0X2hkbWlfY29ubmVj
dG9yX3Jlc2V0LAogCS5hdG9taWNfZHVwbGljYXRlX3N0YXRlID0gZHJtX2F0b21pY19oZWxwZXJf
Y29ubmVjdG9yX2R1cGxpY2F0ZV9zdGF0ZSwKIAkuYXRvbWljX2Rlc3Ryb3lfc3RhdGUgPSBkcm1f
YXRvbWljX2hlbHBlcl9jb25uZWN0b3JfZGVzdHJveV9zdGF0ZSwKIH07Ci0tIApnaXQtc2VyaWVz
IDAuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
