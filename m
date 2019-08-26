Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7C89D326
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHCB8ddvo79D3UBWEaCr1pysRkx0ex0YowUMJwOV6pA=; b=GywIS/t8iv30LR
	+Dr7tHcnoTm/Hwpmw6PvYIkLEXptI8c8q5qBQx+HviiNoy5TJy1NXs9BJ/Aho5Xk9se7PKQRyNEIX
	fiF74k6qQUm0F19y/yF3uVyN6mrnd/vMa2sBbzBSCuyYXkcR0MqMk4Ruf42TZqS00fBYV0sXfvTqQ
	X5jDTrN0rB/plyMLTS/n+HWU7rSEkpGrf6KM7z+U0WFfrmFMOxxCCD7c/o0LNwaYzDQy/UV4w7DEM
	MhvYt3DNZK8xvyJUSMVHPQro/cFsgLyKiswPiylIg5pEmY7+D7J+kKfBmxOeMxiiwxVzvwB+iiJyy
	mf/QVjvWwp237DjnEtag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H72-0005SW-BO; Mon, 26 Aug 2019 15:40:56 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H51-0002mK-4e
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:38:52 +0000
Received: by mail-wr1-f67.google.com with SMTP id u16so15804725wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 08:38:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sdNLZLbUZjioU3Z4lRpuQbaNIysXdv9lDzhe4Q5gJwU=;
 b=Yjvl1H5j03JkrWjDsKILC/TsP2jVcW8M+hAZE9LAsFogWfDkwPwp1D1BFeMgdlnVhB
 MAkPqWOYDiKB8REOck8KOW1JzQZNJGEavabdbHxJLLP92s/hONnOIZirm7fThP27Ocub
 61O3b/Olt22lRzHRXLh+XRAFnBWv+Xz0e1Kb8bnoMq4G6K3olfEPbrYT3JyxKToGjMOT
 JhzyP2cTQlMd1byo7v5BISrX5HuE9uGdGneAYYZe7X19hBRzQa66hpKgwpw4W6sOy9lv
 qDpuSsHzgXFTC/R7GIPn7NRp8aKriO4jvbn1abdOClkKTKDcQk82tBKg6p6rTkN5s73H
 hg4Q==
X-Gm-Message-State: APjAAAXixtMP951zPqhxR1+IrxmB9fztwZgdko1trhjruewvtyBY9V0n
 fGBuCMB0v1XLTKrNss3irHw=
X-Google-Smtp-Source: APXvYqyupufwIm7Jbil3XGdUZ6YsobfUaIlznuBm6oZ9/FZv+zEyI9GMPHplQrpOf0n27DVXhf+4PA==
X-Received: by 2002:adf:fd8b:: with SMTP id d11mr22079526wrr.300.1566833929706; 
 Mon, 26 Aug 2019 08:38:49 -0700 (PDT)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id z8sm11580798wru.13.2019.08.26.08.38.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 08:38:49 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 07/12] ARM: dts: imx7d: cl-som-imx7: add/enable SPI flash on
 spi1
Date: Mon, 26 Aug 2019 16:37:55 +0100
Message-Id: <20190826153800.35400-7-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190826153800.35400-1-git@andred.net>
References: <20190826153800.35400-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083851_227879_EEF05E30 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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

