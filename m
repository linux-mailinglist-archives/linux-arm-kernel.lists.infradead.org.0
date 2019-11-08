Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B679F4231
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6DeVN5vUrGBe5befzsQMgbj1Y3vgivSRLHp/4FDHkk=; b=tdKXTwC/OULgWI
	70mfJYDoIfDtczsn70Sm5W7LhZK+2/Q6Sy5UxWcffTGWWYQTrCgpEr2EfEWf/0gsAhoeUjxn8Kfbl
	/XcsB/HvHzWIXzaGLA7H+3uAMDtMOzMkjxOQeuCjMdYN/pX4SqikUFUIzD7ac3E9nWUJeyTGPpeA4
	8WUGRNG03pjlq06YkZdR34I5NdK4gKWS2ZEVTGHEejrvaewo6KHb0vZwJLoPad3eeYuRdBNUXcD7Q
	foubhEZnqR0rDPNuToeJNaA78p7tt8bPgearjtBoYiQjgfTQA/jh1ZGbKfLmXi/yzr9anPeo3irMT
	3U2bCV2E8DWL4ca3T5Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzjC-0007wG-NV; Fri, 08 Nov 2019 08:34:46 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzj4-0007vg-4t
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 08:34:39 +0000
Received: by mail-wm1-x342.google.com with SMTP id z26so5229670wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 00:34:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VkI4cvX4wkJb9cEinKhbBlP59eTt5rxMwM6muY3FHmk=;
 b=XYDgk1cdeJqtjFrCaSfVAgN96MN8Wbcax5Ms1Zmp3POWOH5hCw5s3PzxCbXFlQXi5g
 VIj6YS+7ahGPRoYeYJVzmrrso7zR6fsGoivRWpxRazhvttcgSYZ2KPKyRZ03wLOgc7Ro
 MCZ0+7QWURO9Q3NUIAhWIKVnhdctT9HQOJSZ6g2uS7WixsIYGNUGlxij3St1kqcdyOqW
 o32ylKXs7abPggaMHFdEltPD1VLuEoEQ8dtKc9OiZms/xdTvYqJjlFHkRlhlF9qr1fYz
 vJT6Fj+DkECLmOqOggYzC1J4wxAp/KKUDCF+7DqOFlWmolcSNaY79j6r4WLCrHLr2L7u
 l2rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VkI4cvX4wkJb9cEinKhbBlP59eTt5rxMwM6muY3FHmk=;
 b=glBuoBDpQ5vuDDvBxLo21gDiU4z7YL4PI0c7yAINjGTShJhZC8j56/HtbxgayIcZ87
 QFej0YsZYhJjNt/9COR58Cm4i/Gjs8dhISjPOib6ZB/FZuTbEnVqM8bLWio5b2VhQr3G
 XGnsgKVebdjatASWQZzl8WHRch05j8kVknw65ewO+K663JwB6reiHAx96z+n8ePdewdV
 6VZhLsRqtvau7TKgjLCixGtCtGDJK2Oc+oQfhkPjSn92qGVVa6IUhECl3zDGFxN0k5J6
 fU5pLrTJD0935IDXoaV9jGGAiL2kUY4c3kFO1L8NLSMSW/iVXVasJFRlYQUhvhJtJYYJ
 QBvQ==
X-Gm-Message-State: APjAAAX307QeYuKTHsdMsq3fGpQSJer6nFGMUOE/qLvdh3ZjiNQGa9u5
 OyA3N0Uyyfgex+8sTA6qF2xIyEqoO2yzT45Wcjs=
X-Google-Smtp-Source: APXvYqwO5LNjRjZqBsLm0rx2ZVFBShCv1CuuOkko/vXZhWR0gKobSrxO8D2AYRmTGsvhPEQK7KDzYl1RD1/Hmamx/oc=
X-Received: by 2002:a1c:a512:: with SMTP id o18mr6701777wme.4.1573202075843;
 Fri, 08 Nov 2019 00:34:35 -0800 (PST)
