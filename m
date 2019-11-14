Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C93FD11C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 23:47:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCuHcBP0LXmalsde3XNk4JuS9KWNCcvhACwMIgZozyI=; b=A1KXZ2HrK0HgMa
	i1jKtWlBxUy8LaliUmXKVTJ4AQFKKOGjKu2jG+A2VHGGf0iJgTmK2u+V/2Fm+8kpbty7lJpd6BTFN
	7wBktJXGhu5oGhr1rTP6+lqrHp/KgurpAkM/vWLQ/RKZxaiKMRquJyeTs4VN2FgJE5hdfknJSgCX+
	dV9wvUCSVXN2m6SZlLnb8QwuR67r6tB2npy3WWnfUQ2zOzqQFDSttabso34+mQhITr8GW2mgipLO7
	JXxDuGdTxoQXcez2XrnXVFtqApp2j2E0hPBX32HVoKX/PWv97BlCmuWXpsrBnpDvDYrgEME8pOv1S
	PTeOE17kIUCrQ7HJAf9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVNtb-0005vd-Si; Thu, 14 Nov 2019 22:47:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVNtS-0005v6-IH
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 22:47:16 +0000
Received: by mail-wr1-x443.google.com with SMTP id n1so8704343wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 14:47:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JGRlcMeoKAOOhjcDJOF5DFr5u4BH2xeU+rJMkirYWaY=;
 b=eoX51meUHmLR8wQIfteVxzkvSZri+BeLozXZmXDuNhJcArpEX+XUjnEc506JaWySMF
 fvfTvmAQPASJqGPozMCGBtFSbhzGbCjWqUf5lEc9CFOS/S4CNSyVFPebOVza2DnCJ+Jc
 nivEEojQyUnOkHQV/qTkqlr31rG86Qver7ATIhE1o3SVN3YaFUUke59puk/mNRsDvi1L
 743tCms9wMdlL3+oXMxB3JymLJbpIGtsel0gDu0efrr/npXxjoPi4ScrRX4FX5XlEALV
 r++Sfbs/rw2znawKFhrfSeNb0rfkBzWPA0NPnExU6BhIcHPccLYQvxNPoJFG4pOj0Vd8
 OUJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JGRlcMeoKAOOhjcDJOF5DFr5u4BH2xeU+rJMkirYWaY=;
 b=k9ThhPQAXbDyYdAIjae8fdPz8ZHXco9K34P3eOT2+F2CgCFDcKOQNMbGSmdt/ZFIUk
 auSYNdT2eTMebVWTjrDgnfPWfSHdq+YN0mVj5aOGp/eXktlDob8HLmdxGQAg5CEajXF5
 coQgoTezpKJLZ4Lawzp7wT0J5Zt9ZItpO9621xGE7ZrbrO9UGNkn6dVxk2/wWmjDOCDZ
 oj7DvvcrWsKnVL38Xsts6swg/lVr0QhPUpGH+F6jDArkrXrWnRWEUksoHCuoWqfPsWPU
 B612uvsFEohlCr4PvF/LMG3bJz2/MykGt3+vInsVEWa+Z0byBwK0YXYKTVCEcSrbuDJO
 mDjg==
X-Gm-Message-State: APjAAAULY5tE5HW4tpMr2VhjXVG+SsfVTQVx55kwzu8neviAGzBEFcOh
 ols95A033+7PnCuMHzaU30i7rMnp529u9FR3aao=
X-Google-Smtp-Source: APXvYqwuKMxsXT28TKbuQooL9rQ1QVttKzL0StbnqApJLFSD/gam1Od9P5ARGt5yH6+H78iilIRoigLLmxYsdIh2VJ4=
X-Received: by 2002:adf:ef0c:: with SMTP id e12mr11270259wro.270.1573771632171; 
 Thu, 14 Nov 2019 14:47:12 -0800 (PST)
MIME-Version: 1.0
References: <20191108084517.21617-1-peron.clem@gmail.com>
 <20191108084517.21617-5-peron.clem@gmail.com>
 <20191113085858.76rad3vpszknu4cp@pengutronix.de>
