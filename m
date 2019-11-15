Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5842CFD998
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 10:44:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Xqt70NjMqkLF6qX9yrT7r3hkLGTlJA3Wv6YC/Bj+u4=; b=TypVvazop4+kuV
	CGb8rp85ijsdtFln4hcAuJnRUqkyn9FLLQ40ABKo5O71f1u8j24g9Efhdv2qM1KOIunLgAf4f/UbI
	E8UXdJrtdwuqdo6CWmMt1Jn68WoNdCmLIqgDGJCzgUK25MNwLPR0K0lKxvLONty1LVcT22llviX8s
	fEZv/9IH+P77ysHgrZXzqwbigzAglo4TnDKmKehAE/LL/dp0U0w2JCRWD4fZehEK/rP55ZBUZuq4P
	cuSrn6BQd0Er4LnNU8A5mWucJHgVe8k0UTisyh5XujLPM5YwelR5BOwTDnLwRV+jVCFGc92sG3z00
	r1F3ritYwoucwt0Zn4vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVY9S-0002IN-Gs; Fri, 15 Nov 2019 09:44:26 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVY9K-0002Hc-I6
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 09:44:20 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAF9i9cM070472;
 Fri, 15 Nov 2019 03:44:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573811049;
 bh=E0WzhltMB1uCqHukFqL7nvpsZ7Dg3L6LXU0D/M/afHk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=nGQ4lsiTTMA/u3mYvQBGiCimGGu+zhohaFc7OZ7bIu+CWjxxF1eWkRUBFtOuyYeCa
 OKc7HWEV9E2Vb0B10pGrfZ2BFSL/Q+m77cERWOeDxYFdTbhQd2autXTZqwz9BxfO+g
 lJ4q4DWNpBtxmyRXdYJSyxkH7gWGik8yTMi/ByJI=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAF9i9JV054404;
 Fri, 15 Nov 2019 03:44:09 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 15
 Nov 2019 03:44:08 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 15 Nov 2019 03:44:08 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAF9i55L081214;
 Fri, 15 Nov 2019 03:44:05 -0600
Subject: Re: [PATCH v4 08/15] dt-bindings: dma: ti: Add document for K3 UDMA
To: Rob Herring <robh@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-9-peter.ujfalusi@ti.com> <20191105021900.GA17829@bogus>
 <fc1ea525-54f1-ff1a-7e1c-61b54f5be862@ti.com>
 <CAL_JsqJbV7Zd40admW-x2SSveMqMkG0tM6RFTwjCJyYxX4Cxtw@mail.gmail.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <b4705f2e-b2fb-f00f-7d4d-bd440fe89135@ti.com>
