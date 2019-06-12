Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6718541EA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 10:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yd1uY9u4//z6hMsWL6zFQuc1wGLNlYqRcYZa9fkvN+4=; b=NSZ1g0Syr1dbC/
	s5LCSstJ0wGOsFx8kbz0D20zuwkua0rW8PupfokTQKNv04zjrb0ZUbK9PU44OPq+xui8wBm8CbB6G
	ILQTb3jBMmg5RdkaMpsCAP/HHoCKidBvp7pqJ/xwCRW2eIJL0E253aqA5fHQP+mJ6k5fTlPRz5SuG
	IFYyeqWUTkXprjH3NbU99MJWqiXR3QDEEaL9nlodPatFrDmKL8Z78sGyYWz1+ytxqL8xRCqs+52Sa
	SjHZ5o7ZVltXfXcLsVyLIrCaykHCvIudoz5XpfPjltZML05A38exi/KWbkIyERgVoLMcR4LqUKhEd
	Wf9NttKkZxuAqw2VoccA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hayJO-0003NX-Ru; Wed, 12 Jun 2019 08:08:50 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hayJA-0003N1-NM
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 08:08:38 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 01:08:33 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jun 2019 01:08:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Noralf =?utf-8?Q?Tr=C3=B8nn?=
 =?utf-8?Q?es?= <noralf@tronnes.org>
Subject: Re: [PATCH v3 3/6] drm/modes: Allow to specify rotation and
 reflection on the commandline
In-Reply-To: <20190611132049.njlrgbtobzgyzyzh@flea>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.87b91639451f23d4ab68a7c9812f2dd158869025.1555591281.git-series.maxime.ripard@bootlin.com>
 <ba320b3a13c4444102b77c4d00f7c1dc810adc3c.1555591281.git-series.maxime.ripard@bootlin.com>
 <9ccb7573-d46e-4b90-7caa-7b8cd7b8e7a2@tronnes.org>
 <e2edb1dc-f719-93f0-5205-ecb7b44b057e@tronnes.org>
 <20190611132049.njlrgbtobzgyzyzh@flea>
