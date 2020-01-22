Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BC9145A56
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 17:55:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5jQ9L+jDYCNV14Jz536/MH471/OBQRDLe93JuAnS+0=; b=ZQ990RbWUAcdrp
	Q2NMqqKe9pj8NZCSZQxucErbwCqIqC2J0Hvi7HGs8UgR3qC6fUrfzDSjs34Hp5cPlAXSNdeX8uH+H
	F5J/gKmMyQixab4g3fmJwjRGzIUm6Ahk6d8vQndF6XW1dol6ONruhvKhuJ/4YTtJ7DBnPqPuRNfxh
	hbFRqWjS/iJkizYGc6a+yrMbbtGVuCgUBy0DJYeahhgX7LXJGTJpkP+r8EsYt3cJMnfMad+C1rn5U
	oT2uLRUwH7PXSIQtjOkHiA6M4FjjUTt3NoNXuygURoikGdUDhGJH9L6ltsyoWuRR7AFYnm3AYfaWh
	GiFTA30dpnJypNRpxJTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuJHj-0000Oi-4h; Wed, 22 Jan 2020 16:55:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuJHU-0008Dv-D9
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 16:55:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so8119954wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 08:55:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DM1d73/VoF6vIcU47F5e8EsG7Wr6ebQt+4pVusl9w1Y=;
 b=vMRe/fAEtTSfL2cR5LPkRGc+1SQszNAIpIQ4UnKHnDnqxHeGVelwMucGC4rrO7n4db
 R5c1YaczIfS0lC8A6/4Xox1jdfI0LDiLfWukgKL2yVP6qKJDnGmpgv2F91PCauFNjNI2
 t0T7ZWqStLxb6dAS2Ni37KgdYqkmhXO8wZ5KSy5bAqnE5/RKRHyeDhoO1lhEqm94wXws
 UtaHkVzggIlZoc+chhb5jinfYgICgzEir+dJ8I4PGh+Sk4ZhAE9sjX54aTS7u7JHbXK/
 vUvlqgIPwucpfrz5/99La2K2aJqLzYCMrDDxlFrLbzhsJ05cMvpDZoQFOGFJXIRrpAR6
 /1AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DM1d73/VoF6vIcU47F5e8EsG7Wr6ebQt+4pVusl9w1Y=;
 b=HVvHdBlPNJHYD80NlnAtrJ8Biimp0LAFpi0HOhlxFy+M8kiRwSB5jNirJBjpRoxUoy
 PUairl+Ehr60P0pQ60WBwBvf0bxlbpm+jtJLXYUgQxOHr3cFCJTcW6M6r+izqnguihP2
 EoAeKIQHjGfXGzxyaQJqaEsH/6XU4ZDXskS6qd7LMp9vCUsLHFvVmrjyI+LKmsp8YdtR
 egOCmGZsSDXnb3BPkxnb4GyXmDDqAWThMy9TMTkgKpZbjEM3bbTzqSA/sg7di11p8/Pl
 ADt0RL7IhKn8EDaOcRx4rcJXiVo5nvjQEY72HNGCrhdfKki3r2sCxHsIFO1jSN9ko/BB
 5R6g==
X-Gm-Message-State: APjAAAWnw57ZsylniT/UJys9AZ8jYqCL5fLj6UrfTk+TOEmE8jHYFW8a
 X0cy2LmOA2uZw3g1cCHnLWpK9w==
X-Google-Smtp-Source: APXvYqx83qjv8lgIRz1T8W3VPyOCHXAj3czhH4MS6m3/mkUBnDcXqw3qig4Pczf6oz2NuqtJJW9X8A==
X-Received: by 2002:a5d:5234:: with SMTP id i20mr12869805wra.403.1579712097436; 
 Wed, 22 Jan 2020 08:54:57 -0800 (PST)
Received: from [10.44.66.8] ([212.45.67.2])
 by smtp.googlemail.com with ESMTPSA id w8sm5276922wmm.0.2020.01.22.08.54.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jan 2020 08:54:56 -0800 (PST)
Subject: Re: [RFC PATCH v3 4/7] arm: dts: exynos: Add interconnect bindings
 for Exynos4412
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20191220115653.6487-1-a.swigon@samsung.com>
 <CGME20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9@eucas1p1.samsung.com>
 <20191220115653.6487-5-a.swigon@samsung.com>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=georgi.djakov@linaro.org; prefer-encrypt=mutual; keydata=
 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
 KEmKjLDvB0pePJkdTw==
