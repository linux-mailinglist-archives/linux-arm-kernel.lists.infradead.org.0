Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B94E744F5B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 00:40:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Njfkf/63hvlI7LPLlxJ3ss4jFs/XOm4Dbb+htTvOV8=; b=s9IvkVTR7EZmgJ
	uhnoNZz5PGcTyRS5jrhdSwMCMu600CyCVX1gxUHhgPsqzIQqIscv+740geFv/H551Vi0Vi8CyZYKS
	yok8hDx3rmQ4ONa4n89E6+beGlonxJm0ueJnErCrsLPo/dMnLrBEihlArURE0+KD+LT8T804Hg8N2
	l5070Qf2ZznllkV4MPyM0GGCd1c50mgh9Me7hM8bd8OSRFlE3ldUNh3eDjt2mr8zAIAZK3sCoJMpL
	MwjDG3lzMRnkOOuMPg+sz9iMjjN/4uzJ3IV7dQZG5Kt8bJ8RIN0c/59CLSIfNEURNXipXyZIAO5+J
	XpmX6/aAa58hmjdr8XMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbYOG-0002r1-GV; Thu, 13 Jun 2019 22:40:16 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbYNQ-0002NU-Mz
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 22:39:27 +0000
Received: by mail-ed1-x543.google.com with SMTP id g13so512690edu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 15:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8su+LTkJ3gu2cKId6zqNGdio1nz4zdi4nwIHQT6LW2c=;
 b=JS+r5933+fWnWQ/iL9KFp6vvmc39vjWY4aRQgEQUu1LHWyJrIRUXht606UlZxnurzI
 KAZLXBy3sIe36V/9BqMsC+vFbmjMnVY97ZzJCtRgYx8mdzAE7wVffMFLBO6UqxUWabJz
 0Hz+OFHE49MVr7p7JzNgIvA7ge1zMROlXfBGhix+41c3+QmSSkVaLXEUSaz7w2Anb43A
 p7ZG1gGsFVDTPk6FbKEwSNEUZ12beSwqVxE0k6szS1Aw+RC1JWhFHl1yrwzCSOaWKO0U
 RhQWM8WCkxOXdm2nnnmop1AtPe0bhW1GtbPyhmT0+gh/oNrPgb0xrnAUDwg81BqDyFwo
 RLVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8su+LTkJ3gu2cKId6zqNGdio1nz4zdi4nwIHQT6LW2c=;
 b=PmiItaFtEp78BKQ4so2CwkUSG2vXjQu0TclHO+LwAQu7D4SNQ/xOHkJo9xhbJY2VMG
 UKMdOqGogWecSNCq6tdZSwK0mgHyqvecJclHzUzug593/Z2DYSysrLFy+bva7tjK1ui5
 LmdhpkMNydaRofhzShzxq3xH4/xTDLwqBYG4UaRZu+K8We2VrxaloLWz5cqVloRQV3s/
 ENiflLaFnz9WBNc4B6flRin1aTREr+0go8+/k7J8z/gH8rXHGzCU7CXnzWIx7WdXdNlE
 bJvC9V/wJN0XCB3cTovH+AL9WclvdU6oiwWtuPQJ0GQXLWMw3Ae1y11hCE2AkEqrXhkX
 DSBg==
X-Gm-Message-State: APjAAAWHe5MTIpEdPLhyiZUrUq7u43v/HlEPKnnjDZE5NGJed2UStCd9
 Sd/Y8ipuCOYaqbkfSeuc3kO6/A==
X-Google-Smtp-Source: APXvYqwiLsgtWLoYPPZl+fyjinK6XDv3NWeGJwWa5Qvs5fKDD2WwJE8mSwCbHvv+PkgMGDmQa9RuEQ==
X-Received: by 2002:a17:906:32d2:: with SMTP id
 k18mr20071313ejk.232.1560465562018; 
 Thu, 13 Jun 2019 15:39:22 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:a0:bc00:8042:d435:a754:1f22])
 by smtp.googlemail.com with ESMTPSA id
 s16sm216522eji.27.2019.06.13.15.39.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 15:39:21 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v4 1/5] iommu/amd: Remove unnecessary locking from AMD iommu
 driver
