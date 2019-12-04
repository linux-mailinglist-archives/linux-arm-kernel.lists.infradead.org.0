Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1EB112D1F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 14:59:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lBFCAgHMY78fmlQ9yc8zPX9+vcCIYduw9SfFLnU7Nc=; b=k0v7Z4Kx+Z0NCO
	G0vGYKbz+lu7hULe3i8OUCFtdGxmJtaocSrCDN8XoetwHpm7k+ru6maGaEzXvIetgKH76J5k9pBX+
	Q2o0PfXDGG6LwZsDSIj4w/sLrh8WNE1RpwYOP/8A3bKW3g/uRfF080o2cbuXKD+FDvn+79AXGBK70
	1jG5vxGBieuoVc/C/SJm1tZe10FS29xMHvKTHW2hSZuIbLi3K23dT3sG2vZppCDp+cMDLb3GtSGaU
	KY2eJW5bWs6edF5DYTmkQeadslr5M1PU7AyuUbg0onka+Wtlfa127/vzBph5oQBE5KzLzbep/bBVc
	zXTfHeJvrRvxEYxCn54w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icVBo-0001t3-99; Wed, 04 Dec 2019 13:59:36 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVBg-0001sd-Al
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 13:59:29 +0000
Received: by mail-lf1-x141.google.com with SMTP id l18so6234381lfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 05:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8zHhqf7R6W4VbEhK1Fh6EJVqgzLfv6MucTwQijoUla4=;
 b=u25w6ZjtBuftoUXGN+MQuIu1d46T6/KHTNrMtyvHVxXJxRP7x9pv303uGL/dIlrASk
 eoptMCAfnCZnhRA3sWpYTjniGobb1ABtfR29mxPNJZRBk9x5zlgzFQBm8CnB5GSFNTNI
 YDovwdYxZzWedDtsinctosqJGgXGI6G4Yry+H3Wk9DGUqsJdxCLUjx79U9C5pjqpv3fF
 PDalB5S6CcW9Rc7AtgEE8MkvfCNnpjbfAI1VpuDxNpWWPic9K8ThOxs0/yanGnPoVFzB
 YGlB48uBOJLR6pGO1Hw8sJzx9OdkFe8vreCcRV+B092zRYa+bUKw0dUppBwHgl3waiD6
 vgFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8zHhqf7R6W4VbEhK1Fh6EJVqgzLfv6MucTwQijoUla4=;
 b=X1ky+6cR8tPj1bsZ1Z6MTA1Oi8pnlTMtfe47uRmBe7wCPtXJrFbeRuyjaWNCT1SXKv
 jHDv2rGJcx+9K96evtTQJhHe6POGOEXwNXnO2Pzr5pOXzZbc2KOU2pCCqJ7tlMzH9ftr
 tQXXZ9VJhtXYQWtZdO6gCJ/rSAJY+Xy80+LF251N3TCsWiKxcEMsg+TGcGAAdYVW2s4F
 DMzq7RedGXniL5OD5vKcckH9fMxxqA6RYk9Cj+9cgDDfouALinWasF3w9B0u8/w5atOD
 oWTIHub1qHpZLgUmYj1WN5vpBFZf/ufdOTbBF+CA1N8340Mup7BN1mhJ+OtoQ2g1tstM
 Wn5Q==
X-Gm-Message-State: APjAAAUQewcQCiGcueEbKVnz5jSp+sS4vg+o2o06nnMdRN8ABfZVmUUo
 NweyFlLdqca80lHvUvW5t0c=
X-Google-Smtp-Source: APXvYqy85kPBJwLxdxCzYJ15kSt0dID8nFQF26japTZRpeRsDnFxO4T5/D/z9IZj52UxSN1iJcQxUg==
X-Received: by 2002:ac2:4884:: with SMTP id x4mr2153525lfc.92.1575467966393;
 Wed, 04 Dec 2019 05:59:26 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id l28sm3317173lfk.21.2019.12.04.05.59.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 05:59:25 -0800 (PST)
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
To: Sumit Gupta <sumitg@nvidia.com>, rjw@rjwysocki.net,
 viresh.kumar@linaro.org, catalin.marinas@arm.com, will@kernel.org,
 thierry.reding@gmail.com, jonathanh@nvidia.com, talho@nvidia.com,
 linux-pm@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <9f7521aa-4f9a-6dc2-60e0-2f9916656748@gmail.com>
