Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D86FC6B871
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmUVh1l4MxbrUxkNWUJ1EGdmoJAXid299sqGoHva1mA=; b=nE0rUWsbe1wYsN
	YFNlyqFRx6KjeuK9o0VCHT40mZd9qPsp0o5tsdekwaT0SrUWuu1gd2qc2J0BXGcVwKtcx3VGY+X/S
	TvXx9CuYRN1n6oOEWWGXHtSBBtDQQSn6qbT8fbfC9E5jDmN4T6Gz0zARKJJlh62qORVzvWv71B9c8
	ficzbwRoZ0vMBJGExqLo5eg0gHvfkbn2XJjaCME9uASBmalrDelTJ03fRmFt0KQsQ4v1sCR8LZn3T
	fjoN9ggjMyEE/Z/xtRS1BSD6WkNpKKFis6yndEBF6AJdUmHQ+MgibWrvvjkkm5t4joUfGTD3iw5Fq
	lqA2vMbGydYieiKiaqJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfTr-0000UA-AA; Wed, 17 Jul 2019 08:40:07 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfTW-0000SX-DN; Wed, 17 Jul 2019 08:39:46 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id BF02420B15D60; Wed, 17 Jul 2019 10:39:44 +0200 (CEST)
Date: Wed, 17 Jul 2019 10:39:44 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
Message-ID: <20190717083944.GR3463@hirez.programming.kicks-ass.net>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
 <20190716155022.GR3419@hirez.programming.kicks-ass.net>
 <193BBB31-F376-451F-BDE1-D4807140EB51@oracle.com>
 <20190716184724.GH3402@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716184724.GH3402@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, steven.sistare@oracle.com,
 linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, longman@redhat.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMTYsIDIwMTkgYXQgMDg6NDc6MjRQTSArMDIwMCwgUGV0ZXIgWmlqbHN0cmEg
