Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0002D1C1341
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 15:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44m/1LWEycDifKj6ai/RFZiurFm1MZSOJU6lGRYc2T8=; b=Q7gaoDmBz6FU5x
	inNx/UlX4x5ZEf0iOXAEB2s/gLfFvkkhMPOGAWy63LMYGIE4ZGV5n/ncV8CIj1SFDENdWdjQ5w1dN
	wV5NOOBPe+NT8b30fx6l9+BspW2t1xIoI4HzMion/346FAVmnHvx/wplwhV2E89gdlbAChAq2Rhr1
	HjdQzGWgCHVDh7pN7B1oTmXg2GCre5/BVde2GFrSm4bMHfiu0E7tNiFracrcxShGAz7+hw938rf9b
	RZTkDe/I0jBCcuO066FoUdK78C5is9Xv8xQe2lhG/RshSaBZzMcXSGZt0zsS3nofn56mevnu2Mm/I
	YUvrMSiOvF//U1WQhHKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVl3-0007zz-0t; Fri, 01 May 2020 13:31:13 +0000
Received: from mail-ej1-f68.google.com ([209.85.218.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVkv-0007zK-VT
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 13:31:07 +0000
Received: by mail-ej1-f68.google.com with SMTP id gr25so7464676ejb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 06:31:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=OvExKVABn65NYbhAsLzBIznCBsp6S8fN5fVcOGh1uUs=;
 b=YmTGekWuc5GFVPHgEwUldb0UfixtGyoT64ph8D2+wdNf14IXYYJRLYnde4OJdpP9Qg
 sYYixWRF1gNtmt1szmKxlOhe7Um+Q4QunyJeLqCrc9alHlIoFD+X/EuEv4K4Fvf3N3Km
 wQa6D8Frk+dNa/IPxIq6Mt4QdzQW5VI2iNV+8xlkGCwSq54US1LPsyDn9MLvfukcdkm0
 +SdU7augIJf/DWNYjhrOdUl6FiTgf1JGAyIzHxK9KSPAXKa7gn4SOBWcexhH2akLg1wt
 13TSlNE+6AbSBpy2IWzRjgFqf1jB1TKY5ioMO4yOCpJYbhY6NzVu+2CVqETSHFe4cS3o
 PPdA==
X-Gm-Message-State: AGi0Puba45D1PEZ6bTRf88xfaFnVcb5Mjzz6+O/6hsUpzZOUYGBS92yZ
 RPtxVGafbXChUj+lU+vbd9Y=
X-Google-Smtp-Source: APiQypKISGOX7qOFt8o4ShYMxr/Bdy48MbYE+T4EfJCwSM93IitpN69Eij32vrIU58PdDpQhnaRZ/Q==
X-Received: by 2002:a17:906:f0d9:: with SMTP id
 dk25mr3113128ejb.266.1588339864014; 
 Fri, 01 May 2020 06:31:04 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id u13sm304929edi.82.2020.05.01.06.31.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 May 2020 06:31:03 -0700 (PDT)
Date: Fri, 1 May 2020 15:31:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH 06/13] arm: dts: s5pv210: aries: Add support for more
 devices
Message-ID: <20200501133100.GB5154@kozik-lap>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <BN6PR04MB0660563639D091548BFCCFF2A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
 <20200428102026.GB23963@kozik-lap>
 <BN6PR04MB0660776A38353DBDF0E2E3F9A3AC0@BN6PR04MB0660.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN6PR04MB0660776A38353DBDF0E2E3F9A3AC0@BN6PR04MB0660.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_063106_015357_1DB159F0 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 =?utf-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBcHIgMjgsIDIwMjAgYXQgMDQ6MzI6NTZQTSAtMDcwMCwgSm9uYXRoYW4gQmFra2Vy
IHdyb3RlOgo+IEhpIEtyenlzenRvZiwKPiAKPiBPbiAyMDIwLTA0LTI4IDM6MjAgYS5tLiwgS3J6
eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+IE9uIFN1biwgQXByIDI2LCAyMDIwIGF0IDExOjM1
OjU3QU0gLTA3MDAsIEpvbmF0aGFuIEJha2tlciB3cm90ZToKPiA+PiBBZGQgc3VwcG9ydCBmb3Ig
Zm9sbG93aW5nIGRldmljZXM6Cj4gPj4gICAtIHRvdWNoa2V5cyBjb25uZWN0ZWQgb3ZlciBpMmMt
Z3Bpbwo+ID4+ICAgLSBzNmU2M20wIHBhbmVsIGNvbm5lY3RlZCBvdmVyIHNwaS1ncGlvCj4gPj4g
ICAtIGZzYTk0ODAgbWljcm91c2Igc3dpdGNoIG92ZXIgaTJjLWdwaW8KPiA+PiAgIC0gd204OTk0
IG92ZXIgaTJjLWdwaW8gKG5vIG1hY2hpbmUgZHJpdmVyIHlldCkKPiA+PiAgIC0gYWxsIGNvbW1v
biBpMmMtZ3BpbyBkZXZpY2VzCj4gPiAKPiA+IFBsZWFzZSBzcGxpdCBpdCBwZXIgZnVuY3Rpb25h
bGl0eSwgZS5nLjoKPiA+IDEuIEFkZCBzb3VuZCwKPiA+IDIuIEFkZCBwYW5lbCwKPiA+IDMuIEFk
ZCB0b3VjaGtleXMgKHVubGVzcyBwYXJ0IG9mIHBhbmVsKSwKPiA+IDQuIFRoZSByZW1haW5pbmcg
aTJjLWdwaW8gZGV2aWNlcyB3aXRob3V0IGJpbmRpbmdzIGNvdWxkIGdvIGFzIG9uZS4KPiAKPiBP
aywgd2lsbCBkby4KPiAKPiA+IAo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gQmFr
a2VyIDx4Yy1yYWNlcjJAbGl2ZS5jYT4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBQYXdlxYIgQ2htaWVs
IDxwYXdlbC5taWtvbGFqLmNobWllbEBnbWFpbC5jb20+Cj4gPj4gLS0tCj4gPj4gIGFyY2gvYXJt
L2Jvb3QvZHRzL3M1cHYyMTAtYXJpZXMuZHRzaSAgICAgIHwgMjgyICsrKysrKysrKysrKysrKysr
KysrLS0KPiA+PiAgYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC1mYXNjaW5hdGU0Zy5kdHMgfCAg
IDYgKwo+ID4+ICAyIGZpbGVzIGNoYW5nZWQsIDI3MCBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlv
bnMoLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zNXB2MjEwLWFy
aWVzLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9zNXB2MjEwLWFyaWVzLmR0c2kKPiA+PiBpbmRl
eCBmODNkZjQyNmYyYjYuLmVmOTY2ZDEzZDgzZCAxMDA2NDQKPiA+PiAtLS0gYS9hcmNoL2FybS9i
b290L2R0cy9zNXB2MjEwLWFyaWVzLmR0c2kKPiA+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9z
NXB2MjEwLWFyaWVzLmR0c2kKPiA+PiBAQCAtMTIsOCArMTIsMTQgQEAKPiA+PiAgCWNvbXBhdGli
bGUgPSAic2Ftc3VuZyxhcmllcyIsICJzYW1zdW5nLHM1cHYyMTAiOwo+ID4+ICAKPiA+PiAgCWFs
aWFzZXMgewo+ID4+ICsJCWkyYzQgPSAmaTJjX3NvdW5kOwo+ID4+ICsJCWkyYzUgPSAmaTJjX2Fj
Y2VsOwo+ID4+ICAJCWkyYzYgPSAmaTJjX3BtaWM7Cj4gPj4gKwkJaTJjNyA9ICZpMmNfbXVzYjsK
PiA+PiAgCQlpMmM5ID0gJmkyY19mdWVsOwo+ID4+ICsJCWkyYzEwID0gJmkyY190b3VjaGtleTsK
PiA+PiArCQlpMmMxMSA9ICZpMmNfcHJveDsKPiA+PiArCQlpMmMxMiA9ICZpMmNfbWFnbmV0b21l
dGVyOwo+ID4+ICAJfTsKPiA+PiAgCj4gPj4gIAltZW1vcnlAMzAwMDAwMDAgewo+ID4+IEBAIC00
OCw2ICs1NCwxOCBAQAo+ID4+ICAJCWdwaW8gPSA8JmdwajEgMSBHUElPX0FDVElWRV9ISUdIPjsK
PiA+PiAgCX07Cj4gPj4gIAo+ID4+ICsJdG91Y2hrZXlfdmRkOiByZWd1bGF0b3ItZml4ZWQtMSB7
Cj4gPj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4+ICsJCXJlZ3VsYXRv
ci1uYW1lID0gIlZUT1VDSF8zLjNWIjsKPiA+PiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9
IDwzMzAwMDAwPjsKPiA+PiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsK
PiA+PiArCQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4gPj4gKwkJZ3BpbyA9IDwmZ3BqMyAyIEdQSU9f
QUNUSVZFX0hJR0g+Owo+ID4+ICsKPiA+PiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+
ID4+ICsJCXBpbmN0cmwtMCA9IDwmdG91Y2hrZXlfdmRkX2VuYT47Cj4gPj4gKwl9Owo+ID4+ICsK
PiA+PiAgCXdpZmlfcHdyc2VxOiB3aWZpLXB3cnNlcSB7Cj4gPj4gIAkJY29tcGF0aWJsZSA9ICJt
bWMtcHdyc2VxLXNpbXBsZSI7Cj4gPj4gIAkJcmVzZXQtZ3Bpb3MgPSA8JmdwZzEgMiBHUElPX0FD
VElWRV9MT1c+Owo+ID4+IEBAIC01Nyw3ICs3NSw2OSBAQAo+ID4+ICAJCXBvd2VyLW9mZi1kZWxh
eS11cyA9IDw1MDA+Owo+ID4+ICAJfTsKPiA+PiAgCj4gPj4gLQlpMmNfcG1pYzogaTJjLWdwaW8t
MCB7Cj4gPj4gKwlpMmNfc291bmQ6IGkyYy1ncGlvLTAgewo+ID4+ICsJCWNvbXBhdGlibGUgPSAi
aTJjLWdwaW8iOwo+ID4+ICsJCXNkYS1ncGlvcyA9IDwmbXAwNSAzIChHUElPX0FDVElWRV9ISUdI
IHwgR1BJT19PUEVOX0RSQUlOKT47Cj4gPj4gKwkJc2NsLWdwaW9zID0gPCZtcDA1IDIgKEdQSU9f
QUNUSVZFX0hJR0ggfCBHUElPX09QRU5fRFJBSU4pPjsKPiA+PiArCQlpMmMtZ3BpbyxkZWxheS11
cyA9IDwyPjsKPiA+PiArCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiA+PiArCQkjc2l6ZS1jZWxs
cyA9IDwwPjsKPiA+PiArCj4gPj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+PiAr
CQlwaW5jdHJsLTAgPSA8JnNvdW5kX2kyY19waW5zPjsKPiA+PiArCj4gPj4gKwkJd204OTk0OiB3
bTg5OTRAMWEgewo+ID4+ICsJCQljb21wYXRpYmxlID0gIndsZix3bTg5OTQiOwo+ID4+ICsJCQly
ZWcgPSA8MHgxYT47Cj4gPj4gKwo+ID4+ICsJCQkjc291bmQtZGFpLWNlbGxzID0gPDA+Owo+ID4+
ICsKPiA+PiArCQkJZ3Bpby1jb250cm9sbGVyOwo+ID4+ICsJCQkjZ3Bpby1jZWxscyA9IDwyPjsK
PiA+PiArCj4gPj4gKwkJCWNsb2NrcyA9IDwmY2xvY2tzIE1PVVRfQ0xLT1VUPjsKPiA+PiArCQkJ
Y2xvY2stbmFtZXMgPSAiTUNMSzEiOwo+ID4+ICsKPiA+PiArCQkJQVZERDItc3VwcGx5ID0gPCZi
dWNrM19yZWc+Owo+ID4+ICsJCQlEQlZERC1zdXBwbHkgPSA8JmJ1Y2szX3JlZz47Cj4gPiAKPiA+
IE5vIHN1Y2ggc3VwcGx5LCBjaGVjayB0aGUgYmluZGluZ3MuCj4gPiAKPiAKPiBXZWxsLCBpdCBt
YXkgbm90IGJlIGluIHRoZSBiaW5kaW5ncywgYnV0IHRoZSBkcml2ZXIgZGVmaW5pdGVseSByZXF1
aXJlcyBpdCA6KSBTZWUgZHJpdmVycy9tZmQvd204OTk0LWNvcmUuYwo+IAo+IFdoYXQncyB0aGUg
YmVzdCB3YXkgb2YgZGVhbGluZyB3aXRoIHRoaXMgc2l0dWF0aW9uPwoKSSdsbCBzZW5kIGEgcGF0
Y2ggZml4aW5nIHRoZSBiaW5kaW5ncy4gSG93ZXZlciBkb24ndCB5b3UgbWlzcyB0aGUKQVZERDEt
c3VwcGx5IGluIHN1Y2ggY2FzZT8gRHJpdmVyIHNob3VsZCByZXBvcnQgZXJyb3IuCgo+IAo+ID4+
ICsJCQlDUFZERC1zdXBwbHkgPSA8JmJ1Y2szX3JlZz47Cj4gPj4gKwkJCVNQS1ZERDEtc3VwcGx5
ID0gPCZidWNrM19yZWc+Owo+ID4+ICsJCQlTUEtWREQyLXN1cHBseSA9IDwmYnVjazNfcmVnPjsK
PiA+PiArCj4gPj4gKwkJCXdsZixncGlvLWNmZyA9IDwweGExMDEgMHg4MTAwIDB4MDEwMCAweDAx
MDAgMHg4MTAwCj4gPj4gKwkJCQkJMHhhMTAxIDB4MDEwMCAweDgxMDAgMHgwMTAwIDB4MDEwMAo+
ID4+ICsJCQkJCTB4MDEwMD47Cj4gPj4gKwo+ID4+ICsJCQl3bGYsbGRvMWVuYSA9IDwmZ3BmMyA0
IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4+ICsJCQl3bGYsbGRvMmVuYSA9IDwmZ3BmMyA0IEdQSU9f
QUNUSVZFX0hJR0g+Owo+ID4+ICsKPiA+PiArCQkJd2xmLGxpbmVvdXQxLXNlOwo+ID4+ICsJCQl3
bGYsbGluZW91dDItc2U7Cj4gPj4gKwo+ID4+ICsJCQlhc3NpZ25lZC1jbG9ja3MgPSA8JmNsb2Nr
cyBNT1VUX0NMS09VVD47Cj4gPj4gKwkJCWFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDA+Owo+ID4+
ICsJCQlhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZ4dXNieHRpPjsKPiA+PiArCj4gPj4gKwkJ
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPj4gKwkJCXBpbmN0cmwtMCA9IDwmY29kZWNf
bGRvPjsKPiA+PiArCQl9Owo+ID4+ICsJfTsKPiA+PiArCj4gPj4gKwlpMmNfYWNjZWw6IGkyYy1n
cGlvLTEgewo+ID4+ICsJCWNvbXBhdGlibGUgPSAiaTJjLWdwaW8iOwo+ID4+ICsJCXNkYS1ncGlv
cyA9IDwmZ3BqMyA2IChHUElPX0FDVElWRV9ISUdIIHwgR1BJT19PUEVOX0RSQUlOKT47Cj4gPj4g
KwkJc2NsLWdwaW9zID0gPCZncGozIDcgKEdQSU9fQUNUSVZFX0hJR0ggfCBHUElPX09QRU5fRFJB
SU4pPjsKPiA+PiArCQlpMmMtZ3BpbyxkZWxheS11cyA9IDwyPjsKPiA+PiArCQkjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKPiA+PiArCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiA+PiArCj4gPj4gKwkJcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+PiArCQlwaW5jdHJsLTAgPSA8JmFjY2VsX2kyY19w
aW5zPjsKPiA+PiArCj4gPj4gKwkJLyogYm1hMDIzIGFjY2VsZXJvbWV0ZXIsIG5vIG1haW5saW5l
IGJpbmRpbmcgKi8KPiA+IAo+ID4gc3RhdHVzIGRpc2FibGVkIC4uLiB1bmxlc3MgeW91IG5lZWQg
aXQgZm9yIHVzZXItc3BhY2UgSTJDIHRvb2xzPwo+ID4gCj4gCj4gTm9wZSwgYnV0IHdhbnRlZCB0
byBhZGQgdGhlbSBhbGwgaW4gZHVlIHRvIGFkZGluZyB0aGUgc2k0NzA5IGluIGdhbGF4eXMuICBJ
IHdhcyBoYXZpbmcKPiBpc3N1ZXMgd2l0aCBhY2NpZGVudGFsbHkgb3ZlcndyaXRpbmcgcHJldmlv
dXNseSBuYW1lZCBub2RlcyAoaWUgaGF2aW5nIGkyYy1ncGlvLTAgaW4KPiBib3RoIHRoZSBjb21t
b24gZHRzaSBhbmQgdGhlIGRldmljZSBzcGVjaWZpYyBkdHMpIHNvIEkgd2FudGVkIHRvIGdldCB0
aGUgbnVtYmVycwo+IG5haWxlZCBkb3duLgoKU28gYWRkIHRoZW0gd2l0aCBzdGF0dXMgZGlzYWJs
ZWQuIFRoaXMgd2lsbCBkb2N1bWVudCB0aGUgSFcgd2l0aG91dAplbmFibGluZyBlbXB0eSBJMkMg
R1BJTyBidXMuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
