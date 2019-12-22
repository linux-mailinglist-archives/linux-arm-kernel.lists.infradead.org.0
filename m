Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB886128F04
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 18:09:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOy+dhjmsTauvqBeBSStyNYsEj5gcO1zGeNh/2R2dwU=; b=jC/S8W6J+PtTd/
	FPx4Kb5Wy3wV4XB1eNFXxJMbGax7H+b1PK/Em1P6ysQsSKejulujJ18df1Jm/gFPSpzcC0sdzqNxK
	ufk4IbhFlxHfE9i2danPj2lVCrzG9ejIDn561SsgTYeoRsatE6JP8Jy161ZmXun+qGzG6YWmqbYCL
	+4XHOBgQjrWzU0v0ryEMfoRUQVmMvU+lihc+Y4Rt9QTcFZgpfW6PIayerhiEKfACTQqg3q4RzgtvM
	oPdLx8YptI96406dWcZJo8YE+PTBmY+8R9G5HAh8gHkazEJeqQEFrolcZh0rodv7H4zgjUzuH8jq9
	b9YjFQKRLmNC9JNabqkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij4jQ-0002fA-RA; Sun, 22 Dec 2019 17:09:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij4jH-0002eg-VT
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 17:09:21 +0000
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53E7E2070A
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 17:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577034559;
 bh=geqtjwNhYhPjKOQTr6T9PrwqzqjPWdQ7WW0r3/weydI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=07BQMQ6Hi57dx/JRXrxf2u1oNEjJQB034YRiconHLdRB0lLKc4Hwfe97RW05Uv/tq
 AKKDhe6nGpWcF/9npYiw5Fq7zftXQnLc13UPWdC0kF0ifrclA2+d+VZlDC8Ya5r7E8
 tfwfwll4JDkG/JDZSwUMYCfglmEytTVVBzC+tQJE=
Received: by mail-lf1-f51.google.com with SMTP id 203so10875475lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 09:09:19 -0800 (PST)
X-Gm-Message-State: APjAAAV6h4SeYZTPnDT9ANIMRt4wcm8SM5KkmWIg8xL9GAbBT3gj6Gp3
 FIv+nh5OKtL9IhMGR0HZnjIWe4BL/bOGcOwDQpw=
X-Google-Smtp-Source: APXvYqwBbqcf1Pd8XBumubRFDeYehrjcMzLoDXNvGe/zro6dSDNnXlMk5m00bIDMFtqyXV44zbdUED/i0ZPagGGw2/Y=
X-Received: by 2002:ac2:5444:: with SMTP id d4mr15264932lfn.49.1577034557468; 
 Sun, 22 Dec 2019 09:09:17 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191220120143eucas1p1c9b01ae8c2e4ecd70423ef9d8001536f@eucas1p1.samsung.com>
 <20191220115653.6487-1-a.swigon@samsung.com>
 <20191220115653.6487-4-a.swigon@samsung.com>
