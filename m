Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B79F76492
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=08XbaiDRuswQWfgIheqa7vleRyNbmokHZO1d8EPDKuU=; b=Z2R1UemjclGtgI
	0EJRew2bF6nefpKahCGVjCNlUYnuOs2fwVhaYS2TTQC6PxjBReJQoS5RlqJoxzOoxXtQ9lcCUVELV
	WzxgaH6Qmi9SAUFeAwrtIVjxZ4IjyVG5OrcjvJT3P6PM4/fcSIBufNuvmusGEYPHbYp2h2ts22Jes
	t1sY+dmgvAHsrZ2p1a2qgaMkYgOTAx7JshAyGtjWDJa0mNGrwtWrzqP8bo7Eeo0Lg28cl/Ffsj3Ww
	A6uRbVudA7ftKuh9t7MjTs/4UuE0njmdKsUtY4MjPHDPBXnDWDSVcCeNC7PiXnwiXnwQD22DBoM66
	Z8Ecfhsaw3Cjz1c0etrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyRl-0005pM-6S; Fri, 26 Jul 2019 11:31:37 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyOr-0002aw-B7
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:28:39 +0000
Received: by mail-lj1-x242.google.com with SMTP id k18so51128306ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9u9CYuUvpswbH949bqEBTSxc6yUDGnUSUcquJxjAfws=;
 b=Qs5hDsYNRU3XsuhsUT5LoYh9H2yYIMx8duYxg6mWxxWMAUMbImQG+9HQrXaPkuZOWU
 NQ3JDWVRtBVse7vWN0EQedlArPeIP+VdKG/kcW22GMeAK0D8Rvz8puGSqcrmRNxxl1BF
 fZbTCesF+1uP4QoRJYi9h+LByxF/lRIdJoEJKRyKCMGiVK4AWoUclwfptVFmgD7O1xLm
 /WUXnq2XphbPUvCXVip34slPxmd0gU/1DukG9h40JCr+RigFMot1JveTXCyQQhRWmAo1
 3tvAZ1TaMuU8J/twMpxD+F9W9uzynrED2rNHzMAozJZR9YKUn7YY+6p4uTXvYdh5DKkB
 CGfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9u9CYuUvpswbH949bqEBTSxc6yUDGnUSUcquJxjAfws=;
 b=gNerWkqyNN/qEmgeD+DN1SQCdr6B2nIbVcMvgaumwmcc8GsSZPlWafuOI7W//zs6Em
 kdpVx4vTEHR5MTeFN8WsmboWRF2d4gkI5ikZAW2Tktgjw1JUxDAReVMeHS48JimRLsYs
 hHi4e0t2sKkW2vm5hNn5cDv15fsPuOdgbz5V8VavvZa+nWj/CQjDyBfTBP0hf5cJZrxN
 PwlOg/vJXnS+c79kUjDGbDMooTjkHhBUv/WuVgMcsNoxjeNTmdMYu7kfiQF5Sjp0iV7R
 ZOlHF0wXNSzXNitdf8wUUTK5ORqoAoWkkO/Z7P5CyFRR5HwulWExobvEJavT76rfq7Qn
 zFWQ==
X-Gm-Message-State: APjAAAUfS2fjYWOpd62eyfQtOEFUtAP0lXH4GKB+FqLhxbMqieGqocOW
 32OJPdAZ06Pc8X8yUvAqShibBQ==
X-Google-Smtp-Source: APXvYqwQdkpGbyaQOc5x7/xdgJkd0OQT2+j10xmlo8V5RVnCSXizO9kaU/pk141EQCFbvi0220t1Kw==
X-Received: by 2002:a2e:9685:: with SMTP id q5mr34535218lji.227.1564140515726; 
 Fri, 26 Jul 2019 04:28:35 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id k23sm5390909ljg.90.2019.07.26.04.28.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:28:35 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: maz@kernel.org