Date: Wed, 4 Dec 2019 16:59:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_055928_370268_1BB916C4 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: bbasu@nvidia.com, mperttunen@nvidia.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDMuMTIuMjAxOSAyMDozMiwgU3VtaXQgR3VwdGEg0L/QuNGI0LXRgjoKPiBBZGQgc3VwcG9ydCBm
b3IgQ1BVIGZyZXF1ZW5jeSBzY2FsaW5nIG9uIFRlZ3JhMTk0LiBUaGUgZnJlcXVlbmN5Cj4gb2Yg
ZWFjaCBjb3JlIGNhbiBiZSBhZGp1c3RlZCBieSB3cml0aW5nIGEgY2xvY2sgZGl2aXNvciB2YWx1
ZSB0bwo+IGFuIE1TUiBvbiB0aGUgY29yZS4gVGhlIHJhbmdlIG9mIHZhbGlkIGRpdmlzb3JzIGlz
IHF1ZXJpZWQgZnJvbQo+IHRoZSBCUE1QLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pa2tvIFBlcnR0
dW5lbiA8bXBlcnR0dW5lbkBudmlkaWEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFN1bWl0IEd1cHRh
IDxzdW1pdGdAbnZpZGlhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9jcHVmcmVxL0tjb25maWcuYXJt
ICAgICAgICB8ICAgNiArCj4gIGRyaXZlcnMvY3B1ZnJlcS9NYWtlZmlsZSAgICAgICAgICAgfCAg
IDEgKwo+ICBkcml2ZXJzL2NwdWZyZXEvdGVncmExOTQtY3B1ZnJlcS5jIHwgNDIzICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCA0MzAgaW5z
ZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9jcHVmcmVxL3RlZ3JhMTk0
LWNwdWZyZXEuYwo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NwdWZyZXEvS2NvbmZpZy5hcm0g
Yi9kcml2ZXJzL2NwdWZyZXEvS2NvbmZpZy5hcm0KPiBpbmRleCBhOTA1Nzk2Li40YmNkNDdjIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvY3B1ZnJlcS9LY29uZmlnLmFybQo+ICsrKyBiL2RyaXZlcnMv
Y3B1ZnJlcS9LY29uZmlnLmFybQo+IEBAIC0zMjAsNiArMzIwLDEyIEBAIGNvbmZpZyBBUk1fVEVH
UkExODZfQ1BVRlJFUQo+ICAJaGVscAo+ICAJICBUaGlzIGFkZHMgdGhlIENQVUZyZXEgZHJpdmVy
IHN1cHBvcnQgZm9yIFRlZ3JhMTg2IFNPQ3MuCj4gIAo+ICtjb25maWcgQVJNX1RFR1JBMTk0X0NQ
VUZSRVEKPiArCXRyaXN0YXRlICJUZWdyYTE5NCBDUFVGcmVxIHN1cHBvcnQiCj4gKwlkZXBlbmRz
IG9uIEFSQ0hfVEVHUkEgJiYgVEVHUkFfQlBNUAo+ICsJaGVscAo+ICsJICBUaGlzIGFkZHMgQ1BV
IGZyZXF1ZW5jeSBkcml2ZXIgc3VwcG9ydCBmb3IgVGVncmExOTQgU09Dcy4KPiArCj4gIGNvbmZp
ZyBBUk1fVElfQ1BVRlJFUQo+ICAJYm9vbCAiVGV4YXMgSW5zdHJ1bWVudHMgQ1BVRnJlcSBzdXBw
b3J0Igo+ICAJZGVwZW5kcyBvbiBBUkNIX09NQVAyUExVUwo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2NwdWZyZXEvTWFrZWZpbGUgYi9kcml2ZXJzL2NwdWZyZXEvTWFrZWZpbGUKPiBpbmRleCA5YTlm
NWNjLi40MzNkNDkyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY3B1ZnJlcS9NYWtlZmlsZQo+ICsr
KyBiL2RyaXZlcnMvY3B1ZnJlcS9NYWtlZmlsZQo+IEBAIC04NSw2ICs4NSw3IEBAIG9iai0kKENP
TkZJR19BUk1fVEFOR09fQ1BVRlJFUSkJCSs9IHRhbmdvLWNwdWZyZXEubwo+ICBvYmotJChDT05G
SUdfQVJNX1RFR1JBMjBfQ1BVRlJFUSkJKz0gdGVncmEyMC1jcHVmcmVxLm8KPiAgb2JqLSQoQ09O
RklHX0FSTV9URUdSQTEyNF9DUFVGUkVRKQkrPSB0ZWdyYTEyNC1jcHVmcmVxLm8KPiAgb2JqLSQo
Q09ORklHX0FSTV9URUdSQTE4Nl9DUFVGUkVRKQkrPSB0ZWdyYTE4Ni1jcHVmcmVxLm8KPiArb2Jq
LSQoQ09ORklHX0FSTV9URUdSQTE5NF9DUFVGUkVRKQkrPSB0ZWdyYTE5NC1jcHVmcmVxLm8KPiAg
b2JqLSQoQ09ORklHX0FSTV9USV9DUFVGUkVRKQkJKz0gdGktY3B1ZnJlcS5vCj4gIG9iai0kKENP
TkZJR19BUk1fVkVYUFJFU1NfU1BDX0NQVUZSRVEpCSs9IHZleHByZXNzLXNwYy1jcHVmcmVxLm8K
PiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY3B1ZnJlcS90ZWdyYTE5NC1jcHVmcmVxLmMgYi9k
cml2ZXJzL2NwdWZyZXEvdGVncmExOTQtY3B1ZnJlcS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiBpbmRleCAwMDAwMDAwLi45ZGYxMmY0Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMv
Y3B1ZnJlcS90ZWdyYTE5NC1jcHVmcmVxLmMKPiBAQCAtMCwwICsxLDQyMyBAQAo+ICsvLyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIw
MTksIE5WSURJQSBDT1JQT1JBVElPTi4gQWxsIHJpZ2h0cyByZXNlcnZlZAo+ICsgKi8KPiArCj4g
KyNpbmNsdWRlIDxsaW51eC9jcHUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2NwdWZyZXEuaD4KPiAr
I2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9kbWEtbWFwcGluZy5o
Pgo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9vZi5oPgo+
ICsjaW5jbHVkZSA8bGludXgvb2ZfcGxhdGZvcm0uaD4KPiArI2luY2x1ZGUgPGxpbnV4L3BsYXRm
b3JtX2RldmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ICsKPiArI2luY2x1ZGUg
PGFzbS9zbXBfcGxhdC5oPgo+ICsKPiArI2luY2x1ZGUgPHNvYy90ZWdyYS9icG1wLmg+Cj4gKyNp
bmNsdWRlIDxzb2MvdGVncmEvYnBtcC1hYmkuaD4KPiArCj4gKyNkZWZpbmUgS0haICAgICAgICAg
ICAgICAgICAgICAgMTAwMAo+ICsjZGVmaW5lIFJFRl9DTEtfTUhaICAgICAgICAgICAgIDQwOCAv
KiA0MDggTUh6ICovCj4gKyNkZWZpbmUgVVNfREVMQVkgICAgICAgICAgICAgICAgMjAwMAo+ICsj
ZGVmaW5lIFVTX0RFTEFZX01JTiAgICAgICAgICAgIDIKPiArI2RlZmluZSBDUFVGUkVRX1RCTF9T
VEVQX0haICAgICAoNTAgKiBLSFogKiBLSFopCj4gKyNkZWZpbmUgTUFYX0NOVCAgICAgICAgICAg
ICAgICAgfjBVCj4gKwo+ICsvKiBjcHVmcmVxIHRyYW5zaXNpdGlvbiBsYXRlbmN5ICovCj4gKyNk
ZWZpbmUgVEVHUkFfQ1BVRlJFUV9UUkFOU0lUSU9OX0xBVEVOQ1kgKDMwMCAqIDEwMDApIC8qIHVu
aXQgaW4gbmFub3NlY29uZHMgKi8KPiArCj4gK2VudW0gY2x1c3RlciB7Cj4gKwlDTFVTVEVSMCwK
PiArCUNMVVNURVIxLAo+ICsJQ0xVU1RFUjIsCj4gKwlDTFVTVEVSMywKPiArCU1BWF9DTFVTVEVS
UywKPiArfTsKPiArCj4gK3N0cnVjdCB0ZWdyYTE5NF9jcHVmcmVxX2RhdGEgewo+ICsJdm9pZCBf
X2lvbWVtICpyZWdzOwo+ICsJc2l6ZV90IG51bV9jbHVzdGVyczsKPiArCXN0cnVjdCBjcHVmcmVx
X2ZyZXF1ZW5jeV90YWJsZSAqKnRhYmxlczsKPiArfTsKPiArCj4gK3N0YXRpYyBERUZJTkVfTVVU
RVgoY3B1ZnJlcV9sb2NrKTsKPiArCj4gK3N0cnVjdCB0ZWdyYV9jcHVfY3RyIHsKPiArCXUzMiBj
cHU7Cj4gKwl1MzIgZGVsYXk7Cj4gKwl1MzIgY29yZWNsa19jbnQsIGxhc3RfY29yZWNsa19jbnQ7
Cj4gKwl1MzIgcmVmY2xrX2NudCwgbGFzdF9yZWZjbGtfY250Owo+ICt9Owo+ICsKPiArc3RhdGlj
IHN0cnVjdCB3b3JrcXVldWVfc3RydWN0ICpyZWFkX2NvdW50ZXJzX3dxOwo+ICtzdHJ1Y3QgcmVh
ZF9jb3VudGVyc193b3JrIHsKPiArCXN0cnVjdCB3b3JrX3N0cnVjdCB3b3JrOwo+ICsJc3RydWN0
IHRlZ3JhX2NwdV9jdHIgYzsKPiArfTsKPiArCj4gK3N0YXRpYyBlbnVtIGNsdXN0ZXIgZ2V0X2Nw
dV9jbHVzdGVyKHU4IGNwdSkKPiArewo+ICsJcmV0dXJuIE1QSURSX0FGRklOSVRZX0xFVkVMKGNw
dV9sb2dpY2FsX21hcChjcHUpLCAxKTsKPiArfQo+ICsKPiArLyoKPiArICogUmVhZCBwZXItY29y
ZSBSZWFkLW9ubHkgc3lzdGVtIHJlZ2lzdGVyIE5WRlJFUV9GRUVEQkFDS19FTDEuCj4gKyAqIFRo
ZSByZWdpc3RlciBwcm92aWRlcyBmcmVxdWVuY3kgZmVlZGJhY2sgaW5mb3JtYXRpb24gdG8KPiAr
ICogZGV0ZXJtaW5lIHRoZSBhdmVyYWdlIGFjdHVhbCBmcmVxdWVuY3kgYSBjb3JlIGhhcyBydW4g
YXQgb3Zlcgo+ICsgKiBhIHBlcmlvZCBvZiB0aW1lLgo+ICsgKglbMzE6MF0gUExMUCBjb3VudGVy
OiBDb3VudHMgYXQgZml4ZWQgZnJlcXVlbmN5ICg0MDggTUh6KQo+ICsgKglbNjM6MzJdIENvcmUg
Y2xvY2sgY291bnRlcjogY291bnRzIG9uIGV2ZXJ5IGNvcmUgY2xvY2sgY3ljbGUKPiArICoJCQl3
aGVyZSB0aGUgY29yZSBpcyBhcmNoaXRlY3R1cmFsbHkgY2xvY2tpbmcKPiArICovCj4gK3N0YXRp
YyB1NjQgcmVhZF9mcmVxX2ZlZWRiYWNrKHZvaWQpCj4gK3sKPiArCXU2NCB2YWwgPSAwOwo+ICsK
PiArCWFzbSB2b2xhdGlsZSgibXJzICUwLCBzM18wX2MxNV9jMF81IiA6ICI9ciIgKHZhbCkgOiAp
Owo+ICsKPiArCXJldHVybiB2YWw7Cj4gK30KPiArCj4gK3UxNiBtYXBfZnJlcV90b19uZGl2KHN0
cnVjdCBtcnFfY3B1X25kaXZfbGltaXRzX3Jlc3BvbnNlICpubHRibCwgdTMyIGZyZXEpCj4gK3sK
PiArCXJldHVybiBESVZfUk9VTkRfVVAoZnJlcSAqIG5sdGJsLT5wZGl2ICogbmx0YmwtPm1kaXYs
Cj4gKwkJCSAgICBubHRibC0+cmVmX2Nsa19oeiAvIEtIWik7Cj4gK30KClRoaXMgZnVuY3Rpb24g
aXNuJ3QgdXNlZCBhbnl3aGVyZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
