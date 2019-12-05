Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216D01144F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 17:39:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WrrCYQyEUG2GBXPe1PANEF9VnASfA1vnozqRDxGWIfU=; b=gHTw82EhA8UyEX
	lE8/7Sra4HkgGHRRfBFZKF/9WstxElZL+xrvMIrzOL8XJe2NcGA0+r3umn+rEiKJc6ffembVp1slx
	wA5788ci6Bf8zGLoyrk1tgiqCKjP4CrkApbGmZA22TpdwEzN8YZAkPvzaiF5LizFcmTJxSlrK7Cy4
	jWpdJqvvKzJdX5oe2TrZjiF+h+e7x/xCOi/H0lBX2Sog2PzUS3egVIE3kmBV5UVUf51+0nxKnMSD8
	PhkUbXlX4Em723Ux+Bfiwe3PwVUWyys2QyGFra8UgPH3rhwx74mqnESR5HYAQQO1710vzD7flAVWQ
	hvJ4UXoFtO/QDXqqZtXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icu9h-0004Ex-J4; Thu, 05 Dec 2019 16:39:05 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icu9Y-0004E8-NL
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 16:38:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so4453878wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 08:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+rPpV85Ioqv2xtks5OONWqK+n5i6dViTlGicJhAqFfY=;
 b=yRW0ila80HkXR5BZvLIDkxLL+sEVXfHq8Eg/gymPOM+KCLryjWVyIq9c1mgSciZMwv
 q2GTER2tsekvw/Etk/BArSlSi1jE7iIvOMh6nMX8dDhSBD5algPqnoUAliQXfkDguyZq
 tWAPYUBkr1m7+d4QKUfITKjxuBFP1xaF1k2ouuBe9pzosSX2ekntzu0YuIHAgP0ZfVrI
 CmPKWJD+D+wl5h30x64ThbDDKYSegClcXt3AdCZ3VuxVB3wVCZdl3AkU56+kFYb6mnFD
 xGAg5JYfW3gNngyBju1j5prq0ua1kprxlragbb+mql8f9ewVpoajHXoWUO40zHMxnZzf
 VuqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=+rPpV85Ioqv2xtks5OONWqK+n5i6dViTlGicJhAqFfY=;
 b=C72LrLClwnEkswGN/khPS6SxxpmrYErEzYgR50eqSstFi6jlqMue4IsZlqxWqz6+QH
 qHSLpxFurmqmiXmQ+uaErAodjgv2czMJf2YgENZBfRaEjt1xvqzKIDpWUHplN/THTOcH
 pNug+VKy74EaPsugDOmvqLg69hrMBXrTTwz6CJqFaL8qhA0JjT1/mKfhU89/0akdsKVN
 w6jv76AghqrOUOXUWgZ+QmGohYJJCYba1QLVu5LMqujxWtULqYI2X33ZMX7gCcPrtI3o
 Ukvh2ErPrwGO0Fx/vUwTtXA4qpka/U3BVw2KSPWeKsLj2WmTqfWb6gTy07ZGsab9COAu
 obBg==
X-Gm-Message-State: APjAAAX/XMX/b98TQzAPsF7J0K3Hi8IySg+3I1btnCWLlMXntTE8vjmL
 csnsNC0DL3Dk1dDjl1ZV3ZGlSA==
X-Google-Smtp-Source: APXvYqwyMoJrdKNhs+fUTVnbzv+O/QQJtlYzjU+/jSJsY2EZgVlKFOJ3IJS6GGGHadEc2+MywNCOKA==
X-Received: by 2002:adf:f80c:: with SMTP id s12mr10956740wrp.1.1575563932666; 
 Thu, 05 Dec 2019 08:38:52 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:24c3:ebb3:9dd5:81c6?
 ([2a01:e34:ed2f:f020:24c3:ebb3:9dd5:81c6])
 by smtp.googlemail.com with ESMTPSA id m8sm417890wmf.8.2019.12.05.08.38.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 08:38:51 -0800 (PST)
