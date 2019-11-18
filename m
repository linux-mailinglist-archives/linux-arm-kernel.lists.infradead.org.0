Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D13B10034D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:01:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCxliAwDL19AFMRUunzpRSPpVddAtwN0FIFtdHeorfQ=; b=MkZUrKVmq0hFDa
	I2WuYTYnN96WlQLMGPZOrkkuqBsK6vhn+PHO7CM8RzoIpKrjx38ffIGqzGTNeEMkQmCzBaP6npKDq
	RqS5ZK2J6K50KJpLWaLKRCwMDnO1Q2CYhDzfG9uyRewg3wJP9JZMumpOFAJO56cPm8BvYbCB6+dHx
	OzD0b0tkWuWfbs9hji0GyyOnj6Ug8LS+GcXVhsE1BIMKR2AIM0GY4fl0U9UbaHJlWl0kjKampUGkb
	0XpsBkg4Imf7x5JBNZIFa5Tfd+YKbQtYEY+m9AhuGmgCbV7X+IPEIk3QbSTSiUQJZmZLUPqNdHJfK
	hH6GIn5OkBMhkGMQExHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWemb-0006zx-Qb; Mon, 18 Nov 2019 11:01:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWelu-0006eH-GC
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:00:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id t1so18888959wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nFDrmtiB5h/Zr80zbuCGUX75SrtWuuQxETq8orGACdo=;
 b=rvyNyMqc1D+jPRurNAmZ1sgzsaQbzJ6wBBEgsy5D62mpDk+XyXG1TxGfzXo+McCZcK
 +NcIA9co9Xqvh9g01D673oDyHFpJH79a0edKgNXuqb3wExDS+/BUX2arhQ4IKS9sm3oI
 QYR1xDwpYxJ5EabIT7IGZibDN1zGNcEi9R/Jc+bFsSuSRFlA1ZCVpXFVOyNLAjou90JX
 JJlXlJd3biqLgGfo6CzTzaXpw3qZfAm7TlyjVglBdd93dZaTnCIPQ9hljWAM3YUbmHFH
 2MTNDC/4JxaDfN0yA/p2GYPjIrktq56S2KV7+CsxGYI0tPHdgYqFM2GNmSZ487AkFbAg
 fK4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nFDrmtiB5h/Zr80zbuCGUX75SrtWuuQxETq8orGACdo=;
 b=kK8uNAe+vnv+oVo2qxMGhOvbujdsvrZF/TEbxrpHJ/jTPIoKKsSknqsXbPVtT/Xv58
 +BGT3XWTg22VkVTH18zrX2kLGrdHEsix5YiCM+HHMQZlwEF1OMFstP/1HkxyNnwDNnCJ
 szrz6Szr2HkoqXJlS119H24Q/KDWtRuK7fzctvw/+K6ZQEMQe96UQkj2X28hVoGuoWOI
 mWky/Df6BbaLLyqZLRCjBmA5UM1DAcj/jUpIv/x11A5vb7ZxO58JuHFDzzZxrmfbDlu5
 awzJ/FsjWkiBun+lYp3BcEJHP1WSsatVVW76Kn8ZxV8fPwQKve0794KLDrhHUOnqMv50
 YxpA==
X-Gm-Message-State: APjAAAWHy+w0TxzOBKvEz/YtOLMvW2R75x9y8Y92VIoxDM2SRdQa/Zqf
 l1SilwS3ef00Cg5hXyygluo=
X-Google-Smtp-Source: APXvYqx75gEPB0FteaYS2yHGOP2I2/utQyuuZOScnt6LFmIebZFYgGAW1ROUtA2x2X9B7RfWT43kyg==
X-Received: by 2002:a5d:558e:: with SMTP id i14mr28728525wrv.140.1574074841156; 
 Mon, 18 Nov 2019 03:00:41 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id f67sm19873313wme.16.2019.11.18.03.00.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:00:40 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v6 2/8] pwm: sun4i: Add an optional probe for reset line
Date: Mon, 18 Nov 2019 12:00:28 +0100
Message-Id: <20191118110034.19444-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191118110034.19444-1-peron.clem@gmail.com>
References: <20191118110034.19444-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_030042_540346_D61134B3 
X-CRM114-Status: GOOD (  17.25  )
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
