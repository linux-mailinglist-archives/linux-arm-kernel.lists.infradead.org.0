Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2373A2002EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 09:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfGw2MPDhrRdWBkW3NdZbPArSSpx7rWMAWaQEaXdrnU=; b=ATX4G4c8Vqk5y3
	q9XxRYIafQ+pxMu7WODtKz1eRzINwInMS7jo0anSHbFxrR9kAo6shP08kjtBmgoQAtw60DCvs9Toi
	Q/aecuqcSDJk8qv8gkhRn1i+1nHzBMh7oieNbkIVViwVyQFQpKTjTbWqj+XkvKAkT9MVQJxGjtarY
	LYhumzDrgqV/l41/eSjHJS3e7zLFwlkZQNOdIjv03LTuqeUzVfML0uOtthU8wEop2+cpcnfsocw8f
	ivYiNpYHf1Vs27JzDiPyLGy+Kcx7ibzaeH6dt9jH/D/1ZsS3WbdDsWojZiMimUa896HistRsJirKi
	0oNr5+hCMPGDYUDW7vrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmBhJ-0006CP-GZ; Fri, 19 Jun 2020 07:44:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBh7-0006Bv-CH
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 07:44:15 +0000
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6DA0C214D8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 07:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592552652;
 bh=UdDU2Ya8vvambIemCpJSHDyYc3tTlgjpyYV4GqGjg7c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=x4gR7SivjA0NaN3zVriYZxI06Of4cPLXFhY7saGIN+j0SGoA/uS6U3hEhXvrCvQGp
 zvUIrIwCWpKO52kedNkvexEt8/110ih9j03LnJ82GqFUI3WyIfgyg9BFs6RYiu+0c3
 NzvyYl/NLT94Yf3vnqKVdKMx6hcFWXpI2vUq3E2w=
Received: by mail-lj1-f182.google.com with SMTP id 9so10373292ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 00:44:12 -0700 (PDT)
X-Gm-Message-State: AOAM533L3PTohnMMG4lxx6qajMgyjUzccRIs4O3WocmyzWKWnNvYV9YQ
 /5PCqxQcsAYLJ2PieuaJCnIPQx98aUHyEI5n2PE=
X-Google-Smtp-Source: ABdhPJxpgPxVbsbdq4U2Eaj5lpIoQ25R0xdkESNoUt3toyGEX1pPhSRtMLztuyplRf2KFBgpuHYhG9cYIJBoEC1f1Mo=
X-Received: by 2002:a2e:8896:: with SMTP id k22mr1087416lji.331.1592552650603; 
 Fri, 19 Jun 2020 00:44:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200618080223.951737-1-lee.jones@linaro.org>
 <CAK8P3a3iRmXC2jDj92QHKqyD+x_UJ7rWU_KcGt=MFOD9UW38RA@mail.gmail.com>
 <20200618100704.GC954398@dell>
 <CAGb2v67GJUzomptOzzvafcQ-wAqrJvNNeEZsY7gVQ_kByqBT8w@mail.gmail.com>
 <20200619064141.GK954398@dell>
