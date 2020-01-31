Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4797014E9B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 09:44:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4W5TPNVquUJbTFEKvsuZ8w/tEbQHTSn+4cxYhjS9zOg=; b=g4tJnR9KI2RvGW
	A8vSamo9CAYXmSP4h8FI+ZVPy6pqolq9oR/kdBS+UDppHHYm9V6Ws6liaIC+GLAwIrb1NNRqUZofs
	CcGTRYo5FDsXmNJvPJzTj9lS0cMeFINZHzG9odLG24AlTdJBPsleJVNQywGkYDw599QVDchhItOLd
	ZJFR274R2vkfBFrcB7b6kRqg2AL8NHNsxQj05g7ygptnutb/muYe95G4hn9YzznCzFZIs1SkXDxxe
	oaAyZxAPHdj+0LUFChUAoq6QJcxpm4ZFWtzRuRMN/VPK7a2lYPgZa/uh3T3JqSlc7/Or/P6auH8WD
	jzUIVyroxcCw+V0kqprA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRuc-0000Zl-PK; Fri, 31 Jan 2020 08:44:26 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRsJ-0006k3-29
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 08:42:04 +0000
Received: by mail-wr1-f66.google.com with SMTP id c9so7592898wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 00:42:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I8BhmUjvRpuRsDLc+hCNgR+cjfG8z1wM6d0LK3Ong3c=;
 b=LBIB7wGHVkFpXak1oYzyYqWU8IiCKz5dO39p3SxGIMkwJEWc6cWel7OF8KVp3M98IL
 evNhV2TAUeNGxReXIG5ABeZjrcgr9KX4cs6ttyBlMHDjzBt8VkaDxdsIjk427DE5YAnk
 TJ7gxFHY5WM+5lZyNnNSzRdv1CbHzZ3W5jlfuyBTMZWwS2aMm0PP25cwCc63Dgsvk0qB
 gtxWI8SXNRhjUy8oRWlMelOjodSkV61NqLlZwndQ7H44kIjoMgH0Hx0tERCWcic1VkNB
 rIc2J1tmhaTYtwTdq5kzG+vMk4+ebImpLRERK1c+nXUBMzxh5y4JXaLA0Fhc0+QPYn7Q
 lY9Q==
X-Gm-Message-State: APjAAAXsZxKjwmBHQiYVa9us466eWdag48CPECrxP5wVfbrHu6H1uOdi
 ksvhzkrAmV2cBhqBJadzuhs=
X-Google-Smtp-Source: APXvYqxxlDx6OL+N6mRBKI3g5CIhqUA5YoHHDTW8clNvHsx+P0JH34TY2Onr5/+6Mfr6D6bRmeSs/g==
X-Received: by 2002:adf:ffc7:: with SMTP id x7mr10605714wrs.159.1580460121281; 
 Fri, 31 Jan 2020 00:42:01 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id x7sm11034302wrq.41.2020.01.31.00.41.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 00:42:00 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 11/12] ARM: dts: imx7d: cl-som-imx7: add WiLink Bluetooth
 support
Date: Fri, 31 Jan 2020 08:36:37 +0000
Message-Id: <20200131083638.6118-11-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200131083638.6118-1-git@andred.net>
References: <20200131083638.6118-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_004203_124667_71166851 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andre.draszik[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

YWRkIC8gZW5hYmxlIFRJJ3MgV2lMaW5rOCBCbHVldG9vdGggbW9kdWxlIG9uIFVBUlQzLgoKU2ln
bmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGdpdEBhbmRyZWQubmV0PgpDYzogSWx5YSBMZWR2
aWNoIDxpbHlhQGNvbXB1bGFiLmNvLmlsPgpDYzogSWdvciBHcmluYmVyZyA8Z3JpbmJlcmdAY29t
cHVsYWIuY28uaWw+CkNjOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPgpDYzogTWFy
ayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KQ2M6IFNoYXduIEd1byA8c2hhd25ndW9A
a2VybmVsLm9yZz4KQ2M6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KQ2M6
IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+CkNjOiBGYWJp
byBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+CkNjOiBOWFAgTGludXggVGVhbSA8bGludXgt
aW14QG54cC5jb20+CkNjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14N2Qt
Y2wtc29tLWlteDcuZHRzIHwgMjQgKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgMjQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lt
eDdkLWNsLXNvbS1pbXg3LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3
LmR0cwppbmRleCA0Y2IzNmRlY2VmM2QuLjA4ZmI0M2Y3YWUxZCAxMDA2NDQKLS0tIGEvYXJjaC9h
cm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDdkLWNsLXNvbS1pbXg3LmR0cwpAQCAtMjUwLDYgKzI1MCwyMSBAQAogCXN0YXR1cyA9ICJv
a2F5IjsKIH07CiAKKyZ1YXJ0MyB7CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwlwaW5j
dHJsLTAgPSA8JnBpbmN0cmxfdWFydDM+OworCWFzc2lnbmVkLWNsb2NrcyA9IDwmY2xrcyBJTVg3
RF9VQVJUM19ST09UX1NSQz47CisJYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmY2xrcyBJTVg3
RF9QTExfU1lTX01BSU5fMjQwTV9DTEs+OworCXVhcnQtaGFzLXJ0c2N0czsKKwlzdGF0dXMgPSAi
b2theSI7CisKKwlibHVldG9vdGggeworCQljb21wYXRpYmxlID0gInRpLHdsMTgzNS1zdCI7CisJ
CWVuYWJsZS1ncGlvcyA9IDwmcGNhOTU1NSAxIEdQSU9fQUNUSVZFX0hJR0g+OworCQltYXgtc3Bl
ZWQgPSA8MzAwMDAwMD47CisJfTsKK307CisKICZ1c2RoYzIgewogCXBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7CiAJcGluY3RybC0wID0gPCZwaW5jdHJsX3VzZGhjMj47CkBAIC0zNTEsNiArMzY2
LDE1IEBACiAJCT47CiAJfTsKIAorCXBpbmN0cmxfdWFydDM6IHVhcnQzZ3JwIHsKKwkJZnNsLHBp
bnMgPSA8CisJCQlNWDdEX1BBRF9VQVJUM19UWF9EQVRBX19VQVJUM19EQ0VfVFgJMHg3OQorCQkJ
TVg3RF9QQURfVUFSVDNfUlhfREFUQV9fVUFSVDNfRENFX1JYCTB4NzkKKwkJCU1YN0RfUEFEX1VB
UlQzX0NUU19CX19VQVJUM19EQ0VfQ1RTCTB4NzkKKwkJCU1YN0RfUEFEX1VBUlQzX1JUU19CX19V
QVJUM19EQ0VfUlRTCTB4NzkKKwkJPjsKKwl9OworCiAJcGluY3RybF91c2RoYzI6IHVzZGhjMmdy
cCB7CiAJCWZzbCxwaW5zID0gPAogCQkJTVg3RF9QQURfU0QyX0NNRF9fU0QyX0NNRAkJMHg1OQot
LSAKMi4yMy4wLnJjMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
