Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B328A73770
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 21:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5eJ47T3BitBwwAHBYtySrqJCsnKoRdwv4AZxeZa9NI=; b=O5FYDa5P96VvV2
	Bo4IC6t9SimRCJHdISO92qNS0LB1pcjCaJQ9iVZ3skPki1E/T+KrHR2go9iqKZsudAb2op3Gf6ffF
	GjWlLPTokmGtaADRTyei5JjZJl04Pnx4K4WdfpaBGBfKcSZhMqVDGjY1HQ5X3PxVwWJNBMO1o/995
	9mtRoCVCzC9cAIr0imOgu/a+jAAvVnQFHW8HsT1czJxIMpa2fbiaclHRtiM8SyHuMaJyNotDsnFLV
	qFCtZNrrFRkqklh92UU+t4Ilss/c0HE7/M6uJDkGWEYseODIyk4EkwX/16o4Hwz/TQxuyrfZfp0xv
	f7v4Cq2d0Axpra4T4ZmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMdP-0004Uh-LH; Wed, 24 Jul 2019 19:09:07 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMdD-0004UC-It
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 19:08:56 +0000
Received: by mail-wm1-f67.google.com with SMTP id g67so38471067wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 12:08:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=mYrGkDQOnSU5Lp9avRqB0jc65jAYh0UF93+Huamd7FY=;
 b=QdqVUcPQybfEcDzNBL1D6cQq1Bqbf/1QJECZWQOMOupFUbZSaF3pcrReN1Rqn1Egk6
 8J8pkGU090QQih+wU+aE+zz3WE48EagiEbwXRnjyt0tLzhQGwCbH/5Yrr1+HfPT0eHLH
 Gp+fOJP2NCOZIoqajfl1ha5tEIg4xmzx5QgS3X4rpQg5F1SFx2q6RQ2Nih+f7jl6+Tsh
 tq4lvtnt8tN7sPJhXNj4AHQCJPJ/++MGudvu/J1XBMLK+XfQRFzf/E0/JEKFHQRNNf4R
 taAETwO5t5rfxE+KN/Jdj6ZigSLmPqE4xImLvkEC+iLKhcdbTh4U0MBzZ5E50Yee1guK
 iNzw==
X-Gm-Message-State: APjAAAUOE/D5WYrL0XICzSHqR2iMoug1sGQdeSjbEBdLcOMXOFgsuJF0
 BkFTgOhDoFCJJwZ8FpCUuEg=
X-Google-Smtp-Source: APXvYqzdk6u7Pk10r48MB52INPrCA0J17QNFIsWrGOO+ZuC0i9JWvgiRp9UAxl5CifpHBiYGbc8sOw==
X-Received: by 2002:a7b:c4d2:: with SMTP id g18mr76037481wmk.79.1563995334246; 
 Wed, 24 Jul 2019 12:08:54 -0700 (PDT)
Received: from kozik-lap ([194.230.155.239])
 by smtp.googlemail.com with ESMTPSA id y1sm35475550wma.32.2019.07.24.12.08.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 12:08:53 -0700 (PDT)
Date: Wed, 24 Jul 2019 21:08:51 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
Subject: Re: [RFC PATCH 02/11] devfreq: exynos-bus: Extract
 exynos_bus_profile_init_passive()
Message-ID: <20190724190851.GE14346@kozik-lap>
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122023eucas1p2ff56c00b60a676ed85d9fe159a1839f2@eucas1p2.samsung.com>
 <20190723122016.30279-3-a.swigon@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723122016.30279-3-a.swigon@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_120855_620045_8F4C4782 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, sw0312.kim@samsung.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, inki.dae@samsung.com, cw00.choi@samsung.com,
 myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDI6MjA6MDdQTSArMDIwMCwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4gVGhpcyBwYXRjaCBhZGRzIGEgbmV3IHN0YXRpYyBmdW5jdGlvbiwgZXh5bm9zX2J1
c19wcm9maWxlX2luaXRfcGFzc2l2ZSgpLAo+IGV4dHJhY3RlZCBmcm9tIGV4eW5vc19idXNfcHJv
YmUoKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5l
ci5zYW1zdW5nLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8IDcw
ICsrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
NDIgaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgYi9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4g
aW5kZXggZDhmMWVmYWYyZDQ5Li5jZjZmNmNiZDBmNTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9k
ZXZmcmVxL2V4eW5vcy1idXMuYwo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMK
PiBAQCAtNDMwLDEzICs0MzAsNTEgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5p
dChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ICAJcmV0dXJuIHJldDsKPiAgfQo+ICAKPiArc3Rh
dGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKHN0cnVjdCBleHlub3NfYnVz
ICpidXMsCj4gKwkJCQkJICAgc3RydWN0IGRldmZyZXFfZGV2X3Byb2ZpbGUgKnByb2ZpbGUpCj4g
K3sKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IGJ1cy0+ZGV2Owo+ICsJc3RydWN0IGRldmZyZXEg
KnBhcmVudF9kZXZmcmVxOwo+ICsJc3RydWN0IGRldmZyZXFfcGFzc2l2ZV9kYXRhICpwYXNzaXZl
X2RhdGE7Cj4gKwlpbnQgcmV0ID0gMDsKPiArCj4gKwkvKiBJbml0aWFsaXplIHRoZSBzdHJ1Y3Qg
cHJvZmlsZSBhbmQgZ292ZXJub3IgZGF0YSBmb3IgcGFzc2l2ZSBkZXZpY2UgKi8KPiArCXByb2Zp
bGUtPnRhcmdldCA9IGV4eW5vc19idXNfcGFzc2l2ZV90YXJnZXQ7Cj4gKwlwcm9maWxlLT5leGl0
ID0gZXh5bm9zX2J1c19wYXNzaXZlX2V4aXQ7Cj4gKwo+ICsJLyogR2V0IHRoZSBpbnN0YW5jZSBv
ZiBwYXJlbnQgZGV2ZnJlcSBkZXZpY2UgKi8KPiArCXBhcmVudF9kZXZmcmVxID0gZGV2ZnJlcV9n
ZXRfZGV2ZnJlcV9ieV9waGFuZGxlKGRldiwgMCk7Cj4gKwlpZiAoSVNfRVJSKHBhcmVudF9kZXZm
cmVxKSkgewo+ICsJCXJldCA9IC1FUFJPQkVfREVGRVI7Cj4gKwkJZ290byBlcnI7CgpTYW1lIGFz
IGluIHByZXZpb3VzIHBhdGNoIC0gbm8gbmVlZCBmb3IgZXJyb3IgZ290by4KCkJlc3QgcmVnYXJk
cywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
