Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290CC3999B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itYaJb5WfbN8H2QP5ETE9+qCnL6xqP/kChX+1XHvdLA=; b=VMk2GOPgoDugpA
	nSeea7+rsnw7zaShZ5tA4wAp7qk/gmUaz1b+lf/UY3kti1PAlzeZ8so3GpHSWiR74WV+SEubiiUb2
	k5Z5mOtgEMDOhe1oFYG+ENsLYeHDX9ov2VBsZ79PDXI/s6TH+mgWx+eyewzjFStu7Zq6ZegMsP2wP
	OLNrVrqgWwUuMT9mlpJRlGWg0li00Wf4d4Striyh0KIHIvlfK51y6ll7qXVLFjlP+q+/mZR1Rv9My
	pe9G1NFVYjZxOJEGNZ+5tqzVsJxbC7ict6LpDmNGEV+qLxqDS0Jh611gWY1FgFOTHFDRt7klKKayS
	jqENsHhiKBXdBhBbGGQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO2M-00026v-9J; Fri, 07 Jun 2019 23:12:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO0x-0000wr-9A
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:16 +0000
Received: by mail-wm1-x341.google.com with SMTP id u8so3304270wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7GEHwh/r4T7qgHwLm9BpliTLYMp1uwbqc4fRyWp+9LU=;
 b=L+DoBBYW26kUIiCrZIML4fSKfVB4+Han2fYg+Y+AEfOvdl6df+liQaUdhkPwlO/6Sf
 pRl9IKkOjj7XH+t7RhROSpgvi7iJ/cGIrO5K8x2XUaeBtCIlCN69lBw3xJGH0SCWdiTX
 3/Drvnay9CxdWDckD/1+NYBBoK0hkiW9wwCfEan0KIFCVtSgVGWhkkYuA4IVk6aO7/uw
 MSTuWMTP/BV2TLHL92zr7hK0rMHELO7ZjE35vSj9ASO3Xvkj8gj0+fCDol/d4lKNp26J
 bWllR9eNc40qX/5xhp9XWmMYN6Pr/pCpzLnzIQFczG2w2E7FfYajR75sYXUxGsMbJfni
 uECg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7GEHwh/r4T7qgHwLm9BpliTLYMp1uwbqc4fRyWp+9LU=;
 b=ky4ex4kmYgOsstpuUPHlXPYqCnHUMFFfuvTJis8cIvvWDFQH0+Y1qavgAGJKGKfGCV
 DIJDnG8ifAoKlqqZITCiRwYjrbQ/i5Gd6egW/u9xxc3NiCEjOVMzPF+U2N6z646Wv5nL
 QWORo+IdUqgVOWTx7+UtkMfd0RDY8oBd33CcuDKfJzU8Aop+I0c+ZLuyOi3veNP9dPgs
 +ScjqF4xdAuXo/Oqz5TxDHriFWZnCHIIJ3mCPyR5hcDy32Fi6gz9VNjlRE4iK+48kXqM
 r7yxR4F8E5mdjxtVhnk8Woj7HlOe1VpPbExWQcMiAwchNLOPEkRzf/a5pGxYX+IwwJrD
 bw8Q==
X-Gm-Message-State: APjAAAWrV9d8p4VX1kPn6ovUMx/Q7ZCj2RAQNh6LYjxF9mb1Vr8RNinW
 vgNUqopcjJq1yp5R78Mpcug=
X-Google-Smtp-Source: APXvYqwUfHoRNiyI8qxZ99qGY5vY4n9q91qmbDFEOvJJaMrhrSb6D3nxxuEgESrd+BAF3/p7lUwjyQ==
X-Received: by 2002:a1c:1d83:: with SMTP id d125mr5140296wmd.63.1559949073446; 
 Fri, 07 Jun 2019 16:11:13 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:12 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 04/13] media: rc: sunxi: Add RXSTA bits definition
