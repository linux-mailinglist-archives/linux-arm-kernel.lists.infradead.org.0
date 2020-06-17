Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53E31FCA27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OROtf5YNIueeUaE+pojcA/vdgzeo0lHLixj0byWrwaA=; b=e2VarQ9Ayy2GAx
	beEgqAofugmI/6jR7+BZy+2m40PVt1qhWyfkewJiS4YGd+JboK5MEkqo4/Ipg4HSBVuVXDP3yM77H
	+2L1FdMr3AII00xurIZ7y9X3Nyq99J/Se24DWkgw9WjaBK/1hPfS13C02r0INS47ePKy4HyA4glKe
	xNCGbp5zSOUHWOuVURXNay3WcIAgwMzLNzjuA3Nh4WBL6vVLklSFtpasOr3ZQjJnsl7Cr5VluKOQX
	B3hB48+6wDhoX/bD6Wdj4EwW28DBfUhDlTGnBcZhVKvAxLQCvhvSMU7SzXxrUcM+FBtM7gkZ0o5ph
	/Q53BIwqnwsKSekYk8dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUfu-00019G-Gk; Wed, 17 Jun 2020 09:48:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUey-0000Pl-MM
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 09:47:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id B830B2A3882
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Laurent.pinchart@ideasonboard.com
Subject: [PATCH v4 4/4] drm/bridge: tfp410: Fix setup and hold time calculation
Date: Wed, 17 Jun 2020 11:46:33 +0200
Message-Id: <20200617094633.19663-5-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200617094633.19663-1-ricardo.canuelo@collabora.com>
References: <20200617094633.19663-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_024708_876990_8D82177D 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, robh+dt@kernel.org, tomi.valkeinen@ti.com,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBmaXhlcyBhIGJ1ZyBpbiB0aGUgY2FsY3VsYXRpb24gb2YgdGhlIHNldHVwIGFuZCBob2xk
IHRpbWVzIGJhc2VkIG9uCnRoZSBkZXNrZXcgY29uZmlndXJhdGlvbi4KClNpZ25lZC1vZmYtYnk6
IFJpY2FyZG8gQ2HDsXVlbG8gPHJpY2FyZG8uY2FudWVsb0Bjb2xsYWJvcmEuY29tPgpSZXZpZXdl
ZC1ieTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvdGktdGZwNDEwLmMgfCA0ICsrLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2JyaWRnZS90aS10ZnA0MTAuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvdGktdGZwNDEwLmMKaW5kZXggZGZkZTgxMWYzNDExLi4yMWQ5OWI0ZWEwYzkgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvdGktdGZwNDEwLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS90aS10ZnA0MTAuYwpAQCAtMjc4LDggKzI3OCw4IEBAIHN0YXRpYyBpbnQgdGZw
NDEwX3BhcnNlX3RpbWluZ3Moc3RydWN0IHRmcDQxMCAqZHZpLCBib29sIGkyYykKIAlpZiAoZGVz
a2V3ID4gNykKIAkJcmV0dXJuIC1FSU5WQUw7CiAKLQl0aW1pbmdzLT5zZXR1cF90aW1lX3BzID0g
bWluKDAsIDEyMDAgLSAzNTAgKiAoKHMzMilkZXNrZXcgLSA0KSk7Ci0JdGltaW5ncy0+aG9sZF90
aW1lX3BzID0gbWluKDAsIDEzMDAgKyAzNTAgKiAoKHMzMilkZXNrZXcgLSA0KSk7CisJdGltaW5n
cy0+c2V0dXBfdGltZV9wcyA9IDEyMDAgLSAzNTAgKiAoKHMzMilkZXNrZXcgLSA0KTsKKwl0aW1p
bmdzLT5ob2xkX3RpbWVfcHMgPSBtYXgoMCwgMTMwMCArIDM1MCAqICgoczMyKWRlc2tldyAtIDQp
KTsKIAogCXJldHVybiAwOwogfQotLSAKMi4xOC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
