Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D096D1247A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:07:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXrAEWUNcy30epdFATunT27mONjtjFLkUF36/E79LI4=; b=NIn4VVaoRLC3yy
	C3NQ1WADZlC7Kcx1PQBrXqeqgVhEq95+wm2Xug8SQ9wzCybVLcQbjIYlZaGGolxBmLMmVIyeA3UE5
	+7iYERjQzhuJKON+tbop4utbRMtWGBhwZ/GdqVaWHakbqv/UFI1eq3bLilkvD3COFG4O/3c2zwqdu
	S/z9qwEh7MeIroB1/Gz4AyjFcChPze6En953yELdQmNnU2IiOR8NMQ1Tx3vXEwXIqsLFcAwZl7r0O
	c0aoqCcp7nJ/zxACEabN0XCw4roDO03hfYNj4Xk07cmUqHzsyudE/VNynuaAOBDiTb8dR3IaxOZoO
	Ov/B2xbRaGOewu93TWhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZ2U-00029b-NP; Wed, 18 Dec 2019 13:06:54 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZ28-0001y4-4m
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:06:33 +0000
Received: by mail-yb1-xb43.google.com with SMTP id f130so695252ybb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 05:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u7mxG5yAwNcZ8Cq1r7PPlmVBfCoyrOeHrNys7o6+Upg=;
 b=gAtIS8Y40e2CtCol5C3ukspjDFRT53f8NQhU8u8alkLhXE+ez5VdZHRuadEUjYHKHe
 rK9QHYE1vhmRuMP090hZ4WVIf4ufpzGOlPOF/WSWZ8DCEm1EJ+gJJ0v6QgyMmNaqk/Ug
 lScZRUMllfrRTJLQgHziR6DaVqVqSVdbkhnU742Wm4LPhliy3NMGvm1zhTxo26P2CYDK
 Jf8ckgX9dnss2E56V4pBDBhrnQkJZYC/W7N3aFVaY0VDYY/BlQYRMjSbXTJ/UV7xeM27
 8gpb1jaRUoe/6KHOfMrQ0KvItWucHwBv/Yo6dO+JpOE/OiD2HGFGnhfHWIhmSM/+CTJt
 VpAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u7mxG5yAwNcZ8Cq1r7PPlmVBfCoyrOeHrNys7o6+Upg=;
 b=ZB3Tpz9ELh2KvUmDe2ozOlJUcOUEamYFsCS8TTgGhBvQfhXfQSaTawe5vUiyxnYkdB
 UqNjaDSC66pp4uwhma3XDsaFbpaCd7lh4iEhIJryPy+wpKaREWaPh1ya9xL2+guuRaA3
 d7sSIXXu1vnRwpVUMbwaD9W7rsWoLlxJwrjYeJy2UKXWlkxrO83erb7ZjA4MCsKwoxCC
 xxInQPdih2rBU1aG4RSyrJ2tRMOH2sVMLOebJAQFP6oAQ7umRYoerXe/5JSjkHXFLmdF
 +qG/5zWPMM/j75wgLL4IzdlUlTaZBcoUQ/XjQde10odGaH0tB9Es/MCx1I6on/Lb8DPD
 D4Ig==
X-Gm-Message-State: APjAAAVAYv8TCsLWIuGOtBIsKYh9QemJjeBx9UiAb2D4sDIwYR9o7sH2
 Ic/a4AlAKvPfPJ9r0TO2z0RSNN0e8Po=
X-Google-Smtp-Source: APXvYqz95pC6V0l8GBRfWqEiASGWI8aAKkIuqVpJZnPm3TZNYHLJeElu5fGmJrutxOzi6ru9Cj9WVA==
X-Received: by 2002:a25:7557:: with SMTP id q84mr1755022ybc.76.1576674390127; 
 Wed, 18 Dec 2019 05:06:30 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id r64sm909603ywg.84.2019.12.18.05.06.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 05:06:29 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 2/3] arm64: dts: imx8mm: Add Crypto CAAM support
