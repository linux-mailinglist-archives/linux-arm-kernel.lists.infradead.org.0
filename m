Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E0ADF0E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 17:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7+BmaIBtL/CswrI5vN2xDKP6moHg2Poi3ifQXuteV8=; b=FgnCpA4bbyrO5l
	ZXsZ8CEjH1BDURTOHS72RxF/1waDGLbSaA7QVR34AgIuq3FnZKNkKVav2JwMlSKPsVBZGGZvbKQ+0
	9koWxv0Q0wld56pDUS4RVJoYclYCKKSsPGInndE88pkjisBTE1V/4PgcZoUlohUp/8NsTezsMIra8
	NrOmcc3CRwZFD2HPWIn9w3YN2TrDooIoDSgKMhUCWQYCHH+Yk2akj5cPFL+vn0V3akQ1NuIzTzKrm
	M5Q+deCWrzU0rTNQ9brHrTHzL/+wl4qSTrMXZEFrxtpAnqm6YIqx5eDmENAhFXEgPnzxXJ55c1wo8
	rvESGhe+z1hly7GRjoBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZHa-0003Io-Az; Mon, 21 Oct 2019 15:07:42 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZHN-0003HO-HD
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 15:07:31 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id MZHDiVloqo1ZhMZHGiMvzP; Mon, 21 Oct 2019 17:07:23 +0200
Subject: Re: [PATCH v4 5/6] media: sun4i: Add H3 deinterlace driver
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@siol.net>
References: <20191017183738.68069-1-jernej.skrabec@siol.net>
 <20191017183738.68069-6-jernej.skrabec@siol.net>
 <8137fbb3-036a-95e4-2642-5dd46fb55eb9@xs4all.nl>
 <2174547.3yqp6rY4Nl@jernej-laptop>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <639e09c3-05fa-a724-3aa2-2ccff1a2fe84@xs4all.nl>
Date: Mon, 21 Oct 2019 17:07:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <2174547.3yqp6rY4Nl@jernej-laptop>
Content-Language: en-US
X-CMAE-Envelope: MS4wfFRz55vFgFmmN16VEl2p90YpBldoYxHQhxpRVwKRxADvI0/JBsbOV/lC/XxZEKnfUPEkaIcrZM/k4X6nZVMFWYIJfuPAN03wfLG4i6PLA/RIuKx6juhU
 QFhkEgsD81UazLmgoT1XpmidTziJPJgp8UHjCjuQIZzGXWHNMcHm6KrgH0nhRNCZTNFxtBMdgRXPdHLMQMc3eQSQ9Jo6OBQpB0k+2HL2LkYdBW483FnVpBSt
 vaRK0rSjKP5mmX8ii4mReYRvi9kv/ZwWwwl95wyS0BRyuAmbn3Ji2L/zf3it/uV9fElKLnNuU8sqiG+nhFJXQbdnMxLaKI5GCu7cSS7zxniR5Kff5bMHEO//
 kkJjQfLLe3KbF0U0biV6AMS6VfxUu68V13OvnxrwMvcNDmD1M81b0nZOs/N5mkwtk3aPLuUEuUQ5Xmmsc/l1AojtcrUsd0JaBQ/Gyr842/C2f+QKZ9izj/Ct
 lk1eMXdXROYYsOKet6K5xakejQLZbg5d0sZdIKhPiRaXBwtWwlDdj++BbAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_080729_730578_7A6DECCD 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMjEvMTkgNDo0NyBQTSwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+IERuZSBwb25lZGVs