In-Reply-To: <20191113085858.76rad3vpszknu4cp@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 14 Nov 2019 23:47:00 +0100
Message-ID: <CAJiuCceYg7WC=peHYeC=eE-HOsKH_SdsKyWwkWY5VpeY+uzaKA@mail.gmail.com>
Subject: Re: [PATCH v4 4/7] pwm: sun4i: Add support to output source clock
 directly
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_144714_606098_8F961EDC 
X-CRM114-Status: GOOD (  26.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gV2VkLCAxMyBOb3YgMjAxOSBhdCAwOTo1OCwgVXdlIEtsZWluZS1Lw7ZuaWcK
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiBGcmksIE5vdiAw
OCwgMjAxOSBhdCAwOTo0NToxNEFNICswMTAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBG
cm9tOiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPgo+ID4gUFdN
IGNvcmUgaGFzIGFuIG9wdGlvbiB0byBieXBhc3Mgd2hvbGUgbG9naWMgYW5kIG91dHB1dCB1bmNo
YW5nZWQgc291cmNlCj4gPiBjbG9jayBhcyBQV00gb3V0cHV0LiBUaGlzIGlzIGFjaGlldmVkIGJ5
IGVuYWJsaW5nIGJ5cGFzcyBiaXQuCj4gPgo+ID4gTm90ZSB0aGF0IHdoZW4gYnlwYXNzIGlzIGVu
YWJsZWQsIG5vIG90aGVyIHNldHRpbmcgaGFzIGFueSBtZWFuaW5nLCBub3QKPiA+IGV2ZW4gZW5h
YmxlIGJpdC4KPiA+Cj4gPiBUaGlzIG1vZGUgb2Ygb3BlcmF0aW9uIGlzIG5lZWRlZCB0byBhY2hp
ZXZlIGhpZ2ggZW5vdWdoIGZyZXF1ZW5jeSB0bwo+ID4gc2VydmUgYXMgY2xvY2sgc291cmNlIGZv
ciBBQzIwMCBjaGlwIHdoaWNoIGlzIGludGVncmF0ZWQgaW50byBzYW1lCj4gPiBwYWNrYWdlIGFz
IEg2IFNvQy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNr
cmFiZWNAc2lvbC5uZXQ+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9u
LmNsZW1AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgfCA0
NCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdt
L3B3bS1zdW40aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+IGluZGV4IGExMDAyMmQ2
YzBmZC4uOWNjOTI4YWI0N2JjIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1bjRp
LmMKPiA+ICsrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiBAQCAtMyw2ICszLDEwIEBA
Cj4gPiAgICogRHJpdmVyIGZvciBBbGx3aW5uZXIgc3VuNGkgUHVsc2UgV2lkdGggTW9kdWxhdGlv
biBDb250cm9sbGVyCj4gPiAgICoKPiA+ICAgKiBDb3B5cmlnaHQgKEMpIDIwMTQgQWxleGFuZHJl
IEJlbGxvbmkgPGFsZXhhbmRyZS5iZWxsb25pQGZyZWUtZWxlY3Ryb25zLmNvbT4KPiA+ICsgKgo+
ID4gKyAqIExpbWl0YXRpb25zOgo+ID4gKyAqIC0gV2hlbiBvdXRwdXRpbmcgdGhlIHNvdXJjZSBj
bG9jayBkaXJlY3RseSwgdGhlIFBXTSBsb2dpYyB3aWxsIGJlIGJ5cGFzc2VkCj4gPiArICogICBh
bmQgdGhlIGN1cnJlbnRseSBydW5uaW5nIHBlcmlvZCBpcyBub3QgZ3VhcmFudGVlZCB0byBiZSBj
b21wbGV0ZWQKPiA+ICAgKi8KPiA+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgo+ID4g
QEAgLTczLDYgKzc3LDcgQEAgc3RhdGljIGNvbnN0IHUzMiBwcmVzY2FsZXJfdGFibGVbXSA9IHsK
PiA+Cj4gPiAgc3RydWN0IHN1bjRpX3B3bV9kYXRhIHsKPiA+ICAgICAgIGJvb2wgaGFzX3ByZXNj
YWxlcl9ieXBhc3M7Cj4gPiArICAgICBib29sIGhhc19kaXJlY3RfbW9kX2Nsa19vdXRwdXQ7Cj4g
PiAgICAgICB1bnNpZ25lZCBpbnQgbnB3bTsKPiA+ICB9Owo+ID4KPiA+IEBAIC0xMTgsNiArMTIz
LDIwIEBAIHN0YXRpYyB2b2lkIHN1bjRpX3B3bV9nZXRfc3RhdGUoc3RydWN0IHB3bV9jaGlwICpj
aGlwLAo+ID4KPiA+ICAgICAgIHZhbCA9IHN1bjRpX3B3bV9yZWFkbChzdW40aV9wd20sIFBXTV9D
VFJMX1JFRyk7Cj4gPgo+ID4gKyAgICAgLyoKPiA+ICsgICAgICAqIFBXTSBjaGFwdGVyIGluIEg2
IG1hbnVhbCBoYXMgYSBkaWFncmFtIHdoaWNoIGV4cGxhaW5zIHRoYXQgaWYgYnlwYXNzCj4gPiAr
ICAgICAgKiBiaXQgaXMgc2V0LCBubyBvdGhlciBzZXR0aW5nIGhhcyBhbnkgbWVhbmluZy4gRXZl
biBtb3JlLCBleHBlcmltZW50Cj4gPiArICAgICAgKiBwcm92ZWQgdGhhdCBhbHNvIGVuYWJsZSBi
aXQgaXMgaWdub3JlZCBpbiB0aGlzIGNhc2UuCj4gPiArICAgICAgKi8KPiA+ICsgICAgIGlmICgo
dmFsICYgQklUX0NIKFBXTV9CWVBBU1MsIHB3bS0+aHdwd20pKSAmJgo+ID4gKyAgICAgICAgIHN1
bjRpX3B3bS0+ZGF0YS0+aGFzX2RpcmVjdF9tb2RfY2xrX291dHB1dCkgewo+ID4gKyAgICAgICAg
ICAgICBzdGF0ZS0+cGVyaW9kID0gRElWX1JPVU5EX1VQX1VMTChOU0VDX1BFUl9TRUMsIGNsa19y
YXRlKTsKPiA+ICsgICAgICAgICAgICAgc3RhdGUtPmR1dHlfY3ljbGUgPSBESVZfUk9VTkRfVVBf
VUxMKHN0YXRlLT5wZXJpb2QsIDIpOwo+Cj4gSSBmaXJzdCB0aG91Z2h0IHlvdSdyZSBsb3Npbmcg
cHJlY2lzaW9uIGhlcmUgYnkgcmV1c2luZyBzdGF0ZS0+cGVyaW9kCj4gaGVyZSwgYnV0IHdpdGgg
YSBkaXZpc29yIG9mIDIgZXZlcnl0aGluZyBpcyBmaW5lLgo+Cj4gPiArICAgICAgICAgICAgIHN0
YXRlLT5wb2xhcml0eSA9IFBXTV9QT0xBUklUWV9OT1JNQUw7Cj4gPiArICAgICAgICAgICAgIHN0
YXRlLT5lbmFibGVkID0gdHJ1ZTsKPiA+ICsgICAgICAgICAgICAgcmV0dXJuOwo+ID4gKyAgICAg
fQo+ID4gKwo+ID4gICAgICAgaWYgKChQV01fUkVHX1BSRVNDQUwodmFsLCBwd20tPmh3cHdtKSA9
PSBQV01fUFJFU0NBTF9NQVNLKSAmJgo+ID4gICAgICAgICAgIHN1bjRpX3B3bS0+ZGF0YS0+aGFz
X3ByZXNjYWxlcl9ieXBhc3MpCj4gPiAgICAgICAgICAgICAgIHByZXNjYWxlciA9IDE7Cj4gPiBA
QCAtMjA0LDYgKzIyMyw3IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVjdCBwd21f
Y2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKPiA+ICAgICAgIHN0cnVjdCBzdW40
aV9wd21fY2hpcCAqc3VuNGlfcHdtID0gdG9fc3VuNGlfcHdtX2NoaXAoY2hpcCk7Cj4gPiAgICAg
ICBzdHJ1Y3QgcHdtX3N0YXRlIGNzdGF0ZTsKPiA+ICAgICAgIHUzMiBjdHJsOwo+ID4gKyAgICAg
Ym9vbCBieXBhc3MgPSBmYWxzZTsKPiA+ICAgICAgIGludCByZXQ7Cj4gPiAgICAgICB1bnNpZ25l
ZCBpbnQgZGVsYXlfdXM7Cj4gPiAgICAgICB1bnNpZ25lZCBsb25nIG5vdzsKPiA+IEBAIC0yMTgs
OSArMjM4LDI0IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAq
Y2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKPiA+ICAgICAgICAgICAgICAgfQo+ID4gICAg
ICAgfQo+ID4KPiA+ICsgICAgIC8qCj4gPiArICAgICAgKiBBbHRob3VnaCBpdCB3b3VsZCBtYWtl
IG11Y2ggbW9yZSBzZW5zZSB0byBjaGVjayBmb3IgYnlwYXNzIGluCj4gPiArICAgICAgKiBzdW40
aV9wd21fY2FsY3VsYXRlKCksIHZhbHVlIG9mIGJ5cGFzcyBiaXQgYWxzbyBkZXBlbmRzIG9uICJl
bmFibGVkIi4KPgo+IEkgZG9uJ3QgdW5kZXJzdGFuZCB0aGlzIHJlYXNvbmluZy4gc3VuNGlfcHdt
X2NhbGN1bGF0ZSBrbm93cyBhYm91dAo+IC5lbmFibGVkIGFuZCBhbHNvIHN1bjRpX3B3bS0+ZGF0
YS0+aGFzX2RpcmVjdF9tb2RfY2xrX291dHB1dC4gTWF5YmUganVzdAo+IGFkZCBhIGJvb2wgKmJ5
cGFzcyBhcyBwYXJhbWV0ZXIgYW5kIG1vdmUgdGhlIGxvZ2ljIHRoZXJlPwoKSSBhc2tlZCBteXNl
bGYgdGhlIHNhbWUgcXVlc3Rpb24sIGhvd2V2ZXIgdGhlIHN1bjRpX3B3bV9jYWxjdWxhdGUgaXMK
b25seSBjYWxsZWQgd2hlbiBwZXJpb2Qgb3IgZHV0eV9jeWNsZSBpcyB1cGRhdGVkIG5vdCB3aGVu
IHN0YXRlIGlzCnRvZ2dsZWQgYmV0d2VlbiBkaXNhYmxlZCAvIGVuYWJsZWQuCgpTaG91bGQgd2Ug
YWxzbyBjYWxsIGl0IHdoZW4gdGhlIHN0YXRlIGlzIHN3aXRjaGVkIHRvIGVuYWJsZWQgPwoKUmVn
YXJkcywKQ2zDqW1lbnQKCj4KPiA+ICsgICAgICAqLwo+ID4gKyAgICAgaWYgKHN0YXRlLT5lbmFi
bGVkKSB7Cj4gPiArICAgICAgICAgICAgIHUzMiBjbGtfcmF0ZSA9IGNsa19nZXRfcmF0ZShzdW40
aV9wd20tPmNsayk7Cj4gPiArICAgICAgICAgICAgIGJ5cGFzcyA9IChzdGF0ZS0+cGVyaW9kICog
Y2xrX3JhdGUgPj0gTlNFQ19QRVJfU0VDKSAmJgo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAo
c3RhdGUtPnBlcmlvZCAqIGNsa19yYXRlIDwgMiAqIE5TRUNfUEVSX1NFQykgJiYKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgKHN0YXRlLT5kdXR5X2N5Y2xlICogY2xrX3JhdGUgKiAyID49IE5T
RUNfUEVSX1NFQyk7Cj4gPiArICAgICB9Cj4gPiArCj4KPiBUaGlzIGxvb2tzIHJpZ2h0IG5vdy4K
Pgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+Cj4gLS0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCBVd2UgS2xlaW5lLUvDtm5pZyAgICAgICAgICAgIHwKPiBJbmR1
c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwczovL3d3dy5wZW5n
dXRyb25peC5kZS8gfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
