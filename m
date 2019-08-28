Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A86AD9FBE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:33:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o19lZM0rYyHm/R4hCAS8zgajyJO0cugbE3aX28egQJY=; b=PtetQmhuMfpsif
	4qnJ1VLVBRYGCeL2qHcdPC24lieAx7aRkmpJfu/Bq2xnuAnDY+qXnSst3Uoq3VM8bbAoh4j1ZzGMP
	BDCR3hv+Zo69UJuKQB1iVLTPLBhviBg/FwzjYEsoplFiNEScXCNCfqoapXnfZa7a0NIjZPYpPaR97
	u2zdVMYdgt1GuaQHTarsK9cYmTh+Wtj/nzftYWAsgz6o5reJplXYwc1rY/PZMJlr6Jp3q5keOj1i3
	jKnwZlQdCnsNfO/vz/CW2ijVetP+QfTwxRWBR8+We4QPm3hMz7gQa+rwhxMVZSZQo0cgVf57C7LLK
	jWaSklNZtI/MdtD9fOyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sSZ-00088C-Nv; Wed, 28 Aug 2019 07:33:40 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2sSH-00087j-N2
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:33:23 +0000
Received: by mail-io1-xd43.google.com with SMTP id o9so4012855iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 00:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=B/tH3RdlaqfDevaRszeKuzoma9dqc91+yjGGb3NOxOw=;
 b=EEMGEdKeWolNfI/KooBfRZc/Q+OmhNR1y2gBIBqBmjrn4rM9Hw/6LcXR/mLjl1iHJs
 s80DsCvYOTbhDqAxUSB4W49DEn3MNVo4EfV3Czqdeni+peW7ElAIfU7Q/CcoqM+TtzuE
 S7nqxdB74qcxFqm7XWNGSdt0ypJSogVkpoWxssjvJ5AbqqE5SmQ6Ejcl3D6+vUGaquLp
 XrcxcyfiRAZrObjKdgHxBmgASOfwbkKtcz7FZuXknMLB/w3oRuN/3wgtEXLz15DVvS+c
 U1xYdmO/m7i4yot972KQQpfS4Jx1JRxwed+y1B03CrDUdZi01EQ0mrQAxNf8x20YCjOo
 GbxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=B/tH3RdlaqfDevaRszeKuzoma9dqc91+yjGGb3NOxOw=;
 b=HOx1X5+DXZtXAnKIJfHEuYvGEWdkQ5tgbXOvXFRBYDrYEgy9ls6spWpw66MMKQgc2R
 bKBfTDJZ9brb7CYaGK5NRXfJrZrOCpgogUmw2CCAFsJ/bRDG+jQ/LE4eywd6961gw6mG
 9vgnYmmcrIqytPPlyd+QKrAoIyFZlBoj+IHh9Nr64bIt1a4XZnyqayr//QgS4yjSsluy
 acCd7IQ8bAhkpjBKdGgKcTldcmuegM34VTalHHOpSXdOi/EwagMHPWWNUqNy5Q2RHeCo
 CTiMHeF3MQ6Y1TUGNJRa5vr6qVu5bOHsWIiJIBxgzU0LLKsnjeFM7ImEhzN3eQJPTEcB
 HcUQ==
X-Gm-Message-State: APjAAAVlqMM3F4YS+wFDmswXQ7SFyUBkKDCxLiZW2per2Pgi3MMhj4YV
 JPQhg3XJFvLRBOLxtB3XzBYUaQi3yK6KuDBX6JyjJA==
X-Google-Smtp-Source: APXvYqwOjNI+i+/HB7m+y+971nBx96PG4X7ieZWlCQ3DG1WaX6qUh9J5Pye64Etxjg0B9PMLJFz9Jzg7RitiVF2UobE=
X-Received: by 2002:a5d:9746:: with SMTP id c6mr913068ioo.235.1566977600395;
 Wed, 28 Aug 2019 00:33:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190725131257.6142-1-brgl@bgdev.pl>
 <CAK8P3a1FXyRRi5q48h-=egFjgoRJvy6_zuO9MQaAOMA-bsJKRA@mail.gmail.com>
 <CAMRc=Me_7aw_RvU_tZnVUgduN2wWYGqJ7hQirQ2RLzxGiPujvQ@mail.gmail.com>
