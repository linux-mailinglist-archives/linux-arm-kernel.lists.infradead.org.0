Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 065A997E34
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:11:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FEmzNs8GgPxt50bRPtR8tdY51iz+9lWr8EcCSYZunOM=; b=nYNSdYp/et2tVA
	eIa4n+n8R1DutcDjkc2yEPbhhwGSRkXbRSckBFyo7RUPybdqD7giqK9r9DhQaPZmBP2XWpAaz+kLo
	08XVXOab3+WDQ4C5o7Ofq2AqP4boxXVX15DpPfduYnoRjx2c2+bmDP7YhDvnD6r3LJ9LcrrI1ODq9
	GzO9b8U+CSRDn/bWjJM5/lyjmc8bO33ey8Qw0u9Cud4gIPdOFl5YZo3qrKY1g8JGI+zCRs9uHuehV
	gFlBkYv3UrgmPpO3F3Q+aL2FKSwBNktj9YgbjKd6CylRnPdKPRTNV2IFfu2qSv5keeT2DvrF+HJrJ
	C+MAVTsDXAVOcptm+mjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SGL-0004P9-T9; Wed, 21 Aug 2019 15:11:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0SG5-0004Ok-2S
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:10:46 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i0SFy-0001Rj-L8; Wed, 21 Aug 2019 17:10:38 +0200
Message-ID: <1566400237.4193.15.camel@pengutronix.de>
Subject: Re: [PATCH 2/8] soc: ti: add initial PRM driver with reset control
 support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Suman Anna <s-anna@ti.com>, Tero Kristo <t-kristo@ti.com>, Keerthy
 <j-keerthy@ti.com>, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-omap@vger.kernel.org,
 robh+dt@kernel.org
Date: Wed, 21 Aug 2019 17:10:37 +0200
In-Reply-To: <a4196b73-63a0-f9d8-1c43-e6c4d1c1d6a4@ti.com>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-3-git-send-email-t-kristo@ti.com>
 <3b76f0e0-7530-e7b5-09df-2de9956f30ee@ti.com>
 <59709a2d-f13a-bd55-8aba-864c1cf2f19e@ti.com>
 <9372957c-9ab9-b0dd-fe07-815eb2cb2f16@ti.com>
 <0f335aec-bfdf-345a-8dfb-dad70aef1af6@ti.com>
 <a4196b73-63a0-f9d8-1c43-e6c4d1c1d6a4@ti.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_081045_118174_C0C439ED 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTA4LTIwIGF0IDExOjQ3IC0wNTAwLCBTdW1hbiBBbm5hIHdyb3RlOgo+IE9u