Subject: Re: [PATCH v2 0/8] Add Mediatek thermal dirver and dtsi
To: "michael.kao" <michael.kao@mediatek.com>, Zhang Rui
 <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, hsinyi@chromium.org
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <98c34033-91e0-ce9e-3245-c9b8ed2745f7@linaro.org>
Date: Thu, 5 Dec 2019 17:38:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_083856_775887_DCDB2F02 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CldoYXQgaXMgdGhlIHN0YXR1cyBvZiB0aGlzIHNlcmllcz8gU2hvdWxkbid0IHdlIGhhdmUgYSBW
Mz8KCk9uIDEwLzA1LzIwMTkgMTU6MjYsIG1pY2hhZWwua2FvIHdyb3RlOgo+IFRoaXMgcGF0Y2hz
ZXQgc3VwcG9ydHMgZm9yIE1UODE4MyBjaGlwIHRvIG10a190aGVybWFsLmMuCj4gQWRkIHRoZXJt
YWwgem9uZSBvZiBhbGwgdGhlIHRoZXJtYWwgc2Vuc29yIGluIFNvQyBmb3IKPiBhbm90aGVyIGdl
dCB0ZW1wZXJhdHJ1ZS4gVGhleSBkb24ndCBuZWVkIHRvIHRoZXJtYWwgdGhyb3R0bGUuCj4gQW5k
IHdlIGJpbmQgY29vbGVycyBmb3IgdGhlcm1hbCB6b25lIG5vZGVzIG9mIGNwdV90aGVybWFsLgo+
IAo+IFRoaXMgcGF0Y2ggc2VyaWVzIGJhc2Ugb24gdGhlc2UgcGF0Y2hlcyBbMV1bMl1bM11bNF0u
Cj4gCj4gWzFdc3VwcG9ydCBmb3IgcmVhZGluZyBjaGlwIElEIGFuZCBlZnVzZSAoaHR0cHM6Ly9w
YXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDkwMjEzMS8pCj4gWzJdYXJtNjQ6IGR0czogbXQ4
MTgzOiBBZGQgcmVzZXQtY2VsbHMgaW4gaW5mcmFjZmcgKGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcGF0Y2gvMTA5MDg2NTMvKQo+IFszXWNsazogcmVzZXQ6IE1vZGlmeSByZXNldC1jb250
cm9sbGVyIGRyaXZlciAoaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDkwODY1
Ny8pCj4gWzRdUE0gLyBBVlM6IFNWUzogSW50cm9kdWNlIFNWUyBlbmdpbmUgKGh0dHBzOi8vcGF0
Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA5MjMyODkvKQo+IAo+IE1hdHRoaWFzIEthZWhsY2tl
ICgyKToKPiAJYXJtNjQ6IGR0czogbXQ4MTgzOiBDb25maWd1cmUgQ1BVIGNvb2xpbmcKPiAJYXJt
NjQ6IGR0czogbXQ4MTgzOiBJbmNyZWFzZSBwb2xsaW5nIGZyZXF1ZW5jeSBmb3IgQ1BVIHRoZXJt
YWwgem9uZQo+IAo+IE1pY2hhZWwgS2FvICg2KToKPiAJYXJtNjQ6IGR0czogbXQ4MTgzOiBhZGQg
dGhlcm1hbCB6b25lIG5vZGUKPiAJYXJtNjQ6IGR0czogbXQ4MTgzOiBhZGQvdXBkYXRlIGR5bmFt
aWMgcG93ZXIgY29lZmZpY2llbnRzCj4gCWFybTY0OiBkdHM6IG10ODE4MzogQWRkICNjb29saW5n
LWNlbGxzIHRvIENQVSBub2Rlcwo+IAl0aGVybWFsOiBtZWRpYXRlazogbXQ4MTgzOiBmaXggYmFu
ayBudW1iZXIgc2V0dGluZ3MKPiAJdGhlcm1hbDogbWVkaWF0ZWs6IGFkZCBhbm90aGVyIGdldF90
ZW1wIG9wcyBmb3IgdGhlcm1hbCBzZW5zb3JzCj4gCXRoZXJtYWw6IG1lZGlhdGVrOiB1c2Ugc3Bp
bmxvY2sgdG8gcHJvdGVjdCBQVFBDT1JFU0VMCj4gCj4gYXJjaC9hcm02NC9ib290L2R0cy9tZWRp
YXRlay9tdDgxODMuZHRzaSB8IDE1OCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4g
ZHJpdmVycy90aGVybWFsL210a190aGVybWFsLmMgICAgICAgICAgICB8ICA4MiArKysrKysrKysr
KysrLS0tCj4gMiBmaWxlcyBjaGFuZ2VkLCAyMjYgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25z
KC0pCj4gCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93
d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIu
Y29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJv
LWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
