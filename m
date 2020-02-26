Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 299F516F617
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 04:30:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h07DY1FOqPu/z1i5dmARsGidsBOfqAxBppYfZ5mMLJU=; b=B/abDRxZjjcWhS
	K+JFu2fglMIxfqzahVMCjHd87qs6zy8itIB2BNNpDUeEieSbWvxwVjeY8XIuwgtoS7v2OwzXlyN2V
	l+uB1wMEdymfNB8J3EUA6b0NO+Ya+oInIkGgz16/n1LEMIneeVdyKb9oTTOwHqMQfpjyCRiuXACDL
	cK7NlUPdGFOmmIopnB9hOSZbC+cl81rVBMhb4i8Gy1xuTDI7xmXVviQc8sNFZ85ibV6fN8fS2PiJz
	JAGy5P9U3wfD4Br9XeXTsKX9t5NQ/0kz/0TXprbRGY0GD5EJyduIcnPtHV33E6OfrI5K7eNjve0vI
	7Tf/0jKTJ2GSuDQ+XMVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6nOp-00032e-Mc; Wed, 26 Feb 2020 03:30:15 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6nOd-0002FJ-PP
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 03:30:05 +0000
Received: by mail-ed1-f68.google.com with SMTP id dc19so1941838edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 19:30:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UXofy6EkwfdL30O9+SzmICCU7Qa0hak4F21CzXTG5yo=;
 b=i2O+2cfsy70O3mP6Xkh7xMOk/RuqYNu8USs2sAdTIx2inT85e1zf2AblSV20Sp9bE2
 1kxrJ2XnlOE+XR5T4zI9hBkWCLSpAk1Am0w0P7RK/wFTJUrWfULiAlh22gYuK8Jc0fI3
 BEQ132c9FhcNihEu1dP4vidHTCnQX397yOF2Gjn31N/nK91TmkpnHTQSn65lEDrmjjdV
 367T1OuNGlWD+koeZRo4yYAcaVpu9o/4MkIEWaMxcSMTGkM0j5OtCY7QIbnvCJXfrWJg
 qfSgS0Ex3TnoDw59FHt5Q73tXRCFfFjrPFMoyGC5GBUkY4JLpq4ftwpI/bZxuNHAVrEQ
 +0mw==
X-Gm-Message-State: APjAAAWS2bfWWauHzHahJ0enn7o4DbWVChR6Tr4wwcHxBMl+POwxZEsi
 6UMHGEkskyT1uLF/+JC0UJ8qfgt3ZBs=
X-Google-Smtp-Source: APXvYqyWv4fYACdYBACtIfJnYVmcILAxQFQF6QZbTGoZtL1NU0TYAT9XoUTyaxjuqo1Xvgh2WROr9Q==
X-Received: by 2002:a50:f70d:: with SMTP id g13mr2217595edn.80.1582687801309; 
 Tue, 25 Feb 2020 19:30:01 -0800 (PST)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com.
 [209.85.128.50])
 by smtp.gmail.com with ESMTPSA id r7sm26632eds.32.2020.02.25.19.30.00
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Feb 2020 19:30:01 -0800 (PST)
Received: by mail-wm1-f50.google.com with SMTP id m3so1439133wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 19:30:00 -0800 (PST)
X-Received: by 2002:a05:600c:10d2:: with SMTP id
 l18mr2582096wmd.122.1582687800441; 
 Tue, 25 Feb 2020 19:30:00 -0800 (PST)
MIME-Version: 1.0
References: <20200224173901.174016-1-jernej.skrabec@siol.net>
 <20200225083448.6upblnctjjrbarje@gilmour.lan>
 <CAGb2v64g7Q4e+ic08pA7tbamgToOjyYzuzqP0bpqBZjRuRUrPA@mail.gmail.com>
 <12462592.uLZWGnKmhe@jernej-laptop>
