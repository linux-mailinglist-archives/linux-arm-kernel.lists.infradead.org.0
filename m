Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470E8A6139
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATg9m6DL10+ssJFDXYz4/3gZOGXyQp1cK6vSIgVtthg=; b=mVJFvlEn0H9HRR
	Q4hXaBVtVzHtSeo47dDsmFRmBCSi21iTdXKI89+ny+PhKfeODAXLzFFS9NJjvm7g0aNCWnpPSoXfU
	wMHxcfMn2jbevSmxQjyIQgT7Qg2FuFxhv8y8m53KUtmcuRqAPtjaShFhsbzkXHzmvYYp4GfwY+dMu
	aOj+/+Ad3NjL6rFvkh38cwvxoZPsPFQWx25q4yF3wyhA0qLoExuW5xSrQZVa4DgMtAqOo3sWBpW0x
	BcD99LCOBXChLNCCi0Hq2W6XRBGaPA4+sRYDE283v5C8SY0pBMLMuF2DS5XuBre707Y6PNeBAm4NN
	+kA9BhCqjzF5nc6FlFIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52BW-0001Oy-3s; Tue, 03 Sep 2019 06:20:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52BI-0001OL-Po
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:20:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id b16so16016314wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 23:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=YKY88mE2T1JIVhonH4BKsN4In+EOCkLewu/cYwg0NFI=;
 b=oSJnFgvpy0N/Nmx5iIH3UkDpNMrRdPCgW0b4jddqpLvi4/d1Rkz0iH9x6JROMRweXs
 XdX7jguoInFB7gtTaGYBrXzI6qz0J0da8yO+VYo7yCy4565Z/40NDO3pHW7vWgx5Vf0o
 Vxlbis9eTsOPTASQ0Oky9OzE/ET2cNCAJ4t62ZXj4YjOhG+UraKA6e0MvanYzVQ8NR1K
 o9Y685UaF4FtTl+zcgsEUNhEVPOcbPUi24DqfjU46CfvhOizKa8OuRggtVCAjBunUn/s
 klakPSif8jugFhmBXjktCEhCN3hZu5YWuyvSxMGJof5mdhJTcriZLh8wDRDbg/PKbQNP
 jIYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=YKY88mE2T1JIVhonH4BKsN4In+EOCkLewu/cYwg0NFI=;
 b=cR2HFRGSQdJ0YVtDB7LUxr40Wy8UetNVlZvc9EXz/2xahxrvz7OwzbPhht/8wC5Hi6
 5FBEASm/24qzzK7HWvc17pK8nQaZ50BKGT1ab05IBpaej/ly0BqXWP33T8k1k+8fTODk
 VG5fs49mmrZTp5/XzohEtMR454QVINIxygaHTwGkRp0fFSIsfI2pQZqUjzUr9t+WLb+F
 AMJhNdRtc9O/mRoBrw9Z7EUA4YVpZ8TWdj35j7tcvieFdL8GMln8YwOfJwTawj/8velv
 z/b81ExgTWyETi8NGTE9BVR/x7QmyrLSBhgCkFkkEpBhr9fiiHkPno5TuqCjJcNlL5iG
 ceuw==
X-Gm-Message-State: APjAAAVBJIZtd05aLZGwYZMDZ1upMAnlI9gX3j50W8TlYGq5mXWxI5Nc
 7dMcKMbus+T72yPuhs+6u4BiGw==
X-Google-Smtp-Source: APXvYqzxTP9Izgjyqm7VZnX7b5HaQgM+sZAiS2X6RszH2QLjrimvK7wmFA+TGBzFrnlM0Gq6VvNosA==
X-Received: by 2002:adf:e912:: with SMTP id f18mr38483436wrm.46.1567491642530; 
 Mon, 02 Sep 2019 23:20:42 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id o193sm19866846wme.39.2019.09.02.23.20.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 23:20:41 -0700 (PDT)
