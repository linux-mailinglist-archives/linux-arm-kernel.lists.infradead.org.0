Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F57D1DE138
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 09:45:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4lzqdaqFNGslJp7n3nWjO/k4mHWT1qyMMM4hxVVFHD4=; b=PALWv+VcWUHozF
	keDGFzpMSAULkbn/n53NhJEuyyAU+YHv/Ai8/j3q4KBWta3oS+7tg6TlEotqwn9XouJIhkwo4PN5y
	jTsrcbiSl+qopNyyVjjNrDHIVl/bLYWkUo35oifCvr7OW9jPmyzUTrb6jhPiD9ysjZCHketbs7RpD
	118WBxwaIOndOyCYq3B02uKxGm6vXgJS5CqMiRp8zpfRG7Q7y2Fg+JEUYhC3TtTnEF9RcN1ymNImS
	QGg8MD8QlKd8bSBJ25rS0z4BK+MXzgNsakTD8zKkT6pjR08YMterlja/B7Bcg8kM9GutY+8A9kUaL
	vjfjTcs9M3RtlnXyEHFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc2MW-0000Ku-Pz; Fri, 22 May 2020 07:45:00 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc2MJ-0000Iz-I9
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 07:44:49 +0000
Received: by mail-il1-x142.google.com with SMTP id 17so9831861ilj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 00:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LCkLyZXcgLXsj7dmJQa9iDLscNMkrkvWsu5Kx85OjLg=;
 b=ge+b+0kLRvCWW+i7FZpDx3vEx/9YzZzTihd0/kwhJML/57n7AN8tpGRlBKOd+v/Vkq
 MlxvKA+QiiJgfLN2IMjGjgls4JTBYwCh5dcsZV0voXh1SJfMbIUYGEVZDExaAXMjR3pa
 CKh1er6geLM8qsCE1e0SxIxJeURG2LJHvzNxit1NXDK1sPbtEhbTGDwYa9nhr9S8RWX2
 JkvxTxEfzcF8tSYMk40YQL/8EzhgTte5EbE1gvYUFSKrSOWSIszGfPqf7X37cvEcPmiv
 HtMLTvK3kwmmT4cJ1y/3uuYXGkJ0n7Yt19IT8mO/KAmbN5lRd5Gbl+V1Hb+NVkOed3T5
 CrEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LCkLyZXcgLXsj7dmJQa9iDLscNMkrkvWsu5Kx85OjLg=;
 b=hmJShyiu9I7YWSTBXjxmRDZJ7XKVv1AFHReYBGRuqVz9GXEpDCnjZ1LFKI34K4bKUs
 QpbIHis8XCR95GsbLKnkiHNDGvAKkO44C4fyadZX0dHyIEf8OjqFsfGD/hk+do0VLPU+
 xmWW280GpPjwsbsVOGzO9Sr4URByO7MgSohOykzpp3jXbNRR3x2t1zjIBuEhPOlXiUJG
 wBPiqORtER/o1tKSTuNGwBsNahfmMten4x3k1HRL6zvkcUVKO/bOP6vupo0BGuMgwyfL
 RW9Ytcah579RgZA/uSvL1If2Z3zm740KgcAGvdsTc2apFmzfNkn+boT9kWo/qBMDP8n5
 skJA==
X-Gm-Message-State: AOAM5330M6KzQVn8zoUu2PBRdDrZ8EYeiqA9mUJhyNGHQjy15eAXJYo5
 m4YVZvBOv1m+fszW3L7XkGURua36Dtxlla/oNaI4Fg==
