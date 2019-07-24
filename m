Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824F773761
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 21:08:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/305ZhTnYUS4wCFSthukzjEawf96OKQl8Snep7cnIx8=; b=dey+L0TBh6dXXC
	v8VZOSi+3Ya5h4k1b7t7HCQFZlCm0kixwY/VmMa1+NCesMbhPVxT4tGvyKtR3eGc+ucOUTcChhWvm
	pL6+4E/Ug/ryxh+8Z1TE0LwZpWzoAbGX2SezuXG8sN1Z6JWKnc5UX4SzS/vLfk65N/eirp15cBbau
	yKq8tFUAug17L04TfrBTkDw+Y8y7ia8rYj8NjIyFNcm+SI37PlyhwAzjlsxLWpVDRYkV3f+2XDqre
	EPlDUCxu9P2UULtYTHBhsUnF5k9AN9C9UJkJgmGkiA8YWtaD3KzkJVmVdxVOU/a2+qORnRJRUnJwa
	21QMv0Uw71P/nOu3Z7yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqMcI-0004Au-L0; Wed, 24 Jul 2019 19:07:58 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqMc5-0004AU-V6
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 19:07:47 +0000
Received: by mail-wm1-f67.google.com with SMTP id a15so42762854wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 12:07:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=jtQSPuZ1QzMs99js7V9Wo2RTLphiNzuGhsELT//GEEg=;
 b=Fo6s7n+0uBM4WICyzEaNHx0f8/bGumbjXNaXIhohNYzQ4KWzJ41Iln7zd6sFsc5pOQ
 fhMxFwQuuZzu2yLxB8DyHu0BsWtW4wDKdpAAhV9mz/WcO4sFRwxlax/aKfZDeYUAD8BJ
 Vx7Hi7qxy3l9D25R8qRlsqlXOzz8eCyvYvH/VlDLD8m5NkLT0oUzZTyr7122GrkAS7CM
 10XJjKrHFAUSI2CJ/MLufnqb6pHKVR6JiFa2mLjNxJZdjJeOyW7gx1szFeYZaGMSZGEB
 V8eQaWbl29rQK6DfRLF0YZE4xKfrjMVGoV9yeyvsTvgEB/iR8HKCkLli5Gv0yNc5uudi
 hCNA==
X-Gm-Message-State: APjAAAWlFbj05dS2kLg4nXAGt3pFx25jvaWkZGOELfnMd57jZnkq36/J
 rppezuU8WcKZ4ne8PusdlgM=
X-Google-Smtp-Source: APXvYqzW5J/UxiwCLKihWU+W6v0QY2SUnZdcHCLGNhpwuL3J4T0/WFqdxk7zt2m7BHrB78puwFES8w==
X-Received: by 2002:a05:600c:212:: with SMTP id
 18mr25939276wmi.88.1563995264126; 
 Wed, 24 Jul 2019 12:07:44 -0700 (PDT)
Received: from kozik-lap ([194.230.155.239])
 by smtp.googlemail.com with ESMTPSA id w23sm48058527wmi.45.2019.07.24.12.07.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 12:07:43 -0700 (PDT)
Date: Wed, 24 Jul 2019 21:07:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
Subject: Re: [RFC PATCH 01/11] devfreq: exynos-bus: Extract
 exynos_bus_profile_init()
Message-ID: <20190724190741.GD14346@kozik-lap>
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122022eucas1p1266d90873d564894bd852c20140f8474@eucas1p1.samsung.com>
 <20190723122016.30279-2-a.swigon@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723122016.30279-2-a.swigon@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_120746_004662_15C7A38B 