MIME-Version: 1.0
References: <20191105131456.32400-1-peron.clem@gmail.com>
 <20191105131456.32400-5-peron.clem@gmail.com>
 <20191105145659.ffezqntodsys4phn@pengutronix.de>
 <CAJiuCcdXr3y0oe19ZNaiQoN7Y39p54p8LjQjXfjHbTH8tbnrpw@mail.gmail.com>
 <20191107065118.j4s5cghj4ark7sql@pengutronix.de>
In-Reply-To: <20191107065118.j4s5cghj4ark7sql@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Fri, 8 Nov 2019 09:34:24 +0100
Message-ID: <CAJiuCcd3qAP=xODJWcvay6q-MbLeBvX5tAtuUj7dFcp8biXzOw@mail.gmail.com>
Subject: Re: [PATCH v3 4/7] pwm: sun4i: Add support to output source clock
 directly
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_003438_211805_18E99CBA 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gVGh1LCA3IE5vdiAyMDE5IGF0IDA3OjUxLCBVd2UgS2xlaW5lLUvDtm5pZwo8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IEhlbGxvIENsw6ltZW50
LAo+Cj4gT24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMTA6MjQ6MzlQTSArMDEwMCwgQ2zDqW1lbnQg
UMOpcm9uIHdyb3RlOgo+ID4gT24gVHVlLCA1IE5vdiAyMDE5IGF0IDE1OjU3LCBVd2UgS2xlaW5l
LUvDtm5pZwo+ID4gPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPiA+
IE9uIFR1ZSwgTm92IDA1LCAyMDE5IGF0IDAyOjE0OjUzUE0gKzAxMDAsIENsw6ltZW50IFDDqXJv
biB3cm90ZToKPiA+ID4gPiArICAgICBieXBhc3MgPSBzdGF0ZS0+ZW5hYmxlZCAmJgo+ID4gPiA+
ICsgICAgICAgICAgICAgIChzdGF0ZS0+cGVyaW9kICogY2xrX3JhdGUgPj0gTlNFQ19QRVJfU0VD
KSAmJgo+ID4gPgo+ID4gPiBUaGlzIGlzIHRvbyBjb2Fyc2UuIFdpdGggc3RhdGUtPnBlcmlvZCA9
IDEwMDAwMDAgdGhpcyBpcyBmdWxmaWxsZWQKPiA+ID4gKHVubGVzcyB0aGUgbXVsdGlwbGljYXRp
b24gb3ZlcmZsb3dzKS4KPiA+Cj4gPiBTb3JyeSwgbWlzdW5kZXJzdG9vZCB0aGUgcHJldmlvdXMg
bWFpbAo+ID4KPiA+IFdoYXQgYWJvdXQgc29tZXRoaW5nIGxpa2UgdGhpcyA/Cj4gPiAoKHN0YXRl
LT5wZXJpb2QgLSAxKSAqIGNsa19yYXRlIDw9IE5TRUNfUEVSX1NFQykgJiYKPiA+ICgoc3RhdGUt
PnBlcmlvZCArIDEpICogY2xrX3JhdGUgPj0gTlNFQ19QRVJfU0VDKSAmJgo+ID4gICgoc3RhdGUt
PmR1dHlfY3ljbGUgLSAxKSAqIDIgPD0gc3RhdGUtPnBlcmlvZCkgJiYKPiA+ICAoKHN0YXRlLT5k
dXR5X2N5Y2xlICsgMSkgKiAyID49IHN0YXRlLT5wZXJpb2QpOwo+ID4KPiA+IFdlIGFyZSBzdXJl
IHRoYXQgdGhlIHVzZXIgaXMgbG9va2luZyBmb3IgYSBQV00gYXJvdW5kIHRoZSBPU0Mgd2l0aCBh
Cj4gPiA1MCUgZHV0eSBjeWNsZSA/Cj4KPiBUaGlzIGFnYWluIGlzIHRvbyBzdHJpY3QuIFRoZSBn
ZW5lcmFsIHBvbGljeSB0byBmdWxmaWxsIGEgcmVxdWVzdCBpczoKPgo+ICAxKSBwcm92aWRlIHRo
ZSBsb25nZXN0IHBvc3NpYmxlIHBlcmlvZCBub3QgYmlnZ2VyIHRoYW4gcmVxdWVzdGVkCj4gIDIp
IHByb3ZpZGUgdGhlIGxvbmdlc3QgcG9zc2libGUgZHV0eSBjeWNsZSBub3QgYmlnZ2VyIHRoYW4g
cmVxdWVzdGVkCj4gIDMpIGlmIHBvc3NpYmxlIGNvbXBsZXRlIHRoZSBjdXJyZW50bHkgcnVubmlu
ZyBwZXJpb2QgYmVmb3JlIHN3aXRjaGluZwo+ICAgICBhbmQgZG9uJ3QgcmV0dXJuIHRvIHRoZSB1
c2VyIGJlZm9yZSB0aGUgbmV3IHNldHRpbmcgaXMgYWN0aXZlLgo+ICAgICBEb2N1bWVudCB0aGUg
YmVoYXZpb3VyIHByb21pbmVudGx5IGJlY2F1c2UgdGhlIGNvZGUgKHVzdWFsbHkpCj4gICAgIGRv
ZXNuJ3QgYWxsb3cgdG8gdW5kZXJzdGFuZCB0aGUgaGFyZHdhcmUncyBmZWF0dXJlcyBoZXJlLgo+
ICA0KSBBIGRpc2FibGVkIFBXTSBzaG91bGQgb3V0cHV0IHRoZSBpbmFjdGl2ZSBsZXZlbAoKVGhh
bmtzIGZvciB0aGUgZXhwbGFuYXRpb24KCj4KPiBBbmQgdGhlbiB0aGVyZSBpcyBhIGNvcm5lciBj
YXNlOiBJZiB0aGUgdXNlciByZXF1ZXN0cyAuZHV0eV9jeWNsZSA9IDAsCj4gLmVuYWJsZWQgPSAx
IGl0IGlzIG9rIHRvIHByb3ZpZGUgLmVuYWJsZWQgPSAwIGlmZiBvdGhlcndpc2UgMCUgaXNuJ3QK
PiBwb3NzaWJsZS4KPgo+IFNvIHRoZSByaWdodCBjaGVjayBmb3IgYnlwYXNzIGlzOgo+Cj4gICBz
dGF0ZS0+cGVyaW9kICogY2xrX3JhdGUgPj0gTlNFQ19QRVJfU0VDICYmCj4gICBzdGF0ZS0+cGVy
aW9kICogY2xrX3JhdGUgPCB3aGF0ZXZlcmNhbmJlcmVhY2hlZHdpdGhvdXRieXBhc3MgJiYKPiAg
IHN0YXRlLT5kdXR5X2N5Y2xlICogY2xrX3JhdGUgKiAyID49IE5TRUNfUEVSX1NFQwoKVGhlIHNo
b3J0ZXN0IFBXTSByYXRpbyB3aGljaCBpcyBub3QgYSBjb25zdGFudCBvdXRwdXQgaXMgMTJNSHou
CihQcmVzY2FsIDEsIDIgZW50aXJlIGN5Y2xlIGFuZCAxIGFjdGl2ZSBjeWNsZSkKClNvIHNvbWV0
aGluZyBsaWtlIHRoaXMgOgpzdGF0ZS0+cGVyaW9kICogY2xrX3JhdGUgPj0gTlNFQ19QRVJfU0VD
ICYmCnN0YXRlLT5wZXJpb2QgKiBjbGtfcmF0ZSA8IDIgKiBOU0VDX1BFUl9TRUMgJiYKc3RhdGUt
PmR1dHlfY3ljbGUgKiBjbGtfcmF0ZSAqIDIgPj0gTlNFQ19QRVJfU0VDCgpJIHdpbGwgc2VuZCBh
IHY0LApUaGFua3MgZm9yIHRoZSBoZWxwClJlZ2FyZHMsCkNsw6ltZW50Cgo+Cj4gQmVzdCByZWdh
cmRzCj4gVXdlCj4KPiAtLQo+IFBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAg
ICAgICB8IFV3ZSBLbGVpbmUtS8O2bmlnICAgICAgICAgICAgfAo+IEluZHVzdHJpYWwgTGludXgg
U29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
