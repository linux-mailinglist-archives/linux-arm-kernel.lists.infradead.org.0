Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9E61EC6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yu+jlNPk+II+A7FKqjCi2+speCQA8Xb0xhj5SOWBaU=; b=MaftfF8Jlrz1oW
	BEt7t15f3B4Ks88WlG6sA8BwZiD1biSIFZCwaOM/+DRmawIwOrIiCrkNccNVnEOISMzq40OxdEI55
	jzLOhsl9SpYidX1yI+HXzU29A5x6lQovLRtV8Rd3NGXrRQGlw1ad66fpB8L7c2+J6DEXSyaMhPLvj
	1ht8SbOkYflzU48wYEjCl/d3AAVWUmxjeckwlcOiSNUYORRqTJvp1z66AjyLjtEtdY8HtQFBK3TSW
	X4pgVFP8XOnBFEhrYdlxmHHuyi7pucqx9bujHU83feYpbOWhffm3LSNP8NzrBVhmFnWxZ/j9qUhe1
	vw7wgt+BZbJN20sW+IhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrYE-0005nn-5W; Wed, 15 May 2019 10:54:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrY6-0005nP-6O
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:54:15 +0000
Received: by mail-wm1-x344.google.com with SMTP id y3so2168459wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 03:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yCGaHsCBgstblM6mBuRdN67cN8JHM7IAOcSPPHfwyxk=;
 b=ycvY7sZwj/lO/v1FWXvxEh3TFW351keKaPN0WjyORa91GJS7lYUvz9ErzxnVOWcmNu
 Hb3lLuRHWl2koQYmjB5BVSP23O8rstj2YEiT464J3sf7p0fmLS5eDvpYQ+vhD2Wcd3KB
 +ftoa7BUra3VE+K7xh/0wGwlIhCm8FaSfACLmc/CV2C/BKjJUa98HBSik+sJSKOSUm6Z
 n5+UkSOgBN5TCCMUzvuWnFdzw7fZ/Avp7d8gmAb8uRJSTrfSwjp1BV/iVbDxg1coEVtZ
 Ojz9DrV4/06srKWY2PE3ywMKzf74iNoTBcJvMNmUmvICDM/bck3Wld9LznaGQRjEAKap
 a5GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yCGaHsCBgstblM6mBuRdN67cN8JHM7IAOcSPPHfwyxk=;
 b=Ljsavop2XRsmr/PMNQQLv3N57yoFhvD07EvNyAjr7EkhRWjJrYcApSH0GjRLWhScXv
 0b4Vyus28u7/yxQF0zp6XbyUrBIKWYmY33igrdKs+TCrr5hQCS11JpsBpzpIaESdreYj
 M9cJgvnfftNNSK3NTk7HFwxjKupP8Mb3vCjuQn7X75+FHxO58o7wI7z7mwEM2GvQkrW/
 f2dwm2mjhzxOJmVvprP0xlMV3LD1Op3aCzuKaJ9miVlaBZ5p8a2YzyJH9TlaBWj9sxIh
 LIe0x3HmBxv62h2zj2gnoq50IrDCNNRRQGXEhd/SZPTys9AGzUBNOSsIC3jBwCnYK+0v
 yWuQ==
X-Gm-Message-State: APjAAAX4gxEIIqaYYTbDbqK4rLOzJclDZENCGUAfhLFZTnPuThNiHuA5
 H6JFhkdUk6u3Z3rZrjdkq4kVgQexJwM=
X-Google-Smtp-Source: APXvYqzD3cJ6A0k7/klH/RClkLZ4g1NFiBt0lsDFFnyPi3JyILtCZkiLU9LHGjDbYsOjgC3ryTj9BQ==
X-Received: by 2002:a7b:ce03:: with SMTP id m3mr21051346wmc.99.1557917652174; 
 Wed, 15 May 2019 03:54:12 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id y17sm1691446wrp.70.2019.05.15.03.54.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 03:54:11 -0700 (PDT)
