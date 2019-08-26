Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9509D339
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4W5TPNVquUJbTFEKvsuZ8w/tEbQHTSn+4cxYhjS9zOg=; b=jpg4eTygjZ28ZX
	f0OQa6KfgAO3lJG3u70MKqgadQth4HwCfTxkW56CNsKLsattw7Cwuen9QOgJRvocUsrsGYN73SVR3
	yWEOqRLMQP7WfsOMK0kI+0PjR1eX/GdXSUJuJNl10MYlSVqoj3RWNg3ugy9zknpe07vPJPT7nyMXV
	hQaVSdztvVO91fiXkXACSrWhH9ZFwriyiN1MvkloMR7hG3tPN8yfjBSF1u13vV4Xf5x9UAvmGQ/xA
	dcRE06Fuy1VziSszXI0eVEWQnCIYcfeJbYBrJdFaOpdbhtMrUvEHB79iIrSWKIU4pkcnKH8Pnas76
	6SEzOIl5nuMGY36zHXqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H85-0006Jp-Vb; Mon, 26 Aug 2019 15:42:02 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H54-0002qm-Pn
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:38:57 +0000
Received: by mail-wm1-f66.google.com with SMTP id e8so293774wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 08:38:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I8BhmUjvRpuRsDLc+hCNgR+cjfG8z1wM6d0LK3Ong3c=;
 b=BKsUDlF+zylEbIyM4DSW7+/Xa20y60koaeUZ57t/7V8fnf1c3aCwZhysUZPlVBBOrp
 pliNkkRa++wcHVcZgNpbZv8ZYy5vwCzSYMnbWdctG2p+7DbKHqIS8vc9MA1Owj3mGtyU
 ShIHEnQWKjFJWPzThbVUmCDWXp8WZNgafhBVydZ60V1x7Jsu9rLPHAgHOvBAxhIFCoJ1
 z5IBf6k8sHxPPFeqIDPKxtzCDzudPq21XyGQmlyVEL+u3kHoYNmTKw+gwWq0IyrEgxfk
 8b+fXcUSSWlVt1+/IB2gMz2nyfFLgojNKwroDHvvSI3K0rzjq5rbgRJd4eBXw71Wcd7a
 6s4g==
X-Gm-Message-State: APjAAAXQmazVBA4/dztSYTCd9bmFw1SHiBy6zsRtEZh85NA22tbCiy3n
 a3muuQD1mtwxST+lk8lAcrw=
X-Google-Smtp-Source: APXvYqwMD/2qo0xGpO8j5/o0mKPTDWKJ+yk4XONGvPSsZuutCz0ekSIirvu1/zzmTBZWPbnKFZS1pw==
X-Received: by 2002:a1c:4005:: with SMTP id n5mr22328274wma.166.1566833933541; 
 Mon, 26 Aug 2019 08:38:53 -0700 (PDT)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id z8sm11580798wru.13.2019.08.26.08.38.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 08:38:53 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 11/12] ARM: dts: imx7d: cl-som-imx7: add WiLink Bluetooth
 support
Date: Mon, 26 Aug 2019 16:37:59 +0100
Message-Id: <20190826153800.35400-11-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190826153800.35400-1-git@andred.net>
References: <20190826153800.35400-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083854_962697_5CB256D6 
X-CRM114-Status: GOOD (  12.82  )
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
