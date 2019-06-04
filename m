Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F0B33EA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 07:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRQlDQTCtZaLpAv9R/QSBipeQptPo6eSyx6pUO4gfCU=; b=Ldks4bW7gXGbHD
	IK3HZkhtgGbJHkabpgOoYI4qFf1ATN1jL/0rtTYXrGZmn+xk6xRicH0FRtq/YDgKqaPe/2PcHqRxE
	iv5u5ke9UdAYgzfvfxGmLlQL8y7L6pl6Z7VL0TCRtOtQUOQaLXreFvUS+uS4nudcSfcj0ys1JPLWx
	xa3BlBa4IrZhKZrdSvX1Uurv1lJnqHofmCML4cX/zeD8qJg668lvG6CuGMD/TknMFxyjXJStExxr+
	TE2JhHbUT4G1UWyZ4FYF5NuIUCET07L3rMFJ4a5EkCO7W2K0IHB3HMqdR2ymjGcRHKGq1unfo96zj
	jT/gETrABpccZETZmYNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY2Mt-0003EL-RZ; Tue, 04 Jun 2019 05:52:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY2Mn-0003Ds-6f
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 05:52:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id 22so5066495wmg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 22:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=B8N80i3o2BCitHnIfK72oQdUy6Tf9WHoVrh9cpcWWcA=;
 b=eU/mijnMoIlO8x7w0xdpDP9GasPW/fCieUOacOmK/+6NCkpclx3xcp+nG9WDlpow3m
 MryGb/8a9eyKoD00HgoNJwOn45hdmafOiJMRdtXWlEoGBCY6lxnGENc9nQq55QYAhRZC
 EmjJ03GvxzacgGBuUlBH5dJ0980mLT8AgojzWRMqgcB9wvQwJSW+DhKdRbXQ53mlqtFo
 xzLLMm0EeZGuOXsl0JGCqT93Rz8E1WeVnn9ZymrwvWjwl/wXnNoGrfZ6TvXVkvcVXiXi
 +RjQzIwmONzr7YaSOuyrAbEcYEXOSSrsHj760t33vIbF7r2q3QTsIeWjxroh18LBwACV
 35Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=B8N80i3o2BCitHnIfK72oQdUy6Tf9WHoVrh9cpcWWcA=;
 b=WY1qvZKJ3BAltWgCXM7rG12daPbWbxz+39xBMUg8enuA3ZfuVY6URSD9KSGh8yhdML
 dArorhpZGnU5h2i0EX8K2VbSjFZcUFGs9yYbNqMvPpzxEATj6Hs/ZjegoNp6qGf03dCY
 mTqBHiq/OmYp+vIuoTgTmuMZylccG6x9yfKhx68PY0s4NDlyEvPf05Ttdenlx39Z6FEr
 XVydHufR5636A/cQWT65ncf8jnSE54PJdPl6y5LLIF8HdJyzLYvM70WwXK/IIRnotTca
 8CG1SE99Hx5pcMPQjxqgcU0q1GZiYmIkKTPHfbik1YrEiK0eLWfLMmt5OJeUzNd41i/n
 22+Q==
X-Gm-Message-State: APjAAAVlqGuLBi93dJ9uOIMl/aoCu1+QlcOZBMUaHDwScl5lsfomkg+r
 fWZCLpLJtGTdrNS2BXffFUSdUA==
X-Google-Smtp-Source: APXvYqwr2wzlBzYP/7iXdJ0osnRyWLbre3KNcfOA3JX2W3Up63PHXvjWANqDVgspMzcLpcXjDEFu3w==
X-Received: by 2002:a1c:f910:: with SMTP id x16mr4456205wmh.132.1559627529981; 
 Mon, 03 Jun 2019 22:52:09 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id f26sm8548008wmh.8.2019.06.03.22.52.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 22:52:09 -0700 (PDT)
Subject: Re: [PATCH 1/3] clocksource/arm_arch_timer: mark arch_counter_get_*
 as notrace
To: Marc Zyngier <marc.zyngier@arm.com>,
 Anders Roxell <anders.roxell@linaro.org>, mark.rutland@arm.com,
 tglx@linutronix.de
References: <20190603091256.25012-1-anders.roxell@linaro.org>
 <c9197fdd-6b3b-d92b-055a-756ba3da44c2@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <f454508f-f6b6-48c3-539a-9c1776952f19@linaro.org>
