Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71B7B1579
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0q7DSV37GgNa2xwInEaJAIV7eTN/dIFaZv1IScOMRHA=; b=HS8aZzL6pSQgDL
	zLwM/sytuGde3SNGXUm3JQ72qV7osZkJ/oWLbQyTsK70ch9aS2ZKv6chRFx1hYYJ9nrSuG7LoB4Nu
	2puagItkazVI+m0jyvv6W/SS98OsP5FZF5hrbCJePUYaFyh2K72htJatTwa4TANAnN+DZ1poG463S
	AxMSJg5KdJZGZegeXdY3Yb695NjhO3d3Zsq5yb/cvJtUWQHCX+ZxNq7dQUkCUb/B8F+0TTrWO7O9o
	hoaNoMopMbEwKmyP55G06jFxMXeiz78U+4ft5JtqfaYbabD2amf/saXaz+foC5n/rGpJVUSrOMsB8
	/vDX8nH3yc2hGSlMzZ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Vp7-0001id-1z; Thu, 12 Sep 2019 20:36:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8VnU-0001fM-Tu
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:34:45 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 822EE2081B;
 Thu, 12 Sep 2019 20:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568320470;
 bh=9zsVAQszxukXWrSERDHPeEK1oIeDsPHZ+92NCDWFApk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eKmeCfGU2SI0KmRPr2IfM8VLEvVDZaEpn6MMiadOLQg3013o1tXlxC2LpDeWpQV0h
 +7equ1jM/7hcEU3Zg0xrtDUXTWQFB08nas8ttZcLnFAyfr0YOKGQ3hzyUxxREnfDYp
 80endAJMkSLfewUaf4DV8NTpm8rVsMvuYlnGavmY=
Date: Thu, 12 Sep 2019 22:34:27 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 3/6] ARM: dts: sunxi: h3/h5: Add MBUS controller node
Message-ID: <20190912203427.ajbmtm5djctpkz6p@localhost.localdomain>
References: <20190912175132.411-1-jernej.skrabec@siol.net>
 <20190912175132.411-4-jernej.skrabec@siol.net>
 <20190912202057.czb6nzgssg442isi@localhost.localdomain>
 <1679881.yZ8pMUtPNZ@jernej-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1679881.yZ8pMUtPNZ@jernej-laptop>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_133437_474523_167C165D 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgMTA6Mjg6MzdQTSArMDIwMCwgSmVybmVqIMWga3JhYmVj