In-Reply-To: <20200619064141.GK954398@dell>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 19 Jun 2020 15:43:57 +0800
X-Gmail-Original-Message-ID: <CAGb2v65aAAegOCdMYF=VkTT8pWwuT9d=mhVKCSwztecMJa-ung@mail.gmail.com>
Message-ID: <CAGb2v65aAAegOCdMYF=VkTT8pWwuT9d=mhVKCSwztecMJa-ung@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] mfd: Add I2C based System Configuaration (SYSCON)
 access
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_004413_453076_9F781274 
X-CRM114-Status: GOOD (  37.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Arnd Bergmann <arnd@arndb.de>, gregkh <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, michael@walle.cc,
 Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMjo0MSBQTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IE9uIEZyaSwgMTkgSnVuIDIwMjAsIENoZW4tWXUgVHNhaSB3cm90
ZToKPgo+ID4gT24gVGh1LCBKdW4gMTgsIDIwMjAgYXQgNjowNyBQTSBMZWUgSm9uZXMgPGxlZS5q
b25lc0BsaW5hcm8ub3JnPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gVGh1LCAxOCBKdW4gMjAyMCwg
QXJuZCBCZXJnbWFubiB3cm90ZToKPiA+ID4KPiA+ID4gPiBPbiBUaHUsIEp1biAxOCwgMjAyMCBh
dCAxMDowMyBBTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPiB3cm90ZToKPiA+ID4g
PiA+Cj4gPiA+ID4gPiBUaGUgZXhpc3RpbmcgU1lTQ09OIGltcGxlbWVudGF0aW9uIG9ubHkgc3Vw
cG9ydHMgTU1JTyAobWVtb3J5IG1hcHBlZCkKPiA+ID4gPiA+IGFjY2Vzc2VzLCBmYWNpbGl0YXRl
ZCBieSBSZWdtYXAuICBUaGlzIGV4dGVuZHMgc3VwcG9ydCBmb3IgcmVnaXN0ZXJzCj4gPiA+ID4g
PiBoZWxkIGJlaGluZCBJMkMgYnVzc2VzLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gPiA+ID4KPiA+ID4gPiBUaGUg
aW1wbGVtZW50YXRpb24gbG9va3MgZmluZSB0byBtZSwgYnV0IGNhbiB5b3UgZXhwbGFpbiBob3cg
dGhpcyBpcyBnb2luZyB0bwo+ID4gPiA+IGJlIHVzZWQsIGFuZCB3aGF0IHRoZSBhZHZhbnRhZ2Ug
aXMgb3ZlciBvcGVuLWNvZGluZyB0aGUgZGV2bV9yZWdtYXBfaW5pdF9pMmMoKQo+ID4gPiA+IGlu
IGVhY2ggZHJpdmVyIHRoYXQgd291bGQgdXNlIHRoaXM/Cj4gPiA+Cj4gPiA+IERvZXMgUmVnbWFw
IGxldCB5b3UgcmVnaXN0ZXIvaW5pdGlhbGlzZSBhbiBJMkMgYWRkcmVzcyBtb3JlIHRoYW4gb25j
ZT8KPiA+ID4KPiA+ID4gV2hlbiBJIGF0dGVtcHQgaXQsIEkgZ2V0Ogo+ID4gPgo+ID4gPiBbICAg
IDAuNTIyOTg4XSBpMmMgaTJjLTA6IEZhaWxlZCB0byByZWdpc3RlciBpMmMgY2xpZW50IHRtcDEw
NSBhdCAweDMyICgtMTYpCj4gPiA+IFsgICAgMC41MjMzNDFdIGkyYyBpMmMtMDogb2ZfaTJjOiBG
YWlsdXJlIHJlZ2lzdGVyaW5nIC9idXNANDAwMDAwMC9tb3RoZXJib2FyZC9pb2ZwZ2FANywwMDAw
MDAwMC9pMmNAMTYwMDAvdGVtcEAzMgo+ID4gPiBbICAgIDAuNTIzNjkxXSBpMmMgaTJjLTA6IEZh
aWxlZCB0byBjcmVhdGUgSTJDIGRldmljZSBmb3IgL2J1c0A0MDAwMDAwL21vdGhlcmJvYXJkL2lv
ZnBnYUA3LDAwMDAwMDAwL2kyY0AxNjAwMC90ZW1wQDMyCj4gPiA+Cj4gPiA+ID4gSXMgdGhpcyBh
Ym91dCB1c2luZyBwcm9wZXIgbG9ja2luZyB0aHJvdWdoIHRoZSByZWdtYXAgZnJhbWV3b3JrIGZv
cgo+ID4gPiA+IHNoYXJlZCBpMmMgY2xpZW50cywgb3IgdG8gcmVkdWNlIG1lbW9yeSBjb25zdW1w
dGlvbiB3aGVuIGxvdHMgb2YgZHJpdmVycwo+ID4gPiA+IGFjY2VzcyB0aGUgc2FtZSByZWdtYXA/
Cj4gPiA+Cj4gPiA+IEFsbCBvZiB0aG9zZSB0aGluZ3MgYXJlIHZhbGlkLgo+ID4gPgo+ID4gPiBN
eSB1c2UtY2FzZSBpcyByZWdhcmRpbmcgTUZEcyBzaGFyaW5nIGFuIEkyQyBpbnRlcmZhY2VkIGFk
ZHJlc3Mgc3BhY2UKPiA+ID4gd2l0aCB0aGVpciBjaGlsZHJlbi4KPiA+Cj4gPiBJcyB0aGF0IGFu
IGlzc3VlIHdpdGggdGhlIHN0YW5kYXJkIG1mZCArIHJlZ21hcCBwYXR0ZXJuPwo+Cj4gVGhlcmUg
aXMgbm8gcmVsYXRpb25zaGlwIGJldHdlZW4gTUZEIGFuZCBSZWdtYXAuICBJdCBpcyBub3QgbW9y
ZQo+IGNsb3NlbHkgcmVsYXRlZCB0byBSZWdtYXAgdGhhbiBpdCBpcyBhbnkgb3RoZXIgcHVibGlj
IEFQSSBwcm92aWRlZAo+IHdpdGhpbiB0aGUga2VybmVsLiAgKlNvbWUqIHBhcmVudCBkcml2ZXJz
IGluaXRpYWxpc2Ugb25lIGxhcmdlLAo+IGVuY29tcGFzc2luZyBSZWdtYXAgYWRkcmVzcyBzcGFj
ZSBhbmQgcGFzcyBpdCB0byB0aGVpciBjaGlsZHJlbiwgYnV0Cj4gdGhpcyBpc24ndCBzdWl0YWJs
ZSBpbiBhbGwgY2FzZXMuCj4KPiA+IEZvciB0aGUgQVhQMjB4IFBNSUNzLCB3ZSByZWdpc3RlciB0
aGUgcmVnbWFwIGluIHRoZSBwYXJlbnQgbWZkIGRyaXZlciBbMV0sCj4gPiBhbmQgc3RvcmUgdGhh
dCBpbiBkZXZfZGF0YSBmb3IgY2hpbGQgZHJpdmVycyB0byBmZXRjaCBbMl0uIFlvdSBjb3VsZAo+
ID4gZWFzaWx5IGp1c3QgZmV0Y2ggdGhlIHJlZ21hcCB3aXRoIGRldl9nZXRfcmVnbWFwKCkgYW5k
IGEgcG9pbnRlciB0byB0aGUKPiA+IHBhcmVudCBkZXZpY2UuCj4KPiBSZW1lbWJlciwgbm90IGFs
bCB1c2UtY2FzZXMgYXJlIHRoZSBzYW1lLiAgSnVzdCBiZWNhdXNlIHlvdXIgSC9XIGZpdHMKPiB3
ZWxsIHdpdGhpbiB0aGUgY3VycmVudCBmcmFtZXdvcmssIGRvZXNuJ3QgbWVhbiBhbGwgd2lsbC4K
Pgo+IEluaXRpYWxpc2luZyBpbiB0aGUgcGFyZW50IGlzIG5vIHByb2JsZW0gaWYgdGhlIGRyaXZl
ciBpcyBtZWFuaW5nZnVsCj4gaW4gb3RoZXIgd2F5cywgYnV0IHdoYXQgaWYgdGhhdCdzIGFsbCB0
aGUgcGFyZW50IGRyaXZlciBkb2VzPyAgSW4KPiB0aGVzZSBjYXNlcyBTeXNjb24gY2FuIGJlIHVz
ZWQgaW5zdGVhZCwgcmVuZGVyaW5nIHRoZSBkcml2ZXIKPiBzdXBlcmZsdW91cy4gTWVhbmluZyBp
dCBjYW4gKGFuZCAqc2hvdWxkKikgdGhlbiBiZSBvbWl0dGVkLgoKSSdtIGd1ZXNzaW5nIGluIHlv
dXIgdXNlIGNhc2UgdGhlcmUgaXNuJ3QgYSBuZWVkIGZvciBhIHBhcmVudCBkcml2ZXIsCmFuZCB5
b3UgYXJlIGxvb2tpbmcgZm9yIHNvbWV0aGluZyBsaWtlICJzaW1wbGUtbWZkIiwgYnV0IGZvciBs
aXN0aW5nCnN1Yi1kZXZpY2VzIHdpdGhpbiBhbiBJMkMgc2xhdmUgZGV2aWNlPyBJbiB0aGF0IGNh
c2UgSSB1bmRlcnN0YW5kLgoKPiA+ID4gPiBNeSBpbXByZXNzaW9uIG9mIHRoZSBleGlzdGluZyBz
eXNjb24gY29kZSBpcyB0aGF0IHRoZSBtYWluIHZhbHVlLWFkZCBvdmVyCj4gPiA+ID4gb3RoZXIg
d2F5cyBvZiBkb2luZyB0aGUgc2FtZSBpcyB0aGUgc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhh
bmRsZSgpCj4gPiA+ID4gaW50ZXJmYWNlIHRoYXQgZ2l2ZXMgb3RoZXIgZHJpdmVycyBhIG11Y2gg
c2ltcGxlciB3YXkgb2YgZ2V0dGluZyB0aGUKPiA+ID4gPiByZWdtYXAganVzdCBiYXNlZCBvbiB0
aGUgRFQgbm9kZS4gQXJlIHlvdSBwbGFubmluZyB0byBhZGQgc29tZXRoaW5nCj4gPiA+ID4gbGlr
ZSB0aGF0IGhlcmUgYXMgd2VsbD8gQW4gaWRlYWwgZHJpdmVyIGludGVyZmFjZSBtaWdodCBhbGxv
dwo+ID4gPiA+IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGUoKSB0byB3b3JrIGZvciBi
b3RoIG1taW8gYW5kIGkyYwo+ID4gPiA+IGJhc2VkIHN5c2NvbnMsIG9yIGFkZGl0aW9uYWwgb25l
cyBhcyB3ZWxsLCBidXQgaW1wbGVtZW50aW5nIHRoaXMgd291bGQKPiA+ID4gPiBiZSByYXRoZXIg
dHJpY2t5IHdoZW4gdGhlIGkyYyBjb3JlIGlzIGEgbG9hZGFibGUgbW9kdWxlLgo+ID4KPiA+IFRo
ZSBjdXJyZW50IE1NSU8gc3lzY29uIGlzIGRlY291cGxlZCBmcm9tIHRoZSBETSwgYW5kIHRoZXJl
IGlzIG5vIHdheQo+ID4gZm9yIGRyaXZlcnMgdG8gZXhwb3J0IG9yIHJlZ2lzdGVyIGEgc3lzY29u
LCBtZWFuaW5nIEkgaGF2ZSB0byBvcGVuIGNvZGUKPiA+IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5
X3BoYW5kbGUoKSBbM10gaWYgSSB3YW50IHRvIG9ubHkgZXhwb3NlIGNlcnRhaW4KPiA+IHJlZ2lz
dGVycyBhbmQgbm90IHRoZSBmdWxsIGFkZHJlc3MgcmFuZ2UsIG9yIGlmIEkgd2FudCB0byBzaGFy
ZSB0aGUKPiA+IHJlZ21hcCB3aXRoIHRoZSBleGlzdGluZyBkcml2ZXIgKGZvciBsb2NraW5nIHB1
cnBvc2VzKSwgb3IgYm90aCBbNF0uCj4KPiBOb3Qgc3VyZSBJIHVuZGVyc3RhbmQgdGhlIHByb2Js
ZW0uCj4KPiBDb3VsZCB5b3UgZXhwbGFpbiB3aHkgdGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24g
ZG9lc24ndCB3b3JrIGZvciB5b3U/Cj4KPiBPcGVuIGNvZGluZyB5b3VyIG93biBpbXBsZW1lbnRh
dGlvbiBvZiBTeXNjb24gaXMgbm9uLW9wdGltYWwuCgpGb3IgdGhlIERXTUFDIEV0aGVybmV0IGNv
bnRyb2xsZXJzLCB0aGUgcGxhdGZvcm0gZ2x1ZSBhbG1vc3QgYWx3YXlzIGhhcwphIHJlZ2lzdGVy
IGZvciB0dW5pbmcgdGhlIGRlbGF5cyBvZiB0aGUgVFggYW5kIFJYIGNsb2Nrcy4gSW4gYWxtb3N0
IGFsbApsYXRlciBBbGx3aW5uZXIgY2hpcHMsIHRoaXMgaXMgaW4gYSBzZXBhcmF0ZSBhcmVhLCB3
aGljaCB3ZSB1c2UgYSBzeXNjb24KZm9yLiBIb3dldmVyIGluIG9uZSBoeWJyaWQgY2hpcCwgdGhp
cyBpcyBsb2NhdGVkIGluIHRoZSBjbG9jayBjb250cm9sbGVyLgpXZSBkZWVtZWQgaXQgcmlza3kg
dG8gYWxzbyBoYXZlIHRoZSB3aG9sZSBjbG9jayBjb250cm9sbGVyIGFkZHJlc3MgcmFuZ2UKbWFw
cGVkIGFzIGEgc3lzY29uLCBhbmQgc28gd2UgZXhwb3J0IGEgY3VzdG9tIHJlZ21hcC4KClRoZSBF
dGhlcm5ldCBkcml2ZXIgaGFzIHRvIGRlYWwgd2l0aCBib3RoIGNhc2VzLgoKTG9va2luZyBhdCBp
dCBhZ2Fpbiwgc2luY2Ugc3lzY29uIHN0aWxsIGhhcyBhIHBsYXRmb3JtIGRyaXZlciwgbWF5YmUg
SQpzaG91bGQganVzdCB1c2UgdGhlIGRldl9nZXRfcmVnbWFwKCkgcm91dGUgZm9yIGJvdGggY2Fz
ZXMuCgo+ID4gTWF5YmUgdGhlcmUncyByb29tIGZvciBpbXByb3ZlbWVudCBoZXJlPyBUaGUgc2Ft
ZSBhcHBsaWVzIHRvIHRoZSBuZXcKPiA+IEkyQyBjYXNlLCBhbmQgbGlrZWx5IGFueSBvdGhlciBm
dXR1cmUgc3lzY29uIHZhcmlhbnRzLgo+ID4KPiA+IElNSE8gcGVvcGxlIGFyZSBnZXR0aW5nIGl0
IHdyb25nIGlmIHRoZXkgaGF2ZSBib3RoIGEgc3lzY29uIGFuZCBhIGRyaXZlcgo+ID4gZm9yIHRo
ZSBzYW1lIGRldmljZS4KPgo+IFN5c2NvbiBpcyBqdXN0IGEgbWVhbnMgdG8gb2J0YWluIGEgZ3Jv
dXAgb2YgcmVnaXN0ZXJzIGVpdGhlciBhKQo+IHdpdGhvdXQgYSBkZWRpY2F0ZWQgZHJpdmVyIE9S
IGIpIHRvIHNoYXJlIGFtb25nc3QgbW9yZSB0aGFuIDEsCj4gcG90ZW50aWFsbHkgdW5yZWxhdGVk
LCB1c2VyLiAgU28gaW4gdGhlIGNhc2Ugb2YgYSkgd2hpY2ggYXBwZWFycyB0bwo+IHNpdCB3ZWxs
IHdpdGgtaW4geW91ciB1c2UtY2FzZSBhbmQgZXhwZWN0YXRpb25zLCB5b3UgYXJlIGNvcnJlY3Qu
Cj4gV2hlcmVhcyBpbiB0aGUgY2FzZSBvZiBiKSB5b3UgYXJlIG5vdC4KPgo+IEkgaG9wZSB0aGF0
IGhlbHBzIGNsYXJpdHkgdGhlIHNpdHVhdGlvbiBzb21ld2hhdC4KClRoZSBjb25jZXJuIHdhcyBt
b3N0bHkgZHVlIHRvIHRoZSBjb21taXQgbWVzc2FnZSBvZgoKICAgIGJkYjAwNjZkZjk2ZSBtZmQ6
IHN5c2NvbjogRGVjb3VwbGUgc3lzY29uIGludGVyZmFjZSBmcm9tIHBsYXRmb3JtIGRldmljZXMK
CndoaWNoIG1lbnRpb25zCgogICB0aGVyZSBpcyBhIG5lZWQgdG8gaGF2ZSBhIGRlZGljYXRlZCBk
cml2ZXIgZm9yIHN1Y2ggc3lzdGVtIGNvbnRyb2xsZXIKICAgYnV0IGFsc28gc2hhcmUgcmVnaXN0
ZXJzIHdpdGggb3RoZXIgZHJpdmVycy4gVGhlIGxhdHRlciBpcyB3aGVyZSB0aGUKICAgc3lzY29u
IGludGVyZmFjZSBpcyBoZWxwZnVsLgoKQnV0IGRvZXMgbm90IHByb3ZpZGUgYW55IHNvcnQgb2Yg
Y29vcmRpbmF0aW9uIGJldHdlZW4gdGhlIGRlZGljYXRlZCBkcml2ZXIKYW5kIHRoZSBzeXNjb24u
IEkgc3VwcG9zZSB0aGUgaW50ZW50aW9uIG1pZ2h0IGhhdmUgYmVlbiB0aGF0IHRoZSBkcml2ZXIK
d291bGQgZ2V0IGEgc3lzY29uIHVzaW5nIGl0cyBvd24gZGV2aWNlIG5vZGUuIFdlIGF2b2lkZWQg
dGhhdCBidXQgSSB3b25kZXIKaWYgdGhlIGV4dHJhIGNvZGUgaXMgd29ydGggaXQgb3Igbm90LiBP
dGhlciBwbGF0Zm9ybXMgc2VlbSB0byBkbyBvay4KClRoYW5rIHlvdSBmb3IgaGVscGluZyBtZSBj
bGVhciB0aGluZ3MgdXAuCgoKUmVnYXJkcwpDaGVuWXUKCj4gPiA+IEkgZXhwZWN0IHRoZSBBUEkg
d291bGQgYmUgZXhwYW5kZWQgdG8gY292ZXIgb3RoZXIgdXNlLWNhc2VzLiAgVGhpcyBpcwo+ID4g
PiBhIGJhcmUgYm9uZXMgaW1wbGVtZW50YXRpb24gd2hpY2ggaGFzIGJlZW4ga2VwdCBhcyBhdG9t
aWMgYXMgcG9zc2libGUKPiA+ID4gZm9yIGVhc2Ugb2YgcmV2aWV3Lgo+ID4KPiA+IFJlZ2FyZHMK
PiA+IENoZW5ZdQo+ID4KPiA+IFsxXSBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9s
YXRlc3Qvc291cmNlL2RyaXZlcnMvbWZkL2F4cDIweC1pMmMuYyNMNDMKPiA+IFsyXSBodHRwczov
L2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvcGluY3RybC9w
aW5jdHJsLWF4cDIwOS5jI0w0MzMKPiA+IFszXSBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9s
aW51eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3
bWFjLXN1bjhpLmMjTDEwOTMKPiA+IFs0XSBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51
eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvY2xrL3N1bnhpLW5nL2NjdS1zdW44aS1yNDAuYyNMMTMz
Mwo+Cj4gLS0KPiBMZWUgSm9uZXMgW+adjueQvOaWr10KPiBTZW5pb3IgVGVjaG5pY2FsIExlYWQg
LSBEZXZlbG9wZXIgU2VydmljZXMKPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQXJtIFNvQ3MKPiBGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
