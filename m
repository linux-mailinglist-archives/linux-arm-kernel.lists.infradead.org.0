Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6565D817A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iPBOgKtYjFuJDQCY1szZQlCugAyt1ma54SDqNyiTxFY=; b=qgJm/yN4pKrDFaMzJcVy6Hq07r
	iQgXNLnioGYN9lCFkpTmoK+FXRIetRJ7/WhiKGYaSZ5T3fQHvgnJpV6KujybZBuN2QXSZSJu7yCXE
	zbYhXHIIjmHNa0Rp+G5DNq/XxESDlQpp0zF6AcQI6dsHiGjq/TTr3t2N6/xHaK6eBnOdnQ1H/kf1i
	phOBVpKl2qSjP6NUdEyGb/GE2Bw1wcEyVS3ZAOII9XRJarcI9PHtnO0HlKNkQbeWKoyIz3RZDzxeG
	8T5leQYSkNqPD1YSnnDdz+qfKMNIRl6Sj+9waeNb3Sz7cag5TLttwp35rIjGkw3Eq1PumVUupO1VC
	KuteAatw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaeU-0006e3-Cl; Mon, 05 Aug 2019 10:55:42 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huadO-0005HP-AI
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:54:36 +0000
Received: by mail-ed1-f67.google.com with SMTP id k8so78194373eds.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:54:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=Sv8pVXgrrDrbIAonY+C88fg7ixy9vYBYQXBP0fHLLv8=;
 b=rSq6wNf04JeVXAYPy5hVS9xldO9tfT4+9V8yDC/bB0k4ktfBGYCn6aI5M+T/X/tRv8
 z9JsIsyjTHc2gnEsKqOazc5RzSXIjEN76P9YL+bMR0lrSUzKm5CN7sDUNIJmizHiYS/o
 gzlqn/bYgGZlChQ2eMK/iCiCPhKeL21f2aG1eBy6NrSeWqkLTOEDz9IK6sIyfjzihUbq
 7JcPdsJ0VbNv05v1sa4bCeQxU7Ds84z+ApgdESyNuY18OcTetEaP7itLoqSsI2Uv2Qsj
 K/rSOYJnq2wPgvvatfgX0V7DP/D5PcU6e5VrFRYTbPXGFP2CbctllIP7/myZrD8pTSeU
 vYdA==
X-Gm-Message-State: APjAAAUCLM95pODEMBtHFy04nQ7CPTRoaAua1nJL5MCQeY+G+w70ce2h
 6y22zpL24nhCKkrqd+sdTxchB0RFwGY=
X-Google-Smtp-Source: APXvYqzMQGv8cPjTGuHVzGt/UZt+SdS+Jts+VaZUi+DIcf5pbI+6viSG592bDhANt6+gaEUieclw5Q==
X-Received: by 2002:a50:fa83:: with SMTP id w3mr132957626edr.47.1565002471644; 
 Mon, 05 Aug 2019 03:54:31 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43])
 by smtp.gmail.com with ESMTPSA id y22sm19011095edw.94.2019.08.05.03.54.30
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 03:54:31 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id g67so68427489wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:54:30 -0700 (PDT)
X-Received: by 2002:a1c:c545:: with SMTP id v66mr18768923wmf.51.1565002470670; 
 Mon, 05 Aug 2019 03:54:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190412120730.473-1-megous@megous.com>
 <20190412120730.473-3-megous@megous.com>
 <CAGb2v675j-aCLMgPJOzr9yx1XxsUvHRr_K7VnL=p8mSdwpu2jw@mail.gmail.com>
 <20190805104529.z3mex3m2tss7lzlr@core.my.home>
In-Reply-To: <20190805104529.z3mex3m2tss7lzlr@core.my.home>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 5 Aug 2019 18:54:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v67pcxdxjdRX_HN4133A32eA566DDtUJUKV7pqzxDtOaeg@mail.gmail.com>
Message-ID: <CAGb2v67pcxdxjdRX_HN4133A32eA566DDtUJUKV7pqzxDtOaeg@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/3] rtc: sun6i: Add support for H6 RTC
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>, 
 Chen-Yu Tsai <wens@csie.org>, Alessandro Zummo <a.zummo@towertech.it>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-rtc@vger.kernel.org, devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_035434_467630_94D30E15 
