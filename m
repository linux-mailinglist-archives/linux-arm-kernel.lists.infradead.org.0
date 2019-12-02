Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A08710E6CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 09:16:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhKnInnkf9DOZRW8VYdprDkrvGaqGk3Twm0GRRAI9Bc=; b=PjSadW8dWOK0GI
	plTcG5BrNHQpafK+8FvJGOEYYmbaMzTcJuYWzNe/B5FQ9xqOGRbV+wOrKI2r2nxzqm0iLYsffs+fj
	t0djEfwNcGgk7rl7InPIC8ONnP6Fst+oo4O5yRg856xwQe2AEINGUT6+Owk7ydIf44O0NsOHP9gT7
	tQKYneLXRMAenMnWjVmKpBoEXOG12JQzJk/r74iMGNRJ+bvKdduK/OrdE+vQb833/JzrnzMcFdz6X
	RJsSr4EC7PkmyPLbvQ9KvB3ePwkCzjQy8Ji7l3pHTnKoV4uQvLQTCb9W7zIxR/SBMR0Lbbs1F5Yi5
	uCSZMALRrdA2cDFKWItQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibgs7-0004Ma-9q; Mon, 02 Dec 2019 08:15:55 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibgrz-0004Lo-NE; Mon, 02 Dec 2019 08:15:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F3D59AE3C;
 Mon,  2 Dec 2019 08:15:43 +0000 (UTC)
Subject: Re: [PATCH 2/7] arm64: dts: realtek: rtd129x: Use reserved-memory for
 RPC regions