Date: Wed, 12 Jun 2019 11:11:30 +0300
Message-ID: <87d0jjxlxp.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_010836_812439_14E9E96F 
X-CRM114-Status: GOOD (  22.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: eben@raspberrypi.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxMSBKdW4gMjAxOSwgTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGlu
LmNvbT4gd3JvdGU6Cj4gSGkgTm9yYWxmLAo+Cj4gT24gRnJpLCBBcHIgMTksIDIwMTkgYXQgMTA6
NTM6MjhBTSArMDIwMCwgTm9yYWxmIFRyw7hubmVzIHdyb3RlOgo+PiBEZW4gMTguMDQuMjAxOSAx
OC40MCwgc2tyZXYgTm9yYWxmIFRyw7hubmVzOgo+PiA+Cj4+ID4KPj4gPiBEZW4gMTguMDQuMjAx
OSAxNC40MSwgc2tyZXYgTWF4aW1lIFJpcGFyZDoKPj4gPj4gUm90YXRpb25zIGFuZCByZWZsZWN0
aW9ucyBzZXR1cCBhcmUgbmVlZGVkIGluIHNvbWUgc2NlbmFyaW9zIHRvIGluaXRpYWxpc2UKPj4g
Pj4gcHJvcGVybHkgdGhlIGluaXRpYWwgZnJhbWVidWZmZXIuIFNvbWUgZHJpdmVycyBhbHJlYWR5
IGhhZCBhIGJ1bmNoIG9mCj4+ID4+IHF1aXJrcyB0byBkZWFsIHdpdGggdGhpcywgc3VjaCBhcyBl
aXRoZXIgYSBwcml2YXRlIGtlcm5lbCBjb21tYW5kIGxpbmUKPj4gPj4gcGFyYW1ldGVyIChvbWFw
ZHNzKSBvciBvbiB0aGUgZGV2aWNlIHRyZWUgKHZhcmlvdXMgcGFuZWxzKS4KPj4gPj4KPj4gPj4g
SW4gb3JkZXIgdG8gYWNjb21vZGF0ZSB0aGlzLCBsZXQncyBjcmVhdGUgYSB2aWRlbyBtb2RlIHBh
cmFtZXRlciB0byBkZWFsCj4+ID4+IHdpdGggdGhlIHJvdGF0aW9uIGFuZCByZWZsZXhpb24uCj4+
ID4+Cj4+ID4+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9v
dGxpbi5jb20+Cj4+ID4+IC0tLQo+PiA+PiAgZHJpdmVycy9ncHUvZHJtL2RybV9jbGllbnRfbW9k
ZXNldC5jIHwgIDEwICsrKy0KPj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMuYyAgICAg
ICAgICB8IDExMCArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tCj4+ID4+ICBpbmNsdWRlL2Ry
bS9kcm1fY29ubmVjdG9yLmggICAgICAgICAgfCAgIDkgKystCj4+ID4+ICAzIGZpbGVzIGNoYW5n
ZWQsIDEwOSBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKPj4gPj4KPj4gPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY2xpZW50X21vZGVzZXQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fY2xpZW50X21vZGVzZXQuYwo+PiA+PiBpbmRleCBmMjg2OWM4MjUxMGMuLjE1MTQ1
ZDJjODZkNSAxMDA2NDQKPj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9jbGllbnRfbW9k
ZXNldC5jCj4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY2xpZW50X21vZGVzZXQuYwo+
PiA+PiBAQCAtODIzLDYgKzgyMyw3IEBAIEVYUE9SVF9TWU1CT0woZHJtX2NsaWVudF9tb2Rlc2V0
X3Byb2JlKTsKPj4gPj4gIGJvb2wgZHJtX2NsaWVudF9wYW5lbF9yb3RhdGlvbihzdHJ1Y3QgZHJt
X21vZGVfc2V0ICptb2Rlc2V0LCB1bnNpZ25lZCBpbnQgKnJvdGF0aW9uKQo+PiA+PiAgewo+PiA+
PiAgCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSBtb2Rlc2V0LT5jb25uZWN0b3Jz
WzBdOwo+PiA+PiArCXN0cnVjdCBkcm1fY21kbGluZV9tb2RlICpjbWRsaW5lOwo+PiA+PiAgCXN0
cnVjdCBkcm1fcGxhbmUgKnBsYW5lID0gbW9kZXNldC0+Y3J0Yy0+cHJpbWFyeTsKPj4gPj4gIAl1
NjQgdmFsaWRfbWFzayA9IDA7Cj4+ID4+ICAJdW5zaWduZWQgaW50IGk7Cj4+ID4+IEBAIC04NDQs
NiArODQ1LDE1IEBAIGJvb2wgZHJtX2NsaWVudF9wYW5lbF9yb3RhdGlvbihzdHJ1Y3QgZHJtX21v
ZGVfc2V0ICptb2Rlc2V0LCB1bnNpZ25lZCBpbnQgKnJvdGF0Cj4+ID4+ICAJCSpyb3RhdGlvbiA9
IERSTV9NT0RFX1JPVEFURV8wOwo+PiA+PiAgCX0KPj4gPj4KPj4gPj4gKwkvKioKPj4gPj4gKwkg
KiBXZSB3YW50IHRoZSByb3RhdGlvbiBvbiB0aGUgY29tbWFuZCBsaW5lIHRvIG92ZXJ3cml0ZQo+
PiA+PiArCSAqIHdoYXRldmVyIGNvbWVzIGZyb20gdGhlIHBhbmVsLgo+PiA+PiArCSAqLwo+PiA+
PiArCWNtZGxpbmUgPSAmY29ubmVjdG9yLT5jbWRsaW5lX21vZGU7Cj4+ID4+ICsJaWYgKGNtZGxp
bmUtPnNwZWNpZmllZCAmJgo+PiA+PiArCSAgICBjbWRsaW5lLT5yb3RhdGlvbiAhPSBEUk1fTU9E
RV9ST1RBVEVfMCkKPj4gPgo+PiA+IEkgYmVsaWV2ZSB5b3UgbmVlZCB0byBkcm9wIHRoYXQgc2Vj
b25kIGNoZWNrLCBvdGhlcndpc2Ugcm90YXRlPTAgd2lsbAo+PiA+IG5vdCBvdmVyd3JpdGUgcGFu
ZWwgcm90YXRpb24uCj4+ID4KPj4gPj4gKwkJKnJvdGF0aW9uID0gY21kbGluZS0+cm90YXRpb247
Cj4+Cj4+IEkgcmVtZW1iZXJlZCB0aGF0IHlvdSB3YW50ZWQgdGhpcyB0byBwcm9wYWdhdGUgdG8g
RFJNIHVzZXJzcGFjZS4gVGhhdCdzCj4+IG5vdCBoYXBwZW5pbmcgaGVyZS4KPgo+IEl0J3MgcHJv
cGF0ZWQgdG8gdGhlIHVzZXJzcGFjZSB0aHJvdWdoIHRoZSBwbGFuZSdzIHJvdGF0aW9uIHByb3Bl
cnR5LAo+IEkganVzdCBjaGVja2VkLgo+Cj4+IFRoZSBvbmx5IHdheSBJIHNlZSBmb3IgdGhhdCB0
byBoYXBwZW4sIGlzIHRvIHNldAo+PiAtPnBhbmVsX29yaWVudGF0aW9uLiBBbmQgdG8gcmVwZWF0
IG15c2VsZiwgaW1vIHRoYXQgbWFrZXMKPj4gJ29yaWVudGF0aW9uJyBhIGJldHRlciBuYW1lIGZv
ciB0aGlzIHZpZGVvPSBvcHRpb24uCj4KPiBvcmllbnRhdGlvbiBhbmQgcm90YXRpb24gYXJlIHR3
byBkaWZmZXJlbnQgdGhpbmdzIHRvIG1lLiBUaGUKPiBvcmllbnRhdGlvbiBvZiBhIHBhbmVsIGZv
ciBleGFtcGxlIGlzIGFic29sdXRlLCB3aGlsZSB0aGUgcm90YXRpb24gaXMKPiBhIHRyYW5zZm9y
bWF0aW9uLiBJbiB0aGlzIHBhcnRpY3VsYXIgY2FzZSwgSSB0aGluayB0aGF0IGJvdGggdGhlCj4g
b3JpZW50YXRpb24gYW5kIHRoZSByb3RhdGlvbiBzaG91bGQgYmUgdGFrZW4gaW50byBhY2NvdW50
LCB3aXRoIHRoZQo+IG9yaWVudGF0aW9uIGJlaW5nIHRoZSBkZWZhdWx0IHN0YXRlLCBhbmQgdGhl
IGhhcmR3YXJlIC8gcGFuZWwgd2lsbAo+IHRlbGwgdXMgdGhhdCwgd2hpbGUgdGhlIHJvdGF0aW9u
IHdvdWxkIGJlIGEgdHJhbnNmb3JtYXRpb24gZnJvbSB0aGF0Cj4gZGVmYXVsdCB0byB3aGF0ZXZl
ciB0aGUgdXNlciB3YW50cy4KPgo+IE1vcmUgaW1wb3J0YW50bHksIHRoZSBvcmllbnRhdGlvbiBp
cyBhIHByb3BlcnR5IG9mIHRoZSBoYXJkd2FyZSAoaWUsCj4gaG93IHRoZSBkaXNwbGF5IGhhcyBi
ZWVuIGFzc2VtYmxlZCksIHdoaWxlIHRoZSByb3RhdGlvbiBpcyBhIHNvZnR3YXJlCj4gY29uc3Ry
dWN0LgoKRldJVywgYWdyZWVkLiBUaGUgaW1tdXRhYmxlIG9yaWVudGF0aW9uIHByb3BlcnR5IGlz
IGV4cG9zZWQgdXNpbmcgdGhlCmRybV9jb25uZWN0b3JfaW5pdF9wYW5lbF9vcmllbnRhdGlvbl9w
cm9wZXJ0eSgpIGNhbGwuIFlvdSB0aGVuIHJvdGF0ZSB0bwp0YWtlIHRoZSBvcmllbnRhdGlvbiBp
bnRvIGFjY291bnQsIHRvIG5vdCBkaXNwbGF5IHN0dWZmIHNpZGV3YXlzIG9yCnVwc2lkZSBkb3du
IHdydCB0aGUgbmF0dXJhbCBvcmllbnRhdGlvbiBvZiB0aGUgZGV2aWNlLgoKQlIsCkphbmkuCgo+
Cj4gQW5kIGlmIHRoZSBwcm9wZXJ0eSBiZWluZyB1c2VkIHRvIGV4cG9zZSB0aGF0IGlzIHRoZSBy
b3RhdGlvbiwgSSBndWVzcwo+IGl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8ganVzdCB1c2UgdGhlIHNh
bWUgbmFtZSBhbmQgcmVtYWluIGNvbnNpc3RlbnQuCj4KPiBNYXhpbWUKPgo+IC0tCj4gTWF4aW1l
IFJpcGFyZCwgQm9vdGxpbgo+IEVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcK
PiBodHRwczovL2Jvb3RsaW4uY29tCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpLWRldmVsCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
