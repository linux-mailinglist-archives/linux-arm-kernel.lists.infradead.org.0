Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AEEFDC8D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 12:49:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfPWGJYgz5GU3ZwToGFc4AhExf2rrX4aVKKWV2YxpZE=; b=Mk0TuNP8NdS0/G
	sF9+qwklqeXxycHEBp6qEySsIYVVk1FTae5X1mZbFlZCLZrbvRZgFJahG2YpqQiJ7gijAKlauh8Zr
	tKpEexyi2AdGDDXvKQgbO3Zv492JoPAfKpahZZMlsybuD+XV272Qe2Q7FH4BFcxaRBDM/+kOBBGgr
	lw9aMz8Ro+ACh6b2erKVd+QHOjvRE4S6CuzXdzHyhpzER98TaLSo6ejLa/kvc6WKwQUkskcNxM1Uq
	lEpkXPqzcpjwTzqOR1NBLCT2zyE50tlHCWZT3DvctfC+0wCTwtto9WriPyvbI+K23x8/v1jJxVzuI
	FYqI7HlZelzmb2MXbGmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVa6p-0002cC-Pj; Fri, 15 Nov 2019 11:49:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVa6R-0002Z8-Uz; Fri, 15 Nov 2019 11:49:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AEDCEADCB;
 Fri, 15 Nov 2019 11:49:25 +0000 (UTC)
Subject: Re: Sense of soc bus? (was: [PATCH] base: soc: Export
 soc_device_to_device() helper)
To: Rob Herring <robh@kernel.org>
References: <20191103013645.9856-3-afaerber@suse.de>
 <20191111045609.7026-1-afaerber@suse.de> <20191111052741.GB3176397@kroah.com>
 <586fa37c-6292-aca4-fa7c-73064858afaf@suse.de>
 <20191111064040.GA3502217@kroah.com>
 <a88442df-dc6b-07e5-8dee-9e308bdda450@suse.de>
 <20191112052347.GA1197504@kroah.com>
 <20191112072926.isjxfa4ci6akhx56@pengutronix.de>
 <aff81b8e-f041-73a5-6a95-d308fa07842c@suse.de>
 <CAL_JsqLr=fw6zxa=69rtgZ4oxzdw=cVDr3km5ya0pRGsNT1xLw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <8411cceb-56f1-bcb3-96b6-5a2aaedd18cf@suse.de>
Date: Fri, 15 Nov 2019 12:49:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLr=fw6zxa=69rtgZ4oxzdw=cVDr3km5ya0pRGsNT1xLw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_034928_290584_E5D11FAF 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-realtek-soc@lists.infradead.org, Tony Lindgren <tony@atomide.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 DTML <devicetree@vger.kernel.org>,
 Architecture Mailman List <boot-architecture@lists.linaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 linux-amlogic@lists.infradead.org, linux-omap <linux-omap@vger.kernel.org>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 LAKML <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTQuMTEuMTkgdW0gMjM6MDkgc2NocmllYiBSb2IgSGVycmluZzoKPiBPbiBUdWUsIE5vdiAx
