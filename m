Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E58CA12E394
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 08:57:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WKp634Y/ZXLID4FBCDxTHerWfMREEw5ogD0n5we0B8=; b=abdzTzXSWtdMYi
	rFVf7idjUDEOAT1Sq1WWqb7xfJkERb7ChMN76xJZCa4Vp5StAYzsDZq4nt3ceff3pyoYMhhbyltMe
	o4Dhzzjxur6xIDxgBSwiHlNJwAiQ9QW3MGk0vbcKZajupNUCRZwADHbJcavxWxlT0OrfbIRUDCsp1
	jZeaovEjUdf0tSxq4k7zGyz7ERMqtdZ8hj/jg+67H0XBOSIgD6X3KTPLdyBysgvf3IjdAOEhvsFGJ
	so3DwX7/eO4wM3ZC0EENtrtDKXW4sBqlc84ES15QfeQ9jetOiMn/7vBIXcWSwvbAN9cKWSbcCupr1
	FvtRVW5OEHHA8Gdlv3Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imvMP-0004Fl-Et; Thu, 02 Jan 2020 07:57:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imvMH-0004Ey-NV
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 07:57:31 +0000
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80E82222C3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 Jan 2020 07:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577951848;
 bh=gx42xUv6clxOQIv8CpUQeOfkg66ICi68qI7nqaGsUjA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GIDK4W8I0DJLfQQDIcCdx0GQPCnUGi9IMXt1KS6bHdpvzlP3EGf1AzOZ+aFFGr+Ww
 oKD37aY3ppFc4TcnDuiZAX1pSZHyb007JFnM8mpz5h7WUjpR5UiS0CBJ5rquL55OJ8
 mVu+iUhH67f5Lyhbjr6BixwclauCbmQ8UG5GZNkM=
Received: by mail-wr1-f50.google.com with SMTP id q6so38334041wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 23:57:28 -0800 (PST)
X-Gm-Message-State: APjAAAUkmXf7+uPl0rjuE8aspXB9pS/j7AN0EaiU6v89JJiRX2d5Se22
 4vcp78lPH2wCgEkAap4/XU2uJSiRnJOdE2NSzLo=
X-Google-Smtp-Source: APXvYqwTrncbHkUn10LLB1suUZuNiArnXijYHRuHYWb4puFPZ5K3QQZZGa/f4ZCKkCUh+UEHsd8stV3oTBKoh4QgYfU=
X-Received: by 2002:adf:81e3:: with SMTP id 90mr80305672wra.23.1577951846915; 
 Wed, 01 Jan 2020 23:57:26 -0800 (PST)
MIME-Version: 1.0
References: <20200101204750.50541-1-roman.stratiienko@globallogic.com>
 <20200101204750.50541-2-roman.stratiienko@globallogic.com>
 <2989265.aV6nBDHxoP@jernej-laptop>
In-Reply-To: <2989265.aV6nBDHxoP@jernej-laptop>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 2 Jan 2020 15:57:15 +0800
X-Gmail-Original-Message-ID: <CAGb2v64nwceuBz+JLRDXD7Ji=n7Xg1QWTW=GVWAo6ZWa7zyaTA@mail.gmail.com>
Message-ID: <CAGb2v64nwceuBz+JLRDXD7Ji=n7Xg1QWTW=GVWAo6ZWa7zyaTA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/sun4i: Use CRTC size instead of PRIMARY plane
 size as mixer frame.