Subject: [PATCH] KVM: arm: vgic-v3: Mark expected switch fall-through
Date: Fri, 26 Jul 2019 13:28:31 +0200
Message-Id: <20190726112831.19878-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042837_432249_F600C6D7 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anders Roxell <anders.roxell@linaro.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCB0aGUgZm9s
bG93aW5nIHdhcm5pbmdzCndhcyBzdGFydGluZyB0byBzaG93IHVwOgoKLi4vdmlydC9rdm0vYXJt
L2h5cC92Z2ljLXYzLXNyLmM6IEluIGZ1bmN0aW9uIOKAmF9fdmdpY192M19zYXZlX2FwcnPigJk6
Ci4uL3ZpcnQva3ZtL2FybS9oeXAvdmdpYy12My1zci5jOjM1MToyNDogd2FybmluZzogdGhpcyBz
dGF0ZW1lbnQgbWF5IGZhbGwKIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogICBj
cHVfaWYtPnZnaWNfYXAwclsyXSA9IF9fdmdpY192M19yZWFkX2FwMHJuKDIpOwogICB+fn5+fn5+
fn5+fn5+fn5+fn5+fn5efn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Ci4uL3ZpcnQva3ZtL2FybS9o
eXAvdmdpYy12My1zci5jOjM1MjoyOiBub3RlOiBoZXJlCiAgY2FzZSA2OgogIF5+fn4KLi4vdmly
dC9rdm0vYXJtL2h5cC92Z2ljLXYzLXNyLmM6MzUzOjI0OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVu
dCBtYXkgZmFsbAogdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgIGNwdV9pZi0+
dmdpY19hcDByWzFdID0gX192Z2ljX3YzX3JlYWRfYXAwcm4oMSk7CiAgIH5+fn5+fn5+fn5+fn5+
fn5+fn5+fl5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KLi4vdmlydC9rdm0vYXJtL2h5cC92Z2lj
LXYzLXNyLmM6MzU0OjI6IG5vdGU6IGhlcmUKICBkZWZhdWx0OgogIF5+fn5+fn4KClJld29yayBz
byB0aGF0IHRoZSBjb21waWxlciBkb2Vzbid0IHdhcm4gYWJvdXQgZmFsbC10aHJvdWdoLgoKRml4
ZXM6IGQ5MzUxMmVmMGYwZSAoIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUgZmFsbC10aHJvdWdo
IHdhcm5pbmciKQpTaWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94ZWxsQGxp
bmFyby5vcmc+Ci0tLQogdmlydC9rdm0vYXJtL2h5cC92Z2ljLXYzLXNyLmMgfCA4ICsrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdmlydC9rdm0v
YXJtL2h5cC92Z2ljLXYzLXNyLmMgYi92aXJ0L2t2bS9hcm0vaHlwL3ZnaWMtdjMtc3IuYwppbmRl
eCAyNTRjNWYxOTBhM2QuLmNjZjFmZGU5ODM2YyAxMDA2NDQKLS0tIGEvdmlydC9rdm0vYXJtL2h5
cC92Z2ljLXYzLXNyLmMKKysrIGIvdmlydC9rdm0vYXJtL2h5cC92Z2ljLXYzLXNyLmMKQEAgLTM0
OSw4ICszNDksMTAgQEAgdm9pZCBfX2h5cF90ZXh0IF9fdmdpY192M19zYXZlX2FwcnMoc3RydWN0
IGt2bV92Y3B1ICp2Y3B1KQogCWNhc2UgNzoKIAkJY3B1X2lmLT52Z2ljX2FwMHJbM10gPSBfX3Zn
aWNfdjNfcmVhZF9hcDBybigzKTsKIAkJY3B1X2lmLT52Z2ljX2FwMHJbMl0gPSBfX3ZnaWNfdjNf
cmVhZF9hcDBybigyKTsKKwkJLyogRmFsbCB0aHJvdWdoICovCiAJY2FzZSA2OgogCQljcHVfaWYt
PnZnaWNfYXAwclsxXSA9IF9fdmdpY192M19yZWFkX2FwMHJuKDEpOworCQkvKiBGYWxsIHRocm91
Z2ggKi8KIAlkZWZhdWx0OgogCQljcHVfaWYtPnZnaWNfYXAwclswXSA9IF9fdmdpY192M19yZWFk
X2FwMHJuKDApOwogCX0KQEAgLTM1OSw4ICszNjEsMTAgQEAgdm9pZCBfX2h5cF90ZXh0IF9fdmdp
Y192M19zYXZlX2FwcnMoc3RydWN0IGt2bV92Y3B1ICp2Y3B1KQogCWNhc2UgNzoKIAkJY3B1X2lm
LT52Z2ljX2FwMXJbM10gPSBfX3ZnaWNfdjNfcmVhZF9hcDFybigzKTsKIAkJY3B1X2lmLT52Z2lj
X2FwMXJbMl0gPSBfX3ZnaWNfdjNfcmVhZF9hcDFybigyKTsKKwkJLyogRmFsbCB0aHJvdWdoICov
CiAJY2FzZSA2OgogCQljcHVfaWYtPnZnaWNfYXAxclsxXSA9IF9fdmdpY192M19yZWFkX2FwMXJu
KDEpOworCQkvKiBGYWxsIHRocm91Z2ggKi8KIAlkZWZhdWx0OgogCQljcHVfaWYtPnZnaWNfYXAx
clswXSA9IF9fdmdpY192M19yZWFkX2FwMXJuKDApOwogCX0KQEAgLTM4Miw4ICszODYsMTAgQEAg
dm9pZCBfX2h5cF90ZXh0IF9fdmdpY192M19yZXN0b3JlX2FwcnMoc3RydWN0IGt2bV92Y3B1ICp2
Y3B1KQogCWNhc2UgNzoKIAkJX192Z2ljX3YzX3dyaXRlX2FwMHJuKGNwdV9pZi0+dmdpY19hcDBy
WzNdLCAzKTsKIAkJX192Z2ljX3YzX3dyaXRlX2FwMHJuKGNwdV9pZi0+dmdpY19hcDByWzJdLCAy
KTsKKwkJLyogRmFsbCB0aHJvdWdoICovCiAJY2FzZSA2OgogCQlfX3ZnaWNfdjNfd3JpdGVfYXAw
cm4oY3B1X2lmLT52Z2ljX2FwMHJbMV0sIDEpOworCQkvKiBGYWxsIHRocm91Z2ggKi8KIAlkZWZh
dWx0OgogCQlfX3ZnaWNfdjNfd3JpdGVfYXAwcm4oY3B1X2lmLT52Z2ljX2FwMHJbMF0sIDApOwog
CX0KQEAgLTM5Miw4ICszOTgsMTAgQEAgdm9pZCBfX2h5cF90ZXh0IF9fdmdpY192M19yZXN0b3Jl
X2FwcnMoc3RydWN0IGt2bV92Y3B1ICp2Y3B1KQogCWNhc2UgNzoKIAkJX192Z2ljX3YzX3dyaXRl
X2FwMXJuKGNwdV9pZi0+dmdpY19hcDFyWzNdLCAzKTsKIAkJX192Z2ljX3YzX3dyaXRlX2FwMXJu
KGNwdV9pZi0+dmdpY19hcDFyWzJdLCAyKTsKKwkJLyogRmFsbCB0aHJvdWdoICovCiAJY2FzZSA2
OgogCQlfX3ZnaWNfdjNfd3JpdGVfYXAxcm4oY3B1X2lmLT52Z2ljX2FwMXJbMV0sIDEpOworCQkv
KiBGYWxsIHRocm91Z2ggKi8KIAlkZWZhdWx0OgogCQlfX3ZnaWNfdjNfd3JpdGVfYXAxcm4oY3B1
X2lmLT52Z2ljX2FwMXJbMF0sIDApOwogCX0KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
