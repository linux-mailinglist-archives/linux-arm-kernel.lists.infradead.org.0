Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E24DEA89
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJRb5RRM5/PrzoebNi5T35Y+QFeYsqgvWWe2pKAw8iM=; b=I+eDffin3iugOl
	n9CNrYbv2dg6spTkX/x8h7C8xoagdT9ZbeJQmWIOQZ+68oY/J2uwJdlCs13ue/KVhhpyBMmidVhd0
	QlRB7rNLIUyGV7F6HLJZCrtIlsSzBl6fKadAYOBSosFog9jFQG4FWxeo5GbD4aWTudi1/W7BAqCky
	fNF8yozXEOtT+61vQQUEQR4gq1xnc+CPkupGpHJqFd24F3+wkT68kp+jM/7pLJCRA5aE4QFvzTjlt
	JKVXtYwd19yaoylUraaJN1ryPDzcLHVGr9Bd4y1kCwdhPGJS2bXiox+L1eAo7VSq+BDLSWrjNphB6
	jE5HzUy8jcDL7wuLmUBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVdB-0000r4-JE; Mon, 21 Oct 2019 11:13:45 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVcz-0000pt-It
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:13:35 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id MVcniUFpbo1ZhMVcqiLppd; Mon, 21 Oct 2019 13:13:25 +0200
Subject: Re: [PATCH v4 5/6] media: sun4i: Add H3 deinterlace driver
To: Jernej Skrabec <jernej.skrabec@siol.net>, mripard@kernel.org, wens@csie.org
References: <20191017183738.68069-1-jernej.skrabec@siol.net>
 <20191017183738.68069-6-jernej.skrabec@siol.net>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <8137fbb3-036a-95e4-2642-5dd46fb55eb9@xs4all.nl>
Date: Mon, 21 Oct 2019 13:13:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191017183738.68069-6-jernej.skrabec@siol.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfOrcYAqH7QBWivX1AK7DllWSBUikBvpznnE0MCXdnJosMmjiQHFQoFOuDzkFg++s7AkvCd6Opgc3BsGoZqLEL7ZqPX8v6rDZHCa5ifDgksR9t+4pRPCZ
 fN+EMR3lWs0VBDAA6hWnNAMidQBrH/8raspDN/zVlgGKUP5w4K6d2FHdkGV9VRnzsJrw2LlRdOpqXajwCPfg6YUSFWUGe/1Owt8dKERa3AcaZZzVtEEdK5Ah
 lfbxQXo58S4JsIEy59RsW2utfHc8NzwSE6B9lTzU8SplcjMBxhUIzrYDBUQu/i+kFBrWxB0gWsNaXWn02oJU6vnveEddueSDOdeKmofpfhDsVmpoGi9Lv48H
 GrfiIfaYsPt3ddOy4G7f6voveea3cykjYeqNJRGdY17iZ/Z68XPXYAd/sCuBMCNy3e6e/p4MHS+RbaeokiKlt+39Qsu6d7VHqDuXaQLLorl48YzCINRfzZmO
 j/jE9cM7+akN4pJ0mDB5vGZchJ2iBkmpjZt9EHlIwg3I728Jvf5/Ht+gg5M=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_041333_778335_4EA03DE8 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMTcvMTkgODozNyBQTSwgSmVybmVqIFNrcmFiZWMgd3JvdGU6Cj4gQWxsd2lubmVyIEgz