Message-ID: <747a1c94-8eee-f46a-fcc7-d111cd9df70d@linaro.org>
Date: Wed, 22 Jan 2020 18:54:54 +0200
MIME-Version: 1.0
In-Reply-To: <20191220115653.6487-5-a.swigon@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_085505_168021_B4312D31 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJ0dXIsCgpUaGFuayB5b3UgZm9yIHlvdXIgY29udGludW91cyB3b3JrIG9uIHRoaXMuCgpP
biAxMi8yMC8xOSAxMzo1NiwgQXJ0dXIgxZp3aWdvxYQgd3JvdGU6Cj4gVGhpcyBwYXRjaCBhZGRz
IHRoZSBmb2xsb3dpbmcgcHJvcGVydGllcyB0byB0aGUgRXh5bm9zNDQxMiBEVDoKPiAgIC0gZXh5
bm9zLGludGVyY29ubmVjdC1wYXJlbnQtbm9kZTogdG8gZGVjbGFyZSBjb25uZWN0aW9ucyBiZXR3
ZWVuCj4gICAgIG5vZGVzIGluIG9yZGVyIHRvIGd1YXJhbnRlZSBQTSBRb1MgcmVxdWlyZW1lbnRz
IGJldHdlZW4gbm9kZXM7CgpJcyB0aGlzIERUIHByb3BlcnR5IGRvY3VtZW50ZWQgc29tZXdoZXJl
PyBJIGJlbGlldmUgdGhhdCB0aGVyZSBzaG91bGQgYmUgYSBwYXRjaAp0byBkb2N1bWVudCBpdCBz
b21ld2hlcmUgaW4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzLyBiZWZvcmUgdXNp
bmcgaXQuCgpUaGFua3MsCkdlb3JnaQoKPiAgIC0gI2ludGVyY29ubmVjdC1jZWxsczogcmVxdWly
ZWQgYnkgdGhlIGludGVyY29ubmVjdCBmcmFtZXdvcmsuCj4gCj4gTm90ZSB0aGF0ICNpbnRlcmNv
bm5lY3QtY2VsbHMgaXMgYWx3YXlzIHplcm8gYW5kIG5vZGUgSURzIGFyZSBub3QKPiBoYXJkY29k
ZWQgYW55d2hlcmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29u
QHNhbXN1bmcuY29tPgo+IC0tLQo+ICBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9p
ZC1jb21tb24uZHRzaSB8IDUgKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1j
b21tb24uZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5k
dHNpCj4gaW5kZXggNGNlM2Q3N2E2NzA0Li5kOWQ3MGVhY2ZjYWYgMTAwNjQ0Cj4gLS0tIGEvYXJj
aC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kKPiArKysgYi9hcmNo
L2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaQo+IEBAIC05MCw2ICs5
MCw3IEBACj4gICZidXNfZG1jIHsKPiAgCWV4eW5vcyxwcG11LWRldmljZSA9IDwmcHBtdV9kbWMw
XzM+LCA8JnBwbXVfZG1jMV8zPjsKPiAgCXZkZC1zdXBwbHkgPSA8JmJ1Y2sxX3JlZz47Cj4gKwkj
aW50ZXJjb25uZWN0LWNlbGxzID0gPDA+Owo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICAK
PiBAQCAtMTA2LDYgKzEwNyw4IEBACj4gICZidXNfbGVmdGJ1cyB7Cj4gIAlleHlub3MscHBtdS1k
ZXZpY2UgPSA8JnBwbXVfbGVmdGJ1c18zPiwgPCZwcG11X3JpZ2h0YnVzXzM+Owo+ICAJdmRkLXN1
cHBseSA9IDwmYnVjazNfcmVnPjsKPiArCWV4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50LW5vZGUg
PSA8JmJ1c19kbWM+Owo+ICsJI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKPiAgCXN0YXR1cyA9
ICJva2F5IjsKPiAgfTsKPiAgCj4gQEAgLTExNiw2ICsxMTksOCBAQAo+ICAKPiAgJmJ1c19kaXNw
bGF5IHsKPiAgCWV4eW5vcyxwYXJlbnQtYnVzID0gPCZidXNfbGVmdGJ1cz47Cj4gKwlleHlub3Ms
aW50ZXJjb25uZWN0LXBhcmVudC1ub2RlID0gPCZidXNfbGVmdGJ1cz47Cj4gKwkjaW50ZXJjb25u
ZWN0LWNlbGxzID0gPDA+Owo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICAKPiAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
