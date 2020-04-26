Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAE11B8EF9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 12:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjWimN6umPgfd7KKZ8ObPnmzl0964SoTeQV8P1H175s=; b=PhjfeoPtc/9/eH
	RMT/4oaXvQuNKxMdDnJ99lMPR5uL/HvHeBOTGx6Nafu4+uF8OATgz5kizecTRNzXa/InAxVAL4HH6
	SxLEY2UXq7ojJ6Q854mdck8zeleYwksjn6mVZGv3UT75qscBAJnML40gqFzk82zOsPe2w0Yg1Q5hl
	1usIwOK4PE6xVUpE331LfkZxvfLzS+N0YxFiqDgU62I5hqsLIWdErnkjqpy0tmPeWG4zhkMrdYSt+
	6HSouBbi/nR04jt9GkwG+xM7PyMj856ooY26JH0B+K/L/XHNskQDDG4kVVM33b0KqkQqvaYD7moJN
	KWUzHJcaWVxX61pdqIrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSekC-0003kD-Jn; Sun, 26 Apr 2020 10:42:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSeiy-0002xF-LF
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 10:41:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id v8so13607341wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 03:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UAlZaoiz7z+tk4BIsyEyQrq2oirv6iyn95ommhRUilY=;
 b=XxOaNN/oo6lGOklyj3NhlxlRBrpy6ioLx03ck5H7GDVdAatidgptZbQhVYKoFQUDi3
 FCUzUHP79DXtjqILxaIJW+6CJCmkVduNIuax/2ZpwbQUuCmcw+p5icAV0ZGwUO6V/T4O
 +x73v9seqJyyynz+dOZay78b9PduueemgmNl02zL101gmzIbNvb/aSrXrEPa0japWipe
 RRGcK2ho9iZUXeFMfjE9h1IR7E755by6WlnJbgQBuYgLD3UOgGI77PLGD790nG3Iy71n
 mNtp8zfsula8jRMmEdavc4P4/FXRwcrrDDpgsxD+pDzNNHwN3NVacC+d9dn9ieH0Deub
 7cJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UAlZaoiz7z+tk4BIsyEyQrq2oirv6iyn95ommhRUilY=;
 b=WrgI5TPxVdcw6qCblL0nWIxp3+IFNKbK5EgBHMdqRBcWigL7yuKJmNc9RefUhrazIz
 mYppbZrjN7lpQqm+XJg9olhdnLKPgpkX9RVDmWnETs6+8u4cZXJGc8gq2TdG1H97kCZq
 Mo/FPZ9v2MtqQQ1zFpqz9HB86b5mjqy8ICGTB36JHPHIKsWyXojLgYGAM7oULyg3W/eb
 HfXNIFMSyF+SmUlzKq0rIDoHEemPaqwwmCnlgjEfae/lBDHuZqqEUlxTUOFlNtMWVjMf
 eW8gXwjFcSuGjKVr4+bdrR+/RtUvLujsSAeFXSKyxJzytTwsTNzScYgHAnCPU+3lSuJi
 1Qow==
X-Gm-Message-State: AGi0PuZY9kt6jAlpoIp2oEbYQGzvgeiRsPoWqT4lIqA9p1+ZTz9a3xn5
 oSBxWEuIocAY44dMLhAsWUk=
X-Google-Smtp-Source: APiQypJR0tbWFtI/ZGUUxkQxM0jdyUfgqcf8Wm4A/N0MbV5/pxHiPiYcFnu42+NFJFOkHcIIx5G7kw==
X-Received: by 2002:a1c:1fcf:: with SMTP id f198mr20798240wmf.16.1587897683345; 
 Sun, 26 Apr 2020 03:41:23 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 y10sm10491793wma.5.2020.04.26.03.41.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 03:41:22 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v3 4/7] ASoC: sun4i-i2s: Set sign extend sample
