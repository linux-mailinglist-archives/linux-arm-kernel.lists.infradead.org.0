Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0AB9D303
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+WbFyeCj0nMHjd0CR8yvEXe9YuJsL0l9d6XSVxpQaw=; b=fhXirzUxoorzSu
	Erv1bAb9aK4HBHusWHP7YS6rlJQJI8HDErj533UiBujJXrfvCzqvxYgUeTlAoHUXw44e6wZiWS8sN
	XY0KAQ6k2P14FWBP+mtzjNM877TohuJW+cFxBCFeUfAkWXcjRk7jbJmk1hPU8fmFnzHGwtt3DMPJm
	bdAibTKME/Fyfef8haJz0FMNtmBZHj9WXzs+7kcJCnz7L3iESNrFzlD5/Tc6W/HCzpF1TiSKx1COa
	z5s+91TSOxbgPp5sp8yb7QoAOtleQQa72v99pcNMlEGWVsgvtLV8pVsFz6bZmQm0Af3zJfVKGQ+Xo
	7okrom53aoDqODKBPXEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H5i-0003EE-7E; Mon, 26 Aug 2019 15:39:34 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H4w-0002ic-UV
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:38:48 +0000
Received: by mail-wm1-f66.google.com with SMTP id e8so293535wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 08:38:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oRnNY4JLf7ZTy3fdUTm9bEVVoWS6JMbuHY/wh8kGwgE=;
 b=MIk4J1ktB4YCUzypHKSRLJeH6buuxxRnDxwyeVHxa8V/Mjo7v0iYbESRhPgI142dl3
 q7p6TTjWdgWZ6WEZWgcj6CQOJru64cViWz9JpWTiTBUyFUZF9G3I3ZjnDs0+Or2Rtg8I
 Dl2JzC2vwf9rxOVho9I+EiimEalaxG55rNQhv5t59Audjyd83L5rt5xcDopAJmLeqaI4
 r1k19e7WOh/vPaK0oKV9iGTE+n9eUDx0YDpmS9B81xW0CQxXnC9CAJsbh746UBqYdNL1
 1bs+junYIzePwpdOEFu/NqkrczPRU/MuAAqdFn4WXKNv8kPRxA+9roChTrbX0e4JJ1MJ
 7tLQ==
X-Gm-Message-State: APjAAAU1FEn1CrGPEXkEXHiBqJVUknGQaqlMFB/BhXZwDnwyh8RZHIzp
 YAs3Lb5zU/O0z6Qmt8EDH3s=
X-Google-Smtp-Source: APXvYqxyyoXPftbW6GeJwx4yF6wo2uOK6DKbLk1+l/KNCdpLBNfpM76u9knFOkAdArEhuytwOMmhtg==
X-Received: by 2002:a1c:804b:: with SMTP id b72mr22413166wmd.139.1566833925797; 
 Mon, 26 Aug 2019 08:38:45 -0700 (PDT)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id z8sm11580798wru.13.2019.08.26.08.38.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 08:38:45 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 03/12] ARM: dts: imx7d: cl-som-imx7: fix i2c2
Date: Mon, 26 Aug 2019 16:37:51 +0100
Message-Id: <20190826153800.35400-3-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190826153800.35400-1-git@andred.net>
References: <20190826153800.35400-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083846_977221_7714CA96 
X-CRM114-Status: GOOD (  15.98  )
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