IHdyb3RlOgo+IERuZSDEjWV0cnRlaywgMTIuIHNlcHRlbWJlciAyMDE5IG9iIDIyOjIwOjU3IENF
U1QgamUgTWF4aW1lIFJpcGFyZCBuYXBpc2FsKGEpOgo+ID4gSGksCj4gPiAKPiA+IE9uIFRodSwg
U2VwIDEyLCAyMDE5IGF0IDA3OjUxOjI5UE0gKzAyMDAsIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+
ID4gPiBCb3RoLCBIMyBhbmQgSDUsIGNvbnRhaW4gTUJVUywgd2hpY2ggaXMgdGhlIGJ1cyB1c2Vk
IGJ5IERNQSBkZXZpY2VzIHRvCj4gPiA+IGFjY2VzcyBzeXN0ZW0gbWVtb3J5Lgo+ID4gPiAKPiA+
ID4gTUJVUyBjb250cm9sbGVyIGlzIHJlc3BvbnNpYmxlIGZvciBhcmJpdHJhdGlvbiBiZXR3ZWVu
IGNoYW5uZWxzIGJhc2VkCj4gPiA+IG9uIHNldCBwcmlvcml0eSBhbmQgY2FuIGRvIHNvbWUgb3Ro
ZXIgdGhpbmdzIGFzIHdlbGwsIGxpa2UgcmVwb3J0Cj4gPiA+IGJhbmR3aWR0aCB1c2VkLiBJdCBh
bHNvIG1hcHMgUkFNIHJlZ2lvbiB0byBkaWZmZXJlbnQgYWRkcmVzcyB0aGFuIENQVS4KPiA+ID4g
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9s
Lm5ldD4KPiA+ID4gLS0tCj4gPiA+IAo+ID4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMt
aDUuZHRzaSB8IDkgKysrKysrKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMt
aDUuZHRzaQo+ID4gPiBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kgaW5kZXgg
ZWJhMTkwYjNmOWRlLi5lZjFkMDM4MTI2MzYKPiA+ID4gMTAwNjQ0Cj4gPiA+IC0tLSBhL2FyY2gv
YXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kKPiA+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9k
dHMvc3VueGktaDMtaDUuZHRzaQo+ID4gPiBAQCAtMTA5LDYgKzEwOSw3IEBACj4gPiA+IAo+ID4g
PiAgCQljb21wYXRpYmxlID0gInNpbXBsZS1idXMiOwo+ID4gPiAgCQkjYWRkcmVzcy1jZWxscyA9
IDwxPjsKPiA+ID4gIAkJI3NpemUtY2VsbHMgPSA8MT47Cj4gPiA+IAo+ID4gPiArCQlkbWEtcmFu
Z2VzOwo+ID4gPiAKPiA+ID4gIAkJcmFuZ2VzOwo+ID4gPiAgCQkKPiA+ID4gIAkJZGlzcGxheV9j
bG9ja3M6IGNsb2NrQDEwMDAwMDAgewo+ID4gPiAKPiA+ID4gQEAgLTUzOCw2ICs1MzksMTQgQEAK
PiA+ID4gCj4gPiA+ICAJCQl9Owo+ID4gPiAgCQkKPiA+ID4gIAkJfTsKPiA+ID4gCj4gPiA+ICsJ
CW1idXM6IGRyYW0tY29udHJvbGxlckAxYzYyMDAwIHsKPiA+ID4gKwkJCWNvbXBhdGlibGUgPSAi
YWxsd2lubmVyLHN1bjhpLWgzLW1idXMiOwo+ID4gPiArCQkJcmVnID0gPDB4MDFjNjIwMDAgMHgx
MDAwPjsKPiA+ID4gKwkJCWNsb2NrcyA9IDwmY2N1IDExMz47Cj4gPiA+ICsJCQlkbWEtcmFuZ2Vz
ID0gPDB4MDAwMDAwMDAgMHg0MDAwMDAwMCAKPiAweGMwMDAwMDAwPjsKPiA+ID4gKwkJCSNpbnRl
cmNvbm5lY3QtY2VsbHMgPSA8MT47Cj4gPiA+ICsJCX07Cj4gPiA+ICsKPiA+IAo+ID4gSWYgdGhh
dCdzIGVhc3kgZW5vdWdoIHRvIGFjY2VzcywgY2FuIHlvdSBhbHNvIGFkZCB0aGUgcmVmZXJlbmNl
cyBpbgo+ID4gdGhlIGRldmljZXMgdGhhdCBhcmUgYWxyZWFkeSB0aGVyZT8gKENTSSBhbmQgREUg
Y29tZXMgdG8gbXkgbWluZCwgYnV0Cj4gPiB0aGVyZSBtaWdodCBiZSBvdGhlcnMpLgo+IAo+IFN0
cmFuZ2VseSwgREUyIGRvZXNuJ3QgdXNlIHRoaXMgb2Zmc2V0LiBUaGF0IHdhcyB0ZXN0ZWQgb24g
T3JhbmdlUGkgUGx1czJFLCAKPiB3aGljaCBoYXMgMiBHaUIgb2YgUkFNIGFuZCBzdWJ0cmFjdGlu
ZyB0aGlzIG9mZnNldCBjYXVzZXMgY29ycnVwdGVkIGltYWdlLgoKT2ssIHdlaXJkLiBCdXQgaWYg
aXQgd2FzIHRlc3RlZCB0aGVuIGZpbmUgYnkgbWUgOikKCj4gQnV0IEkgY2FuIGFkZCB0aGlzIHBy
b3BlcnRpZXMgdG8gQ1NJIHRvby4gSG93ZXZlciwgd291bGRuJ3QgdGhhdCBuZWVkIENTSSBEVCAK
PiBiaW5kaW5nIGV4cGFuc2lvbiB3aXRoIHRob3NlIHByb3BlcnRpZXM/IG90aGV0d2lzZSBEVCBj
aGVjayB3aWxsIGZhaWwuCgpPaCByaWdodCwgd2UgZGVmaW5pdGVseSBuZWVkIHRvIHVwZGF0ZSB0
aGUgYmluZGluZyBpbmRlZWQuIFRoZSBjb2RlCnNob3VsZCBiZSBhYmxlIHRvIGNvcGUgd2l0aCBi
b3RoIGNhc2VzIGFscmVhZHkuCgpNYXhpbWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