Date: Tue, 4 Jun 2019 07:52:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <c9197fdd-6b3b-d92b-055a-756ba3da44c2@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_225213_255701_A87AFCCC 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mingo@redhat.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kZXJzLAoKdGhhbmtzIGZvciB5b3VyIHBhdGNoLiBBcyBtZW50aW9uZWQgYnkgTWFyayBJ
IGFscmVhZHkgYXBwbGllZCB0aGlzIGZpeApmcm9tIEp1bGllbiBUaGllcnJ5LgoKIC0tIERhbmll
bAoKCk9uIDAzLzA2LzIwMTkgMTE6MjMsIE1hcmMgWnluZ2llciB3cm90ZToKPiBIaSBBbmRlcnMs
Cj4gCj4gCj4gT24gMDMvMDYvMjAxOSAxMDoxMiwgQW5kZXJzIFJveGVsbCB3cm90ZToKPj4gV2hl
biBDT05GSUdfRlVOQ1RJT05fR1JBUEhfVFJBQ0VSIGlzIGVuYWJsZWQgd2UgZW5kIHVwIGluIHRo
aXMgY2lyY3VsYXIKPj4gY2FsbCB0cmFjZSBzaW5jZSBmdW5jdGlvbiBhcmNoX2NvdW50ZXJfZ2V0
X2NudHZjdCgpIGlzbid0IG1hcmtlZCB3aXRoIG5vCj4+IHRyYWNlOgo+Pgo+PiBbICAgMTcuOTE0
OTM0XSBDYWxsIHRyYWNlOgo+PiBbICAgMTcuOTE1MjExXSAgZnRyYWNlX3JldHVybl90b19oYW5k
bGVyKzB4MTk0LzB4Mjg4Cj4+IFsgICAxNy45MTU1NTFdICByZXR1cm5fdG9faGFuZGxlcisweDFj
LzB4MzgKPj4gWyAgIDE3LjkxNTg1NV0gIHRyYWNlX2Nsb2NrX2xvY2FsKzB4MzgvMHg4OAo+PiBb
ICAgMTcuOTE2MTU5XSAgZnVuY3Rpb25fZ3JhcGhfZW50ZXIrMHhmMC8weDI1OAo+PiBbICAgMTcu
OTE2NDY1XSAgcHJlcGFyZV9mdHJhY2VfcmV0dXJuKzB4NjAvMHg5MAo+PiBbICAgMTcuOTE2Nzcy
XSAgZnRyYWNlX2dyYXBoX2NhbGxlcisweDFjLzB4MjQKPj4gWyAgIDE3LjkxNzA5M10gIGFyY2hf
Y291bnRlcl9nZXRfY250dmN0KzB4MTAvMHgzMAo+PiBbICAgMTcuOTE3NDE3XSAgc2NoZWRfY2xv
Y2srMHg3MC8weDIxOAo+PiBbICAgMTcuOTE3NzIzXSAgdHJhY2VfY2xvY2tfbG9jYWwrMHgzOC8w
eDg4Cj4+IFsgICAxNy45MTgwMjZdICBmdW5jdGlvbl9ncmFwaF9lbnRlcisweGYwLzB4MjU4Cj4+
IFsgICAxNy45MTgzMzJdICBwcmVwYXJlX2Z0cmFjZV9yZXR1cm4rMHg2MC8weDkwCj4+IFsgICAx
Ny45MTg2NDldICBmdHJhY2VfZ3JhcGhfY2FsbGVyKzB4MWMvMHgyNAo+PiBbICAgMTcuOTE4OTYz
XSAgYXJjaF9jb3VudGVyX2dldF9jbnR2Y3QrMHgxMC8weDMwCj4+IFsgICAxNy45MTkyODZdICBz
Y2hlZF9jbG9jaysweDcwLzB4MjE4Cj4+Cj4+IFJld29yayBzbyB0aGF0IGZ1bmN0aW9uIGFyY2hf
Y291bnRlcl9nZXRfY250dmN0KCkgaXMgbWFya2VkIHdpdGggbm90cmFjZS4KPj4KPj4gRml4ZXM6
IDBlYTQxNTM5MGNkMyAoImNsb2Nrc291cmNlL2FybV9hcmNoX3RpbWVyOiBVc2UgYXJjaF90aW1l
cl9yZWFkX2NvdW50ZXIgdG8gYWNjZXNzIHN0YWJsZSBjb3VudGVycyIpCj4+IFNpZ25lZC1vZmYt
Ynk6IEFuZGVycyBSb3hlbGwgPGFuZGVycy5yb3hlbGxAbGluYXJvLm9yZz4KPiAKPiBUaGlzIGhh
cyBhbHJlYWR5IGJlZW4gcXVldWVkIGJ5IERhbmllbCwgSSBiZWxpZXZlIFsxXS4KPiAKPiBbMV0g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8xNTU4Njg5MDI1LTUwNjc5LTEtZ2l0LXNlbmQt
ZW1haWwtanVsaWVuLnRoaWVycnlAYXJtLmNvbS8KCgoKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFy
by5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MK
CkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBG
YWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0
dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
