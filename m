Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052931C693E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vox22uPKJ+ErFTzHwzlSRecpTElfz51IoQhHrcs34v4=; b=Zj9gJv2tOdY7Um
	ntecoklq5sSXGTHYT4i45eTE5yDD3fzVJDk++efo4Jdvs7YsdCLH8nPfbYD8tUZ/rLycF92KEFkfF
	tH05/AapNBqn2Nz3oTMS7TJF84wRSELkSys8oRKrY5Ohpx8bxr2qUwL5xC495h0/OYGkapTPObxiP
	oJFexiH3rH8ZzlDWtcWUT8mLylhPgsUJ+6o8bl/n9iv2T+OHWGQYuOjY96OHMQOoIfEhZxeFJUaO8
	BX/dWW7CoMdWkn2ZNfrPZCU/DNP1eWLqBK/R5/EMJrujRlVm4O+0UvoEmFt73UM30VBIyyyysZYj0
	ICBGesfA0mwOTs0FvzRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDp8-0008BF-8W; Wed, 06 May 2020 06:46:30 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDp0-0008AZ-0L
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:46:23 +0000
Received: by mail-il1-x142.google.com with SMTP id w6so744626ilg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 23:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+/CvsVsRvsIe2fdwin42oKRwBiHMUNkSBi3zIOYY4k4=;
 b=DT6WmVJOSFGWbwoJzWlGLC1MHvldjbW1aPbGsebQDxlwZe7iwnSNTolfUa76eOd29p
 bY4+DyIu0HM7Ux+b79wpjv1HEfzbH79157RfuHSyksqzSHLknytmZWYPfXFm5QGWRjr4
 trPVXMgze6AHFPvmnwrxjqlJKc728qaSJfARZbGbfhF4give+X0eaTP+oNhRMf+5ac8P
 Arpc631AY/NRljNjuR5I9hcJdirqymusRyVIeUrXArJFWuT3SoexMOmMizUv/8UFF/8J
 GTpCWHc3c1BWYWTjKwX/5uBZaJK6C+gV4m4MOKsh1M5DtywTmEZjpryYodVi30SRoDCo
 EcOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+/CvsVsRvsIe2fdwin42oKRwBiHMUNkSBi3zIOYY4k4=;
 b=JYkL+TAPid1WJkJBbfNpxFNkdyteLTSt99d3q237zexlGzG8FcuSGzUbO0C3nJ80Rm
 i77z4D3QZxSuXdbSrcoimAVbmdgG3/NFrO7LUGDCeq5k135vOBBbi2A/43rlET0vG/3C
 qHUXUIazDD15ndwnRyjVD2a/lZHcOeFXlpMIksONfKGhBZ76gpkiVKOIJPSdbRCmfZr9
 sVvSyNbmhieJlk2mddJ8f9ucC38aKhAS6g1tsB5qFfh2ZLkPZ+YG5bj/fKAk5MymnV8A
 P49yCTWdm3aDIgHkzyrGXNNguQ7vErZou7kU09qQ+tm7G+4Ha4PPDfiFXeq8V2eyMhFg
 uAOQ==
X-Gm-Message-State: AGi0PuYwpVyTvS69I/QSLxFFzUokWy4uzKxfe9w+11nclvrV9Yeu7oNl
 pSp9qmUTnZ1AzZcQ4grZFBXlcApo9Y/hxyOvXjaFAA==
X-Google-Smtp-Source: APiQypKJEgnZebPwGNweIcvVeYvS0XTuBvG2j4m7bwSAxW9ci9eJ/kiRyX1pjwNIRh6SnysmSCqDdQb9gXdF8OxrFFg=
X-Received: by 2002:a92:aa07:: with SMTP id j7mr7777424ili.40.1588747581285;
 Tue, 05 May 2020 23:46:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-6-brgl@bgdev.pl>
 <CAKOOJTzcNr7mc9xusQm3nCzkq5P=ha-si3fizeEL2_KJUOC3-Q@mail.gmail.com>
In-Reply-To: <CAKOOJTzcNr7mc9xusQm3nCzkq5P=ha-si3fizeEL2_KJUOC3-Q@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 6 May 2020 08:46:10 +0200
Message-ID: <CAMRc=Md7gLMThfGF-7YLqW17MpMhU=UFbdTvfjbr9fFHTLir8g@mail.gmail.com>
Subject: Re: [PATCH 05/11] net: core: provide devm_register_netdev()
To: Edwin Peer <edwin.peer@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_234622_054140_7CC305FD 
X-CRM114-Status: GOOD (  16.66  )
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
Cc: devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

