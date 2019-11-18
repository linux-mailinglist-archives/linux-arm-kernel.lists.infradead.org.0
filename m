Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A025D100354
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Y4zFIcBXyg9xWSLEtrcCLKJInNW/6VZBgfKvRVNbjc=; b=HlOQK3OX+LNo+B
	+8irCYtPXSgCsulf0whSFakARrtvaBuI2ulpzrT/QYD+ZDXZ9Vccdk7pgbwBFJhw+O6/csWOywGDS
	r9ro0WB+3FVuV12qwmjCVEn/9PEUmoWXbCvxM6mylrGg0POshUItI2DKgQPFPy7sQIFkFhnqKjjRv
	xJ+Wu07DXGrAnVf3UCmFNCb2DplERz2ItguW8Ec3QK2aNTfbHN4rR16L3zfdTddoXhxf8w/kyebH/
	wB12xQkxltUu/uN7s72BFuBtFBySIE/++CqcWEJ7AvdL+ztbmQp8c8iXflk7tt7ZiKHXAuUDueZGN
	OJH1GnSYeuuiSd+JU8Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWen9-0007lM-6i; Mon, 18 Nov 2019 11:01:59 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWelv-0006fH-UF
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:00:45 +0000
Received: by mail-wr1-x441.google.com with SMTP id n1so18858478wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Jsifq8PTX0er46e43pUZkmCyPNqnaTwpRAxn8YySges=;
 b=AxdIa2+7XYravskLqghTUZppTTZptO8qgtCJ8FPixAp6+EU5OJstpE/ZAIfKD8JE/b
 jzg/hdoKslHHCtuW/rCVmM6KvSWifU2sfbvRHsgBkUJDSu4if41mbXAjD5KQidpE1Mvj
 Aa8ccEJos7u0q49ldpl3NK8RMDOJinitwm3d2U+xFQJK+m3bnQZw0vQLkaHs8RKospPy
 UK15nVIlImEynkAN/Ed2fsDxDcwXFoQ7RzN9LB8cQlzkBd8NCSszqCN6pnG8aTLXOInT
 RGTqi5s7R2srOuPNE52k+qro/45QT4GuU3ZUySevKB18V+NdHaR6h8G77hcA7g32sZ5/
 q4jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Jsifq8PTX0er46e43pUZkmCyPNqnaTwpRAxn8YySges=;
 b=PyTqDw/fxpmfH5YwvqhJZTcqqgen8ZTge8RYGZkV30PKWfBP8jJz/1lk2+UBhrXd7J
 4cgLReTEs0BbOiqH6trgTJsVaMu5P3W2SbHQZ9bm+p8WTJ7xEH/KKi51Vu7N4yRjzEQx
 HoqmLvcmlJ5H8jIygdwSP8tXhRUGUN2rrzJq/4yAd5pAU7bFjPstrBSB7TKScB2pVhCO
 P9dO4zjGC+xQ5OZjcPx8gY5H/IxNZyKCufzv7TYLkKyRx+ueTCuxRENp6RRz39wmE8LO
 RDM9DBZOsdGTFTWoLKH+JMjqNID5NnALsgR7W2Ny5Z8y/G/rd1EI/8JHPsiBVUoXhtYt
 9MWA==
X-Gm-Message-State: APjAAAVTlF0xHmD057jlrNXpc6/xj/LhwreHb8zueIwqv/Zr40Gtkhww
 cH7vCDhcPZuP+fAOpullrGA=
X-Google-Smtp-Source: APXvYqwUHWq7ibM4Sw/PPC1hM1P4uE5Ho0apvC2XIkz8SHsKzaAKYdlTw3hx8tCnK33bDFYGGvWLcw==
X-Received: by 2002:a05:6000:150:: with SMTP id
 r16mr28384394wrx.313.1574074842479; 
 Mon, 18 Nov 2019 03:00:42 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id f67sm19873313wme.16.2019.11.18.03.00.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:00:42 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v6 4/8] pwm: sun4i: Add an optional probe for bus clock
