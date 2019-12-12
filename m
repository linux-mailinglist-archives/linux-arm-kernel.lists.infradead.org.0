Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21DF11D825
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 21:55:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Agte9h1N0h8QOoD1IjKXIKXx3KhQNSeMu5Pg+qCkPI=; b=GKVxqnfyM2WTnn
	ABAZdPJuLhrSL0lfXOv27f48t3poakxJsp4uv5UzLbxZoZH2JD39VhnZrMBERYGOSUBi5N+bQNihD
	qv05wuh+s+gDKRvFexx70O2oAvAAwgRoKPvHYTp+uIqpQ24Q9GN5aFK26ieSBUba99phyGqpmiDkU
	Rh/bZd6bhyom7eh8V68cLPxSZgLsavfrEusayWRoBErBUQe+VhxigDhZ+6A2JRwNEH5caKv8Q3quk
	zyCRhHDz4x8j38UyXujpNPc/wy4cQIgTUC2lLVfEd0XzsWdg0pzvEUR8O7v0nayl+B+FaY5sJkotx
	pjnT0e5eIVwWJo+K3Grg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifVUl-00012K-LC; Thu, 12 Dec 2019 20:55:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifVUa-00010R-U6; Thu, 12 Dec 2019 20:55:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1C943AC31;
 Thu, 12 Dec 2019 20:55:21 +0000 (UTC)
Subject: Re: [RFC 00/25] arm64: realtek: Add Xnano X5 and implement
 TM1628/FD628/AiP1618 LED controllers
To: Robin Murphy <robin.murphy@arm.com>
References: <20191212033952.5967-1-afaerber@suse.de>
 <7110806f-ddbd-f055-e107-7a1f7e223102@arm.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
X-Enigmail-Draft-Status: N11100
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <c86c6bc0-b0e5-c46e-da87-9d910b95f9f3@suse.de>
Date: Thu, 12 Dec 2019 21:55:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <7110806f-ddbd-f055-e107-7a1f7e223102@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_125525_263250_E2505EEA 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.5 URI_NOVOWEL            URI: URI hostname has long non-vowel sequence
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, csd@princeton.com.tw,
 linux-realtek-soc@lists.infradead.org, sales@fdhisi.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 zypeng@titanmec.com, linux-amlogic@lists.infradead.org,
 Dan Murphy <dmurphy@ti.com>, linux-leds@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpbLSBSb2MgSGUsICsgbGludXgtcm9ja2NoaXBdCgpBbSAxMi4xMi4xOSB1bSAx
