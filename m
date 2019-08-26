Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE7D9D2FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDSz0g6v406AqG3sIS4MGtZiEX+EcCwvleWD7nEeZEo=; b=LErZpue0e5ldwy
	InoftCARvD7ekvu/0vdswycMIRW2gYD/i68k6FG3O5c/nvqCXlV0PqDYDrp5tfFCw31tuLAImRvw2
	16XCz8zMVg1H/iLB5KyRJe9SD0ZSIgcUiHLdJtB/euqy4cvjHmIdr+3lcGdO81e54h8NASejVDdKx
	+jncSCflCg+y+2GLCD/yj0TRV7XMC/7XGcWHWiba7EJ6MoFvjFmU+vYP7DG5llz4gUwWv9QtpCUFc
	smQ/SnBcQopcXj6hoD42wNv/BsYWg3sLmYooiKzfvi1nyluW5LOBJiILmOjpjnUTCCHPuVyBEOnod
	hRXUicUkO7VoIpuk/QkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H5S-0002xH-Mm; Mon, 26 Aug 2019 15:39:18 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H4v-0002i2-Uf
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:38:47 +0000
Received: by mail-wm1-f66.google.com with SMTP id i63so16320000wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 08:38:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9NkYS7urVCiEtt0M3GAw4i3Cp3ycEW4gYRkzUzyQ4Xs=;
 b=b8LjTekQCpC6gOdcINRSF/wUyf4mmCWKkuV9MwkjaEB/u511c4qUMPLyDulistk834
 o5ho8SNkp2/ehRpG36gdTpbTna1xu6IZy7p1CQ5wEC1Tlolg0iMxYNWWBk7zye2Odl0x
 nO0BB7KYcO9m2qihikVBZ7D1539/NJN3kmXrMVnLWVGFs3rAgkfPu1qpirsu4geyaka9
 tx1uNzJnhtI/GP0PGPWgMNzm7sfMoaaizStjIJtTLPB91zqeqPz9ja3jl3t+YHTkMTWo
 6MOz6LgkBhJzpq/UkvnXgaIONPEVPe4lZcrIr1t088Kv4UxlcGx59Bno5Hy3TKJQpNn2
 tdcg==
X-Gm-Message-State: APjAAAUV9in9thoartcqT8xWwDvm3JX2x0VBihJ0GN3xNmvenG74UBu/
 8bOXCKlp/QrQ9xl74XUucrU=
X-Google-Smtp-Source: APXvYqzrHfkBV0VZT/8b7GJDeH5p/8ZVnepaLjJKhgQaGgIBm+5y5g3FQZTpNlEAYwACbwrmIYxjRA==
X-Received: by 2002:a1c:a74b:: with SMTP id q72mr23123109wme.96.1566833924812; 
 Mon, 26 Aug 2019 08:38:44 -0700 (PDT)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id z8sm11580798wru.13.2019.08.26.08.38.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 08:38:44 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 02/12] ARM: dts: imx7d: cl-som-imx7: add phy-reset-gpios
