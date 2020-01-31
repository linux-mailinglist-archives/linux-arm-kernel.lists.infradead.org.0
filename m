Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F1E14E9A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 09:43:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+WbFyeCj0nMHjd0CR8yvEXe9YuJsL0l9d6XSVxpQaw=; b=aS5sjzdOH8NRiU
	VnIzn7Uh3nZxnDKKcBP5NF5kB9kC7Ty0qaNaL4ovk9/+3EDxExKE1eais+QaAKD/DTs5yKIpFoGpy
	1OOEXJwIO4kyaQW564HpGaipkjeAfuu6x+EJjj7CQtV0oIrY8xCYmYM/9CZPz9/eHC/f9dALPac1K
	y1owp6lvksZlyXqQhBj5M+UiEATM8Ea4VNzD7ytr3pi3SBkrS4izfvEGrNASsePzgRHDRS97j/huw
	8IEznx1aIdMwtniTsAhT9Ac6YLrvt7T7gxXbV7ViN38aDk+Ry5gVbEmOxz9+iTebHKMkPoCqBizUb
	aR43yDpFuC3107oMyF1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRtE-0007Oy-KC; Fri, 31 Jan 2020 08:43:00 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRsA-0006cq-S2
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 08:41:56 +0000
Received: by mail-wm1-f65.google.com with SMTP id t14so7694302wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 00:41:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oRnNY4JLf7ZTy3fdUTm9bEVVoWS6JMbuHY/wh8kGwgE=;
 b=pL3wFccHIgMiDqF9jMTeEqHAlbAvm52lmImgK4DtWRDm1MaJ5zZXLJPZAX34gnDZqv
 0yb3o/ZyNVkBVVhKhIDrnLGfiq7aZFdr9HmhYcXlzvUGYwsBTgNJjyYlMNSN+BUGdHCX
 /AICsYiHc7qakHE2/XcIrvsukv5b3MZu3cLyvhwqUMvFKFmVpFzDrAh4/hPkCdIvgPUy
 Kr5GvDPqL39k4l+LN0oKpng23HoEn3jXdtkD8Yj8UOElICXOnWsrwqse2bcApbpfg9Xa
 7+tCIWWAB1ToAClPy8t7m3o/yeUkNwj8fNeN5kJ1nE3Iq5V7I+YbgNhlhYlsokG4BR/e
 vlyA==
X-Gm-Message-State: APjAAAVIvDNmos0QE6rg13ngT1o5snXCMZKRdlYrD39V+qDLJxt5c1GK
 DnHM8RVk8QKXYPzlBUnJ628=
X-Google-Smtp-Source: APXvYqySY42pc1aYVVB+FtN/uubVEJzMCyrRHDIBuzHAc9fotMDyplrvmbtRD7ITLJFsIeB5sdNZXA==
X-Received: by 2002:a1c:3803:: with SMTP id f3mr3070206wma.134.1580460112337; 
 Fri, 31 Jan 2020 00:41:52 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id x7sm11034302wrq.41.2020.01.31.00.41.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 00:41:51 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 03/12] ARM: dts: imx7d: cl-som-imx7: fix i2c2
Date: Fri, 31 Jan 2020 08:36:29 +0000
Message-Id: <20200131083638.6118-3-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200131083638.6118-1-git@andred.net>
References: <20200131083638.6118-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_004154_901345_28C79AB0 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andre.draszik[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
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