Date: Fri, 15 Nov 2019 11:45:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJbV7Zd40admW-x2SSveMqMkG0tM6RFTwjCJyYxX4Cxtw@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_014418_704675_841857EA 
X-CRM114-Status: GOOD (  26.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Vinod <vkoul@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>, "open
 list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Um9iLAoKT24gMTQvMTEvMjAxOSAxOS41MywgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gVHVlLCBO
b3YgNSwgMjAxOSBhdCA0OjA3IEFNIFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5j
b20+IHdyb3RlOgo+Pgo+Pgo+Pgo+PiBPbiAwNS8xMS8yMDE5IDQuMTksIFJvYiBIZXJyaW5nIHdy
b3RlOgo+Pj4gT24gRnJpLCBOb3YgMDEsIDIwMTkgYXQgMTA6NDE6MjhBTSArMDIwMCwgUGV0ZXIg
VWpmYWx1c2kgd3JvdGU6Cj4+Pj4gTmV3IGJpbmRpbmcgZG9jdW1lbnQgZm9yCj4+Pj4gVGV4YXMg
SW5zdHJ1bWVudHMgSzMgTkFWU1MgVW5pZmllZCBETUEg4oCTIFBlcmlwaGVyYWwgUm9vdCBDb21w
bGV4IChVRE1BLVApLgo+Pj4+Cj4+Pj4gVURNQS1QIGlzIGludHJvZHVjZWQgYXMgcGFydCBvZiB0
aGUgSzMgYXJjaGl0ZWN0dXJlIGFuZCBjYW4gYmUgZm91bmQgaW4KPj4+PiBBTTY1NCBhbmQgajcy
MWUuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1
c2lAdGkuY29tPgo+Pj4+IC0tLQo+Pj4+IFJvYiwKPj4+Pgo+Pj4+IGNhbiB5b3UgZ2l2ZSBtZSBz
b21lIGhpbnQgb24gaG93IHRvIGZpeCB0aGVzZSB0d28gd2FybmluZ3MgZnJvbSBkdF9iaW5kaW5n
X2NoZWNrOgo+Pj4+Cj4+Pj4gICBEVEMgICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kbWEvdGkvazMtdWRtYS5leGFtcGxlLmR0LnlhbWwKPj4+PiBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL2szLXVkbWEuZXhhbXBsZS5kdHM6MjMuMTMtNzI6IFdh
cm5pbmcgKHJhbmdlc19mb3JtYXQpOiAvZXhhbXBsZS0wL2ludGVyY29ubmVjdEAzMDgwMDAwMDpy
YW5nZXM6ICJyYW5nZXMiIHByb3BlcnR5IGhhcyBpbnZhbGlkIGxlbmd0aCAoMjQgYnl0ZXMpIChw
YXJlbnQgI2FkZHJlc3MtY2VsbHMgPT0gMSwgY2hpbGQgI2FkZHJlc3MtY2VsbHMgPT0gMiwgI3Np
emUtY2VsbHMgPT0gMikKPj4+PiAgIENIRUNLICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2RtYS90aS9rMy11ZG1hLmV4YW1wbGUuZHQueWFtbAo+Pj4KPj4+IFRoZSBkZWZhdWx0
ICNhZGRyZXNzLWNlbGxzIGlzIDEgZm9yIGV4YW1wbGVzLiBTbyB5b3UgbmVlZCB0bwo+Pj4gZWl0
aGVyIG92ZXJyaWRlIGl0IG9yIGNoYW5nZSByYW5nZXMgcGFyZW50IGFkZHJlc3Mgc2l6ZS4KPj4K
Pj4gd3JhcHBpbmcgdGhlIGNiYXNzX21haW5fbmF2c3MgaW5zaWRlOgo+PiBjYmFzc19tYWluIHsK
Pj4gICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+PiAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4+
ICAgICAuLi4KPj4gfTsKPj4KPj4gZml4ZXMgaXQuCj4+Cj4+Pj4KPj4+PiBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL2szLXVkbWEuZXhhbXBsZS5kdC55YW1sOiBpbnRl
cmNvbm5lY3RAMzA4MDAwMDA6ICRub2RlbmFtZTowOiAnaW50ZXJjb25uZWN0QDMwODAwMDAwJyBk
b2VzIG5vdCBtYXRjaCAnXihidXN8c29jfGF4aXxhaGJ8YXBiKShAWzAtOWEtZl0rKT8kJwo+Pj4K
Pj4+IFVzZSAnYnVzJyBmb3IgdGhlIG5vZGUgbmFtZSBvZiAnc2ltcGxlLWJ1cycuCj4+Cj4+IEkg
dG9vayB0aGUgbmF2c3Mgbm9kZSBmcm9tIHRoZSB1cHN0cmVhbSBkdHMgKEknbSBnb2luZyB0byBm
aXggaXQgdGhlcmUKPj4gYXMgd2VsbCkuCj4+IEl0IGhhcyBzaW1wbGUtYnVzIGZvciB0aGUgbmF2
c3MsIHdoaWNoIGlzIG5vdCBxdWl0ZSByaWdodCBhcyBOQVZTUyBpcwo+PiBub3QgYSBidXMsIGJ1
dCBhIGJpZyBzdWJzeXN0ZW0gd2l0aCBtdWx0aXBsZSBjb21wb25lbnRzIChVRE1BUCwgcmluZ2Fj
YywKPj4gSU5UQSwgSU5UUiwgdGltZXJzLCBldGMpLgo+Pgo+PiBXaGF0IGFib3V0IHRvIGNoYW5n
ZSB0aGUgYmluZGluZyBkb2MgdG8gc2ltcGxlLW1mZCBsaWtlIHRoaXMKPiAKPiBUaGF0J3MgcmVh
bGx5IGZvciB0aGluZ3Mgbm90IG1lbW9yeS1tYXBwZWQgKEknbSBzdXJlIHlvdSBjYW4gcHJvYmFi
bHkKPiBmaW5kIGFuIGV4YW1wbGUgdG8gY29udHJhZGljdCBtZSksIHNvIGJldHRlciB0byBrZWVw
IHNpbXBsZS1idXMgaWYgYWxsCj4gdGhlIGNoaWxkIG5vZGVzIGhhdmUgYWRkcmVzc2VzLgoKQWNj
b3JkaW5nIHRvIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvbWZkLnR4dDoK
LSBBIHJhbmdlIG9mIG1lbW9yeSByZWdpc3RlcnMgY29udGFpbmluZyAibWlzY2VsbGFuZW91cyBz
eXN0ZW0KICByZWdpc3RlcnMiIGFsc28ga25vd24gYXMgYSBzeXN0ZW0gY29udHJvbGxlciAic3lz
Y29uIiBvciBhbnkgb3RoZXIKICBtZW1vcnkgcmFuZ2UgY29udGFpbmluZyBhIG1peCBvZiB1bnJl
bGF0ZWQgaGFyZHdhcmUgZGV2aWNlcy4KCk5BVlNTIChOQVZpZ2F0b3IgU3ViU3lzdGVtKSBmYWxs
cyBpbiB0aGUgbGF0ZXIgY2FzZSwgaXQgY29udGFpbnMKdW5yZWxhdGVkIGJsb2NrcywgbGlrZSB0
aGUgVURNQVAsIHJpbmdhY2MsIG1haWxib3hlcywgc3BpbmxvY2tzLAppbnRlcnJ1cHQgYWdncmVn
YXRvciwgaW50ZXJydXB0IHJvdXRlciwgZXRjLgoKLSBjb21wYXRpYmxlIDogInNpbXBsZS1tZmQi
IC0gdGhpcyBzaWduaWZpZXMgdGhhdCB0aGUgb3BlcmF0aW5nIHN5c3RlbQogIHNob3VsZCBjb25z
aWRlciBhbGwgc3Vibm9kZXMgb2YgdGhlIE1GRCBkZXZpY2UgYXMgc2VwYXJhdGUgZGV2aWNlcwog
IGFraW4gdG8gaG93ICJzaW1wbGUtYnVzIiBpbmRpY2F0ZXMgd2hlbiB0byBzZWUgc3Vibm9kZXMg
YXMgY2hpbGRyZW4KICBmb3IgYSBzaW1wbGUgbWVtb3J5LW1hcHBlZCBidXMuCgpUaGlzIGlzIGEg
Yml0IGNvbmZ1c2luZywgYnV0IE5BVlNTIGlzIG5vdCByZWFsbHkgYSBidXMsIGV2ZXJ5dGhpbmcg
aW4gaXQKY2FuIGJlIGFjY2Vzc2VkIGJ5IHRoZSBDUFUgdmlhIG1lbW9yeSBtYXBwZWQgcmVnaXN0
ZXJzIChzb21lIHN1YiBkZXZpY2VzCmRvZXMgbm90IGhhdmUgcmVnaXN0ZXJzIGRlZmluZWQsIHRo
ZXkgYXJlIGNvbnRyb2xsZWQgdmlhIHN5c3RlbSBmaXJtd2FyZSkuCgo+IERvIHlvdSBuZWVkIHRo
ZSBub2RlIG5hbWUgdG8gYmUgJ25hdnNzJyBmb3Igc29tZSByZWFzb24/IElmIHNvLCB0aGVuCj4g
YmV0dGVyIGhhdmUgYSBjb21wYXRpYmxlIHN0cmluZyBpbiB0aGVyZSB0byBpZGVudGlmeSBpdC4g
SWYgbm90LCBqdXN0Cj4gdXNlICdidXMnIGFuZCBiZSBkb25lIHdpdGggaXQuCgpXZSBkb24ndCBu
ZWVkIHVuaXF1ZSBjb21wYXRpYmxlIGZvciB0aGUgTkFWU1MgaXRzZWxmIGFzIHRoZXJlIGlzIG5v
dAptdWNoIHdlIGNhbiBjb25maWd1cmUgb24gdGhlIHRvcCBsZXZlbCwgaXQgaXMgJ2p1c3QnIGEg
YmlnIHN1YnN5c3RlbQp3aXRoIGFsbCBzb3J0cyBvZiB0aGluZ3MuCgpJIGxpa2UgdG8ga2VlcCB0
aGUgJ25hdnNzJyBhcyBub2RlIG5hbWUgYXMgaXQgZ2l2ZXMgaHVtYW4gdW5kZXJzdGFuZGFibGUK
cmVwcmVzZW50YXRpb24gb2YgaXQgaW4gL3N5cyBmb3IgZXhhbXBsZSwgZWFzaWVyIHRvIHNlZSB0
aGUgdG9wb2xvZ3kuCgpJIGp1c3QgZmVlbCB0aGF0IHRoZSAnYnVzJyBkb2VzIG5vdCByZWFsbHkg
YXBwbHkgdG8gd2hhdCBOQVZTUyBpcy4KUHJvYmFibHkgbXkgdmlldyBvZiBzaW1wbGUtYnVzIGlz
IG5vdCBjb3JyZWN0LgoKPj4gY2Jhc3NfbWFpbl9uYXZzczogbmF2c3NAMzA4MDAwMDAgewo+PiAg
ICAgY29tcGF0aWJsZSA9ICJzaW1wbGUtbWZkIjsKPj4gICAgICNhZGRyZXNzLWNlbGxzID0gPDI+
Owo+PiAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4+ICAgICAuLi4KPj4gfTsKPj4KPj4gYW5kIGZp
eCB1cCB0aGUgRFQgd2hlbiBJIGdvdCB0byB0aGUgcG9pbnQgd2hlbiBJIGNhbiBzZW5kIHRoZSBw
YXRjaGVzIHRvCj4+IGVuYWJsZSBETUEgZm9yIGFtNjU0IGFuZCBqNzIxZT8KPiAKPiBUaGVyZSdz
IG5vIHJlcXVpcmVtZW50IHlldCBmb3IgRFRTIGZpbGVzIHRvIG5vdCBoYXZlIHdhcm5pbmdzLgoK
U3VyZSwgYnV0IGl0IGRvZXMgbm90IGh1cnQgaWYgdGhleSBhcmUgY2xlYW4gOykKCj4+Pj4gKyAg
Y29tcGF0aWJsZToKPj4+PiArICAgIG9uZU9mOgo+Pj4+ICsgICAgICAtIGNvbnN0OiB0aSxhbTY1
NC1uYXZzcy1tYWluLXVkbWFwCj4+Pj4gKyAgICAgIC0gY29uc3Q6IHRpLGFtNjU0LW5hdnNzLW1j
dS11ZG1hcAo+Pj4+ICsgICAgICAtIGNvbnN0OiB0aSxqNzIxZS1uYXZzcy1tYWluLXVkbWFwCj4+
Pj4gKyAgICAgIC0gY29uc3Q6IHRpLGo3MjFlLW5hdnNzLW1jdS11ZG1hcAo+Pj4KPj4+IGVudW0g
d29ya3MgYmV0dGVyIHRoYW4gb25lT2YrY29uc3QuIEJldHRlciBlcnJvciBtZXNzYWdlcy4KPj4K
Pj4gTGlrZSB0aGlzOgo+PiAgIGNvbXBhdGlibGU6Cj4+ICAgICBvbmVPZjoKPj4gICAgICAgLSBk
ZXNjcmlwdGlvbjogZm9yIEFNNjU0Cj4+ICAgICAgICAgaXRlbXM6Cj4+ICAgICAgICAgICAtIGVu
dW06Cj4+ICAgICAgICAgICAgICAgLSB0aSxhbTY1NC1uYXZzcy1tYWluLXVkbWFwCj4+ICAgICAg
ICAgICAgICAgLSB0aSxhbTY1NC1uYXZzcy1tY3UtdWRtYXAKPj4KPj4gICAgICAgLSBkZXNjcmlw
dGlvbjogZm9yIEo3MjFFCj4+ICAgICAgICAgaXRlbXM6Cj4+ICAgICAgICAgICAtIGVudW06Cj4+
ICAgICAgICAgICAgICAgLSB0aSxqNzIxZS1uYXZzcy1tYWluLXVkbWFwCj4+ICAgICAgICAgICAg
ICAgLSB0aSxqNzIxZS1uYXZzcy1tY3UtdWRtYXAKPiAKPiBJZiB0aGUgJ2Rlc2NyaXB0aW9uJyB3
YXMgdXNlZnVsLCBidXQgaXQncyBub3QuIEp1c3Q6Cj4gCj4gY29tcGF0aWJsZToKPiAgIGVudW06
Cj4gICAgIC0gdGksYW02NTQtbmF2c3MtbWFpbi11ZG1hcAo+ICAgICAtIHRpLGFtNjU0LW5hdnNz
LW1jdS11ZG1hcAo+ICAgICAtIHRpLGo3MjFlLW5hdnNzLW1haW4tdWRtYXAKPiAgICAgLSB0aSxq
NzIxZS1uYXZzcy1tY3UtdWRtYXAKCk9LLCBjYW4gSSBrZWVwIHlvdXIgUmV2aWV3ZWQtYnkgeW91
IGhhdmUgZ2l2ZW4gdG8gdjUgaWYgSSBkbyB0aGlzIGNoYW5nZQpmb3IgdjY/Cgo+IAo+IAo+IFJv
Ygo+IAoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmth
dHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBL
b3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
