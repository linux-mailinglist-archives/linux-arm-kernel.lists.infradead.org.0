Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC13B34D86
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JobBnKSzpWQSIIMSJHP9Loi8vDb/B/c9QhTIA+DEg4=; b=ERvUGqpaugNX1K
	j5koJ/bt3M7Ybp+U2ng+irBqvJ2KmGXPs3ndDtEdPYKKHcyNZnkMaa6J2pg1+sJoUPEXcqZEG6lRq
	eel9tDxnyP15nUP+2mteQLseP3lzKD2XGf0EDhjdcrP4vc7CWVnGv4p6ew9qlJvFol3CPkyHjXImt
	XeXuyQ3s4cvMtdNwVgr3eu8QDTwoX+YFyazPbpk3l2xlwlp31V/8s/rIPkHfxV+qP4z9jMFA3LpGi
	OwOmiJ/zxRiEf1If9BS780Lxhy6ZaMhBGXW6/YyPheInPfwK1cmmxylAFuILm6idIagtET4hzHpoQ
	EI1PPNcuEY04yEXOWUEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCMk-0000z7-Au; Tue, 04 Jun 2019 16:32:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCKK-0006XL-Bj
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id w13so16485495wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=njnjG6a7jdrYLSKYX++HVTkLLSLz4gvoHp7YU4YYSHc=;
 b=hjRO/5G+35x3CtsnItSo0oEhpihExukJxRz38P34BJFVsCWjmfCgVq669GLHPmTu63
 +Td9MCqpm903OMRnobhlEySB4BaoYn/pKaVbrcdroRrnkYZrLRCAyY47rQVzMYSG9hS4
 tOP9cLOBdwkRdKWwDOy1QJnqcfasCZI5Epx0VXQd+n4JmaV0Rm76h3n0gpap544V5EX6
 towlwcb5mD0TBfKcT+WgfSjE4SnSNz7gzXMEVuV8p8RUTl3Px2Bf8MmR3+ApI7w9rM8u
 btAHqLoxcVEPNCnB0NWPMHpvzPVOSZYm8PFdlL6m7EZZl7kMLDqxsFepS7c4afXfenRj
 QJxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=njnjG6a7jdrYLSKYX++HVTkLLSLz4gvoHp7YU4YYSHc=;
 b=rhL5q7xNDBT2GwG/c/BD31ERkPjjxnhF9Ay727yKMbpqSV2qHv3+8RcBnet10yRHX9
 PKpf/ta4iIe/EUqT0gGV8YfTJUAdBFZuqh32le8IZA8wZCzohHGiAgHYdUQ1zLsUSP5z
 B8c7NF22AB/AvhDKbsWhXf8fG8Kp1LoBFvq6hbrhszpV2Zm/48g9cmbhrR7nniUlyJPL
 HFw9IEro3aoalGX4+3kBP60XNZLacsePCWOE6xJgugQdPPuKT6WYOoVLQZy08uiLd2FA
 WSnhN+vWs1OCfIS8IdLsDvAmgv7hqlT3+aSA8ePSRTjfJ7PQd3ySJsKBJbqGGicjBjiQ
 6PFA==
X-Gm-Message-State: APjAAAWTB8MJ7KJ3jGWCdW2NQ093r2/1NZMCMe2WMpGfiAEBnMuhoY0h
 3+7S2vr5EASfMeb6v/pujtE=
X-Google-Smtp-Source: APXvYqysS9M3ppquDw2c5HMbHi5hNJ8JqiIA9np0vOWzotvcTepc7ZINfKGMWQ1aLcdglS57gxLIuA==
X-Received: by 2002:a05:6000:124b:: with SMTP id
 j11mr901402wrx.157.1559665818860; 
 Tue, 04 Jun 2019 09:30:18 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:18 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 11/13] arm64: dts: allwinner: h6: Add IR receiver node
Date: Tue,  4 Jun 2019 18:29:57 +0200
Message-Id: <20190604162959.29199-12-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604162959.29199-1-peron.clem@gmail.com>
References: <20190604162959.29199-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093021_209232_6330193D 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Sean Young <sean@mess.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IElSIGlzIHNpbWlsYXIgdG8gQTMxIGFuZCBjYW4gdXNlIHNhbWUgZHJpdmVy
LgoKQWRkIHN1cHBvcnQgZm9yIGl0LgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxw
ZXJvbi5jbGVtQGdtYWlsLmNvbT4KQWNrZWQtYnk6IFNlYW4gWW91bmcgPHNlYW5AbWVzcy5vcmc+
Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgfCAxOSAr
KysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGIv
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKaW5kZXggMTZjNWMz
ZDBmZDgxLi42NDljYmRmZTQ1MmUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxs
d2lubmVyL3N1bjUwaS1oNi5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi5kdHNpCkBAIC02NDcsNiArNjQ3LDI1IEBACiAJCQkJcGlucyA9ICJQTDAiLCAi
UEwxIjsKIAkJCQlmdW5jdGlvbiA9ICJzX2kyYyI7CiAJCQl9OworCisJCQlyX2lyX3J4X3Bpbjog
ci1pci1yeC1waW4geworCQkJCXBpbnMgPSAiUEw5IjsKKwkJCQlmdW5jdGlvbiA9ICJzX2Npcl9y
eCI7CisJCQl9OworCQl9OworCisJCXJfaXI6IGlyQDcwNDAwMDAgeworCQkJCWNvbXBhdGlibGUg
PSAiYWxsd2lubmVyLHN1bjUwaS1oNi1pciIsCisJCQkJCSAgICAgImFsbHdpbm5lcixzdW42aS1h
MzEtaXIiOworCQkJCXJlZyA9IDwweDA3MDQwMDAwIDB4NDAwPjsKKwkJCQlpbnRlcnJ1cHRzID0g
PEdJQ19TUEkgMTA5IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJCWNsb2NrcyA9IDwmcl9jY3Ug
Q0xLX1JfQVBCMV9JUj4sCisJCQkJCSA8JnJfY2N1IENMS19JUj47CisJCQkJY2xvY2stbmFtZXMg
PSAiYXBiIiwgImlyIjsKKwkJCQlyZXNldHMgPSA8JnJfY2N1IFJTVF9SX0FQQjFfSVI+OworCQkJ
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCQkJcGluY3RybC0wID0gPCZyX2lyX3J4X3Bp
bj47CisJCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKIAogCQlyX2kyYzogaTJjQDcwODE0
MDAgewotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
