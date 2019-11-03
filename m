Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69D8ED4A5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 21:34:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VG5d9kIUnuB2jSFFFSe57ES304YezipdLUIs+B16PEw=; b=b5intoeMHPFDIn
	/AWMUVQg1uQNemhss0puYKkEGDvoS2o25qGckCrXCaF1LwFSAz4LiZmPc6WxSVmsdK7sDaONRsRsS
	E6jjOK7916vWuJ3kKYn2zlrm6w4kSo7NDRVEx9tSppV6Ey28sMH6t6ATZpHipgmJq9t08eUBMyOji
	Awu9R87tlhS7mv6lITjnsraF6e5se0bv2wzLaCSmZzgefExDSgEH656d0xFUyrQ1UFSQqZQZTw83O
	JtSh/UdHy1bzQ6/fKFjnsyFxzWd7QFxgI723r+qZZpGXdHR5G6p1dz7+GN4orHmx57kDCernCQsJX
	aaZDgcNF9nyEKPoF1BBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRMZU-0006H5-09; Sun, 03 Nov 2019 20:34:00 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRMZK-0006F9-Gx
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 20:33:51 +0000
Received: by mail-wm1-x344.google.com with SMTP id t26so9899227wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 12:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dFi/U1rLrNtYEF4KWCZeapP9LyQz1KrI3hNiOLuNA64=;
 b=ZQUt1nmRM2FUbzYRthgFhs63Yvguqcf4AMFDBlwueb4W6j6t/ov+SAwCrRETGaIJQE
 t7Fj0TE4wHI7gocR1i1BJNL7a6SwNfgkKR0cDFXrjf1/uhjbGDCusfI4cvftb9xaYGJb
 robrcVE2VFFshdyIr2+0902/9v7nl3r6Scx+q/dyZ34o5XhdT+a8GKrGkfdFLxJgOrQs
 BzHAjQVpbkqQxpoyrKCY0QiTW9Odv8Rng1REsj4TmtILsOlr2Lf1HX6TYEtJ1EMrYS4k
 CnLlgDEGHSyG80fmMk4Xzn5ytEbV8EOmE/abaBCZrjWpTsrx/uk0Q230j39/7fFA3h9O
 rqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dFi/U1rLrNtYEF4KWCZeapP9LyQz1KrI3hNiOLuNA64=;
 b=Z4GlqCcynptuy113/7liGMyG8ilA65F3XgslRCSN98IJ0QW/zSPHlNY4IGCbg45ny8
 0ANBe+RRQmy9rgvVnVh527/QqEHVpg5AtuP8bsh9KzlLT4Au1aRjhE3ZG9oJ6cdL6uB7
 CdOCgzZYOu4Jidk2blDSBuXJVntxy0flyayIKJI8a9ewVjrxbxWhpHhPgDv50FbMrdhF
 F0WsyP6fPd7j2HmTYgr+Baxo5mj6tJ6RjL+C6/IMToM7e8r3+MGkxaYyB+n6fxecH7h0
 TcKO+xmmeYQjs9xgZuC/9tCL80t1kZrwyZ0nJZ5axDvv4YI/xlDCmmOE8nY8vTOuU53c
 ijhA==
X-Gm-Message-State: APjAAAW71RV3eMMBPt7kkGzCwvhyxHKdvWI1YIQcz89Muit2sPaEqpbH
 e1rMYj3U9GksFzhmrWb+fSc=
X-Google-Smtp-Source: APXvYqyHGuQGzFLqWSs1hRl/bS7UtXf/0vTeNiNDZ0Jn7ft1yhN53cmPZImc/ucvSmsNoFapr7/39w==
X-Received: by 2002:a05:600c:21d3:: with SMTP id
 x19mr19936742wmj.121.1572813227311; 
 Sun, 03 Nov 2019 12:33:47 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id x16sm13644026wrp.91.2019.11.03.12.33.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 12:33:46 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 2/7] pwm: sun4i: Add an optional probe for reset line
