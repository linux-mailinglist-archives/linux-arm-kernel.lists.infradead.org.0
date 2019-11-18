Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6646A10017E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:38:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCxliAwDL19AFMRUunzpRSPpVddAtwN0FIFtdHeorfQ=; b=NFM3u8+v2Y5fy5
	YxR6ldjyJ5NSpUWvZBBUKnVMi3wF1ve0G/wPuIaARTDidLgMsCgzsZM45cnkx6axIMGOBByTAuVFK
	3S0tLqGzUxxB1m/tA/YZjbQ31ja2VDXwI3M8g9xOlemR1CxZYsBYZi2BRnOtucXJdCm/Mew6luYVW
	ubYarJQV8UslIDbP1GlufN3L/JcodudmmDZexQJDifKC42dwsZ4NBPrwacJWVRKS/pE6RaqWz9rgV
	GWeibPDwmtqkkBaIOHe+BxupDzl3Up6MzfjV/cBOILCFtFmv7M0o2cfCpVH+R5LhWcVb75KSsObAC
	U+qoZfun9Wxodz2EANow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdUS-0004fj-O8; Mon, 18 Nov 2019 09:38:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdTd-00046C-9X
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:37:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id s5so18575483wrw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 01:37:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nFDrmtiB5h/Zr80zbuCGUX75SrtWuuQxETq8orGACdo=;
 b=pDq8S9eBLG5YpdtCLceYlK8zJHKySSMJ4gNa4obO5RzmF65RlwU73LgN2+V4Akd/r8
 9nt+gRe5Lyaf5Zd85j/GTuEWkunkx8qc/Ppg40CeYy0cLTS9YNVDCBEPuzJ7XuyEGrCJ
 R3hNBjDFh+Npn16HM/wTRfCR+MctwUgZOeLT+OWYuxlKivqnO5CHZvnqjna3UEL3Mg2V
 01+51+jKT2PN8x4dsQfCMCTqQBMFJuD6xT/7qUiK64KxeMGeyUuPaXD3IvQnPhXMxLQM
 pZ9lOuez7rvmJiubMR/HPxaZSo7Os6ftlqaOZ9vsV6FtgOpNQqTGKGPywa4EQev/u/6s
 q6Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nFDrmtiB5h/Zr80zbuCGUX75SrtWuuQxETq8orGACdo=;
 b=nrS6CaYwhWdxw94fTK3Pd7UM2Ei6K7iGL+bkHZIIqbluE/RmKwk4p2eRr5lZhb/cwY
 DmeGGYVs5DtqTcSphZ9CxzhGd5c5LhQh/vrKTp8zjn40x2mc17A+U0EMvWp/rGSFXuOL
 soPe6Sqq3t22Tr2XwvucS7FXFcczR00oKtuhTFEGoFcdAaerZI+7V8ZILOif7LsprHYD
 hUhw7BtF3wsfLF3AquETrWF5NgmIQR/RGvSEL1UoWl6LE3Rh0UxKzaC073F6dHLmF9Nw
 n1IT6gz6ye11TxITfUXR6CBoZ9gPo/rdtRnXBsV/ygAZhG6fA8RZIfKUWCnRpUEviZDK
 rB7g==
X-Gm-Message-State: APjAAAXAaZ9xpE8MPJLY8Y5spQ5HutDtHm3gaHnb9UbrUPdizvD4EfQc
 tC4RcwTqv6eGYknrPQaB3Po=
X-Google-Smtp-Source: APXvYqxrEmLi5UBnckJcDzEtZ/GOtx6jGsQIN4D2M+GIJGDkkHT82C2NdqHccLyS9r8AyPBugiVUwg==
X-Received: by 2002:a5d:6585:: with SMTP id q5mr25423114wru.158.1574069863961; 
 Mon, 18 Nov 2019 01:37:43 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id w10sm19006687wmd.26.2019.11.18.01.37.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 01:37:43 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v5 2/8] pwm: sun4i: Add an optional probe for reset line
