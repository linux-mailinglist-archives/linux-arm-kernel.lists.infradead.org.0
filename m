Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D25B08EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 08:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ymZC0edsCy+zxxqxntoiK3oJ9VUDspnpM9cyu29974=; b=F8xFsPh93PDgF2
	XvfufR1LXl82SvBq3MGRMNEm/Tgphf0jWks9jPaHj/K7yRI4APyWOb27lMJnZq5qj/fMYD4oLIXz4
	GCyAxP8R8zyNz/gWqCdZDwny7lSsA4F2MbkNHHEXiw3mnxq6aaF7B6hVCxyg2kcdo1s27UTNOS8kw
	uaPt6FFzCkKiOkvaLntMTOoasjW1XpQ1R+sbqxuwAz5S9BIYwDZwn9YJPu2SqjM9AWriPhn0Bx0/3
	3SOVkQq+lEFzFXB/PD3J9tVr5nsvFJ3p/6N275C6xF8p9F+uNsJga59wJRmPJ9u7CqVGpajmNGeN+
	lkUp3oz9WiIKXrw98UcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Ij4-0007JP-R5; Thu, 12 Sep 2019 06:37:07 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Ii3-0006Vh-As
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 06:36:04 +0000
Received: by mail-vs1-xe44.google.com with SMTP id p13so263641vsr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 23:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=anandra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nmpGWYLtPSGrl1YWqJfUO5R7bgXryGBrcoRpFN/0a0g=;
 b=O3ail7doj7o7Ovvdm3xbfylphlfCHkXhRP/yCEXns19SI/49dj1zJ4ofS+2ymWt+g/
 y3q+7bsHhKZFTNIpho1NHXrbDOdNcKjML+gCzkCZ+eLyV+AqGgc9o4+wnx+HuUy+3hez
 q0rJuJtUyNvi5UZacXPNLJQdCthFS0Q25TmxVvFnqiqA592RsAQBs99I3jOtyvmTdOvu
 dFCpvzJT4TmCrUFXGkMWFmoe5L8WsPrO889Dvxz2XXHJ7oQ/RSdg2r4En1N7OJUqfYpr
 mjhDbzRkmwSlM9gb5CdLpopbdfxbi9icDKEIkwf9cUNCAAjaRZrmxC1rVSj01sJbkeID
 IuBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nmpGWYLtPSGrl1YWqJfUO5R7bgXryGBrcoRpFN/0a0g=;
 b=B/3cAPSo12pK7vB1PE8mM5EvGjn8ESl3MzIRzlPBx08OnZlefiXJ20tgtbJy6SEdya
 U2UDhLpY2BwUQ6zquxgigRBKYqzG/Mk94/6oItvE9lvLEa4wnJ4iSfFxC0/78uei6rm4
 pj4oizpivcxxpyLwCc29ackHTDJMST1v+Up8VZHq4weCLEhTxEPNMysB6zvqneNkbNY+
 FGKxigaSnI8uw/4feBu+yFq6WlT/7yA4qFRjaegQAI7JOOYEELYPUYCpgq8F+kBj6j+W
 db8spFi8FGDz7sR8pPTqoaasjN7V9RTbBaCJybx+AumdaeYs4kP6jWCERoGkJ1To9FwC
 Lw1A==
X-Gm-Message-State: APjAAAWz1ncVzMB60v5qX46rrcRj5NtJT4AXgYyhXBrGc6qGveG1TXBj
 FHiZFkvH+jV7LKfsfSs94c5GeVHQjm4ULJFZ/JK9zA==
X-Google-Smtp-Source: APXvYqzfE/Y4NxqCwMzVJjDMqfSUa87VwUqGZkEU9X98b47pKVZNAOOE5Iwr+L1cGROF1MU6wEDKkyLDzUkDX8srS94=
X-Received: by 2002:a67:f504:: with SMTP id u4mr22402937vsn.146.1568270162133; 
 Wed, 11 Sep 2019 23:36:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190911114650.20567-1-clabbe.montjoie@gmail.com>
 <20190911114650.20567-3-clabbe.montjoie@gmail.com>