Date: Sun,  3 Nov 2019 21:33:29 +0100
Message-Id: <20191103203334.10539-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191103203334.10539-1-peron.clem@gmail.com>
References: <20191103203334.10539-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_123350_565069_A03A98FE 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGNv
cmUgbmVlZHMgZGVhc3NlcnRlZCByZXNldCBsaW5lIGluIG9yZGVyIHRvIHdvcmsuCgpBZGQgYW4g
b3B0aW9uYWwgcHJvYmUgZm9yIGl0LgoKU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGpl
cm5lai5za3JhYmVjQHNpb2wubmV0PgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBl
cm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGRyaXZlcnMvcHdtL3B3bS1zdW40aS5jIHwgMzIgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40
aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKaW5kZXggNmY1ODQwYTFhODJkLi5kMTk0Yjhl
YmRiMDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBiL2RyaXZlcnMv
cHdtL3B3bS1zdW40aS5jCkBAIC0xNiw2ICsxNiw3IEBACiAjaW5jbHVkZSA8bGludXgvb2ZfZGV2
aWNlLmg+CiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CiAjaW5jbHVkZSA8bGlu
dXgvcHdtLmg+CisjaW5jbHVkZSA8bGludXgvcmVzZXQuaD4KICNpbmNsdWRlIDxsaW51eC9zbGFi
Lmg+CiAjaW5jbHVkZSA8bGludXgvc3BpbmxvY2suaD4KICNpbmNsdWRlIDxsaW51eC90aW1lLmg+
CkBAIC03OCw2ICs3OSw3IEBAIHN0cnVjdCBzdW40aV9wd21fZGF0YSB7CiBzdHJ1Y3Qgc3VuNGlf
cHdtX2NoaXAgewogCXN0cnVjdCBwd21fY2hpcCBjaGlwOwogCXN0cnVjdCBjbGsgKmNsazsKKwlz
dHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0OwogCXZvaWQgX19pb21lbSAqYmFzZTsKIAlzcGlubG9j
a190IGN0cmxfbG9jazsKIAljb25zdCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEgKmRhdGE7CkBAIC0z
NjUsNiArMzY3LDIwIEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCiAJaWYgKElTX0VSUihwd20tPmNsaykpCiAJCXJldHVybiBQVFJfRVJS
KHB3bS0+Y2xrKTsKIAorCXB3bS0+cnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25h
bCgmcGRldi0+ZGV2LCBOVUxMKTsKKwlpZiAoSVNfRVJSKHB3bS0+cnN0KSkgeworCQlpZiAoUFRS
X0VSUihwd20tPnJzdCkgPT0gLUVQUk9CRV9ERUZFUikKKwkJCXJldHVybiBQVFJfRVJSKHB3bS0+
cnN0KTsKKwkJZGV2X2luZm8oJnBkZXYtPmRldiwgIm5vIHJlc2V0IGNvbnRyb2wgZm91bmRcbiIp
OworCX0KKworCS8qIERlYXNzZXJ0IHJlc2V0ICovCisJcmV0ID0gcmVzZXRfY29udHJvbF9kZWFz
c2VydChwd20tPnJzdCk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJDYW5u
b3QgZGVhc3NlcnQgcmVzZXQgY29udHJvbFxuIik7CisJCXJldHVybiByZXQ7CisJfQorCiAJcHdt
LT5jaGlwLmRldiA9ICZwZGV2LT5kZXY7CiAJcHdtLT5jaGlwLm9wcyA9ICZzdW40aV9wd21fb3Bz
OwogCXB3bS0+Y2hpcC5iYXNlID0gLTE7CkBAIC0zNzcsMTkgKzM5MywzMSBAQCBzdGF0aWMgaW50
IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldCA9IHB3
bWNoaXBfYWRkKCZwd20tPmNoaXApOwogCWlmIChyZXQgPCAwKSB7CiAJCWRldl9lcnIoJnBkZXYt
PmRldiwgImZhaWxlZCB0byBhZGQgUFdNIGNoaXA6ICVkXG4iLCByZXQpOwotCQlyZXR1cm4gcmV0
OworCQlnb3RvIGVycl9wd21fYWRkOwogCX0KIAogCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBkZXYs
IHB3bSk7CiAKIAlyZXR1cm4gMDsKKworZXJyX3B3bV9hZGQ6CisJcmVzZXRfY29udHJvbF9hc3Nl
cnQocHdtLT5yc3QpOworCisJcmV0dXJuIHJldDsKIH0KIAogc3RhdGljIGludCBzdW40aV9wd21f
cmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHN1bjRpX3B3
bV9jaGlwICpwd20gPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKKwlpbnQgcmV0OworCisJ
cmV0ID0gcHdtY2hpcF9yZW1vdmUoJnB3bS0+Y2hpcCk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJl
dDsKKworCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KHB3bS0+cnN0KTsKIAotCXJldHVybiBwd21jaGlw
X3JlbW92ZSgmcHdtLT5jaGlwKTsKKwlyZXR1cm4gMDsKIH0KIAogc3RhdGljIHN0cnVjdCBwbGF0
Zm9ybV9kcml2ZXIgc3VuNGlfcHdtX2RyaXZlciA9IHsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