amVrLCAyMS4gb2t0b2JlciAyMDE5IG9iIDEzOjEzOjIwIENFU1QgamUgSGFucyBWZXJrdWlsIG5h
cGlzYWwoYSk6Cj4+IE9uIDEwLzE3LzE5IDg6MzcgUE0sIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+
Pj4gQWxsd2lubmVyIEgzIFNvQyBjb250YWlucyBkZWludGVybGFjZSB1bml0LCB3aGljaCBoYXMg
c2V2ZXJhbCBtb2RlcyBvZgo+Pj4gb3BlcmF0aW9uIC0gYnlwYXNzLCB3ZWF2ZSwgYm9iIGFuZCBt
aXhlZCAoYWR2YW5jZWQpIG1vZGUuIEkgZG9uJ3Qga25vdwo+Pj4gaG93IG1peGVkIG1vZGUgd29y
a3MsIGJ1dCBhY2NvcmRpbmcgdG8gQWxsd2lubmVyIGl0IGdpdmVzIGJlc3QgcmVzdWx0cywKPj4+
IHNvIHRoZXkgdXNlIGl0IGV4Y2x1c2l2ZWx5LiBDdXJyZW50bHkgdGhpcyBtb2RlIGlzIGFsc28g
aGFyZGNvZGVkIGhlcmUuCj4+Pgo+Pj4gRm9yIGVhY2ggaW50ZXJsZWF2ZWQgZnJhbWUgcXVldWVk
LCB0aGlzIGRyaXZlciBwcm9kdWNlcyAyIGRlaW50ZXJsYWNlZAo+Pj4gZnJhbWVzLiBEZWludGVy
bGFjZWQgZnJhbWVzIGFyZSBiYXNlZCBvbiAyIGNvbnNlcXV0aXZlIG91dHB1dCBidWZmZXJzLAo+
Pj4gZXhjZXB0IGZvciB0aGUgZmlyc3QgMiwgd2hlcmUgc2FtZSBvdXRwdXQgYnVmZmVyIGlzIGdp
dmVuIHRvIHBlcmlwaGVyYWwKPj4+IGFzIGN1cnJlbnQgYW5kIHByZXZpb3VzLgo+Pj4KPj4+IFRo
ZXJlIGlzIG5vIGRvY3VtZW50YXRpb24gZm9yIHRoaXMgY29yZSwgc28gcmVnaXN0ZXIgbGF5b3V0
IGFuZCBmaXhlZAo+Pj4gdmFsdWVzIHdlcmUgdGFrZW4gZnJvbSBCU1AgZHJpdmVyLgo+Pj4KPj4+
IEknbSBub3Qgc3VyZSBpZiBtYXhpbXVtIHNpemUgb2YgdGhlIGltYWdlIHVuaXQgaXMgY2FwYWJs
ZSB0byBwcm9jZXNzIGlzCj4+PiBnb3Zlcm5lZCBieSBzaXplIG9mICJmbGFnIiBidWZmZXJzLCBm
cmVxdWVuY3kgb3IgaXQgcmVhbGx5IGlzIHNvbWUgSFcKPj4+IGxpbWl0YXRpb24uIEN1cnJlbnRs
eSBkcml2ZXIgY2FuIHByb2Nlc3MgZnVsbCBIRCBpbWFnZSBpbiB+MTVtcyAoNy41bXMKPj4+IGZv
ciBlYWNoIGNhcHR1cmUgYnVmZmVyKSwgd2hpY2ggYWxsb3dzIHRvIHByb2Nlc3MgMTkyMHgxMDgw
QDYwaSB2aWRlbwo+Pj4gc21vb3RobHkgaW4gcmVhbCB0aW1lLgo+Pj4KPj4+IEFja2VkLWJ5OiBN
YXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBKZXJu
ZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4+PiAtLS0KPj4+Cj4+PiAgTUFJ
TlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgNyArCj4+PiAg
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9LY29uZmlnICAgICAgICAgICAgICAgIHwgICAxMiArCj4+
PiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9NYWtlZmlsZSAgICAgICAgIHwgICAgMSAr
Cj4+PiAgLi4uL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjhpLWRpL01ha2VmaWxlICAgIHwgICAg
MiArCj4+PiAgLi4uL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjhpLWRpL3N1bjhpLWRpLmMgIHwg
MTAyOCArKysrKysrKysrKysrKysrKwo+Pj4gIC4uLi9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW44
aS1kaS9zdW44aS1kaS5oICB8ICAyMzcgKysrKwo+Pj4gIDYgZmlsZXMgY2hhbmdlZCwgMTI4NyBp
bnNlcnRpb25zKCspCj4+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vc3VueGkvc3VuOGktZGkvTWFrZWZpbGUKPj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW44aS1kaS9zdW44aS1kaS5jCj4+PiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuOGktZGkvc3VuOGktZGku
aAo+Pj4KPj4+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCj4+PiBpbmRl
eCBjN2I0ODUyNTgyMmEuLmMzNzU0NTUxMjVmYiAxMDA2NDQKPj4+IC0tLSBhL01BSU5UQUlORVJT
Cj4+PiArKysgYi9NQUlOVEFJTkVSUwo+Pj4gQEAgLTQ2NDYsNiArNDY0NiwxMyBAQCBNOgkiTWFj
aWVqIFcuIFJvenlja2kiIDxtYWNyb0BsaW51eC1taXBzLm9yZz4KPj4+Cj4+PiAgUzoJTWFpbnRh
aW5lZAo+Pj4gIEY6CWRyaXZlcnMvbmV0L2ZkZGkvZGVmeHguKgo+Pj4KPj4+ICtERUlOVEVSTEFD
RSBEUklWRVJTIEZPUiBBTExXSU5ORVIgSDMKPj4+ICtNOglKZXJuZWogU2tyYWJlYyA8amVybmVq
LnNrcmFiZWNAc2lvbC5uZXQ+Cj4+PiArTDoJbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4+
PiArVDoJZ2l0IGdpdDovL2xpbnV4dHYub3JnL21lZGlhX3RyZWUuZ2l0Cj4+PiArUzoJTWFpbnRh
aW5lZAo+Pj4gK0Y6CWRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuOGktZGkvCj4+Cj4+
IFRoaXMgaXMgbWlzc2luZyB0aGUgYmluZGluZ3MgZmlsZSBhZGRlZCBpbiB0aGUgcHJldmlvdXMg
cGF0Y2guCj4gCj4gV2VsbCwgSSBsaXN0ZWQgTWF4aW1lIGFuZCBDaGVuLVl1IGFzIGJpbmRpbmcg
bWFpbnRhaW5lcnMgaW4gcGF0Y2ggNCwgc28gdGhhdCdzIAo+IHdoeSBJIGRpZG4ndCBpbmNsdWRl
IGl0IGhlcmUuIElmIHlvdSB0aGluayBJIHNob3VsZCBiZSBtYWludGFpbmVyIG9mIHRoYXQgCj4g
YmluZGluZyB0b28sIEkgY2FuIGNoYW5nZSB0aGF0LiBJIHRvb2sgc3VuNmktY3NpIGFzIGV4YW1w
bGUgd2hlcmUgYmluZGluZyAKPiBtYWludGFpbmVycyBhcmUgTWF4aW1lIGFuZCBDaGVuLVl1IGFu
ZCBkcml2ZXIgbWFpbnRhaW5lciBpcyBZb25nIERlbmcuCgpOb3JtYWxseSwgd2hvZXZlciBtYWlu
dGFpbnMgdGhlIGRyaXZlciBhbHNvIG1haW50YWlucyB0aGUgY29ycmVzcG9uZGluZyBiaW5kaW5n
cwpkb2N1bWVudGF0aW9uLiBJdCBkb2Vzbid0IG1ha2UgbXVjaCBzZW5zZSB0byBoYXZlIGRpZmZl
cmVudCBwZW9wbGUgbWFpbnRhaW4gaXQuCgpJIHNlZSB0aGF0IHRoZSAnbWFpbnRhaW5lcnM6JyB0
YWcgaXMgbm93IGEgdmFsaWQgd2F5IG9mIGRlc2NyaWJpbmcgbWFpbnRhaW5lcnMuCkJ1dCBpdCBk
b2Vzbid0IGFwcGVhciB0byBiZSByZWFkIGJ5IHNjcmlwdHMvZ2V0X21haW50YWluZXIucGwgQUZB
SUNTLgoKU28gdW5sZXNzIEkgYW0gd3JvbmcgYWJvdXQgdGhhdCBJIHRoaW5rIGl0IHN0aWxsIHNo
b3VsZCBiZSBhZGRlZCB0byBNQUlOVEFJTkVSUy4KSXQncyBjZXJ0YWlubHkgZG9uZSBmb3Igb3Ro
ZXIgZHJpdmVycyAoZ3JlcCB5YW1sIE1BSU5UQUlORVJTKS4KCkluIG15IHZpZXcgeW91IHNob3Vs
ZCBpbmNsdWRlIHlvdXJzZWxmIGFzIG1haW50YWluZXIgb2YgdGhpcyBiaW5kaW5ncyBkb2MsIGFu
ZAphZGQgaXQgdG8gdGhlIE1BSU5UQUlORVJTIGZpbGUuCgpSZWdhcmRzLAoKCUhhbnMKCj4gCj4g
QmVzdCByZWdhcmRzLAo+IEplcm5lago+IAo+Pgo+PiBSZWdhcmRzLAo+Pgo+PiAJSGFucwo+Pgo+
Pj4gKwo+Pj4KPj4+ICBERUxMIFNNQklPUyBEUklWRVIKPj4+ICBNOglQYWxpIFJvaMOhciA8cGFs
aS5yb2hhckBnbWFpbC5jb20+Cj4+PiAgTToJTWFyaW8gTGltb25jaWVsbG8gPG1hcmlvLmxpbW9u
Y2llbGxvQGRlbGwuY29tPgo+IAo+IAo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