Subject: Re: [PATCH v4 2/3] PM / EM: Expose perf domain struct
To: Quentin Perret <quentin.perret@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
References: <20190515082318.7993-1-quentin.perret@arm.com>
 <20190515082318.7993-3-quentin.perret@arm.com>
 <0ced18eb-e424-fe6b-b11e-165a3c108170@linaro.org>
 <20190515091658.sbpg6qiovhtblqyr@queper01-lin>
 <698400c0-e0a4-4a86-b9df-cdb9bd683c0f@linaro.org>
 <20190515100748.q3t4kt72h2akdpcs@queper01-lin>
 <cf1474cb-7e31-7070-b988-a0c4d3f6f081@linaro.org>
 <20190515102200.s6uq63qnwea6xtpl@vireshk-i7>
 <20190515104043.vogspxgkapp6qsny@queper01-lin>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <b7e91d70-cd16-791c-94e1-3667ff264e49@linaro.org>
Date: Wed, 15 May 2019 12:54:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515104043.vogspxgkapp6qsny@queper01-lin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_035414_234185_E098D8BE 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pm@vger.kernel.org, rjw@rjwysocki.net, amit.kachhap@gmail.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 mka@chromium.org, catalin.marinas@arm.com, rui.zhang@intel.com,
 javi.merino@kernel.org, ionela.voinescu@arm.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTUvMDUvMjAxOSAxMjo0MCwgUXVlbnRpbiBQZXJyZXQgd3JvdGU6Cj4gT24gV2VkbmVzZGF5
IDE1IE1heSAyMDE5IGF0IDE1OjUyOjAwICgrMDUzMCksIFZpcmVzaCBLdW1hciB3cm90ZToKPj4g
T24gMTUtMDUtMTksIDEyOjE2LCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPj4+IFZpcmVzaCB3aGF0
IGRvIHlvdSB0aGluayA/Cj4+Cj4+IEkgYWdyZWUgd2l0aCB5b3VyIGxhc3Qgc3VnZ2VzdGlvbnMu
IFRoZXkgZG8gbWFrZSBzZW5zZS4KPiAKPiBHb29kIDotKQo+IAo+IFNvLCBGV0lXLCB0aGUgYmVs
b3cgY29tcGlsZXMgdy8gb3Igdy9vIFRIRVJNQUxfR09WX1BPV0VSX0FMTE9DQVRPUi4gSSdsbAo+
IHRlc3QgaXQgYW5kIGNsZWFuIGl0IHVwIHNvbWUgbW9yZSBhbmQgcHV0IGl0IGFzIHBhdGNoIDEg
aW4gdGhlIHNlcmllcyBpZgo+IHRoYXQncyBPSy4KPiAKPiBUaGFua3MsCj4gUXVlbnRpbgo+IAo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvY3B1X2Nvb2xpbmcuYyBiL2RyaXZlcnMv
dGhlcm1hbC9jcHVfY29vbGluZy5jCj4gaW5kZXggZjdjMWY0OWVjODdmLi5lZTQzMTg0OGVmNzEg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy90aGVybWFsL2NwdV9jb29saW5nLmMKPiArKysgYi9kcml2
ZXJzL3RoZXJtYWwvY3B1X2Nvb2xpbmcuYwo+IEBAIC01OCw3ICs1OCw5IEBACj4gICAqLwo+ICBz
dHJ1Y3QgZnJlcV90YWJsZSB7Cj4gICAgICAgICB1MzIgZnJlcXVlbmN5OwoKSSBzdXNwZWN0IHdl
IHdpbGwgaGF2ZSBhIHByb2JsZW0gaGVyZSBhcyBjcHVmcmVxX3NldF9jdXJfc3RhdGUgdXNlcyB0
aGUKZnJlcXVlbmN5IGFuZCB3aGVuIHN3aXRjaGluZyB0byBFTSwgd2Ugd2lsbCBzdGlsbCBuZWVk
IGEgZnJlcSB0YWJsZS4KCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8
aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8v
dHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
