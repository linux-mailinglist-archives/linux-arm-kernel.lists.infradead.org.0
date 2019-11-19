Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30BE101143
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 03:20:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CM1oXPg0NzbXknSyvEeZNCAtPfefSwqwFL8EYPUX+ag=; b=TmPWAW/egCJa3J
	NneYWh/8wlnHEN2c6yrorKXF57sp9ByxhFep1ObqsJhlVdBFcbDaygN9tlFxJdKecJQTJ0/GonkAf
	OZXqciuGstAJnSa5PTjwZ+7qc3u0IOcoxl+lSPyDS0gFY6nznK1rhJ/v4QLp2TZok5NotIzync9HJ
	6u9BuSjXAFVuYWURzfECtiIZCXPX4Rl/BuRBjj8ImASKxAYmH3a2smi+CUApEsS2GQPUZAPNEmb4Q
	kzuaK6/8HEn0/8YAHAsoMTjeUkjjW2t7ioEZOx0x8nf3Dh1VJyuY+SpCLbX7ANIilG3jwV9J4coUY
	FTrCFUJNioOHlzxGax5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWt7v-0007gd-St; Tue, 19 Nov 2019 02:20:23 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWt70-0006S6-CO; Tue, 19 Nov 2019 02:19:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5C6F1B328;
 Tue, 19 Nov 2019 02:19:23 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v4 3/8] arm64: dts: realtek: rtd129x: Add irq muxes and UART
 interrupts
Date: Tue, 19 Nov 2019 03:19:12 +0100
Message-Id: <20191119021917.15917-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191119021917.15917-1-afaerber@suse.de>
References: <20191119021917.15917-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_181926_577114_3B4CC448 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGlzbyBhbmQgbWlzYyBJUlEgbXV4IERUIG5vZGVzIHRvIFJURDEyOXggU29DIGZhbWlseS4K
ClVwZGF0ZSB0aGUgVUFSVCBEVCBub2RlcyB3aXRoIGludGVycnVwdHMgZnJvbSB0aGVzZSBtdXhl
cywKc28gdGhhdCBVQVJUMCBjYW4gYmUgdXNlZCB3aXRob3V0IGVhcmx5Y29uLgoKU2lnbmVkLW9m
Zi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0KIHYzIC0+IHY0Ogog
KiBSZWJhc2VkIG9udG8gY2hpcC1pbmZvIGFuZCByLWJ1cwogKiBEcm9wcGVkIHNjaGVtYS12aW9s
YXRpbmcgc2Vjb25kIGludGVycnVwdHMgZm9yIFVBUlQxIGFuZCBVQVJUMgogCiB2MiAtPiB2MzoK
ICogQWRkZWQgbm9kZXMgdG8gcnRkMTI5eC5kdHNpIGluc3RlYWQgb2YgcnRkMTI5NS5kdHNpCiAq
IEFkb3B0ZWQgbWlzYyBjb21wYXRpYmxlIHN0cmluZwogKiBSZW5hbWVkIG5vZGUgbGFiZWwgZnJv
bSBpcnFfbXV4IHRvIG1pc2NfaXJxX211eCBmb3IgY2xhcml0eQogCiB2MSAtPiB2MjoKICogUmVi
YXNlZAogCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpIHwgMjIgKysr
KysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQppbmRleCA3ZDU2YzlmNWQ0OGEu
LjE4OGI0ZjI1NjkxNyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0
ZDEyOXguZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNp
CkBAIC04Niw2ICs4NiwxNCBAQAogCQkJCSNyZXNldC1jZWxscyA9IDwxPjsKIAkJCX07CiAKKwkJ
CWlzb19pcnFfbXV4OiBpbnRlcnJ1cHQtY29udHJvbGxlckA3MDAwIHsKKwkJCQljb21wYXRpYmxl
ID0gInJlYWx0ZWsscnRkMTI5NS1pc28taXJxLW11eCI7CisJCQkJcmVnID0gPDB4NzAwMCAweDEw
MD47CisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQxIElSUV9UWVBFX0xFVkVMX0hJR0g+Owor
CQkJCWludGVycnVwdC1jb250cm9sbGVyOworCQkJCSNpbnRlcnJ1cHQtY2VsbHMgPSA8MT47CisJ
CQl9OworCiAJCQlpc29fcmVzZXQ6IHJlc2V0LWNvbnRyb2xsZXJANzA4OCB7CiAJCQkJY29tcGF0
aWJsZSA9ICJzbnBzLGR3LWxvdy1yZXNldCI7CiAJCQkJcmVnID0gPDB4NzA4OCAweDQ+OwpAQCAt
MTA1LDYgKzExMyw4IEBACiAJCQkJcmVnLWlvLXdpZHRoID0gPDQ+OwogCQkJCWNsb2NrLWZyZXF1
ZW5jeSA9IDwyNzAwMDAwMD47CiAJCQkJcmVzZXRzID0gPCZpc29fcmVzZXQgUlREMTI5NV9JU09f
UlNUTl9VUjA+OworCQkJCWludGVycnVwdC1wYXJlbnQgPSA8Jmlzb19pcnFfbXV4PjsKKwkJCQlp
bnRlcnJ1cHRzID0gPDI+OwogCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCQl9OwogCkBAIC0x
MTUsNiArMTI1LDE0IEBACiAJCQkJICAgICAgPDB4MTcxZDggMHg0PjsKIAkJCX07CiAKKwkJCW1p
c2NfaXJxX211eDogaW50ZXJydXB0LWNvbnRyb2xsZXJAMWIwMDAgeworCQkJCWNvbXBhdGlibGUg
PSAicmVhbHRlayxydGQxMjk1LW1pc2MtaXJxLW11eCI7CisJCQkJcmVnID0gPDB4MWIwMDAgMHgx
MDA+OworCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA0MCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsK
KwkJCQlpbnRlcnJ1cHQtY29udHJvbGxlcjsKKwkJCQkjaW50ZXJydXB0LWNlbGxzID0gPDE+Owor
CQkJfTsKKwogCQkJdWFydDE6IHNlcmlhbEAxYjIwMCB7CiAJCQkJY29tcGF0aWJsZSA9ICJzbnBz
LGR3LWFwYi11YXJ0IjsKIAkJCQlyZWcgPSA8MHgxYjIwMCAweDEwMD47CkBAIC0xMjIsNiArMTQw
LDggQEAKIAkJCQlyZWctaW8td2lkdGggPSA8ND47CiAJCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQz
MjAwMDAwMD47CiAJCQkJcmVzZXRzID0gPCZyZXNldDIgUlREMTI5NV9SU1ROX1VSMT47CisJCQkJ
aW50ZXJydXB0LXBhcmVudCA9IDwmbWlzY19pcnFfbXV4PjsKKwkJCQlpbnRlcnJ1cHRzID0gPDM+
OwogCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCQl9OwogCkBAIC0xMzIsNiArMTUyLDggQEAK
IAkJCQlyZWctaW8td2lkdGggPSA8ND47CiAJCQkJY2xvY2stZnJlcXVlbmN5ID0gPDQzMjAwMDAw
MD47CiAJCQkJcmVzZXRzID0gPCZyZXNldDIgUlREMTI5NV9SU1ROX1VSMj47CisJCQkJaW50ZXJy
dXB0LXBhcmVudCA9IDwmbWlzY19pcnFfbXV4PjsKKwkJCQlpbnRlcnJ1cHRzID0gPDg+OwogCQkJ
CXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCQl9OwogCQl9OwotLSAKMi4xNi40CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
