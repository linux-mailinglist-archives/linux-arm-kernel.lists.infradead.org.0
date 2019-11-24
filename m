Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79DB10845F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 18:31:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egR5Yx8Fbs8Uu3yzupVg+B9GYpknZZeRpmLzBRsVYqk=; b=d+OtIBVGYJjS0H
	nH30sg+t2ngk4hN9Kz0RLNywjMDSC5EFwE0q82aLPQ9OTWiiJBn1l6qA+qDUiP1YRzib0lerWF9Vu
	ukOm9nNHksF6t5ECa2I2rZ0w7OBnxio31WfA6WZ8saQWXSRvU/OKdpKiD5PXFmjRSjOufCFdom4Pe
	l2snxXkCkdl2smS598lQdt+9xI52Axhws/d0UPmjszgCUkpy2mBe2RvWhrUcoVxxx54WSu/TyBc8J
	YRc8RhwRw3G8zQA0CaSS33L+4iQovHHe8BiNfDcJj2wFc4yxQ2L2wXS5TTc65G4i7JZT1EAFopKbU
	5Q31BqLqy0wMfuWR0faQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYvjE-0006eo-FP; Sun, 24 Nov 2019 17:31:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYvi5-0005Gs-U4
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 17:30:11 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so14726309wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 Nov 2019 09:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kBIOZ347etSnW61gnUIaBM64Cedw0cl5jNO3eKEASaI=;
 b=BNXw7SGybu8K/BnOo/JmbYr3H+qeKULqXTZlFkPQeXtapTFXumcRzWWa5szX8gIRPp
 l7uDSFr5mU//Kl4U1JBwkwBjsK02e0mNwuLEk2pVhO40nb5ajspahtr7bqep6axQwhEi
 gzxBVD9Ec9ZOrVxntjnXGO7qAhgNPSeB/sxaiJrNudcMIFeRvMfLGrgl+Mu2kNQDOACB
 ArL/wo5SGjbWfA6sc7bDNvXpx20xYDg4U2ml/G8QWLADeK20UgsMFIgpjrtSRLj/J/oI
 yBW3k8s/2isjfXEOwqii/tWcnLSqOJBKgs2pQxGy6weYm6URBoVaUUFzdnry/7ToZdGL
 9vIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kBIOZ347etSnW61gnUIaBM64Cedw0cl5jNO3eKEASaI=;
 b=j9E/umAaK5zpwsMkuEP3mmpuFchQyURGEg+ZP/bwtNgp2T/czQZ5PqFMQS7zNxMPTh
 Di6zSvvxGBmE00yBTNj4DlFkBLixMhA69iHeLDGOmk2eQRB/LArD48vH1o6hWKKowIXc
 E+zRq0iTH3yLgF4JH0z4I7/HJSV6/e8f4/z8wePZes73v8iVTDqL+SSz6aZ8H+lkorYm
 C+Rz29m36kjL+IQ+OrscSvvpggLZu5snHC0xCHSL4gJhyF3kt1YmdX++ni+HTtbc1tTf
 f4W4tLI3gSI+BvaFm9XRGdQHctEZVV9gmYpQDIo0qEGJMj5SCoK4cMoTnGJSXKg9/hDr
 mckQ==
X-Gm-Message-State: APjAAAUVHxR0tWSC6hKL/2q25KzhWhQ77GlbrOOHIC7XckF0mn3q1Qf5
 8HKWVYFrBqupHPi3jReq6yU=
X-Google-Smtp-Source: APXvYqzn2w6E+vLemwZDNa1gBjr8f2SWkG2H6wnWdo2EcpqrquGJr5ycgzX0pUhtms7s/GZ6Vx7wGg==
X-Received: by 2002:a5d:55c5:: with SMTP id i5mr29179656wrw.385.1574616607934; 
 Sun, 24 Nov 2019 09:30:07 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id n13sm5537275wmi.25.2019.11.24.09.30.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Nov 2019 09:30:07 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v9 4/6] pwm: sun4i: Always calculate params when applying new
 parameters
