Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 782D31F8533
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 22:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8OHjE1aS7GsK1Y77soFobirKQwHuJC8J543pCZpWuXQ=; b=cRrRDZ+5bTDW5i
	1gEtWA49xpsJ23BMNPWYR5N3tQ20gk6prb8yfMfcMb+tnA4QDnAunrleyv+ROkPgEqXDrckyMr15q
	s4GMJZ0N61VPVXYML3+lVO28Uwn4BHOdyhQWCtxWb4eIo7SI61GB0WTxhFY1cv2NF7c26ywRdu3f5
	QKpOfu15flzf9wEyKs82qb+p3suBhO+QJ2UdKIJHx2i+vjvOMi/vPB+SyanD9xRcupTQ6BHBAzkmX
	lpTefSZGiH/tPJSDpK/2Hcj5EVwYlzuwAtLwJnpr92NCLUxMU7Fvng8Yhkm9pKaoU2LwzfgouhmZh
	Y07pxJnlUgNRckL9OrUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkD2P-0006HO-2N; Sat, 13 Jun 2020 20:46:01 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkD2H-0006Gz-6j
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 20:45:54 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MN4qp-1jRJEp1SvF-00J3DB for <linux-arm-kernel@lists.infradead.org>; Sat,
 13 Jun 2020 22:45:50 +0200
Received: by mail-qk1-f169.google.com with SMTP id b27so12281340qka.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 13:45:50 -0700 (PDT)
X-Gm-Message-State: AOAM532KJ9HNqU8AJtTLWmmtvDuZ6lP8XbdNx3UzGQypSCL/mrIw8s2m
 dWKVfhea69Ep8KHZeJK/vr1bRm3A3AIfAyk6esg=
X-Google-Smtp-Source: ABdhPJzKWxg5VOCg6vbBkuAbhbaPgmzk/da3ldxe5pweVGVyYaX22A3xzHltoZ9K8pid2aVLjXRyBB04rgSXBEjgxrg=
X-Received: by 2002:ae9:de85:: with SMTP id s127mr9295217qkf.352.1592081149191; 
 Sat, 13 Jun 2020 13:45:49 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
 <20200612135538.GA13399@afzalpc>
 <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
 <20200613120432.GA5319@afzalpc>
