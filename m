Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61E34BAB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btLH70NG+XCtTYsg8obiOQEHUWKyao+XioekWWxPpO8=; b=SrK8Bh8Cnp8ACL
	z/tEP/SOLz7Tpcr7+UtyYZduG/dhawQZX5Z8+HPLHnMRgzON5zNPdmi5um3YXljH8659V/ViGHlEo
	gBEi0bJKCDG5By5odiPKkX+WcjHz6rzlcgG2EHOdu96Fy5Rg/NwL2jddD+ZQYAmDx1gyht1OHFXfE
	Pb9IPX0+vT1nBNrewof1/j/hKqlU+pJkq5PzeS8IIUfndfguYn8/fjPbJVStLeFWEUpSUOCauM7Dc
	ml2lNtwN3WV35Zi54XPMX+cy6PHV/D4ywfW///e+vGHyLzkRmtenxiDnIgb8gnkT2c/aILS+hhrc8
	ToF9mANXqPmnMabZiX7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbCl-0004G5-JK; Wed, 19 Jun 2019 14:04:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbCa-0004Ff-NK
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:04:42 +0000
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D64102166E
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 14:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560953080;
 bh=97TXVH65mMfV5w2HMYzAftt020yRE8J8woo9idTWyrg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GQZtA9m+aghgtLbTJCTLcGQ2xOJmpH9TSP6kwXyqDJH8/KylAnsD4ksi6rh2PBElb
 G4NgmXmOXpadOPgNMQVx3mLhNE/5Dpvjtrq6LHqg9kkEJeCRQ6KMdKoBryc+XUcEyi
 XYNUrXyBXJ5191ROp35tXbR3dWhCMEJkziIBE9mU=
Received: by mail-qk1-f170.google.com with SMTP id p144so10925311qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:04:39 -0700 (PDT)
X-Gm-Message-State: APjAAAVknyeiscHSP0azaOgNen3N/Mgl9yQROa/qJCv0JNshgoibjF3h
 NzHe0vj7gPGqDtz3LZRsVZxuC7YZCmsw54K7MQ==
X-Google-Smtp-Source: APXvYqwi/+mIBYNi4WCbUWLHb/9h3vhdYu6+esugFSfRU1ol2StHjeOdJMtIkOrVHWDAo5UnQj67m17DYpcF1eu6pDg=
X-Received: by 2002:a05:620a:5b1:: with SMTP id
 q17mr33634246qkq.174.1560953079014; 
 Wed, 19 Jun 2019 07:04:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
 <20190506123456.6777-10-peter.ujfalusi@ti.com>
 <20190613181626.GA7039@bogus> <e0d6a264-96b5-31a6-e70b-3b1c2d863988@ti.com>
 <CAL_JsqJNMkKL_FubZfjKY6jLebMetmgR24EoendHoPM2ckrUQA@mail.gmail.com>
 <e811d674-b79f-4da8-c632-c7a90844b6c5@ti.com>