X-CRM114-Status: GOOD (  16.74  )
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

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDI6MjA6MDZQTSArMDIwMCwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4gVGhpcyBwYXRjaCBhZGRzIGEgbmV3IHN0YXRpYyBmdW5jdGlvbiwgZXh5bm9zX2J1
c19wcm9maWxlX2luaXQoKSwgZXh0cmFjdGVkCj4gZnJvbSBleHlub3NfYnVzX3Byb2JlKCkuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3Vu
Zy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMgfCAxMDYgKysrKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDYwIGluc2Vy
dGlvbnMoKyksIDQ2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZy
ZXEvZXh5bm9zLWJ1cy5jIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+IGluZGV4IGQ5
ZjM3NzkxMmMxMC4uZDhmMWVmYWYyZDQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9l
eHlub3MtYnVzLmMKPiArKysgYi9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gQEAgLTM3
MiwxMiArMzcyLDY5IEBAIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJzZV9vZihzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5wLAo+ICAJcmV0dXJuIHJldDsKPiAgfQo+ICAKPiArc3RhdGljIGludCBleHlu
b3NfYnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ICsJCQkJICAgc3Ry
dWN0IGRldmZyZXFfZGV2X3Byb2ZpbGUgKnByb2ZpbGUpCj4gK3sKPiArCXN0cnVjdCBkZXZpY2Ug
KmRldiA9IGJ1cy0+ZGV2Owo+ICsJc3RydWN0IGRldmZyZXFfc2ltcGxlX29uZGVtYW5kX2RhdGEg
Km9uZGVtYW5kX2RhdGE7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCS8qIEluaXRpYWxpemUgdGhlIHN0
cnVjdCBwcm9maWxlIGFuZCBnb3Zlcm5vciBkYXRhIGZvciBwYXJlbnQgZGV2aWNlICovCj4gKwlw
cm9maWxlLT5wb2xsaW5nX21zID0gNTA7Cj4gKwlwcm9maWxlLT50YXJnZXQgPSBleHlub3NfYnVz
X3RhcmdldDsKPiArCXByb2ZpbGUtPmdldF9kZXZfc3RhdHVzID0gZXh5bm9zX2J1c19nZXRfZGV2
X3N0YXR1czsKPiArCXByb2ZpbGUtPmV4aXQgPSBleHlub3NfYnVzX2V4aXQ7Cj4gKwo+ICsJb25k
ZW1hbmRfZGF0YSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqb25kZW1hbmRfZGF0YSksIEdG
UF9LRVJORUwpOwo+ICsJaWYgKCFvbmRlbWFuZF9kYXRhKSB7Cj4gKwkJcmV0ID0gLUVOT01FTTsK
PiArCQlnb3RvIGVycjsKCkp1c3QgcmV0dXJuIHByb3BlciBlcnJvciBjb2RlLiBMZXNzIGxpbmVz
LCBvYnZpb3VzIGNvZGUgc2luY2UgeW91IGRvIG5vdApoYXZlIGFueSBjbGVhbnVwIGluIGVycm9y
IHBhdGguCgo+ICsJfQo+ICsJb25kZW1hbmRfZGF0YS0+dXB0aHJlc2hvbGQgPSA0MDsKPiArCW9u
ZGVtYW5kX2RhdGEtPmRvd25kaWZmZXJlbnRpYWwgPSA1Owo+ICsKPiArCS8qIEFkZCBkZXZmcmVx
IGRldmljZSB0byBtb25pdG9yIGFuZCBoYW5kbGUgdGhlIGV4eW5vcyBidXMgKi8KPiArCWJ1cy0+
ZGV2ZnJlcSA9IGRldm1fZGV2ZnJlcV9hZGRfZGV2aWNlKGRldiwgcHJvZmlsZSwKPiArCQkJCQkJ
REVWRlJFUV9HT1ZfU0lNUExFX09OREVNQU5ELAo+ICsJCQkJCQlvbmRlbWFuZF9kYXRhKTsKPiAr
CWlmIChJU19FUlIoYnVzLT5kZXZmcmVxKSkgewo+ICsJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRv
IGFkZCBkZXZmcmVxIGRldmljZVxuIik7Cj4gKwkJcmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEp
Owo+ICsJCWdvdG8gZXJyOwo+ICsJfQo+ICsKPiArCS8qIFJlZ2lzdGVyIG9wcF9ub3RpZmllciB0
byBjYXRjaCB0aGUgY2hhbmdlIG9mIE9QUCAgKi8KPiArCXJldCA9IGRldm1fZGV2ZnJlcV9yZWdp
c3Rlcl9vcHBfbm90aWZpZXIoZGV2LCBidXMtPmRldmZyZXEpOwo+ICsJaWYgKHJldCA8IDApIHsK
PiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byByZWdpc3RlciBvcHAgbm90aWZpZXJcbiIpOwo+
ICsJCWdvdG8gZXJyOwoKVGhlIHNhbWUgLSByZXR1cm4gZXJyLgoKQmVzdCByZWdhcmRzLApLcnp5
c3p0b2YKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