X-CRM114-Status: GOOD (  31.65  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCA2OjQ1IFBNIE9uZMWZZWogSmlybWFuIDxtZWdvdXNAbWVn
b3VzLmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIEF1ZyAwNSwgMjAxOSBhdCAwNjoxNjoxNFBNICsw
ODAwLCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4gPiBPbiBGcmksIEFwciAxMiwgMjAxOSBhdCA4OjA3
IFBNIG1lZ291cyB2aWEgbGludXgtc3VueGkKPiA+IDxsaW51eC1zdW54aUBnb29nbGVncm91cHMu
Y29tPiB3cm90ZToKPiA+ID4KPiA+ID4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291
cy5jb20+Cj4gPiA+Cj4gPiA+IFJUQyBvbiBINiBpcyBtb3N0bHkgdGhlIHNhbWUgYXMgb24gSDUg
YW5kIEgzLiBJdCBoYXMgc2xpZ2h0IGRpZmZlcmVuY2VzCj4gPiA+IG1vc3RseSBpbiBmZWF0dXJl
cyB0aGF0IGFyZSBub3QgeWV0IHN1cHBvcnRlZCBieSB0aGlzIGRyaXZlci4KPiA+ID4KPiA+ID4g
U29tZSBkaWZmZXJlbmNlcyBhcmUgYWxyZWFkeSBzdGF0ZWQgaW4gdGhlIGNvbW1lbnRzIGluIGV4
aXN0aW5nIGNvZGUuCj4gPiA+IE9uZSBvdGhlciBkaWZmZXJlbmNlIGlzIHRoYXQgSDYgaGFzIGV4
dHJhIGJpdCBpbiBMT1NDX0NUUkxfUkVHLCBjYWxsZWQKPiA+ID4gRVhUX0xPU0NfRU4gdG8gZW5h
YmxlL2Rpc2FibGUgZXh0ZXJuYWwgbG93IHNwZWVkIGNyeXN0YWwgb3NjaWxsYXRvci4KPiA+ID4K
PiA+ID4gSXQgYWxzbyBoYXMgYml0IEVYVF9MT1NDX1NUQSBpbiBMT1NDX0FVVE9fU1dUX1NUQV9S
RUcsIHRvIGNoZWNrIHdoZXRoZXIKPiA+ID4gZXh0ZXJuYWwgbG93IHNwZWVkIG9zY2lsbGF0b3Ig
aXMgd29ya2luZyBjb3JyZWN0bHkuCj4gPiA+Cj4gPiA+IFRoaXMgcGF0Y2ggYWRkcyBzdXBwb3J0
IGZvciBlbmFibGluZyBMT1NDIHdoZW4gbmVjZXNzYXJ5Ogo+ID4gPgo+ID4gPiAtIGR1cmluZyBy
ZXBhcmVudGluZwo+ID4gPiAtIHdoZW4gcHJvYmluZyB0aGUgY2xvY2sKPiA+ID4KPiA+ID4gSDYg
YWxzbyBoYXMgY2FwYWNiaWxpdHkgdG8gYXV0b21hdGljYWxseSByZXBhcmVudCBSVEMgY2xvY2sg
ZnJvbQo+ID4gPiBleHRlcm5hbCBjcnlzdGFsIG9zY2lsbGF0b3IsIHRvIGludGVybmFsIFJDIG9z
Y2lsbGF0b3IsIGlmIGV4dGVybmFsCj4gPiA+IG9zY2lsbGF0b3IgZmFpbHMuIFRoaXMgaXMgZW5h
YmxlZCBieSBkZWZhdWx0LiBEaXNhYmxlIGl0IGR1cmluZwo+ID4gPiBwcm9iZS4KPiA+ID4KPiA+
ID4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiA+
IC0tLQo+ID4gPiAgZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMgfCA0MCArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKy0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzggaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cnRjL3J0Yy1zdW42aS5jIGIvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMKPiA+ID4gaW5kZXggMTFm
NTZkZTUyMTc5Li43Mzc1YTUzMGM1NjUgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcnRjL3J0
Yy1zdW42aS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvcnRjL3J0Yy1zdW42aS5jCj4gPiA+IEBAIC00
MSw5ICs0MSwxMSBAQAo+ID4gPiAgLyogQ29udHJvbCByZWdpc3RlciAqLwo+ID4gPiAgI2RlZmlu
ZSBTVU42SV9MT1NDX0NUUkwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDB4MDAwMAo+
ID4gPiAgI2RlZmluZSBTVU42SV9MT1NDX0NUUkxfS0VZICAgICAgICAgICAgICAgICAgICAoMHgx
NmFhIDw8IDE2KQo+ID4gPiArI2RlZmluZSBTVU42SV9MT1NDX0NUUkxfQVVUT19TV1RfQllQQVNT
ICAgICAgICAgICAgICAgIEJJVCgxNSkKPiA+Cj4gPiBNYW51YWwgc2F5cyBiaXQgMTQ/IE9yIGlz
IHRoaXMgZGlmZmVyZW50IGZyb20gTE9TQ19BVVRPX1NXVF9FTj8KPiA+Cj4gPiBUaGUgcmVzdCBs
b29rcyBvay4KPgo+IFRvIGdpdmUgeW91IG1vcmUgaW5mb3JtYXRpb24uIFRoaXMgaXMgYSBuZXcg
dGhpbmcgaW4gSDYgQlNQLCBjb21wYXJlZAo+IHRvIEJTUHMgZm9yIHByZXZpb3VzIFNvQ3MgKEg1
L0gzKS4KPgo+ICAyMCAjZGVmaW5lIFJFR19DTEszMktfQVVUT19TV1RfRU4gICAgICAgICAgICAg
ICAgICBCSVQoMTQpCj4gIDIxICNkZWZpbmUgUkVHX0NMSzMyS19BVVRPX1NXVF9CWVBBU1MgICAg
ICAgICAgICAgIEJJVCgxNSkKPgo+IEluaXQgc2VxdWVuY2UgY2hhbmdlZCBpbiBINiBCU1AgdG86
Cj4KPiA2NDYgICAgICAgICAvKgo+IDY0NyAgICAgICAgICAqIFN0ZXAxOiBzZWxlY3QgUlRDIGNs
b2NrIHNvdXJjZQo+IDY0OCAgICAgICAgICAqLwo+IDY0OSAgICAgICAgIHRtcF9kYXRhID0gcmVh
ZGwoY2hpcC0+YmFzZSArIFNVTlhJX0xPU0NfQ1RSTCk7Cj4gNjUwICAgICAgICAgdG1wX2RhdGEg
Jj0gKH5SRUdfQ0xLMzJLX0FVVE9fU1dUX0VOKTsKPiA2NTEKPiA2NTIgICAgICAgICAvKiBEaXNh
YmxlIGF1dG8gc3dpdGNoIGZ1bmN0aW9uICovCj4gNjUzICAgICAgICAgdG1wX2RhdGEgfD0gUkVH
X0NMSzMyS19BVVRPX1NXVF9CWVBBU1M7Cj4gNjU0ICAgICAgICAgd3JpdGVsKHRtcF9kYXRhLCBj
aGlwLT5iYXNlICsgU1VOWElfTE9TQ19DVFJMKTsKPiA2NTUKPiA2NTYgICAgICAgICB0bXBfZGF0
YSA9IHJlYWRsKGNoaXAtPmJhc2UgKyBTVU5YSV9MT1NDX0NUUkwpOwo+IDY1NyAgICAgICAgIHRt
cF9kYXRhIHw9IChSVENfU09VUkNFX0VYVEVSTkFMIHwgUkVHX0xPU0NDVFJMX01BR0lDKTsKPiA2
NTggICAgICAgICB3cml0ZWwodG1wX2RhdGEsIGNoaXAtPmJhc2UgKyBTVU5YSV9MT1NDX0NUUkwp
Owo+IDY1OQo+IDY2MCAgICAgICAgIC8qIFdlIG5lZWQgdG8gc2V0IEdTTSBhZnRlciBjaGFuZ2Ug
Y2xvY2sgc291cmNlICovCj4gNjYxICAgICAgICAgdWRlbGF5KDEwKTsKPiA2NjIgICAgICAgICB0
bXBfZGF0YSA9IHJlYWRsKGNoaXAtPmJhc2UgKyBTVU5YSV9MT1NDX0NUUkwpOwo+IDY2MyAgICAg
ICAgIHRtcF9kYXRhIHw9IChFWFRfTE9TQ19HU00gfCBSRUdfTE9TQ0NUUkxfTUFHSUMpOwo+IDY2
NCAgICAgICAgIHdyaXRlbCh0bXBfZGF0YSwgY2hpcC0+YmFzZSArIFNVTlhJX0xPU0NfQ1RSTCk7
Cj4gNjY1CgpJIGRvbid0IGhhdmUgdGhpcyBpbiBteSBINiBCU1BzLiBPbmUgaXMgSDYgTGljaGVl
IHYxLjEgZG93bmxvYWRlZCBmcm9tIFBpbmU2NC4KVGhlIGxpbmsgd2FzIGZyb20gbGludXgtc3Vu
eGkgd2lraSdzIEg2IHBhZ2UuCgpUaGUgb3RoZXIgaXMgYSA0Ljkga2VybmVsIHRyZWUsIHdoaWNo
IEkgYmVsaWV2ZSBpcyBmcm9tIEFsbHdpbm5lcidzIGdpdGh1YjoKCiAgICBodHRwczovL2dpdGh1
Yi5jb20vQWxsd2lubmVyLUhvbWxldC9INi1CU1A0LjktbGludXgKCj4gRm9yIG9sZGVyIEJTUHMs
IHRoZSBpbml0IHNlcXVlbmNlIGxvb2tlZCBsaWtlIHRoaXM6Cj4KPiA0ODIgICAgICAgICAvKgo+
IDQ4MyAgICAgICAgICAqIFN0ZXAxOiBzZWxlY3QgUlRDIGNsb2NrIHNvdXJjZQo+IDQ4NCAgICAg
ICAgICAqLwo+IDQ4NSAgICAgICAgIHRtcF9kYXRhID0gc3VueGlfcnRjX3JlYWQoU1VOWElfTE9T
Q19DVFJMX1JFRyk7Cj4gNDg2ICAgICAgICAgdG1wX2RhdGEgJj0gKH5SRUdfQ0xLMzJLX0FVVE9f
U1dUX0VOKTsKPiA0ODcgICAgICAgICB0bXBfZGF0YSB8PSAoUlRDX1NPVVJDRV9FWFRFUk5BTCB8
IFJFR19MT1NDQ1RSTF9NQUdJQyk7Cj4gNDg4ICAgICAgICAgdG1wX2RhdGEgfD0gKEVYVF9MT1ND
X0dTTSk7Cj4gNDg5ICAgICAgICAgc3VueGlfcnRjX3dyaXRlKHRtcF9kYXRhLCBTVU5YSV9MT1ND
X0NUUkxfUkVHKTsKPiA0OTAKPgo+IEVYVF9MT1NDX0dTTSBoYXMgdmFsdWVzIDQgdmFsdWVzIGZy
b20gbG93IHRvIGhpZ2gsIGFuZCBJIGd1ZXNzIGl0IGNvbmZpZ3VyZXMKPiBnYWluIGZvciB0aGUg
b3NjaWxsYXRvcidzIGFtcGxpZmllciBpbiB0aGUgZmVlZGJhY2sgbG9vcCBvZiB0aGUgY2lyY3Vp
dC4KPgo+IFNvIHRoZSBuZXcgY29kZSwgZm9yIHNvbWUgcmVhc29uIGNoYW5nZWQgZnJvbSBzaW5n
bGUgd3JpdGUgdG8gc2VxdWVuY2UKPiBvZiBpbmRpdmlkdWFsIHdyaXRlcy9jb25maWcgc3RlcHM6
Cj4KPiAxKSBkaXNhYmxlIGF1dG8tc3dpdGNoIGFuZCBlbmFibGUgYXV0by1zd2l0Y2ggYnlwYXNz
Cj4gMikgc2VsZWN0IFJUQyBjbG9jayBzb3VyY2UgKHRvIExPU0MpCj4gICAod2FpdCkKCk1heWJl
IGl0J3MgcG9zc2libGUgdG8gZ2xpdGNoIGlmIHRoZXNlIHR3byBhcmUgY29tYmluZWQ/Cgo+IDMp
IGNvbmZpZ3VyZSBnYWluIG9uIHRoZSBMT1NDCj4KPiByZWdhcmRzLAo+ICAgICAgICAgby4KPgo+
ID4gQ2hlbll1Cj4KPiAtLQo+IFlvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3Ug
YXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgImxpbnV4LXN1bnhpIiBncm91cC4K
PiBUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWls
cyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIGxpbnV4LXN1bnhpK3Vuc3Vic2NyaWJlQGdvb2ds
ZWdyb3Vwcy5jb20uCj4gVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdlYiwgdmlzaXQg
aHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LXN1bnhpLzIwMTkwODA1MTA0
NTI5LnozbWV4M20ydHNzN2x6bHIlNDBjb3JlLm15LmhvbWUuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
