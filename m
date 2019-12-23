Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6571512920C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 07:54:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZx/eoWdGAV06H60jmAiRougF79T0VdN/oyHxEt9zkM=; b=tVfAfKVWKz3G1j
	amImeBRtBVF67kkgJ8wzSaEd0Dk/Umw1KlP6FU4ISByl4/MJ6SDUtc1TbqDXrFNQ7g2bi9SIOGN94
	C/EYDkBb7EtX7uJkbAcR9mr9sm6kSTGxVx53/bF5yUFnfcGiOc2/p8sLKWbMp+ujJ9un+Tb/B7vdq
	apd1sSbFgwbpzQWpNA+dWhKoz6Ucx1OarJjTp/0CO/S+Buem/JXhhb4lJOD0/01J3wIeNYu2lI9kx
	nBCm953UIFRZ6BzBGC07+dif29nQlL71e+1zLnni1wR35sSRfE/yNrCzF13lipn07qx8zLWuSL2Xk
	gIUcBPG5Cs+71+WSJx3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijHbK-0001Qm-1z; Mon, 23 Dec 2019 06:53:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijHb9-0001Pq-IA
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 06:53:49 +0000
Received: from localhost (unknown [223.226.34.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 074DA20663;
 Mon, 23 Dec 2019 06:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577084027;
 bh=E9GtJEv5/Wg7wYSZvBrnuOFI6hszhwu0cq6AppC+9qw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j+LXOHERLq+MKBHwX9oReM+7sdw6pEx/s6vS7PyfqPzKYep06rK5pIlC4m4Gducuq
 mfX/7Cw8wMCBSF3tMP0UEiWULBiZ9nz6f8dnC78zuo278yvLszzyY+2EtyXWQLq6Jg
 n5kwc14VXmG8ht7j0M596/8/bNi+j4Ai7rEbaEIw=
Date: Mon, 23 Dec 2019 12:23:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v7 08/12] dt-bindings: dma: ti: Add document for K3 UDMA
Message-ID: <20191223065340.GU2536@vkoul-mobl>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-9-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209094332.4047-9-peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_225347_644591_F0E5BC18 
X-CRM114-Status: GOOD (  18.05  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDktMTItMTksIDExOjQzLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiBOZXcgYmluZGluZyBk
b2N1bWVudCBmb3IKPiBUZXhhcyBJbnN0cnVtZW50cyBLMyBOQVZTUyBVbmlmaWVkIERNQSDigJMg
UGVyaXBoZXJhbCBSb290IENvbXBsZXggKFVETUEtUCkuCj4gCj4gVURNQS1QIGlzIGludHJvZHVj
ZWQgYXMgcGFydCBvZiB0aGUgSzMgYXJjaGl0ZWN0dXJlIGFuZCBjYW4gYmUgZm91bmQgaW4KPiBB
TTY1NCBhbmQgajcyMWUuCj4gCj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVy
LnVqZmFsdXNpQHRpLmNvbT4KPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4KPiAtLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL2szLXVkbWEueWFt
bCAgIHwgMTg1ICsrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTg1IGluc2Vy
dGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9kbWEvdGkvazMtdWRtYS55YW1sCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEvdGkvazMtdWRtYS55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS90aS9rMy11ZG1hLnlhbWwKPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNzdhZWY0YTRhYmNlCj4gLS0tIC9kZXYvbnVs
bAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEvdGkvazMtdWRt
YS55YW1sCj4gQEAgLTAsMCArMSwxODUgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
KEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlk
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9kbWEvdGkvazMtdWRtYS55YW1sIwo+ICsk
c2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiAr
Cj4gK3RpdGxlOiBUZXhhcyBJbnN0cnVtZW50cyBLMyBOQVZTUyBVbmlmaWVkIERNQSBEZXZpY2Ug
VHJlZSBCaW5kaW5ncwo+ICsKPiArbWFpbnRhaW5lcnM6Cj4gKyAgLSBQZXRlciBVamZhbHVzaSA8
cGV0ZXIudWpmYWx1c2lAdGkuY29tPgo+ICsKPiArZGVzY3JpcHRpb246IHwKPiArICBUaGUgVURN
QS1QIGlzIGludGVuZGVkIHRvIHBlcmZvcm0gc2ltaWxhciAoYnV0IHNpZ25pZmljYW50bHkgdXBn
cmFkZWQpCj4gKyAgZnVuY3Rpb25zIGFzIHRoZSBwYWNrZXQtb3JpZW50ZWQgRE1BIHVzZWQgb24g
cHJldmlvdXMgU29DIGRldmljZXMuIFRoZSBVRE1BLVAKPiArICBtb2R1bGUgc3VwcG9ydHMgdGhl
IHRyYW5zbWlzc2lvbiBhbmQgcmVjZXB0aW9uIG9mIHZhcmlvdXMgcGFja2V0IHR5cGVzLgo+ICsg
IFRoZSBVRE1BLVAgaXMgYXJjaGl0ZWN0ZWQgdG8gZmFjaWxpdGF0ZSB0aGUgc2VnbWVudGF0aW9u
IGFuZCByZWFzc2VtYmx5IG9mCgpIb3cgYWJvdXQ6CgpUaGUgVURNQS1QIGFyY2hpdGVjdHVyZSBm
YWNpbGl0YXRlcyB0aGUgc2VnbWVudGF0aW9uLi4uCgo+ICsgIFNvQyBETUEgZGF0YSBzdHJ1Y3R1
cmUgY29tcGxpYW50IHBhY2tldHMgdG8vZnJvbSBzbWFsbGVyIGRhdGEgYmxvY2tzIHRoYXQgYXJl
Cj4gKyAgbmF0aXZlbHkgY29tcGF0aWJsZSB3aXRoIHRoZSBzcGVjaWZpYyByZXF1aXJlbWVudHMg
b2YgZWFjaCBjb25uZWN0ZWQKPiArICBwZXJpcGhlcmFsLgo+ICsgIE11bHRpcGxlIFR4IGFuZCBS
eCBjaGFubmVscyBhcmUgcHJvdmlkZWQgd2l0aGluIHRoZSBETUEgd2hpY2ggYWxsb3cgbXVsdGlw
bGUKPiArICBzZWdtZW50YXRpb24gb3IgcmVhc3NlbWJseSBvcGVyYXRpb25zIHRvIGJlIG9uZ29p
bmcuIFRoZSBETUEgY29udHJvbGxlcgo+ICsgIG1haW50YWlucyBzdGF0ZSBpbmZvcm1hdGlvbiBm
b3IgZWFjaCBvZiB0aGUgY2hhbm5lbHMgd2hpY2ggYWxsb3dzIHBhY2tldAo+ICsgIHNlZ21lbnRh
dGlvbiBhbmQgcmVhc3NlbWJseSBvcGVyYXRpb25zIHRvIGJlIHRpbWUgZGl2aXNpb24gbXVsdGlw
bGV4ZWQgYmV0d2Vlbgo+ICsgIGNoYW5uZWxzIGluIG9yZGVyIHRvIHNoYXJlIHRoZSB1bmRlcmx5
aW5nIERNQSBoYXJkd2FyZS4gQW4gZXh0ZXJuYWwgRE1BCj4gKyAgc2NoZWR1bGVyIGlzIHVzZWQg
dG8gY29udHJvbCB0aGUgb3JkZXJpbmcgYW5kIHJhdGUgYXQgd2hpY2ggdGhpcyBtdWx0aXBsZXhp
bmcKPiArICBvY2N1cnMgZm9yIFRyYW5zbWl0IG9wZXJhdGlvbnMuIFRoZSBvcmRlcmluZyBhbmQg
cmF0ZSBvZiBSZWNlaXZlIG9wZXJhdGlvbnMKPiArICBpcyBpbmRpcmVjdGx5IGNvbnRyb2xsZWQg
YnkgdGhlIG9yZGVyIGluIHdoaWNoIGJsb2NrcyBhcmUgcHVzaGVkIGludG8gdGhlIERNQQo+ICsg
IG9uIHRoZSBSeCBQU0ktTCBpbnRlcmZhY2UuCj4gKwo+ICsgIFRoZSBVRE1BLVAgYWxzbyBzdXBw
b3J0cyBhY3RpbmcgYXMgYm90aCBhIFVUQyBhbmQgVURNQS1DIGZvciBpdHMgaW50ZXJuYWwKPiAr
ICBjaGFubmVscy4gQ2hhbm5lbHMgaW4gdGhlIFVETUEtUCBjYW4gYmUgY29uZmlndXJlZCB0byBi
ZSBlaXRoZXIgUGFja2V0LUJhc2VkCj4gKyAgb3IgVGhpcmQtUGFydHkgY2hhbm5lbHMgb24gYSBj
aGFubmVsIGJ5IGNoYW5uZWwgYmFzaXMuCj4gKwo+ICsgIEFsbCB0cmFuc2ZlcnMgd2l0aGluIE5B
VlNTIGlzIGRvbmUgYmV0d2VlbiBQU0ktTCBzb3VyY2UgYW5kIGRlc3RpbmF0aW9uCj4gKyAgdGhy
ZWFkcy4KPiArICBUaGUgcGVyaXBoZXJhbHMgc2VydmljZWQgYnkgVURNQSBjYW4gYmUgUFNJLUwg
bmF0aXZlIChzYTJ1bCwgY3BzdywgZXRjKSBvcgo+ICsgIGxlZ2FjeSwgbm9uIFBTSS1MIG5hdGl2
ZSBwZXJpcGhlcmFscy4gSW4gdGhlIGxhdGVyIGNhc2UgYSBzcGVjaWFsLCBzbWFsbCBQRE1BCj4g
KyAgaXMgdGFza2VkIHRvIGFjdCBhcyBhIGJyaWRnZSBiZXR3ZWVuIHRoZSBQU0ktTCBmYWJyaWMg
YW5kIHRoZSBsZWdhY3kKPiArICBwZXJpcGhlcmFsLgo+ICsKPiArICBQRE1BcyBjYW4gYmUgY29u
ZmlndXJlZCB2aWEgVURNQVAgcGVlciByZWdpc3RlcnMgdG8gbWF0Y2ggd2l0aCB0aGUKPiArICBj
b25maWd1cmF0aW9uIG9mIHRoZSBsZWdhY3kgcGVyaXBoZXJhbC4KPiArCj4gK2FsbE9mOgo+ICsg
IC0gJHJlZjogIi4uL2RtYS1jb250cm9sbGVyLnlhbWwjIgo+ICsKPiArcHJvcGVydGllczoKPiAr
ICAiI2RtYS1jZWxscyI6Cj4gKyAgICBjb25zdDogMQo+ICsgICAgZGVzY3JpcHRpb246IHwKPiAr
ICAgICAgVGhlIGNlbGwgaXMgdGhlIFBTSS1MICB0aHJlYWQgSUQgb2YgdGhlIHJlbW90ZSAodG8g
VURNQVApIGVuZC4KPiArICAgICAgVmFsaWQgcmFuZ2VzIGZvciB0aHJlYWQgSUQgZGVwZW5kcyBv
biB0aGUgZGF0YSBtb3ZlbWVudCBkaXJlY3Rpb246Cj4gKyAgICAgIGZvciBzb3VyY2UgdGhyZWFk
IElEcyAocngpOiAwIC0gMHg3ZmZmCj4gKyAgICAgIGZvciBkZXN0aW5hdGlvbiB0aHJlYWQgSURz
ICh0eCk6IDB4ODAwMCAtIDB4ZmZmZgo+ICsKPiArICAgICAgUExlYXNlIHJlZmVyIHRvIHRoZSBk
ZXZpY2UgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIFBTSS1MIHRocmVhZCBtYXAgYW5kIGFsc28KCnMv
UExlYXNlL1BsZWFzZQoKLS0gCn5WaW5vZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
