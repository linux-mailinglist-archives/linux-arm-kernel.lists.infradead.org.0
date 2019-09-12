Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3837B0AEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:06:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFEjprNOfBdndvD4wm8E9uOwc1R/lLAPgpbiFaQfuQo=; b=PP/6/M3KkrLMiF
	SNoXWUyEhSjTm9xsLcIi5CzDtrj8fmvnMv8M86r22uxdKMWXAetOOFe4cXmAwoZrI9CLwIcNRE769
	LfyfJuP1yMWcadOgJGWmKG7sSIIjXjQjbwbIsSYn/1exn/U4z24pYm0hRAmDbiGsrPlnHtVVEfTru
	gCZmvheEJR0A4NHcjTqebENaK+5eyEHg/GFH3Ew3sYSHW7iNbzkMd3Thd3QgXa8NaLxrkW5Ik/dKy
	s+KEpNlJY2jaL/GHr+DFa9BR0AAOCk7LvO+sqiKeCVZsn01s3z4cz4EnK0iTaxkZrJvCMWjq4Q3ad
	hJI1sHIsI6upiw/951+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8L3f-0004b9-4S; Thu, 12 Sep 2019 09:06:31 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8L2n-0004ad-0a
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:05:38 +0000
Received: by mail-lj1-x243.google.com with SMTP id h2so16331758ljk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 02:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yO0Ugz+vt5CON7QrbS17pn/9PoZbjOpwqpjgIPuPJBI=;
 b=JJf5Um2xcF6I4Vn5Xtmtb4fAN1rtfg7aG42sxpsldtz+GgKvxTp9tTKa3VkZPvd9EY
 dNzJ9xxQyS5kWB6EYiK9A9y/XxTEbxHF+zBJb89n6dDM57nEbNVKR4rsAIl5lf8Vhag+
 TclfJV07yTOh8AcC1ggO1+zr5+Myc0FLWvLQnhvWQE30mYuP0yE+rULvwCNU9ShRD18t
 Ncf+uKf0LjKen0Acg8JxoedVHusi+NQfZzIwwkPo4tfApHhpJzwol/5ei1Ca5GtDRVn0
 itrKDGPC4kbBoCIDKzKKGKr2LcuCjbM5hHFqKkGEVt56HMsRvQ2UcuurPsCGdFd9ll7C
 b6ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yO0Ugz+vt5CON7QrbS17pn/9PoZbjOpwqpjgIPuPJBI=;
 b=s5u07Cgil1WoUuIxkO0RWAPPs6Rzc71A1vY0Q9BB5VzbsPvVzSAR0Sh/OzQ15VW2PC
 KluaAW69Uj2Vxr+OJ9I5n6SqlhznIMKqTGj+As5Chz7P4RPQLyQ2KjCTrbQHKqB+yxrY
 l6SBJbIfGy85jyooFELqMcUdyo3yqOOOYqeLrKWf4LliXk5YUgfbZ+Nnl7tx/2gSVDJ7
 B0NpHcBmXa5x6s0MFjV4ZgIMQMeBFle1GJQxAsEnxH86R0QOtXH+mwvBxXxy4ipNsFWt
 9Xs0+lQJEocms+TE2Jqlgb7NDDfV2TfgYVeNFqRB3X3HIC89yVpxehIK7KdiC+vc/pwN
 2T9g==
X-Gm-Message-State: APjAAAXfWOjLOAVl8/15IhcxA83FuvwlrVaAOrHltT2AUxa0m+hAK0oS
 5WH4eAQ7vpEGW3deTf2Swd1vk0u4E3joyfmWT6HdXg==
X-Google-Smtp-Source: APXvYqxXstkfuaWL/WFUhn1/bUVAnAuPusgloIUG5UcV8mlZwjnAkzyfflZWQZ9rXkXh1oQu49x02P3fCMOERZMIJrI=
X-Received: by 2002:a2e:654a:: with SMTP id z71mr26065109ljb.37.1568279134855; 
 Thu, 12 Sep 2019 02:05:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190909105919.30418-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20190909105919.30418-1-u.kleine-koenig@pengutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Sep 2019 10:05:23 +0100
