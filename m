Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234511B2139
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3rkXF5wGdF/oILUQzRAZJTjj0ZjR5i3/3ctECfj7YUs=; b=PEnCbaMkz127ro
	rfUS735PV2zNaEIGsXHaX08fs7MmbhoOdsusMTOgGVR+2DVMCGfZvlnfGxV5iOmxs7p2cTnksP0Wi
	vu6Ov7zv/emh9t06IrBbd8J1RvZOVhvchHSpuP4O+3UDwo7PHKsGRKogbPMGIx6jeyfVR54ESgvPy
	oWHJthv92kXFamP250VKOWQiWHME/24fnUqbIzL+Bu1IK7G6HQ+y3qOseP2UNUfVO4n2dsWJfQM2i
	w9cGkQlujLR++ju7tUkeZBtdgs6qjqgPLiJSO4Ck/9rLTA5Gk89c7uh0Z49c7a7nHR1oCiOSeeoJM
	6PtNjYBIzg6QsnAka+CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQo4M-0006iC-9j; Tue, 21 Apr 2020 08:15:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQo49-0006gU-NU
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:15:40 +0000
Received: by mail-wm1-x343.google.com with SMTP id x25so2530330wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 01:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7xjSknTeR+7dqcaL1YgejpgJ9/KujY8j8UEnyfLmZD4=;
 b=frOKGgAVIjbSzucTY8HiXqzPrWgYdihoiEtz+cb34v3+J49RpTLLTKTwBeXk+DnyE/
 Ma/xI/Oz4r+iM7CFvAgmw0X7Oa1CoDY3pQPLZWCm04SaG+jx1Cg8F8ipUTjca56HpLcP
 sqW3/+7LhmRxDOqO4/j0dRG2dGQhvnU1BAhRMGEYqTQqX/1dnb99c+ctJj7h0fXVuc6f
 B/5XyRppCG6V9Hs8TWKyfwNOYfNldnC2fjsFvYYbASsK8YajbRqqTQl1VOee2YmGjuVN
 DgzLhyyFVbu5ax5j4VzJ+uGJhqdBCMQbAETtVyt1n1J2iqSZmvbUoeKXPnVVc0XZIRHo
 DqrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7xjSknTeR+7dqcaL1YgejpgJ9/KujY8j8UEnyfLmZD4=;
 b=A5UKYiBSNOFSLMFy/o2eS97M9p7u1l7CJg/YO/rvI6oKPoOke+J8mvTtVi+Lobe4Up
 BK8AAVK86xwO9f1JGIx89AsRiff6mKgGnXPH3tNvedm/ekiC7YdftjlZIewsPoz4thgF
 CUGzKehZmuZ6bjcuWKLKdv5ZlNEq7+ovfSVBqw7GqFfJnVjtGgfldjYWrQLW8BLJitcr
 mV+ndB1ybSrESgAf0/vjJzLlvgQDa+IWwquKXgEzor1FywGefVe0vjonNYOTV/QAJ6g/
 PDWKBXe58QRka7tJ9Cq+R1SodHQNwRLxwZYX/3fIxkJoPDCF0x8strFXZt4vEmSa8/ax
 yuqg==
X-Gm-Message-State: AGi0Pubcth0iiee/tMlLDOHlluAUPsJVajjdbYPWIhhG4SdymjDyotv6
 1Bh11Ls1ukiWh+hl2IdnARZViy3RgOg=
X-Google-Smtp-Source: APiQypLAbrQ/7+vnxMSEVWZPMUZwhWOh+FsfXCIwjmuMJt8X2Ze0PcEBnGHrEyqo46iBVLy1lNevDA==
X-Received: by 2002:a1c:1d4b:: with SMTP id d72mr3484494wmd.19.1587456935761; 
 Tue, 21 Apr 2020 01:15:35 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:8985:83c2:22f1:8de3?
 ([2a01:e34:ed2f:f020:8985:83c2:22f1:8de3])
 by smtp.googlemail.com with ESMTPSA id k14sm2678325wrp.53.2020.04.21.01.15.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 01:15:35 -0700 (PDT)
Subject: Re: [PATCH v3 4/4] thermal: cpuidle: Register cpuidle cooling device
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
References: <20200414220837.9284-1-daniel.lezcano@linaro.org>
 <20200414220837.9284-4-daniel.lezcano@linaro.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <6b58035c-fe48-09ab-f042-729b07bcfec6@linaro.org>
Date: Tue, 21 Apr 2020 10:15:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200414220837.9284-4-daniel.lezcano@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_011538_297179_40E69A85 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: amit.kucheria@verdurent.com,
 "open list:CPU IDLE TIME MANAGEMENT FRAMEWORK" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>, rui.zhang@intel.com,
 "open list:CPUIDLE DRIVER - ARM PSCI" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIExvcmVuem8sIFN1ZGVlcCwKCm90aGVyIHBhdGNoZXMgb2YgdGhlIHNlcmllcyBhcmUgYWNr
