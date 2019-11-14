Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2649FCC2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 18:54:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X2CJDTjdr33MmUg6kUoS1o2PH4nIUdQFPLN4Z/+YAvk=; b=Nx6+Oj4WXTD4FX
	7/ySGPMgqMiH/iEEJGVf7fAeoOZQKWYqeXL/NHi5YxuB4L05Mw7UOOAklbsK+90In0tbJJ4dWKc45
	4Xby+fE+2J/FC7TxOaH+/BWgnofu0jGjG2y76nNTg8yWP+cuJXejyPnh0EbrTsisgQvmsirYDqK0z
	v/DdNgyfL5pd8H8hkyv+BtXCULctWDgonBMqHXAD4nO8JTG83s+qMXFOOUH6vWkThEF8muXhMZyc1
	TLjEElJ24zvOoEXTYK52f2ba/Si03m87YvXwLGr5NKZSaw9Rf5kuey0jTUUoH72l0uTC+U9x64kuG
	xyJk08v5OeZQxIUJk2Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVJJj-0004Mb-LP; Thu, 14 Nov 2019 17:54:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVJJb-0004M9-4S
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 17:53:56 +0000
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
 [209.85.219.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 867EF20725
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573754033;
 bh=FoOAY9hvViKgsLTmMcUUrky6j/lBk2/WL9cdhbynSys=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pPnZ1tFP/zb5Uf2eZitrrBr8+RHnAG6QVR8CxikW4VkVO1PQH5mYV+oXMOM6ld38T
 YIVr5/twVsXxuIgPVQCnP0xAutIdwUNJZ2xec42lOyGSrfE7vgFvjAMsNYqtZZ/0aF
 hEvOg0fKelyt6wpN22J/RyxKzwUpHKEPbh2L1f0w=
Received: by mail-qv1-f52.google.com with SMTP id g18so2701132qvp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 09:53:53 -0800 (PST)
X-Gm-Message-State: APjAAAV8OHohhJO7rTzjqAM1sXuHLPS+m+kyObJcKaemym2Ec74boRaa
 YQhk7XyKlRavMfb7+4xwsNhW8D0RSulMM5zTCw==
X-Google-Smtp-Source: APXvYqxn0/HOay449gy4df/pZe6Fvu/CaSWw8Nv4yCJSz4K/ab7BUtNCox5hzRHIyowoAHUW18uT482SqJVnK3bZG+o=
X-Received: by 2002:ad4:42b4:: with SMTP id e20mr9393130qvr.85.1573754032554; 
 Thu, 14 Nov 2019 09:53:52 -0800 (PST)
MIME-Version: 1.0
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-9-peter.ujfalusi@ti.com>
 <20191105021900.GA17829@bogus> <fc1ea525-54f1-ff1a-7e1c-61b54f5be862@ti.com>
In-Reply-To: <fc1ea525-54f1-ff1a-7e1c-61b54f5be862@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 14 Nov 2019 11:53:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJbV7Zd40admW-x2SSveMqMkG0tM6RFTwjCJyYxX4Cxtw@mail.gmail.com>
Message-ID: <CAL_JsqJbV7Zd40admW-x2SSveMqMkG0tM6RFTwjCJyYxX4Cxtw@mail.gmail.com>
Subject: Re: [PATCH v4 08/15] dt-bindings: dma: ti: Add document for K3 UDMA
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_095355_222580_336A4893 
X-CRM114-Status: GOOD (  22.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
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

T24gVHVlLCBOb3YgNSwgMjAxOSBhdCA0OjA3IEFNIFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZh
bHVzaUB0aS5jb20+IHdyb3RlOgo+Cj4KPgo+IE9uIDA1LzExLzIwMTkgNC4xOSwgUm9iIEhlcnJp
bmcgd3JvdGU6Cj4gPiBPbiBGcmksIE5vdiAwMSwgMjAxOSBhdCAxMDo0MToyOEFNICswMjAwLCBQ
ZXRlciBVamZhbHVzaSB3cm90ZToKPiA+PiBOZXcgYmluZGluZyBkb2N1bWVudCBmb3IKPiA+PiBU
ZXhhcyBJbnN0cnVtZW50cyBLMyBOQVZTUyBVbmlmaWVkIERNQSDigJMgUGVyaXBoZXJhbCBSb290
IENvbXBsZXggKFVETUEtUCkuCj4gPj4KPiA+PiBVRE1BLVAgaXMgaW50cm9kdWNlZCBhcyBwYXJ0
IG9mIHRoZSBLMyBhcmNoaXRlY3R1cmUgYW5kIGNhbiBiZSBmb3VuZCBpbgo+ID4+IEFNNjU0IGFu
ZCBqNzIxZS4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51
amZhbHVzaUB0aS5jb20+Cj4gPj4gLS0tCj4gPj4gUm9iLAo+ID4+Cj4gPj4gY2FuIHlvdSBnaXZl
IG1lIHNvbWUgaGludCBvbiBob3cgdG8gZml4IHRoZXNlIHR3byB3YXJuaW5ncyBmcm9tIGR0X2Jp
bmRpbmdfY2hlY2s6Cj4gPj4KPiA+PiAgIERUQyAgICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2RtYS90aS9rMy11ZG1hLmV4YW1wbGUuZHQueWFtbAo+ID4+IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEvdGkvazMtdWRtYS5leGFtcGxlLmR0czoyMy4xMy03
MjogV2FybmluZyAocmFuZ2VzX2Zvcm1hdCk6IC9leGFtcGxlLTAvaW50ZXJjb25uZWN0QDMwODAw
MDAwOnJhbmdlczogInJhbmdlcyIgcHJvcGVydHkgaGFzIGludmFsaWQgbGVuZ3RoICgyNCBieXRl
cykgKHBhcmVudCAjYWRkcmVzcy1jZWxscyA9PSAxLCBjaGlsZCAjYWRkcmVzcy1jZWxscyA9PSAy
LCAjc2l6ZS1jZWxscyA9PSAyKQo+ID4+ICAgQ0hFQ0sgICBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZG1hL3RpL2szLXVkbWEuZXhhbXBsZS5kdC55YW1sCj4gPgo+ID4gVGhlIGRl
ZmF1bHQgI2FkZHJlc3MtY2VsbHMgaXMgMSBmb3IgZXhhbXBsZXMuIFNvIHlvdSBuZWVkIHRvCj4g
PiBlaXRoZXIgb3ZlcnJpZGUgaXQgb3IgY2hhbmdlIHJhbmdlcyBwYXJlbnQgYWRkcmVzcyBzaXpl
Lgo+Cj4gd3JhcHBpbmcgdGhlIGNiYXNzX21haW5fbmF2c3MgaW5zaWRlOgo+IGNiYXNzX21haW4g
ewo+ICAgICAjYWRkcmVzcy1jZWxscyA9IDwyPjsKPiAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4g
ICAgIC4uLgo+IH07Cj4KPiBmaXhlcyBpdC4KPgo+ID4+Cj4gPj4gRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2RtYS90aS9rMy11ZG1hLmV4YW1wbGUuZHQueWFtbDogaW50ZXJjb25u
ZWN0QDMwODAwMDAwOiAkbm9kZW5hbWU6MDogJ2ludGVyY29ubmVjdEAzMDgwMDAwMCcgZG9lcyBu
b3QgbWF0Y2ggJ14oYnVzfHNvY3xheGl8YWhifGFwYikoQFswLTlhLWZdKyk/JCcKPiA+Cj4gPiBV
c2UgJ2J1cycgZm9yIHRoZSBub2RlIG5hbWUgb2YgJ3NpbXBsZS1idXMnLgo+Cj4gSSB0b29rIHRo
ZSBuYXZzcyBub2RlIGZyb20gdGhlIHVwc3RyZWFtIGR0cyAoSSdtIGdvaW5nIHRvIGZpeCBpdCB0
aGVyZQo+IGFzIHdlbGwpLgo+IEl0IGhhcyBzaW1wbGUtYnVzIGZvciB0aGUgbmF2c3MsIHdoaWNo
IGlzIG5vdCBxdWl0ZSByaWdodCBhcyBOQVZTUyBpcwo+IG5vdCBhIGJ1cywgYnV0IGEgYmlnIHN1
YnN5c3RlbSB3aXRoIG11bHRpcGxlIGNvbXBvbmVudHMgKFVETUFQLCByaW5nYWNjLAo+IElOVEEs
IElOVFIsIHRpbWVycywgZXRjKS4KPgo+IFdoYXQgYWJvdXQgdG8gY2hhbmdlIHRoZSBiaW5kaW5n
IGRvYyB0byBzaW1wbGUtbWZkIGxpa2UgdGhpcwoKVGhhdCdzIHJlYWxseSBmb3IgdGhpbmdzIG5v
dCBtZW1vcnktbWFwcGVkIChJJ20gc3VyZSB5b3UgY2FuIHByb2JhYmx5CmZpbmQgYW4gZXhhbXBs
ZSB0byBjb250cmFkaWN0IG1lKSwgc28gYmV0dGVyIHRvIGtlZXAgc2ltcGxlLWJ1cyBpZiBhbGwK
dGhlIGNoaWxkIG5vZGVzIGhhdmUgYWRkcmVzc2VzLgoKRG8geW91IG5lZWQgdGhlIG5vZGUgbmFt
ZSB0byBiZSAnbmF2c3MnIGZvciBzb21lIHJlYXNvbj8gSWYgc28sIHRoZW4KYmV0dGVyIGhhdmUg
YSBjb21wYXRpYmxlIHN0cmluZyBpbiB0aGVyZSB0byBpZGVudGlmeSBpdC4gSWYgbm90LCBqdXN0
CnVzZSAnYnVzJyBhbmQgYmUgZG9uZSB3aXRoIGl0LgoKPiBjYmFzc19tYWluX25hdnNzOiBuYXZz
c0AzMDgwMDAwMCB7Cj4gICAgIGNvbXBhdGlibGUgPSAic2ltcGxlLW1mZCI7Cj4gICAgICNhZGRy
ZXNzLWNlbGxzID0gPDI+Owo+ICAgICAjc2l6ZS1jZWxscyA9IDwyPjsKPiAgICAgLi4uCj4gfTsK
Pgo+IGFuZCBmaXggdXAgdGhlIERUIHdoZW4gSSBnb3QgdG8gdGhlIHBvaW50IHdoZW4gSSBjYW4g
c2VuZCB0aGUgcGF0Y2hlcyB0bwo+IGVuYWJsZSBETUEgZm9yIGFtNjU0IGFuZCBqNzIxZT8KClRo
ZXJlJ3Mgbm8gcmVxdWlyZW1lbnQgeWV0IGZvciBEVFMgZmlsZXMgdG8gbm90IGhhdmUgd2Fybmlu
Z3MuCgo+ID4+ICsgIGNvbXBhdGlibGU6Cj4gPj4gKyAgICBvbmVPZjoKPiA+PiArICAgICAgLSBj
b25zdDogdGksYW02NTQtbmF2c3MtbWFpbi11ZG1hcAo+ID4+ICsgICAgICAtIGNvbnN0OiB0aSxh
bTY1NC1uYXZzcy1tY3UtdWRtYXAKPiA+PiArICAgICAgLSBjb25zdDogdGksajcyMWUtbmF2c3Mt
bWFpbi11ZG1hcAo+ID4+ICsgICAgICAtIGNvbnN0OiB0aSxqNzIxZS1uYXZzcy1tY3UtdWRtYXAK
PiA+Cj4gPiBlbnVtIHdvcmtzIGJldHRlciB0aGFuIG9uZU9mK2NvbnN0LiBCZXR0ZXIgZXJyb3Ig
bWVzc2FnZXMuCj4KPiBMaWtlIHRoaXM6Cj4gICBjb21wYXRpYmxlOgo+ICAgICBvbmVPZjoKPiAg
ICAgICAtIGRlc2NyaXB0aW9uOiBmb3IgQU02NTQKPiAgICAgICAgIGl0ZW1zOgo+ICAgICAgICAg
ICAtIGVudW06Cj4gICAgICAgICAgICAgICAtIHRpLGFtNjU0LW5hdnNzLW1haW4tdWRtYXAKPiAg
ICAgICAgICAgICAgIC0gdGksYW02NTQtbmF2c3MtbWN1LXVkbWFwCj4KPiAgICAgICAtIGRlc2Ny
aXB0aW9uOiBmb3IgSjcyMUUKPiAgICAgICAgIGl0ZW1zOgo+ICAgICAgICAgICAtIGVudW06Cj4g
ICAgICAgICAgICAgICAtIHRpLGo3MjFlLW5hdnNzLW1haW4tdWRtYXAKPiAgICAgICAgICAgICAg
IC0gdGksajcyMWUtbmF2c3MtbWN1LXVkbWFwCgpJZiB0aGUgJ2Rlc2NyaXB0aW9uJyB3YXMgdXNl
ZnVsLCBidXQgaXQncyBub3QuIEp1c3Q6Cgpjb21wYXRpYmxlOgogIGVudW06CiAgICAtIHRpLGFt
NjU0LW5hdnNzLW1haW4tdWRtYXAKICAgIC0gdGksYW02NTQtbmF2c3MtbWN1LXVkbWFwCiAgICAt
IHRpLGo3MjFlLW5hdnNzLW1haW4tdWRtYXAKICAgIC0gdGksajcyMWUtbmF2c3MtbWN1LXVkbWFw
CgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
