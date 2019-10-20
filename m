Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14644DDC51
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 06:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/A4pdnlVyKLUa5yQyt/9CkqBzvW9GUeSWZjvkq9GH/4=; b=can5wHRCurcTR8
	7PTIC30HkQ+jjRgmo7ubzfKyAVjMtw3jBzmhogWRibFDPYcYeRxXl5WizVvvp2EVXQeaMkMQCLqSP
	UIpvd0IBitoC7TtfIiFV1E2jYEs9wlN9kiFh5NpkG/1BAIcz2H9AEcLaxAtQ5v9aaITbQU/oSC3jm
	o7ZjbqkZrDgKbRDWOzVxK+WsNcQW///rXqseod4KJZg76R7SkEK3KcUjOQJ+xvRnoI5mHeYIBQuje
	EGH5pDQSyZjY2V/MpCM5JZGkvaXA/k47ihlGi5dSQF54wr6jAeO1yj+x7S+b2NfymWKRuN/bDE0+p
	wmZAI/0DRMJt/9rAj7RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM2XM-0003Tm-Ib; Sun, 20 Oct 2019 04:09:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM2W5-0002UG-66; Sun, 20 Oct 2019 04:08:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 10F15AC8F;
 Sun, 20 Oct 2019 04:08:26 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 1/8] dt-bindings: watchdog: realtek: Convert RTD119x to
 schema
Date: Sun, 20 Oct 2019 06:08:10 +0200
Message-Id: <20191020040817.16882-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191020040817.16882-1-afaerber@suse.de>
References: <20191020040817.16882-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_210829_387750_E602ED0A 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q29udmVydCB0aGUgUmVhbHRlayB3YXRjaGRvZyBiaW5kaW5nIHRvIGEgWUFNTCBzY2hlbWEuCgpT
aWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjI6
IE5ldwogCiAuLi4vYmluZGluZ3Mvd2F0Y2hkb2cvcmVhbHRlayxydGQxMTl4LnR4dCAgICAgICAg
ICB8IDE3IC0tLS0tLS0tLS0KIC4uLi9iaW5kaW5ncy93YXRjaGRvZy9yZWFsdGVrLHJ0ZDExOXgu
eWFtbCAgICAgICAgIHwgMzggKysrKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2Vk
LCAzOCBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvcmVhbHRlayxydGQxMTl4
LnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy93YXRjaGRvZy9yZWFsdGVrLHJ0ZDExOXgueWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9yZWFsdGVrLHJ0ZDExOXgudHh0IGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3JlYWx0ZWsscnRkMTE5eC50
eHQKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDA1NjUzMDU0YmQ1Yi4uMDAwMDAwMDAw
MDAwCi0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9yZWFs
dGVrLHJ0ZDExOXgudHh0CisrKyAvZGV2L251bGwKQEAgLTEsMTcgKzAsMCBAQAotUmVhbHRlayBS
VEQxMjk1IFdhdGNoZG9nCi09PT09PT09PT09PT09PT09PT09PT09PT0KLQotUmVxdWlyZWQgcHJv
cGVydGllczoKLQotLSBjb21wYXRpYmxlIDogIFNob3VsZCBiZSAicmVhbHRlayxydGQxMjk1LXdh
dGNoZG9nIgotLSByZWcgICAgICAgIDogIFNwZWNpZmllcyB0aGUgcGh5c2ljYWwgYmFzZSBhZGRy
ZXNzIGFuZCBzaXplIG9mIHJlZ2lzdGVycwotLSBjbG9ja3MgICAgIDogIFNwZWNpZmllcyBvbmUg
Y2xvY2sgaW5wdXQKLQotCi1FeGFtcGxlOgotCi0Jd2F0Y2hkb2dAOTgwMDc2ODAgewotCQljb21w
YXRpYmxlID0gInJlYWx0ZWsscnRkMTI5NS13YXRjaGRvZyI7Ci0JCXJlZyA9IDwweDk4MDA3Njgw
IDB4MTAwPjsKLQkJY2xvY2tzID0gPCZvc2MyN00+OwotCX07CmRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvcmVhbHRlayxydGQxMTl4LnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvcmVhbHRlayxydGQx
MTl4LnlhbWwKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi41ZDkyY2Zk
ZmQwNDYKLS0tIC9kZXYvbnVsbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3Mvd2F0Y2hkb2cvcmVhbHRlayxydGQxMTl4LnlhbWwKQEAgLTAsMCArMSwzOCBAQAorIyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgQlNELTItQ2xhdXNlKQor
JVlBTUwgMS4yCistLS0KKyRpZDogImh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3dhdGNo
ZG9nL3JlYWx0ZWsscnRkMTE5eC55YW1sIyIKKyRzY2hlbWE6ICJodHRwOi8vZGV2aWNldHJlZS5v
cmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMiCisKK3RpdGxlOiBSZWFsdGVrIFJURDEyOTUgV2F0
Y2hkb2cKKworbWFpbnRhaW5lcnM6CisgIC0gQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNl
LmRlPgorCithbGxPZjoKKyAgLSAkcmVmOiB3YXRjaGRvZy55YW1sIworCitwcm9wZXJ0aWVzOgor
ICBjb21wYXRpYmxlOgorICAgIG9uZU9mOgorICAgICAgLSBjb25zdDogcmVhbHRlayxydGQxMjk1
LXdhdGNoZG9nCisKKyAgcmVnOgorICAgIG1heEl0ZW1zOiAxCisKKyAgY2xvY2tzOgorICAgIG1h
eEl0ZW1zOiAxCisKK3JlcXVpcmVkOgorICAtIGNvbXBhdGlibGUKKyAgLSByZWcKKyAgLSBjbG9j
a3MKKworZXhhbXBsZXM6CisgIC0gfAorCXdhdGNoZG9nQDk4MDA3NjgwIHsKKwkJY29tcGF0aWJs
ZSA9ICJyZWFsdGVrLHJ0ZDEyOTUtd2F0Y2hkb2ciOworCQlyZWcgPSA8MHg5ODAwNzY4MCAweDEw
MD47CisJCWNsb2NrcyA9IDwmb3NjMjdNPjsKKwl9OworLi4uCi0tIAoyLjE2LjQKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
