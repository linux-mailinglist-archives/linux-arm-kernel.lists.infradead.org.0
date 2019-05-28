Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA412CB9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jbeYd1Tc8QSlXaIfu/rtzn/MAF3SvcDQeNQNi7slBQ=; b=T1Qb0+b8eyg4u8
	395cH0IM/AsHD8sryAOg/v39qSv4bmdtqacaXFUIlr5+U0TbnKIB81f1xBnYgWM0w2ZzhngHXCDRh
	fywlpyFYyPMfXm/l+HH9HRKTgaE/2H9q3CH4XtRIZu1riPdf/bZY1BS1UzvvZv0WHICNXRfcqjJnF
	aO6HPIgNztJ6IjFEvEYVs/soFf/pYLVEB7NX/F+wu0BPErA+RCI7zjMUJJQNXXaxNiWRWnKJ4LMJb
	+5q/dpGC8FSuoUnj4q8i2YitiTe6DQ2TJy6VOnr5uF4OgCz+RpAymWzqSURmEOAeWWxydOKkmFeka
	UAe8eqa7FvDS3VgFyaAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVema-0003GY-6F; Tue, 28 May 2019 16:17:00 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVekm-0000Qx-LH
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:15:12 +0000
Received: by mail-wr1-x442.google.com with SMTP id b18so20859950wrq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f1zmDm9n7G9V5x4Qey/KRvnzXY0A1V0uEl3s5XqqEzY=;
 b=J9kR0LToqcgOqHPK2G2vT86fGv23P9fL28b8i/ZLI+U2hm88ebN5E2QEc/Mc1Te2Mf
 x+9gmUy0MajiKLaI3f9kGwfYNYFBXsN34WLns8T6+o/iNEQyheVTvsjdwFqmaJUwBYtG
 O4yt/bc9WUwsE3EFHIGNPHU2e1F/F8nqu54Oi59jIQJ5PJDXd0154AyX6j/+iktHTTDF
 v8bX4oXtjO9dYCAH17hTXJGHQv4hyIBnN563Fo7mZA6QBHnOE1ZBZ4uc01pjREi/OcVW
 L4UQvPaTT/0OIa4ThFB1+9oUDqN6v0NBrZKGFceAPXglUh7dH2YoI6jV+pAYlHwPBsBO
 EvhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f1zmDm9n7G9V5x4Qey/KRvnzXY0A1V0uEl3s5XqqEzY=;
 b=nuOnBDRX/UkQBDu3isn5N5KNkDwvV+Uyn0jFQkofjGogC2nyZ5IZWi4zH53/GRvBqA
 JAHLyB83fb0C5I0pnr8fHysEtHVlEqN6XTTDOcG3H2xKhMrUmS0AgZp8wnjpiD7a8qbJ
 42v/EBNmJbV+xHUG4X2cudhhuqoLS3Pyd7GnQMrbG+7GgTUekKKBtsvVmmwvuOskGi/M
 t4Cmsn7OpbL12FiNsuRsPg6CUAaPcGoGPkMy6P4srj2/8j5A75Iy123Dx4iWhPmdWUWc
 TN5AgFDZyzID93nCUcsL1TLyyFnV69SFcCv+Zd6LQyoLhM4lVV7mXCfknBqmtaJjMJSc
 r80A==
X-Gm-Message-State: APjAAAXG5d+vpbGgeeI+08masjMjUZKKF7WmcimIfaCz6py8ru3pMnXg
 Vvtn5+XrG0+bh8VpL7euLGc=
X-Google-Smtp-Source: APXvYqwmOqOqJxolC9tUEax25/Sr1ZnPeFKpMVvGK2UA6Zj6v2olTjM+xe+o9RIprAv96UP5geOtYA==
X-Received: by 2002:adf:ed41:: with SMTP id u1mr2256706wro.162.1559060106290; 
 Tue, 28 May 2019 09:15:06 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id l14sm13678787wrt.57.2019.05.28.09.15.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 09:15:05 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 10/12] arm64: dts: allwinner: h6: Add IR receiver node
Date: Tue, 28 May 2019 18:14:38 +0200
Message-Id: <20190528161440.27172-11-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161440.27172-1-peron.clem@gmail.com>
References: <20190528161440.27172-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091509_060501_0E7B19BF 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IElSIGlzIHNpbWlsYXIgdG8gQTMxIGFuZCBjYW4gdXNlIHNhbWUgZHJpdmVy
LgoKQWRkIHN1cHBvcnQgZm9yIGl0LgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxw
ZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktaDYuZHRzaSB8IDE5ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAx
OSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYuZHRzaQppbmRleCAxNmM1YzNkMGZkODEuLjY0OWNiZGZlNDUyZSAxMDA2NDQKLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKQEAgLTY0Nyw2ICs2NDcsMjUgQEAK
IAkJCQlwaW5zID0gIlBMMCIsICJQTDEiOwogCQkJCWZ1bmN0aW9uID0gInNfaTJjIjsKIAkJCX07
CisKKwkJCXJfaXJfcnhfcGluOiByLWlyLXJ4LXBpbiB7CisJCQkJcGlucyA9ICJQTDkiOworCQkJ
CWZ1bmN0aW9uID0gInNfY2lyX3J4IjsKKwkJCX07CisJCX07CisKKwkJcl9pcjogaXJANzA0MDAw
MCB7CisJCQkJY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LWlyIiwKKwkJCQkJICAg
ICAiYWxsd2lubmVyLHN1bjZpLWEzMS1pciI7CisJCQkJcmVnID0gPDB4MDcwNDAwMDAgMHg0MDA+
OworCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMDkgSVJRX1RZUEVfTEVWRUxfSElHSD47CisJ
CQkJY2xvY2tzID0gPCZyX2NjdSBDTEtfUl9BUEIxX0lSPiwKKwkJCQkJIDwmcl9jY3UgQ0xLX0lS
PjsKKwkJCQljbG9jay1uYW1lcyA9ICJhcGIiLCAiaXIiOworCQkJCXJlc2V0cyA9IDwmcl9jY3Ug
UlNUX1JfQVBCMV9JUj47CisJCQkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJCQlwaW5j
dHJsLTAgPSA8JnJfaXJfcnhfcGluPjsKKwkJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9Owog
CiAJCXJfaTJjOiBpMmNANzA4MTQwMCB7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
