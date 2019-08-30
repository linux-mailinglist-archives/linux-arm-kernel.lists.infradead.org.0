Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DFDA3352
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyLGDtnYA/1E14dOF9es1nqZPdxZQws1RwJS5QPwBtA=; b=e/0rWZT/ViUD/T
	1S8gYu7m5AlW1u2edrNyah//71E8TUK4z5S/Iyeb0ZpcorhnTV5H5ULW7+1U7TiaqxyroV5OUAtFE
	/4b3I1L8vNTEzXSkmq57Hh52txdQVnHWTQM+s05kKHysf0lrLJyPG5CCkcXPzQjwxGCesvfl6jrKi
	QYrNTns468dKzixQhlxZhX9okcF2snNfnca/T7OuJY613xqevSi2YTLpGMMCNPAL7O//ANKB0YXWq
	LlA131J2cxgQxnVb9ZyLy8rUYd2wiQOFu/V0leZd3zFdKugAFtbSyC/OrRimC/ud7QWxul5bWpbpc
	kPccyPdxKGFmUu2sbvIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cnp-0001T2-UX; Fri, 30 Aug 2019 09:02:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cng-0001Sg-UJ
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:02:34 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i3cnd-0001ch-AU; Fri, 30 Aug 2019 11:02:29 +0200
Message-ID: <1567155748.3714.1.camel@pengutronix.de>
Subject: Re: [PATCHv2 02/11] soc: ti: add initial PRM driver with reset
 control support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tero Kristo <t-kristo@ti.com>, ssantosh@kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 robh+dt@kernel.org
Date: Fri, 30 Aug 2019 11:02:28 +0200
In-Reply-To: <049da607-c352-4ed1-9a2d-2374d7a7e372@ti.com>
References: <20190828071941.32378-1-t-kristo@ti.com>
 <20190828071941.32378-3-t-kristo@ti.com>
 <1567084339.5345.7.camel@pengutronix.de>
 <049da607-c352-4ed1-9a2d-2374d7a7e372@ti.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_020232_979363_614134D1 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGVybywKCk9uIEZyaSwgMjAxOS0wOC0zMCBhdCAxMDoyOCArMDMwMCwgVGVybyBLcmlzdG8g
