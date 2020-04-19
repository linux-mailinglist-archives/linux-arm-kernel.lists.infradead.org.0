Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D1D1AF5F8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 02:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obvS4qj8kBBQJ8UbYaS90fQixnPaNiYIUbKzrDqa9Uw=; b=Ycy75nXzze+Fek
	x2yFJqSRzTCuXARM8e75IiyvKPL5xut9FvWW23b5XbHnjf1Sj7fhndiLILD0BAA4U5BR1Ea9Xke/E
	nH0RDyFQ+7aQZB/V+y9YV6pDz96h4Z5ysgqj3ohk1rqoQn2qakIrUqd/lvqhqEGy5PENHa/45zYln
	a0OT2jwE0eQS++XvKLi6JJtEycCQSyENZvQtVjd8G8ZNH+8vgTPuXTCdEeuDi4WwdqQR/LeozE2ls
	UAf6LilUnsqeuMBm3lhqedqyhh0UMD84oYQlXZ1d8aIGphhcReH9M7EDyN6VNHp2kCLsFaxDbVFBY
	05jPUA0yiQQlWhUGWqPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPxT7-0001fc-Dt; Sun, 19 Apr 2020 00:05:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPxSu-0001fC-Uu; Sun, 19 Apr 2020 00:05:42 +0000
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C6CF21BE5;
 Sun, 19 Apr 2020 00:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587254740;
 bh=33JbAin6PHGhZptu6f59hi3G6ZY0jAf3vYhmJbelnZs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=c9xI/fMRrcCukMve30jKP7r7lyu297B6dvw7fDLsnxAk0jCkSrNEksbOCz01+CiDu
 R577ZnyWYoRCO6QuICusA9MpUTHxL3PJLH7hCDic/CkbCyLXgSUKwFzRzsPzMiEYtP
 F3K1YJev2Eb60V4Lzt5htapSgfInfmQlorxGoWO0=
Received: by mail-ej1-f54.google.com with SMTP id n17so4714504ejh.7;
 Sat, 18 Apr 2020 17:05:40 -0700 (PDT)
X-Gm-Message-State: AGi0PuaNw9HmrOFdjCIfbjrZwBFk+QlLIfAlglefpzA0tdi/I6aPhHBl
 HBRe7kV/M9L+u7HsrAGh+8XcjuVd5cCn7BMzOw==
X-Google-Smtp-Source: APiQypIULvFRzFBMzFkL3EtwUTFi+ypYZd5hhQkN2Wb/68KrYZ5++frnyfAGznqAC6oplPRSjpCJI0G+9kqCx9X0Rjk=
X-Received: by 2002:a17:906:eb90:: with SMTP id
 mh16mr9757904ejb.201.1587254738804; 
 Sat, 18 Apr 2020 17:05:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200415011319.25559-1-jitao.shi@mediatek.com>
 <20200415011319.25559-4-jitao.shi@mediatek.com>