To: linux-realtek-soc@lists.infradead.org, James Tai <james.tai@realtek.com>
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-3-afaerber@suse.de>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <1f25f2fc-5d31-1d74-b730-78ad7861ffce@suse.de>
Date: Mon, 2 Dec 2019 09:15:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191111030434.29977-3-afaerber@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_001548_080446_B6140265 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMgYW5kIFJlYWx0ZWsgY29sbGVhZ3VlcywKCkFtIDExLjExLjE5IHVtIDA0OjA0IHNj
aHJpZWIgQW5kcmVhcyBGw6RyYmVyOgo+IE1vdmUgL3Jlc2VydmVkLW1lbW9yeSBub2RlIGZyb20g
UlREMTI5NSB0byBSVEQxMjl4IERULgo+IENvbnZlcnQgUlBDIC9tZW1yZXNlcnZlL3MgaW50byAv
cmVzZXJ2ZWQtbWVtb3J5IG5vZGVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJl
ciA8YWZhZXJiZXJAc3VzZS5kZT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVr
L3J0ZDEyOTUuZHRzaSB8IDEzICstLS0tLS0tLS0tLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9y
ZWFsdGVrL3J0ZDEyOXguZHRzaSB8IDIzICsrKysrKysrKysrKysrKysrKysrLS0tCj4gIDIgZmls
ZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0c2kgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5NS5kdHNpCj4gaW5kZXggMzRmNmNjNmYxNmZlLi4x
NDAyYWJlODBlYTEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0
ZDEyOTUuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1LmR0
c2kKPiBAQCAtMiw3ICsyLDcgQEAKPiAgLyoKPiAgICogUmVhbHRlayBSVEQxMjk1IFNvQwo+ICAg
Kgo+IC0gKiBDb3B5cmlnaHQgKGMpIDIwMTYtMjAxNyBBbmRyZWFzIEbDpHJiZXIKPiArICogQ29w
eXJpZ2h0IChjKSAyMDE2LTIwMTkgQW5kcmVhcyBGw6RyYmVyCj4gICAqLwo+ICAKPiAgI2luY2x1
ZGUgInJ0ZDEyOXguZHRzaSIKPiBAQCAtNDcsMTcgKzQ3LDYgQEAKPiAgCQl9Owo+ICAJfTsKPiAg
Cj4gLQlyZXNlcnZlZC1tZW1vcnkgewo+IC0JCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+IC0JCSNz
aXplLWNlbGxzID0gPDE+Owo+IC0JCXJhbmdlczsKPiAtCj4gLQkJdGVlQDEwMTAwMDAwIHsKPiAt
CQkJcmVnID0gPDB4MTAxMDAwMDAgMHhmMDAwMDA+Owo+IC0JCQluby1tYXA7Cj4gLQkJfTsKPiAt
CX07Cj4gLQo+ICAJdGltZXIgewo+ICAJCWNvbXBhdGlibGUgPSAiYXJtLGFybXY4LXRpbWVyIjsK
PiAgCQlpbnRlcnJ1cHRzID0gPEdJQ19QUEkgMTMKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRl
ay9ydGQxMjl4LmR0c2kKPiBpbmRleCA0NDMzMTE0NDc2ZjUuLjhkODBjY2E5NDViYyAxMDA2NDQK
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5eC5kdHNpCj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQo+IEBAIC0yLDE0ICsyLDEy
IEBACj4gIC8qCj4gICAqIFJlYWx0ZWsgUlREMTI5My9SVEQxMjk1L1JURDEyOTYgU29DCj4gICAq
Cj4gLSAqIENvcHlyaWdodCAoYykgMjAxNi0yMDE3IEFuZHJlYXMgRsOkcmJlcgo+ICsgKiBDb3B5
cmlnaHQgKGMpIDIwMTYtMjAxOSBBbmRyZWFzIEbDpHJiZXIKPiAgICovCj4gIAo+ICAvbWVtcmVz
ZXJ2ZS8JMHgwMDAwMDAwMDAwMDAwMDAwIDB4MDAwMDAwMDAwMDAzMDAwMDsKPiAtL21lbXJlc2Vy
dmUvCTB4MDAwMDAwMDAwMDAxZjAwMCAweDAwMDAwMDAwMDAwMDEwMDA7Cj4gIC9tZW1yZXNlcnZl
LwkweDAwMDAwMDAwMDAwMzAwMDAgMHgwMDAwMDAwMDAwMGQwMDAwOwo+ICAvbWVtcmVzZXJ2ZS8J
MHgwMDAwMDAwMDAxYjAwMDAwIDB4MDAwMDAwMDAwMDRiZTAwMDsKPiAtL21lbXJlc2VydmUvCTB4
MDAwMDAwMDAwMWZmZTAwMCAweDAwMDAwMDAwMDAwMDQwMDA7Cj4gIAo+ICAjaW5jbHVkZSA8ZHQt
YmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+ICAjaW5jbHVkZSA8ZHQt
YmluZGluZ3MvcmVzZXQvcmVhbHRlayxydGQxMjk1Lmg+Cj4gQEAgLTE5LDYgKzE3LDI1IEBACj4g
IAkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiAgCSNzaXplLWNlbGxzID0gPDE+Owo+ICAKPiArCXJl
c2VydmVkLW1lbW9yeSB7Cj4gKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKwkJI3NpemUtY2Vs
bHMgPSA8MT47Cj4gKwkJcmFuZ2VzOwo+ICsKPiArCQlycGNfY29tbTogcnBjQDFmMDAwIHsKPiAr
CQkJcmVnID0gPDB4MWYwMDAgMHgxMDAwPjsKPiArCQl9Owo+ICsKPiArCQlycGNfcmluZ2J1Zjog
cnBjQDFmZmUwMDAgewo+ICsJCQlyZWcgPSA8MHgxZmZlMDAwIDB4NDAwMD47Cj4gKwkJfTsKCkhh
dmUgeW91IHJldmlld2VkIHRoaXMgcGF0Y2ggdG8gYmUgY29ycmVjdD8gSS5lLiwgYXJlIHRoZSBh
Ym92ZSB0d28KcmVnaW9ucyByZXNlcnZlZCBSQU0gKGFzc3VtcHRpb24gYWJvdmUpLCBvciBpcyB0
aGlzIHJhdGhlciBNTUlPCnNoYWRvd2luZyBSQU0/ICh0aGVuIHdlIHdvdWxkIG5lZWQgdG8gdXBk
YXRlIHRoZSAvbWVtb3J5IHJlZyBhbmQgL3NvYwpyYW5nZXMgcHJvcGVydGllcykKClRoYXQgYWxz
byBhZmZlY3RzIFJURDE2MTksIHdoaWNoIGN1cnJlbnRseSBoYXMgbmVpdGhlci4KClRoYW5rcywK
QW5kcmVhcwoKPiArCj4gKwkJdGVlOiB0ZWVAMTAxMDAwMDAgewo+ICsJCQlyZWcgPSA8MHgxMDEw
MDAwMCAweGYwMDAwMD47Cj4gKwkJCW5vLW1hcDsKPiArCQl9Owo+ICsJfTsKPiArCj4gIAlhcm1f
cG11OiBhcm0tcG11IHsKPiAgCQljb21wYXRpYmxlID0gImFybSxjb3J0ZXgtYTUzLXBtdSI7Cj4g
IAkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQ4IElSUV9UWVBFX0xFVkVMX0hJR0g+OwoKLS0gClNV
U0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBO
w7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7D
vHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