IFNvQyBjb250YWlucyBkZWludGVybGFjZSB1bml0LCB3aGljaCBoYXMgc2V2ZXJhbCBtb2RlcyBv
Zgo+IG9wZXJhdGlvbiAtIGJ5cGFzcywgd2VhdmUsIGJvYiBhbmQgbWl4ZWQgKGFkdmFuY2VkKSBt
b2RlLiBJIGRvbid0IGtub3cKPiBob3cgbWl4ZWQgbW9kZSB3b3JrcywgYnV0IGFjY29yZGluZyB0
byBBbGx3aW5uZXIgaXQgZ2l2ZXMgYmVzdCByZXN1bHRzLAo+IHNvIHRoZXkgdXNlIGl0IGV4Y2x1
c2l2ZWx5LiBDdXJyZW50bHkgdGhpcyBtb2RlIGlzIGFsc28gaGFyZGNvZGVkIGhlcmUuCj4gCj4g
Rm9yIGVhY2ggaW50ZXJsZWF2ZWQgZnJhbWUgcXVldWVkLCB0aGlzIGRyaXZlciBwcm9kdWNlcyAy
IGRlaW50ZXJsYWNlZAo+IGZyYW1lcy4gRGVpbnRlcmxhY2VkIGZyYW1lcyBhcmUgYmFzZWQgb24g
MiBjb25zZXF1dGl2ZSBvdXRwdXQgYnVmZmVycywKPiBleGNlcHQgZm9yIHRoZSBmaXJzdCAyLCB3
aGVyZSBzYW1lIG91dHB1dCBidWZmZXIgaXMgZ2l2ZW4gdG8gcGVyaXBoZXJhbAo+IGFzIGN1cnJl
bnQgYW5kIHByZXZpb3VzLgo+IAo+IFRoZXJlIGlzIG5vIGRvY3VtZW50YXRpb24gZm9yIHRoaXMg
Y29yZSwgc28gcmVnaXN0ZXIgbGF5b3V0IGFuZCBmaXhlZAo+IHZhbHVlcyB3ZXJlIHRha2VuIGZy
b20gQlNQIGRyaXZlci4KPiAKPiBJJ20gbm90IHN1cmUgaWYgbWF4aW11bSBzaXplIG9mIHRoZSBp
bWFnZSB1bml0IGlzIGNhcGFibGUgdG8gcHJvY2VzcyBpcwo+IGdvdmVybmVkIGJ5IHNpemUgb2Yg
ImZsYWciIGJ1ZmZlcnMsIGZyZXF1ZW5jeSBvciBpdCByZWFsbHkgaXMgc29tZSBIVwo+IGxpbWl0
YXRpb24uIEN1cnJlbnRseSBkcml2ZXIgY2FuIHByb2Nlc3MgZnVsbCBIRCBpbWFnZSBpbiB+MTVt
cyAoNy41bXMKPiBmb3IgZWFjaCBjYXB0dXJlIGJ1ZmZlciksIHdoaWNoIGFsbG93cyB0byBwcm9j
ZXNzIDE5MjB4MTA4MEA2MGkgdmlkZW8KPiBzbW9vdGhseSBpbiByZWFsIHRpbWUuCj4gCj4gQWNr
ZWQtYnk6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5
OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gLS0tCj4gIE1BSU5U
QUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDcgKwo+ICBkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL0tjb25maWcgICAgICAgICAgICAgICAgfCAgIDEyICsKPiAgZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9NYWtlZmlsZSAgICAgICAgIHwgICAgMSArCj4gIC4u
Li9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW44aS1kaS9NYWtlZmlsZSAgICB8ICAgIDIgKwo+ICAu
Li4vbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuOGktZGkvc3VuOGktZGkuYyAgfCAxMDI4ICsrKysr
KysrKysrKysrKysrCj4gIC4uLi9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW44aS1kaS9zdW44aS1k
aS5oICB8ICAyMzcgKysrKwo+ICA2IGZpbGVzIGNoYW5nZWQsIDEyODcgaW5zZXJ0aW9ucygrKQo+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW44aS1k
aS9NYWtlZmlsZQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9z
dW54aS9zdW44aS1kaS9zdW44aS1kaS5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjhpLWRpL3N1bjhpLWRpLmgKPiAKPiBkaWZmIC0tZ2l0IGEv
TUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwo+IGluZGV4IGM3YjQ4NTI1ODIyYS4uYzM3NTQ1NTEy
NWZiIDEwMDY0NAo+IC0tLSBhL01BSU5UQUlORVJTCj4gKysrIGIvTUFJTlRBSU5FUlMKPiBAQCAt
NDY0Niw2ICs0NjQ2LDEzIEBAIE06CSJNYWNpZWogVy4gUm96eWNraSIgPG1hY3JvQGxpbnV4LW1p
cHMub3JnPgo+ICBTOglNYWludGFpbmVkCj4gIEY6CWRyaXZlcnMvbmV0L2ZkZGkvZGVmeHguKgo+
ICAKPiArREVJTlRFUkxBQ0UgRFJJVkVSUyBGT1IgQUxMV0lOTkVSIEgzCj4gK006CUplcm5laiBT
a3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiArTDoJbGludXgtbWVkaWFAdmdlci5r
ZXJuZWwub3JnCj4gK1Q6CWdpdCBnaXQ6Ly9saW51eHR2Lm9yZy9tZWRpYV90cmVlLmdpdAo+ICtT
OglNYWludGFpbmVkCj4gK0Y6CWRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuOGktZGkv
CgpUaGlzIGlzIG1pc3NpbmcgdGhlIGJpbmRpbmdzIGZpbGUgYWRkZWQgaW4gdGhlIHByZXZpb3Vz
IHBhdGNoLgoKUmVnYXJkcywKCglIYW5zCgo+ICsKPiAgREVMTCBTTUJJT1MgRFJJVkVSCj4gIE06
CVBhbGkgUm9ow6FyIDxwYWxpLnJvaGFyQGdtYWlsLmNvbT4KPiAgTToJTWFyaW8gTGltb25jaWVs
bG8gPG1hcmlvLmxpbW9uY2llbGxvQGRlbGwuY29tPgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
