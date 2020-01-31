Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148C414E9AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 09:43:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHCB8ddvo79D3UBWEaCr1pysRkx0ex0YowUMJwOV6pA=; b=i8AHVXhc+y7d9o
	EvN3wR6Pv8KC9Q6nnesF35vIKJCitzgZDG54jbN7I3ibbrJOmVKCfUWORwMUpBokkvhx/5haB15WD
	XLbWP8KOHGqX7+P2xUkAXFlCk2leopakPfTedHPHEJaosJ5/ks5KDC05hacT6rwahBU/MUUrv4xgk
	2+BhkHwitFyYPexyGMBLP9qajaO++6snwvzI21Yg33/WWkDZdH8sE66HJndwGeCv8/etwj2PXlSIs
	qydB+MF1eunPbqo1AClvvKXwfHDAglPIXL0UTLyNfcCLOCJDGKOwFRjLI+uRUMjWYzQ7LFLIMBCHQ
	3ntvyxzvJBcLtTGLl0ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixRtt-00084W-OT; Fri, 31 Jan 2020 08:43:41 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixRsD-0006f0-Mo
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 08:41:59 +0000
Received: by mail-wm1-f65.google.com with SMTP id p17so7717651wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 00:41:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sdNLZLbUZjioU3Z4lRpuQbaNIysXdv9lDzhe4Q5gJwU=;
 b=MbM2V8DXMIENtAaIUa20DY5tR0JVyz3pyiD/QQpjO3vhWynKILqCCw/fYuB4mlzylU
 xdzBIRllEnEjdsstwJ38BIQAF6pFLIGjBlTTxgTugEMwI9Cna89WMLx3UkhB6XPfN+hP
 FisiCIczIP9a/XKJX/BGdQavGYM8ZpakJ+MO4a6lNl3a62ojcBxCXY361M+jwS3UE790
 43I0UBpdUXMWMZx64NQ9ZS7u3uuHyLU3Uyp4/rKoV7FyN69FZfVWRLyM1+Dp3XhaSjHl
 yMZfPbqYz4GsLmd0DUNE+vM1KrxSlYhoDzE2OOZBjL/il02TEHzFCNBEaFLQBzV7g7rD
 xUnw==
X-Gm-Message-State: APjAAAULpuLP8nN2RmxGxBBotayVKSVq7s/up9kD5HtzQg0xdqEupJpe
 TX9VHGIP7qRSVCl2bs8QLPY=
X-Google-Smtp-Source: APXvYqwcnzQbFdcIMaQGA5ZuO128eq6F3wqKYN22ra3jP99Ay4uMroGsQRwG80xB0777PwhhtX7RWw==
X-Received: by 2002:a05:600c:1007:: with SMTP id
 c7mr10594687wmc.158.1580460116515; 
 Fri, 31 Jan 2020 00:41:56 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id x7sm11034302wrq.41.2020.01.31.00.41.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 00:41:55 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 07/12] ARM: dts: imx7d: cl-som-imx7: add/enable SPI flash
 on spi1
Date: Fri, 31 Jan 2020 08:36:33 +0000
Message-Id: <20200131083638.6118-7-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200131083638.6118-1-git@andred.net>
References: <20200131083638.6118-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_004157_783646_A369E8F4 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
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