Date: Mon, 26 Aug 2019 16:37:50 +0100
Message-Id: <20190826153800.35400-2-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190826153800.35400-1-git@andred.net>
References: <20190826153800.35400-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083845_985269_A4D6E7F0 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andre.draszik[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Igor Grinberg <grinberg@compulab.co.il>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Ilya Ledvich <ilya@compulab.co.il>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWNjb3JkaW5nIHRvIHRoZSBkZXNpZ24gdGVhbToKKiByZXNldCBpbnB1dCBQSFkwIGlzIGRpcmVj
dGx5IGNvbm5lY3RlZCB0byB0aGUKICBjb3JyZXNwb25kaW5nIHBpbiBHUElPMV80IGluIHRoZSBp
Lk1YNwoqIHJlc2V0IGZvciBQSFkxIGlzIGRvbmUgdXNpbmcgdGhlIGdwaW8gZXhwYW5kZXIgYml0
IDQKCldoaWxlIHRvdWNoaW5nIHRoaXMgYXJlYSwgYWxzbyBhZGQgYSAnY29tcGF0aWJsZScKdG8g
dGhlIHBoeSB0byBtYWtlIGl0IG1vcmUgY2xlYXIgd2hhdCB0aGlzIGlzIGFuZAp3aGljaCBkcml2
ZXIgaGFuZGxlcyB0aGlzIC0gYW4gRXRoZXJuZXQgcGh5IGF0dGFjaGVkCnRvIG1kaW8sIGhhbmRs
ZWQgYnkgb2ZfbWRpby5jCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8Z2l0QGFuZHJl
ZC5uZXQ+CkNjOiBJbHlhIExlZHZpY2ggPGlseWFAY29tcHVsYWIuY28uaWw+CkNjOiBJZ29yIEdy
aW5iZXJnIDxncmluYmVyZ0Bjb21wdWxhYi5jby5pbD4KQ2M6IFJvYiBIZXJyaW5nIDxyb2JoK2R0
QGtlcm5lbC5vcmc+CkNjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgpDYzog
U2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPgpDYzogU2FzY2hhIEhhdWVyIDxzLmhhdWVy
QHBlbmd1dHJvbml4LmRlPgpDYzogUGVuZ3V0cm9uaXggS2VybmVsIFRlYW0gPGtlcm5lbEBwZW5n
dXRyb25peC5kZT4KQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4KQ2M6IE5Y
UCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KQ2M6IGRldmljZXRyZWVAdmdlci5rZXJu
ZWwub3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBhcmNo
L2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMgfCAxNCArKysrKysrKysrKysrLQog
MSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMgYi9hcmNoL2FybS9i
b290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMKaW5kZXggNmY3ZTg1Y2YwYzI4Li5lMDQzMmEz
YWEzNmYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0
cworKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMKQEAgLTMwLDEz
ICszMCwxNCBAQAogCiAmZmVjMSB7CiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKLQlwaW5j
dHJsLTAgPSA8JnBpbmN0cmxfZW5ldDE+OworCXBpbmN0cmwtMCA9IDwmcGluY3RybF9lbmV0MSAm
cGluY3RybF9lbmV0MXBoeT47CiAJYXNzaWduZWQtY2xvY2tzID0gPCZjbGtzIElNWDdEX0VORVQx
X1RJTUVfUk9PVF9TUkM+LAogCQkJICA8JmNsa3MgSU1YN0RfRU5FVDFfVElNRV9ST09UX0NMSz47
CiAJYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmY2xrcyBJTVg3RF9QTExfRU5FVF9NQUlOXzEw
ME1fQ0xLPjsKIAlhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwwPiwgPDEwMDAwMDAwMD47CiAJcGh5
LW1vZGUgPSAicmdtaWktaWQiOwogCXBoeS1oYW5kbGUgPSA8JmV0aHBoeTA+OworCXBoeS1yZXNl
dC1ncGlvcyA9IDwmZ3BpbzEgNCBHUElPX0FDVElWRV9MT1c+OwogCWZzbCxtYWdpYy1wYWNrZXQ7
CiAJc3RhdHVzID0gIm9rYXkiOwogCkBAIC00NSwxMCArNDYsMTIgQEAKIAkJI3NpemUtY2VsbHMg
PSA8MD47CiAKIAkJZXRocGh5MDogZXRoZXJuZXQtcGh5QDAgeworCQkJY29tcGF0aWJsZSA9ICJl
dGhlcm5ldC1waHktaWVlZTgwMi4zLWMyMiI7CiAJCQlyZWcgPSA8MD47CiAJCX07CiAKIAkJZXRo
cGh5MTogZXRoZXJuZXQtcGh5QDEgeworCQkJY29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWVl
ZTgwMi4zLWMyMiI7CiAJCQlyZWcgPSA8MT47CiAJCX07CiAJfTsKQEAgLTYzLDYgKzY2LDcgQEAK
IAlhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwwPiwgPDEwMDAwMDAwMD47CiAJcGh5LW1vZGUgPSAi
cmdtaWktaWQiOwogCXBoeS1oYW5kbGUgPSA8JmV0aHBoeTE+OworCXBoeS1yZXNldC1ncGlvcyA9
IDwmcGNhOTU1NSA0IEdQSU9fQUNUSVZFX0xPVz47CiAJZnNsLG1hZ2ljLXBhY2tldDsKIAlzdGF0
dXMgPSAib2theSI7CiB9OwpAQCAtMjYyLDMgKzI2NiwxMSBAQAogCQk+OwogCX07CiB9OworCism
aW9tdXhjX2xwc3IgeworCXBpbmN0cmxfZW5ldDFwaHk6IGVuZXQxcGh5Z3JwIHsKKwkJZnNsLHBp
bnMgPSA8CisJCQlNWDdEX1BBRF9MUFNSX0dQSU8xX0lPMDRfX0dQSU8xX0lPNAkweDM0CisJCT47
CisJfTsKK307Ci0tIAoyLjIzLjAucmMxCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
