Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DAFE7E2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 02:46:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4DNyQMG8LjcX2tsKRMPzcpGzui783q4jMSGTZMt2tw=; b=pXenxbP9f8aKDH
	sRo2GBpXqlFaLo0oQV5h/M9qlk9z54mNlVR7dOa9AyS699GAfK9XeMe4+GxB3Com0kHKk21wxsBoG
	7DJbpByo58foObfXNUUr67guQS+qP3z0Fod55AtLIGCrXx8kI3/H7i15ooXvy/OnOM2XFt94jgIW1
	iuhmp7tdCH6x1Q7/HElSZjNGD5s9u/g7OozQEOu78dcMYLJtmU2aaZ4GBq6CjK16hPDT3gEUz7s9Z
	iVHg+y9VwADxDEy2ee+88lGCik8AvSWipFkupsnpXykDaej5kg11DjxIvFy8NVRkRoGhG4TYl8A/Q
	9twnI5lww50JjS9QBNOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPGaP-0000GT-SP; Tue, 29 Oct 2019 01:46:17 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPGa9-0000FY-M8
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 01:46:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572313559; bh=bhzP3bhLk0Yol8s//otk/IDBmGkxLhl6fpdcUqfP75w=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=JpS+61pbJDVyKblhRaIm8JKjWkdojeV3KkxIdJT7+eXBFH95J36s8aeAEdwN/SCmT
 mbtRRj0QAxxeQABDjCt+q665021+BQa2joEzZStqmCaz6bSZi7FpMfanHh5s2LbpoA
 qHs9wXu4OYQVXaCynhiU9hEUyQ7giGGeUGr+Ho/I=
Date: Tue, 29 Oct 2019 02:45:59 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH] input: sun4i-lradc-keys: Add wakup
 support
Message-ID: <20191029014559.gif3ay7anq24un2i@core.my.home>
Mail-Followup-To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-sunxi@googlegroups.com, Hans de Goede <hdegoede@redhat.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20191028221502.3503543-1-megous@megous.com>
 <20191028233828.GA57214@dtor-ws>
 <20191028235626.5afvszxtppsieywi@core.my.home>
 <20191029001250.GB57214@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029001250.GB57214@dtor-ws>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_184602_044394_B052D344 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 linux-sunxi@googlegroups.com,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMDU6MTI6NTBQTSAtMDcwMCwgRG1pdHJ5IFRvcm9raG92
IHdyb3RlOgo+IE9uIFR1ZSwgT2N0IDI5LCAyMDE5IGF0IDEyOjU2OjI2QU0gKzAxMDAsIE9uZMWZ
ZWogSmlybWFuIHdyb3RlOgo+ID4gT24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMDQ6Mzg6MjhQTSAt
MDcwMCwgRG1pdHJ5IFRvcm9raG92IHdyb3RlOgo+ID4gPiA+ICsKPiA+ID4gPiArCWVycm9yID0g
ZGV2X3BtX3NldF93YWtlX2lycShkZXYsIGlycSk7Cj4gPiA+ID4gKwlpZiAoZXJyb3IpIHsKPiA+
ID4gPiArCQlkZXZfZXJyKGRldiwgIkNvdWxkIG5vdCBzZXQgd2FrZSBJUlFcbiIpOwo+ID4gPiA+
ICsJCXJldHVybiBlcnJvcjsKPiA+ID4gPiArCX0KPiA+ID4gPiArCj4gPiA+IAo+ID4gPiBJIHdv
bmRlciBpZiB3ZSBjb3VsZCB0ZWFjaCBwbGF0Zm9ybSBkcml2ZXIgY29yZSB0byBoYW5kbGUgdGhp
cyBmb3IgdXMuCj4gPiAKPiA+IE5vdCBzdXJlLCBzb21lIGRyaXZlcnMgZG8gZW5hYmxlL2Rpc2Fi
bGUgd2FrZV9pcnEgYnkgaGFuZCBpbiBzdXNwZW5kL3Jlc3VtZQo+ID4gY2FsbGJhY2tzLCBzbyBp
dCB3b3VsZCBwcm9iYWJseSBuZWVkIHRvIGJlIG9wdC1pbiBzb21laG93LiBJIGd1ZXNzIGNhbGxp
bmcgdGhlCj4gPiBmdW5jdGlvbiBsaWtlIHRoaXMgaXMgb25lIHdheSB0byBtYWtlIGl0IG9wdC1p
bi4KPiA+IAo+ID4gVGhlIG90aGVyIHdheSBtYXkgYmUgYnkgcGFzc2luZyBhIGZsYWcgc29tZXdo
ZXJlLCBsaWtlIHRvCj4gPiByZXF1ZXN0X3RocmVhZGVkX2lycS4gRGlkIHlvdSBoYXZlIHNvbWV0
aGluZyBtb3JlIGNvbmNyZXRlIGluIG1pbmQ/Cj4gCj4gSSB0aGluayBpdCBpcyBwZXJmZWN0bHkg
ZmluZSB0byBjb250aW51ZSB1c2luZyBlbmFibGVfaXJxX3dha2UgYW5kCj4gZGlzYWJsZV9pcnFf
d2FrZSBmcm9tIHRoZSBkcml2ZXIgd2hpbGUgbWFya2luZyBpcnEgYXMgYmVpbmcgd2FrZSBpcnEK
PiBmb3JtIHRoZSBjb3JlLgoKSSBzZWUsIGl0IGxvb2tzIGxpa2UgaXJxX3NldF9pcnFfd2FrZSB3
aWxsIHRyYWNrIHRoZSBjYWxscyB2aWEgd2FrZV9kZXB0aAoKaHR0cHM6Ly9lbGl4aXIuYm9vdGxp
bi5jb20vbGludXgvbGF0ZXN0L3NvdXJjZS9rZXJuZWwvaXJxL21hbmFnZS5jI0w3MTQKCkJ1dCBh
bGwgaXJxcyBhcmUgbm90IG5lY2Vzc2FyaWx5IHdha2UgaXJxcywgbm8/IFNvIGl0IHN0aWxsIG1h
eSBuZWVkIHRvIGJlCm9wdC1pbiBzb21laG93LgoKQW55d2F5LCBJJ20gbm8gUE0gZXhwZXJ0LiBJ
IHN0YXJ0ZWQgbG9va2luZyBhdCBQTSBjb2RlIGFib3V0IHR3byB3ZWVrcyBhZ28sIGFuZApJIHJl
YWxseSBkb24ndCBmZWVsIGxpa2UgSSBjYW4gY29udHJpYnV0ZSBtdWNoIHRvIHRoZXNlIGtpbmRz
IG9mIGRlY2lzaW9ucyB3aXRoCm15IGN1cnJlbnQgbGV2ZWwgb2YgdW5kZXJzdGFuZGluZywgcmln
aHQgbm93LgoKcmVnYXJkcywKCW8uCgo+IFRoYW5rcy4KPiAKPiAtLSAKPiBEbWl0cnkKPiAKPiAt
LSAKPiBZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVk
IHRvIHRoZSBHb29nbGUgR3JvdXBzICJsaW51eC1zdW54aSIgZ3JvdXAuCj4gVG8gdW5zdWJzY3Jp
YmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2Vu
ZCBhbiBlbWFpbCB0byBsaW51eC1zdW54aSt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgo+
IFRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIsIHZpc2l0IGh0dHBzOi8vZ3JvdXBz
Lmdvb2dsZS5jb20vZC9tc2dpZC9saW51eC1zdW54aS8yMDE5MTAyOTAwMTI1MC5HQjU3MjE0JTQw
ZHRvci13cy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