Date: Mon, 18 Nov 2019 10:37:21 +0100
Message-Id: <20191118093727.21899-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191118093727.21899-1-peron.clem@gmail.com>
References: <20191118093727.21899-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_013745_328826_A13F9F12 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
cmUgbmVlZHMgZGVhc3NlcnRlZCByZXNldCBsaW5lIGluIG9yZGVyIHRvIHdvcmsuCgpBZGQgYW4g
b3B0aW9uYWwgcHJvYmUgZm9yIGl0LgoKU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGpl
cm5lai5za3JhYmVjQHNpb2wubmV0PgpSZXZpZXdlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOp
cm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8
IDMzICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDMx
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20v
cHdtLXN1bjRpLmMgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwppbmRleCA1ODFkMjMyODczMzMu
LmMxNzkzNTgwNTY5MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKKysrIGIv
ZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKQEAgLTE2LDYgKzE2LDcgQEAKICNpbmNsdWRlIDxsaW51
eC9vZl9kZXZpY2UuaD4KICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KICNpbmNs
dWRlIDxsaW51eC9wd20uaD4KKyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgogI2luY2x1ZGUgPGxp
bnV4L3NsYWIuaD4KICNpbmNsdWRlIDxsaW51eC9zcGlubG9jay5oPgogI2luY2x1ZGUgPGxpbnV4
L3RpbWUuaD4KQEAgLTc4LDYgKzc5LDcgQEAgc3RydWN0IHN1bjRpX3B3bV9kYXRhIHsKIHN0cnVj
dCBzdW40aV9wd21fY2hpcCB7CiAJc3RydWN0IHB3bV9jaGlwIGNoaXA7CiAJc3RydWN0IGNsayAq
Y2xrOworCXN0cnVjdCByZXNldF9jb250cm9sICpyc3Q7CiAJdm9pZCBfX2lvbWVtICpiYXNlOwog
CXNwaW5sb2NrX3QgY3RybF9sb2NrOwogCWNvbnN0IHN0cnVjdCBzdW40aV9wd21fZGF0YSAqZGF0
YTsKQEAgLTM2NCw2ICszNjYsMjEgQEAgc3RhdGljIGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlpZiAoSVNfRVJSKHB3bS0+Y2xrKSkKIAkJcmV0dXJu
IFBUUl9FUlIocHdtLT5jbGspOwogCisJcHdtLT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0
X29wdGlvbmFsX3NoYXJlZCgmcGRldi0+ZGV2LCBOVUxMKTsKKwlpZiAoSVNfRVJSKHB3bS0+cnN0
KSkgeworCQlpZiAoUFRSX0VSUihwd20tPnJzdCkgIT0gLUVQUk9CRV9ERUZFUikKKwkJCWRldl9l
cnIoJnBkZXYtPmRldiwgImdldCByZXNldCBmYWlsZWQgJXBlXG4iLAorCQkJCXB3bS0+cnN0KTsK
KwkJcmV0dXJuIFBUUl9FUlIocHdtLT5yc3QpOworCX0KKworCS8qIERlYXNzZXJ0IHJlc2V0ICov
CisJcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChwd20tPnJzdCk7CisJaWYgKHJldCkgewor
CQlkZXZfZXJyKCZwZGV2LT5kZXYsICJDYW5ub3QgZGVhc3NlcnQgcmVzZXQgY29udHJvbFxuIik7
CisJCXJldHVybiByZXQ7CisJfQorCiAJcHdtLT5jaGlwLmRldiA9ICZwZGV2LT5kZXY7CiAJcHdt
LT5jaGlwLm9wcyA9ICZzdW40aV9wd21fb3BzOwogCXB3bS0+Y2hpcC5iYXNlID0gLTE7CkBAIC0z
NzYsMTkgKzM5MywzMSBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCXJldCA9IHB3bWNoaXBfYWRkKCZwd20tPmNoaXApOwogCWlmIChy
ZXQgPCAwKSB7CiAJCWRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBhZGQgUFdNIGNoaXA6
ICVkXG4iLCByZXQpOwotCQlyZXR1cm4gcmV0OworCQlnb3RvIGVycl9wd21fYWRkOwogCX0KIAog
CXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYsIHB3bSk7CiAKIAlyZXR1cm4gMDsKKworZXJyX3B3
bV9hZGQ6CisJcmVzZXRfY29udHJvbF9hc3NlcnQocHdtLT5yc3QpOworCisJcmV0dXJuIHJldDsK
IH0KIAogc3RhdGljIGludCBzdW40aV9wd21fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiB7CiAJc3RydWN0IHN1bjRpX3B3bV9jaGlwICpwd20gPSBwbGF0Zm9ybV9nZXRfZHJ2
ZGF0YShwZGV2KTsKKwlpbnQgcmV0OworCisJcmV0ID0gcHdtY2hpcF9yZW1vdmUoJnB3bS0+Y2hp
cCk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKworCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KHB3
bS0+cnN0KTsKIAotCXJldHVybiBwd21jaGlwX3JlbW92ZSgmcHdtLT5jaGlwKTsKKwlyZXR1cm4g
MDsKIH0KIAogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgc3VuNGlfcHdtX2RyaXZlciA9
IHsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