Date: Wed, 18 Dec 2019 07:06:15 -0600
Message-Id: <20191218130616.13860-2-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191218130616.13860-1-aford173@gmail.com>
References: <20191218130616.13860-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_050632_181449_B2A8BEED 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>,
 devicetree@vger.kernel.org, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Will Deacon <will@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGkuTVg4TSBNaW5pIHN1cHBvcnRzIHRoZSBzYW1lIGNyeXB0byBlbmdpbmUgYXMgd2hhdCBp
cyBpbgp0aGUgaS5NWDhNUSwgYnV0IGl0IGlzIG5vdCBjdXJyZW50bHkgcHJlc2VudCBpbiB0aGUg
ZGV2aWNlIHRyZWUuCgpUaGlzIHBhdGNoIHBsYWNlcyBpdCBpbnRvIHRoZSBkZXZpY2UgdHJlZS4K
ClNpZ25lZC1vZmYtYnk6IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPgpSZXZpZXdlZC1i
eTogSG9yaWEgR2VhbnTEgyA8aG9yaWEuZ2VhbnRhQG54cC5jb20+Ci0tLQpWMzogIEZpeCB0eXBv
IGluIGNvbW1pdCBtZXNzYWdlLiAgbm8gY29kZSBjaGFuZ2VzClYyOiAgRG9uJ3QgZGlzYWJsZSBp
dCBieSBkZWZhdWx0CgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OG1tLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0uZHRzaQpp
bmRleCA2ZWRiZGZlMmQwZDcuLmNiZTgwYTNmMDQ4YyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvaW14OG1tLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OG1tLmR0c2kKQEAgLTY0MSw2ICs2NDEsMzYgQEAKIAkJCQlzdGF0dXMgPSAi
ZGlzYWJsZWQiOwogCQkJfTsKIAorCQkJY3J5cHRvOiBjcnlwdG9AMzA5MDAwMDAgeworCQkJCWNv
bXBhdGlibGUgPSAiZnNsLHNlYy12NC4wIjsKKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJ
CQkjc2l6ZS1jZWxscyA9IDwxPjsKKwkJCQlyZWcgPSA8MHgzMDkwMDAwMCAweDQwMDAwPjsKKwkJ
CQlyYW5nZXMgPSA8MCAweDMwOTAwMDAwIDB4NDAwMDA+OworCQkJCWludGVycnVwdHMgPSA8R0lD
X1NQSSA5MSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQljbG9ja3MgPSA8JmNsayBJTVg4TU1f
Q0xLX0FIQj4sCisJCQkJCSA8JmNsayBJTVg4TU1fQ0xLX0lQR19ST09UPjsKKwkJCQljbG9jay1u
YW1lcyA9ICJhY2xrIiwgImlwZyI7CisKKwkJCQlzZWNfanIwOiBqckAxMDAwIHsKKwkJCQkJY29t
cGF0aWJsZSA9ICJmc2wsc2VjLXY0LjAtam9iLXJpbmciOworCQkJCQlyZWcgPSA8MHgxMDAwIDB4
MTAwMD47CisJCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMDUgSVJRX1RZUEVfTEVWRUxfSElH
SD47CisJCQkJfTsKKworCQkJCXNlY19qcjE6IGpyQDIwMDAgeworCQkJCQljb21wYXRpYmxlID0g
ImZzbCxzZWMtdjQuMC1qb2ItcmluZyI7CisJCQkJCXJlZyA9IDwweDIwMDAgMHgxMDAwPjsKKwkJ
CQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDEwNiBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQl9
OworCisJCQkJc2VjX2pyMjoganJAMzAwMCB7CisJCQkJCWNvbXBhdGlibGUgPSAiZnNsLHNlYy12
NC4wLWpvYi1yaW5nIjsKKwkJCQkJcmVnID0gPDB4MzAwMCAweDEwMDA+OworCQkJCQlpbnRlcnJ1
cHRzID0gPEdJQ19TUEkgMTE0IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJCX07CisJCQl9Owor
CiAJCQlpMmMxOiBpMmNAMzBhMjAwMDAgewogCQkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhtbS1p
MmMiLCAiZnNsLGlteDIxLWkyYyI7CiAJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Ci0tIAoyLjIw
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
