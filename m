Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D1B2A574
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5irJEbwgj6DrIl7NUc6KksbLXxvY06JCSrL7v+6Dxpw=; b=jtF5el8R2XUBIm
	/CH91RouyEyWV2+vZRK8M0NmiI35ceOzAD5Z59kA81AAHRYSeF0uA0dm12ZP5elUK8cWfd98DFYej
	LAbQuPCCyML03+D9uOfsLttDXzwkBXwAwdw4MvjjuPYeba2ZfltCt9u59pmTz/zYnFq9pIWO/3wTa
	JQCsWxFV6w9jBmz+HzZFH8JTJeI+mVJot/lCP5xgMRIqbJlwnYRVUnIGFDojs0pSlqPG4msGE6jFt
	l3+aYeQZIXV0/RZlVy3dNTCPn0uv+CFjSzqVdip26Y5Kv3i8KFAaCmiA+ymkmxiRfdC7okzn/v0iZ
	XXeeFOkZ2k1BUwk05cxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZhH-00043A-Of; Sat, 25 May 2019 16:39:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZgj-0003ao-E5
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:38:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id e19so4057751wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pQgSnfiOxm9+C2oUtvzxOg9ar7+568ZBuQBswlwkWls=;
 b=fpeHWHLeMpy/ARUQ6sMkHjNaXac4FvLA9S2KevDr16zz1QEVFtD3ifGfXYHBW8m2eI
 XaZrIdWmCf/dcE8UEyAm5sCamqwlsNOFXkTvls5yI4nWCqIFYopOzVwdtM2ZP3r3gDBv
 WlPqgnGg9IH1hdGFgbvE+pUObBOGhHtryeLxB+lU/nBN3pJcn2U5Z7OwGAlqVy5YgVc7
 ylQt0W3joyjuwQJ2rLIYkCYsXQD9npOvrNKrHjQgCd2u1CqTR2VCoxZVxYtujhRuIK38
 ukg2oVJfEJi76zoGouU9C+TNfVuUH38/lk8Ljlbq5b1Rh7X/6MpY3rd8yYWPktffTgNi
 pwTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pQgSnfiOxm9+C2oUtvzxOg9ar7+568ZBuQBswlwkWls=;
 b=pQ5t1Xwy7s/zgsCnER9VCRIshbQFR8MrQsrbfPjIRZ6AisYo+FTMFlt6wTuny0T/Cb
 +RFu1/RwTe9Id3RpPvZH9oOUx5ECSbv6ZchJ+WT4/n3z7l3lxlMmTvc0DpNb8vDI4wek
 vrZRLUCINvJfYq2Usm1ePEbRLFYE3JIktLuQdTSVbh5zojf5Q9iyb5zZGjuI3yCIT/6Y
 Rka/OF+qZ6eEM7sXXqyuZQvFvrosD8BHMZPxmwuO1pmwOVUqvak0aF3eBmMgzPu4IpwB
 vf5KaseeiVni0jmRpQ4YGmQNOtb7LvrES9X05n1KtE6w6FRiiTOtkD5Ea9QZvPtjtQBo
 9aEA==
X-Gm-Message-State: APjAAAXhnL8iPGZJ9Nd6FRYNOqvGJAKkRaeZNjpc/lPrb08qtX9ayMKl
 SsIqOzAGQKVRspxVjGMIKjQ=
X-Google-Smtp-Source: APXvYqxY3a/zzzGNpLhQ0PR3vJOW0d0UoB7TVKBeKA8nVBQivbcnkllLZLs+Vh2RVKjGex2r/tP54w==
X-Received: by 2002:a1c:1a49:: with SMTP id a70mr19873320wma.120.1558802307817; 
 Sat, 25 May 2019 09:38:27 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id f65sm9306498wmg.45.2019.05.25.09.38.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 09:38:27 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v2 2/7] dmaengine: sun6i: Add a quirk for additional mbus clock