In-Reply-To: <20191220115653.6487-4-a.swigon@samsung.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Mon, 23 Dec 2019 02:08:41 +0900
X-Gmail-Original-Message-ID: <CAGTfZH0zfvPYtTv6v+5nq99Gd2PVtg+O20dwf2nbV2j1U0nxCQ@mail.gmail.com>
Message-ID: <CAGTfZH0zfvPYtTv6v+5nq99Gd2PVtg+O20dwf2nbV2j1U0nxCQ@mail.gmail.com>
Subject: Re: [RFC PATCH v3 3/7] interconnect: Allow inter-provider pairs to be
 configured
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_090920_056224_B7DB1E61 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBGcmksIERlYyAyMCwgMjAxOSBhdCA5OjAzIFBNIEFydHVyIMWad2lnb8WEIDxhLnN3
aWdvbkBzYW1zdW5nLmNvbT4gd3JvdGU6Cj4KPiBJbiB0aGUgZXh5bm9zLWJ1cyBkZXZmcmVxIGRy
aXZlciBldmVyeSBidXMgaXMgcHJvYmVkIHNlcGFyYXRlbHkgYW5kIGlzCgpJTUhPLCB0aGUgcGF0
Y2ggZGVzY3JpcHRpb24gc2hvdWxkIHNwZWNpZnkgdGhlIG1vcmUgZ2VuZXJhbCBjYXVzZQp3aHkg
aGF2ZSB0byBiZSBjaGFuZ2VkLiBBY3R1YWxseSwgYWxtb3N0IHBlb3BsZSBtaWdodCBub3Qga25v
dwp0aGUgJ2V4eW5vcy1idXMnLiBTbywgZmlyc3RseSwgeW91IGhhdmUgdG8gc3BlY2lmeSB0aGUg
Z2VuZXJhbCBjYXVzZQp3aHkgdGhpcyBwYXRjaCBpcyBuZWNlc3Nhcnkgd2l0aG91dCAnZXh5bm9z
LWJ1cycgd29yZCBhbmQgdGhlbgphZGQgdGhlIHJlYWwgdXNlLWNhc2Ugd2l0aCAnZXh5bm9zLWJ1
cycgZXhhbXBsZS4KCj4gYXNzaWduZWQgYSBzZXBhcmF0ZSBpbnRlcmNvbm5lY3QgcHJvdmlkZXIu
IEhvd2V2ZXIsIHRoZSBpbnRlcmNvbm5lY3QKPiBmcmFtZXdvcmsgZG9lcyBub3QgY2FsbCB0aGUg
Jy0+c2V0JyBjYWxsYmFjayBmb3IgcGFpcnMgb2Ygbm9kZXMgd2hpY2gKPiBiZWxvbmcgdG8gZGlm
ZmVyZW50IHByb3ZpZGVycy4KPgo+IFRoaXMgcGF0Y2ggYWRkcyBzdXBwb3J0IGZvciBhIG5ldyBi
b29sZWFuICdpbnRlcl9zZXQnIGZpZWxkIGluIHN0cnVjdAo+IGljY19wcm92aWRlci4gU2V0dGlu
ZyBpdCB0byAndHJ1ZScgZW5hYmxlcyBjYWxsaW5nICctPnNldCcgZm9yCj4gaW50ZXItcHJvdmlk
ZXIgbm9kZSBwYWlycy4gQWxsIGV4aXN0aW5nIHVzZXJzIG9mIHRoZSBpbnRlcmNvbm5lY3QKPiBm
cmFtZXdvcmsgYWxsb2NhdGUgdGhpcyBzdHJ1Y3R1cmUgd2l0aCBremFsbG9jLCBhbmQgYXJlIHRo
ZXJlZm9yZQo+IHVuYWZmZWN0ZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8
YS5zd2lnb25Ac2Ftc3VuZy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvaW50ZXJjb25uZWN0L2NvcmUu
YyAgICAgICAgICAgfCAxMSArKysrKy0tLS0tLQo+ICBpbmNsdWRlL2xpbnV4L2ludGVyY29ubmVj
dC1wcm92aWRlci5oIHwgIDIgKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbnRlcmNvbm5lY3QvY29y
ZS5jIGIvZHJpdmVycy9pbnRlcmNvbm5lY3QvY29yZS5jCj4gaW5kZXggNzRjNjg4OThhMzUwLi5h
MjhiZDBmOGE0OTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9pbnRlcmNvbm5lY3QvY29yZS5jCj4g
KysrIGIvZHJpdmVycy9pbnRlcmNvbm5lY3QvY29yZS5jCj4gQEAgLTI1OSwyMyArMjU5LDIyIEBA
IHN0YXRpYyBpbnQgYWdncmVnYXRlX3JlcXVlc3RzKHN0cnVjdCBpY2Nfbm9kZSAqbm9kZSkKPiAg
c3RhdGljIGludCBhcHBseV9jb25zdHJhaW50cyhzdHJ1Y3QgaWNjX3BhdGggKnBhdGgpCj4gIHsK
PiAgICAgICAgIHN0cnVjdCBpY2Nfbm9kZSAqbmV4dCwgKnByZXYgPSBOVUxMOwo+ICsgICAgICAg
c3RydWN0IGljY19wcm92aWRlciAqcDsKPiAgICAgICAgIGludCByZXQgPSAtRUlOVkFMOwo+ICAg
ICAgICAgaW50IGk7Cj4KPiAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBwYXRoLT5udW1fbm9kZXM7
IGkrKykgewo+ICAgICAgICAgICAgICAgICBuZXh0ID0gcGF0aC0+cmVxc1tpXS5ub2RlOwo+ICsg
ICAgICAgICAgICAgICBwID0gbmV4dC0+cHJvdmlkZXI7Cj4KPiAtICAgICAgICAgICAgICAgLyoK
PiAtICAgICAgICAgICAgICAgICogQm90aCBlbmRwb2ludHMgc2hvdWxkIGJlIHZhbGlkIG1hc3Rl
ci1zbGF2ZSBwYWlycyBvZiB0aGUKPiAtICAgICAgICAgICAgICAgICogc2FtZSBpbnRlcmNvbm5l
Y3QgcHJvdmlkZXIgdGhhdCB3aWxsIGJlIGNvbmZpZ3VyZWQuCj4gLSAgICAgICAgICAgICAgICAq
Lwo+IC0gICAgICAgICAgICAgICBpZiAoIXByZXYgfHwgbmV4dC0+cHJvdmlkZXIgIT0gcHJldi0+
cHJvdmlkZXIpIHsKPiArICAgICAgICAgICAgICAgLyogYm90aCBlbmRwb2ludHMgc2hvdWxkIGJl
IHZhbGlkIG1hc3Rlci1zbGF2ZSBwYWlycyAqLwo+ICsgICAgICAgICAgICAgICBpZiAoIXByZXYg
fHwgKHAgIT0gcHJldi0+cHJvdmlkZXIgJiYgIXAtPmludGVyX3NldCkpIHsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICBwcmV2ID0gbmV4dDsKPiAgICAgICAgICAgICAgICAgICAgICAgICBjb250
aW51ZTsKPiAgICAgICAgICAgICAgICAgfQo+Cj4gICAgICAgICAgICAgICAgIC8qIHNldCB0aGUg
Y29uc3RyYWludHMgKi8KPiAtICAgICAgICAgICAgICAgcmV0ID0gbmV4dC0+cHJvdmlkZXItPnNl
dChwcmV2LCBuZXh0KTsKPiArICAgICAgICAgICAgICAgcmV0ID0gcC0+c2V0KHByZXYsIG5leHQp
Owo+ICAgICAgICAgICAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGdv
dG8gb3V0Owo+Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvaW50ZXJjb25uZWN0LXByb3Zp
ZGVyLmggYi9pbmNsdWRlL2xpbnV4L2ludGVyY29ubmVjdC1wcm92aWRlci5oCj4gaW5kZXggY2M5
NjViOGZhYjUzLi5iNmFlMGVlNjg2YzUgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9pbnRl
cmNvbm5lY3QtcHJvdmlkZXIuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvaW50ZXJjb25uZWN0LXBy
b3ZpZGVyLmgKPiBAQCAtNDEsNiArNDEsNyBAQCBzdHJ1Y3QgaWNjX25vZGUgKm9mX2ljY194bGF0
ZV9vbmVjZWxsKHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKnNwZWMsCj4gICAqIEB4bGF0ZTogcHJv
dmlkZXItc3BlY2lmaWMgY2FsbGJhY2sgZm9yIG1hcHBpbmcgbm9kZXMgZnJvbSBwaGFuZGxlIGFy
Z3VtZW50cwo+ICAgKiBAZGV2OiB0aGUgZGV2aWNlIHRoaXMgaW50ZXJjb25uZWN0IHByb3ZpZGVy
IGJlbG9uZ3MgdG8KPiAgICogQHVzZXJzOiBjb3VudCBvZiBhY3RpdmUgdXNlcnMKPiArICogQGlu
dGVyX3NldDogd2hldGhlciBpbnRlci1wcm92aWRlciBwYWlycyB3aWxsIGJlIGNvbmZpZ3VyZWQg
d2l0aCBAc2V0Cj4gICAqIEBkYXRhOiBwb2ludGVyIHRvIHByaXZhdGUgZGF0YQo+ICAgKi8KPiAg
c3RydWN0IGljY19wcm92aWRlciB7Cj4gQEAgLTUzLDYgKzU0LDcgQEAgc3RydWN0IGljY19wcm92
aWRlciB7Cj4gICAgICAgICBzdHJ1Y3QgaWNjX25vZGUqICgqeGxhdGUpKHN0cnVjdCBvZl9waGFu
ZGxlX2FyZ3MgKnNwZWMsIHZvaWQgKmRhdGEpOwo+ICAgICAgICAgc3RydWN0IGRldmljZSAgICAg
ICAgICAgKmRldjsKPiAgICAgICAgIGludCAgICAgICAgICAgICAgICAgICAgIHVzZXJzOwo+ICsg
ICAgICAgYm9vbCAgICAgICAgICAgICAgICAgICAgaW50ZXJfc2V0Owo+ICAgICAgICAgdm9pZCAg
ICAgICAgICAgICAgICAgICAgKmRhdGE7Cj4gIH07Cj4KPiAtLQo+IDIuMTcuMQo+CgoKLS0gCkJl
c3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
