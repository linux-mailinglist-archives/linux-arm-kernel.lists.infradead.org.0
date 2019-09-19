Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E3DB7935
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 14:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZ8Q3hvpg8JOtK+BM/FH1rvfnoIgzwoEuN8xr6ftUTA=; b=O+EJZ7GxekLIRC
	A9IXyljQF9zpon3SbUK3n1JrkUpjP7y/tsKK8ahGDZjvwCfPKgt4b1OLsxj5UVKcqEdENaHwiA7f4
	y5b3ijbpIGVOKCExWuInQ9cGCXdcLRxM5zzXTzpguRWL9OxjwMRdrggCXeHNskpy/yp+IUoYpQHuI
	SYeBEb/YcOVhelCbJOdlZ4pFagQKJdgQj7cPUfizDLIoHahjdGVg1GJtNmkSMo/aUHKu6+1oSQJbh
	hzR1s5eid3fPJMmmUkEl9INuAhXfXYq6x9lTVhsM5NvKCKT6hqG6/C2w7CnSlK6tKyIKqktQ+bmKM
	Rv6zaX/AkdE4FfqTJptA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvRO-0000UK-Ul; Thu, 19 Sep 2019 12:21:43 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvQj-0000TD-Gk
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 12:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1568895658; bh=DqSuKlgtgfCl7vwt3b48cW4t7q3h+us6tEnhNhgaN+E=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=kTdFWb2GFFllFkv4JMgHqgabRRuxwN4ML8mLbNQuo20IqJZZvEltfHl/FqlR1380E
 TvXyQlIeGIgk9qZ+YH+mi2xe3EILN9qrqf/w/WBg/09YuOPSxXaFGLlNgHcPMNfUH9
 lL5y74N1kzBAQ6QHmSyUx1ilToCdP/Vl3/gptIIY=
Date: Thu, 19 Sep 2019 14:20:58 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH] drm: sun8i-ui/vi: Fix layer zpos change/atomic modesetting
Message-ID: <20190919122058.fhpuafogdq7oir2d@core.my.home>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190914220337.646719-1-megous@megous.com>
 <20190918141734.kerdbbaynwutrxf6@gilmour>
 <20190918152309.j2dbu63jaru6jn2t@core.my.home>
 <20190918201617.5gwzmshoxbcxbmrx@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918201617.5gwzmshoxbcxbmrx@gilmour>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_052102_062390_2FD2CBBC 