In-Reply-To: <12462592.uLZWGnKmhe@jernej-laptop>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 26 Feb 2020 11:29:48 +0800
X-Gmail-Original-Message-ID: <CAGb2v65=a3p1xrz3RuT7w9p+KqRbYMVqf7_GajEQHOpQnTAqnA@mail.gmail.com>
Message-ID: <CAGb2v65=a3p1xrz3RuT7w9p+KqRbYMVqf7_GajEQHOpQnTAqnA@mail.gmail.com>
Subject: Re: [PATCH 6/7] drm/sun4i: de2: Don't return de2_fmt_info struct
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_193003_829472_33F618C4 
X-CRM114-Status: GOOD (  29.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Maxime Ripard <maxime@cerno.tech>,
 Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBGZWIgMjYsIDIwMjAgYXQgMjo1MCBBTSBKZXJuZWogxaBrcmFiZWMgPGplcm5lai5z
a3JhYmVjQHNpb2wubmV0PiB3cm90ZToKPgo+IEhpIQo+Cj4gRG5lIHRvcmVrLCAyNS4gZmVicnVh
ciAyMDIwIG9iIDA5OjUyOjE4IENFVCBqZSBDaGVuLVl1IFRzYWkgbmFwaXNhbChhKToKPiA+IE9u
IFR1ZSwgRmViIDI1LCAyMDIwIGF0IDQ6MzUgUE0gTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5v
LnRlY2g+IHdyb3RlOgo+ID4gPiBIaSwKPiA+ID4KPiA+ID4gT24gTW9uLCBGZWIgMjQsIDIwMjAg
YXQgMDY6Mzk6MDBQTSArMDEwMCwgSmVybmVqIFNrcmFiZWMgd3JvdGU6Cj4gPiA+ID4gTm93IHRo
YXQgZGUyX2ZtdF9pbmZvIGNvbnRhaW5zIG9ubHkgRFJNIDwtPiBIVyBmb3JtYXQgbWFwcGluZywg
aXQKPiA+ID4gPiBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gcmV0dXJuIHBvaW50ZXIgdG8gc3RydWN0
dXJlIHdoZW4gc2VhcmNoaW5nIGJ5IERSTQo+ID4gPiA+IGZvcm1hdC4gUmV3b3JrIHRoYXQgdG8g
cmV0dXJuIG9ubHkgSFcgZm9ybWF0IGluc3RlYWQuCj4gPiA+ID4KPiA+ID4gPiBUaGlzIGRvZXNu
J3QgbWFrZSBhbnkgZnVuY3Rpb25hbCBjaGFuZ2UuCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPiA+ID4gLS0t
Cj4gPiA+ID4KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX21peGVyLmMgICAg
fCAxNSArKysrKysrKysrKy0tLS0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhp
X21peGVyLmggICAgfCAgNyArLS0tLS0tCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9zdW40aS9z
dW44aV91aV9sYXllci5jIHwgMTAgKysrKystLS0tLQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
c3VuNGkvc3VuOGlfdmlfbGF5ZXIuYyB8IDEyICsrKysrKy0tLS0tLQo+ID4gPiA+ICA0IGZpbGVz
IGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQo+ID4gPiA+Cj4gPiA+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW44aV9taXhlci5jCj4gPiA+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfbWl4ZXIuYyBpbmRleCBlMDc4ZWM5NmRl
MmQuLjU2Y2MwMzdmZDMxMgo+ID4gPiA+IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9zdW40aS9zdW44aV9taXhlci5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3N1
bjRpL3N1bjhpX21peGVyLmMKPiA+ID4gPiBAQCAtMjcsNiArMjcsMTEgQEAKPiA+ID4gPgo+ID4g
PiA+ICAjaW5jbHVkZSAic3VuOGlfdmlfbGF5ZXIuaCIKPiA+ID4gPiAgI2luY2x1ZGUgInN1bnhp
X2VuZ2luZS5oIgo+ID4gPiA+Cj4gPiA+ID4gK3N0cnVjdCBkZTJfZm10X2luZm8gewo+ID4gPiA+
ICsgICAgIHUzMiAgICAgZHJtX2ZtdDsKPiA+ID4gPiArICAgICB1MzIgICAgIGRlMl9mbXQ7Cj4g
PiA+ID4gK307Cj4gPiA+ID4gKwo+ID4gPiA+Cj4gPiA+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
ZGUyX2ZtdF9pbmZvIGRlMl9mb3JtYXRzW10gPSB7Cj4gPiA+ID4KPiA+ID4gPiAgICAgICB7Cj4g
PiA+ID4KPiA+ID4gPiAgICAgICAgICAgICAgIC5kcm1fZm10ID0gRFJNX0ZPUk1BVF9BUkdCODg4
OCwKPiA+ID4gPgo+ID4gPiA+IEBAIC0yMzAsMTUgKzIzNSwxNyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRlMl9mbXRfaW5mbyBkZTJfZm9ybWF0c1tdID0gewo+ID4gPiA+Cj4gPiA+ID4gICAgICAg
fSwKPiA+ID4gPgo+ID4gPiA+ICB9Owo+ID4gPiA+Cj4gPiA+ID4gLWNvbnN0IHN0cnVjdCBkZTJf
Zm10X2luZm8gKnN1bjhpX21peGVyX2Zvcm1hdF9pbmZvKHUzMiBmb3JtYXQpCj4gPiA+ID4gK2lu
dCBzdW44aV9taXhlcl9kcm1fZm9ybWF0X3RvX2h3KHUzMiBmb3JtYXQsIHUzMiAqaHdfZm9ybWF0
KQo+ID4gPiA+Cj4gPiA+ID4gIHsKPiA+ID4gPgo+ID4gPiA+ICAgICAgIHVuc2lnbmVkIGludCBp
Owo+ID4gPiA+Cj4gPiA+ID4gICAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoZGUyX2Zv
cm1hdHMpOyArK2kpCj4gPiA+ID4KPiA+ID4gPiAtICAgICAgICAgICAgIGlmIChkZTJfZm9ybWF0
c1tpXS5kcm1fZm10ID09IGZvcm1hdCkKPiA+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgcmV0
dXJuICZkZTJfZm9ybWF0c1tpXTsKPiA+ID4gPiArICAgICAgICAgICAgIGlmIChkZTJfZm9ybWF0
c1tpXS5kcm1fZm10ID09IGZvcm1hdCkgewo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAq
aHdfZm9ybWF0ID0gZGUyX2Zvcm1hdHNbaV0uZGUyX2ZtdDsKPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgcmV0dXJuIDA7Cj4gPiA+ID4gKyAgICAgICAgICAgICB9Cj4gPiA+ID4KPiA+ID4g
PiAtICAgICByZXR1cm4gTlVMTDsKPiA+ID4gPiArICAgICByZXR1cm4gLUVJTlZBTDsKPiA+ID4g
Pgo+ID4gPiA+ICB9Cj4gPiA+Cj4gPiA+IEknbSBub3QgdG9vIHN1cmUgYWJvdXQgdGhhdCBvbmUu
IEl0IGJyZWFrcyB0aGUgY29uc2lzdGVuY3kgd2l0aCB0aGUKPiA+ID4gb3RoZXIgZnVuY3Rpb25z
LCBhbmQgSSBkb24ndCByZWFsbHkgc2VlIGEgcGFydGljdWxhciBiZW5lZml0IHRvIGl0Pwo+ID4K
Pgo+IEkgZG9uJ3QgaGF2ZSBzdHJvbmcgb3BpbmlvbiBhYm91dCB0aGlzIHBhdGNoLiBJdCBjYW4g
YmUgZHJvcHBlZC4KPgo+ID4gSSBndWVzcyB3ZSBjb3VsZCBqdXN0IGRlZmluZSBhbiAiaW52YWxp
ZCIgdmFsdWUsIGFuZCBoYXZlIHRoZSBmdW5jdGlvbgo+ID4gcmV0dXJuIHRoYXQgaWYgY2FuJ3Qg
ZmluZCBhIG1hdGNoPyBJJ20gZ3Vlc3NpbmcgMHgwIGlzIHZhbGlkLCBzbyBtYXliZQo+ID4gMHhm
ZmZmZmZmZiBvciAweGRlYWRiZWVmID8KPiA+Cj4gPiBUaGF0IHdvdWxkIGtlZXAgY29uc2lzdGVu
Y3kgd2l0aCBldmVyeXRoaW5nIGVsc2UgYWxsIHRoZSB3aGlsZQo+ID4gcmVtb3ZpbmcgdGhlIGxl
dmVsIG9mIGluZGlyZWN0aW9uIHlvdSB3YW50ZWQgdG8uCj4KPiBJIG1vZGVsZWQgdGhpcyBhZnRl
cgo+IHN0YXRpYyBpbnQgc3VuNGlfYmFja2VuZF9kcm1fZm9ybWF0X3RvX2xheWVyKHUzMiBmb3Jt
YXQsIHUzMiAqbW9kZSk7Cj4gZnJvbSBzdW40aV9iYWNrZW5kLmMuCj4KPiBXaGF0IGNvbnNpc3Rl
bmN5IGRvIHlvdSBoYXZlIGluIG1pbmQ/CgpEaXJlY3RseSByZXR1cm5pbmcgdmFsdWVzIChvciBl
cnJvciBjb2RlcykgaW5zdGVhZCBvZiBwYXNzaW5nIGluIGEgcG9pbnRlcgpmb3IgZGF0YSB0byBi
ZSByZXR1cm5lZC4gSSBhc3N1bWVkIHRoYXQgd2FzIHdoYXQgTWF4aW1lIHdhcyByZWZlcnJpbmcg
dG8uCgpDaGVuWXUKCj4gPgo+ID4gQ2hlbll1Cj4gPgo+ID4gPiBUaGUgcmVzdCBvZiB0aGUgc2Vy
aWVzIGlzCj4gPiA+IEFja2VkLWJ5OiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+
Cj4KPiBUaGFua3MhCj4KPiBCZXN0IHJlZ2FyZHMsCj4gSmVybmVqCj4KPiA+ID4KPiA+ID4gTWF4
aW1lCj4KPgo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