IDgvMjAvMTkgMjozNyBBTSwgVGVybyBLcmlzdG8gd3JvdGU6Cj4gPiBPbiAyMC44LjIwMTkgMi4w
MSwgU3VtYW4gQW5uYSB3cm90ZToKPiA+ID4gSGkgVGVybywKPiA+ID4gCj4gPiA+IE9uIDgvMTkv
MTkgNDozMiBBTSwgVGVybyBLcmlzdG8gd3JvdGU6ClsuLi5dCj4gPiA+ID4gPiA+ICt7Cj4gPiA+
ID4gPiA+ICvCoMKgwqAgc3RydWN0IG9tYXBfcmVzZXRfZGF0YSAqcmVzZXQ7Cj4gPiA+ID4gPiA+
ICsKPiA+ID4gPiA+ID4gK8KgwqDCoCAvKgo+ID4gPiA+ID4gPiArwqDCoMKgwqAgKiBDaGVjayBp
ZiB3ZSBoYXZlIHJlc2V0cy4gSWYgZWl0aGVyIHJzdGN0bCBvciByc3RzdCBpcwo+ID4gPiA+ID4g
PiArwqDCoMKgwqAgKiBub24temVybywgd2UgaGF2ZSByZXNldCByZWdpc3RlcnMgaW4gcGxhY2Uu
IEFkZGl0aW9uYWxseQo+ID4gPiA+ID4gPiArwqDCoMKgwqAgKiB0aGUgZmxhZyBPTUFQX1BSTV9O
T19SU1RTVCBpbXBsaWVzIHRoYXQgd2UgaGF2ZSByZXNldHMuCj4gPiA+ID4gPiA+ICvCoMKgwqDC
oCAqLwo+ID4gPiA+ID4gPiArwqDCoMKgIGlmICghcHJtLT5kYXRhLT5yc3RjdGwgJiYgIXBybS0+
ZGF0YS0+cnN0c3QgJiYKPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgICEocHJtLT5kYXRhLT5m
bGFncyAmIE9NQVBfUFJNX05PX1JTVFNUKSkKPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiAwOwo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICvCoMKgwqAgcmVzZXQgPSBkZXZtX2t6
YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpyZXNldCksIEdGUF9LRVJORUwpOwo+ID4gPiA+ID4g
PiArwqDCoMKgIGlmICghcmVzZXQpCj4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
LUVOT01FTTsKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiArwqDCoMKgIHJlc2V0LT5yY2Rldi5v
d25lciA9IFRISVNfTU9EVUxFOwo+ID4gPiA+ID4gPiArwqDCoMKgIHJlc2V0LT5yY2Rldi5vcHMg
PSAmb21hcF9yZXNldF9vcHM7Cj4gPiA+ID4gPiA+ICvCoMKgwqAgcmVzZXQtPnJjZGV2Lm9mX25v
ZGUgPSBwZGV2LT5kZXYub2Zfbm9kZTsKPiA+ID4gPiA+ID4gK8KgwqDCoCByZXNldC0+cmNkZXYu
bnJfcmVzZXRzID0gT01BUF9NQVhfUkVTRVRTOwo+ID4gPiAKPiA+ID4gU3VnZ2VzdCBhZGRpbmcg
YSBudW1iZXIgb2YgcmVzZXRzIHRvIHBybS0+ZGF0YSwgYW5kIHVzaW5nIGl0IHNvIHRoYXQgd2UK
PiA+ID4gZG9uJ3QgZXZlbiBlbnRlcnRhaW4gYW55IHJlc2V0cyBiZXlvbmQgdGhlIGFjdHVhbCBu
dW1iZXIgb2YgcmVzZXRzLgo+ID4gCj4gPiBIbW0gd2h5IGJvdGhlcj8gQWNjZXNzaW5nIGEgc3Rh
bGUgcmVzZXQgYml0IHdpbGwganVzdCBjYXVzZSBhY2Nlc3MgdG8gYQo+ID4gcmVzZXJ2ZWQgYml0
IGluIHRoZSByZXNldCByZWdpc3RlciwgZG9pbmcgYmFzaWNhbGx5IG5vdGhpbmcuIEFsc28sIHRo
aXMKPiA+IHdvdWxkIG5vdCB3b3JrIGZvciBhbTMvYW00IHdrdXAsIGFzIHRoZXJlIGlzIGEgc2lu
Z2xlIHJlc2V0IGJpdCBhdCBhbgo+ID4gYXJiaXRyYXJ5IHBvc2l0aW9uLgo+IAo+IFRoZSBnZW5l
cmljIGNvbnZlbnRpb24gc2VlbXMgdG8gYmUgZGVmaW5pbmcgYSByZXNldCBpZCB2YWx1ZSBkZWZp
bmVkCj4gZnJvbSBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0LyB0aGF0IGNhbiBiZSB1c2VkIHRv
IG1hdGNoIGJldHdlZW4gdGhlCj4gZHQtbm9kZXMgYW5kIHRoZSByZXNldC1jb250cm9sbGVyIGRy
aXZlci4KPiAKPiBQaGlsaXBwLAo+IEFueSBjb21tZW50cz8KCkFyZSB0aGVyZSBvbmx5IHJlc2V0
IGJpdHMgYW5kIHJlc2VydmVkIGJpdHMgaW4gdGhlIHJhbmdlIGFjY2Vzc2libGUgYnkKWzAuLk9N
QVBfTUFYX1JFU0VUU10gb3IgYXJlIHRoZXIgYml0cyB3aXRoIGFub3RoZXIgZnVuY3Rpb24gYXMg
d2VsbD8KSWYgdGhlIGxhdHRlciBpcyB0aGUgY2FzZSwgSSB3b3VsZCBwcmVmZXIgZW51bWVyYXRp
bmcgdGhlIHJlc2V0cyBpbiBhCmR0LWJpbmRpbmdzIGhlYWRlciwgd2l0aCB0aGUgZHJpdmVyIGNv
bnRhaW5pbmcgYW4gZW51bSAtPiByZWcvYml0CnBvc2l0aW9uIGxvb2t1cCB0YWJsZS4KCkluIGdl
bmVyYWwsIGFzc3VtaW5nIHRoZSBkZXZpY2UgdHJlZSBjb250YWlucyBubyBlcnJvcnMsIHRoaXMg
c2hvdWxkIG5vdAptYXR0ZXIgbXVjaCwgYnV0IEkgdGhpbmsgaXQgaXMgbmljZSBpZiB0aGUgcmVz
ZXQgZHJpdmVyLCBldmVuIHdpdGggYQptaXNjb25maWd1cmVkIGRldmljZSB0cmVlLCBjYW4ndCB3
cml0ZSBpbnRvIGFyYml0cmFyeSBiaXQgZmllbGRzLgoKcmVnYXJkcwpQaGlsaXBwCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