To: Roman Stratiienko <roman.stratiienko@globallogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_235729_811269_58FC82DD 
X-CRM114-Status: GOOD (  25.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9tYW4sCgpZb3VyIGRvbWFpbiBoYXMgRE1BUkMgc2V0dXAgd2l0aCB0aGUgInJlamVjdCIg
cG9saWN5LgoKVGhpcyBtZWFucyBlbWFpbHMgZnJvbSB5b3VyIGRvbWFpbiBtYXkgYmUgc3Vic2Vx
dWVudGx5IHJlamVjdGVkIGJ5IHBlb3BsZQp1c2luZyBlbWFpbCBmb3J3YXJkZXJzIChzdWNoIGFz
IEBrZXJuZWwub3JnKSB0byBmb3J3YXJkIHRvIEdtYWlsLgoKSSBzdWdnZXN0IHVzaW5nIGFub3Ro
ZXIgZW1haWwgYWRkcmVzcyB0byBzZW5kIHBhdGNoZXMsIG9yIGFzayB5b3VyIElUCnBlb3BsZSB0
byBkcm9wIHRoZSBwb2xpY3kgdG8gInF1YXJhbnRpbmUiLCB3aGljaCBtYWtlcyB0aGUgZW1haWwg
Z28gdG8KdGhlIFNQQU0gZm9sZGVyIGluc3RlYWQgb2Ygb3V0cmlnaHQgcmVqZWN0aW5nIHRoZW0u
CgpDaGVuWXUKCk9uIFRodSwgSmFuIDIsIDIwMjAgYXQgMzo0MyBQTSBKZXJuZWogxaBrcmFiZWMg
PGplcm5lai5za3JhYmVjQHNpb2wubmV0PiB3cm90ZToKPgo+IEhpIQo+Cj4gRG5lIHNyZWRhLCAw
MS4gamFudWFyIDIwMjAgb2IgMjE6NDc6NTAgQ0VUIGplCj4gcm9tYW4uc3RyYXRpaWVua29AZ2xv
YmFsbG9naWMuY29tIG5hcGlzYWwoYSk6Cj4gPiBGcm9tOiBSb21hbiBTdHJhdGlpZW5rbyA8cm9t
YW4uc3RyYXRpaWVua29AZ2xvYmFsbG9naWMuY29tPgo+ID4KPiA+IEFjY29yZGluZyB0byBEUk0g
ZG9jdW1lbnRhdGlvbiB0aGUgb25seSBkaWZmZXJlbmNlIGJldHdlZW4gUFJJTUFSWQo+ID4gYW5k
IE9WRVJMQVkgcGxhbmUgaXMgdGhhdCBlYWNoIENSVEMgbXVzdCBoYXZlIFBSSU1BUlkgcGxhbmUg
YW5kCj4gPiBPVkVSTEFZIGFyZSBvcHRpb25hbC4KPiA+Cj4gPiBBbGxvdyBQUklNQVJZIHBsYW5l
IHRvIGhhdmUgZGltZW5zaW9uIGRpZmZlcmVudCBmcm9tIGZ1bGwtc2NyZWVuLgo+ID4KPiA+IEZp
eGVzOiA1YmI1ZjVkYWZhMWEgKCJkcm0vc3VuNGk6IFJlb3JnYW5pemUgVUkgbGF5ZXIgY29kZSBp
biBERTIiKQo+ID4gU2lnbmVkLW9mZi1ieTogUm9tYW4gU3RyYXRpaWVua28gPHJvbWFuLnN0cmF0
aWllbmtvQGdsb2JhbGxvZ2ljLmNvbT4KPgo+IFRoaXMgbG9va3MgZ3JlYXQgbm93Lgo+Cj4gUmV2
aWV3ZWQtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPgo+IFdo
YXQgaGFwcGVuZWQgdG8gb3RoZXIgcGF0Y2hlcyBpbiB0aGUgc2VyaWVzPyBJdCB3b3VsZCBiZSBu
aWNlIHRvIGhhdmUgYSBjb3Zlcgo+IGxldHRlciBmb3Igc3VjaCBjYXNlcywgd2hlcmUgeW91IGNh
biBleHBsYWluIHJlYXNvbnMgZm9yIGRyb3BwZWQgcGF0Y2hlcy4KPgo+IEJlc3QgcmVnYXJkcywK
PiBKZXJuZWoKPgo+ID4gLS0tCj4gPiB2MjoKPiA+IC0gU3BsaXQgY29tbWl0IGluIDIgcGFydHMK
PiA+IC0gQWRkIEZpeGVzIGxpbmUgdG8gdGhlIGNvbW1pdCBtZXNzYWdlCj4gPgo+ID4gdjM6Cj4g
PiAtIEFkZHJlc3MgcmV2aWV3IGNvbW1lbnRzIG9mIHYyICsgcmVtb3ZlZCAzIGxvY2FsIHZhcmli
bGVzCj4gPiAtIENoYW5nZSAnRml4ZXMnIGxpbmUKPiA+Cj4gPiBTaW5jZSBJJ3ZlIHB1dCBtb3Jl
IGNoYW5nZXMgZnJvbSBteSBzaWRlLCBwbGVhc2UgcmV2aWV3L3NpZ24gYWdhaW4uCj4gPiAtLS0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfbWl4ZXIuYyAgICB8IDI4ICsrKysrKysr
KysrKysrKysrKysrKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW44aV91aV9sYXll
ci5jIHwgMzAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ICAyIGZpbGVzIGNoYW5nZWQs
IDI4IGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfbWl4ZXIuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
c3VuNGkvc3VuOGlfbWl4ZXIuYyBpbmRleCA4YjgwM2ViOTAzYjguLjY1OGNmNDQyYzEyMQo+ID4g
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfbWl4ZXIuYwo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX21peGVyLmMKPiA+IEBAIC0yNTcsNiAr
MjU3LDMzIEBAIGNvbnN0IHN0cnVjdCBkZTJfZm10X2luZm8gKnN1bjhpX21peGVyX2Zvcm1hdF9p
bmZvKHUzMgo+ID4gZm9ybWF0KSByZXR1cm4gTlVMTDsKPiA+ICB9Cj4gPgo+ID4gK3N0YXRpYyB2
b2lkIHN1bjhpX21vZGVfc2V0KHN0cnVjdCBzdW54aV9lbmdpbmUgKmVuZ2luZSwKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkKPiA+ICt7
Cj4gPiArICAgICB1MzIgc2l6ZSA9IFNVTjhJX01JWEVSX1NJWkUobW9kZS0+Y3J0Y19oZGlzcGxh
eSwgbW9kZS0KPiA+Y3J0Y192ZGlzcGxheSk7Cj4gPiArICAgICBzdHJ1Y3Qgc3VuOGlfbWl4ZXIg
Km1peGVyID0gZW5naW5lX3RvX3N1bjhpX21peGVyKGVuZ2luZSk7Cj4gPiArICAgICB1MzIgYmxk
X2Jhc2UgPSBzdW44aV9ibGVuZGVyX2Jhc2UobWl4ZXIpOwo+ID4gKyAgICAgdTMyIHZhbDsKPiA+
ICsKPiA+ICsgICAgIERSTV9ERUJVR19EUklWRVIoIk1vZGUgY2hhbmdlLCB1cGRhdGluZyBnbG9i
YWwgc2l6ZSBXOiAldSBIOiAldVxuIiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgbW9kZS0+
Y3J0Y19oZGlzcGxheSwgbW9kZS0+Y3J0Y192ZGlzcGxheSk7Cj4gPiArICAgICByZWdtYXBfd3Jp
dGUobWl4ZXItPmVuZ2luZS5yZWdzLCBTVU44SV9NSVhFUl9HTE9CQUxfU0laRSwgc2l6ZSk7Cj4g
PiArICAgICByZWdtYXBfd3JpdGUobWl4ZXItPmVuZ2luZS5yZWdzLAo+ID4gKyAgICAgICAgICAg
ICAgICAgIFNVTjhJX01JWEVSX0JMRU5EX09VVFNJWkUoYmxkX2Jhc2UpLCBzaXplKTsKPiA+ICsK
PiA+ICsgICAgIGlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfSU5URVJMQUNFKQo+ID4g
KyAgICAgICAgICAgICB2YWwgPSBTVU44SV9NSVhFUl9CTEVORF9PVVRDVExfSU5URVJMQUNFRDsK
PiA+ICsgICAgIGVsc2UKPiA+ICsgICAgICAgICAgICAgdmFsID0gMDsKPiA+ICsKPiA+ICsgICAg
IHJlZ21hcF91cGRhdGVfYml0cyhtaXhlci0+ZW5naW5lLnJlZ3MsCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgU1VOOElfTUlYRVJfQkxFTkRfT1VUQ1RMKGJsZF9iYXNlKSwKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICBTVU44SV9NSVhFUl9CTEVORF9PVVRDVExfSU5URVJMQUNFRCwK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICB2YWwpOwo+ID4gKyAgICAgRFJNX0RFQlVHX0RS
SVZFUigiU3dpdGNoaW5nIGRpc3BsYXkgbWl4ZXIgaW50ZXJsYWNlZCBtb2RlICVzXG4iLAo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICB2YWwgPyAib24iIDogIm9mZiIpOwo+ID4gK30KPiA+ICsK
PiA+ICBzdGF0aWMgdm9pZCBzdW44aV9taXhlcl9jb21taXQoc3RydWN0IHN1bnhpX2VuZ2luZSAq
ZW5naW5lKQo+ID4gIHsKPiA+ICAgICAgIERSTV9ERUJVR19EUklWRVIoIkNvbW1pdHRpbmcgY2hh
bmdlc1xuIik7Cj4gPiBAQCAtMzEwLDYgKzMzNyw3IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX3BsYW5l
ICoqc3VuOGlfbGF5ZXJzX2luaXQoc3RydWN0Cj4gPiBkcm1fZGV2aWNlICpkcm0sIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgc3VueGlfZW5naW5lX29wcyBzdW44aV9lbmdpbmVfb3BzID0gewo+ID4gICAg
ICAgLmNvbW1pdCAgICAgICAgID0gc3VuOGlfbWl4ZXJfY29tbWl0LAo+ID4gICAgICAgLmxheWVy
c19pbml0ICAgID0gc3VuOGlfbGF5ZXJzX2luaXQsCj4gPiArICAgICAubW9kZV9zZXQgICAgICAg
PSBzdW44aV9tb2RlX3NldCwKPiA+ICB9Owo+ID4KPiA+ICBzdGF0aWMgc3RydWN0IHJlZ21hcF9j
b25maWcgc3VuOGlfbWl4ZXJfcmVnbWFwX2NvbmZpZyA9IHsKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfdWlfbGF5ZXIuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
c3VuNGkvc3VuOGlfdWlfbGF5ZXIuYyBpbmRleCA0MzQzZWE5ZjhjZjguLmYwMWFjNTUxOTFmMQo+
ID4gMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfdWlfbGF5ZXIu
Ywo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX3VpX2xheWVyLmMKPiA+IEBA
IC0xMjAsMzYgKzEyMCw2IEBAIHN0YXRpYyBpbnQgc3VuOGlfdWlfbGF5ZXJfdXBkYXRlX2Nvb3Jk
KHN0cnVjdAo+ID4gc3VuOGlfbWl4ZXIgKm1peGVyLCBpbnQgY2hhbm5lbCwgaW5zaXplID0gU1VO
OElfTUlYRVJfU0laRShzcmNfdywgc3JjX2gpOwo+ID4gICAgICAgb3V0c2l6ZSA9IFNVTjhJX01J
WEVSX1NJWkUoZHN0X3csIGRzdF9oKTsKPiA+Cj4gPiAtICAgICBpZiAocGxhbmUtPnR5cGUgPT0g
RFJNX1BMQU5FX1RZUEVfUFJJTUFSWSkgewo+ID4gLSAgICAgICAgICAgICBib29sIGludGVybGFj
ZWQgPSBmYWxzZTsKPiA+IC0gICAgICAgICAgICAgdTMyIHZhbDsKPiA+IC0KPiA+IC0gICAgICAg
ICAgICAgRFJNX0RFQlVHX0RSSVZFUigiUHJpbWFyeSBsYXllciwgdXBkYXRpbmcgZ2xvYmFsIHNp
emUKPiBXOiAldSBIOiAldVxuIiwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBk
c3RfdywgZHN0X2gpOwo+ID4gLSAgICAgICAgICAgICByZWdtYXBfd3JpdGUobWl4ZXItPmVuZ2lu
ZS5yZWdzLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgU1VOOElfTUlYRVJfR0xPQkFM
X1NJWkUsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICBvdXRzaXplKTsKPiA+IC0gICAg
ICAgICAgICAgcmVnbWFwX3dyaXRlKG1peGVyLT5lbmdpbmUucmVncywKPiA+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgIFNVTjhJX01JWEVSX0JMRU5EX09VVFNJWkUoYmxkX2Jhc2UpLAo+IG91
dHNpemUpOwo+ID4gLQo+ID4gLSAgICAgICAgICAgICBpZiAoc3RhdGUtPmNydGMpCj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgaW50ZXJsYWNlZCA9IHN0YXRlLT5jcnRjLT5zdGF0ZS0KPiA+YWRq
dXN0ZWRfbW9kZS5mbGFncwo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJiBEUk1f
TU9ERV9GTEFHX0lOVEVSTEFDRTsKPiA+IC0KPiA+IC0gICAgICAgICAgICAgaWYgKGludGVybGFj
ZWQpCj4gPiAtICAgICAgICAgICAgICAgICAgICAgdmFsID0gU1VOOElfTUlYRVJfQkxFTkRfT1VU
Q1RMX0lOVEVSTEFDRUQ7Cj4gPiAtICAgICAgICAgICAgIGVsc2UKPiA+IC0gICAgICAgICAgICAg
ICAgICAgICB2YWwgPSAwOwo+ID4gLQo+ID4gLSAgICAgICAgICAgICByZWdtYXBfdXBkYXRlX2Jp
dHMobWl4ZXItPmVuZ2luZS5yZWdzLAo+ID4gLQo+IFNVTjhJX01JWEVSX0JMRU5EX09VVENUTChi
bGRfYmFzZSksCj4gPiAtCj4gU1VOOElfTUlYRVJfQkxFTkRfT1VUQ1RMX0lOVEVSTEFDRUQsCj4g
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2YWwpOwo+ID4gLQo+ID4gLSAgICAg
ICAgICAgICBEUk1fREVCVUdfRFJJVkVSKCJTd2l0Y2hpbmcgZGlzcGxheSBtaXhlciBpbnRlcmxh
Y2VkCj4gbW9kZSAlc1xuIiwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnRl
cmxhY2VkID8gIm9uIiA6ICJvZmYiKTsKPiA+IC0gICAgIH0KPiA+IC0KPiA+ICAgICAgIC8qIFNl
dCBoZWlnaHQgYW5kIHdpZHRoICovCj4gPiAgICAgICBEUk1fREVCVUdfRFJJVkVSKCJMYXllciBz
b3VyY2Ugb2Zmc2V0IFg6ICVkIFk6ICVkXG4iLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICBz
dGF0ZS0+c3JjLngxID4+IDE2LCBzdGF0ZS0+c3JjLnkxID4+IDE2KTsKPgo+Cj4KPgo+Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
