Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE9BB08D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 08:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjAf2n/7cS8TUNjzGXlOBMNK0kNM9e5ChQ2tid6H/xk=; b=dvCpMTTajgssCG
	bC8SA6JJC+XzYYChL8xuUlq+pBD1k0q2yOmpT2O7Xx6lCrCK5Jc8N87YRyHiBS+45K4axYqROZSGL
	0oykGQ52alq32RoaT/wo+ncWzmooaWAjFByvTXMC2SbXIBDVux+z722rmMCIaJ9/wi28hDp7RWXMN
	PtqX+tt4MtBln8ldy7KtcFI5VUQhMC6wAfHf+5Mm1iNfZfJt3pgGk6kcg1rlskQ5EXXbGCfQ4qbX+
	wsIfjV9HA/0mGM5ObysTV5v9p8MzlRSUsA5zvcEm5Jy6xfkklx7kTd1FEwHBndLzVs6WlyQBtotR2
	MdCNeQnfgrdd3a5fxTvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Iep-0004Ex-7v; Thu, 12 Sep 2019 06:32:43 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Iee-0004EW-Fd
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 06:32:34 +0000
Received: by mail-vs1-xe41.google.com with SMTP id y62so15443214vsb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 23:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=anandra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3n6GltZO+OtJoQdKROJI96T9MrzZAMOjs1puX9Kbpvo=;
 b=eeSmJ5xcN10sZAnGEHc7gqbVzHCrYTdEovfohCNylc4pLZtuIYAhzjMUD3M1DGIymd
 m/N74veb7vmeZ2JP9x/KxBQ9rh35PjFTIayrjQWOy+QP5+m3DYoZLu2ZGjuJtQ6wBne5
 mRP0tP+WH20jlTsBlohSb3dPGPbmr46j5isRGh0lSSF8CrRu6NXcobR3Mw66kFrZtLyU
 uckshBb+hoPb1NMv0VjL6AO/dxRxtAggeAQ7ky1bDMigvhROajTJXxorAbheefsX0neG
 ShZUGlk46y9t/YxtaI4a1i7M3fFaZpTRpFYDH/13n+uFEOeCsLWk+E+zkBZ8+XgcPx5+
 O6zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3n6GltZO+OtJoQdKROJI96T9MrzZAMOjs1puX9Kbpvo=;
 b=MCmwH6ubsZ+2FTH4l3ZZoPa3ecMWJGx1yjLwZoaYJNceoR9BuTHpjBHcfcc24QRyXn
 0cuNjZZJhh0b7jksjfJIxJtSf784NEBC8Kd7d/5E2Pg9XUu5ctvK2E8qL4a6BHmnpCsL
 I8WuqFCevM2lDvXwVX4bzrpLrPxBdvt8ZRPfb5fDtk4ahBYKsptHghAKpPCE0NMBAtvn
 7oJ2VbHWKBdt2d/bdPdEFHIBm+4dVEnRIiJjwXC/YfTsphg2j8YVtBIUrajeuA3Z9Nj8
 1GPDXq+zCX97XsyjWxwst2nKbLr+/XSRM9E9IP77UKA4hfj2fnbCQTWZsXSUQPDmvKjV
 RhWg==
X-Gm-Message-State: APjAAAUk7WI6haB31/l7TPSHqfb9dBAZ2MgjeggziwNZog+BnUxx0R1Y
 GIPHO6HfMWpQovfAcMqas1UaHdmbwEkY6ZdAMOueAQ==
X-Google-Smtp-Source: APXvYqxvw33app8ehwtG/HmDhiiAhumgM1IZ5mmnHdjYx87w8KSdlbyLbdfva5l2gg3rQlcCuertnre8gSf8mdOAf/4=
X-Received: by 2002:a67:e886:: with SMTP id x6mr22255618vsn.117.1568269950234; 
 Wed, 11 Sep 2019 23:32:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190911114650.20567-1-clabbe.montjoie@gmail.com>
 <20190911114650.20567-2-clabbe.montjoie@gmail.com>
In-Reply-To: <20190911114650.20567-2-clabbe.montjoie@gmail.com>
From: Maxime Ripard <maxime.ripard@anandra.org>
Date: Thu, 12 Sep 2019 08:32:19 +0200
Message-ID: <CAO4ZVTPAX8FsSWHNAbCV3XSEe5BjDM+s9cB_TbF-2t8g-u4TKQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] crypto: sun4i-ss: simplify enable/disable of the
 device
