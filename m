Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4690010017F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:38:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vX+i0wBys37gCBdgOndIqLxrjl8iu9ax9BMchIU1JM=; b=hCZAGxTJubdPPY
	8ZwvfrTn2vnGNtDUP/EA7ijLlQyzSj1FziYSSuJ+VdbZduuP/Jv/foCFunRD62tgD8RecCxjTuphf
	9MxDnesJMj2VVhHOsBMJXMHAYFLEixEK//1svmEGKAjcOvc1ymX2wplZUtm1+thDXUTxToOLmb76K
	H7zk7qTwhl9TJiKS+i1kebd2CrWFam4Z6EErj7wWfqTU3O45SzFWVYEhCKt7ao+ee83Yxd/g4p+/F
	mjbs8kmSM+MFY1qFPwfb0gSnf/LNYA9bc0pxpG1RyFLqsZRdKaLXFbQ+8UwPCybvTIBiyQaflx8Wf
	aWh0r8s0A1w3xUEq6LwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdUi-0004qY-4s; Mon, 18 Nov 2019 09:38:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdTe-00046q-AS
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:37:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id n1so18524333wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 01:37:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3oSzYYj438eAKcP5hk6lqHYItTlWnnUzKNHsPAjkdJc=;
 b=AAwSAzRJnxMXxjJhclwhlpl/mYNzB5ilqx+RifNxbzYksBz8LgaY8HM1HjolEFjUlL
 htMUYi1b7/J9koh5JDoM5lang7KZDLwjE6LCARKrKo2iUv6DaNBf4lTaUQGBHu4hWz7X
 5OHJlfP7Un+y6PgbkQ2SXfWbqW3hi7zz7xofwBFSxwRm6iYI23xFe3yjWbG3F6TLwiuR
 gdE7MYjSUXMpmX0782a7Kv8EzXZ/nArwW7O8qPZBz1ge4yY27txHV/SCApwR89XgItGo
 KdfQTO0P4EOkM8udo8IuJ90uquKhx1zz25e4/iCrXyT7XdDJoUkD8E5S10WNQHl0FOAt
 NbdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3oSzYYj438eAKcP5hk6lqHYItTlWnnUzKNHsPAjkdJc=;
 b=Id3PanlTJ1ksRXMDjGHGASGwjw0J38pW0Ojn5ZhvpoY/v1cmbKX7rIPGSmh32ORwpI
 xmlRkSEahbyTMyBl1GPDV3bVdmfuZjzXn3vFcNTk3DglTj52JplZ8Y8EM2NtFQwldUsX
 Qikw07FuoyGeTlkcGAv0xuB38PHzZieP3H9UIbNhCJhZfC++5gVyQgAvouCQtd+RjkC1
 U0be6HMyWc7KJQ4KlCDtV1U8N0J22g/ZAdlOclTX0jQou0xIbLGE1Bm5FmsB2K2misac
 q8ZP6jqL/V4yRipnkCq3rDCMFL99RqBTt+naF9zjwoYiHjvMBiSH3HfY+JUiI098H//F
 yNbg==
X-Gm-Message-State: APjAAAWm1hXYQPH2AI7uwjIp+0p88qe0DsvXv/uay+4Gx4+K2xD5Fhsm
 jX2IsO08FyJoZFRW9FI5k8Ez6xnUUbc=
X-Google-Smtp-Source: APXvYqzDOwuq0A8F4oYn60+HJq1SW+kqllssigTTUg8uT9nBRUvhHeMoTlhVG7xt0+yV2c7Jg6TXXw==
X-Received: by 2002:adf:fd91:: with SMTP id d17mr28262822wrr.214.1574069864966; 
 Mon, 18 Nov 2019 01:37:44 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id w10sm19006687wmd.26.2019.11.18.01.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 01:37:44 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v5 3/8] pwm: sun4i: Prefer "mod" clock to unnamed
