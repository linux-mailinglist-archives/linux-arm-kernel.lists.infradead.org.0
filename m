Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7357382566
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 21:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P91R08RZu/ZVSR6UzyAnsYxwYBGGAeU24qmG4aN4N3I=; b=idB/NbQAzHmdhb
	RAQuKtfX0RREDtmX2on9/PyUhWAht6G9/nHG+g0A9H9pJOywrH0YF45WmDzmpvHoS20qj/+o45bwA
	YojmBMFayVtjLYpEgghTA8GtINnJRfIrNeVYttehDx9khctMdMiEskJuQyTt01WWAknFJ5Abtpd/w
	+bpSNqLgb7oTNQiM5bpth4nKGED2HgyG/k54Z0uAAkIeXqizjfGsHDjSlNwjfOpltRWQ1U2rPSH7e
	rjAmZLeb6VziXt3veZgPogVj9zcXfLCDArrZw6fTrlufqjpVAKZNyzR2svxBTVeOyXiFAt37/wTmZ
	arFTiiSueO6V7C4Evang==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huiS3-00020V-QU; Mon, 05 Aug 2019 19:15:23 +0000
Received: from smtprelay0247.hostedemail.com ([216.40.44.247]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiRt-00020B-OZ
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 19:15:15 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 005D552B7;
 Mon,  5 Aug 2019 19:15:05 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::::,
 RULES_HIT:41:152:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:3138:3139:3140:3141:3142:3353:3622:3865:3867:3870:4321:4605:5007:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12296:12297:12438:12555:12740:12895:12986:13069:13311:13357:13894:14096:14097:14181:14659:14721:21080:21451:21627:30054:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:30,
 LUA_SUMMARY:none
X-HE-Tag: cub04_4957d22cc6e16
X-Filterd-Recvd-Size: 2975
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf19.hostedemail.com (Postfix) with ESMTPA;
 Mon,  5 Aug 2019 19:15:03 +0000 (UTC)
Message-ID: <0f56d1fe577707e7804386592e1a5579bfd3abbf.camel@perches.com>
Subject: Re: [PATCH] MIPS: BCM63XX: Mark expected switch fall-through
From: Joe Perches <joe@perches.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, Ralf Baechle
 <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>, James Hogan
 <jhogan@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>, 
 bcm-kernel-feedback-list@broadcom.com
Date: Mon, 05 Aug 2019 12:15:01 -0700
In-Reply-To: <20190805185533.GA10551@embeddedor>
References: <20190805185533.GA10551@embeddedor>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_121513_866205_0DA0366F 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.247 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-mips@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMDE5LTA4LTA1IGF0IDEzOjU1IC0wNTAwLCBHdXN0YXZvIEEuIFIuIFNpbHZhIHdy
b3RlOgo+IE1hcmsgc3dpdGNoIGNhc2VzIHdoZXJlIHdlIGFyZSBleHBlY3RpbmcgdG8gZmFsbCB0
aHJvdWdoLgo+IAo+IFRoaXMgcGF0Y2ggZml4ZXMgdGhlIGZvbGxvd2luZyB3YXJuaW5nIChCdWls
ZGluZzogYmNtNjN4eF9kZWZjb25maWcgbWlwcyk6Cj4gCj4gYXJjaC9taXBzL3BjaS9vcHMtYmNt
NjN4eC5jOiBJbiBmdW5jdGlvbiDigJhiY202M3h4X3BjaWVfY2FuX2FjY2Vzc+KAmToKPiBhcmNo
L21pcHMvcGNpL29wcy1iY202M3h4LmM6NDc0OjY6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1h
eSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+ICAgIGlmIChQQ0lfU0xP
VChkZXZmbikgPT0gMCkKPiAgICAgICBeCj4gYXJjaC9taXBzL3BjaS9vcHMtYmNtNjN4eC5jOjQ3
NzoyOiBub3RlOiBoZXJlCj4gICBkZWZhdWx0Ogo+ICAgXn5+fn5+fgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9AZW1iZWRkZWRvci5jb20+Cj4gLS0tCj4g
IGFyY2gvbWlwcy9wY2kvb3BzLWJjbTYzeHguYyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9taXBzL3BjaS9vcHMtYmNtNjN4eC5j
IGIvYXJjaC9taXBzL3BjaS9vcHMtYmNtNjN4eC5jCj4gaW5kZXggZDAyZWI5ZDE2YjU1Li45MjVj
NzIzNDhmYjYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9taXBzL3BjaS9vcHMtYmNtNjN4eC5jCj4gKysr
IGIvYXJjaC9taXBzL3BjaS9vcHMtYmNtNjN4eC5jCj4gQEAgLTQ3NCw2ICs0NzQsNyBAQCBzdGF0
aWMgaW50IGJjbTYzeHhfcGNpZV9jYW5fYWNjZXNzKHN0cnVjdCBwY2lfYnVzICpidXMsIGludCBk
ZXZmbikKPiAgCQlpZiAoUENJX1NMT1QoZGV2Zm4pID09IDApCj4gIAkJCXJldHVybiBiY21fcGNp
ZV9yZWFkbChQQ0lFX0RMU1RBVFVTX1JFRykKPiAgCQkJCQkmIERMU1RBVFVTX1BIWUxJTktVUDsK
PiArCQkvKiBlbHNlLCBmYWxsIHRocm91Z2ggKi8KPiAgCWRlZmF1bHQ6Cj4gIAkJcmV0dXJuIGZh
bHNlOwo+ICAJfQoKUGVyaGFwcyBjbGVhcmVyIGFzOgotLS0KIGFyY2gvbWlwcy9wY2kvb3BzLWJj
bTYzeHguYyB8IDkgKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA1
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvbWlwcy9wY2kvb3BzLWJjbTYzeHguYyBi
L2FyY2gvbWlwcy9wY2kvb3BzLWJjbTYzeHguYwppbmRleCBkMDJlYjlkMTZiNTUuLmE1ZTRiMTkw
NTk1OCAxMDA2NDQKLS0tIGEvYXJjaC9taXBzL3BjaS9vcHMtYmNtNjN4eC5jCisrKyBiL2FyY2gv
bWlwcy9wY2kvb3BzLWJjbTYzeHguYwpAQCAtNDcxLDEyICs0NzEsMTEgQEAgc3RhdGljIGludCBi
Y202M3h4X3BjaWVfY2FuX2FjY2VzcyhzdHJ1Y3QgcGNpX2J1cyAqYnVzLCBpbnQgZGV2Zm4pCiAJ
Y2FzZSBQQ0lFX0JVU19CUklER0U6CiAJCXJldHVybiBQQ0lfU0xPVChkZXZmbikgPT0gMDsKIAlj
YXNlIFBDSUVfQlVTX0RFVklDRToKLQkJaWYgKFBDSV9TTE9UKGRldmZuKSA9PSAwKQotCQkJcmV0
dXJuIGJjbV9wY2llX3JlYWRsKFBDSUVfRExTVEFUVVNfUkVHKQotCQkJCQkmIERMU1RBVFVTX1BI
WUxJTktVUDsKLQlkZWZhdWx0OgotCQlyZXR1cm4gZmFsc2U7CisJCXJldHVybiBQQ0lfU0xPVChk
ZXZmbikgPT0gMCAmJgorCQkgICAgICAgYmNtX3BjaWVfcmVhZGwoUENJRV9ETFNUQVRVU19SRUcp
ICYgRExTVEFUVVNfUEhZTElOS1VQOwogCX0KKworCXJldHVybiBmYWxzZTsKIH0KIAogc3RhdGlj
IGludCBiY202M3h4X3BjaWVfcmVhZChzdHJ1Y3QgcGNpX2J1cyAqYnVzLCB1bnNpZ25lZCBpbnQg
ZGV2Zm4sCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