Date: Sat,  8 Jun 2019 01:10:51 +0200
Message-Id: <20190607231100.5894-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
References: <20190607231100.5894-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161115_365744_EC5E347C 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2UgYXJlIHVzaW5nIFJYSU5UIGJpdHMgZGVmaW5pdGlvbiB3aGVuIGxvb2tpbmcgYXQgUlhTVEEg
cmVnaXN0ZXIuCgpUaGVzZSBiaXRzIGFyZSBlcXVhbCBidXQgaXQncyBub3QgcmVhbGx5IHByb3Bl
ci4KCkludHJvZHVjZSB0aGUgUlhTVEEgYml0cyBhbmQgdXNlIHRoZW0gdG8gaGF2ZSBjb2hlcmVu
Y3kuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29t
PgotLS0KIGRyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMgfCAxOCArKysrKysrKysrKystLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMgYi9kcml2ZXJzL21lZGlhL3Jj
L3N1bnhpLWNpci5jCmluZGV4IDA1MDRlYmZjODMxZi4uNTY5MGQwYmQ1MWJjIDEwMDY0NAotLS0g
YS9kcml2ZXJzL21lZGlhL3JjL3N1bnhpLWNpci5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcmMvc3Vu
eGktY2lyLmMKQEAgLTQ4LDExICs0OCwxMSBAQAogCiAvKiBSeCBJbnRlcnJ1cHQgRW5hYmxlICov
CiAjZGVmaW5lIFNVTlhJX0lSX1JYSU5UX1JFRyAgICAweDJDCi0vKiBSeCBGSUZPIE92ZXJmbG93
ICovCisvKiBSeCBGSUZPIE92ZXJmbG93IEludGVycnVwdCBFbmFibGUgKi8KICNkZWZpbmUgUkVH
X1JYSU5UX1JPSV9FTgkJQklUKDApCi0vKiBSeCBQYWNrZXQgRW5kICovCisvKiBSeCBQYWNrZXQg
RW5kIEludGVycnVwdCBFbmFibGUgKi8KICNkZWZpbmUgUkVHX1JYSU5UX1JQRUlfRU4JCUJJVCgx
KQotLyogUnggRklGTyBEYXRhIEF2YWlsYWJsZSAqLworLyogUnggRklGTyBEYXRhIEF2YWlsYWJs
ZSBJbnRlcnJ1cHQgRW5hYmxlICovCiAjZGVmaW5lIFJFR19SWElOVF9SQUlfRU4JCUJJVCg0KQog
CiAvKiBSeCBGSUZPIGF2YWlsYWJsZSBieXRlIGxldmVsICovCkBAIC02MCw2ICs2MCwxMiBAQAog
CiAvKiBSeCBJbnRlcnJ1cHQgU3RhdHVzICovCiAjZGVmaW5lIFNVTlhJX0lSX1JYU1RBX1JFRyAg
ICAweDMwCisvKiBSeCBGSUZPIE92ZXJmbG93ICovCisjZGVmaW5lIFJFR19SWFNUQV9ST0kJCQlS
RUdfUlhJTlRfUk9JX0VOCisvKiBSeCBQYWNrZXQgRW5kICovCisjZGVmaW5lIFJFR19SWFNUQV9S
UEUJCQlSRUdfUlhJTlRfUlBFSV9FTgorLyogUnggRklGTyBEYXRhIEF2YWlsYWJsZSAqLworI2Rl
ZmluZSBSRUdfUlhTVEFfUkEJCQlSRUdfUlhJTlRfUkFJX0VOCiAvKiBSWCBGSUZPIEdldCBBdmFp
bGFibGUgQ291bnRlciAqLwogI2RlZmluZSBSRUdfUlhTVEFfR0VUX0FDKHZhbCkgKCgodmFsKSA+
PiA4KSAmIChpci0+Zmlmb19zaXplICogMiAtIDEpKQogLyogQ2xlYXIgYWxsIGludGVycnVwdCBz
dGF0dXMgdmFsdWUgKi8KQEAgLTExOSw3ICsxMjUsNyBAQCBzdGF0aWMgaXJxcmV0dXJuX3Qgc3Vu
eGlfaXJfaXJxKGludCBpcnFubywgdm9pZCAqZGV2X2lkKQogCS8qIGNsZWFuIGFsbCBwZW5kaW5n
IHN0YXR1c2VzICovCiAJd3JpdGVsKHN0YXR1cyB8IFJFR19SWFNUQV9DTEVBUkFMTCwgaXItPmJh
c2UgKyBTVU5YSV9JUl9SWFNUQV9SRUcpOwogCi0JaWYgKHN0YXR1cyAmIChSRUdfUlhJTlRfUkFJ
X0VOIHwgUkVHX1JYSU5UX1JQRUlfRU4pKSB7CisJaWYgKHN0YXR1cyAmIChSRUdfUlhTVEFfUkEg
fCBSRUdfUlhTVEFfUlBFKSkgewogCQkvKiBIb3cgbWFueSBtZXNzYWdlcyBpbiBmaWZvICovCiAJ
CXJjICA9IFJFR19SWFNUQV9HRVRfQUMoc3RhdHVzKTsKIAkJLyogU2FuaXR5IGNoZWNrICovCkBA
IC0xMzUsOSArMTQxLDkgQEAgc3RhdGljIGlycXJldHVybl90IHN1bnhpX2lyX2lycShpbnQgaXJx
bm8sIHZvaWQgKmRldl9pZCkKIAkJfQogCX0KIAotCWlmIChzdGF0dXMgJiBSRUdfUlhJTlRfUk9J
X0VOKSB7CisJaWYgKHN0YXR1cyAmIFJFR19SWFNUQV9ST0kpIHsKIAkJaXJfcmF3X2V2ZW50X3Jl
c2V0KGlyLT5yYyk7Ci0JfSBlbHNlIGlmIChzdGF0dXMgJiBSRUdfUlhJTlRfUlBFSV9FTikgewor
CX0gZWxzZSBpZiAoc3RhdHVzICYgUkVHX1JYU1RBX1JQRSkgewogCQlpcl9yYXdfZXZlbnRfc2V0
X2lkbGUoaXItPnJjLCB0cnVlKTsKIAkJaXJfcmF3X2V2ZW50X2hhbmRsZShpci0+cmMpOwogCX0K
LS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