YWRkL2VuYWJsZSBTUEkgZmxhc2ggb24gc3BpMSB1c2luZyB0aGUgZGVmYXVsdCB2ZW5kb3Incwpw
YXJ0aXRpb24gbGF5b3V0IGFzIHBlciBkb3duc3RyZWFtIGtlcm5lbAoKU2lnbmVkLW9mZi1ieTog
QW5kcsOpIERyYXN6aWsgPGdpdEBhbmRyZWQubmV0PgpDYzogSWx5YSBMZWR2aWNoIDxpbHlhQGNv
bXB1bGFiLmNvLmlsPgpDYzogSWdvciBHcmluYmVyZyA8Z3JpbmJlcmdAY29tcHVsYWIuY28uaWw+
CkNjOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPgpDYzogTWFyayBSdXRsYW5kIDxt
YXJrLnJ1dGxhbmRAYXJtLmNvbT4KQ2M6IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4K
Q2M6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KQ2M6IFBlbmd1dHJvbml4
IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+CkNjOiBGYWJpbyBFc3RldmFtIDxm
ZXN0ZXZhbUBnbWFpbC5jb20+CkNjOiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+
CkNjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcu
ZHRzIHwgNDUgKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQ1IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20t
aW14Ny5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMKaW5kZXgg
Y2EzYzVkOTVkNmMzLi5kNDYzN2E4Y2EyMjMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDdkLWNsLXNvbS1pbXg3LmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1z
b20taW14Ny5kdHMKQEAgLTI4LDYgKzI4LDM2IEBACiAJY3B1LXN1cHBseSA9IDwmc3cxYV9yZWc+
OwogfTsKIAorJmVjc3BpMSB7CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwlwaW5jdHJs
LTAgPSA8JnBpbmN0cmxfZWNzcGkxICZwaW5jdHJsX2Vjc3BpMV9jcz47CisJY3MtZ3Bpb3MgPSA8
JmdwaW80IDE5IEdQSU9fQUNUSVZFX0hJR0g+OworCXN0YXR1cyA9ICJva2F5IjsKKworCWZsYXNo
QDAgeworCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJI3NpemUtY2VsbHMgPSA8MT47CisJCWNv
bXBhdGlibGUgPSAiamVkZWMsc3BpLW5vciI7CisJCXNwaS1tYXgtZnJlcXVlbmN5ID0gPDIwMDAw
MDAwPjsKKwkJcmVnID0gPDA+OworCisJCXBhcnRpdGlvbkAwIHsKKwkJCWxhYmVsID0gInVib290
IjsKKwkJCXJlZyA9IDwweDAgMHhjMDAwMD47CisJCX07CisKKwkJcGFydGl0aW9uQGMwMDAwIHsK
KwkJCWxhYmVsID0gInVib290IGVudmlyb25tZW50IjsKKwkJCXJlZyA9IDwweGMwMDAwIDB4NDAw
MDA+OworCQl9OworCisJCXBhcnRpdGlvbkAxMDAwMDAgeworCQkJbGFiZWwgPSAic3BsYXNoIjsK
KwkJCXJlZyA9IDwweDEwMDAwMCAweDEwMDAwMD47CisJCX07CisJfTsKK307CisKICZmZWMxIHsK
IAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmcGluY3RybF9lbmV0
MSAmcGluY3RybF9lbmV0MXBoeT47CkBAIC0yMTQsNiArMjQ0LDIxIEBACiB9OwogCiAmaW9tdXhj
IHsKKwlwaW5jdHJsX2Vjc3BpMTogZWNzcGkxZ3JwIHsKKwkJZnNsLHBpbnMgPSA8CisJCQlNWDdE
X1BBRF9FQ1NQSTFfTU9TSV9fRUNTUEkxX01PU0kJCTB4ZgorCQkJTVg3RF9QQURfRUNTUEkxX01J
U09fX0VDU1BJMV9NSVNPCQkweGYKKwkJCU1YN0RfUEFEX0VDU1BJMV9TQ0xLX19FQ1NQSTFfU0NM
SwkJMHhmCisJCT47CisJfTsKKworCXBpbmN0cmxfZWNzcGkxX2NzOiBlY3NwaTFfY3NfZ3JwIHsK
KwkJZnNsLHBpbnMgPSA8CisJCQkvKiBTUEkgZmxhc2ggY2hpcHNlbGVjdCAqLworCQkJTVg3RF9Q
QURfRUNTUEkxX1NTMF9fR1BJTzRfSU8xOQkJCTB4MzQKKwkJPjsKKwl9OworCiAJcGluY3RybF9l
bmV0MTogZW5ldDFncnAgewogCQlmc2wscGlucyA9IDwKIAkJCU1YN0RfUEFEX1NEMl9DRF9CX19F
TkVUMV9NRElPCQkJMHgzMAotLSAKMi4yMy4wLnJjMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