In-Reply-To: <20190911114650.20567-3-clabbe.montjoie@gmail.com>
From: Maxime Ripard <maxime.ripard@anandra.org>
Date: Thu, 12 Sep 2019 08:35:51 +0200
Message-ID: <CAO4ZVTM99FksM71BAiraYj7eyREO1Qi=L1NFzEkNmMgBmphBww@mail.gmail.com>
Subject: Re: [PATCH 2/2] crypto: sun4i-ss: enable pm_runtime
To: Corentin Labbe <clabbe.montjoie@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_233603_525571_806C5531 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
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
YmUubW9udGpvaWVAZ21haWwuY29tPiBhIMOpY3JpdCA6Cj4KPiBUaGlzIHBhdGNoIGVuYWJsZXMg
cG93ZXIgbWFuYWdlbWVudCBvbiB0aGUgU2VjdXJpdHkgU3lzdGVtLgo+Cj4gU2lnbmVkLW9mZi1i
eTogQ29yZW50aW4gTGFiYmUgPGNsYWJiZS5tb250am9pZUBnbWFpbC5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvY3J5cHRvL3N1bnhpLXNzL3N1bjRpLXNzLWNpcGhlci5jIHwgIDUgKysrCj4gIGRyaXZl
cnMvY3J5cHRvL3N1bnhpLXNzL3N1bjRpLXNzLWNvcmUuYyAgIHwgNDIgKysrKysrKysrKysrKysr
KysrKysrKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA0NiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jcnlwdG8vc3VueGktc3Mvc3VuNGktc3MtY2lw
aGVyLmMgYi9kcml2ZXJzL2NyeXB0by9zdW54aS1zcy9zdW40aS1zcy1jaXBoZXIuYwo+IGluZGV4
IGZhNGIxYjQ3ODIyZS4uMWZlZGVjOWU4M2IwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY3J5cHRv
L3N1bnhpLXNzL3N1bjRpLXNzLWNpcGhlci5jCj4gKysrIGIvZHJpdmVycy9jcnlwdG8vc3VueGkt
c3Mvc3VuNGktc3MtY2lwaGVyLmMKPiBAQCAtMTAsNiArMTAsOCBAQAo+ICAgKgo+ICAgKiBZb3Ug
Y291bGQgZmluZCB0aGUgZGF0YXNoZWV0IGluIERvY3VtZW50YXRpb24vYXJtL3N1bnhpLnJzdAo+
ICAgKi8KPiArCj4gKyNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+Cj4gICNpbmNsdWRlICJz
dW40aS1zcy5oIgo+Cj4gIHN0YXRpYyBpbnQgbm9pbmxpbmVfZm9yX3N0YWNrIHN1bjRpX3NzX29w
dGlfcG9sbChzdHJ1Y3Qgc2tjaXBoZXJfcmVxdWVzdCAqYXJlcSkKPiBAQCAtNDk3LDEzICs0OTks
MTYgQEAgaW50IHN1bjRpX3NzX2NpcGhlcl9pbml0KHN0cnVjdCBjcnlwdG9fdGZtICp0Zm0pCj4g
ICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKG9wLT5mYWxsYmFja190Zm0pOwo+ICAgICAg
ICAgfQo+Cj4gKyAgICAgICBwbV9ydW50aW1lX2dldF9zeW5jKG9wLT5zcy0+ZGV2KTsKPiAgICAg
ICAgIHJldHVybiAwOwo+ICB9Cj4KPiAgdm9pZCBzdW40aV9zc19jaXBoZXJfZXhpdChzdHJ1Y3Qg
Y3J5cHRvX3RmbSAqdGZtKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3Qgc3VuNGlfdGZtX2N0eCAqb3Ag
PSBjcnlwdG9fdGZtX2N0eCh0Zm0pOwo+ICsKPiAgICAgICAgIGNyeXB0b19mcmVlX3N5bmNfc2tj
aXBoZXIob3AtPmZhbGxiYWNrX3RmbSk7Cj4gKyAgICAgICBwbV9ydW50aW1lX3B1dF9zeW5jKG9w
LT5zcy0+ZGV2KTsKPiAgfQo+Cj4gIC8qIGNoZWNrIGFuZCBzZXQgdGhlIEFFUyBrZXksIHByZXBh
cmUgdGhlIG1vZGUgdG8gYmUgdXNlZCAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NyeXB0by9z
dW54aS1zcy9zdW40aS1zcy1jb3JlLmMgYi9kcml2ZXJzL2NyeXB0by9zdW54aS1zcy9zdW40aS1z
cy1jb3JlLmMKPiBpbmRleCAyYzlmZjAxZGRkZmMuLjVlNmUxYTMwOGY2MCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2NyeXB0by9zdW54aS1zcy9zdW40aS1zcy1jb3JlLmMKPiArKysgYi9kcml2ZXJz
L2NyeXB0by9zdW54aS1zcy9zdW40aS1zcy1jb3JlLmMKPiBAQCAtMTQsNiArMTQsNyBAQAo+ICAj
aW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ICAjaW5j
bHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9wbV9ydW50
aW1lLmg+Cj4gICNpbmNsdWRlIDxjcnlwdG8vc2NhdHRlcndhbGsuaD4KPiAgI2luY2x1ZGUgPGxp
bnV4L3NjYXR0ZXJsaXN0Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9pbnRlcnJ1cHQuaD4KPiBAQCAt
MjU4LDYgKzI1OSwzNyBAQCBzdGF0aWMgaW50IHN1bjRpX3NzX2VuYWJsZShzdHJ1Y3Qgc3VuNGlf
c3NfY3R4ICpzcykKPiAgICAgICAgIHJldHVybiBlcnI7Cj4gIH0KPgo+ICsjaWZkZWYgQ09ORklH
X1BNCj4gK3N0YXRpYyBpbnQgc3VuNGlfc3NfcG1fc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYp
Cj4gK3sKPiArICAgICAgIHN0cnVjdCBzdW40aV9zc19jdHggKnNzID0gZGV2X2dldF9kcnZkYXRh
KGRldik7Cj4gKwo+ICsgICAgICAgc3VuNGlfc3NfZGlzYWJsZShzcyk7Cj4gKyAgICAgICByZXR1
cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBzdW40aV9zc19wbV9yZXN1bWUoc3RydWN0IGRl
dmljZSAqZGV2KQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3Qgc3VuNGlfc3NfY3R4ICpzcyA9IGRldl9n
ZXRfZHJ2ZGF0YShkZXYpOwo+ICsKPiArICAgICAgIHJldHVybiBzdW40aV9zc19lbmFibGUoc3Mp
Owo+ICt9Cj4gKyNlbmRpZgo+ICsKPiArY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgc3VuNGlfc3Nf
cG1fb3BzID0gewo+ICsgICAgICAgU0VUX1JVTlRJTUVfUE1fT1BTKHN1bjRpX3NzX3BtX3N1c3Bl
bmQsIHN1bjRpX3NzX3BtX3Jlc3VtZSwgTlVMTCkKPiArfTsKPiArCj4gK3N0YXRpYyB2b2lkIHN1
bjRpX3NzX3BtX2luaXQoc3RydWN0IHN1bjRpX3NzX2N0eCAqc3MpCj4gK3sKPiArICAgICAgIHBt
X3J1bnRpbWVfdXNlX2F1dG9zdXNwZW5kKHNzLT5kZXYpOwo+ICsgICAgICAgcG1fcnVudGltZV9z
ZXRfYXV0b3N1c3BlbmRfZGVsYXkoc3MtPmRldiwgMTAwMCk7Cj4gKwo+ICsgICAgICAgcG1fcnVu
dGltZV9nZXRfbm9yZXN1bWUoc3MtPmRldik7Cj4gKyAgICAgICBwbV9ydW50aW1lX3NldF9hY3Rp
dmUoc3MtPmRldik7Cj4gKyAgICAgICBwbV9ydW50aW1lX2VuYWJsZShzcy0+ZGV2KTsKPiArfQoK
SXQncyBub3QgcmVhbGx5IGNsZWFyIHRvIG1lIHdoYXQgeW91J3JlIGRvaW5nIGhlcmU/IENhbiB5
b3UgZXhwbGFpbj8KClRoZSByZXN0IGxvb2tzIGZpbmUuCgpNYXhpbWUKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