Date: Sun, 24 Nov 2019 18:29:06 +0100
Message-Id: <20191124172908.10804-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191124172908.10804-1-peron.clem@gmail.com>
References: <20191124172908.10804-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_093010_176135_02AF70FA 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QnlwYXNzIG1vZGUgd2lsbCByZXF1aXJlIHRvIGJlIHJlLWNhbGN1bGF0ZWQgd2hlbiB0aGUgcHdt
IHN0YXRlCmlzIGNoYW5nZWQuCgpSZW1vdmUgdGhlIGNvbmRpdGlvbiBzbyBwd21fc3VuNGlfY2Fs
Y3VsYXRlIGlzIGFsd2F5cyBjYWxsZWQuCgpSZXZpZXdlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcg
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQg
UMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3B3bS9wd20tc3VuNGku
YyB8IDUyICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwppbmRleCBh
NjcyN2RkODllMjguLmUzNjliNWEzOThmNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1
bjRpLmMKKysrIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKQEAgLTIwMiw5ICsyMDIsOSBAQCBz
dGF0aWMgaW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBw
d21fZGV2aWNlICpwd20sCiB7CiAJc3RydWN0IHN1bjRpX3B3bV9jaGlwICpzdW40aV9wd20gPSB0
b19zdW40aV9wd21fY2hpcChjaGlwKTsKIAlzdHJ1Y3QgcHdtX3N0YXRlIGNzdGF0ZTsKLQl1MzIg
Y3RybDsKKwl1MzIgY3RybCwgZHV0eSwgcGVyaW9kLCB2YWw7CiAJaW50IHJldDsKLQl1bnNpZ25l
ZCBpbnQgZGVsYXlfdXM7CisJdW5zaWduZWQgaW50IGRlbGF5X3VzLCBwcmVzY2FsZXI7CiAJdW5z
aWduZWQgbG9uZyBub3c7CiAKIAlwd21fZ2V0X3N0YXRlKHB3bSwgJmNzdGF0ZSk7CkBAIC0yMjAs
NDMgKzIyMCwzNyBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAg
KmNoaXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20sCiAJc3Bpbl9sb2NrKCZzdW40aV9wd20tPmN0
cmxfbG9jayk7CiAJY3RybCA9IHN1bjRpX3B3bV9yZWFkbChzdW40aV9wd20sIFBXTV9DVFJMX1JF
Ryk7CiAKLQlpZiAoKGNzdGF0ZS5wZXJpb2QgIT0gc3RhdGUtPnBlcmlvZCkgfHwKLQkgICAgKGNz
dGF0ZS5kdXR5X2N5Y2xlICE9IHN0YXRlLT5kdXR5X2N5Y2xlKSkgewotCQl1MzIgcGVyaW9kLCBk
dXR5LCB2YWw7Ci0JCXVuc2lnbmVkIGludCBwcmVzY2FsZXI7Ci0KLQkJcmV0ID0gc3VuNGlfcHdt
X2NhbGN1bGF0ZShzdW40aV9wd20sIHN0YXRlLAotCQkJCQkgICZkdXR5LCAmcGVyaW9kLCAmcHJl
c2NhbGVyKTsKLQkJaWYgKHJldCkgewotCQkJZGV2X2VycihjaGlwLT5kZXYsICJwZXJpb2QgZXhj
ZWVkcyB0aGUgbWF4aW11bSB2YWx1ZVxuIik7Ci0JCQlzcGluX3VubG9jaygmc3VuNGlfcHdtLT5j
dHJsX2xvY2spOwotCQkJaWYgKCFjc3RhdGUuZW5hYmxlZCkKLQkJCQljbGtfZGlzYWJsZV91bnBy
ZXBhcmUoc3VuNGlfcHdtLT5jbGspOwotCQkJcmV0dXJuIHJldDsKLQkJfQotCi0JCWlmIChQV01f
UkVHX1BSRVNDQUwoY3RybCwgcHdtLT5od3B3bSkgIT0gcHJlc2NhbGVyKSB7Ci0JCQkvKiBQcmVz
Y2FsZXIgY2hhbmdlZCwgdGhlIGNsb2NrIGhhcyB0byBiZSBnYXRlZCAqLwotCQkJY3RybCAmPSB+
QklUX0NIKFBXTV9DTEtfR0FUSU5HLCBwd20tPmh3cHdtKTsKLQkJCXN1bjRpX3B3bV93cml0ZWwo
c3VuNGlfcHdtLCBjdHJsLCBQV01fQ1RSTF9SRUcpOworCXJldCA9IHN1bjRpX3B3bV9jYWxjdWxh
dGUoc3VuNGlfcHdtLCBzdGF0ZSwgJmR1dHksICZwZXJpb2QsICZwcmVzY2FsZXIpOworCWlmIChy
ZXQpIHsKKwkJZGV2X2VycihjaGlwLT5kZXYsICJwZXJpb2QgZXhjZWVkcyB0aGUgbWF4aW11bSB2
YWx1ZVxuIik7CisJCXNwaW5fdW5sb2NrKCZzdW40aV9wd20tPmN0cmxfbG9jayk7CisJCWlmICgh
Y3N0YXRlLmVuYWJsZWQpCisJCQljbGtfZGlzYWJsZV91bnByZXBhcmUoc3VuNGlfcHdtLT5jbGsp
OworCQlyZXR1cm4gcmV0OworCX0KIAotCQkJY3RybCAmPSB+QklUX0NIKFBXTV9QUkVTQ0FMX01B
U0ssIHB3bS0+aHdwd20pOwotCQkJY3RybCB8PSBCSVRfQ0gocHJlc2NhbGVyLCBwd20tPmh3cHdt
KTsKLQkJfQorCWlmIChQV01fUkVHX1BSRVNDQUwoY3RybCwgcHdtLT5od3B3bSkgIT0gcHJlc2Nh
bGVyKSB7CisJCS8qIFByZXNjYWxlciBjaGFuZ2VkLCB0aGUgY2xvY2sgaGFzIHRvIGJlIGdhdGVk
ICovCisJCWN0cmwgJj0gfkJJVF9DSChQV01fQ0xLX0dBVElORywgcHdtLT5od3B3bSk7CisJCXN1
bjRpX3B3bV93cml0ZWwoc3VuNGlfcHdtLCBjdHJsLCBQV01fQ1RSTF9SRUcpOwogCi0JCXZhbCA9
IChkdXR5ICYgUFdNX0RUWV9NQVNLKSB8IFBXTV9QUkQocGVyaW9kKTsKLQkJc3VuNGlfcHdtX3dy
aXRlbChzdW40aV9wd20sIHZhbCwgUFdNX0NIX1BSRChwd20tPmh3cHdtKSk7Ci0JCXN1bjRpX3B3
bS0+bmV4dF9wZXJpb2RbcHdtLT5od3B3bV0gPSBqaWZmaWVzICsKLQkJCXVzZWNzX3RvX2ppZmZp
ZXMoY3N0YXRlLnBlcmlvZCAvIDEwMDAgKyAxKTsKLQkJc3VuNGlfcHdtLT5uZWVkc19kZWxheVtw
d20tPmh3cHdtXSA9IHRydWU7CisJCWN0cmwgJj0gfkJJVF9DSChQV01fUFJFU0NBTF9NQVNLLCBw
d20tPmh3cHdtKTsKKwkJY3RybCB8PSBCSVRfQ0gocHJlc2NhbGVyLCBwd20tPmh3cHdtKTsKIAl9
CiAKKwl2YWwgPSAoZHV0eSAmIFBXTV9EVFlfTUFTSykgfCBQV01fUFJEKHBlcmlvZCk7CisJc3Vu
NGlfcHdtX3dyaXRlbChzdW40aV9wd20sIHZhbCwgUFdNX0NIX1BSRChwd20tPmh3cHdtKSk7CisJ
c3VuNGlfcHdtLT5uZXh0X3BlcmlvZFtwd20tPmh3cHdtXSA9IGppZmZpZXMgKworCQl1c2Vjc190
b19qaWZmaWVzKGNzdGF0ZS5wZXJpb2QgLyAxMDAwICsgMSk7CisJc3VuNGlfcHdtLT5uZWVkc19k
ZWxheVtwd20tPmh3cHdtXSA9IHRydWU7CisKIAlpZiAoc3RhdGUtPnBvbGFyaXR5ICE9IFBXTV9Q
T0xBUklUWV9OT1JNQUwpCiAJCWN0cmwgJj0gfkJJVF9DSChQV01fQUNUX1NUQVRFLCBwd20tPmh3
cHdtKTsKIAllbHNlCiAJCWN0cmwgfD0gQklUX0NIKFBXTV9BQ1RfU1RBVEUsIHB3bS0+aHdwd20p
OwogCiAJY3RybCB8PSBCSVRfQ0goUFdNX0NMS19HQVRJTkcsIHB3bS0+aHdwd20pOworCiAJaWYg
KHN0YXRlLT5lbmFibGVkKSB7CiAJCWN0cmwgfD0gQklUX0NIKFBXTV9FTiwgcHdtLT5od3B3bSk7
CiAJfSBlbHNlIGlmICghc3VuNGlfcHdtLT5uZWVkc19kZWxheVtwd20tPmh3cHdtXSkgewotLSAK
Mi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