NDoxNCBzY2hyaWViIFJvYmluIE11cnBoeToKPiBPbiAxMi8xMi8yMDE5IDM6MzkgYW0sIEFuZHJl
YXMgRsOkcmJlciB3cm90ZToKPj4gVGhpcyBwYXRjaCBzZXJpZXMgaW1wbGVtZW50cyB0aGUgTEVE
IGNvbnRyb2xsZXJzIGZvdW5kIGluIHNvbWUgUlREMTI5NQo+PiBiYXNlZAo+PiBUViBzZXQtdG9w
IGJveGVzLgpbLi4uXQo+PiBUTTE2MjggYW5kIHJlbGF0ZWQgY2hpcHNldHMgaGF2ZSBhbiBpbnRl
cm5hbCBEaXNwbGF5IFJBTSwgZnJvbSB3aGljaCB0aGV5Cj4+IGNvbnRyb2wgYSB0d28tZGltZW5z
aW9uYWwgYXJyYXkgb2YgTEVEIGNvbXBvbmVudHMsIG9mdGVuIHVzZWQgZm9yCj4+IHNldmVuLXNl
Z21lbnQgZGlzcGxheXMsIGkuZS4gY2xvY2sgZGlzcGxheSwgYnV0IGFsc28gZm9yIGluZGljYXRv
cnMuCj4+IEluZGl2aWR1YWwgTEVEcyBjYW4gYmUgdHVybmVkIG9uL29mZiwgYnV0IGJyaWdodG5l
c3MgaXMgYXBwbGllZCBnbG9iYWxseS4KPj4gU29tZSBjaGlwc2V0cyBhbHNvIHN1cHBvcnQgcG9s
bGluZyBhIHR3by1kaW1lbnNpb25hbCBrZXkgcGFkLgpbLi4uXQo+PiBTb21lIG1vcmUgbm90ZXM6
Cj4+ICogUHVibGljIFRNMTYyOCBWMS4xIGRhdGFzaGVldCBpcyBpbiBDaGluZXNlIG9ubHkgYW5k
IGRpZmZlcnMgZnJvbSB0aGUKPj4gwqDCoCB1bnZlcnNpb25lZCBFbmdsaXNoIHZlcnNpb24gZm91
bmQgZWxzZXdoZXJlIG9uIGRhdGFzaGVldCBzaXRlcyBieQo+PiDCoMKgIGRvY3VtZW50aW5nIG1v
cmUgZGlzcGxheSBtb2RlcywgaW5jbHVkZWQgaGVyZSAoZ3Vlc3NlZCBmcm9tIEFyYWJpYwo+PiBu
dW1iZXJzKS4KPj4gKiBQdWJsaWMgRkQ2MjggZGF0YXNoZWV0IGlzIENoaW5lc2Ugb25seSAoZ3Vl
c3NlcyBiYXNlZCBvbiBBcmFiaWMKPj4gbnVtYmVycykuCj4+IMKgwqAgRkQ2MjMgYXBwZWFycyB0
byBoYXZlIG1vcmUgb3V0cHV0IGxpbmVzLCB3aGljaCB3b3VsZCBmaXQgY3VycmVudAo+PiBkYXRh
IHR5cGVzLgo+PiAqIEFpUDE2MTggbGlua3Mgd2VyZSBhbGwgYnJva2VuICg0MDQpOyB0cnkgR29v
Z2xlICJzaXRlOnN6ZmR3ZHouY29tIgo+PiBzZWFyY2gKPj4gwqDCoCB0byBhY3R1YWxseSBmaW5k
IHRoZSBkb2N1bWVudHMgYXZhaWxhYmxlIG9uIHRoZWlyIHNpdGUuCj4+ICogUHJpbmNldG9uIFBU
Njk2NCBpcyBhbm90aGVyIHJlbGF0ZWQgTEVEIGNvbnRyb2xsZXIgd2l0aCBwdWJsaWMKPj4gZGF0
YXNoZWV0Cj4+IMKgwqAgdGhhdCBJIGRpZCBub3QgZW5jb3VudGVyIGluIG15IFRWIGJveGVzIHll
dCwgdGh1cyBub3QgaW5jbHVkZWQgaGVyZS4KPj4gwqDCoCBEYXRhc2hlZXRzIGFyZSBsaW5rZWQg
b25seSBmb3IgUFQ2OTU5IGFuZCBQVDY5NjcsIGJ1dCBQVDY5NjQgVjEuMwo+PiBhbmQgVjEuNAo+
PiDCoMKgIGFyZSBhdmFpbGFibGUgZWxzZXdoZXJlLiBQVDY5NjcgaGFzIG1vcmUgb3V0cHV0IGxp
bmVzLCB3aGljaCBteQo+PiBjdXJyZW50Cj4+IMKgwqAgZGF0YSB0eXBlcyBjb3VsZCBiYXJlbHkg
aG9sZC4gTWF5YmUgYnVtcCB0aGVtIGFsbCB0byB1MzIgdHlwZSByaWdodAo+PiBhd2F5Pwo+PiAq
IFRNMTYyOCBpcyBhbHNvIGZvdW5kIG9uIE1lTEUgVjkgVFYgYm94LCB0byBiZSB0ZXN0ZWQuCj4+
ICogRkQ2MjggaXMgYWxzbyBmb3VuZCBvbiBBbWxvZ2ljIFM5MDVYMiBiYXNlZCBWb250YXIgWDk2
IE1heCBUViBib3gsCj4+IMKgwqAgdG8gYmUgdGVzdGVkIChvbmNlIFVBUlQgaXMgc29sZGVyZWQp
Lgo+PiAqIEFpUDE2MTggd2FzIGZvdW5kIG9uIEF2YSBhbmQgTGFrZSBJIFRWIGJveGVzLCB0byBi
ZSB0ZXN0ZWQuCj4+ICogSXQgcmVtYWluZWQgdW5jbGVhciB0byBtZSB3aGljaCBvZiB0aGVzZSBt
YW55IHNpbWlsYXIgY2hpcHNldHMgd2FzCj4+IGZpcnN0Lgo+PiDCoMKgIE15IGRyaXZlciBuYW1l
IGlzIHRoZXJlZm9yZSBiYXNlZCBvbiB0aGUgY2hpcCBJIGVuY291bnRlcmVkIGZpcnN0Lgo+IAo+
IEl0J3MgcHJldHR5IGNvb2wgdG8gc2VlIHRoaXMhCgpHbGFkIHNvbWVvbmUgZWxzZSBmaW5kcyBp
dCB1c2VmdWwuIDopCgo+IE15IFJvY2tjaGlwIGJveCBoYXMgYW4gQWlQMTYxOC1kcml2ZW4KPiBk
aXNwbGF5IFsuLi5dCgpZb3UgZG9uJ3QgbWVudGlvbiB0aGUgbW9kZWw6IERvZXMgaXQgaGF2ZSBh
IG1haW5saW5lIC5kdHMgd2UgY2FuIGV4dGVuZD8KSWYgbm90LCBJJ2QgYXNrIHlvdSB0byBnZXQg
dGhhdCBtZXJnZWQgaW50byAtbmV4dCwgdGhlbiBJIGNhbiBoYXBwaWx5CnBpY2sgdXAgcGF0Y2hl
cyBhZGRpbmcgdGhlIExFRCBjb250cm9sbGVyIGZvciB5b3VyIFRWIGJveCBpbnRvIHRoaXMKc2Vy
aWVzIGFzIGl0IGV2b2x2ZXMuIChJJ20gZXhwZWN0aW5nIGF0IGxlYXN0IHR3byBtb3JlIFJGQyBp
dGVyYXRpb25zLikKClNpbWlsYXJseSwgSSdtIHBsYW5uaW5nIHRvIGRyb3AgWG5hbm8gWDUgaW4g
djIsIGlmIGl0IGRvZXNuJ3QgcmVxdWlyZSBhCnJlc3Bpbiwgc28gdGhhdCBubyBSZWFsdGVrLXNw
ZWNpZmljIHBhcnRzIG90aGVyIHRoYW4gLmR0cyBub2RlIGFkZGl0aW9ucwpyZW1haW4gaGVyZS4K
Cj4gSW4gY2FzZSBpdCBoZWxwcywgaW4gbXkgcmVzZWFyY2ggSSBmb3VuZCB0aGF0IEFSVFNDSElQ
IGFyZSBhbm90aGVyCj4gdmVuZG9yIG9mIHRoZXNlIHRoaW5ncyB3aXRoIGFjY2Vzc2libGUgZGF0
YXNoZWV0c1sxXSwKClRoYW5rcywgdGhlaXIgSFQxNjI4IGluZGVlZCBsb29rcyBjb21wYXRpYmxl
LgoKU3VubW9vbiBNaWNyb2VsZWN0cm9uaWNzIFNNMTYyOCBhbHNvIGxvb2tzIGNvbXBhdGlibGUu
Cmh0dHA6Ly93d3cuY2hpbmFhc2ljLmNvbS9wcm9kdWN0LmpzcCNpdGVtPW90aGVyI3N0eWxlPTI3
I2lkPTEzOAoKPiBhbmQgYXMgZmFyIGFzIEkKPiBjb3VsZCB0ZWxsIHRoZSBjb21tYW5kIHNldCBh
cHBlYXJzIHRvIGRlcml2ZSBmcm9tIChvciBpcyBhdCBsZWFzdCBjb21tb24KPiB0bykgc29tZSBv
bGQgSG9sdGVrIFZGRCBjb250cm9sbGVycy4KCkhtbSwgSFQxNjUxNSBsb29rcyBzaW1pbGFyIGFu
ZCBoYXMgbW9yZSBsaW5lcywgUkFNIGFuZCBtb2RlIGJpdHMgdGhhbiBJCnByZXBhcmVkIGhlcmUu
Cmh0dHBzOi8vd3d3LmhvbHRlay5jb20vcHJvZHVjdGRldGFpbC8tL3ZnL2h0MTY1MTUKClNvIEkn
ZCBuZWVkIHRvIG1ha2UgbW9yZSBudW1iZXJzIG1vZGVsLWRlcGVuZGVudCBhbmQgYWxsb2NhdGUg
dGhlCkRpc3BsYXkgUkFNIGJ1ZmZlciBkeW5hbWljYWxseS4KCldoZXJlYXMgSFQxNkQzNUEgc2Vl
bXMgaW5jb21wYXRpYmxlIGNvbW1hbmQtd2lzZSwgYW5kIEhUMTY1MjggYXBwZWFycyB0bwpiZSBv
dXQgb2Ygc2NvcGUsIGZvciBkb3QgZGlzcGxheXMgYW5kIHdpdGggZmFuY3kgZW1iZWRkZWQgY2hh
cmFjdGVyIG1hcC4KCk5vIEhvbHRlayBlbWFpbCBhbGlhcyB0aGF0IEkgY2FuIHF1aWNrbHkgc3Bv
dC4KCkJ1dCBnaXZlbiB0aGF0IEknbSBwcm9wb3NpbmcgdmVuZG9yLXNwZWNpZmljIGNvbXBhdGli
bGVzIGp1c3QgaW4gY2FzZSwKdGhlIG1haW4gZGVjaXNpb25zIHdpbGwgYmUgdGhlIEtjb25maWcg
c3ltYm9sIGFuZCBtb2R1bGUgbmFtZS4gVGhlCmRyaXZlciBjb2RlIGl0c2VsZiB3ZSBjb3VsZCBh
bHdheXMgcmVmYWN0b3IgYWZ0ZXIgbWVyZ2luZywgYW5kIHJlbmFtaW5nCnRoZSBzY2hlbWEgZmls
ZSAoYXMgb3Bwb3NlZCB0byBjb21wYXRpYmxlKSBzaG91bGQgYWxzbyBiZSBwb3NzaWJsZS4KCj4g
SWYgSSBjYW4gZmlndXJlIG91dCB0aGUgRFQgcGFydHMgKHdoaWNoIHdhcyBvbmUgb2YgdGhlIGFy
ZWFzIHRoYXQKPiBzdGFsbGVkIG15IGF0dGVtcHQpIEknbGwgdHJ5IHRvIGhhdmUgYSBwbGF5IHdp
dGggdGhpcyBzZXJpZXMgb3ZlciB0aGUKPiBob2xpZGF5cy4KClRoYXQgcmVtaW5kZWQgbWUgdGhh
dCBJIGZvcmdvdCB0byBwdXNoIC0gZG9uZSBpbiB0aGUgbWVhbnRpbWUuIDopCgo+IE9uZSB0aG91
Z2h0IHRvIHBvbmRlciBpcyB0aGF0IEkgaGF2ZSBhbiAiODg6ODgiIGRpc3BsYXkgd2hlcmUKPiB0
aGUgZW50aXJlIG1pZGRsZSBncmlkIGlzIHJlc2VydmVkIGZvciB0aGUgY29sb24gKHdoaWNoIGlz
IHdpcmVkIHRvIGp1c3QKPiBvbmUgc2VnbWVudCkgLSBJJ20gbm90IHN1cmUgaG93IHRoYXQgY291
bGQgYmUgc2FuZWx5IGRlc2NyaWJlZCA6LwoKV2VsbCwgdGhhdCBzb3VuZHMgZXhhY3RseSBsaWtl
IG15IGJpbmRpbmdzIGV4YW1wbGUgYW5kIFg5Uy4gWW91J2xsIGZpbmQKdGhlIGNvbG9uIGNvbmZp
Z3VyZWQgYXMgTEVELCBzZXBhcmF0ZSBmcm9tIHRoZSBmb3VyIGRpZ2l0cywgd2hpY2ggZG9uJ3QK
bmVlZCB0byBiZSBjb250aWd1b3VzIGR1ZSB0byBzZXBhcmF0ZSByZWcgZW50cmllcyBwZXIgZGln
aXQuCgpXaGlsZSBpdCBtYXkgYmUgcG9zc2libGUgdG8gcHV0IG1vcmUgY2xldmVybmVzcyBpbnRv
IHRleHRfc3RvcmUoKSB0byBzZXQKdGhlIGNvbG9uIGFzIHBhcnQgb2YgZml2ZS1jaGFyICI4ODo4
OCIgdGV4dCwgd2UnZCBsaWtlbHkgd2FudCB0byBibGluawppdCBldmVyeSBoYWxmIHNlY29uZCwg
d2hpY2ggd2Ugc2hvdWxkIGJldHRlciBkbyB3aXRob3V0IHVwZGF0aW5nIHRoZQpmdWxsIGRpc3Bs
YXkgdGV4dCBmcm9tICI4ODo4OCIgdG8gIjg4IDg4Ii4gIjg4ODgiIHVwZGF0ZWQgZXZlcnkgbWlu
dXRlCnNvdW5kcyBsZXNzIHByb2JsZW1hdGljLgoKVWdseSB3aXRoIHRoZSBjb2xvbiBMRUQgaXMg
dGhhdCB0aGUgcmVkb25lIExFRCBiaW5kaW5ncyBkb24ndCB5ZXQgaGF2ZSBhCmZ1bmN0aW9uIGRl
ZmluZWQgZm9yIHRoaXMsIHNvIEknbSBjdXJyZW50bHkgbWlzdXNpbmcgd2hhdGV2ZXIgd2FzIHRo
ZXJlLgpJIHNob3VsZCBwcmVwYXJlIGEgYmluZGluZ3MgYWRkaXRpb24sIGlmIHdlIHdhbnQgdG8g
dXNlIGFuIExFRCBub2RlLgoKUmVnYXJkcywKQW5kcmVhcwoKPiBbMV0KPiBodHRwOi8vd3d3LmFy
dHNjaGlwLmNvbS9wcm9kdWN0cy5hc3A/bHg9c21hbGwmYW5pZD03NzkmUGFyZW50TmFtZT1TaWdu
YWwlMjBtYW5hZ2VtZW50JTIwX0lfTyUyMEV4dGVuZGVyCj4gCj4+IFRoaXMgc2VyaWVzIGlzIGJh
c2VkIG9uIG15IG5vdC15ZXQtcG9zdGVkIFJURDEyOTUgcGluY3RybCBhbmQgR1BJTwo+PiBkcml2
ZXJzLgo+Pgo+PiBMYXRlc3QgZXhwZXJpbWVudGFsIHBhdGNoZXMgYXQ6Cj4+IGh0dHBzOi8vZ2l0
aHViLmNvbS9hZmFlcmJlci9saW51eC9jb21taXRzL3J0ZDEyOTUtbmV4dApbc25pcF0KCi0tIApT
VVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkg
TsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBO
w7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
