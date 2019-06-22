Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5B84F4D2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 11:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9NSJ4BTTNsfdeow8uyke3nAAALDm855f3xfqlXUmVM=; b=fuM9ltBU76KwsG
	JfIHO5cbQy/D4RFoTed+pLD5P8CJHnzEwM5fBjdvJrXVvm4NRlMaF+unRXF/eGIcM73x/R3EXtxgN
	Cw+32FSkHf9tkN08GYcN+y2afI/wpNcllxs/X38N4aAvRgkBleV4y1jXQ2RMrLTu2k5I+X1yAqjOV
	zUwDPBiGjL2jT5KhvnRaj+Vcrvg3chYPSwrLU0yD/37w7iJS3fxDrXGKw+79MeoEiWat+qceiLFYO
	MF9yDzOF+y/DBUMLeKq+kEhOuTXV7G2QR7x5J/4Sb7jKA+7ys3pokxekjMNR3Sncho5BiuGW6LPdr
	DOjKTQ1rdayLu/GRvxRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hecXu-0007YO-7g; Sat, 22 Jun 2019 09:42:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hecXj-0007Xt-Ne
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 09:42:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id m7so4155674pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Jun 2019 02:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=9j2IX/8es+MUtSvRFN6FI7AtAfO00jHDIvuYq49EqJ4=;
 b=Ts6AebvHzxuEt7R7gbjgIxoo4iHiicCl3sDn4pN1BZckM0bNb7iQ8db/Rnc5ojI7xK
 Am+VjjmHYsPZbH04bvBDUkevdmvWbmB55qd4JuzFg+Q8g6DWFXiBeRG0YJ8kfK47u1E5
 gCDQyJUhaIPouxgkcfbIzWNh/6fXNX8kqLTqqOF70gPYZfR7sxojn2F2JJpeBIZ+HhWj
 O2dcWwu/QL4xRGvJnSU2bUZjB/JjJXmLYQ7IdYz5WMBhHxfGJeJpBjwg6QhLDy06qTKq
 uDtBFAh4z95tU/HD9nzcWJKhKIH5rtr/zdiK2fZahh/MeJc3voiawu/7zXQTk8tI0Dgv
 QQ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=9j2IX/8es+MUtSvRFN6FI7AtAfO00jHDIvuYq49EqJ4=;
 b=p9RJpEre49VKXwCkk6uFTTOzKm+QcEtMkgPYjdi7ARF26CbSnCUujSmuB1Fskg2r0u
 PkrByOAfXg2bSGgbezEYxrBrM0nRI7yaHcwBNEh86OhKaT0xHOnudZV3lIn+niz+yKED
 oH7IPLjZuFhixcqZBy/FtBuPrC3tt7jgVjA8q01jr3blbXWS+wuoELkVur19YgCT986I
 AXx1KrhAfgmlq1WegJEgR2EDsSvu19M8WyONShu1D9T7YfigmHsD2F7oH3s+9ti3YQqJ
 GRJUXYy+C2Sx4p69Wggw1aT4BwibhKqVTYBuDqha645XlJiRUxwbsPr2LDZjLT2KdP1v
 s7Rg==
X-Gm-Message-State: APjAAAVmkDxQGT0YJ4i5dcyCzsv+p9ASXh+90Vo7+HygQmDVRsikHPzW
 7d9XKpzf3JLGpTEhLmDSrx0=
X-Google-Smtp-Source: APXvYqxQoSAjvHvNNS187noku0m+vdYzBFRilcXKyC8mBY29vB2ASuYueJN/FrkjmvvwxZV72kH54g==
X-Received: by 2002:a17:902:5ac4:: with SMTP id
 g4mr60474836plm.80.1561196561489; 
 Sat, 22 Jun 2019 02:42:41 -0700 (PDT)
Received: from localhost ([1.144.215.73])
 by smtp.gmail.com with ESMTPSA id u5sm4782194pgp.19.2019.06.22.02.42.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 22 Jun 2019 02:42:40 -0700 (PDT)
Date: Sat, 22 Jun 2019 19:42:16 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 1/4] mm: Move ioremap page table mapping function to mm/
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-mm@kvack.org
References: <20190610043838.27916-1-npiggin@gmail.com>
 <86991f76-2101-8087-37db-d939d5d744fa@c-s.fr>
 <1560915576.aqf69c3nf8.astroid@bobo.none>
 <7218a243-0d9c-ad90-d409-87663893799e@c-s.fr>