d3JvdGU6Cj4gT24gVHVlLCBKdWwgMTYsIDIwMTkgYXQgMDE6MTk6MTZQTSAtMDQwMCwgQWxleCBL
b2dhbiB3cm90ZToKPiA+ID4gT24gSnVsIDE2LCAyMDE5LCBhdCAxMTo1MCBBTSwgUGV0ZXIgWmlq
bHN0cmEgPHBldGVyekBpbmZyYWRlYWQub3JnPiB3cm90ZToKPiAKPiA+ID4gc3RhdGljIHZvaWQg
Y25hX21vdmUoc3RydWN0IGNuYV9ub2RlICpjbiwgc3RydWN0IGNuYV9ub2RlICpjbmkpCj4gPiA+
IHsKPiA+ID4gCXN0cnVjdCBjbmFfbm9kZSAqaGVhZCwgKnRhaWw7Cj4gPiA+IAo+ID4gPiAJLyog
cmVtb3ZlIEBjbmkgKi8KPiA+ID4gCVdSSVRFX09OQ0UoY24tPm1jcy5uZXh0LCBjbmktPm1jcy5u
ZXh0KTsKPiA+ID4gCj4gPiA+IAkvKiBzdGljayBAY25pIG9uIHRoZSAnb3RoZXInIGxpc3QgdGFp
bCAqLwo+ID4gPiAJY25pLT5tY3MubmV4dCA9IE5VTEw7Cj4gPiA+IAo+ID4gPiAJaWYgKGNuLT5t
Y3MubG9ja2VkIDw9IDEpIHsKPiA+ID4gCQkvKiBoZWFkID0gdGFpbCA9IGNuaSAqLwo+ID4gPiAJ
CWhlYWQgPSBjbmk7Cj4gPiA+IAkJaGVhZC0+dGFpbCA9IGNuaTsKPiA+ID4gCQljbi0+bWNzLmxv
Y2tlZCA9IGhlYWQtPmVuY29kZWRfdGFpbDsKPiA+ID4gCX0gZWxzZSB7Cj4gPiA+IAkJLyogYWRk
IHRvIHRhaWwgKi8KPiA+ID4gCQloZWFkID0gKHN0cnVjdCBjbmFfbm9kZSAqKWRlY29kZV90YWls
KGNuLT5tY3MubG9ja2VkKTsKPiA+ID4gCQl0YWlsID0gdGFpbC0+dGFpbDsKPiA+ID4gCQl0YWls
LT5uZXh0ID0gY25pOwo+ID4gPiAJfQo+ID4gPiB9Cj4gPiA+IAo+ID4gPiBzdGF0aWMgc3RydWN0
IGNuYV9ub2RlICpjbmFfZmluZF9uZXh0KHN0cnVjdCBtY3Nfc3BpbmxvY2sgKm5vZGUpCj4gPiA+
IHsKPiA+ID4gCXN0cnVjdCBjbmFfbm9kZSAqY25pLCAqY24gPSAoc3RydWN0IGNuYV9ub2RlICop
bm9kZTsKPiA+ID4gCj4gPiA+IAl3aGlsZSAoKGNuaSA9IChzdHJ1Y3QgY25hX25vZGUgKilSRUFE
X09OQ0UoY24tPm1jcy5uZXh0KSkpIHsKPiA+ID4gCQlpZiAobGlrZWx5KGNuaS0+bm9kZSA9PSBj
bi0+bm9kZSkpCj4gPiA+IAkJCWJyZWFrOwo+ID4gPiAKPiA+ID4gCQljbmFfbW92ZShjbiwgY25p
KTsKPiA+ID4gCX0KPiA+ID4gCj4gPiA+IAlyZXR1cm4gY25pOwo+ID4gPiB9Cj4gPiBCdXQgdGhl
biB5b3UgbW92ZSBub2RlcyBmcm9tIHRoZSBtYWluIGxpc3QgdG8gdGhlIOKAmG90aGVy4oCZIGxp
c3Qgb25lLWJ5LW9uZS4KPiA+IEnigJltIGFmcmFpZCB0aGlzIHdvdWxkIGJlIHVubmVjZXNzYXJ5
IGV4cGVuc2l2ZS4KPiA+IFBsdXMsIGFsbCB0aGlzIGV4dHJhIHdvcmsgaXMgd2FzdGVkIGlmIHlv
dSBkbyBub3QgZmluZCBhIHRocmVhZCBvbiB0aGUgc2FtZSAKPiA+IE5VTUEgbm9kZSAoeW91IG1v
dmUgZXZlcnlvbmUgdG8gdGhlIOKAmG90aGVy4oCZIGxpc3Qgb25seSB0byBtb3ZlIHRoZW0gYmFj
ayBpbiAKPiA+IGNuYV9tY3NfcGFzc19sb2NrKCkpLgo+IAo+IE15IHByaW1hcnkgY29uY2VybiB3
YXMgcmVhZGFiaWxpdHk7IEkgZmluZCB0aGUgYWJvdmUgc3VnZ2VzdGlvbiBtdWNoCj4gbW9yZSBy
ZWFkYWJsZS4gTWF5YmUgaXQgY2FuIGJlIHdyaXR0ZW4gZGlmZmVyZW50bHk7IHlvdSdsbCBoYXZl
IHRvIHBsYXkKPiBhcm91bmQgYSBiaXQuCgpzdGF0aWMgdm9pZCBjbmFfc3BsaWNlX3RhaWwoc3Ry
dWN0IGNuYV9ub2RlICpjbiwgc3RydWN0IGNuYV9ub2RlICpoZWFkLCBzdHJ1Y3QgY25hX25vZGUg
KnRhaWwpCnsKCXN0cnVjdCBjbmFfbm9kZSAqbGlzdDsKCgkvKiByZW1vdmUgW2hlYWQsdGFpbF0g
Ki8KCVdSSVRFX09OQ0UoY24tPm1jcy5uZXh0LCB0YWlsLT5tY3MubmV4dCk7Cgl0YWlsLT5tY3Mu
bmV4dCA9IE5VTEw7CgoJLyogc3RpY2sgW2hlYWQsdGFpbF0gb24gdGhlIHNlY29uZGFyeSBsaXN0
IHRhaWwgKi8KCWlmIChjbi0+bWNzLmxvY2tlZCA8PSAxKSB7CgkJLyogY3JlYXRlIHNlY29uZGFy
eSBsaXN0ICovCgkJaGVhZC0+dGFpbCA9IHRhaWw7CgkJY24tPm1jcy5sb2NrZWQgPSBoZWFkLT5l
bmNvZGVkX3RhaWw7Cgl9IGVsc2UgewoJCS8qIGFkZCB0byB0YWlsICovCgkJbGlzdCA9IChzdHJ1
Y3QgY25hX25vZGUgKilkZWNvZGVfdGFpbChjbi0+bWNzLmxvY2tlZCk7CgkJbGlzdC0+dGFpbC0+
bmV4dCA9IGhlYWQ7CgkJbGlzdC0+dGFpbCA9IHRhaWw7Cgl9Cn0KCnN0YXRpYyBzdHJ1Y3QgY25h
X25vZGUgKmNuYV9maW5kX25leHQoc3RydWN0IG1jc19zcGlubG9jayAqbm9kZSkKewoJc3RydWN0
IGNuYV9ub2RlICpjbmksICpjbiA9IChzdHJ1Y3QgY25hX25vZGUgKilub2RlOwoJc3RydWN0IGNu
YV9ub2RlICpoZWFkLCAqdGFpbCA9IE5VTEw7CgoJLyogZmluZCBhbnkgbmV4dCBsb2NrIGZyb20g
J291cicgbm9kZSAqLwoJZm9yIChoZWFkID0gY25pID0gKHN0cnVjdCBjbmFfbm9kZSAqKVJFQURf
T05DRShjbi0+bWNzLm5leHQpOwoJICAgICBjbmkgJiYgY25pLT5ub2RlICE9IGNuLT5ub2RlOwoJ
ICAgICB0YWlsID0gY25pLCBjbmkgPSAoc3RydWN0IGNuYV9ub2RlICopUkVBRF9PTkNFKGNuaS0+
bWNzLm5leHQpKQoJCTsKCgkvKiB3aGVuIGZvdW5kLCBzcGxpY2UgYW55IHNraXBwZWQgbG9ja3Mg
b250byB0aGUgc2Vjb25kYXJ5IGxpc3QgKi8KCWlmIChjbmkgJiYgdGFpbCkKCQljbmFfc3BsaWNl
X3RhaWwoY24sIGhlYWQsIHRhaWwpOwoKCXJldHVybiBjbmk7Cn0KCkhvdydzIHRoYXQ/CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