In-Reply-To: <20200613120432.GA5319@afzalpc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 13 Jun 2020 22:45:33 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2g6a=V4BmPAOM0vNYUfJqm_aZziQhCxfF8MT_fbHMMLg@mail.gmail.com>
Message-ID: <CAK8P3a2g6a=V4BmPAOM0vNYUfJqm_aZziQhCxfF8MT_fbHMMLg@mail.gmail.com>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-Provags-ID: V03:K1:2t41GQ0Phjo3RH9jCRqQv0krm2YBcdkikB0igEHBzeG+R/BuD1+
 RRVGdOmibaX0sV2dFSq3pt6dkW7QcTLJdG76AtwuzVPcuYJIHgYTEpoa2kBJ8cBRSMJhz2P
 PmQAXfIRUeaVDBJvBZVCkajVtY1qNag6InTSCTXBO0KEgm2Gk3kKYsiJAmk7yfb9MxsvGzX
 yXB35+ofvTSGRA4GXyEBQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8P9fYZMkik0=:++vCuDlsu8g3CYFALFnzat
 CIwqDsK7LJars7P4FEMjD5+uWkytbHlHiaiSYfn7VXngd0GE9PSiHHU2YzlQymDxAfSjKIUwA
 godabavs83gpAvcFIbxQeT34PIH/fVsFv9KfmFFA5OGaLnTcpBxxfzFRWfkez30VyFcg2QzJ2
 6QZPPw8je0gj8qNt+9TCKEAHwWU3KDnLzghXdLs/jQDcjR9y/RkvwMufsgyCFc90t/LrsHjFM
 4f69wjIIA/TBdsFDgwMZkhIfPIz5eyrwUYy5pcSmbMps52iHjaK6s+puQfrLYIjIzKodjSwnr
 HGHG3RbeCGTvbaKnTWCUcBCpumUpFkyWt1HRnEaXad/ftwh2Nj6XfduTEoyh20vak+nlbBLNa
 iDBqvB0DVLEFiWQiVPGhJRTYXc3lpyslCU74SHFGbxSMLK3Vp3wa74s6YiEWHuZK0D4r/8k6m
 eid/m4Jtq9kCjqdeHw+sZmQvh/UlU+YvcM0IYIncGsTNIMk57NJo7bYDwZER/mZWl1pHz03Eu
 TExWSMZlvKAEBd/crN9DZTN9Nb2YINZYQfeR3ojKrYG1i5J/3bgQHnEDFlmkro780IZceVceE
 vPUvu2D+cEZAEmgq3APpc/YOZ+zXhVFmWxZ4VgdbOWVDcb1NDQ5qOsFs1XABLRZ0okp/qWGUW
 yjXy+qRhRwpGkOkOAtnWps4VBFLyc7jJU8/QxV4pQSoF9ut2EF1Tb4jsNE6sW/NlI1RCKN0/9
 YuL7mCqCvPyjdK/zeHeqAB2Q8fmGZeTjyhkoWTGHrFVfFaTJY+c6WiuGJ4rj2HoIuvxHYDw9U
 dYvhe15+/Wde649Sr6CBgliXyB0BxDOgWLBjgwlWJjBGhXcA5Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_134553_537349_E36D32EB 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
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
Cc: Nicolas Pitre <nico@fluxnic.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBKdW4gMTMsIDIwMjAgYXQgMjowNCBQTSBhZnphbCBtb2hhbW1lZCA8YWZ6YWwubW9o
ZC5tYUBnbWFpbC5jb20+IHdyb3RlOgo+IE9uIEZyaSwgSnVuIDEyLCAyMDIwIGF0IDEwOjA3OjI4
UE0gKzAyMDAsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4KPiA+IEkgdGhpbmsgYSBsb3QKPiA+IG9m
IHVzZXJjb3B5IGNhbGxzIGFyZSBvbmx5IGZvciBhIGZldyBieXRlcywgdGhvdWdoIHRoaXMgaXMg
b2YgY291cnNlCj4gPiBoaWdobHkgd29ya2xvYWQgZGVwZW5kZW50IGFuZCB5b3UgbWlnaHQgb25s
eSBjYXJlIGFib3V0IHRoZSBsYXJnZQo+ID4gb25lcy4KPgo+IE9ic2VydmF0aW9uIGlzIHRoYXQg
bWF4LiBwYWdlcyByZWFjaGluZyBjb3B5X3tmcm9tLHRvfV91c2VyKCkgaXMgMiwKPiBvYnNlcnZl
ZCBtYXhpbXVtIG9mIG4gKG51bWJlciBvZiBieXRlcykgYmVpbmcgMSBwYWdlIHNpemUuIGkgdGhp
bmsgQwo+IGxpYnJhcnkgY3V0cyBhbnkgc2l6ZSByZWFkLCB3cml0ZSB0byBwYWdlIHNpemUgKGlm
IGl0IGV4Y2VlZHMpICYKPiBpbnZva2VzIHRoZSBzeXN0ZW0gY2FsbC4gTWF4LiBwYWdlcyByZWFj
aGluZyAyLCBoYXBwZW5zIHdoZW4gJ24nCj4gY3Jvc3NlcyBwYWdlIGJvdW5kYXJ5LCB0aGlzIGhh
cyBiZWVuIG9ic2VydmVkIHcvIHNtYWxsIHNpemUgcmVxdWVzdAo+IGFzIHdlbGwgdy8gb25lcyBv
ZiBleGFjdCBwYWdlIHNpemUgKGJ1dCBub3QgcGFnZSBhbGlnbmVkKS4KClJpZ2h0LCB0aGlzIGlz
IGFwcGFyZW50bHkgYmVjYXVzZSB0bXBmcyB1c2VzIHNobWVtX2ZpbGVfcmVhZF9pdGVyKCkgdG8K
Y29weSB0aGUgZmlsZSBwYWdlcyBvbmUgYXQgYSB0aW1lLiBnZW5lcmljX2ZpbGVfYnVmZmVyZWRf
cmVhZCgpIHNlZW1zCnNpbWlsYXIsIHRvIGNvcHlpbmcgYmV0d2VlbiBhbiBhbGlnbmVkIGtlcm5l
bCBwYWdlIGFuZCBhZGRyZXNzIGluCnVzZXIgc3BhY2UgdGhhdCBpcyBub3QgcGFnZSBhbGlnbmVk
IHdvdWxkIGJlIGFuIGltcG9ydGFudCBjYXNlIHRvCm9wdGltaXplIGZvci4KCj4gUXVpY2tseSBj
b21wYXJpbmcgYm9vdC10aW1lIG9uIEJlYWdsZSBCb25lIFdoaXRlLCBib290IHRpbWUgaW5jcmVh
c2VzCj4gYnkgb25seSA0JSwgcGVyaGFwcyB0aGlzIHdvcnJ5IGlzIGlycmVsZXZhbnQsIGJ1dCBq
dXN0IHRob3VnaHQgd2lsbAo+IHB1dCBpdCBhY3Jvc3MuCgo0JSBib290IHRpbWUgaW5jcmVhc2Ug
c291bmRzIGxpa2UgYSBsb3QsIGVzcGVjaWFsbHkgaWYgdGhhdCBpcyBvbmx5IGZvcgpjb3B5X2Zy
b21fdXNlci9jb3B5X3RvX3VzZXIuIEluIHRoZSBlbmQgaXQgcmVhbGx5IGRlcGVuZHMgb24gaG93
IHdlbGwKZ2V0X3VzZXIoKS9wdXRfdXNlcigpIGFuZCBzbWFsbCBjb3BpZXMgY2FuIGJlIG9wdGlt
aXplZCBpbiB0aGUgZW5kLgoKPiA+IFRoZXJlIGlzIGFsc28gc3RpbGwgaG9wZSBvZiBvcHRpbWl6
aW5nIHNtYWxsIGFsaWduZWQgY29waWVzIGxpa2UKPiA+Cj4gPiBzZXRfdHRicjAodXNlcl90dGJy
KTsKPiA+IGxkbSgpOwo+ID4gc2V0X3R0YnIwKGtlcm5lbF90dGJyKTsKPiA+IHN0bSgpOwo+Cj4g
SG1tLCBtb3JlIG5lZWRzIHRvIGJlIGRvbmUgdG8gYmUgaW4gYSBwb3NpdGlvbiB0byB0ZXN0IGl0
LgoKVGhpcyBpcyBnb2luZyB0byBiZSBoaWdobHkgbWljcm9hcmNoaXRlY3R1cmUgc3BlY2lmaWMs
IHNvIGFueXRoaW5nIHlvdSB0ZXN0Cm9uIHRoZSBCZWFnbGVib25lJ3MgQ29ydGV4LUE4IG1pZ2h0
IG5vdCBhcHBseSB0byBBNy9BMTUvQTE3IHN5c3RlbXMsCmJ1dCBpZiB5b3Ugd2FudCB0byB0ZXN0
IHdoYXQgdGhlIG92ZXJoZWFkIGlzLCB5b3UgY291bGQgdHJ5IGNoYW5naW5nCi9kZXYvemVybyAo
b3IgYSBkaWZmZXJlbnQgY2hhcmRldiBsaWtlIGl0KSB0byB1c2UgYSBzZXJpZXMgb2YKcHV0X3Vz
ZXIoMCwgdTMydXB0cisrKSBpbiBwbGFjZSBvZiB3aGF0ZXZlciBpdCBoYXMsIGFuZCB0aGVuIHJl
cGxhY2UgdGhlCidzdHInIGluc3RydWN0aW9uIHdpdGggZHVtbXkgd3JpdGVzIHRvIHR0YnIwIHVz
aW5nIHRoZSB2YWx1ZSBpdCBhbHJlYWR5CmhhcywgbGlrZToKCiAgICAgIG1jciAgICAgcDE1LCAw
LCAlMCwgYzIsIGMwLCAwICAvKiBzZXRfdHRicjAoKSAqLwogICAgICBpc2IgIC8qIHByZXZlbnQg
c3BlY3VsYXRpdmUgYWNjZXNzIHRvIGtlcm5lbCB0YWJsZSAqLwogICAgICBzdHIgICAgJTEsIFsl
Ml0sMCAvKiB3cml0ZSAzMiBiaXQgdG8gdXNlciBzcGFjZSAqLwogICAgICBtY3IgICAgIHAxNSwg
MCwgJTAsIGMyLCBjMCwgMCAgLyogc2V0X3R0YnIwKCkgKi8KICAgICAgaXNiICAvKiBwcmV2ZW50
IHNwZWN1bGF0aXZlIGFjY2VzcyB0byB1c2VyIHRhYmxlICovCgpUaGlzIGlzIG9idmlvdXNseSBn
b2luZyB0byBiZSB2ZXJ5IHNsb3cgY29tcGFyZWQgdG8gdGhlIHNpbXBsZSBzdG9yZQp0aGVyZSBp
cyB0b2RheSBidXQgbWF5YmUgY2hlYXBlciB0aGFuIHRoZQpDT05GSUdfQVJNNjRfU1dfVFRCUjBf
UEFOIHVhY2Nlc3NfZW4vZGlzYWJsZSgpCm9uIGFybTY0IG9uIGEgc2luZ2xlIGdldF91c2VyKCkv
cHV0X3VzZXIoKS4KCkl0IHdvdWxkIGJlIGludGVyZXN0aW5nIHRvIGNvbXBhcmUgaXQgdG8gdGhl
IG92ZXJoZWFkIG9mIGEKZ2V0X3VzZXJfcGFnZV9mYXN0KCkgYmFzZWQgaW1wbGVtZW50YXRpb24u
IEZyb20gdGhlIG51bWJlcnMgeW91Cm1lYXN1cmVkLCBpdCBzZWVtcyB0aGUgYmVhZ2xlYm9uZSBj
dXJyZW50bHkgbmVlZHMgYW4gZXh0cmEgfjbCtXMgb3IKM8K1cyBwZXIgY29weV90by9mcm9tX3Vz
ZXIoKSBjYWxsIHdpdGggeW91ciBwYXRjaCwgZGVwZW5kaW5nIG9uIHdoYXQKeW91ciBiZW5jaG1h
cmsgd2FzIChNQi9zIGZvciBqdXN0IHJlYWRpbmcgb3Igd3JpdGluZyB2cyBNQi9zIGZvcgpjb3B5
aW5nIGZyb20gb25lIGZpbGUgdG8gYW5vdGhlciB0aHJvdWdoIGEgdXNlciBzcGFjZSBidWZmZXIp
LgoKICAgICAgIEFybmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