ZWQgLyByZXZpZXdlZC4KCklmIHlvdSBhcmUgb2sgd2l0aCB0aGVzZSBjaGFuZ2VzLCBjb3VsZCB5
b3UgYWRkIHlvdXIgYWNrZWQtYnkgc28gSSBjYW4KbWVyZ2UgYWxsIHRoZSBzZXJpZXMgdmlhIHRo
ZSB0aGVybWFsIHRyZWU/CgpUaGFua3MKCiAgLS0gRGFuaWVsCgpPbiAxNS8wNC8yMDIwIDAwOjA4
LCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPiBUaGUgY3B1aWRsZSBkcml2ZXIgY2FuIGJlIHVzZWQg
YXMgYSBjb29saW5nIGRldmljZSBieSBpbmplY3RpbmcgaWRsZQo+IGN5Y2xlcy4gVGhlIERUIGJp
bmRpbmcgZm9yIHRoZSBpZGxlIHN0YXRlIGFkZGVkIGFuIG9wdGlvbmFsCj4gCj4gV2hlbiB0aGUg
cHJvcGVydHkgaXMgc2V0LCByZWdpc3RlciB0aGUgY3B1aWRsZSBkcml2ZXIgd2l0aCB0aGUgaWRs
ZQo+IHN0YXRlIG5vZGUgcG9pbnRlciBhcyBhIGNvb2xpbmcgZGV2aWNlLiBUaGUgdGhlcm1hbCBm
cmFtZXdvcmsgd2lsbCBkbwo+IHRoZSBhc3NvY2lhdGlvbiBhdXRvbWF0aWNhbGx5IHdpdGggdGhl
IHRoZXJtYWwgem9uZSB2aWEgdGhlCj4gY29vbGluZy1kZXZpY2UgZGVmaW5lZCBpbiB0aGUgZGV2
aWNlIHRyZWUgY29vbGluZy1tYXBzIHNlY3Rpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVs
IExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvY3B1
aWRsZS9jcHVpZGxlLWFybS5jICB8IDUgKysrKysKPiAgZHJpdmVycy9jcHVpZGxlL2NwdWlkbGUt
cHNjaS5jIHwgNSArKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jcHVpZGxlL2NwdWlkbGUtYXJtLmMgYi9kcml2ZXJzL2Nw
dWlkbGUvY3B1aWRsZS1hcm0uYwo+IGluZGV4IDllNTE1NmQzOTYyNy4uMjQwNmFjMGFlMTM0IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvY3B1aWRsZS9jcHVpZGxlLWFybS5jCj4gKysrIGIvZHJpdmVy
cy9jcHVpZGxlL2NwdWlkbGUtYXJtLmMKPiBAQCAtOCw2ICs4LDcgQEAKPiAgCj4gICNkZWZpbmUg
cHJfZm10KGZtdCkgIkNQVWlkbGUgYXJtOiAiIGZtdAo+ICAKPiArI2luY2x1ZGUgPGxpbnV4L2Nw
dV9jb29saW5nLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9jcHVpZGxlLmg+Cj4gICNpbmNsdWRlIDxs
aW51eC9jcHVtYXNrLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9jcHVfcG0uaD4KPiBAQCAtMTI0LDYg
KzEyNSwxMCBAQCBzdGF0aWMgaW50IF9faW5pdCBhcm1faWRsZV9pbml0X2NwdShpbnQgY3B1KQo+
ICAJaWYgKHJldCkKPiAgCQlnb3RvIG91dF9rZnJlZV9kcnY7Cj4gIAo+ICsJcmV0ID0gY3B1aWRs
ZV9jb29saW5nX3JlZ2lzdGVyKGRydik7Cj4gKwlpZiAocmV0KQo+ICsJCXByX2VycigiRmFpbGVk
IHRvIHJlZ2lzdGVyIHRoZSBpZGxlIGNvb2xpbmcgZGV2aWNlOiAlZFxuIiwgcmV0KTsKPiArCj4g
IAlyZXR1cm4gMDsKPiAgCj4gIG91dF9rZnJlZV9kcnY6Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Y3B1aWRsZS9jcHVpZGxlLXBzY2kuYyBiL2RyaXZlcnMvY3B1aWRsZS9jcHVpZGxlLXBzY2kuYwo+
IGluZGV4IGVkZDdhNTRlZjBkMy4uOGU4MDViZmY2NDZmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Y3B1aWRsZS9jcHVpZGxlLXBzY2kuYwo+ICsrKyBiL2RyaXZlcnMvY3B1aWRsZS9jcHVpZGxlLXBz
Y2kuYwo+IEBAIC05LDYgKzksNyBAQAo+ICAjZGVmaW5lIHByX2ZtdChmbXQpICJDUFVpZGxlIFBT
Q0k6ICIgZm10Cj4gIAo+ICAjaW5jbHVkZSA8bGludXgvY3B1aG90cGx1Zy5oPgo+ICsjaW5jbHVk
ZSA8bGludXgvY3B1X2Nvb2xpbmcuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2NwdWlkbGUuaD4KPiAg
I2luY2x1ZGUgPGxpbnV4L2NwdW1hc2suaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2NwdV9wbS5oPgo+
IEBAIC0zMDUsNiArMzA2LDEwIEBAIHN0YXRpYyBpbnQgX19pbml0IHBzY2lfaWRsZV9pbml0X2Nw
dShpbnQgY3B1KQo+ICAJaWYgKHJldCkKPiAgCQlnb3RvIG91dF9rZnJlZV9kcnY7Cj4gIAo+ICsJ
cmV0ID0gY3B1aWRsZV9jb29saW5nX3JlZ2lzdGVyKGRydik7Cj4gKwlpZiAocmV0KQo+ICsJCXBy
X2VycigiRmFpbGVkIHRvIHJlZ2lzdGVyIHRoZSBpZGxlIGNvb2xpbmcgZGV2aWNlOiAlZFxuIiwg
cmV0KTsKPiArCj4gIAlyZXR1cm4gMDsKPiAgCj4gIG91dF9rZnJlZV9kcnY6Cj4gCgoKLS0gCjxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20v
cGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3Jn
PiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