Date: Sun, 26 Apr 2020 12:41:12 +0200
Message-Id: <20200426104115.22630-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426104115.22630-1-peron.clem@gmail.com>
References: <20200426104115.22630-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_034124_704191_B531CC5A 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Marcus Cooper <codekipper@gmail.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpPbiB0aGUgbmV3ZXIg
U29DcyBzdWNoIGFzIHRoZSBIMyBhbmQgQTY0IHRoaXMgaXMgc2V0IGJ5IGRlZmF1bHQKdG8gdHJh
bnNmZXIgYSAwIGFmdGVyIGVhY2ggc2FtcGxlIGluIGVhY2ggc2xvdC4gSG93ZXZlciB0aGUgQTEw
CmFuZCBBMjAgU29DcyB0aGF0IHRoaXMgZHJpdmVyIHdhcyBkZXZlbG9wZWQgb24gaGFkIGEgZGVm
YXVsdApzZXR0aW5nIHdoZXJlIGl0IHBhZGRlZCB0aGUgYXVkaW8gZ2FpbiB3aXRoIHplcm9zLgoK
VGhpcyBpc24ndCBhIHByb2JsZW0gd2hpbGUgd2UgaGF2ZSBvbmx5IHN1cHBvcnQgZm9yIDE2Yml0
IGF1ZGlvCmJ1dCB3aXRoIGxhcmdlciBzYW1wbGUgcmVzb2x1dGlvbiByYXRlcyBpbiB0aGUgcGlw
ZWxpbmUgdGhlbiBTRVhUCmJpdHMgc2hvdWxkIGJlIGNsZWFyZWQgc28gdGhhdCB0aGV5IGFsc28g
cGFkIGF0IHRoZSBMU0IuIFdpdGhvdXQKdGhpcyB0aGUgYXVkaW8gZ2V0cyBkaXN0b3J0ZWQuCgpT
ZXQgc2lnbiBleHRlbmQgc2FtcGxlIGZvciBhbGwgdGhlIHN1bnhpIGdlbmVyYXRpb25zIGV2ZW4g
aWYgdGhleQphcmUgbm90IGFmZmVjdGVkLiBUaGlzIHdpbGwga2VlcCBjb2hlcmVuY3kgYW5kIGF2
b2lkIHJlbHlpbmcgb24KZGVmYXVsdC4KClNpZ25lZC1vZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNv
ZGVraXBwZXJAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9u
LmNsZW1AZ21haWwuY29tPgotLS0KIHNvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYyB8IDIyICsr
KysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvc291bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jIGIvc291bmQvc29jL3N1bnhp
L3N1bjRpLWkycy5jCmluZGV4IGEyM2M5ZjJhM2Y4Yy4uOGVhMDhiNDllN2ZlIDEwMDY0NAotLS0g
YS9zb3VuZC9zb2Mvc3VueGkvc3VuNGktaTJzLmMKKysrIGIvc291bmQvc29jL3N1bnhpL3N1bjRp
LWkycy5jCkBAIC00OCw2ICs0OCw5IEBACiAjZGVmaW5lIFNVTjRJX0kyU19GTVQwX0ZNVF9JMlMJ
CQkJKDAgPDwgMCkKIAogI2RlZmluZSBTVU40SV9JMlNfRk1UMV9SRUcJCTB4MDgKKyNkZWZpbmUg
U1VONElfSTJTX0ZNVDFfUkVHX1NFWFRfTUFTSwkJQklUKDgpCisjZGVmaW5lIFNVTjRJX0kyU19G
TVQxX1JFR19TRVhUKHNleHQpCQkJKChzZXh0KSA8PCA4KQorCiAjZGVmaW5lIFNVTjRJX0kyU19G
SUZPX1RYX1JFRwkJMHgwYwogI2RlZmluZSBTVU40SV9JMlNfRklGT19SWF9SRUcJCTB4MTAKIApA
QCAtMTA1LDYgKzEwOCw5IEBACiAjZGVmaW5lIFNVTjhJX0kyU19GTVQwX0JDTEtfUE9MQVJJVFlf
SU5WRVJURUQJCSgxIDw8IDcpCiAjZGVmaW5lIFNVTjhJX0kyU19GTVQwX0JDTEtfUE9MQVJJVFlf
Tk9STUFMCQkoMCA8PCA3KQogCisjZGVmaW5lIFNVTjhJX0kyU19GTVQxX1JFR19TRVhUX01BU0sJ
CUdFTk1BU0soNSwgNCkKKyNkZWZpbmUgU1VOOElfSTJTX0ZNVDFfUkVHX1NFWFQoc2V4dCkJCQko
KHNleHQpIDw8IDQpCisKICNkZWZpbmUgU1VOOElfSTJTX0lOVF9TVEFfUkVHCQkweDBjCiAjZGVm
aW5lIFNVTjhJX0kyU19GSUZPX1RYX1JFRwkJMHgyMAogCkBAIC02NjMsNiArNjY5LDEyIEBAIHN0
YXRpYyBpbnQgc3VuNGlfaTJzX3NldF9zb2NfZm10KGNvbnN0IHN0cnVjdCBzdW40aV9pMnMgKmky
cywKIAl9CiAJcmVnbWFwX3VwZGF0ZV9iaXRzKGkycy0+cmVnbWFwLCBTVU40SV9JMlNfQ1RSTF9S
RUcsCiAJCQkgICBTVU40SV9JMlNfQ1RSTF9NT0RFX01BU0ssIHZhbCk7CisKKwkvKiBTZXQgc2ln
biBleHRlbnNpb24gdG8gcGFkIG91dCBMU0Igd2l0aCAwICovCisJcmVnbWFwX3VwZGF0ZV9iaXRz
KGkycy0+cmVnbWFwLCBTVU40SV9JMlNfRk1UMV9SRUcsCisJCQkgICBTVU40SV9JMlNfRk1UMV9S
RUdfU0VYVF9NQVNLLAorCQkJICAgU1VONElfSTJTX0ZNVDFfUkVHX1NFWFQoMCkpOworCiAJcmV0
dXJuIDA7CiB9CiAKQEAgLTc2NSw2ICs3NzcsMTEgQEAgc3RhdGljIGludCBzdW44aV9pMnNfc2V0
X3NvY19mbXQoY29uc3Qgc3RydWN0IHN1bjRpX2kycyAqaTJzLAogCQkJICAgU1VOOElfSTJTX0NU
UkxfQkNMS19PVVQgfCBTVU44SV9JMlNfQ1RSTF9MUkNLX09VVCwKIAkJCSAgIHZhbCk7CiAKKwkv
KiBTZXQgc2lnbiBleHRlbnNpb24gdG8gcGFkIG91dCBMU0Igd2l0aCAwICovCisJcmVnbWFwX3Vw
ZGF0ZV9iaXRzKGkycy0+cmVnbWFwLCBTVU40SV9JMlNfRk1UMV9SRUcsCisJCQkgICBTVU44SV9J
MlNfRk1UMV9SRUdfU0VYVF9NQVNLLAorCQkJICAgU1VOOElfSTJTX0ZNVDFfUkVHX1NFWFQoMCkp
OworCiAJcmV0dXJuIDA7CiB9CiAKQEAgLTg2Nyw2ICs4ODQsMTEgQEAgc3RhdGljIGludCBzdW41
MGlfaTJzX3NldF9zb2NfZm10KGNvbnN0IHN0cnVjdCBzdW40aV9pMnMgKmkycywKIAkJCSAgIFNV
TjhJX0kyU19DVFJMX0JDTEtfT1VUIHwgU1VOOElfSTJTX0NUUkxfTFJDS19PVVQsCiAJCQkgICB2
YWwpOwogCisJLyogU2V0IHNpZ24gZXh0ZW5zaW9uIHRvIHBhZCBvdXQgTFNCIHdpdGggMCAqLwor
CXJlZ21hcF91cGRhdGVfYml0cyhpMnMtPnJlZ21hcCwgU1VONElfSTJTX0ZNVDFfUkVHLAorCQkJ
ICAgU1VOOElfSTJTX0ZNVDFfUkVHX1NFWFRfTUFTSywKKwkJCSAgIFNVTjhJX0kyU19GTVQxX1JF
R19TRVhUKDApKTsKKwogCXJldHVybiAwOwogfQogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
