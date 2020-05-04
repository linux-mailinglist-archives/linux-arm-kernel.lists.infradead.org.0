Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2F91C43A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 20:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9mkWb4YYOQrlaP1zMiA/QLA7pfj7bfL1GJPrKG/Y1Pc=; b=q2MeP5kBqx/B0h
	vAKoSyV/7LcpEuNurAm8LfE8eP1QZ8RLB0ytc1uzsa2Az07hqwyRRnnnTcxoyOly2OGjegCs6Bpd0
	hmQ/3OzrGv59vOVCgpW/dsCQMdsdSfPg7B7qz7yYe2tj+DGrzq544hIIZ5EEKJFe2tme6kZuoArD+
	Hu1RBQRUh+mizzUBeW9k/tZYgmxZr2O775mgb+xddM3tjSFb7herZYlrwW5Ffni836CgG6CGu4Wyd
	9POhV4k2J7dOoX9+b4NPqTTJjgeT7AlNQ5ba5Uo3LZS/zuAfIjd8zeAVxr2FoBzr18+NFH1BrG6G/
	aq4PTbDxhT2B2FhyeLyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfO7-0003kx-M4; Mon, 04 May 2020 18:00:19 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfNu-0002W9-5K
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 18:00:08 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so473062wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 11:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qbmRVkJVnDjRqhdFY+l/ig1wTrc758l+/8RY3n4wjFc=;
 b=PrJGfQ5M+WmbbFqCXZZjiflyl42zUUO4bLQu04MZySO3vfwbQdagYqYvMO3ZIrSDhJ
 sAN7Jsw5y4Mza7k/s9JBHHJSP2HPGKEH2TetQbSDCpiBPhTD6wk2+F9hXVZBP9RVntHX
 AW+BB6OaY2nEIZ0A4HTMAHB5Embv9TjRxxTo5Rh8NUgzPcL8owogcYqYQGer8s5ff1vX
 KdAmLsOiE5kSh36ooaNRl3L8gIi3GTtH4wn5CesKc255fvNyK37iyO00+PR/Z/Iss5xX
 m32segT/SepHrM+2ty1btGlebX9G3wH2nCvorA4B1gQwxr4Pt8V/KBw3cYw3545uKHQm
 JkBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qbmRVkJVnDjRqhdFY+l/ig1wTrc758l+/8RY3n4wjFc=;
 b=EFO0IXOvsL16a1Byf1BGbEH/Jkb1KRlmYkTM3mmr+XpQ60DqeJdXo4TO/G8JFdVFhd
 A7WPHsqxIZS6tY7g8EpNtyDY0GQZzxOgxnntWccQ1djrdbIjDv0oxBY124dHqkToFf8M
 ZvC4jKFMK91EcOGba3qVc3EVIjdZzXmP7pOnkBG+WUkSNb6zoW/LeBw7kYyYNwjhG+vM
 eOtvCtcOcN2aQSlrWBrxKyhKj7M4ouQdPd35bU5Wn+SpSgt1DTqn6rbp1/hkkPWe4AxW
 dWrjn0ZY8w6i3eNhOncglLGrXv05wUCS6Z7oBcfpjjyafQyXnnq9Vfy0k8MTRaTX2Guy
 aI5Q==
X-Gm-Message-State: AGi0PuZ81gd1Is0YgW9vzTxTBA59r1xGF/q67ACMZ7x/kJBzmqidUGFN
 W7Zp0AiL9LvEZLY266jxCDu84jWdOlw=
X-Google-Smtp-Source: APiQypIIewN+KD0rmmmMDEFgyICcmHYy6pzcXOsTGiaXb7cTDdxUe2Z9XD2ayjd0GNyIyyvA4SuvFA==
X-Received: by 2002:a05:600c:1008:: with SMTP id
 c8mr15239758wmc.14.1588615203806; 
 Mon, 04 May 2020 11:00:03 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:1938:2e25:c14c:a06e?
 ([2a01:e34:ed2f:f020:1938:2e25:c14c:a06e])
 by smtp.googlemail.com with ESMTPSA id w83sm267860wmb.37.2020.05.04.11.00.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 11:00:02 -0700 (PDT)