Date: Mon, 18 Nov 2019 10:37:22 +0100
Message-Id: <20191118093727.21899-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191118093727.21899-1-peron.clem@gmail.com>
References: <20191118093727.21899-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_013746_374272_E9B3D6C2 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TmV3IGRldmljZSB0cmVlIGJpbmRpbmdzIGNhbGxlZCB0aGUgc291cmNlIGNsb2NrIG9mIHRoZSBt
b2R1bGUKIm1vZCIgd2hlbiBzZXZlcmFsIGNsb2NrcyBhcmUgZGVmaW5lZC4KClRyeSB0byBnZXQg
YSBjbG9jayBjYWxsZWQgIm1vZCIgaWYgbm90aGluZyBpcyBmb3VuZCB0cnkgdG8gZ2V0CmFuIHVu
bmFtZWQgY2xvY2suCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1A
Z21haWwuY29tPgotLS0KIGRyaXZlcnMvcHdtL3B3bS1zdW40aS5jIHwgMjkgKysrKysrKysrKysr
KysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jIGIvZHJpdmVy
cy9wd20vcHdtLXN1bjRpLmMKaW5kZXggYzE3OTM1ODA1NjkwLi5iYmIxZWQxOTRjMGUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40
aS5jCkBAIC0zNjIsOSArMzYyLDM0IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKElTX0VSUihwd20tPmJhc2UpKQogCQlyZXR1
cm4gUFRSX0VSUihwd20tPmJhc2UpOwogCi0JcHdtLT5jbGsgPSBkZXZtX2Nsa19nZXQoJnBkZXYt
PmRldiwgTlVMTCk7Ci0JaWYgKElTX0VSUihwd20tPmNsaykpCisJLyoKKwkgKiBBbGwgaGFyZHdh
cmUgdmFyaWFudHMgbmVlZCBhIHNvdXJjZSBjbG9jayB0aGF0IGlzIGRpdmlkZWQgYW5kCisJICog
dGhlbiBmZWVkcyB0aGUgY291bnRlciB0aGF0IGRlZmluZXMgdGhlIG91dHB1dCB3YXZlIGZvcm0u
IEluIHRoZQorCSAqIGRldmljZSB0cmVlIHRoaXMgY2xvY2sgaXMgZWl0aGVyIHVubmFtZWQgb3Ig
Y2FsbGVkICJtb2QiLgorCSAqIFNvbWUgdmFyaWFudHMgKGUuZy4gSDYpIG5lZWQgYW5vdGhlciBj
bG9jayB0byBhY2Nlc3MgdGhlCisJICogaGFyZHdhcmUgcmVnaXN0ZXJzOyB0aGlzIGlzIGNhbGxl
ZCAiYnVzIi4KKwkgKiBTbyB3ZSByZXF1ZXN0ICJtb2QiIGZpcnN0IChhbmQgaWdub3JlIHRoZSBj
b3JuZXIgY2FzZSB0aGF0IGEKKwkgKiBwYXJlbnQgcHJvdmlkZXMgYSAibW9kIiBjbG9jayB3aGls
ZSB0aGUgcmlnaHQgb25lIHdvdWxkIGJlIHRoZQorCSAqIHVubmFtZWQgb25lIG9mIHRoZSBQV00g
ZGV2aWNlKSBhbmQgaWYgdGhpcyBpcyBub3QgZm91bmQgd2UgZmFsbAorCSAqIGJhY2sgdG8gdGhl
IGZpcnN0IGNsb2NrIG9mIHRoZSBQV00uCisJICovCisJcHdtLT5jbGsgPSBkZXZtX2Nsa19nZXRf
b3B0aW9uYWwoJnBkZXYtPmRldiwgIm1vZCIpOworCWlmIChJU19FUlIocHdtLT5jbGspKSB7CisJ
CWlmIChQVFJfRVJSKHB3bS0+cnN0KSAhPSAtRVBST0JFX0RFRkVSKQorCQkJZGV2X2VycigmcGRl
di0+ZGV2LCAiZ2V0IGNsb2NrIGZhaWxlZCAlcGVcbiIsCisJCQkJcHdtLT5jbGspOwogCQlyZXR1
cm4gUFRSX0VSUihwd20tPmNsayk7CisJfQorCisJaWYgKCFwd20tPmNsaykgeworCQlwd20tPmNs
ayA9IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2LCBOVUxMKTsKKwkJaWYgKElTX0VSUihwd20tPmNs
aykpIHsKKwkJCWlmIChQVFJfRVJSKHB3bS0+cnN0KSAhPSAtRVBST0JFX0RFRkVSKQorCQkJCWRl
dl9lcnIoJnBkZXYtPmRldiwgImdldCBjbG9jayBmYWlsZWQgJXBlXG4iLAorCQkJCQlwd20tPmNs
ayk7CisJCQlyZXR1cm4gUFRSX0VSUihwd20tPmNsayk7CisJCX0KKwl9CiAKIAlwd20tPnJzdCA9
IGRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWxfc2hhcmVkKCZwZGV2LT5kZXYsIE5VTEwp
OwogCWlmIChJU19FUlIocHdtLT5yc3QpKSB7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