STJDMiBpcyBjb25maWd1cmVkIGluY29ycmVjdGx5IGF0IHRoZSBtb21lbnQ6CiogdXBkYXRlIGky
YzIgdG8gYWN0dWFsbHkgd29yayAoZml4IGluY29ycmVjdCBwaW5jdHJsIGFzc2lnbm1lbnRzKQoq
IGFkZCB0aGUgaTJjMiBidXMgcmVjb3ZlcnkgaW5mb3JtYXRpb24gWzFdCgpbMV0gTm90ZSB0aGF0
IHNjbCBpcyBiZWluZyBtYXJrZWQgYXMgR1BJT19PUEVOX0RSQUlOIGV2ZW4KdGhvdWdoIHRoZSBp
Lk1YIHBpbmN0cmwgZHJpdmVyIGRvZXMgbm90IHN1cHBvcnQgZW5hYmxpbmcKb3BlbiBkcmFpbiBk
aXJlY3RseSAtIGl0IGlzIGVuYWJsZWQgYnkgdGhlIGZpeGVkIHBpbm11eAplbnRyeS4KU28gd2hp
bGUgdGhpcyBmbGFnIGhhcyBubyBlZmZlY3QgaW4gcHJhY3RpY2UsIGl0IG5lZWRzCnRvIGJlIHRo
ZXJlIHB1cmVseSBzbyBhcyB0byBmaXggdGhlIGZvbGxvd2luZyB3YXJuaW5nCmZyb20gZ3Bpb2xp
YjoKICAgIGdwaW8tNiAoc2NsKTogZW5mb3JjZWQgb3BlbiBkcmFpbiBwbGVhc2UgZmxhZyBpdCBw
cm9wZXJseSBpbiBEVC9BQ1BJIERTRFQvYm9hcmQgZmlsZQphcyB0aGF0IGlzIHRoZSBtb2RlIHJl
cXVlc3RlZCBieSBpMmMtaW14LmMKClNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxnaXRA
YW5kcmVkLm5ldD4KQ2M6IElseWEgTGVkdmljaCA8aWx5YUBjb21wdWxhYi5jby5pbD4KQ2M6IEln
b3IgR3JpbmJlcmcgPGdyaW5iZXJnQGNvbXB1bGFiLmNvLmlsPgpDYzogUm9iIEhlcnJpbmcgPHJv
YmgrZHRAa2VybmVsLm9yZz4KQ2M6IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+
CkNjOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+CkNjOiBTYXNjaGEgSGF1ZXIgPHMu
aGF1ZXJAcGVuZ3V0cm9uaXguZGU+CkNjOiBQZW5ndXRyb25peCBLZXJuZWwgVGVhbSA8a2VybmVs
QHBlbmd1dHJvbml4LmRlPgpDYzogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgpD
YzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPgpDYzogZGV2aWNldHJlZUB2Z2Vy
Lmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwotLS0K
IGFyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0cyB8IDI2ICsrKysrKysrKysr
KysrKysrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3
LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0cwppbmRleCBlMDQz
MmEzYWEzNmYuLmVjODJmNDczOGM0ZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14
N2QtY2wtc29tLWlteDcuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1p
bXg3LmR0cwpAQCAtNzIsOCArNzIsMTEgQEAKIH07CiAKICZpMmMyIHsKLQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOworCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCIsICJncGlvIjsKIAlwaW5j
dHJsLTAgPSA8JnBpbmN0cmxfaTJjMj47CisJcGluY3RybC0xID0gPCZwaW5jdHJsX2kyYzJfcmVj
b3Zlcnk+OworCXNkYS1ncGlvcyA9IDwmZ3BpbzEgNyBHUElPX0FDVElWRV9ISUdIPjsKKwlzY2wt
Z3Bpb3MgPSA8JmdwaW8xIDYgKEdQSU9fQUNUSVZFX0hJR0ggfCBHUElPX09QRU5fRFJBSU4pPjsK
IAlzdGF0dXMgPSAib2theSI7CiAKIAlwbWljOiBwbWljQDggewpAQCAtMjM2LDEzICsyMzksNiBA
QAogCQk+OwogCX07CiAKLQlwaW5jdHJsX2kyYzI6IGkyYzJncnAgewotCQlmc2wscGlucyA9IDwK
LQkJCU1YN0RfUEFEX0kyQzJfU0RBX19JMkMyX1NEQQkJMHg0MDAwMDA3ZgotCQkJTVg3RF9QQURf
STJDMl9TQ0xfX0kyQzJfU0NMCQkweDQwMDAwMDdmCi0JCT47Ci0JfTsKLQogCXBpbmN0cmxfdWFy
dDE6IHVhcnQxZ3JwIHsKIAkJZnNsLHBpbnMgPSA8CiAJCQlNWDdEX1BBRF9VQVJUMV9UWF9EQVRB
X19VQVJUMV9EQ0VfVFgJMHg3OQpAQCAtMjczLDQgKzI2OSwxOCBAQAogCQkJTVg3RF9QQURfTFBT
Ul9HUElPMV9JTzA0X19HUElPMV9JTzQJMHgzNAogCQk+OwogCX07CisKKwlwaW5jdHJsX2kyYzI6
IGkyYzJncnAgeworCQlmc2wscGlucyA9IDwKKwkJCU1YN0RfUEFEX0xQU1JfR1BJTzFfSU8wN19f
STJDMl9TREEJMHg0MDAwMDAwZgorCQkJTVg3RF9QQURfTFBTUl9HUElPMV9JTzA2X19JMkMyX1ND
TAkweDQwMDAwMDBmCisJCT47CisJfTsKKworCXBpbmN0cmxfaTJjMl9yZWNvdmVyeTogaTJjMnJl
Y292ZXJ5Z3JwIHsKKwkJZnNsLHBpbnMgPSA8CisJCQlNWDdEX1BBRF9MUFNSX0dQSU8xX0lPMDdf
X0dQSU8xX0lPNwkweDQwMDAwMDdmCisJCQlNWDdEX1BBRF9MUFNSX0dQSU8xX0lPMDZfX0dQSU8x
X0lPNgkweDQwMDAwMDdmCisJCT47CisJfTsKIH07Ci0tIAoyLjIzLjAucmMxCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