Subject: Re: [PATCH v4 4/4] thermal: cpuidle: Register cpuidle cooling device
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Lukasz Luba <lukasz.luba@arm.com>, rui.zhang@intel.com,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <20200429103644.5492-1-daniel.lezcano@linaro.org>
 <20200429103644.5492-4-daniel.lezcano@linaro.org>
 <99b3bc79-f48a-3d51-a8ae-8b9ca4856d36@arm.com>
 <04b5da25-d591-b08a-e554-6e084d7ea908@linaro.org>
Message-ID: <f3cee834-4946-10bd-a504-df6cf62d9e90@linaro.org>
Date: Mon, 4 May 2020 20:00:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <04b5da25-d591-b08a-e554-6e084d7ea908@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_110006_217148_CA54CC06 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:CPU IDLE TIME MANAGEMENT FRAMEWORK" <linux-pm@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:CPUIDLE DRIVER - ARM PSCI" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpLAoKT24gMjkvMDQvMjAyMCAyMzowMSwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gT24gMjkv
MDQvMjAyMCAyMjowMiwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDQvMjkvMjAgMTE6
MzYgQU0sIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+Pj4gVGhlIGNwdWlkbGUgZHJpdmVyIGNhbiBi
ZSB1c2VkIGFzIGEgY29vbGluZyBkZXZpY2UgYnkgaW5qZWN0aW5nIGlkbGUKPj4+IGN5Y2xlcy4g
VGhlIERUIGJpbmRpbmcgZm9yIHRoZSBpZGxlIHN0YXRlIGFkZGVkIGFuIG9wdGlvbmFsCj4+Pgo+
Pj4gV2hlbiB0aGUgcHJvcGVydHkgaXMgc2V0LCByZWdpc3RlciB0aGUgY3B1aWRsZSBkcml2ZXIg
d2l0aCB0aGUgaWRsZQo+Pj4gc3RhdGUgbm9kZSBwb2ludGVyIGFzIGEgY29vbGluZyBkZXZpY2Uu
IFRoZSB0aGVybWFsIGZyYW1ld29yayB3aWxsIGRvCj4+PiB0aGUgYXNzb2NpYXRpb24gYXV0b21h
dGljYWxseSB3aXRoIHRoZSB0aGVybWFsIHpvbmUgdmlhIHRoZQo+Pj4gY29vbGluZy1kZXZpY2Ug
ZGVmaW5lZCBpbiB0aGUgZGV2aWNlIHRyZWUgY29vbGluZy1tYXBzIHNlY3Rpb24uCj4+Pgo+Pj4g
U2lnbmVkLW9mZi1ieTogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+
Cj4+PiAtLS0KPj4+IMKgIC0gVjQ6Cj4+PiDCoMKgwqAgLSBEbyBub3QgY2hlY2sgdGhlIHJldHVy
biB2YWx1ZSBhcyB0aGUgZnVuY3Rpb24gZG9lcyBubyBsb25nZXIKPj4+IHJldHVybiBvbmUKPj4+
IC0tLQo+IAo+IFsgLi4uIF0KPiAKPj4gUmV2aWV3ZWQtYnk6IEx1a2FzeiBMdWJhIDxsdWthc3ou
bHViYUBhcm0uY29tPgo+IAo+IFRoYW5rcyBMdWthc3ogZm9yIHRoZSByZXZpZXcuCj4gCj4gUmFm
YWVsLCBhcyBMb3JlbnpvIGFuZCBTdWRlZXAgYXJlIG5vdCByZXNwb25zaXZlLCBjb3VsZCB5b3Ug
Y29uc2lkZXIgYWNrCj4gdGhpcyBwYXRjaCBzbyBJIGNhbiBtZXJnZSB0aGUgc2VyaWVzIHRocm91
Z2ggdGhlIHRoZXJtYWwgdHJlZSA/CgpHZW50bGUgcGluZyAuLi4gU3VkZWVwLCBMb3JlbnpvIG9y
IFJhZmFlbCA/CgpUaGFua3MKCiAgLS0gRGFuaWUKCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5v
cmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZv
bGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNl
Ym9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6
Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