To: Corentin Labbe <clabbe.montjoie@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_233232_676480_6382BAFB 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpMZSBtZXIuIDExIHNlcHQuIDIwMTkgw6AgMTM6NDYsIENvcmVudGluIExhYmJlCjxjbGFi
YmUubW9udGpvaWVAZ21haWwuY29tPiBhIMOpY3JpdCA6Cj4KPiBUaGlzIHBhdGNoIHJlZ3JvdXBz
IHJlc291cmNlIGVuYWJsaW5nL2Rpc2FibGluZyBpbiBkZWRpY2F0ZWQgZnVuY3Rpb24uCj4gVGhp
cyBzaW1wbGlmeSBlcnJvciBoYW5kbGluZyBhbmQgd2lsbCBwZXJtaXQgdG8gc3VwcG9ydCBwb3dl
cgo+IG1hbmFnZW1lbnQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDb3JlbnRpbiBMYWJiZSA8Y2xhYmJl
Lm1vbnRqb2llQGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9jcnlwdG8vc3VueGktc3Mvc3Vu
NGktc3MtY29yZS5jIHwgNzMgKysrKysrKysrKysrKystLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hh
bmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgMzEgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9jcnlwdG8vc3VueGktc3Mvc3VuNGktc3MtY29yZS5jIGIvZHJpdmVycy9jcnlwdG8v
c3VueGktc3Mvc3VuNGktc3MtY29yZS5jCj4gaW5kZXggOWFhNmZlMDgxYTI3Li4yYzlmZjAxZGRk
ZmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jcnlwdG8vc3VueGktc3Mvc3VuNGktc3MtY29yZS5j
Cj4gKysrIGIvZHJpdmVycy9jcnlwdG8vc3VueGktc3Mvc3VuNGktc3MtY29yZS5jCj4gQEAgLTIy
Myw2ICsyMjMsNDEgQEAgc3RhdGljIHN0cnVjdCBzdW40aV9zc19hbGdfdGVtcGxhdGUgc3NfYWxn
c1tdID0gewo+ICAjZW5kaWYKPiAgfTsKPgo+ICtzdGF0aWMgdm9pZCBzdW40aV9zc19kaXNhYmxl
KHN0cnVjdCBzdW40aV9zc19jdHggKnNzKQo+ICt7Cj4gKyAgICAgICBpZiAoc3MtPnJlc2V0KQo+
ICsgICAgICAgICAgICAgICByZXNldF9jb250cm9sX2Fzc2VydChzcy0+cmVzZXQpOwo+ICsgICAg
ICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHNzLT5zc2Nsayk7Cj4gKyAgICAgICBjbGtfZGlzYWJs
ZV91bnByZXBhcmUoc3MtPmJ1c2Nsayk7Cj4gK30KCldoaWxlIHlvdSdyZSBhdCBpdCwgY2FuIHlv
dSBhZGQgYSBuZXcgbGluZSBhZnRlciB0aGUgcmVzZXRfY29udHJvbF9hc3NlcnQgaGVyZT8KCj4g
K3N0YXRpYyBpbnQgc3VuNGlfc3NfZW5hYmxlKHN0cnVjdCBzdW40aV9zc19jdHggKnNzKQo+ICt7
Cj4gKyAgICAgICBpbnQgZXJyOwo+ICsKPiArICAgICAgIGVyciA9IGNsa19wcmVwYXJlX2VuYWJs
ZShzcy0+YnVzY2xrKTsKPiArICAgICAgIGlmIChlcnIpIHsKPiArICAgICAgICAgICAgICAgZGV2
X2Vycihzcy0+ZGV2LCAiQ2Fubm90IHByZXBhcmVfZW5hYmxlIGJ1c2Nsa1xuIik7Cj4gKyAgICAg
ICAgICAgICAgIGdvdG8gZXJyX2VuYWJsZTsKPiArICAgICAgIH0KPiArICAgICAgIGVyciA9IGNs
a19wcmVwYXJlX2VuYWJsZShzcy0+c3NjbGspOwo+ICsgICAgICAgaWYgKGVycikgewo+ICsgICAg
ICAgICAgICAgICBkZXZfZXJyKHNzLT5kZXYsICJDYW5ub3QgcHJlcGFyZV9lbmFibGUgc3NjbGtc
biIpOwo+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9lbmFibGU7Cj4gKyAgICAgICB9Cj4gKyAg
ICAgICBpZiAoc3MtPnJlc2V0KSB7Cj4gKyAgICAgICAgICAgICAgIGVyciA9IHJlc2V0X2NvbnRy
b2xfZGVhc3NlcnQoc3MtPnJlc2V0KTsKPiArICAgICAgICAgICAgICAgaWYgKGVycikgewo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIoc3MtPmRldiwgIkNhbm5vdCBkZWFzc2VydCBy
ZXNldCBjb250cm9sXG4iKTsKPiArICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9lbmFi
bGU7Cj4gKyAgICAgICAgICAgICAgIH0KPiArICAgICAgIH0KPiArICAgICAgIHJldHVybiBlcnI7
CgpBbmQgYWZ0ZXIgZWFjaCBibG9jayBoZXJlPwoKV2l0aCB0aGF0IGZpeGVkOgpBY2tlZC1ieTog
TWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgoKVGhhbmtzIQpNYXhpbWUKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