In-Reply-To: <7218a243-0d9c-ad90-d409-87663893799e@c-s.fr>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1561196381.zbgk3puxhu.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_024243_800349_81C49007 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hyaXN0b3BoZSBMZXJveSdzIG9uIEp1bmUgMTksIDIwMTkgMTE6MTggcG06Cj4gCj4gCj4gTGUg
MTkvMDYvMjAxOSDDoCAwNTo0MywgTmljaG9sYXMgUGlnZ2luIGEgw6ljcml0wqA6Cj4+IENocmlz
dG9waGUgTGVyb3kncyBvbiBKdW5lIDExLCAyMDE5IDM6MjQgcG06Cj4+Pgo+Pj4KPj4+IExlIDEw
LzA2LzIwMTkgw6AgMDY6MzgsIE5pY2hvbGFzIFBpZ2dpbiBhIMOpY3JpdMKgOgo+IAo+IFtzbmlw
XQo+IAo+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3ZtYWxsb2MuaCBiL2luY2x1ZGUv
bGludXgvdm1hbGxvYy5oCj4+Pj4gaW5kZXggNTFlMTMxMjQ1Mzc5Li44MTJiZWE1ODY2ZDYgMTAw
NjQ0Cj4+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC92bWFsbG9jLmgKPj4+PiArKysgYi9pbmNsdWRl
L2xpbnV4L3ZtYWxsb2MuaAo+Pj4+IEBAIC0xNDcsNiArMTQ3LDkgQEAgZXh0ZXJuIHN0cnVjdCB2
bV9zdHJ1Y3QgKmZpbmRfdm1fYXJlYShjb25zdCB2b2lkICphZGRyKTsKPj4+PiAgICBleHRlcm4g
aW50IG1hcF92bV9hcmVhKHN0cnVjdCB2bV9zdHJ1Y3QgKmFyZWEsIHBncHJvdF90IHByb3QsCj4+
Pj4gICAgCQkJc3RydWN0IHBhZ2UgKipwYWdlcyk7Cj4+Pj4gICAgI2lmZGVmIENPTkZJR19NTVUK
Pj4+PiArZXh0ZXJuIGludCB2bWFwX3JhbmdlKHVuc2lnbmVkIGxvbmcgYWRkciwKPj4+PiArCQkg
ICAgICAgdW5zaWduZWQgbG9uZyBlbmQsIHBoeXNfYWRkcl90IHBoeXNfYWRkciwgcGdwcm90X3Qg
cHJvdCwKPj4+PiArCQkgICAgICAgdW5zaWduZWQgaW50IG1heF9wYWdlX3NoaWZ0KTsKPj4+Cj4+
PiBEcm9wIGV4dGVybiBrZXl3b3JkIGhlcmUuCj4+IAo+PiBJIGRvbid0IGtub3cgaWYgSSB3YXMg
Z29pbmcgY3JhenkgYnV0IGF0IG9uZSBwb2ludCBJIHdhcyBnZXR0aW5nCj4+IGR1cGxpY2F0ZSBz
eW1ib2wgZXJyb3JzIHRoYXQgd2VyZSBmaXhlZCBieSBhZGRpbmcgZXh0ZXJuIHNvbWV3aGVyZS4K
PiAKPiBwcm9iYWJseSBub3Qgb24gYSBmdW5jdGlvbiBuYW1lIC4uLgoKSSBrbm93IGl0IHNvdW5k
cyBjcmF6eSA6UAoKPj4+IEFzIGNoZWNrcGF0Y2ggdGVsbHMgeW91LCAnQ0hFQ0s6QVZPSURfRVhU
RVJOUzogZXh0ZXJuIHByb3RvdHlwZXMgc2hvdWxkCj4+PiBiZSBhdm9pZGVkIGluIC5oIGZpbGVz
Jwo+PiAKPj4gSSBwcmVmZXIgdG8gZm9sbG93IGV4aXN0aW5nIHN0eWxlIGluIHN1cnJvdW5kaW5n
IGNvZGUgYXQgdGhlIGV4cGVuc2UKPj4gb2Ygc29tZSBjaGVja3BhdGNoIHdhcm5pbmdzLiBJZiBz
b21lYm9keSBsYXRlciB3YW50cyB0byAiZml4IiBpdAo+PiB0aGF0J3MgZmluZS4KPiAKPiBJIGRv
bid0IHRoaW5rIHRoYXQncyBmaW5lIHRvICdmaXgnIGxhdGVyIHRoaW5ncyB0aGF0IGNvdWxkIGJl
IGRvbmUgcmlnaHQgCj4gZnJvbSB0aGUgYmVnaW5pbmcuICdDb3NtZXRpYyBvbmx5JyBmaXhlcyBu
ZXZlciBoYXBwZW4gYmVjYXVzZSB0aGV5IGFyZSBhIAo+IG5pZ2h0bWFyZSBmb3IgYmFja3BvcnRz
LCBhbmQgYSBzaGFtZSBmb3IgJ2dpdCBibGFtZScuCj4gCj4gSW4gc29tZSBwYXRjaGVzLCB5b3Ug
YWRkIGNsZWFudXBzIHRvIG1ha2UgdGhlIGNvZGUgbG9vayBuaWNlciwgYW5kIGhlcmUgCj4geW91
IGhhdmUgdGhlIG9wcG9ydHVuaXR5IHRvIG1ha2UgdGhlIGNvZGUgbmljZSBmcm9tIHRoZSBiZWdp
bmluZyBhbmQgeW91IAo+IHByZWZlciByZXBlYXRpbmcgdGhlIGVycm9ycyBkb25lIGluIHRoZSBw
YXN0ID8gWW91J3JlIHN1cnByaXNpbmcgbWUuCgpXZWxsIEkgbmV2ZXIgY2xhaW1lZCB0byBiZSBj
b25zaXN0ZW50LiBJIGFjdHVhbGx5IGRvbid0IG1pbmQgdGhlCmV4dGVybiBrZXl3b3JkIHNvIGl0
J3MgcHJvYmFibHkganVzdCBteSBwZXJzb25hbCBwcmVmZXJlbmNlIHRoYXQKbWFrZXMgbWUgbm90
aWNlIHNvbWV0aGluZyBuZWFyYnkuIEkgaGF2ZSBkcm9wcGVkIHRob3NlICJjbGVhbnVwIgpjaGFu
Z2VzIHRob3VnaCwgc28gdGhlcmUuCgpUaGFua3MsCk5pY2sKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