In-Reply-To: <e811d674-b79f-4da8-c632-c7a90844b6c5@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 19 Jun 2019 08:04:26 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJTWNKTB1D2wNysonzasgL9awLLvr1HdOckUnQbpgsDQw@mail.gmail.com>
Message-ID: <CAL_JsqJTWNKTB1D2wNysonzasgL9awLLvr1HdOckUnQbpgsDQw@mail.gmail.com>
Subject: Re: [PATCH 09/16] dt-bindings: dma: ti: Add document for K3 UDMA
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_070440_792136_7BE4B552 
X-CRM114-Status: GOOD (  25.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Vinod <vkoul@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgNzo0MiBBTSBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpm
YWx1c2lAdGkuY29tPiB3cm90ZToKPgo+Cj4gT24gMTQvMDYvMjAxOSAxNi4yMCwgUm9iIEhlcnJp
bmcgd3JvdGU6Cj4gPiBPbiBUaHUsIEp1biAxMywgMjAxOSBhdCAyOjMzIFBNIFBldGVyIFVqZmFs
dXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gUm9iLAo+ID4+Cj4g
Pj4gT24gMTMvMDYvMjAxOSAyMS4xNiwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPj4+PiArUmVtb3Rl
IFBTSS1MIGVuZHBvaW50Cj4gPj4+PiArCj4gPj4+PiArUmVxdWlyZWQgcHJvcGVydGllczoKPiA+
Pj4+ICstLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4+Pj4gKy0gdGkscHNpbC1iYXNlOiAgICAgICAg
ICAgICBQU0ktTCB0aHJlYWQgSUQgYmFzZSBvZiB0aGUgZW5kcG9pbnQKPiA+Pj4+ICsKPiA+Pj4+
ICtXaXRoaW4gdGhlIFBTSS1MIGVuZHBvaW50IG5vZGUgdGhyZWFkIGNvbmZpZ3VyYXRpb24gc3Vi
bm9kZXMgbXVzdCBwcmVzZW50IHdpdGg6Cj4gPj4+PiArdGkscHNpbC1jb25maWdYIG5hbWluZyBj
b252ZW50aW9uLCB3aGVyZSBYIGlzIHRoZSB0aHJlYWQgSUQgb2Zmc2V0Lgo+ID4+Pgo+ID4+PiBE
b24ndCB1c2UgdmVuZG9yIHByZWZpeGVzIG9uIG5vZGUgbmFtZXMuCj4gPj4KPiA+PiBPSy4KPiA+
Pgo+ID4+Pj4gKwo+ID4+Pj4gK0NvbmZpZ3VyYXRpb24gbm9kZSBSZXF1aXJlZCBwcm9wZXJ0aWVz
Ogo+ID4+Pj4gKy0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPj4+PiArLSBsaW51eCx1ZG1hLW1vZGU6
ICBDaGFubmVsIG1vZGUsIGNhbiBiZToKPiA+Pj4+ICsgICAgICAgICAgICAgICAgICAgIC0gVURN
QV9QS1RfTU9ERTogZm9yIFBhY2tldCBtb2RlIGNoYW5uZWxzIChwZXJpcGhlcmFscykKPiA+Pj4+
ICsgICAgICAgICAgICAgICAgICAgIC0gVURNQV9UUl9NT0RFOiBmb3IgVGhpcmQtUGFydHkgbW9k
ZQo+ID4+Pgo+ID4+PiBUaGlzIGlzIGhhcmRseSBhIGNvbW1vbiBsaW51eCB0aGluZy4gV2hhdCBk
ZXRlcm1pbmVzIHRoZSB2YWx1ZSBoZXJlLgo+ID4+Cj4gPj4gVW5mb3J0dW5hdGVseSBpdCBpcy4K
PiA+Cj4gPiBObywgaXQncyBhIGZlYXR1cmUgb2YgeW91ciBoL3cgYW5kIGluIG5vIHdheSBpcyBz
b21ldGhpbmcgbGludXgKPiA+IGRlZmluZWQgd2hpY2ggaXMgdGhlIHBvaW50IG9mICdsaW51eCcg
cHJlZml4Lgo+Cj4gVGhlIGNoYW5uZWwgY2FuIGJlIGVpdGhlciBQYWNrZXQgb3IgVFIgbW9kZS4g
VGhlIEhXIGlzIHJlYWxseSBmbGV4aWJsZQo+IG9uIHRoaXMgKGFuZCBvbiBvdGhlciB0aGluZ3Mg
YXMgd2VsbCkuCj4gSXQganVzdCBoYXBwZW5zIHRoYXQgTGludXggbmVlZCB0byB1c2Ugc3BlY2lm
aWMgY2hhbm5lbHMgaW4gYSBzcGVjaWZpYyBtb2RlLgo+Cj4gV291bGQgaXQgaGVscCBpZiB3ZSBh
c3N1bWUgdGhhdCBhbGwgY2hhbm5lbHMgYXJlIHVzZWQgaW4gUGFja2V0IG1vZGUsCj4gYnV0IHdl
IGhhdmUgbGludXgsdHItbW9kZSBib29sIHRvIGluZGljYXRlIHRoYXQgdGhlIGdpdmVuIGNoYW5u
ZWwgaW4KPiBMaW51eCBuZWVkIHRvIGJlIHVzZWQgaW4gVFIgbW9kZS4KCllvdXIgdXNlIG9mICds
aW51eCcgcHJlZml4IGlzIHdyb25nLiBTdG9wIHVzaW5nIGl0LgoKPiA+PiBFYWNoIGNoYW5uZWwg
Y2FuIGJlIGNvbmZpZ3VyZWQgdG8gUGFja2V0IG9yIFRSIG1vZGUuIEZvciBzb21lCj4gPj4gcGVy
aXBoZXJhbHMgaXQgaXMgdHJ1ZSB0aGF0IHRoZXkgb25seSBzdXBwb3J0IHBhY2tldCBtb2RlLCB0
aGVzZSBhcmUgdGhlCj4gPj4gbmV3ZXIgUFNJLUwgbmF0aXZlIHBlcmlwaGVyYWxzLgo+ID4+IEZv
ciB0aGVzZSBjaGFubmVscyBhIHVkbWEtbW9kZSBwcm9wZXJ0eSB3b3VsZCBiZSBjb3JyZWN0Lgo+
ID4+Cj4gPj4gQnV0IHdlIGhhdmUgbGVnYWN5IHBlcmlwaGVyYWxzIGFzIHdlbGwgYW5kIHRoZXkg
YXJlIHNlcnZpY2VkIGJ5IFBETUEKPiA+PiAod2hpY2ggaXMgYSBuYXRpdmUgcGVyaXBoZXJhbCBk
ZXNpZ25lZCB0byB0YWxrIHRvIHRoZSBnaXZlbiBsZWdhY3kgSVApLgo+ID4+IFdlIGNhbiB1c2Ug
ZWl0aGVyIHBhY2tldCBvciBUUiBtb2RlIGluIFVETUFQIHRvIHRhbGsgdG8gUERNQXMsIGl0IGlz
IGluCj4gPj4gbW9zdCBjYXNlcyBjbGVhciB3aGF0IHRvIHVzZSwgYnV0IGZvciBleGFtcGxlIGZv
ciBhdWRpbyAoTWNBU1ApIGNoYW5uZWxzCj4gPj4gTGludXggaXMgdXNpbmcgVFIgY2hhbm5lbCBi
ZWNhdXNlIHdlIG5lZWQgY3ljbGljIERNQSB3aGlsZSBmb3IgZXhhbXBsZQo+ID4+IFJUT1MgaXMg
dXNpbmcgUGFja2V0IG1vZGUgYXMgaXQgZml0cyB0aGVpciBuZWVkcyBiZXR0ZXIuCj4gPj4KPiA+
PiBIZXJlIEkgbmVlZCB0byBwcmVmaXggdGhlIHVkbWEtbW9kZSB3aXRoIGxpbnV4IGFzIHRoZSBt
b2RlIGlzIHVzZWQgYnkKPiA+PiBMaW51eCwgYnV0IG90aGVyIE9TIG1pZ2h0IG9wdCB0byB1c2Ug
ZGlmZmVyZW50IGNoYW5uZWwgbW9kZS4KPiA+Cj4gPiBTbyB5b3UnZCBuZWVkIDxvcz4sdWRtYS1t
b2RlPyBUaGF0IGRvZXNuJ3Qgd29yay4uLiBJZiB0aGUgc2V0dGluZyBpcwo+ID4gcGVyIE9TLCB0
aGVuIGl0IGJlbG9uZ3MgaW4gdGhlIE9TIGJlY2F1c2UgdGhlIHNhbWUgZHRiIHNob3VsZCB3b3Jr
Cj4gPiBhY3Jvc3MgT1Mncy4KPgo+IFNvIEkgc2hvdWxkIGhhdmUgYSB0YWJsZSBmb3IgdGhlIHRo
cmVhZCBJRHMgaW4gdGhlIERNQSBkcml2ZXIgYW5kIG1hcmsKPiBjaGFubmVscyBhcyBUUiBvciBQ
YWNrZXQgaW4gdGhlcmUgZm9yIExpbnV4IHVzZT8KClBlcmhhcHMuIEkgaGF2ZW4ndCBoZWFyZCBh
bnkgcmVhc29ucyB3aHkgeW91IG5lZWQgdGhpcyBpbiBEVC4gSWYgTGludXgKaXMgZGljdGF0aW5n
IHRoZSBtb2RlcywgdGhlbiBzb3VuZHMgbGlrZSBpdCBzaG91bGQgYmUgaW4gTGludXguCgpCdXQg
cmVhbGx5LCBJIGRvbid0IGZ1bGx5IHVuZGVyc3RhbmQgd2hhdCB5b3UgYXJlIGRvaW5nIGhlcmUg
dG8gdGVsbAp5b3Ugd2hhdCB0byBkbyBiZXlvbmQgdXNpbmcgJ2xpbnV4JyBwcmVmaXggaXMgd3Jv
bmcuCgo+IE9yIGp1c3QgYW4gYXJyYXkgd2hpY2ggd291bGQgbWFyayB0aGUgbm9uIHBhY2tldCBQ
U0ktTCB0aHJlYWQgSURzPwo+Cj4gSSBzdGlsbCBwcmVmZXIgdG8gaGF2ZSB0aGlzIGNvbWluZyB2
aWEgRFQgYXMgYSBMaW51eCBwYXJhbWV0ZXIgYXMgb3RoZXIKPiBPUyBpcyBmcmVlIHRvIGlnbm9y
ZSB0aGUgbGludXgsdWRtYS1tb2RlLCBidXQgYXMgSSBzYWlkIHRoZXJlIGFyZQo+IGNlcnRhaW4g
Y2hhbm5lbHMgd2hpY2ggbXVzdCBiZSB1c2VkIGluIExpbnV4IGluIGNlcnRhaW4gbW9kZSB3aGls
ZQo+IG90aGVycyBpbiBkaWZmZXJlbnQgbW9kZS4KCkEgRFQgY2xpZW50IGlzIGZyZWUgdG8gaWdu
b3JlIGFueSBEVCBwcm9wZXJ0eS4gWW91IGRvbid0IG5lZWQgYSBjbGllbnQKcHJlZml4IGZvciB0
aGF0LgoKPiA+PiBUaGUgcmVhc29uIHdoeSB0aGlzIG5lZWRzIHRvIGJlIGluIHRoZSBEVCBpcyB0
aGF0IHdoZW4gdGhlIGNoYW5uZWwgaXMKPiA+PiByZXF1ZXN0ZWQgd2UgbmVlZCB0byBjb25maWd1
cmUgdGhlIG1vZGUgYW5kIGl0IGNhbiBub3QgYmUgc3dhcHBlZAo+ID4+IHJ1bnRpbWUgZWFzaWx5
IGJldHdlZW4gUGFja2V0IGFuZCBUUiBtb2RlLgo+ID4KPiA+IFNvIHdoZW4gdGhlIGNsaWVudCBt
YWtlcyB0aGUgY2hhbm5lbCByZXF1ZXN0LCB3aHkgZG9lc24ndCBpdCBzcGVjaWZ5IHRoZSBtb2Rl
Pwo+Cj4gVGhpcyBpcyBVRE1BUCBpbnRlcm5hbCBpbmZvcm1hdGlvbiBvbiB3aGF0IHR5cGUgb2Yg
RGVzY3JpcHRvcnMgdGhlCj4gY2hhbm5lbCB3aWxsIGV4cGVjdCBhbmQgaG93IGl0IGlzIGdvaW5n
IHRvIGRpc3BhdGNoIHRoZSB3b3JrLgo+Cj4gUGFja2V0IGFuZCBUUiBtb2RlIGF0IHRoZSBlbmQg
ZG9lcyB0aGUgc2FtZSB0aGluZywgYnV0IGluIGEgY29tcGxldGVseQo+IGRpZmZlcmVudCB3YXku
Cj4KPiAtIFDDqXRlcgo+Cj4gVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFu
a2F0dSAyMiwgMDAxODAgSGVsc2lua2kuCj4gWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEt
NC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
