Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDBC102B2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Y4zFIcBXyg9xWSLEtrcCLKJInNW/6VZBgfKvRVNbjc=; b=KEBff9FImbcwXu
	Tbj1VTkad6OK960Ks+bRfixgfKmZwSJkiqHlCtz4lq6S2DviCZt0H59Tx3HOOp4iCXP51B6P96jxk
	Jy713BsK9f3r4yvtAz98t0CVbsKp6qcryGMC/Fk4VImlhtYwlyPLvDaY8CIhYaTL1E8K7bO/W7WvH
	DccbL6yfdxZPbYAz5/nChbKbOlDIojUzEhGsr3z+3kJE+tIlHDooF/KgT2Ls2qqtR9fOBLkj+ttLp
	0/GdnqNoiOMKsrlFf+2sROFk2/xmX4rcj2/nOj0wxIHsB1BCVOlwubcXk6UAcE4b3Xiq8uhwjo35k
	ZIoOhLbA2h3Mq1MMJiEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX7i1-00087u-4g; Tue, 19 Nov 2019 17:54:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX7gv-0007Hz-1C
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 17:53:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id z10so24925642wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 09:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Jsifq8PTX0er46e43pUZkmCyPNqnaTwpRAxn8YySges=;
 b=cBidvaueQsZTh/Frc70oKIqbOXFsI31ZCgK+cvPz7uDUQVgnrF8XXl/ND9nEuJgu7Y
 eOSIlc4pHu2jvj6YIEeg3+4CVutsG5r6Dv+JWjMmDauVIf2l44hRPkf7tzTXIC6/mvyd
 ZD2vZGtnImp5VjL1vI66KiUnPnC/ULh0VmfNSD5vQ7LeN61CBFQxkiIyaRKEvbrihFRB
 pTpBauPOy8hWr3AXRaNINzrHmCEnvUBIh5xi0M9JOboR8IoYrYloNKVjBmAaptZNdUCO
 ORORJsOIGnMOXObKAFQml63ayUqG8j1zjagW+F8qHYN13h9DPYuKgYEAMXU9u6/MnvWn
 DC0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Jsifq8PTX0er46e43pUZkmCyPNqnaTwpRAxn8YySges=;
 b=mnmxnQNs3FH9+L6LCUvPc1TIjTcqF2l0oX7145Vskh5t7xcgFXMtTj3xP70TWie3h8
 e25z/RopsCX88i2BDDeplhyJfbZ4rIc5ybbL+0O4i+zYz351O0bcvqijcSiYVl5T54I9
 46jHnJIS/xkd8IIK+tIGoeJ9tYN+b4zLM6UzvlMmBPViqM/FBu3gYccH8881jxyMjqMe
 Rxxvu0Dw1X5La1sgpOizFyH1dvEIO1HJUINZ8dm7g4swKcKbSzHEDMnulYHDRdXuhBMK
 DVO83oncQZyPSsM0Xe91daEEhIVYsag5PtFMaJ3tijP4sICGGq70cv3eQwUKrhlQV41C
 A9DA==
X-Gm-Message-State: APjAAAWIPY+npT7p462OgHoVkx9DRLLm/sBuGqd3epKp/W+20ZCgKeDX
 BwC1RHWXNK6G5PS9ZsE049ZavN0nNsT7EQ==
X-Google-Smtp-Source: APXvYqxLWxt/WyrFLqrGFY1V0vJ+g8vbDOhRT6OpisfVcWiUoWWKXZb1BiJK06DNDICYviBRXNyOjQ==
X-Received: by 2002:a5d:4810:: with SMTP id l16mr5347849wrq.127.1574186007205; 
 Tue, 19 Nov 2019 09:53:27 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id l13sm3772618wmh.12.2019.11.19.09.53.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 09:53:26 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v7 4/8] pwm: sun4i: Add an optional probe for bus clock
Date: Tue, 19 Nov 2019 18:53:15 +0100
Message-Id: <20191119175319.16561-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191119175319.16561-1-peron.clem@gmail.com>
References: <20191119175319.16561-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_095329_107888_13BEE84F 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
