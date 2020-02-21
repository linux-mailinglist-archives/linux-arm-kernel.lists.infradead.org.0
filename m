Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF04E166D39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 04:04:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/5nTK47pocqFLuwxS6CCI2T/A4Ay30CxyalG7MsTD5k=; b=frdYtWFVkMpxEyVCjnhe0yadtj
	z7Trm/g7GyuRIbvGsB+FnJrBKsbPycrHcTaRIYNM/bVBTKCbNATzYQXaeLCZWNDhWlCFMcZ7ixLG+
	KCP5e1++PKfMWoXEI1ikOh7WKumhy16YD0VryIwuHQqQx0JwTOqesu9qRelt82+vu4xVrajUeYMvj
	3K88gKoN4mmAXcym1I//njqjMHHc1rcmH/OWbOECNhgRcRV1EV1sIw01Iq2g+hW8ecOuRXi77cXUe
	gFL3hCgp8xwqIIiKlt3h6PgjwLWKm1fgguWmCbhhtm7o56D80GXNNTa5xA3TzP62uTcRJSFQnrZwp
	APFvCa4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ycJ-0003le-4R; Fri, 21 Feb 2020 03:04:39 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ycA-0003kx-I2
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 03:04:32 +0000
Received: by mail-ed1-f68.google.com with SMTP id e10so565291edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 19:04:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=NnuOIkH/k/PEJ/s73MC7n0P8o0WQzooeJ7sSj3zBbiE=;
 b=hMm3aa1L34LB18W7MlLEpIVJhjdDTGMs3SfbLcH81InxLc9tqYPOoX47eUwrQwcqcu
 uOQS9qjC82xtG5+lwVGT/20kIvMa7/zeOfkXQoT8d8p2DU/otUdUVfM5fcGndIDbT5CJ
 OmVtQV9TPUYpgYt9Nak4qSTDjZkx1MJkY/b6hs8HLQrN8u4vhs1aGLLZc7RAbxIkdiPg
 X3Zn+8ki51Kxlr5AxuPeWazcI5dzAIONl8N8v2tAPHBUZdP9bNQT8rloAXVerteB4mtJ
 qumBohD0uPv/rzUyhP5dRjt73PW9oqsUBTPlFURsbRH6JcAI779+Q+2x2G3GSXLWJgXY
 T8Qw==
X-Gm-Message-State: APjAAAX7/GE3cfMg9Cnl8kEug8MmW7kl7km3afrz5lj5Jyx/2G8S1B/P
 cmsn6dPCTNniT05Ixwk5WUU3I+0BJLE=
X-Google-Smtp-Source: APXvYqz41iA2Xyxwx1NMhx5gdr5WOMfhl85Aw6RMWvxpU+ur64rKEuyIdAi624oNwTBtpP9H5erVbg==
X-Received: by 2002:a17:906:cf9e:: with SMTP id
 um30mr31648968ejb.284.1582254266094; 
 Thu, 20 Feb 2020 19:04:26 -0800 (PST)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id b1sm150288edw.72.2020.02.20.19.04.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 19:04:25 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id w12so351477wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 19:04:25 -0800 (PST)
X-Received: by 2002:a5d:6805:: with SMTP id w5mr47051708wru.64.1582254264966; 
 Thu, 20 Feb 2020 19:04:24 -0800 (PST)
MIME-Version: 1.0
References: <20200219010951.395599-1-megous@megous.com>
 <CAGb2v67BLODmDmQOJH-m-KWVtXS2EGrnPxi9czj6oipHPDTfjw@mail.gmail.com>
 <20200219121424.dfvrwfcavupmwbvw@core.my.home>