Date: Thu, 13 Jun 2019 23:38:56 +0100
Message-Id: <20190613223901.9523-2-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613223901.9523-1-murphyt7@tcd.ie>
References: <20190613223901.9523-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_153924_744963_2FD586A7 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 virtualization@lists.linux-foundation.org,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2UgY2FuIHJlbW92ZSB0aGUgbXV0ZXggbG9jayBmcm9tIGFtZF9pb21tdV9tYXAgYW5kIGFtZF9p
b21tdV91bm1hcC4KaW9tbXVfbWFwIGRvZXNu4oCZdCBsb2NrIHdoaWxlIG1hcHBpbmcgYW5kIHNv
IG5vIHR3byBjYWxscyBzaG91bGQgdG91Y2gKdGhlIHNhbWUgaW92YSByYW5nZS4gVGhlIEFNRCBk
cml2ZXIgYWxyZWFkeSBoYW5kbGVzIHRoZSBwYWdlIHRhYmxlIHBhZ2UKYWxsb2NhdGlvbnMgd2l0
aG91dCBsb2NrcyBzbyB3ZSBjYW4gc2FmZWx5IHJlbW92ZSB0aGUgbG9ja3MuCgpTaWduZWQtb2Zm
LWJ5OiBUb20gTXVycGh5IDxtdXJwaHl0N0B0Y2QuaWU+Ci0tLQogZHJpdmVycy9pb21tdS9hbWRf
aW9tbXUuYyAgICAgICB8IDEwICstLS0tLS0tLS0KIGRyaXZlcnMvaW9tbXUvYW1kX2lvbW11X3R5
cGVzLmggfCAgMSAtCiAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxMCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2FtZF9pb21tdS5jIGIvZHJpdmVycy9p
b21tdS9hbWRfaW9tbXUuYwppbmRleCA3Mzc0MGI5NjllNjIuLjA2NTYzOWUwOTBmZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9pb21tdS9hbWRfaW9tbXUuYworKysgYi9kcml2ZXJzL2lvbW11L2FtZF9p
b21tdS5jCkBAIC0yODU4LDcgKzI4NTgsNiBAQCBzdGF0aWMgdm9pZCBwcm90ZWN0aW9uX2RvbWFp
bl9mcmVlKHN0cnVjdCBwcm90ZWN0aW9uX2RvbWFpbiAqZG9tYWluKQogc3RhdGljIGludCBwcm90
ZWN0aW9uX2RvbWFpbl9pbml0KHN0cnVjdCBwcm90ZWN0aW9uX2RvbWFpbiAqZG9tYWluKQogewog
CXNwaW5fbG9ja19pbml0KCZkb21haW4tPmxvY2spOwotCW11dGV4X2luaXQoJmRvbWFpbi0+YXBp
X2xvY2spOwogCWRvbWFpbi0+aWQgPSBkb21haW5faWRfYWxsb2MoKTsKIAlpZiAoIWRvbWFpbi0+
aWQpCiAJCXJldHVybiAtRU5PTUVNOwpAQCAtMzA0NSw5ICszMDQ0LDcgQEAgc3RhdGljIGludCBh
bWRfaW9tbXVfbWFwKHN0cnVjdCBpb21tdV9kb21haW4gKmRvbSwgdW5zaWduZWQgbG9uZyBpb3Zh
LAogCWlmIChpb21tdV9wcm90ICYgSU9NTVVfV1JJVEUpCiAJCXByb3QgfD0gSU9NTVVfUFJPVF9J
VzsKIAotCW11dGV4X2xvY2soJmRvbWFpbi0+YXBpX2xvY2spOwogCXJldCA9IGlvbW11X21hcF9w
YWdlKGRvbWFpbiwgaW92YSwgcGFkZHIsIHBhZ2Vfc2l6ZSwgcHJvdCwgR0ZQX0tFUk5FTCk7Ci0J
bXV0ZXhfdW5sb2NrKCZkb21haW4tPmFwaV9sb2NrKTsKIAogCWRvbWFpbl9mbHVzaF9ucF9jYWNo
ZShkb21haW4sIGlvdmEsIHBhZ2Vfc2l6ZSk7CiAKQEAgLTMwNTgsMTYgKzMwNTUsMTEgQEAgc3Rh
dGljIHNpemVfdCBhbWRfaW9tbXVfdW5tYXAoc3RydWN0IGlvbW11X2RvbWFpbiAqZG9tLCB1bnNp
Z25lZCBsb25nIGlvdmEsCiAJCQkgICBzaXplX3QgcGFnZV9zaXplKQogewogCXN0cnVjdCBwcm90
ZWN0aW9uX2RvbWFpbiAqZG9tYWluID0gdG9fcGRvbWFpbihkb20pOwotCXNpemVfdCB1bm1hcF9z
aXplOwogCiAJaWYgKGRvbWFpbi0+bW9kZSA9PSBQQUdFX01PREVfTk9ORSkKIAkJcmV0dXJuIDA7
CiAKLQltdXRleF9sb2NrKCZkb21haW4tPmFwaV9sb2NrKTsKLQl1bm1hcF9zaXplID0gaW9tbXVf
dW5tYXBfcGFnZShkb21haW4sIGlvdmEsIHBhZ2Vfc2l6ZSk7Ci0JbXV0ZXhfdW5sb2NrKCZkb21h
aW4tPmFwaV9sb2NrKTsKLQotCXJldHVybiB1bm1hcF9zaXplOworCXJldHVybiBpb21tdV91bm1h
cF9wYWdlKGRvbWFpbiwgaW92YSwgcGFnZV9zaXplKTsKIH0KIAogc3RhdGljIHBoeXNfYWRkcl90
IGFtZF9pb21tdV9pb3ZhX3RvX3BoeXMoc3RydWN0IGlvbW11X2RvbWFpbiAqZG9tLApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9pb21tdS9hbWRfaW9tbXVfdHlwZXMuaCBiL2RyaXZlcnMvaW9tbXUvYW1k
X2lvbW11X3R5cGVzLmgKaW5kZXggNTJjMzVkNTU3ZmFkLi41ZDVmNWQwMDliMTkgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvaW9tbXUvYW1kX2lvbW11X3R5cGVzLmgKKysrIGIvZHJpdmVycy9pb21tdS9h
bWRfaW9tbXVfdHlwZXMuaApAQCAtNDYxLDcgKzQ2MSw2IEBAIHN0cnVjdCBwcm90ZWN0aW9uX2Rv
bWFpbiB7CiAJc3RydWN0IGlvbW11X2RvbWFpbiBkb21haW47IC8qIGdlbmVyaWMgZG9tYWluIGhh
bmRsZSB1c2VkIGJ5CiAJCQkJICAgICAgIGlvbW11IGNvcmUgY29kZSAqLwogCXNwaW5sb2NrX3Qg
bG9jazsJLyogbW9zdGx5IHVzZWQgdG8gbG9jayB0aGUgcGFnZSB0YWJsZSovCi0Jc3RydWN0IG11
dGV4IGFwaV9sb2NrOwkvKiBwcm90ZWN0IHBhZ2UgdGFibGVzIGluIHRoZSBpb21tdS1hcGkgcGF0
aCAqLwogCXUxNiBpZDsJCQkvKiB0aGUgZG9tYWluIGlkIHdyaXR0ZW4gdG8gdGhlIGRldmljZSB0
YWJsZSAqLwogCWludCBtb2RlOwkJLyogcGFnaW5nIG1vZGUgKDAtNiBsZXZlbHMpICovCiAJdTY0
ICpwdF9yb290OwkJLyogcGFnZSB0YWJsZSByb290IHBvaW50ZXIgKi8KLS0gCjIuMjAuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