X-CRM114-Status: GOOD (  27.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMTA6MTY6MTdQTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3
cm90ZToKPiBPbiBXZWQsIFNlcCAxOCwgMjAxOSBhdCAwNToyMzowOVBNICswMjAwLCBPbmTFmWVq
IEppcm1hbiB3cm90ZToKPiA+IEhpLAo+ID4KPiA+IE9uIFdlZCwgU2VwIDE4LCAyMDE5IGF0IDA0
OjE3OjM0UE0gKzAyMDAsIE1heGltZSBSaXBhcmQgd3JvdGU6Cj4gPiA+IEhpLAo+ID4gPgo+ID4g
PiBPbiBTdW4sIFNlcCAxNSwgMjAxOSBhdCAxMjowMzozN0FNICswMjAwLCBtZWdvdXNAbWVnb3Vz
LmNvbSB3cm90ZToKPiA+ID4gPiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNv
bT4KPiA+ID4gPgo+ID4gPiA+IFRoZXJlIGFyZSB2YXJpb3VzIGlzc3VlcyB0aGF0IHRoaXMgcmUt
d29yayBvZiBzdW44aV9bdXZdaV9sYXllcl9lbmFibGUKPiA+ID4gPiBmdW5jdGlvbiBmaXhlczoK
PiA+ID4gPgo+ID4gPiA+IC0gTWFrZSBzdXJlIHRoYXQgd2UgcmUtaW5pdGlhbGl6ZSB6cG9zIG9u
IHJlc2V0Cj4gPiA+ID4gLSBNaW5pbWl6ZSByZWdpc3RlciB1cGRhdGVzIGJ5IGRvaW5nIHRoZW0g
b25seSB3aGVuIHN0YXRlIGNoYW5nZXMKPiA+ID4gPiAtIEZpeCBpc3N1ZSB3aGVyZSBERSBwaXBl
IG1pZ2h0IGdldCBkaXNhYmxlZCBldmVuIGlmIGl0IGlzIG5vIGxvbmdlcgo+ID4gPiA+ICAgdXNl
ZCBieSB0aGUgbGF5ZXIgdGhhdCdzIGN1cnJlbnRseSBjYWxsaW5nIHN1bjhpX3VpX2xheWVyX2Vu
YWJsZQo+ID4gPiA+IC0gLmF0b21pY19kaXNhYmxlIGNhbGxiYWNrIGlzIG5vdCByZWFsbHkgbmVl
ZGVkIGJlY2F1c2UgLmF0b21pY191cGRhdGUKPiA+ID4gPiAgIGNhbiBkbyB0aGUgZGlzYWJsZSB0
b28sIHNvIGRyb3AgdGhlIGR1cGxpY2F0ZSBjb2RlCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KPiA+ID4KPiA+ID4gSXQgbG9v
a3MgbGlrZSB0aGVzZSBmaXhlcyBzaG91bGQgYmUgaW4gc2VwYXJhdGUgcGF0Y2hlcy4gSXMgdGhl
cmUgYW55Cj4gPiA+IHJlYXNvbiBpdCdzIG5vdCB0aGUgY2FzZT8KPiA+Cj4gPiBCdWxsZXQgcG9p
bnRzIGp1c3QgZGVzY3JpYmUgdGhlIHJlc3VsdGluZyBlZmZlY3QvYmVuZWZpdHMgb2YgdGhlIGNo
YW5nZSB0byBmaXgKPiA+IHRoZSBwaXBlIGNvbnRyb2wgcmVnaXN0ZXIgdXBkYXRlIGlzc3VlIChz
ZWUgdGhlIHJlZmVyZW5jZWQgZS1tYWlsKS4KPiAKPiBJdCdzIGRlZmluaXRlbHkgb2sgdG8gaGF2
ZSBtdWx0aXBsZSBwYXRjaGVzIG5lZWRlZCB0byBhZGRyZXNzIGEgc2luZ2xlCj4gcGVyY2VpdmVk
IGlzc3VlLgoKWWVzLCBidXQgSSBjYW4ndCBzaW1wbHkgc3BsaXQgdGhlIHBhdGNoLiBJbiBvcmRl
ciBmb3IgZWFjaCBjaGFuZ2UgdG8gd29yayBvbiBpdHMKb3duLCB0aGV5J2QgaGF2ZSB0byBiZSBk
b25lIGRpZmZlcmVudGx5IHRoYW4gdGhlIGZpbmFsIHJlc3VsdC4KCkkgd291bGRuJ3QgbWluZCBh
dCBhbGwgaWYgaXQgd2FzIGp1c3QgYSBzaW1wbGUgc3BsaXR0aW5nLCBidXQgeW91J3JlIGFza2lu
Zwpmb3IgdG9vIG11Y2ggd29yaywgdGhpcyB0aW1lLCBmb3Igbm8gYmVuZWZpdCB0aGF0IEkgY2Fu
IHNlZS4KCj4gQSBjb21taXQgaXMgbm90IGFib3V0IHdoYXQgeW91J3JlIGZpeGluZyBidXQgd2hh
dCB5b3UncmUgY2hhbmdpbmcuIEFuZAo+IHRoZSBmYWN0IHRoYXQgeW91IGhhdmUgdGhhIGJ1bGxl
dCBsaXN0IGluIHRoZSBmaXJzdCBwbGFjZSBwcm92ZXMgdGhhdAo+IHlvdSBoYXZlIG11bHRpcGxl
IGxvZ2ljYWwgY2hhbmdlcyBpbiB5b3VyIHBhdGNoLgo+IAo+IEFuZCBldmVuIHRoZW4sIHlvdXIg
Y29tbWl0IGxvZyBtZW50aW9ucyB0aGF0IHlvdSdyZSBmaXhpbmcgbXVsdGlwbGUKPiBpc3N1ZXMg
KHdpdGhvdXQgZXhwbGFpbmluZyB0aGVtKS4KCkkgY2FuIHJld29yZCB0aGUgY29tbWl0IG1lc3Nh
Z2UgaWYgdGhhdCBoZWxwcywgYW5kIHNraXAgdGhlIGJ1bGxldCBsaXN0IGlmIGl0CmlzIGNvbmZ1
c2luZy4gVGhlcmUncyBhIHNpbmdsZSBjb3JlIGlzc3VlIGFuZCB0aGF0IGlzIHRoYXQgdGhlIGRy
aXZlciBkb2Vzbid0CnVwZGF0ZSB0aGUgcGlwZS9jaGFubmVsIGNvbmZpZ3VyYXRpb24gY29ycmVj
dGx5IGxlYWRpbmcgdG8gZGlzYWJsaW5nIG9mCmFyYml0cmFyeSBsYXllcnMgKG5vdCBldmVuIHRo
b3NlIGJlaW5nIHVwZGF0ZWQgLSB1cGRhdGUgb2YgVUkgbGF5ZXIgbWF5IGRpc2FibGUKVkkgbGF5
ZXIgYXMgYSBzaWRlIGVmZmVjdCBmb3IgZXhhbXBsZSkgYXQgd3JvbmcgdGltZXMuIEFuZCBvbmx5
IGNoYW5nZXMKbmVjZXNzYXJ5IHRvIGRlYnVnL2ZpeCB0aGlzIGFyZSBpbmNsdWRlZC4KCkkgbWF5
IHRyeSBnZW5lcmF0aW5nIGEgbmljZXIgcGF0Y2ggd2l0aCBhIGRpZmZlcmVudCBkaWZmIG9wdGlv
bnMsIGlmIGl0IG1ha2VzIGl0Cm1vcmUgcmVhZGFibGUgZm9yIHJldmlldy4KCj4gPiBJIGNhbiBt
YXliZSBzcGxpdCBvZmYgdGhlIGZpcnN0IGJ1bGxldCBwb2ludCBpbnRvIGEgc2VwYXJhdGUgcGF0
Y2guIEJ1dAo+ID4gSSBjYW4ndCBndWFyYW50ZWUgaXQgd2lsbCBub3QgbWFrZSB0aGUgb3JpZ2lu
YWwgaXNzdWUgd29yc2UsIGJlY2F1c2UgaXQgbWlnaHQKPiA+IGhhdmUgYmVlbiBoaWRpbmcgdGhl
IG90aGVyIGlzc3VlIHdpdGggcmVnaXN0ZXIgdXBkYXRlcy4KPiA+Cj4gPiBUaGUgcmVzdCBpcyBq
dXN0IGEgcmVzdWx0IG9mIHRoZSBzaW5nbGUgbG9naWNhbCBjaGFuZ2UuIEl0IGRvZXNuJ3Qgd29y
awo+ID4gaW5kaXZpZHVhbGx5LCBpdCBhbGwgaGFzIHRoZSBnb2FsIG9mIGZpeGluZyB0aGUgaXNz
dWUgYXMgYSB3aG9sZS4KPiA+Cj4gPiBJZiBJIHdlcmUgdG8gc3BsaXQgaXQgSSB3b3VsZCBoYXZl
IHRvIGFjdHVhbGx5IHJlLWltcGxlbWVudCAuYXRvbWljX2Rpc2FibGUKPiA+IGNhbGxiYWNrIG9u
bHkgdG8gcmVtb3ZlIGl0IGluIHRoZSBuZXh0IHBhdGNoLiBJIGRvbid0IHNlZSB0aGUgYmVuZWZp
dC4KPiAKPiBZb3VyIGNvbW1pdCBsb2cgc2F5cyB0aGF0IHlvdSByZW1vdmUgYXRvbWljX2Rpc2Fi
bGUuIFdoeSB3b3VsZCB5b3UKPiByZW1vdmUgaXQsIHRvIGFkZCBpdCBiYWNrLCB0byByZW1vdmUg
aXQgYWdhaW4/CgpCZWNhdXNlIGlmIEkgcmVtb3ZlIGl0IEkgbmVlZCB0byByZS1pbXBsZW1lbnQg
dGhlIGZ1bmN0aW9uYWxpdHkgaW4gdGhlIHVwZGF0ZQpjYWxsYmFjay4gVGhlIGNvcmUgd2lsbCBj
aGFuZ2Ugd2hhdCBpcyBjYWxsZWQgYmFzZWQgb24gcHJlc2VuY2Ugb2YgY2FsbGJhY2tzLgpJdCdz
IG5vdCBhIHNpbXBsZSByZW1vdmFsLgoKSWYgSSBmaXJzdCBpbXBsZW1lbnQgdGhlIG5ldyBzdW44
aV9bdXZdaV9sYXllcl9lbmFibGUgYW5kIHVwZGF0ZSBjYWxsYmFjaywKa2VlcGluZyBhIGRpc2Fi
bGUgY2FsbGJhY2sgd291bGQgbm90IHdvcmssIGJlY2F1c2UgdGhlIG5ldyB1cGRhdGUgY2FsbGJh
Y2sKd2lsbCBvbmx5IHdvcmsgaWYgZGlzYWJsZSBjYWxsYmFjayBpcyBub3QgZGVmaW5lZCAoYmVj
YXVzZSBpdCBpdCBpcywgdGhlbgp0aGUgZHJtIGNvcmUgd2lsbCBub3QgY2FsbCB0aGUgdXBkYXRl
IGNhbGxiYWNrIGluIGFsbCBjYXNlcyB0aGF0IEkgbmVlZCkuCgpyZWdhcmRzLAoJby4KCj4gTWF4
aW1lCgoKCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