d3JvdGU6Cj4gT24gMjkvMDgvMjAxOSAxNjoxMiwgUGhpbGlwcCBaYWJlbCB3cm90ZToKWy4uLl0K
PiA+IEkgd29uZGVyIGlmIHNwbGl0dGluZyByc3RjdHJsL3JzdHN0L3JzdG1hcCBvdXQgaW50byBh
IHNlcGFyYXRlIHN0cnVjdHVyZQo+ID4gd291bGQgbWFrZSBzZW5zZS4gVGhhdCBjb3VsZCBiZSBs
aW5rZWQgZnJvbSBvbWFwX3Jlc2V0X2RhdGEgZGlyZWN0bHkuCj4gPiBUaGF0IG9ubHkgbWFrZXMg
c2Vuc2UgaWYgdGhlcmUnZCBiZSBlbm91Z2ggY2FzZXMgd2hlcmUgaXQgY2FuIGJlIHJldXNlZAo+
ID4gZm9yIG11bHRpcGxlIFBSTXMgaW5zdGFuY2VzLgo+IAo+IEhtbSwgc3BsaXR0aW5nIHRoZXNl
IG91dCB3b3VsZCBtYWtlIGl0IHBvc3NpYmxlIHRvIHNoYXJlIHRoZSBiaXRzIGZvciAKPiBpcHU6
cyBhY3Jvc3MgZGV2aWNlcywgc2FtZSBmb3IgZHNwOnMgYW5kIGV2ZTpzLgo+IAo+IEhvd2V2ZXIs
IGFkZGluZyB0b28gbWFueSBsZXZlbHMgb2YgYWJzdHJhY3Rpb24gbWFrZXMgaXQga2luZCBvZiAK
PiBkaWZmaWN1bHQgdG8gZm9sbG93IHdoYXQgaXMgaGFwcGVuaW5nIHdpdGggdGhlIGNvZGUsIGFu
ZCBpdCB3b3VsZCBvbmx5IAo+IHNhdmUgbWF5YmUgfjEwMCBieXRlcyBvZiBtZW1vcnkgYXQgdGhl
IG1vbWVudC4KCkdvb2QgcG9pbnQsIHRoYXQgaXMgbGlrZWx5IG5vdCB3b3J0aCB0aGUgYWRkaXRp
b25hbCBjb21wbGV4aXR5LgoKWy4uLl0KPiA+IFdoYXQgZG9lcyB0aGUgdmFsdWUgcmVhZCBmcm9t
IHRoZSByc3RzdCByZWdpc3RlciBpbmRpY2F0ZT8gSXMgaXQgdGhlCj4gPiBjdXJyZW50IHN0YXRl
IG9mIHRoZSByZXNldCBsaW5lPyBJcyBpdCAwIHVudGlsIGRlYXNzZXJ0aW9uIGlzIGNvbXBsZXRl
ZCwKPiA+IGFuZCB0aGVuIGl0IHR1cm5zIHRvIDE/Cj4gCj4gVmFsdWUgb2YgMSBpbmRpY2F0ZXMg
dGhhdCB0aGUgY29ycmVzcG9uZGluZyBJUCBoYXMgYmVlbiByZXNldCAKPiBzdWNjZXNzZnVsbHku
IFdyaXRpbmcgYmFjayAxIHRvIHRoZSBzYW1lIGJpdCBjbGVhcnMgaXQgb3V0LCBzbyB0aGUgCj4g
c3RhdHVzIGNhbiBiZSBwb2xsZWQgbGF0ZXIgb24uCgpUaGVuIHRoaXMgc2hvdWxkIG5vdCBiZSBy
ZXR1cm5lZCBkaXJlY3RseSBieSByZXNldF9jb250cm9sX3N0YXR1czoKCi8qKgrCoCogcmVzZXRf
Y29udHJvbF9zdGF0dXMgLSByZXR1cm5zIGEgbmVnYXRpdmUgZXJybm8gaWYgbm90IHN1cHBvcnRl
ZCwgYcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoArCoCogcG9zaXRpdmUgdmFsdWUgaWYg
dGhlIHJlc2V0IGxpbmUgaXMgYXNzZXJ0ZWQsIG9yIHplcm8gaWYgdGhlIHJlc2V0CsKgKiBsaW5l
IGlzIG5vdCBhc3NlcnRlZCBvciBpZiB0aGUgZGVzYyBpcyBOVUxMIChvcHRpb25hbCByZXNldCku
CsKgKi8KClRoaXMgc2hvdWxkIHJldHVybiAwIG9ubHkgaWYgdGhlIGNvbnRyb2wgYml0IGlzIGRl
YXNzZXJ0ZWQgYW5kIHRoZQpzdGF0dXMgYml0IGlzIGFscmVhZHkgc2V0LgoKSWYgZWl0aGVyIHRo
ZSBjb250cm9sIGJpdCBpcyBhc3NlcnRlZCwgb3IgaWYgdGhlIHN0YXR1cyBiaXQgaXMgc3RpbGwK
Y2xlYXJlZCwgdGhpcyBzaG91bGQgcmV0dXJuIDEuCgpbLi4uXQo+ID4gPiArCXJlcyA9IHBsYXRm
b3JtX2dldF9yZXNvdXJjZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMCk7Cj4gPiA+ICsJaWYgKCFy
ZXMpCj4gPiA+ICsJCXJldHVybiAtRU5PREVWOwo+ID4gCj4gPiBUaGlzIGNhbiBiZSBtZXJnZWQg
d2l0aMKgZGV2bV9pb3JlbWFwX3Jlc291cmNlIGJlbG93Lgo+IAo+IFdlbGwsIEkgYWN0dWFsbHkg
dXNlIHRoZSAicmVzIiBsYXRlciBvbiB0byBtYXAgdGhlIERUIG5vZGUgdG8gdGhlIAo+IGNvcnJl
c3BvbmRpbmcgcHJtX2RhdGEgYmFzZWQgb24gYWRkcmVzcy4KCk9rLiBJIGdsYW5jZWQgb3ZlciB0
aGUgZGF0YS0+YmFzZSBsb29wIGJlbG93IGFmdGVyIHF1ZXN0aW9uaW5nIHdoZXRoZXIKaXQgaXMg
bmVlZGVkIGF0IGFsbC4KCj4gPiAKPiA+ID4gKwltYXRjaCA9IG9mX21hdGNoX2RldmljZShvbWFw
X3BybV9pZF90YWJsZSwgJnBkZXYtPmRldik7Cj4gPiA+ICsJaWYgKCFtYXRjaCkKPiA+ID4gKwkJ
cmV0dXJuIC1FTk9UU1VQUDsKPiA+ID4gKwo+ID4gPiArCXBybSA9IGRldm1fa3phbGxvYygmcGRl
di0+ZGV2LCBzaXplb2YoKnBybSksIEdGUF9LRVJORUwpOwo+ID4gPiArCWlmICghcHJtKQo+ID4g
PiArCQlyZXR1cm4gLUVOT01FTTsKPiA+ID4gKwo+ID4gPiArCWRhdGEgPSBtYXRjaC0+ZGF0YTsK
PiA+ID4gKwo+ID4gPiArCXdoaWxlIChkYXRhLT5iYXNlICE9IHJlcy0+c3RhcnQpIHsKPiA+ID4g
KwkJaWYgKCFkYXRhLT5iYXNlKQo+ID4gPiArCQkJcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ICsJCWRh
dGErKzsKPiA+ID4gKwl9Cj4gPiAKPiA+IElzIHRoaXMgbm90IHNvbWV0aGluZyB0aGF0IHlvdSB3
YW50IHRvIGhhdmUgZW5jb2RlZCBpbiB0aGUgY29tcGF0aWJsZQo+ID4gc3RyaW5nPyBUaGV5IGFs
bCBoYXZlIGEgZGlmZmVyZW50IHJlZ2lzdGVyIGxheW91dC4KPiAKPiBXaXRoIHRoZSBhZGRpdGlv
biBvZiBhbGwgdGhlIHBybSBpbnN0YW5jZXMgbGF0ZXIgb24sIHRoaXMgY2hhbmdlcy4gTW9zdCAK
PiBvZiB0aGUgcHJtIGluc3RhbmNlcyB3aWxsIGhhdmUgc2FtZSByZWdpc3RlciBsYXlvdXQgdGhl
bi4gU2VlIHYxIGRhdGEgCj4gdGhhdCB3YXMgcG9zdGVkIGVhcmxpZXIgWzFdLCBidXQgd2hpY2gg
SSBkcm9wcGVkIGZvciBub3cgdG8ga2VlcCB0aGlzIAo+IHNlcmllcyBpc29sYXRlZCBmb3IgcmVz
ZXQgaGFuZGxpbmcgb25seS4gSW4gdGhpcyBwYXRjaCwgeW91IHNlZSB0aGF0IGZvciAKPiBEUkE3
LCBhbGwgdGhlIHBvd2VyIGRvbWFpbiBoYW5kbGluZyByZWxhdGVkIFBSTSBpbnN0YW5jZXMgaGF2
ZSBpZGVudGljYWwgCj4gcmVnaXN0ZXIgbGF5b3V0LCB0aGV5IGp1c3QgZGlmZmVyIGJhc2VkIG9u
IGJhc2UgYWRkcmVzcy4KPgo+IFsxXSBodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9saW51
eC1vbWFwL21zZzE0OTg3Mi5odG1sCj4gCj4gSXQgd291bGQgYmUgcG9zc2libGUgdG8gZW5jb2Rl
IGFsbCBvZiB0aGlzIGJhc2VkIG9uIGRpZmZlcmVudCAKPiBjb21wYXRpYmxlcywgYnV0IHRoZW4g
dGhlIGFtb3VudCBvZiBkaWZmZXJlbnQgY29tcGF0aWJsZSBzdHJpbmdzIHdvdWxkIAo+IGV4cGxv
ZGUuLi4gRFJBNyBpcyBqdXN0IG9uZSBTb0MuCgpJIHNlZSBvbmx5IDMgZGlmZmVyZW50IGxheW91
dHMgaW4gdGhhdCBwYXRjaC4gQWxsIGluc3RhbmNlcyB3aXRoCmlkZW50aWNhbCBsYXlvdXQgY291
bGQgc2hhcmUgdGhlIHNhbWUgY29tcGF0aWJsZS4KCkVpdGhlciB3YXksIHRoYXQgaXMgRFQgYmlu
ZGluZ3MgdGVycml0b3J5LCBhbmQgbm90IGZvciBtZSB0byBkZWNpZGUuIEkKanVzdCBmb3VuZCBp
dCB1bnVzdWFsIHRvIGVuY29kZSB0aGUgZGV2aWNlIHR5cGUgYnkgaXRzIGJhc2UgYWRkcmVzcyBp
bgp0aGUgZHJpdmVyLgoKPiA+IAo+ID4gPiArCj4gPiA+ICsJcHJtLT5kYXRhID0gZGF0YTsKPiA+
ID4gKwo+ID4gPiArCXBybS0+YmFzZSA9IGRldm1faW9yZW1hcF9yZXNvdXJjZSgmcGRldi0+ZGV2
LCByZXMpOwo+ID4gCj4gPiAJcHJtLT5iYXNlID0gZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291
cmNlKHBkZXYsIDApOwo+IAo+IEkgc3RpbGwgbmVlZCB0aGUgInJlcyIgcG9pbnRlciBhcyBpbmRp
Y2F0ZWQgYWJvdmUuCgpHb3QgaXQuIElmIHRoZSBsb29rdXAgYnkgYmFzZSBhZGRyZXNzIGlzIG5l
ZWRlZCwgdGhpcyBoYXMgdG8gc3RheSBzcGxpdC4KCnJlZ2FyZHMKUGhpbGlwcAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