In-Reply-To: <20200219121424.dfvrwfcavupmwbvw@core.my.home>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 21 Feb 2020 11:04:14 +0800
X-Gmail-Original-Message-ID: <CAGb2v64+C1Q8au_cR0PjY=0GJx1c+kk7Tw0=12+fFEhBF_Q-Rg@mail.gmail.com>
Message-ID: <CAGb2v64+C1Q8au_cR0PjY=0GJx1c+kk7Tw0=12+fFEhBF_Q-Rg@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH] bus: sunxi-rsb: Return correct data
 when mixing 16-bit and 8-bit reads
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>, 
 Chen-Yu Tsai <wens@csie.org>, linux-sunxi <linux-sunxi@googlegroups.com>, 
 Maxime Ripard <mripard@kernel.org>, Samuel Holland <samuel@sholland.org>, 
 Stephen Boyd <swboyd@chromium.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_190430_600550_BAC37AC5 
X-CRM114-Status: GOOD (  32.22  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBGZWIgMTksIDIwMjAgYXQgODoxNCBQTSBPbmTFmWVqIEppcm1hbiA8bWVnb3VzQG1l
Z291cy5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCBGZWIgMTksIDIwMjAgYXQgMTA6NDk6MThBTSAr
MDgwMCwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4gT24gV2VkLCBGZWIgMTksIDIwMjAgYXQgOTox
MCBBTSBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+
IFdoZW4gZG9pbmcgYSAxNi1iaXQgcmVhZCB0aGF0IHJldHVybnMgZGF0YSBpbiB0aGUgTVNCIGJ5
dGUsIHRoZQo+ID4gPiBSU0JfREFUQSByZWdpc3RlciB3aWxsIGtlZXAgdGhlIE1TQiBieXRlIHVu
Y2hhbmdlZCB3aGVuIGRvaW5nCj4gPiA+IHRoZSBmb2xsb3dpbmcgOC1iaXQgcmVhZC4gc3VueGlf
cnNiX3JlYWQoKSB3aWxsIHRoZW4gcmV0dXJuCj4gPiA+IGEgcmVzdWx0IHRoYXQgY29udGFpbnMg
aGlnaCBieXRlIGZyb20gMTYtYml0IHJlYWQgbWl4ZWQgd2l0aAo+ID4gPiB0aGUgOC1iaXQgcmVz
dWx0Lgo+ID4gPgo+ID4gPiBUaGUgY29uc2VxdWVuY2UgaXMgdGhhdCBhZnRlciB0aGlzIGhhcHBl
bnMgdGhlIFBNSUMncyByZWdtYXAgd2lsbAo+ID4gPiBsb29rIGxpa2UgdGhpczogKDB4MzMgaXMg
dGhlIGhpZ2ggYnl0ZSBmcm9tIHRoZSAxNi1iaXQgcmVhZCkKPiA+ID4KPiA+ID4gJSBjYXQgL3N5
cy9rZXJuZWwvZGVidWcvcmVnbWFwL3N1bnhpLXJzYi0zYTMvcmVnaXN0ZXJzCj4gPiA+IDAwOiAz
Mwo+ID4gPiAwMTogMzMKPiA+ID4gMDI6IDMzCj4gPiA+IDAzOiAzMwo+ID4gPiAwNDogMzMKPiA+
ID4gMDU6IDMzCj4gPiA+IDA2OiAzMwo+ID4gPiAwNzogMzMKPiA+ID4gMDg6IDMzCj4gPiA+IDA5
OiAzMwo+ID4gPiAwYTogMzMKPiA+ID4gMGI6IDMzCj4gPiA+IDBjOiAzMwo+ID4gPiAwZDogMzMK
PiA+ID4gMGU6IDMzCj4gPiA+IFtzbmlwXQo+ID4gPgo+ID4gPiBGaXggdGhpcyBieSBtYXNraW5n
IHRoZSByZXN1bHQgb2YgdGhlIHJlYWQgd2l0aCB0aGUgY29ycmVjdCBtYXNrCj4gPiA+IGJhc2Vk
IG9uIHRoZSBzaXplIG9mIHRoZSByZWFkLiBUaGVyZSBhcmUgbm8gMTYtYml0IHVzZXJzIGluIHRo
ZQo+ID4gPiBtYWlubGluZSBrZXJuZWwsIHNvIHRoaXMgZG9lc24ndCBuZWVkIHRvIGdldCBpbnRv
IHRoZSBzdGFibGUgdHJlZS4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1h
biA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPgo+ID4gQWNrZWQtYnk6IENoZW4tWXUgVHNhaSA8d2Vu
c0Bjc2llLm9yZz4KPiA+Cj4gPiBmb3IgdGhlIGZpeCwgaG93ZXZlciBpdCdzIG5vdCBlbnRpcmVs
eSBjbGVhciB0byBtZSBob3cgdGhlIE1TQiAweDMzCj4gPiB2YWx1ZSBnb3QgaW50byB0aGUgcmVn
bWFwLiBMb29rcyBsaWtlIEkgZXhwZWN0ZWQgdGhlIHJlZ21hcCBjb3JlIHRvCj4gPiBoYW5kbGUg
YW55IG92ZXJmbG93cywgb3IgZGlkbid0IGV4cGVjdCB0aGUgbGluZ2VyaW5nIE1TQiBmcm9tIDE2
LWJpdAo+ID4gcmVhZHMsIGFzIEkgZGlkbid0IGhhdmUgYW55IDE2LWJpdCByZWdpc3RlciBkZXZp
Y2VzIGJhY2sgd2hlbiBJIHdyb3RlCj4gPiB0aGlzLgo+Cj4gTm93IEkgZmVlbCBsaWtlIEkgbWFz
a2VkIHNvbWUgb3RoZXIgYnVnLiBUaG91Z2ggZXhwbGFuYXRpb24gbWF5IGJlIHF1aXRlIHNpbXBs
ZS4KPgo+IEZvciBleGFtcGxlIHdoZW4gQVhQIGNvcmUgZG9lcyByZWdtYXBfcmVhZCBvbiBzb21l
IHZhbHVlcyBmb3Igc2hvd2luZyBjaGFyZ2luZwo+IGN1cnJlbnQgb3IgYmF0dGVyeSB2b2x0YWdl
LCBiZWNhdXNlIHJlZ21hcF9yZWFkIHdvcmtzIHdpdGggdW5zaWduZWQgaW50LCBpdAo+IHdpbGwg
c2ltcGx5IGdldCBhIG51bWJlciB0aGF0J3MgdG9vIGJpZy4gQW5kIHRoYXQgd2FzIHRoZSBtYWpv
ciBzeW1wdG9tCj4gSSBvYnNlcnZlZC4gSSBnb3QgcmVhZGluZ3MgZnJvbSBzeXNmcyB0aGF0IG15
IHRhYmxldCBpcyBjb25zdW1pbmcgNjAwQSBvciAyMDBBLAo+IGV0Yy4gQW5kIHRoaXMgdmFsdWUg
d2FzIGp1bXBpbmcgYXJvdW5kIGJhc2VkIG9uIEFDMTAwIGFjdGl2aXR5IChhcyB0aGUgTVNCCj4g
Ynl0ZSBnb3QgY2hhbmdlZCkuCj4KPiBJbiBvdGhlciBwbGFjZXMgd2hlcmUgdGhlIGRyaXZlciBk
b2VzIHJlZ21hcF91cGRhdGVfYml0cywgSSB0aGluayBub3RoaW5nIGJhZAo+IGhhcHBlbmVkLiBU
aGUgd3JpdGUgYWZ0ZXIgdGhlIHJlYWQgd291bGQgc2ltcGx5IGRpc2NhcmQgdGhlIE1TQiBieXRl
Lgo+Cj4gQW5kIGZvciB0aGUgZGVidWdmcy9yZWdtYXAvKi9yZWdpc3RlcnMsIHRob3NlIGFyZSBw
cmludGVkIHN1Y2g6Cj4KPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qv
c291cmNlL2RyaXZlcnMvYmFzZS9yZWdtYXAvcmVnbWFwLWRlYnVnZnMuYyNMMjU2Cj4KPiAgICAg
ICAgIHNucHJpbnRmKGJ1ZiArIGJ1Zl9wb3MsIGNvdW50IC0gYnVmX3BvcywKPiAgICAgICAgICAg
ICAgICAgIiUuKngiLCBtYXAtPmRlYnVnZnNfdmFsX2xlbiwgdmFsKTsKPgo+IFRoaXMgZG9lc24n
dCB0cnVuY2F0ZSB2YWx1ZXMsIHNvIHRoZSBsYXJnZXIgbnVtYmVyIGdldHMgcHJpbnRlZCB0byAo
Zm9yIGV4YW1wbGUpOgo+Cj4gICAgICAgICAzM2ZlCj4KPiBCdXQgcmVnbWFwIGRlYnVnZnMgY29k
ZSB0cnVuY2F0ZXMgdGhpcyBieSBjdXR0aW5nIG9mZiB0aGUgZm9ybWF0dGVkIHN0cmluZyB0bwo+
IHRoaXMgbGVuZ3RoOgo+Cj4gICBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRl
c3Qvc291cmNlL2RyaXZlcnMvYmFzZS9yZWdtYXAvcmVnbWFwLWRlYnVnZnMuYyNMMTg5Cj4KPiBT
byBpbiB0aGUgZW5kLCBvbmx5Ogo+Cj4gICAgICAgICAwMDogMzMKPgo+IHJlbWFpbnMsIGluc3Rl
YWQgb2YgdGhlIGNvcnJlY3QgdmFsdWUgb2Y6Cj4KPiAgICAgICAgIDAwOiBmZQo+Cj4gU28gaW4g
dGhlIGNhc2Ugb2YgZGVidWdmcyB0aGlzIGlzIGp1c3QgYSBjb3NtZXRpYy9mb3JtYXR0aW5nIGlz
c3VlLCB0aGF0IGRpZG4ndAo+IGFmZmVjdCBhbnl0aGluZyBlbHNlLgo+Cj4gSSB0aGluayByZWdt
YXBfYnVzLT5yZWdfcmVhZCBBUEkgc2ltcGx5IGV4cGVjdHMgdGhlIHJldHVybmVkIHZhbHVlIHRv
IG5vdCBleGNlZWQKPiB0aGUgc2Vuc2libGUgcmFuZ2UuCgpTb3VuZHMgZ29vZC4gVGhhbmtzIGZv
ciBkaWdnaW5nIHRocm91Z2ggdGhpcy4gTXkgYWNrIHN0aWxsIHN0YW5kcy4KCkNoZW5ZdQoKPiBy
ZWdhcmRzLAo+ICAgICAgICAgby4KPgo+Cj4gPiBDaGVuWXUKPiA+Cj4gPgo+ID4gPiAtLS0KPiA+
ID4gIGRyaXZlcnMvYnVzL3N1bnhpLXJzYi5jIHwgNiArKysrKy0KPiA+ID4gIDEgZmlsZSBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvYnVzL3N1bnhpLXJzYi5jIGIvZHJpdmVycy9idXMvc3VueGktcnNiLmMKPiA+
ID4gaW5kZXggYjgwNDNiNTg1NjhhYy4uOGFiNmEzODY1ZjU2OSAxMDA2NDQKPiA+ID4gLS0tIGEv
ZHJpdmVycy9idXMvc3VueGktcnNiLmMKPiA+ID4gKysrIGIvZHJpdmVycy9idXMvc3VueGktcnNi
LmMKPiA+ID4gQEAgLTMxNiw2ICszMTYsNyBAQCBzdGF0aWMgaW50IHN1bnhpX3JzYl9yZWFkKHN0
cnVjdCBzdW54aV9yc2IgKnJzYiwgdTggcnRhZGRyLCB1OCBhZGRyLAo+ID4gPiAgewo+ID4gPiAg
ICAgICAgIHUzMiBjbWQ7Cj4gPiA+ICAgICAgICAgaW50IHJldDsKPiA+ID4gKyAgICAgICB1MzIg
bWFzazsKPiA+ID4KPiA+ID4gICAgICAgICBpZiAoIWJ1ZikKPiA+ID4gICAgICAgICAgICAgICAg
IHJldHVybiAtRUlOVkFMOwo+ID4gPiBAQCAtMzIzLDEyICszMjQsMTUgQEAgc3RhdGljIGludCBz
dW54aV9yc2JfcmVhZChzdHJ1Y3Qgc3VueGlfcnNiICpyc2IsIHU4IHJ0YWRkciwgdTggYWRkciwK
PiA+ID4gICAgICAgICBzd2l0Y2ggKGxlbikgewo+ID4gPiAgICAgICAgIGNhc2UgMToKPiA+ID4g
ICAgICAgICAgICAgICAgIGNtZCA9IFJTQl9DTURfUkQ4Owo+ID4gPiArICAgICAgICAgICAgICAg
bWFzayA9IDB4ZmZ1Owo+ID4gPiAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiA+ICAgICAgICAg
Y2FzZSAyOgo+ID4gPiAgICAgICAgICAgICAgICAgY21kID0gUlNCX0NNRF9SRDE2Owo+ID4gPiAr
ICAgICAgICAgICAgICAgbWFzayA9IDB4ZmZmZnU7Cj4gPiA+ICAgICAgICAgICAgICAgICBicmVh
azsKPiA+ID4gICAgICAgICBjYXNlIDQ6Cj4gPiA+ICAgICAgICAgICAgICAgICBjbWQgPSBSU0Jf
Q01EX1JEMzI7Cj4gPiA+ICsgICAgICAgICAgICAgICBtYXNrID0gMHhmZmZmZmZmZnU7Cj4gPiA+
ICAgICAgICAgICAgICAgICBicmVhazsKPiA+ID4gICAgICAgICBkZWZhdWx0Ogo+ID4gPiAgICAg
ICAgICAgICAgICAgZGV2X2Vycihyc2ItPmRldiwgIkludmFsaWQgYWNjZXNzIHdpZHRoOiAlemRc
biIsIGxlbik7Cj4gPiA+IEBAIC0zNDUsNyArMzQ5LDcgQEAgc3RhdGljIGludCBzdW54aV9yc2Jf
cmVhZChzdHJ1Y3Qgc3VueGlfcnNiICpyc2IsIHU4IHJ0YWRkciwgdTggYWRkciwKPiA+ID4gICAg
ICAgICBpZiAocmV0KQo+ID4gPiAgICAgICAgICAgICAgICAgZ290byB1bmxvY2s7Cj4gPiA+Cj4g
PiA+IC0gICAgICAgKmJ1ZiA9IHJlYWRsKHJzYi0+cmVncyArIFJTQl9EQVRBKTsKPiA+ID4gKyAg
ICAgICAqYnVmID0gcmVhZGwocnNiLT5yZWdzICsgUlNCX0RBVEEpICYgbWFzazsKPiA+ID4KPiA+
ID4gIHVubG9jazoKPiA+ID4gICAgICAgICBtdXRleF91bmxvY2soJnJzYi0+bG9jayk7Cj4gPiA+
IC0tCj4gPiA+IDIuMjUuMQo+ID4gPgo+Cj4gLS0KPiBZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdl
IGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29nbGUgR3JvdXBzICJsaW51eC1z
dW54aSIgZ3JvdXAuCj4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJl
Y2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1zdW54aSt1bnN1
YnNjcmliZUBnb29nbGVncm91cHMuY29tLgo+IFRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRo
ZSB3ZWIsIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9saW51eC1zdW54
aS8yMDIwMDIxOTEyMTQyNC5kZnZyd2ZjYXZ1cG13YnZ3JTQwY29yZS5teS5ob21lLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
