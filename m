Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8EE1049D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 06:03:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLGyUbM9zUEyMWB4xh6EGaW9klqHvTe6HxQ5IxdYRoM=; b=nsFjzqbb5qG0e4
	h+XbgSX7aCi5G56Vi2CeSuyDlHUcWzrkFcYzX62+n08oIZzYrvMnJ2Pr1vkTFQGYCOxrSrM1Tpka7
	108y//s0ko7qZwTzYc9fATnj26P43Z/Yd6ebgDqq36zRqVStS+AY9WAvE15jD/h3pBmDdx+LABkHc
	z70nmopwNiJ7WlVhGzuw5Uzecd7YQW+h7XjKk38xhIJ3N3826FRfM7QFJS42yQZQzkGnz6dVD7iVO
	MEvYTVUDy1hWzUHCUfp6vjhsC+e/i2UflyPQrv6CUlPcXCxP24n17yg86yvohV5ZHPkiohuFX3xCq
	Y+RXGxINZCGHPDv5i9Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXecM-0004Hc-AM; Thu, 21 Nov 2019 05:02:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXebm-00044X-24; Thu, 21 Nov 2019 05:02:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 355E0AFD4;
 Thu, 21 Nov 2019 05:02:18 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v5 1/9] dt-bindings: interrupt-controller: Add Realtek
 RTD1195/RTD1295 mux
Date: Thu, 21 Nov 2019 06:02:00 +0100
Message-Id: <20191121050208.11324-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191121050208.11324-1-afaerber@suse.de>
References: <20191121050208.11324-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_210222_244058_AAA2761D 
X-CRM114-Status: GOOD (  11.09  )
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
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGJpbmRpbmcgZm9yIFJlYWx0ZWsgUlREMTI5NSBhbmQgUlREMTE5NSBJUlEgbXV4LgoKQWNr
ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CltBRjogQ29udmVydGVkIHRvIFlB
TUwgc2NoZW1hXQpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2Uu
ZGU+Ci0tLQogdjQgLT4gdjU6IFVuY2hhbmdlZAogCiB2MyAtPiB2NDoKICogU3F1YXNoZWQgUlRE
MTE5NQogKiBDb252ZXJ0ZWQgdG8gWUFNTCBzY2hlbWEKICogUmVuYW1lZCBmaWxlIGZyb20gcmVh
bHRlayxydGQxMTl4LW11eCB0byByZWFsdGVrLHJ0ZDExOTUtbXV4CiAKIHYyIC0+IHYzOgogKiBS
ZW5hbWVkIG5vbi1pc28gaXJxIG11eCB0byAibWlzYyIgZm9yIGNsYXJpdHkKCiB2MSAtPiB2MjoK
ICogRHJvcHBlZCByZWZlcmVuY2UgdG8gY29tbW9uIGludGVycnVwdC50eHQgYmluZGluZ3MgKFJv
YikKIAogLi4uL2ludGVycnVwdC1jb250cm9sbGVyL3JlYWx0ZWsscnRkMTE5NS1tdXgueWFtbCAg
fCA1MyArKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNTMgaW5zZXJ0aW9u
cygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9pbnRlcnJ1cHQtY29udHJvbGxlci9yZWFsdGVrLHJ0ZDExOTUtbXV4LnlhbWwKCmRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xs
ZXIvcmVhbHRlayxydGQxMTk1LW11eC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL3JlYWx0ZWsscnRkMTE5NS1tdXgueWFtbApuZXcg
ZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjVjZjNhMjhjZWRiYQotLS0gL2Rl
di9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQt
Y29udHJvbGxlci9yZWFsdGVrLHJ0ZDExOTUtbXV4LnlhbWwKQEAgLTAsMCArMSw1MyBAQAorIyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgQlNELTItQ2xhdXNl
KQorJVlBTUwgMS4yCistLS0KKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvaW50
ZXJydXB0LWNvbnRyb2xsZXIvcmVhbHRlayxydGQxMTk1LW11eC55YW1sIworJHNjaGVtYTogaHR0
cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCisKK3RpdGxlOiBSZWFs
dGVrIFJURDExOTUvMTI5NSBJUlEgTXV4IENvbnRyb2xsZXIKKworbWFpbnRhaW5lcnM6CisgIC0g
QW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgorCithbGxPZjoKKyAgLSAkcmVmOiAv
c2NoZW1hcy9pbnRlcnJ1cHQtY29udHJvbGxlci55YW1sIworCitwcm9wZXJ0aWVzOgorICBjb21w
YXRpYmxlOgorICAgIGVudW06CisgICAgICAtIHJlYWx0ZWsscnRkMTE5NS1taXNjLWlycS1tdXgK
KyAgICAgIC0gcmVhbHRlayxydGQxMTk1LWlzby1pcnEtbXV4CisgICAgICAtIHJlYWx0ZWsscnRk
MTI5NS1taXNjLWlycS1tdXgKKyAgICAgIC0gcmVhbHRlayxydGQxMjk1LWlzby1pcnEtbXV4CisK
KyAgcmVnOgorICAgIG1heEl0ZW1zOiAxCisKKyAgaW50ZXJydXB0czoKKyAgICBkZXNjcmlwdGlv
bjogU3BlY2lmaWVzIHRoZSBpbnRlcnJ1cHQgbGluZSB3aGljaCBpcyBtdXgnZWQuCisgICAgbWF4
SXRlbXM6IDEKKworICBpbnRlcnJ1cHQtY29udHJvbGxlcjogdHJ1ZQorCisgICIjaW50ZXJydXB0
LWNlbGxzIjoKKyAgICBjb25zdDogMQorCityZXF1aXJlZDoKKyAgLSBjb21wYXRpYmxlCisgIC0g
cmVnCisgIC0gaW50ZXJydXB0cworICAtIGludGVycnVwdC1jb250cm9sbGVyCisgIC0gIiNpbnRl
cnJ1cHQtY2VsbHMiCisKK2V4YW1wbGVzOgorICAtIHwKKyAgICAjaW5jbHVkZSA8ZHQtYmluZGlu
Z3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgorCisgICAgaW50ZXJydXB0LWNvbnRy
b2xsZXJAOTgwMDcwMDAgeworICAgICAgICBjb21wYXRpYmxlID0gInJlYWx0ZWsscnRkMTI5NS1p
c28taXJxLW11eCI7CisgICAgICAgIHJlZyA9IDwweDk4MDA3MDAwIDB4MTAwPjsKKyAgICAgICAg
aW50ZXJydXB0cyA9IDxHSUNfU1BJIDQxIElSUV9UWVBFX0xFVkVMX0hJR0g+OworICAgICAgICBp
bnRlcnJ1cHQtY29udHJvbGxlcjsKKyAgICAgICAgI2ludGVycnVwdC1jZWxscyA9IDwxPjsKKyAg
ICB9OworLi4uCi0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
