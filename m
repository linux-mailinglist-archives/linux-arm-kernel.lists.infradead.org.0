Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6741F2D94C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXKK6UO9c/YEqI4Nzur6mUxCH+aPkUz1XbvBIrQbyqU=; b=PQZmpOEc4BEJDl
	/6/E2cdL3XBPEqdaIVbWs9XvH0rofdeWzsPdyu9gkMrHWt5ZH2v4vZAdtjUMAqlapGGJhahgpo9Dv
	6gjj+wCBr9h24+0zJYDxP3nVWvUnxfBbqUalD0Ft5IHRekolKeor2eAMbybEMJ1Ju4zBIWM8j6Ek6
	QFxbSmuAti0bCLaawJy55/oOBO9mwQ12l2GTtgQkNr3FiYovM7oc7qDsdQ2dcmzbILFwQp7Nm7W7H
	4qVd9x+HGZC8ZIUIpMc+VHDhpZms6b5vcuIhlubh+/VYSPvM2HBnGwG+ZOt+9XXCOEzkazsmPGO7e
	BNFBTxOQ75r4o433RTyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVv7E-0004SZ-3v; Wed, 29 May 2019 09:43:24 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVv76-0004Rv-6Q
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:43:17 +0000
Received: by mail-it1-x143.google.com with SMTP id m3so2658613itl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 02:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1vwG6ed0prywy+z8KiREagdtZuNI9VOig8toshOVg54=;
 b=chAc1nMBM1I/RScOIuvOknRcBCvKLY8OQacCAciGX3D4YaWn/Hh24EppGZcPDR0rDf
 JHQduWJ7lOTPO9GrnA747wXh+eW9eJcInXMAHBfodLWGHDLOBUrUkr7vmIZjD6yOGYuy
 Wq2Xg8f3PCCgKgmrlyIzWc7LQ2QU09gR978fdQ0MnbskpGMWtvMOQuK1G/AFvl9j5su4
 sQcSUZUvFm3Dke07chnv0kr0O5FP+wjvCyp09+/uzd9NrFa0gNeiXqvqfY/XE2h1or1v
 gzc49DcdJPtvkp8DGycOBdeqgyO1/x/0DnBWZDLCiuMgNK5NgsIxxO77m0ZOkBhAm7H/
 MB+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1vwG6ed0prywy+z8KiREagdtZuNI9VOig8toshOVg54=;
 b=Y4ZPUWKCqGdwA902E3NoTkU3XXIr6yPYyDnba3RavMt2+/yEUdL17WBrhFtQ8oTvcg
 g6uaqTF0iDmiI2YAk6JXBQPLjcR5SuA8Jn4ofomsD0emN1X9Gl6Z2p+bbMcQbGvWbnVX
 BGzvOrYJv5QlGExDz2f3x8SB6R4kl83vNVn3H24wKLlA4FQI6GubZwJXs5+PDMNeJ0pr
 hkG59X0sG+MlhdsD3zACydRFfTs/tH4b5qDKcYufTqlkh+UgPbHYy1UUU2ZSsGZiwNYF
 3Hn4UJyN5vj68vVug5gLf22NsNdYVF4PQRDdNS+6noc8yhIwL3MvhBT8MXz+UvJfN9o6
 hezA==
X-Gm-Message-State: APjAAAU2E/F4goF+A75KusqX5TJW81adUyxiIKQGFsBYg8woXxK70RK6
 kL6f2saLryuSL9NrjRBssmWhrObkCdVYOxXJHJUuQQ==
X-Google-Smtp-Source: APXvYqzOol0fDJQfwGvb3+ZpLxlDyeBB7gKfR/q2fZYceJu/nmlQBxb+cmhFz/G3/FlwRFiCO6ubKizNA6OPnTs6xPk=
X-Received: by 2002:a02:1384:: with SMTP id 126mr13105640jaz.72.1559122994696; 
 Wed, 29 May 2019 02:43:14 -0700 (PDT)