X-Google-Smtp-Source: ABdhPJyMFYW+VQGw9RND8F1TlWx6v0Sfg+2mzq6aucXwYl+4J0CTaHFg5jMebQ8YJqZw5nl76kjU2nOYVhi3sG6Wx5A=
X-Received: by 2002:a92:d946:: with SMTP id l6mr12913271ilq.6.1590133484494;
 Fri, 22 May 2020 00:44:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200520112523.30995-1-brgl@bgdev.pl>
 <20200520112523.30995-7-brgl@bgdev.pl>
 <CAK8P3a3jhrQ3p1JsqMNMOOnfo9t=rAPWaOAwAdDuFMh7wUtZQw@mail.gmail.com>
 <CAMRc=MeuQk9rFDFGWK0ijsiM-r296cVz9Rth8hWhW5Aeeti_cA@mail.gmail.com>
 <CAK8P3a1nhPj6kRhwyXzDK3BGbh66XG6Fmp44QuM1NhFPPBTtPQ@mail.gmail.com>
In-Reply-To: <CAK8P3a1nhPj6kRhwyXzDK3BGbh66XG6Fmp44QuM1NhFPPBTtPQ@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 22 May 2020 09:44:33 +0200
Message-ID: <CAMRc=MfVkbDSfEV71SD57dpYthdx5epD0FOvjRx8qQGT+SgsTQ@mail.gmail.com>
Subject: Re: [PATCH v4 06/11] net: ethernet: mtk-eth-mac: new driver
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_004447_658560_BF2B9AF4 
X-CRM114-Status: GOOD (  26.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Edwin Peer <edwin.peer@broadcom.com>, DTML <devicetree@vger.kernel.org>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Networking <netdev@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgMjAgbWFqIDIwMjAgbyAyMzoyMyBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPiBu
YXBpc2HFgihhKToKPgo+IE9uIFdlZCwgTWF5IDIwLCAyMDIwIGF0IDc6MzUgUE0gQmFydG9zeiBH
b2xhc3pld3NraSA8YnJnbEBiZ2Rldi5wbD4gd3JvdGU6Cj4gPiDFm3IuLCAyMCBtYWogMjAyMCBv
IDE2OjM3IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IG5hcGlzYcWCKGEpOgo+Cj4gPiA+
IEkganVzdCBub3RpY2VkIGhvdyB0aGUgbmFtaW5nIG9mIE5FVF9NRURJQVRFS19NQUMgYW5kIE5F
VF9NRURJQVRFS19TT0MKPiA+ID4gZm9yIHR3byBkaWZmZXJlbnQgZHJpdmVycyBkb2luZyB0aGUg
c2FtZSB0aGluZyBpcyByZWFsbHkgY29uZnVzaW5nLgo+ID4gPgo+ID4gPiBNYXliZSBzb21lb25l
IGNhbiBjb21lIHVwIHdpdGggYSBiZXR0ZXIgbmFtZSwgc3VjaCBhcyBvbmUKPiA+ID4gYmFzZWQg
b24gdGhlIHNvYyBpdCBmaXJzdCBzaG93ZWQgdXAgaW4uCj4gPiA+Cj4gPgo+ID4gVGhpcyBoYXMg
YmVlbiBkaXNjdXNzZWQgdW5kZXIgb25lIG9mIHRoZSBwcmV2aW91cyBzdWJtaXNzaW9ucy4KPiA+
IE1lZGlhVGVrIHdhbnRzIHRvIHVzZSB0aGlzIElQIG9uIGZ1dHVyZSBkZXNpZ25zIGFzIHdlbGwg
YW5kIGl0J3MKPiA+IGFscmVhZHkgdXNlZCBvbiBtdWx0aXBsZSBTb0NzIHNvIHRoZXkgd2FudCB0
aGUgbmFtZSB0byBiZSBnZW5lcmljLiBJCj4gPiBhbHNvIGFyZ3VlZCB0aGF0IHRoaXMgaXMgYSBk
cml2ZXIgc3Ryb25nbHkgdGllZCB0byBhIHNwZWNpZmljCj4gPiBwbGF0Zm9ybShzKSBzbyBpZiBz
b21lb25lIHdhbnRzIHRvIGNvbXBpbGUgaXQgLSB0aGV5IHByb2JhYmx5IGtub3cKPiA+IHdoYXQg
dGhleSdyZSBkb2luZy4KPiA+Cj4gPiBUaGF0IGJlaW5nIHNhaWQ6IEkgdmVyaWZpZWQgd2l0aCBN
ZWRpYVRlayBhbmQgdGhlIG5hbWUgb2YgdGhlIElQIEkgY2FuCj4gPiB1c2UgaXMgInN0YXIiIHNv
IHRoZXkgcHJvcG9zZWQgIm10ay1zdGFyLWV0aCIuIEkgd291bGQgcGVyc29uYWxseQo+ID4gbWF5
YmUgZ28gd2l0aCAibXRrLXN0YXItbWFjIi4gSG93IGFib3V0IHRob3NlIHR3bz8KPgo+IEJvdGgg
c2VlbSBmaW5lIHRvIG1lLiBJZiB0aGlzIHdhcyBwcmV2aW91c2x5IGRpc2N1c3NlZCwgSSBkb24n
dCB3YW50Cj4gZG8gZnVydGhlciBiaWtlLXNoZWRkaW5nIGFuZCBJJ2QgdHJ1c3QgeW91IHRvIHBp
Y2sgYSBzZW5zaWJsZSBuYW1lCj4gYmFzZWQgb24gdGhlIGVhcmxpZXIgZGlzY3Vzc2lvbnMuCj4K
PiA+ID4gICsgICAgICAgICAgICAgICAvKiBPbmUgb2YgdGhlIGNvdW50ZXJzIHJlYWNoZWQgMHg4
MDAwMDAwIC0gdXBkYXRlIHN0YXRzIGFuZAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgKiByZXNl
dCBhbGwgY291bnRlcnMuCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAqLwo+ID4gPiA+ICsgICAg
ICAgICAgICAgICBpZiAodW5saWtlbHkoc3RhdHVzICYgTVRLX01BQ19SRUdfSU5UX1NUU19NSUJf
Q05UX1RIKSkgewo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIG10a19tYWNfaW50cl9k
aXNhYmxlX3N0YXRzKHByaXYpOwo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHNjaGVk
dWxlX3dvcmsoJnByaXYtPnN0YXRzX3dvcmspOwo+ID4gPiA+ICsgICAgICAgICAgICAgICB9Cj4g
PiA+ID4gKyBiZWZvcgo+ID4gPiA+ICsgICAgICAgICAgICAgICBtdGtfbWFjX2ludHJfYWNrX2Fs
bChwcml2KTsKPiA+ID4KPiA+ID4gVGhlIGFjayBoZXJlIG5lZWRzIHRvIGJlIGRyb3BwZWQsIG90
aGVyd2lzZSB5b3UgY2FuIGdldCBmdXJ0aGVyCj4gPiA+IGludGVycnVwdHMgYmVmb3JlIHRoZSBi
b3R0b20gaGFsZiBoYXMgaGFkIGEgY2hhbmNlIHRvIHJ1bi4KPiA+ID4KPiA+Cj4gPiBNeSB0aGlu
a2luZyB3YXMgdGhpczogaWYgSSBtYXNrIHRoZSByZWxldmFudCBpbnRlcnJ1cHQgKFRYL1JYCj4g
PiBjb21wbGV0ZSkgYW5kIGFjayBpdCByaWdodCBhd2F5LCB0aGUgc3RhdHVzIGJpdCB3aWxsIGJl
IGFzc2VydGVkIG9uCj4gPiB0aGUgbmV4dCBwYWNrZXQgcmVjZWl2ZWQvc2VudCBidXQgdGhlIHBy
b2Nlc3Mgd29uJ3QgZ2V0IGludGVycnVwdGVkCj4gPiBhbmQgd2hlbiBJIHVubWFzayBpdCwgaXQg
d2lsbCBmaXJlIHJpZ2h0IGF3YXkgYW5kIEkgd29uJ3QgaGF2ZSB0bwo+ID4gcmVjaGVjayB0aGUg
c3RhdHVzIHJlZ2lzdGVyLiBJIG5vdGljZWQgdGhhdCBpZiBJIGFjayBpdCBhdCB0aGUgZW5kIG9m
Cj4gPiBuYXBpIHBvbGwgY2FsbGJhY2ssIEkgZW5kIHVwIG1pc3NpbmcgY2VydGFpbiBUWCBjb21w
bGV0ZSBpbnRlcnJ1cHRzCj4gPiBhbmQgZW5kIHVwIHNlZWluZyBhIGxvdCBvZiByZXRyYW5zbWlz
c2lvbnMgZXZlbiBpZiBJIHJlcmVhZCB0aGUgc3RhdHVzCj4gPiByZWdpc3Rlci4gSSdtIG5vdCB5
ZXQgc3VyZSB3aGVyZSB0aGlzIHJhY2UgaGFwcGVucy4KPgo+IFJpZ2h0LCBJIHNlZS4gSWYgeW91
IGp1c3QgYWNrIGF0IHRoZSBlbmQgb2YgdGhlIHBvbGwgZnVuY3Rpb24sIHlvdSBuZWVkCj4gdG8g
Y2hlY2sgdGhlIHJpbmdzIGFnYWluIHRvIGVuc3VyZSB5b3UgZGlkIG5vdCBtaXNzIGFuIGludGVy
cnVwdAo+IGJldHdlZW4gY2hlY2tpbmcgb2JzZXJ2aW5nIGJvdGggcmluZ3MgdG8gYmUgZW1wdHkg
YW5kIHRoZSBpcnEtYWNrLgo+Cj4gSSBzdXNwZWN0IGl0J3Mgc3RpbGwgY2hlYXBlciB0byBjaGVj
ayB0aGUgdHdvIHJpbmdzIHdpdGggYW4gdW5jYWNoZWQKPiByZWFkIGZyb20gbWVtb3J5IHRoYW4g
dG8gdG8gZG8gdGhlIHJlYWQtbW9kaWZ5LXdyaXRlIG9uIHRoZSBtbWlvLAo+IGJ1dCB5b3UnZCBo
YXZlIHRvIG1lYXN1cmUgdGhhdCB0byBiZSBzdXJlLgo+CgpVbmZvcnR1bmF0ZWx5IHRoZSBQSFkg
b24gdGhlIGJvYXJkIEkgaGF2ZSBpcyAxMDBNYnBzIHdoaWNoIGlzIHRoZQpsaW1pdGluZyBmYWN0
b3IgaW4gYmVuY2htYXJraW5nIHRoaXMgZHJpdmVyLiA6KAoKSWYgeW91J3JlIGZpbmUgd2l0aCB0
aGlzIC0gSSdkIGxpa2UgdG8gZml4IHRoZSBtaW5vciBpc3N1ZXMgeW91CnBvaW50ZWQgb3V0IGFu
ZCBzdGljayB3aXRoIHRoZSBjdXJyZW50IGFwcHJvYWNoIGZvciBub3cuIFdlIGNhbiBhbHdheXMK
Zml4IHRoZSBpbXBsZW1lbnRhdGlvbiBpbiB0aGUgZnV0dXJlIG9uY2UgYSBib2FyZCB3aXRoIGEg
R2lnYWJpdCBQSFkKaXMgb3V0LiBNb3N0IGV0aGVybmV0IGRyaXZlcnMgZG9uJ3QgdXNlIHN1Y2gg
ZmluZS1ncmFpbmVkIGludGVycnVwdApjb250cm9sIGFueXdheS4gSSBleHBlY3QgdGhlIHBlcmZv
cm1hbmNlIGRpZmZlcmVuY2VzIHRvIGJlIG1pbmlzY3VsZQpyZWFsbHkuCgpCYXJ0CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