Date: Tue, 3 Sep 2019 07:20:40 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 1/1] arm64: dts: qcom: Add Lenovo Yoga C630
Message-ID: <20190903062040.GC26880@dell>
References: <20190902132400.14084-1-lee.jones@linaro.org>
 <20190903054451.GV6167@minitux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903054451.GV6167@minitux>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_232044_871168_FD6205DD 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, agross@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwMiBTZXAgMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgoKPiBPbiBNb24gMDIg
U2VwIDA2OjI0IFBEVCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gCj4gPiBGcm9tOiBCam9ybiBB
bmRlcnNzb24gPGJqb3JuLmFuZGVyc3NvbkBsaW5hcm8ub3JnPgo+ID4gCj4gPiBUaGUgTGVub3Zv
IFlvZ2EgQzYzMCBpcyBidWlsdCBvbiB0aGUgU0RNODUwIGZyb20gUXVhbGNvbW0sIGJ1dCB0aGlz
IHNlZW0KPiA+IHRvIGJlIHNpbWlsYXIgZW5vdWdoIHRvIHRoZSBTRE04NDUgdGhhdCB3ZSBjYW4g
cmV1c2UgdGhlIHNkbTg0NS5kdHNpLgo+ID4gCj4gPiBTdXBwb3J0ZWQgYnkgdGhpcyBwYXRjaCBp
czoga2V5Ym9hcmQsIGJhdHRlcnkgbW9uaXRvcmluZywgVUZTIHN0b3JhZ2UsCj4gPiBVU0IgaG9z
dCBhbmQgQmx1ZXRvb3RoLgo+IAo+IEFwcGxpZWQgdGhpcyB0byBuZXh0LTIwMTkwODI5IGFuZCBi
b290ZWQgaXQsIGdvdCBhIGxpdHRsZSBiaXQgb2YgRUZJIEZCLAo+IHRoZW4gdGhlIHNjcmVlbiBn
b2VzIGJsYW5rIGFuZCBhZnRlciBhIHdoaWxlIEknbSBiYWNrIGluIEdSVUIuCj4gCj4gSSd2ZSBu
b3QgYmVlbiBhYmxlIHRvIGZpZ3VyZSBvdXQgd2hhdCdzIGNhdXNpbmcgdGhpcyB0aG91Z2guCgpQ
cm9iYWJseSBETUEuICBUaGVyZSBpcyBzdGlsbCBhbiBpc3N1ZSBpbiB0aGUgQ09NIEdFTkkgU2Vy
aWFsIEVuZ2luZQpEcml2ZXIgd2hpY2ggcmVib290cyB0aGUgc3lzdGVtIHdoZW4gYSBETUEgdHJh
bnNhY3Rpb24gaXMgaW5pdGlhdGVkLgoKSG93ZXZlciwgd2l0aCBhIHdvcmthcm91bmQgcGF0Y2gg
YXBwbGllZCB0byB0aGUgU2VyaWFsIEVuZ2luZSBkcml2ZXIKKGRyaXZlcnMvc29jL3Fjb20vcWNv
bS1nZW5pLXNlLmMpIHRoaXMgRFRTIGhhcyBubyBpc3N1ZSBib290aW5nIHRoZQpzeXN0ZW0uCgpX
ZSBoYXZlIH4xMiB3ZWVrcyB0byBlaXRoZXIgZml4IG9yIGVsZWdhbnRseSB3b3JrIGFyb3VuZCB0
aGUgU2VyaWFsCkVuZ2luZSBpc3N1ZS4gIElNSE8gaXMgbWFrZXMgbm8gc2Vuc2UgdG8gaG9sZCBi
YWNrIHRoaXMgZW5hYmxlbWVudApwYXRjaCAod2hpY2ggY2Fubm90IGdvIGluIHZpYSB0aGUgLXJj
cykgZm9yIHNvbWV0aGluZyB3aGljaCBpcyBsaWtlbHkKdG8gYmUgZml4ZWQgYW5kIGFwcGxpZWQg
ZHVyaW5nIHYzLjQtcmNYLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2Vydmlj
ZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9y
IEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