Date: Mon, 18 Nov 2019 12:00:30 +0100
Message-Id: <20191118110034.19444-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191118110034.19444-1-peron.clem@gmail.com>
References: <20191118110034.19444-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_030044_032468_B6B4A663 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGNv
cmUgbmVlZHMgYnVzIGNsb2NrIHRvIGJlIGVuYWJsZWQgaW4gb3JkZXIgdG8gd29yay4KCkFkZCBh
biBvcHRpb25hbCBwcm9iZSBmb3IgaXQuCgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8
amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8
cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgfCAyMiAr
KysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1
bjRpLmMKaW5kZXggNmQ5N2ZlZjRlZDQzLi5jZTgzZDQ3OWJhMGUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvcHdtL3B3bS1zdW40aS5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCkBAIC03OCw2
ICs3OCw3IEBAIHN0cnVjdCBzdW40aV9wd21fZGF0YSB7CiAKIHN0cnVjdCBzdW40aV9wd21fY2hp
cCB7CiAJc3RydWN0IHB3bV9jaGlwIGNoaXA7CisJc3RydWN0IGNsayAqYnVzX2NsazsKIAlzdHJ1
Y3QgY2xrICpjbGs7CiAJc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJzdDsKIAl2b2lkIF9faW9tZW0g
KmJhc2U7CkBAIC0zOTEsNiArMzkyLDE0IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCX0KIAl9CiAKKwlwd20tPmJ1c19jbGsgPSBk
ZXZtX2Nsa19nZXRfb3B0aW9uYWwoJnBkZXYtPmRldiwgImJ1cyIpOworCWlmIChJU19FUlIocHdt
LT5idXNfY2xrKSkgeworCQlpZiAoUFRSX0VSUihwd20tPnJzdCkgIT0gLUVQUk9CRV9ERUZFUikK
KwkJCWRldl9lcnIoJnBkZXYtPmRldiwgImdldCBidXMgY2xvY2sgZmFpbGVkICVwZVxuIiwKKwkJ
CQlwd20tPmJ1c19jbGspOworCQlyZXR1cm4gUFRSX0VSUihwd20tPmJ1c19jbGspOworCX0KKwog
CXB3bS0+cnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25hbF9zaGFyZWQoJnBkZXYt
PmRldiwgTlVMTCk7CiAJaWYgKElTX0VSUihwd20tPnJzdCkpIHsKIAkJaWYgKFBUUl9FUlIocHdt
LT5yc3QpICE9IC1FUFJPQkVfREVGRVIpCkBAIC00MDYsNiArNDE1LDE2IEBAIHN0YXRpYyBpbnQg
c3VuNGlfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCXJldHVybiBy
ZXQ7CiAJfQogCisJLyoKKwkgKiBXZSdyZSBrZWVwaW5nIHRoZSBidXMgY2xvY2sgb24gZm9yIHRo
ZSBzYWtlIG9mIHNpbXBsaWNpdHkuCisJICogQWN0dWFsbHkgaXQgb25seSBuZWVkcyB0byBiZSBv
biBmb3IgaGFyZHdhcmUgcmVnaXN0ZXIgYWNjZXNzZXMuCisJICovCisJcmV0ID0gY2xrX3ByZXBh
cmVfZW5hYmxlKHB3bS0+YnVzX2Nsayk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKCZwZGV2LT5k
ZXYsICJDYW5ub3QgcHJlcGFyZSBhbmQgZW5hYmxlIGJ1c19jbGtcbiIpOworCQlnb3RvIGVycl9i
dXM7CisJfQorCiAJcHdtLT5jaGlwLmRldiA9ICZwZGV2LT5kZXY7CiAJcHdtLT5jaGlwLm9wcyA9
ICZzdW40aV9wd21fb3BzOwogCXB3bS0+Y2hpcC5iYXNlID0gLTE7CkBAIC00MjYsNiArNDQ1LDgg
QEAgc3RhdGljIGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIAlyZXR1cm4gMDsKIAogZXJyX3B3bV9hZGQ6CisJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHB3
bS0+YnVzX2Nsayk7CitlcnJfYnVzOgogCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KHB3bS0+cnN0KTsK
IAogCXJldHVybiByZXQ7CkBAIC00NDAsNiArNDYxLDcgQEAgc3RhdGljIGludCBzdW40aV9wd21f
cmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKHJldCkKIAkJcmV0dXJu
IHJldDsKIAorCWNsa19kaXNhYmxlX3VucHJlcGFyZShwd20tPmJ1c19jbGspOwogCXJlc2V0X2Nv
bnRyb2xfYXNzZXJ0KHB3bS0+cnN0KTsKIAogCXJldHVybiAwOwotLSAKMi4yMC4xCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