MIME-Version: 1.0
References: <1559027797-30303-1-git-send-email-walter-zh.wu@mediatek.com>
 <CACT4Y+aCnODuffR7PafyYispp_U+ZdY1Dr0XQYvmghkogLJzSw@mail.gmail.com>
 <1559122529.17186.24.camel@mtksdccf07>
In-Reply-To: <1559122529.17186.24.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 29 May 2019 11:43:02 +0200
Message-ID: <CACT4Y+a__7FQxqbzowLq5KOZGyBys90S8=HP_Gqu_KoNm7W39w@mail.gmail.com>
Subject: Re: [PATCH] kasan: add memory corruption identification for software
 tag-based mode
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_024316_273014_1DCAE940 
X-CRM114-Status: GOOD (  29.28  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: wsd_upstream@mediatek.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Pekka Enberg <penberg@kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Miles Chen <miles.chen@mediatek.com>,
 Alexander Potapenko <glider@google.com>, David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Christoph Lameter <cl@linux.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMjksIDIwMTkgYXQgMTE6MzUgQU0gV2FsdGVyIFd1IDx3YWx0ZXItemgud3VA
bWVkaWF0ZWsuY29tPiB3cm90ZToKPgo+ID4gSGkgV2FsdGVyLAo+ID4KPiA+IFBsZWFzZSBkZXNj
cmliZSB5b3VyIHVzZSBjYXNlLgo+ID4gRm9yIHRlc3RpbmcgY29udGV4dCB0aGUgZ2VuZXJpYyBL
QVNBTiB3b3JrcyBiZXR0ZXIgYW5kIGl0IGRvZXMgaGF2ZQo+ID4gcXVhcmFudGluZSBhbHJlYWR5
LiBGb3IgcHJvZC9jYW5hcnkgZW52aXJvbm1lbnQgdGhlIHF1YXJhbnRpbmUgbWF5IGJlCj4gPiB1
bmFjY2VwdGFibGUgaW4gbW9zdCBjYXNlcy4KPiA+IEkgdGhpbmsgd2UgYWxzbyB3YW50IHRvIHVz
ZSB0YWctYmFzZWQgS0FTQU4gYXMgYSBiYXNlIGZvciBBUk0gTVRFCj4gPiBzdXBwb3J0IGluIG5l
YXIgZnV0dXJlIGFuZCBxdWFyYW50aW5lIHdpbGwgYmUgbW9zdCBsaWtlbHkgdW5hY2NlcHRhYmxl
Cj4gPiBmb3IgbWFpbiBNVEUgdXNlIGNhc2VzLiBTbyBhdCB0aGUgdmVyeSBsZWFzdCBJIHRoaW5r
IHRoaXMgc2hvdWxkIGJlCj4gPiBjb25maWd1cmFibGUuICtDYXRhbGluIGZvciB0aGlzLgo+ID4K
PiBNeSBwYXRjaCBob3BlIHRoZSB0YWctYmFzZWQgS0FTQU4gYnVnIHJlcG9ydCBtYWtlIGl0IGVh
c2llciBmb3IKPiBwcm9ncmFtbWVycyB0byBzZWUgbWVtb3J5IGNvcnJ1cHRpb24gcHJvYmxlbS4K
PiBCZWNhdXNlIG5vdyB0YWctYmFzZWQgS0FTQU4gYnVnIHJlcG9ydCBhbHdheXMgc2hvd3Mg4oCc
aW52YWxpZC1hY2Nlc3PigJ0KPiBlcnJvciwgbXkgcGF0Y2ggY2FuIGlkZW50aWZ5IGl0IHdoZXRo
ZXIgaXQgaXMgdXNlLWFmdGVyLWZyZWUgb3IKPiBvdXQtb2YtYm91bmQuCj4KPiBXZSBjYW4gdHJ5
IHRvIG1ha2Ugb3VyIHBhdGNoIGlzIGZlYXR1cmUgb3B0aW9uLiBUaGFua3MgeW91ciBzdWdnZXN0
aW9uLgo+IFdvdWxkIHlvdSBleHBsYWluIHdoeSB0aGUgcXVhcmFudGluZSBpcyB1bmFjY2VwdGFi
bGUgZm9yIG1haW4gTVRFPwo+IFRoYW5rcy4KCk1URSBpcyBzdXBwb3NlZCB0byBiZSB1c2VkIG9u
IGFjdHVhbCBwcm9kdWN0aW9uIGRldmljZXMuCkNvbnNpZGVyIHRoYXQgYnkgc3VibWl0dGluZyB0
aGlzIHBhdGNoIHlvdSBhcmUgYWN0dWFsbHkgcmVkdWNpbmcKYW1vdW50IG9mIGF2YWlsYWJsZSBt
ZW1vcnkgb24geW91ciBuZXh0IHBob25lIDspCgoKPiA+IFlvdSBkb24ndCBjaGFuZ2UgdG90YWwg
cXVhcmFudGluZSBzaXplIGFuZCBjaGFyZ2Ugb25seSBzaXplb2Yoc3RydWN0Cj4gPiBxbGlzdF9v
YmplY3QpLiBJZiBJIGFtIHJlYWRpbmcgdGhpcyBjb3JyZWN0bHksIHRoaXMgbWVhbnMgdGhhdAo+
ID4gcXVhcmFudGluZSB3aWxsIGhhdmUgdGhlIHNhbWUgbGFyZ2Ugb3ZlcmhlYWQgYXMgd2l0aCBn
ZW5lcmljIEtBU0FOLiBXZQo+ID4gd2lsbCBqdXN0IGNhY2hlIG11Y2ggbW9yZSBvYmplY3RzIHRo
ZXJlLiBUaGUgYm9vdCBiZW5jaG1hcmtzIG1heSBiZQo+ID4gdW5yZXByZXNlbnRhdGl2ZSBmb3Ig
dGhpcy4gRG9uJ3Qgd2UgbmVlZCB0byByZWR1Y2UgcXVhcmFudGluZSBzaXplIG9yCj4gPiBzb21l
dGhpbmc/Cj4gPgo+IFllcywgd2Ugd2lsbCB0cnkgdG8gY2hvb3NlIDIuIE15IG9yaWdpbmFsIGlk
ZWEgaXMgYmVsb25nIHRvIGl0LiBTbyB3ZQo+IHdpbGwgcmVkdWNlIHF1YXJhbnRpbmUgc2l6ZS4K
Pgo+IDEpLiBJZiBxdWFyYW50aW5lIHNpemUgaXMgdGhlIHNhbWUgd2l0aCBnZW5lcmljIEtBU0FO
IGFuZCB0YWctYmFzZWQKPiBLQVNBTiwgdGhlbiB0aGUgbWlzcyByYXRlIG9mIHVzZS1hZnRlci1m
cmVlIGNhc2UgaW4gZ2VuZXJpYyBLQVNBTiBpcwo+IGxhcmdlciB0aGFuIHRhZy1iYXNlZCBLQVNB
Ti4KPiAyKS4gSWYgdGFnLWJhc2VkIEtBU0FOIHF1YXJhbnRpbmUgc2l6ZSBpcyBzbWFsbGVyIGdl
bmVyaWMgS0FTQU4sIHRoZW4KPiB0aGUgbWlzcyByYXRlIG9mIHVzZS1hZnRlci1mcmVlIGNhc2Ug
bWF5IGJlIHRoZSBzYW1lLCBidXQgdGFnLWJhc2VkCj4gS0FTQU4gY2FuIHNhdmUgc2xhYiBtZW1v
cnkgdXNhZ2UuCj4KPgo+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogV2FsdGVyIFd1IDx3YWx0ZXIt
emgud3VAbWVkaWF0ZWsuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGluY2x1ZGUvbGludXgva2FzYW4u
aCAgfCAgMjAgKysrKystLS0KPiA+ID4gIG1tL2thc2FuL01ha2VmaWxlICAgICAgfCAgIDQgKy0K
PiA+ID4gIG1tL2thc2FuL2NvbW1vbi5jICAgICAgfCAgMTUgKysrKystCj4gPiA+ICBtbS9rYXNh
bi9nZW5lcmljLmMgICAgIHwgIDExIC0tLS0tCj4gPiA+ICBtbS9rYXNhbi9rYXNhbi5oICAgICAg
IHwgIDQ1ICsrKysrKysrKysrKysrKystCj4gPiA+ICBtbS9rYXNhbi9xdWFyYW50aW5lLmMgIHwg
MTA3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tCj4gPiA+ICBtbS9r
YXNhbi9yZXBvcnQuYyAgICAgIHwgIDM2ICsrKysrKysrKy0tLS0tCj4gPiA+ICBtbS9rYXNhbi90
YWdzLmMgICAgICAgIHwgIDY0ICsrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgbW0va2Fz
YW4vdGFnc19yZXBvcnQuYyB8ICAgNSArLQo+ID4gPiAgbW0vc2x1Yi5jICAgICAgICAgICAgICB8
ICAgMiAtCj4gPiA+ICAxMCBmaWxlcyBjaGFuZ2VkLCAyNjIgaW5zZXJ0aW9ucygrKSwgNDcgZGVs
ZXRpb25zKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2thc2FuLmgg
Yi9pbmNsdWRlL2xpbnV4L2thc2FuLmgKPiA+ID4gaW5kZXggYjQwZWExMDRkZDM2Li5iYmI1MmE4
YmY0YTkgMTAwNjQ0Cj4gPiA+IC0tLSBhL2luY2x1ZGUvbGludXgva2FzYW4uaAo+ID4gPiArKysg
Yi9pbmNsdWRlL2xpbnV4L2thc2FuLmgKPiA+ID4gQEAgLTgzLDYgKzgzLDkgQEAgc2l6ZV90IGth
c2FuX21ldGFkYXRhX3NpemUoc3RydWN0IGttZW1fY2FjaGUgKmNhY2hlKTsKPiA+ID4gIGJvb2wg
a2FzYW5fc2F2ZV9lbmFibGVfbXVsdGlfc2hvdCh2b2lkKTsKPiA+ID4gIHZvaWQga2FzYW5fcmVz
dG9yZV9tdWx0aV9zaG90KGJvb2wgZW5hYmxlZCk7Cj4gPiA+Cj4gPiA+ICt2b2lkIGthc2FuX2Nh
Y2hlX3NocmluayhzdHJ1Y3Qga21lbV9jYWNoZSAqY2FjaGUpOwo+ID4gPiArdm9pZCBrYXNhbl9j
YWNoZV9zaHV0ZG93bihzdHJ1Y3Qga21lbV9jYWNoZSAqY2FjaGUpOwo+ID4gPiArCj4gPiA+ICAj
ZWxzZSAvKiBDT05GSUdfS0FTQU4gKi8KPiA+ID4KPiA+ID4gIHN0YXRpYyBpbmxpbmUgdm9pZCBr
YXNhbl91bnBvaXNvbl9zaGFkb3coY29uc3Qgdm9pZCAqYWRkcmVzcywgc2l6ZV90IHNpemUpIHt9
Cj4gPiA+IEBAIC0xNTMsMjAgKzE1NiwxNCBAQCBzdGF0aWMgaW5saW5lIHZvaWQga2FzYW5fcmVt
b3ZlX3plcm9fc2hhZG93KHZvaWQgKnN0YXJ0LAo+ID4gPiAgc3RhdGljIGlubGluZSB2b2lkIGth
c2FuX3VucG9pc29uX3NsYWIoY29uc3Qgdm9pZCAqcHRyKSB7IH0KPiA+ID4gIHN0YXRpYyBpbmxp
bmUgc2l6ZV90IGthc2FuX21ldGFkYXRhX3NpemUoc3RydWN0IGttZW1fY2FjaGUgKmNhY2hlKSB7
IHJldHVybiAwOyB9Cj4gPiA+Cj4gPiA+ICtzdGF0aWMgaW5saW5lIHZvaWQga2FzYW5fY2FjaGVf
c2hyaW5rKHN0cnVjdCBrbWVtX2NhY2hlICpjYWNoZSkge30KPiA+ID4gK3N0YXRpYyBpbmxpbmUg
dm9pZCBrYXNhbl9jYWNoZV9zaHV0ZG93bihzdHJ1Y3Qga21lbV9jYWNoZSAqY2FjaGUpIHt9Cj4g
PiA+ICAjZW5kaWYgLyogQ09ORklHX0tBU0FOICovCj4gPiA+Cj4gPiA+ICAjaWZkZWYgQ09ORklH
X0tBU0FOX0dFTkVSSUMKPiA+ID4KPiA+ID4gICNkZWZpbmUgS0FTQU5fU0hBRE9XX0lOSVQgMAo+
ID4gPgo+ID4gPiAtdm9pZCBrYXNhbl9jYWNoZV9zaHJpbmsoc3RydWN0IGttZW1fY2FjaGUgKmNh
Y2hlKTsKPiA+ID4gLXZvaWQga2FzYW5fY2FjaGVfc2h1dGRvd24oc3RydWN0IGttZW1fY2FjaGUg
KmNhY2hlKTsKPiA+ID4gLQo+ID4gPiAtI2Vsc2UgLyogQ09ORklHX0tBU0FOX0dFTkVSSUMgKi8K
PiA+ID4gLQo+ID4gPiAtc3RhdGljIGlubGluZSB2b2lkIGthc2FuX2NhY2hlX3NocmluayhzdHJ1
Y3Qga21lbV9jYWNoZSAqY2FjaGUpIHt9Cj4gPiA+IC1zdGF0aWMgaW5saW5lIHZvaWQga2FzYW5f
Y2FjaGVfc2h1dGRvd24oc3RydWN0IGttZW1fY2FjaGUgKmNhY2hlKSB7fQo+ID4KPiA+IFdoeSBk
byB3ZSBuZWVkIHRvIG1vdmUgdGhlc2UgZnVuY3Rpb25zPwo+ID4gRm9yIGdlbmVyaWMgS0FTQU4g
dGhhdCdzIHJlcXVpcmVkIGJlY2F1c2Ugd2Ugc3RvcmUgdGhlIG9iamVjdHMKPiA+IHRoZW1zZWx2
ZXMgaW4gdGhlIHF1YXJhbnRpbmUsIGJ1dCBpdCdzIG5vdCB0aGUgY2FzZSBmb3IgdGFnLWJhc2Vk
IG1vZGUKPiA+IHdpdGggeW91ciBwYXRjaC4uLgo+ID4KPiBUaGUgcXVhcmFudGluZSBpbiB0YWct
YmFzZWQgS0FTQU4gaW5jbHVkZXMgbmV3IG9iamVjdHMgd2hpY2ggd2UgY3JlYXRlLgo+IFRob3Nl
IG9iamVjdHMgYXJlIHRoZSBmcmVlZCBpbmZvcm1hdGlvbi4gVGhleSBjYW4gYmUgc2hydW5rIGJ5
IGNhbGxpbmcKPiB0aGVtLiBTbyB3ZSBtb3ZlIHRoZXNlIGZ1bmN0aW9uIGludG8gQ09ORklHX0tB
U0FOLgoKT2ssIGthc2FuX2NhY2hlX3NocmluayBpcyB0byByZWxlYXNlIG1lbW9yeSBkdXJpbmcg
bWVtb3J5IHByZXNzdXJlLgpCdXQgd2h5IGRvIHdlIG5lZWQga2FzYW5fY2FjaGVfc2h1dGRvd24/
IEl0IHNlZW1zIHRoYXQgd2UgY291bGQgbGVhdmUKcW9iamVjdHMgaW4gcXVhcmFudGluZSB3aGVu
IHRoZSBjb3JyZXNwb25kaW5nIGNhY2hlIGlzIGRlc3Ryb3llZC4gQW5kCmluIGZhY3QgaXQncyB1
c2VmdWwgYmVjYXVzZSB3ZSBzdGlsbCBjYW4gZ2V0IHVzZS1hZnRlci1mcmVlcyBvbiB0aGVzZQpv
YmplY3RzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