Message-ID: <CACRpkdZTzYtxjmiEnbvSn0-WQtxADLrxJGb_Q83gtRFhcShRiQ@mail.gmail.com>
Subject: Re: [PATCH RFC] gpio: define gpio-init nodes to initialize pins
 similar to hogs
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_020537_068332_6C50922F 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBTZXAgOSwgMjAxOSBhdCAxMTo1OSBBTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKCj4gU29tZXRpbWVzIGl0IGlzIGhhbmR5
IHRvIGJlIGFibGUgdG8gZWFzaWx5IGRlZmluZSBhICJzYWZlIiBzdGF0ZSBmb3IgYQo+IEdQSU8u
IFRoaXMgbWlnaHQgZm9yIGV4YW1wbGUgYmUgdXNlZCB0byBlbnN1cmUgdGhhdCBhbiBldGhlcm5l
dCBwaHkgaXMKPiBwcm9wZXJseSByZXNldCBkdXJpbmcgc3RhcnR1cCBvciBqdXN0IHRoYXQgYWxs
IHBpbnMgaGF2ZSBhIGRlZmluZWQgc3RhdGUKPiB0byBtaW5pbWl6ZSBsZWFrYWdlIGN1cnJlbnQu
IEFzIHN1Y2ggYSBwaW4gbXVzdCBiZSByZXF1ZXN0YWJsZSAoYW5kCj4gY2hhbmdhYmxlKSBieSBh
IGRldmljZSBkcml2ZXIsIGEgZ3Bpby1ob2cgY2Fubm90IGJlIHVzZWQuCj4KPiBTbyBkZWZpbmUg
YSBHUElPIGluaXRpYWxpemVyIHdpdGggYSBzeW50YXggaWRlbnRpY2FsIHRvIGEgR1BJTyBob2cg
anVzdAo+IHVzaW5nICJncGlvLWluaXQiIGFzIGlkZW50aWZpZXIgaW5zdGVhZCBvZiAiZ3Bpby1o
b2ciLgo+Cj4gVGhlIHVzYWdlIEkgaGF2ZSBpbiBtaW5kIChhbmQgYWxzbyBpbXBsZW1lbnRlZCBp
biBhIGN1c3RvbSBwYXRjaCBzdGFjawo+IG9uIHRvcCBvZiBiYXJlYm94IGFscmVhZHkpIGlzIHRh
cmdldGluZyB0aGUgYm9vdGxvYWRlciBhbmQgbm90Cj4gbmVjZXNzYXJpbHkgTGludXggYXMgc3Vj
aCBhbiBib290LXVwIGluaXRpYWxpc2F0aW9uIHNob3VsZCBiZSBkb25lIGFzCj4gZWFybHkgYXMg
cG9zc2libGUuCj4KPiBOb3QteWV0LXNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1
LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gSGVsbG8sCj4KPiBtYXliZSBp
dCBhbHNvIG1ha2VzIHNlbnNlIHRvIHVzZSAiZ3Bpby1zYWZlIj8gTWF5YmUgaXQgKHRoZW4pIG1h
a2VzCj4gc2Vuc2UgdG8gcmVzZXQgdGhlIGdwaW8gaW4gdGhlIGluZGljYXRlZCBzdGF0ZSBhZnRl
ciBpdCBpcyByZWxlYXNlZD8KPgo+IEFsc28gaXQgbWlnaHQgYmUgYmVuZWZpY2lhbCB0byBtYWtl
IHRoZSB3b3JkaW5nIG1vcmUgZXhwbGljaXQgaW4gdGhlCj4gZGVzY3JpcHRpb24gYW5kIGZvciBl
eGFtcGxlIHRlbGwgdGhhdCBvbmx5IG9uZSBvZiBncGlvLWhvZyBhbmQgZ3Bpby1pbml0Cj4gbXVz
dCBiZSBwcm92aWRlZC4KCkl0J3Mgbm8gc2VjcmV0IHRoYXQgSSBhbSBpbiBmYXZvciBvZiB0aGlz
IGFwcHJvYWNoLCBhcyBJIGxpa2UgY29uc2lzdGVuY3kKd2l0aCB0aGUgaG9ncy4KClRoZSBEVCBw
ZW9wbGUgaGF2ZSBiZWVuIGFnYWluc3QsIGFzIHRoZXkgcHJlZmVyIHNvbWV0aGluZyBsaWtlIGFu
CmluaXRpYWwgYXJyYXkgb2YgdmFsdWVzIGFraW4gdG8gZ3Bpby1uYW1lcyBJSVJDLiBCdXQgdGhp
cyBpcyBhIGdvb2QKdGltZSBmb3IgdGhlbSB0byBzcGVhayB1cC4KCllvdXJzLApMaW51cyBXYWxs
ZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
