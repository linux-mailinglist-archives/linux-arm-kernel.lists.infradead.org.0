Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2A4101134
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 03:19:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M02kJOIml2BMHxHm57qo0ELqCKOGgMcRPoMCjM0axyQ=; b=HRzhr1R1Y1bLRV
	yntChtiYkwJ0LdCfc1kLo0pzNM0GnAqW4kWUpXSCnVgRH6P9In9St0Agl94z20wjOL/1H/qSmbNF7
	3I2rWZW38KJfdm0Ji2Q6S7Csl0WLDWbkTYaxElOzUDJ7VTVJmQpJxzYfB2tCChPq2t32FiEu8vMrP
	1DI7rC7p34ST3K1nfq91aMzFb/T00GU8MhuSbcxqxlUIPqiTfMTnqh/nnf5uIIAwB/VTcB3gsw9pE
	Us8A9D8WQVdw37TxsUNCagucrUJEWEoTQwdjUPn5UY8GgJxo+NPYJWj1nkVqFykOv6mHkFiBzlqHI
	6YX1RXZ4etY7mSnkqVPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWt7F-0006V2-Au; Tue, 19 Nov 2019 02:19:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWt70-0006S0-CP; Tue, 19 Nov 2019 02:19:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 765C4AD94;
 Tue, 19 Nov 2019 02:19:22 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v4 1/8] dt-bindings: interrupt-controller: Add Realtek
 RTD1195/RTD1295 mux
Date: Tue, 19 Nov 2019 03:19:10 +0100
Message-Id: <20191119021917.15917-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191119021917.15917-1-afaerber@suse.de>
References: <20191119021917.15917-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_181926_567595_0C7404E5 
X-CRM114-Status: GOOD (  10.92  )
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
ZGU+Ci0tLQogdjMgLT4gdjQ6CiAqIFNxdWFzaGVkIFJURDExOTUKICogQ29udmVydGVkIHRvIFlB
TUwgc2NoZW1hCiAqIFJlbmFtZWQgZmlsZSBmcm9tIHJlYWx0ZWsscnRkMTE5eC1tdXggdG8gcmVh
bHRlayxydGQxMTk1LW11eAogCiB2MiAtPiB2MzoKICogUmVuYW1lZCBub24taXNvIGlycSBtdXgg
dG8gIm1pc2MiIGZvciBjbGFyaXR5CgogdjEgLT4gdjI6CiAqIERyb3BwZWQgcmVmZXJlbmNlIHRv
IGNvbW1vbiBpbnRlcnJ1cHQudHh0IGJpbmRpbmdzIChSb2IpCiAKIC4uLi9pbnRlcnJ1cHQtY29u
dHJvbGxlci9yZWFsdGVrLHJ0ZDExOTUtbXV4LnlhbWwgIHwgNTMgKysrKysrKysrKysrKysrKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIv
cmVhbHRlayxydGQxMTk1LW11eC55YW1sCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL3JlYWx0ZWsscnRkMTE5NS1tdXgu
eWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJv
bGxlci9yZWFsdGVrLHJ0ZDExOTUtbXV4LnlhbWwKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXgg
MDAwMDAwMDAwMDAwLi41Y2YzYTI4Y2VkYmEKLS0tIC9kZXYvbnVsbAorKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvcmVhbHRlayxydGQx
MTk1LW11eC55YW1sCkBAIC0wLDAgKzEsNTMgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IChHUEwtMi4wLW9yLWxhdGVyIE9SIEJTRC0yLUNsYXVzZSkKKyVZQU1MIDEuMgorLS0tCiskaWQ6
IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2ludGVycnVwdC1jb250cm9sbGVyL3JlYWx0
ZWsscnRkMTE5NS1tdXgueWFtbCMKKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRh
LXNjaGVtYXMvY29yZS55YW1sIworCit0aXRsZTogUmVhbHRlayBSVEQxMTk1LzEyOTUgSVJRIE11
eCBDb250cm9sbGVyCisKK21haW50YWluZXJzOgorICAtIEFuZHJlYXMgRsOkcmJlciA8YWZhZXJi
ZXJAc3VzZS5kZT4KKworYWxsT2Y6CisgIC0gJHJlZjogL3NjaGVtYXMvaW50ZXJydXB0LWNvbnRy
b2xsZXIueWFtbCMKKworcHJvcGVydGllczoKKyAgY29tcGF0aWJsZToKKyAgICBlbnVtOgorICAg
ICAgLSByZWFsdGVrLHJ0ZDExOTUtbWlzYy1pcnEtbXV4CisgICAgICAtIHJlYWx0ZWsscnRkMTE5
NS1pc28taXJxLW11eAorICAgICAgLSByZWFsdGVrLHJ0ZDEyOTUtbWlzYy1pcnEtbXV4CisgICAg
ICAtIHJlYWx0ZWsscnRkMTI5NS1pc28taXJxLW11eAorCisgIHJlZzoKKyAgICBtYXhJdGVtczog
MQorCisgIGludGVycnVwdHM6CisgICAgZGVzY3JpcHRpb246IFNwZWNpZmllcyB0aGUgaW50ZXJy
dXB0IGxpbmUgd2hpY2ggaXMgbXV4J2VkLgorICAgIG1heEl0ZW1zOiAxCisKKyAgaW50ZXJydXB0
LWNvbnRyb2xsZXI6IHRydWUKKworICAiI2ludGVycnVwdC1jZWxscyI6CisgICAgY29uc3Q6IDEK
KworcmVxdWlyZWQ6CisgIC0gY29tcGF0aWJsZQorICAtIHJlZworICAtIGludGVycnVwdHMKKyAg
LSBpbnRlcnJ1cHQtY29udHJvbGxlcgorICAtICIjaW50ZXJydXB0LWNlbGxzIgorCitleGFtcGxl
czoKKyAgLSB8CisgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVy
L2FybS1naWMuaD4KKworICAgIGludGVycnVwdC1jb250cm9sbGVyQDk4MDA3MDAwIHsKKyAgICAg
ICAgY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEyOTUtaXNvLWlycS1tdXgiOworICAgICAgICBy
ZWcgPSA8MHg5ODAwNzAwMCAweDEwMD47CisgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA0
MSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKyAgICAgICAgaW50ZXJydXB0LWNvbnRyb2xsZXI7Cisg
ICAgICAgICNpbnRlcnJ1cHQtY2VsbHMgPSA8MT47CisgICAgfTsKKy4uLgotLSAKMi4xNi40CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
