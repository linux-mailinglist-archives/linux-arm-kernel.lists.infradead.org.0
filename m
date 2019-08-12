Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 569CC89BF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BM9vDbApgsi3ZOK4hgzY6MRNsVwFI0bQsnZcK2VE8zg=; b=R7MgdjreDlqbXl
	8YvGWjVVhusZTMibXQba8ZYmIFNWRZ4fOjulufUS4+QNlERSa9mHIo2EAwGWzSG8fc4rIobeaCOYR
	jzSNnebB6weU0brRi+6y9Uej1l8j+NhIiyAeJphjxWVzjH3UaJHzkSuQFvbaJ1qnxQz6PMCOZ9AdF
	7rjFDJEZKfM2/Srl3a0g2GYreEHYNuCJ/CqjBEV3AeATP6SzuU+KlanwShNEi3ypMM92iBrmFJhX3
	mEnj83wWIHudCQ8q4OC0NACfZ+z7HQNoZrB7G3SxuSm9XNf1eM02vaDw327Tn5zX/R07PxnPG4QKd
	QNcH02XPnrivycHoLVrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7vu-0001Xr-Iq; Mon, 12 Aug 2019 10:52:11 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7v9-00017l-N5
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:51:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id z23so11348724wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E6tk82k5TW54Tmi+3csD4OKmu7+dtwlB6O+wvC9mbyU=;
 b=FFXOj+d+O9qgInIVXb+Sftndtm05JphCPhcUol3hrBE+2Q+2OuhLTyMNJmheL0djcD
 gbuQJs8q9565e+PIwD7RxJ62El0N2FEi6Buo6yjREUkvPyxDraK0pbon0NhGJla+6r1z
 lerT5NsDc33Ih7WN7RXKWZ2hQhhaHFuvsbo8yjOIh6vzeNe5BncMwRy5P81G34DzB10q
 u6xhvJW3J/gsKIzhC2RV/4kcuDgmOBcQlrLdCAPc3ivPdDgZUf2iKh73IYJ2Dv96c6LP
 1OqlPXvjt5xnl4AU1/oHN0m+GLRP/zaYn//65jYOm09yj8roL+9bTUxpMcEcpieKHxbx
 m8/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E6tk82k5TW54Tmi+3csD4OKmu7+dtwlB6O+wvC9mbyU=;
 b=AauL3nzlIGLyDRcSHy29kpoOy1QMYvDcZruxryH6wOR+2QrgiDTmVBLsspjKnX3wkQ
 CbgkCZ0ashcUbRkws03h7uGZzYWsfiyYiXQrY3kDX8nIOdQykeQ306MxgwZrR2noF3Gr
 4KBLgoFSc+JDCyo5qJS42abdhyJJaSinfxOYbXMtLbyuRdcQlv2PKRovWDj0ALiI6Os/
 XwdEIXCGLo5IUBP6UCXUF9xEtJleb2DRd1xYmgnYBb/p2LA20CHVXBC5Vg4Rf1XRwI97
 3DnSVt/ow9t1za/0J3711bz/HfH7oLySMRzsbN6eHwRQd2t6CaCBqUzc/zGHYBGl30pF
 4ZqA==
X-Gm-Message-State: APjAAAWapX2qGWbW9he7UEuSFxUd2k3QlRmZeVFaX7+BKhY1KL/iKxGb
 sYsgOMYjpifymlDu1KsI+VY=
X-Google-Smtp-Source: APXvYqz3iWhMUmifg53tK3NRpq7zKWmNYACZQgK+R7BpcssqngYhmlMV2tEFxt29aLSzmCM7t5zo1Q==
X-Received: by 2002:a1c:9d8c:: with SMTP id g134mr7086261wme.174.1565607082211; 
 Mon, 12 Aug 2019 03:51:22 -0700 (PDT)
Received: from localhost.localdomain
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id z8sm22797916wru.13.2019.08.12.03.51.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 03:51:21 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 1/2] arm64: dts: allwinner: Add SPDIF node for Allwinner H6
Date: Mon, 12 Aug 2019 12:51:14 +0200
Message-Id: <20190812105115.26676-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190812105115.26676-1-peron.clem@gmail.com>
References: <20190812105115.26676-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_035123_804772_69C36A64 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIEFsbHdpbm5lciBINiBoYXMgYSBTUERJRiBjb250cm9sbGVyIGNhbGxlZCBPV0EgKE9uZSBX
aXJlIEF1ZGlvKS4KCk9ubHkgb25lIHBpbm11eGluZyBpcyBhdmFpbGFibGUgc28gc2V0IGl0IGFz
IGRlZmF1bHQuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21h
aWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNp
IHwgMjAgKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQppbmRl
eCA3NjI4YTdjODMwOTYuLjJiYTlhYjllMDkyNCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKQEAgLTI4Miw2ICsyODIsMTEgQEAKIAkJCQliaWFzLXB1
bGwtdXA7CiAJCQl9OwogCisJCQlzcGRpZl90eF9waW46IHNwZGlmLXR4LXBpbiB7CisJCQkJcGlu
cyA9ICJQSDciOworCQkJCWZ1bmN0aW9uID0gInNwZGlmIjsKKwkJCX07CisKIAkJCXVhcnQwX3Bo
X3BpbnM6IHVhcnQwLXBoLXBpbnMgewogCQkJCXBpbnMgPSAiUEgwIiwgIlBIMSI7CiAJCQkJZnVu
Y3Rpb24gPSAidWFydDAiOwpAQCAtNDExLDYgKzQxNiwyMSBAQAogCQkJfTsKIAkJfTsKIAorCQlz
cGRpZjogc3BkaWZANTA5MzAwMCB7CisJCQkjc291bmQtZGFpLWNlbGxzID0gPDA+OworCQkJY29t
cGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXNwZGlmIjsKKwkJCXJlZyA9IDwweDA1MDkz
MDAwIDB4NDAwPjsKKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAyMSBJUlFfVFlQRV9MRVZFTF9I
SUdIPjsKKwkJCWNsb2NrcyA9IDwmY2N1IENMS19CVVNfU1BESUY+LCA8JmNjdSBDTEtfU1BESUY+
OworCQkJY2xvY2stbmFtZXMgPSAiYXBiIiwgInNwZGlmIjsKKwkJCXJlc2V0cyA9IDwmY2N1IFJT
VF9CVVNfU1BESUY+OworCQkJZG1hcyA9IDwmZG1hIDI+OworCQkJZG1hLW5hbWVzID0gInR4IjsK
KwkJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCQlwaW5jdHJsLTAgPSA8JnNwZGlmX3R4
X3Bpbj47CisJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCQl9OworCiAJCXVzYjJvdGc6IHVzYkA1
MTAwMDAwIHsKIAkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1tdXNiIiwKIAkJ
CQkgICAgICJhbGx3aW5uZXIsc3VuOGktYTMzLW11c2IiOwotLSAKMi4yMC4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