d3QuLCA1IG1haiAyMDIwIG8gMjE6MjUgRWR3aW4gUGVlciA8ZWR3aW4ucGVlckBicm9hZGNvbS5j
b20+IG5hcGlzYcWCKGEpOgo+ID4gKwo+ID4gK3N0YXRpYyB2b2lkIGRldm1fbmV0ZGV2X3JlbGVh
c2Uoc3RydWN0IGRldmljZSAqZGV2LCB2b2lkICp0aGlzKQo+ID4gK3sKPiA+ICsgICAgICAgc3Ry
dWN0IG5ldGRldmljZV9kZXZyZXMgKnJlcyA9IHRoaXM7Cj4gPiArCj4gPiArICAgICAgIHVucmVn
aXN0ZXJfbmV0ZGV2KHJlcy0+bmRldik7Cj4gPiArfQo+ID4gKwo+ID4gKy8qKgo+ID4gKyAqICAg
ICBkZXZtX3JlZ2lzdGVyX25ldGRldiAtIHJlc291cmNlIG1hbmFnZWQgdmFyaWFudCBvZiByZWdp
c3Rlcl9uZXRkZXYoKQo+ID4gKyAqICAgICBAbmRldjogZGV2aWNlIHRvIHJlZ2lzdGVyCj4gPiAr
ICoKPiA+ICsgKiAgICAgVGhpcyBpcyBhIGRldnJlcyB2YXJpYW50IG9mIHJlZ2lzdGVyX25ldGRl
digpIGZvciB3aGljaCB0aGUgdW5yZWdpc3Rlcgo+ID4gKyAqICAgICBmdW5jdGlvbiB3aWxsIGJl
IGNhbGwgYXV0b21hdGljYWxseSB3aGVuIHRoZSBwYXJlbnQgZGV2aWNlIG9mIG5kZXYKPiA+ICsg
KiAgICAgaXMgZGV0YWNoZWQuCj4gPiArICovCj4gPiAraW50IGRldm1fcmVnaXN0ZXJfbmV0ZGV2
KHN0cnVjdCBuZXRfZGV2aWNlICpuZGV2KQo+ID4gK3sKPiA+ICsgICAgICAgc3RydWN0IG5ldGRl
dmljZV9kZXZyZXMgKmRyOwo+ID4gKyAgICAgICBpbnQgcmV0Owo+ID4gKwo+ID4gKyAgICAgICAv
KiBzdHJ1Y3QgbmV0X2RldmljZSBpdHNlbGYgbXVzdCBiZSBkZXZyZXMgbWFuYWdlZC4gKi8KPiA+
ICsgICAgICAgQlVHX09OKCEobmRldi0+cHJpdl9mbGFncyAmIElGRl9JU19ERVZSRVMpKTsKPiA+
ICsgICAgICAgLyogc3RydWN0IG5ldF9kZXZpY2UgbXVzdCBoYXZlIGEgcGFyZW50IGRldmljZSAt
IGl0IHdpbGwgYmUgdGhlIGRldmljZQo+ID4gKyAgICAgICAgKiBtYW5hZ2luZyB0aGlzIHJlc291
cmNlLgo+ID4gKyAgICAgICAgKi8KPgo+IENhdGNoaW5nIHN0YXRpYyBwcm9ncmFtbWluZyBlcnJv
cnMgc2VlbXMgbGlrZSBhbiBleHBlbnNpdmUgdXNlIG9mIHRoZQo+IGxhc3QgcnVudGltZSBmbGFn
IGluIHRoZSBlbnVtLiBJdCB3b3VsZCBiZSB3ZWlyZCB0byBkZXZyZXMgbWFuYWdlIHRoZQo+IHVu
cmVnaXN0ZXIgYW5kIG5vdCBhbHNvIGNob29zZSB0byBtYW5hZ2UgdGhlIHVuZGVybHlpbmcgbWVt
b3J5IGluIHRoZQo+IHNhbWUgZmFzaGlvbiwgc28gaXQgd291bGRuJ3QgYmUgYW4gb2J2aW91cyBt
aXN0YWtlIHRvIG1ha2UuIElmIGl0IG11c3QKPiBiZSBlbmZvcmNlZCwgb25lIGNvdWxkIGFsc28g
aXRlcmF0ZSBvdmVyIHRoZSByZWdpc3RlcmVkIHJlbGVhc2UKPiBmdW5jdGlvbnMgYW5kIGNoZWNr
IGZvciB0aGUgcHJlc2VuY2Ugb2YgZGV2bV9mcmVlX25ldGRldiB3aXRob3V0Cj4gYnVybmluZyB0
aGUgZmxhZy4KPgoKSGkgRWR3aW4sCgpJJ3ZlIHN1Ym1pdHRlZCB0aGlzIHBhdGNoIHNvbWUgdGlt
ZSBhZ28gYWxyZWFkeSBhbmQgd2FzIHRvbGQgdG8gY2hlY2sKaWYgdGhlIHVuZGVybHlpbmcgbWVt
b3J5IGlzIG1hbmFnZWQgdG9vLiBJIGd1ZXNzIEkgY291bGQgdHJ5IHRvIHVzZQpkZXZyZXNfZmlu
ZCgpIGhlcmUgdGhvdWdoLgoKUmUgdGhlIGxhc3QgYml0IGluIHByaXZfZmxhZ3M6IGlzIHRoaXMg
cmVhbGx5IGEgcHJvYmxlbSB0aG91Z2g/IEl0J3MKbm90IGxpa2Ugc3RydWN0IG5ldF9kZXZpY2Ug
bXVzdCByZW1haW4gc3RhYmxlIC0gZS5nLiB3ZSBjYW4gbWFrZQpwcml2X2ZsYWdzIGEgYml0bWFw
LgoKQmFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