In-Reply-To: <20200415011319.25559-4-jitao.shi@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sun, 19 Apr 2020 08:05:26 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-Ym8m-PEiwXyJkw=knHRjEMyqRe-jCzm0=o7vB-x1JGw@mail.gmail.com>
Message-ID: <CAAOTY_-Ym8m-PEiwXyJkw=knHRjEMyqRe-jCzm0=o7vB-x1JGw@mail.gmail.com>
Subject: Re: [PATCH v15 3/3] drm/mediatek: set dpi pin mode to gpio low to
 avoid leakage current
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_170541_035448_D05D37D8 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream <srv_heupstream@mediatek.com>, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, cawa.cheng@mediatek.com,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEppdGFvOgoKSml0YW8gU2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsuY29tPiDmlrwgMjAyMOW5
tDTmnIgxNeaXpSDpgLHkuIkg5LiK5Y2IOToxM+Wvq+mBk++8mgo+Cj4gQ29uZmlnIGRwaSBwaW5z
IG1vZGUgdG8gb3V0cHV0IGFuZCBwdWxsIGxvdyB3aGVuIGRwaSBpcyBkaXNhYmxlZC4KPiBBb3Zp
ZCBsZWFrYWdlIGN1cnJlbnQgZnJvbSBzb21lIGRwaSBwaW5zIChIc3luYyBWc3luYyBERSAuLi4g
KS4KCkFwcGxpZWQgdG8gbWVkaWF0ZWstZHJtLW5leHQgWzFdLCB0aGFua3MuCgpbMV0gaHR0cHM6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvY2h1bmt1YW5nLmh1L2xp
bnV4LmdpdC9sb2cvP2g9bWVkaWF0ZWstZHJtLW5leHQKClJlZ2FyZHMsQ2h1bi1LdWFuZy4KCj4K
PiBSZXZpZXdlZC1ieTogQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+Cj4g
U2lnbmVkLW9mZi1ieTogSml0YW8gU2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RwaS5jIHwgMzEgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHBpLmMgYi9kcml2ZXJz
L2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RwaS5jCj4gaW5kZXggMDg3ZjVjZTczMmUxLi4xZTAxMjU0
Nzg4ZDkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcGkuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHBpLmMKPiBAQCAtMTAsNyArMTAs
OSBAQAo+ICAjaW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9vZi5o
Pgo+ICAjaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9vZl9n
cGlvLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9vZl9ncmFwaC5oPgo+ICsjaW5jbHVkZSA8bGludXgv
cGluY3RybC9jb25zdW1lci5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+
Cj4gICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+Cj4gQEAgLTc0LDYgKzc2LDkgQEAgc3RydWN0
IG10a19kcGkgewo+ICAgICAgICAgZW51bSBtdGtfZHBpX291dF95Y19tYXAgeWNfbWFwOwo+ICAg
ICAgICAgZW51bSBtdGtfZHBpX291dF9iaXRfbnVtIGJpdF9udW07Cj4gICAgICAgICBlbnVtIG10
a19kcGlfb3V0X2NoYW5uZWxfc3dhcCBjaGFubmVsX3N3YXA7Cj4gKyAgICAgICBzdHJ1Y3QgcGlu
Y3RybCAqcGluY3RybDsKPiArICAgICAgIHN0cnVjdCBwaW5jdHJsX3N0YXRlICpwaW5zX2dwaW87
Cj4gKyAgICAgICBzdHJ1Y3QgcGluY3RybF9zdGF0ZSAqcGluc19kcGk7Cj4gICAgICAgICBpbnQg
cmVmY291bnQ7Cj4gIH07Cj4KPiBAQCAtMzc5LDYgKzM4NCw5IEBAIHN0YXRpYyB2b2lkIG10a19k
cGlfcG93ZXJfb2ZmKHN0cnVjdCBtdGtfZHBpICpkcGkpCj4gICAgICAgICBpZiAoLS1kcGktPnJl
ZmNvdW50ICE9IDApCj4gICAgICAgICAgICAgICAgIHJldHVybjsKPgo+ICsgICAgICAgaWYgKGRw
aS0+cGluY3RybCAmJiBkcGktPnBpbnNfZ3BpbykKPiArICAgICAgICAgICAgICAgcGluY3RybF9z
ZWxlY3Rfc3RhdGUoZHBpLT5waW5jdHJsLCBkcGktPnBpbnNfZ3Bpbyk7Cj4gKwo+ICAgICAgICAg
bXRrX2RwaV9kaXNhYmxlKGRwaSk7Cj4gICAgICAgICBjbGtfZGlzYWJsZV91bnByZXBhcmUoZHBp
LT5waXhlbF9jbGspOwo+ICAgICAgICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRwaS0+ZW5naW5l
X2Nsayk7Cj4gQEAgLTQwMyw2ICs0MTEsOSBAQCBzdGF0aWMgaW50IG10a19kcGlfcG93ZXJfb24o
c3RydWN0IG10a19kcGkgKmRwaSkKPiAgICAgICAgICAgICAgICAgZ290byBlcnJfcGl4ZWw7Cj4g
ICAgICAgICB9Cj4KPiArICAgICAgIGlmIChkcGktPnBpbmN0cmwgJiYgZHBpLT5waW5zX2RwaSkK
PiArICAgICAgICAgICAgICAgcGluY3RybF9zZWxlY3Rfc3RhdGUoZHBpLT5waW5jdHJsLCBkcGkt
PnBpbnNfZHBpKTsKPiArCj4gICAgICAgICBtdGtfZHBpX2VuYWJsZShkcGkpOwo+ICAgICAgICAg
cmV0dXJuIDA7Cj4KPiBAQCAtNzA1LDYgKzcxNiwyNiBAQCBzdGF0aWMgaW50IG10a19kcGlfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAgIGRwaS0+ZGV2ID0gZGV2
Owo+ICAgICAgICAgZHBpLT5jb25mID0gKHN0cnVjdCBtdGtfZHBpX2NvbmYgKilvZl9kZXZpY2Vf
Z2V0X21hdGNoX2RhdGEoZGV2KTsKPgo+ICsgICAgICAgZHBpLT5waW5jdHJsID0gZGV2bV9waW5j
dHJsX2dldCgmcGRldi0+ZGV2KTsKPiArICAgICAgIGlmIChJU19FUlIoZHBpLT5waW5jdHJsKSkg
ewo+ICsgICAgICAgICAgICAgICBkcGktPnBpbmN0cmwgPSBOVUxMOwo+ICsgICAgICAgICAgICAg
ICBkZXZfZGJnKCZwZGV2LT5kZXYsICJDYW5ub3QgZmluZCBwaW5jdHJsIVxuIik7Cj4gKyAgICAg
ICB9Cj4gKyAgICAgICBpZiAoZHBpLT5waW5jdHJsKSB7Cj4gKyAgICAgICAgICAgICAgIGRwaS0+
cGluc19ncGlvID0gcGluY3RybF9sb29rdXBfc3RhdGUoZHBpLT5waW5jdHJsLCAic2xlZXAiKTsK
PiArICAgICAgICAgICAgICAgaWYgKElTX0VSUihkcGktPnBpbnNfZ3BpbykpIHsKPiArICAgICAg
ICAgICAgICAgICAgICAgICBkcGktPnBpbnNfZ3BpbyA9IE5VTEw7Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgZGV2X2RiZygmcGRldi0+ZGV2LCAiQ2Fubm90IGZpbmQgcGluY3RybCBpZGxlIVxu
Iik7Cj4gKyAgICAgICAgICAgICAgIH0KPiArICAgICAgICAgICAgICAgaWYgKGRwaS0+cGluc19n
cGlvKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHBpbmN0cmxfc2VsZWN0X3N0YXRlKGRwaS0+
cGluY3RybCwgZHBpLT5waW5zX2dwaW8pOwo+ICsKPiArICAgICAgICAgICAgICAgZHBpLT5waW5z
X2RwaSA9IHBpbmN0cmxfbG9va3VwX3N0YXRlKGRwaS0+cGluY3RybCwgImRlZmF1bHQiKTsKPiAr
ICAgICAgICAgICAgICAgaWYgKElTX0VSUihkcGktPnBpbnNfZHBpKSkgewo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGRwaS0+cGluc19kcGkgPSBOVUxMOwo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGRldl9kYmcoJnBkZXYtPmRldiwgIkNhbm5vdCBmaW5kIHBpbmN0cmwgYWN0aXZlIVxuIik7
Cj4gKyAgICAgICAgICAgICAgIH0KPiArICAgICAgIH0KPiAgICAgICAgIG1lbSA9IHBsYXRmb3Jt
X2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMCk7Cj4gICAgICAgICBkcGktPnJl
Z3MgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoZGV2LCBtZW0pOwo+ICAgICAgICAgaWYgKElTX0VS
UihkcGktPnJlZ3MpKSB7Cj4gLS0KPiAyLjEyLjUKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