Date: Sat, 25 May 2019 18:38:14 +0200
Message-Id: <20190525163819.21055-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525163819.21055-1-peron.clem@gmail.com>
References: <20190525163819.21055-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_093829_470107_1826307E 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgRE1BIGNv
bnRyb2xsZXIgbmVlZHMgYWRkaXRpb25hbCBtYnVzIGNsb2NrIHRvIGJlIGVuYWJsZWQuCgpBZGQg
YSBxdWlyayBmb3IgaXQgYW5kIGhhbmRsZSBpdCBhY2NvcmRpbmdseS4KClNpZ25lZC1vZmYtYnk6
IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KU2lnbmVkLW9mZi1ieTog
Q2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL2RtYS9z
dW42aS1kbWEuYyB8IDIzICsrKysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwg
MjIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1h
L3N1bjZpLWRtYS5jIGIvZHJpdmVycy9kbWEvc3VuNmktZG1hLmMKaW5kZXggMGNkMTNmMTdmYzEx
Li43ZDk2MDY5OTcyNTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hL3N1bjZpLWRtYS5jCisrKyBi
L2RyaXZlcnMvZG1hL3N1bjZpLWRtYS5jCkBAIC0xMjksNiArMTI5LDcgQEAgc3RydWN0IHN1bjZp
X2RtYV9jb25maWcgewogCXUzMiBkc3RfYnVyc3RfbGVuZ3RoczsKIAl1MzIgc3JjX2FkZHJfd2lk
dGhzOwogCXUzMiBkc3RfYWRkcl93aWR0aHM7CisJYm9vbCBoYXNfbWJ1c19jbGs7CiB9OwogCiAv
KgpAQCAtMTgyLDYgKzE4Myw3IEBAIHN0cnVjdCBzdW42aV9kbWFfZGV2IHsKIAlzdHJ1Y3QgZG1h
X2RldmljZQlzbGF2ZTsKIAl2b2lkIF9faW9tZW0JCSpiYXNlOwogCXN0cnVjdCBjbGsJCSpjbGs7
CisJc3RydWN0IGNsawkJKmNsa19tYnVzOwogCWludAkJCWlycTsKIAlzcGlubG9ja190CQlsb2Nr
OwogCXN0cnVjdCByZXNldF9jb250cm9sCSpyc3RjOwpAQCAtMTIwOCw2ICsxMjEwLDE0IEBAIHN0
YXRpYyBpbnQgc3VuNmlfZG1hX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJ
CXJldHVybiBQVFJfRVJSKHNkYy0+Y2xrKTsKIAl9CiAKKwlpZiAoc2RjLT5jZmctPmhhc19tYnVz
X2NsaykgeworCQlzZGMtPmNsa19tYnVzID0gZGV2bV9jbGtfZ2V0KCZwZGV2LT5kZXYsICJtYnVz
Iik7CisJCWlmIChJU19FUlIoc2RjLT5jbGtfbWJ1cykpIHsKKwkJCWRldl9lcnIoJnBkZXYtPmRl
diwgIk5vIG1idXMgY2xvY2sgc3BlY2lmaWVkXG4iKTsKKwkJCXJldHVybiBQVFJfRVJSKHNkYy0+
Y2xrX21idXMpOworCQl9CisJfQorCiAJc2RjLT5yc3RjID0gZGV2bV9yZXNldF9jb250cm9sX2dl
dCgmcGRldi0+ZGV2LCBOVUxMKTsKIAlpZiAoSVNfRVJSKHNkYy0+cnN0YykpIHsKIAkJZGV2X2Vy
cigmcGRldi0+ZGV2LCAiTm8gcmVzZXQgY29udHJvbGxlciBzcGVjaWZpZWRcbiIpOwpAQCAtMTMx
MiwxMSArMTMyMiwxOSBAQCBzdGF0aWMgaW50IHN1bjZpX2RtYV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCQlnb3RvIGVycl9yZXNldF9hc3NlcnQ7CiAJfQogCisJaWYgKHNk
Yy0+Y2ZnLT5oYXNfbWJ1c19jbGspIHsKKwkJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHNkYy0+
Y2xrX21idXMpOworCQlpZiAocmV0KSB7CisJCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJDb3VsZG4n
dCBlbmFibGUgbWJ1cyBjbG9ja1xuIik7CisJCQlnb3RvIGVycl9jbGtfZGlzYWJsZTsKKwkJfQor
CX0KKwogCXJldCA9IGRldm1fcmVxdWVzdF9pcnEoJnBkZXYtPmRldiwgc2RjLT5pcnEsIHN1bjZp
X2RtYV9pbnRlcnJ1cHQsIDAsCiAJCQkgICAgICAgZGV2X25hbWUoJnBkZXYtPmRldiksIHNkYyk7
CiAJaWYgKHJldCkgewogCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJDYW5ub3QgcmVxdWVzdCBJUlFc
biIpOwotCQlnb3RvIGVycl9jbGtfZGlzYWJsZTsKKwkJZ290byBlcnJfbWJ1c19jbGtfZGlzYWJs
ZTsKIAl9CiAKIAlyZXQgPSBkbWFfYXN5bmNfZGV2aWNlX3JlZ2lzdGVyKCZzZGMtPnNsYXZlKTsK
QEAgLTEzNDEsNiArMTM1OSw4IEBAIHN0YXRpYyBpbnQgc3VuNmlfZG1hX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJZG1hX2FzeW5jX2RldmljZV91bnJlZ2lzdGVyKCZzZGMt
PnNsYXZlKTsKIGVycl9pcnFfZGlzYWJsZToKIAlzdW42aV9raWxsX3Rhc2tsZXQoc2RjKTsKK2Vy
cl9tYnVzX2Nsa19kaXNhYmxlOgorCWNsa19kaXNhYmxlX3VucHJlcGFyZShzZGMtPmNsa19tYnVz
KTsKIGVycl9jbGtfZGlzYWJsZToKIAljbGtfZGlzYWJsZV91bnByZXBhcmUoc2RjLT5jbGspOwog
ZXJyX3Jlc2V0X2Fzc2VydDoKQEAgLTEzNTksNiArMTM3OSw3IEBAIHN0YXRpYyBpbnQgc3VuNmlf
ZG1hX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCiAJc3VuNmlfa2lsbF90
YXNrbGV0KHNkYyk7CiAKKwljbGtfZGlzYWJsZV91bnByZXBhcmUoc2RjLT5jbGtfbWJ1cyk7CiAJ
Y2xrX2Rpc2FibGVfdW5wcmVwYXJlKHNkYy0+Y2xrKTsKIAlyZXNldF9jb250cm9sX2Fzc2VydChz
ZGMtPnJzdGMpOwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