In-Reply-To: <CAMRc=Me_7aw_RvU_tZnVUgduN2wWYGqJ7hQirQ2RLzxGiPujvQ@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 28 Aug 2019 09:33:09 +0200
Message-ID: <CAMRc=MdCviMA4gakqFS3+F-nU2XkdmmZbCb-m1mBJdGRHufKGg@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] ARM: make DaVinci part of the ARM v5 multiplatform
 build
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_003321_751410_D29AD780 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cG9uLiwgNSBzaWUgMjAxOSBvIDEwOjMxIEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYu
cGw+IG5hcGlzYcWCKGEpOgo+Cj4gY3p3LiwgMjUgbGlwIDIwMTkgbyAxNjo1NyBBcm5kIEJlcmdt
YW5uIDxhcm5kQGFybmRiLmRlPiBuYXBpc2HFgihhKToKPiA+Cj4gPiBPbiBUaHUsIEp1bCAyNSwg
MjAxOSBhdCAzOjEzIFBNIEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xAYmdkZXYucGw+IHdyb3Rl
Ogo+ID4gPgo+ID4gPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5
bGlicmUuY29tPgo+ID4gPgo+ID4gPiBUaGlzIHNlcmllcyBtYWtlcyBEYVZpbmNpIHBhcnQgb2Yg
dGhlIG11bHRpcGxhdGZvcm0gYnVpbGQgZm9yIEFSTSB2NS4KPiA+ID4KPiA+ID4gRmlyc3QgdGhy
ZWUgcGF0Y2hlcyBmaXggYnVpbGQgZXJyb3JzIHNwb3R0ZWQgYW5kIGZpeGVkIGJ5IEFybmQgd2l0
aCB2MS4KPiA+ID4KPiA+ID4gVGhlIGZvdXJ0aCBwYXRjaCBhZGRzIG5lY2Vzc2FyeSBiaXRzIGFu
ZCBwaWVjZXMgZm9yIGRhdmluY2kgdG8gc3VwcG9ydAo+ID4gPiBtdWx0aXBsYXRmb3JtIGJ1aWxk
IGFuZCB0aGUgbGFzdCBvbmUgYWN0dWFsbHkgYWRkcyBhbGwgZGF2aW5jaSBib2FyZHMKPiA+ID4g
dG8gbXVsdGlfdjVfZGVmY29uZmlnLgo+ID4gPgo+ID4gPiBUZXN0ZWQgb24gZGE4NTAtbGNkayB3
aXRoIGJvdGggbXVsdGlfdjUgYXMgd2VsbCBhcyBkYXZpbmNpX2FsbCBkZWZjb25maWdzLgo+ID4g
Pgo+ID4gPiB2MSAtPiB2MjoKPiA+ID4gLSBhZGRlZCBwYXRjaGVzIGZyb20gQXJuZCB0aGF0IGZp
eCBidWlsZCBlcnJvcnMgc3BvdHRlZCB3aGVuIGJ1aWxkaW5nCj4gPiA+ICAgcmFuZG9tIGNvbmZp
Z3VyYXRpb25zIChtdWNoIGFwcHJlY2lhdGVkKQo+ID4gPiAtIHJlYmFzZWQgb24gdG9wIG9mIHY1
LjMtcmMxCj4gPgo+ID4gPiBBcm5kIEJlcmdtYW5uICgzKToKPiA+ID4gc3RhZ2luZzogbWVkaWEv
ZGF2aW5jaV92cGZlOiBmaXggcGlubXV4IHNldHVwIGNvbXBpbGF0aW9uCj4gPiA+ICBtZWRpYTog
ZGF2aW5jaS12cGJlOiByZW1vdmUgb2Jzb2xldGUgaW5jbHVkZXMKPiA+ID4gIGRhdmluY2k6IGZp
eCBzbGVlcC5TIGJ1aWxkIGVycm9yIG9uIEFSTXY0Cj4gPiA+Cj4gPiA+IEJhcnRvc3ogR29sYXN6
ZXdza2kgKDIpOgo+ID4gPiAgQVJNOiBkYXZpbmNpOiBzdXBwb3J0IG11bHRpcGxhdGZvcm0gYnVp
bGQgZm9yIEFSTSB2NQo+ID4gPiAgQVJNOiBtdWx0aV92NV9kZWZjb25maWc6IG1ha2UgRGFWaW5j
aSBwYXJ0IG9mIHRoZSBBUk0gdjUgbXVsdGlwbGF0Zm9ybSBidWlsZAo+ID4KPiA+Cj4gPiBUaGFu
a3MgYSBsb3QgZm9yIHJlcG9zdGluZyB0aGUgc2VyaWVzIQo+ID4KPiA+IEkgd29uZGVyIGhvdyB3
ZSBzaG91ZCBkZWFsIHdpdGggdGhlIGRlcGVuZGVuY2llcyBub3cgdGhhdCB0aGUgdHdvIG1lZGlh
Cj4gPiBwYXRjaGVzIGdvdCBtZXJnZWQgaW4gdGhlIGxpbnV4LW1lZGlhIHRyZWUuCj4gPgo+ID4g
SXQgd291bGQgYmUgdGVtcHRpbmcgdG8ganVzdCBtZXJnZSB0aGUgYXJjaC9hcm0vIGNoYW5nZXMs
IGJ1dCB0aGF0IGNyZWF0ZXMKPiA+IGEgYmlzZWN0aW9uIHByb2JsZW0gd2hlbiB0aGUgdnBiZSBk
cml2ZXIgaXMgZW5hYmxlZC4gSSBkb24ndCBjYXJlCj4gPiBhYm91dCB0aGUgc3RhZ2luZyBkcml2
ZXIgcmVhbGx5IGFzIHRoYXQgb25lIGlzIGJyb2tlbiBhbnl3YXksIGJ1dCBpbmNsdWRpbmcKPiA+
IHRoZSAibWVkaWE6IGRhdmluY2ktdnBiZTogcmVtb3ZlIG9ic29sZXRlIGluY2x1ZGVzIiBmaXgg
d291bGQgYmUgYmV0dGVyCj4gPiBoZXJlLgo+ID4KPiA+IE1hdXJvLCBhbnkgaWRlYSBmb3IgaG93
IHRvIGhhbmRsZSB0aGF0PyBTaG91bGQgd2UgYXBwbHkgYW4gaWRlbnRpY2FsCj4gPiBwYXRjaCB0
byB0aGUgZGF2aW5jaSB0cmVlLCBvciBtYXliZSBvbmx5IGhhdmUgaXQgdGhlIEFSTSB0cmVlIGFu
ZCB5b3UKPiA+IGRyb3AgaXQgZnJvbSB5b3VyIHRyZWUgKEkgZG9uJ3Qga25vdyBpZiB5b3UgaGF2
ZSBhIHJ1bGUgYWdhaW5zdCByZWJhc2luZykuCj4gPiBTb3JyeSBmb3Igbm90IGNvb3JkaW5hdGlu
ZyB3aXRoIEJhcnRvc3ogYmVmb3JlIEkgc2VudCB0aGUgcGF0Y2ggYWdhaW4KPiA+IGVhcmxpZXIg
dGhpcyB3ZWVrLgo+ID4KPiA+Cj4gPiAgICAgICBBcm5kCj4KPiBIaSBBcm5kLAo+Cj4gaXMgdGhl
cmUgYW55IGFjdGlvbiByZXF1aXJlZCBmcm9tIG1lIGZvciB0aGlzIHNlcmllcz8KPgo+IEJhcnQK
ClBpbmcuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