MiwgMjAxOSBhdCA0OjQ3IEFNIEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4gd3Jv
dGU6Cj4+IEZpbmFsbHksIGFyY2gvYXJtIHNlZW1zIHVuaXF1ZSBpbiB0aGF0IGl0IGhhcyB0aGUg
bWFjaGluZV9kZXNjIG1lY2hhbmlzbQo+PiB0aGF0IGFsbG93cyBpbmRpdmlkdWFsIFNvQ3MgdG8g
Zm9yY2UgY3JlYXRpbmcgdGhlaXIgc29jX2RldmljZSBlYXJseSBhbmQKPj4gdXNpbmcgaXQgYXMg
cGFyZW50IGZvciBmdXJ0aGVyIERULWNyZWF0ZWQgcGxhdGZvcm1fZGV2aWNlcy4gV2l0aCBhcm02
NAo+PiB3ZSd2ZSBsb3N0IHRoYXQgYWJpbGl0eSwgYW5kIG5pb3MyIGlzIG5vdCB1c2luZyBpdCBl
aXRoZXIuCj4+IEEgYmFkIHNpZGUgZWZmZWN0ICh3aXRoIFNVU0UgaGF0IG9uKSBpcyB0aGF0IHRo
aXMgcGFyZW50IGRlc2lnbiBwYXR0ZXJuCj4+IGRvZXMgbm90IGFsbG93IHRvIGJ1aWxkIHN1Y2gg
ZHJpdmVycyBhcyBtb2R1bGVzLCB3aGljaCBtZWFucyB0aGF0IGRpc3Rybwo+PiBjb25maWdzIHVz
aW5nIGFybSdzIG11bHRpLXBsYXRmb3JtLCBlLmcuLCBDT05GSUdfQVJDSF9NVUxUSV9WNyB3aWxs
IGdldAo+PiB1bm5lY2Vzc2FyeSBjb2RlIGNyZWVwIGFzIG5ldyBwbGF0Zm9ybXMgZ2V0IGFkZGVk
IG92ZXIgdGltZSAoYmV5b25kIHRoZQo+PiBiYXNpYyBjbGssIHBpbmN0cmwsIHR0eSBhbmQgbWF5
YmUgdGltZXIpLgo+PiBFdmVuIGlmIGl0IHdlcmUgcG9zc2libGUgdG8gY2FsbCBpbnRvIGEgZHJp
dmVyIG1vZHVsZSB0aGF0IGVhcmx5LCB1c2luZwo+PiBpdCBhcyBwYXJlbnQgd291bGQgc2VlbSB0
byBpbXBseSB0aGF0IGFsbCB0aGUgcmVmZXJlbmNlcyBieSBpdHMgY2hpbGRyZW4KPj4gd291bGQg
bm90IGFsbG93IHRvIHVubG9hZCB0aGUgbW9kdWxlLCB3aGljaCBJJ2QgY29uc2lkZXIgYSBmbGF3
ZWQgZGVzaWduCj4+IGZvciBzdWNoIGFuICJvcHRpb25hbCIgcmVhZC1vbmNlIGRyaXZlci4gSWYg
d2Ugd2FudCB0aGUgZGV2aWNlIGhpZXJhcmNoeQo+PiB0byBoYXZlIGEgc29jIHJvb3QgdGhlbiBt
b3N0IERUIGJhc2VkIHBsYXRmb3JtcyB3aWxsIGhhdmUgYSAvc29jIERUIG5vZGUKPj4gYW55d2F5
IChhbHRob3VnaCBubyBkZXZpY2VfdHlwZSA9ICJzb2MiKSB0aGF0IHdlIHByb2JhYmx5IGNvdWxk
IGhhdmUgYQo+PiBkZXZpY2UgcmVnaXN0ZXJlZCBmb3IgaW4gY29tbW9uIGNvZGUgcmF0aGVyIHRo
YW4gZWFjaCBTb0MgcGxhdGZvcm0KPj4gaGFuZGxpbmcgdGhhdCBkaWZmZXJlbnRseT8gVGhhdCBt
aWdodCB0aGVuIG1ha2Ugc29jX3JlZ2lzdGVyX2RldmljZSgpCj4+IG5vdCB0aGUgY3JlYXRvciBv
ZiB0aGUgZGV2aWNlIChpZiBwcmUtZXhpc3RlbnQpIGJ1dCB0aGUgc3VwcGxpZXIgb2YgZGF0YQo+
PiB0byB0aGF0IGNvcmUgZGV2aWNlLCB3aGljaCBzaG91bGQgdGhlbiBhbGxvdyB0byB1bmxvYWQg
dGhlIGRhdGEgcHJvdmlkZXIKPj4gd2l0aCBqdXN0IHRoZSBzeXNmcyBkYXRhIGRpc2FwcGVhcmlu
ZyB1bnRpbCByZS1pbnNlcnRlZCAoc3BlZWRpbmcgdXAgdGhlCj4+IGRldmVsb3AtYW5kLXRlc3Qg
Y3ljbGUgb24gc2F5IG5vdC1zby1yZXNvdXJjZS1jb25zdHJhaW5lZCBwbGF0Zm9ybXMpLgo+IAo+
IEkgZm9yIG9uZSB3b3VsZCBsaWtlIHRvIGZvciB0aGlzIHRvIGJlIGNvbnNpc3RlbnQuIEVpdGhl
ciB3ZSBhbHdheXMKPiBoYXZlIGFuIFNvQyBkZXZpY2UgcGFyZW50IG9yIG5ldmVyLiBJIHdvdWxk
bid0IGRlY2lkZSBiYXNlZCBvbiBoYXZpbmcKPiBhIERUIG5vZGUgb3Igbm90IGVpdGhlci4KClN1
cmUsIGlmIHdlIGNhbiBhbHdheXMgYmUgY29uc2lzdGVudCwgdGhhdCBtaWdodCBiZSBiZXN0LgoK
V2hlcmUgSSB3YXMgY29taW5nIGZyb20gaGVyZSBpcyB0aGF0LCBpZiB3ZSdyZSBub3Qgc3VwcG9z
ZWQgdG8gdXNlCnNvY19kZXZpY2VfdG9fZGV2aWNlKCksIHRoZW4gd2UgaGF2ZSBubyB3YXkgdG8g
YXNzb2NpYXRlIGFuIG9mX25vZGUgd2l0aAp0aGUgc29jX2RldmljZSBmcm9tIHRoZSBvdXRzaWRl
IChhbmQgbm9ib2R5IHdhcyBkb2luZyBpdCB0b2RheSwgYXMgcGVyCm15IGFuYWx5c2lzKS4gV2Un
ZCBlaXRoZXIgbmVlZCBhIG5ldyBoZWxwZXIgb2Zfc29jX2RldmljZV9yZWdpc3RlcigpCndpdGgg
YWRkaXRpb25hbCBhcmd1bWVudCBmb3IgdGhlIG5vZGUsIG9yIGl0IHdvdWxkIG5lZWQgdG8gYmUg
ZG9uZQplbnRpcmVseSBpbiB0aGUgaW5mcmFzdHJ1Y3R1cmUgYXMgSSBzdWdnZXN0ZWQsIGJlIGl0
IGJ5IGxvb2tpbmcgZm9yIG9uZQpoYXJkY29kZWQgL3NvYyBub2RlIG9yIGZvciBub2RlcyB3aXRo
IGRldmljZV90eXBlID0gInNvYyIuCgpSb2IsIGluIGxpZ2h0IG9mIHRoaXMgZGlzY3Vzc2lvbiwg
c2hvdWxkIHdlIHN0YXJ0IGFkZGluZyB0aGUgbGF0dGVyCnByb3BlcnR5IGZvciBuZXcgRFRzIHN1
Y2ggYXMgbXkgbmV3IFJlYWx0ZWsgU29Dcywgb3Igd2FzIHRoZXJlIGEgcmVhc29uCnRoaXMgaGFz
IG5vdCBiZWVuIHVzZWQgY29uc2lzdGVudGx5IG91dHNpZGUgb2YgcG93ZXJwYyBhbmQgbmlvczI/
CkludGVsL0FsdGVyYSBhcHBlYXIgdG8gYmUgdGhlIG9ubHkgdHdvIGluIGFybTY0LCB3aXRoIG9u
bHkgdGhyZWUgbW9yZSBpbgphcm0sIG5vbmUgaW4gbWlwcy4KCihCVFcgbXkgYXNzdW1wdGlvbiB3
YXMgdGhhdCB3ZSBkb24ndCBmb2xsb3cgdGhlIGJvb3Rpbmctd2l0aG91dC1vZi50eHQKZG9jdW1l
bnRlZCBzY2hlbWEgb2Ygc29jPFNPQ25hbWU+IHNvIHRoYXQgd2UgY2FuIHNoYXJlIC5kdHNpIGFj
cm9zcwpkaWZmZXJlbnRseSBuYW1lZCBTb0NzLCBpcyB0aGF0IGNvcnJlY3Q/KQoKPiBHZW5lcmFs
bHksIHdlIHNob3VsZCBhbHdheXMgaGF2ZSBNTUlPIGRldmljZXMKPiB1bmRlciBhIGJ1cyBub2Rl
IGFuZCBwZXJoYXBzIG1vcmUgdGhhbiBvbmUsIGJ1dCB0aGF0IGRvZXNuJ3QgYWx3YXlzCj4gaGFw
cGVuLiBJIHRoaW5rIGJ1aWxkaW5nIHRoZSBkcml2ZXJzIGFzIG1vZHVsZXMgaXMgYSBnb29kIHJl
YXNvbiB0byBkbwo+IGF3YXkgd2l0aCB0aGUgcGFyZW50IGRldmljZS4KPiAKPiBJdCB3b3VsZCBh
bHNvIGFsbG93IGdldHRpbmcgcmlkIG9mIHJlbWFpbmluZwo+IG9mX3BsYXRmb3JtX2RlZmF1bHRf
cG9wdWxhdGUgY2FsbHMgaW4gYXJtIHBsYXRmb3JtcyBleGNlcHQgZm9yIGF1eGRhdGEKPiBjYXNl
cy4gUHJldHR5IG11Y2ggdGhhdCdzIHRoZSBvbmVzIHlvdSBsaXN0IGJlbG93IGluIGFyY2gvYXJt
Ly4KClRoZSBtYWpvcml0eSB3YXMgaW5kZWVkIHBhc3NpbmcgaW4gTlVMTCwgc28geWVhaCwgd2Ug
bWlnaHQgY2xlYW4gdGhhdAp1cCwgaWYgc29tZW9uZSBjb3VsZCBjb21lIHVwIHdpdGggYSBwbGFu
IG9mIHdoZXJlL2hvdyB0byBpbXBsZW1lbnQgaXQuCgpDaGVlcnMsCkFuZHJlYXMKCi0tIApTVVNF
IFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8
cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xy
bmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
