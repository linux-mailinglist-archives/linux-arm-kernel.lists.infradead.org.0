Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 015E3158B12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 09:10:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlsnLUU5g9eKsyjmaWzNOCE7wehrE8R9bT1/gwFYwtg=; b=GX0AAF4MzBJIBQ
	wubeNQ3+6RpqKoCXhkhbkP5pLnRHZGVnr2FvyqxxmAOBiPpqoFfFXWoy7MJeTYRxn/llTLpvgv+Ip
	0sWZS6rVgOco2yl4j2aoY9oxD44FVdJhI8g88hjJKnHXst12cGKX4O+YTTKbYPk58AI0roHOOGeFp
	fWu4SftvCPq/4PC6QProzVBZAuvZJjynVZra7pE+Fiks7JPnLy24EkB9WZoKVRjMOGcSThlww5KgW
	kBswFkzWxBRjJG4z/FdNARkch7h30pBBXHZUtNtjLIQ0raKjcl66Qn5Yfgb7bGsGZNz0v2ejIeIa/
	KqM2PhxKGSsRiFqe85uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1QcL-0001WT-28; Tue, 11 Feb 2020 08:10:01 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1QcB-0001W3-FQ
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 08:09:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C5F44ACB1;
 Tue, 11 Feb 2020 08:09:49 +0000 (UTC)
Subject: Re: [PATCH 2/3] arm64: dts: allwinner: a64: Add hwspinlock node
To: Maxime Ripard <maxime@cerno.tech>
References: <20200210170143.20007-1-nborisov@suse.com>
 <20200210170143.20007-3-nborisov@suse.com>
 <20200211075543.ytsxizbysdosnx4p@gilmour.lan>
From: Nikolay Borisov <nborisov@suse.com>
Autocrypt: addr=nborisov@suse.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <01e31d57-48ef-fd39-7c16-45401c70bb63@suse.com>
Date: Tue, 11 Feb 2020 10:09:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200211075543.ytsxizbysdosnx4p@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_000951_808690_36C67123 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org, bjorn.andersson@linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS4wMi4yMCDQsy4gOTo1NSDRhy4sIE1heGltZSBSaXBhcmQgd3JvdGU6Cj4gSGksCj4g
Cj4gT24gTW9uLCBGZWIgMTAsIDIwMjAgYXQgMDc6MDE6NDJQTSArMDIwMCwgTmlrb2xheSBCb3Jp
c292IHdyb3RlOgo+PiBBZGQgYSBub2RlIGRlc2NyaWJpbmcgdGhlIGh3c3BpbmxvY2sgb24gQTY0
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBOaWtvbGF5IEJvcmlzb3YgPG5ib3Jpc292QHN1c2UuY29t
Pgo+PiAtLS0KPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRz
aSB8IDkgKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4+Cj4+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0
c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kKPj4gaW5k
ZXggMjdlNDgyMzRmMWMyLi4wMWRlODlmYzA5Y2MgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kKPj4gQEAgLTExODIsNSArMTE4MiwxNCBA
QAo+PiAgCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDI1IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+
PiAgCQkJY2xvY2tzID0gPCZvc2MyNE0+Owo+PiAgCQl9Owo+PiArCj4+ICsJCWh3c3BpbmxvY2s6
IHNwaW5sb2NrQDFjMTgwMDAgewo+IAo+IE5vZGVzIGFyZSBzdXBwb3NlZCB0byBiZSBvcmRlcmVk
IGJ5IGFzY2VuZGluZyBwaHlzaWNhbCBhZGRyZXNzCj4gCj4+ICsJCQljb21wYXRpYmxlID0gImFs
bHdpbm5lcixzdW41MGktYTY0LWh3c3BpbmxvY2siOwo+PiArCQkJcmVnID0gPDB4MDFjMTgwMDAg
MHgxMDAwPjsKPj4gKwkJCWNsb2NrcyA9IDwmY2N1IENMS19CVVNfU1BJTkxPQ0s+Owo+PiArCQkJ
cmVzZXRzID0gPCZjY3UgUlNUX0JVU19TUElOTE9DSz47Cj4+ICsJCQkjaHdsb2NrLWNlbGxzID0g
PDE+Owo+PiArCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAKPiBJcyB0aGVyZSBhIHJlYXNvbiB0
byBkaXNhYmxlIGl0PwoKSSB3b25kZXJlZCBhYm91dCB0aGF0IC0gb24gdGhlIG9uZSBoYW5kIHdl
IGNhbiBzYWZlbHkgbGVhdmUgaXQgYWx3YXlzCmVuYWJsZWQsIG9uIHRoZSBvdGhlciBoYW5kIGFs
bCBkZXZpY2VzIGFyZSBhcmUgZGlzYWJsZWQgaW4gdGhlIGR0c2kuCgo+IAo+IEFsc28sIG15IHVu
ZGVyc3RhbmRpbmcgd2FzIHRoYXQgaHdzcGlubG9ja3Mgd2VyZSBtZWFudCB0byBiZSB1c2VkIGJ5
Cj4gY2xpZW50IGRyaXZlcnMsIHNvIHN1cmVseSB3ZSBtdXN0IHRpZSB0aGVtIHRvIG90aGVyIGRl
dmljZSBub2RlcyB0b28sCj4gcmlnaHQ/CgpQZXJoYXBzIGJ1dCBhdCB0aGlzIHBvaW50IEknbSBu
b3Qgc3VyZSB0byB3aGljaCBkZXZpY2Ugc3BlY2lmaWNhbGx5LgoKPiAKPiBNYXhpbWUKPiAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
