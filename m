Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6099F8531
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 01:29:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgOHHPYJQLAkOPgjRqou1nX5vpoz1nNeTslsUbHorMk=; b=aglm6TbPraMSo/
	UqoN0t0gsnCiu25MMvfwkcoRyyMDOQwmTVmxzL1RH/ZU0u8lBp7t/r2zwnm27faI1cj7Ok466wTJj
	TUgWpBKyqHQEfI7EHr0oNR9+3i71BiIwdKUj5z9mMtlFdbDSdfv5to8ru0L9mM56EkPPnSdF2Mfsh
	du+pPoGgpLvEJWBNqL4dtrA8G9k+rb87fAYVl/7LqjqR9rovxzu5To697soV3Ndut1iITpPUfjc3w
	GBMkCdX0S+vQ1DiU4L2C1/+DA+Zzgi8XwPw5XgIAd4KCQbBnHkeggQMc4NA+6/SVmCfKeTC/Vdjmm
	7G+GH/PWyQQZjG8nPE6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUK3g-00017G-Dl; Tue, 12 Nov 2019 00:29:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUK3U-000161-0l; Tue, 12 Nov 2019 00:29:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BCDE4B2C6;
 Tue, 12 Nov 2019 00:29:09 +0000 (UTC)
Subject: Re: [PATCH] base: soc: Export soc_device_to_device() helper
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20191103013645.9856-3-afaerber@suse.de>
 <20191111045609.7026-1-afaerber@suse.de> <20191111052741.GB3176397@kroah.com>
 <586fa37c-6292-aca4-fa7c-73064858afaf@suse.de>
 <20191111064040.GA3502217@kroah.com>
 <a88442df-dc6b-07e5-8dee-9e308bdda450@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <94db77d0-f7a3-2a16-6a5d-cd28f68fe5b2@suse.de>
Date: Tue, 12 Nov 2019 01:29:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <a88442df-dc6b-07e5-8dee-9e308bdda450@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_162912_351824_AA6F091E 
X-CRM114-Status: GOOD (  28.35  )
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
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 linux-amlogic@lists.infradead.org, linux-omap@vger.kernel.org,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTEuMTEuMTkgdW0gMjE6MTAgc2NocmllYiBBbmRyZWFzIEbDpHJiZXI6Cj4gQW0gMTEuMTEu
MTkgdW0gMDc6NDAgc2NocmllYiBHcmVnIEtyb2FoLUhhcnRtYW46Cj4+IE9uIE1vbiwgTm92IDEx
LCAyMDE5IGF0IDA2OjQyOjA1QU0gKzAxMDAsIEFuZHJlYXMgRsOkcmJlciB3cm90ZToKPj4+IEhp
IEdyZWcsCj4+Pgo+Pj4gQW0gMTEuMTEuMTkgdW0gMDY6Mjcgc2NocmllYiBHcmVnIEtyb2FoLUhh
cnRtYW46Cj4+Pj4gT24gTW9uLCBOb3YgMTEsIDIwMTkgYXQgMDU6NTY6MDlBTSArMDEwMCwgQW5k
cmVhcyBGw6RyYmVyIHdyb3RlOgo+Pj4+PiBVc2Ugb2Ygc29jX2RldmljZV90b19kZXZpY2UoKSBp
biBkcml2ZXIgbW9kdWxlcyBjYXVzZXMgYSBidWlsZCBmYWlsdXJlLgo+Pj4+PiBHaXZlbiB0aGF0
IHRoZSBoZWxwZXIgaXMgbmljZWx5IGRvY3VtZW50ZWQgaW4gaW5jbHVkZS9saW51eC9zeXNfc29j
LmgsCj4+Pj4+IGxldCdzIGV4cG9ydCBpdCBhcyBHUEwgc3ltYm9sLgo+Pj4+Cj4+Pj4gSSB0aG91
Z2h0IHdlIHdlcmUgZml4aW5nIHRoZSBzb2MgZHJpdmVycyB0byBub3QgbmVlZCB0aGlzLiAgV2hh
dAo+Pj4+IGhhcHBlbmVkIHRvIHRoYXQgZWZmb3J0PyAgSSB0aG91Z2h0IEkgaGFkIHBhdGNoZXMg
aW4gbXkgdHJlZSAob3IKPj4+PiBzb21lb25lJ3MgdHJlZSkgdGhhdCBkaWQgc29tZSBvZiB0aGlz
IHdvcmsgYWxyZWFkeSwgc3VjaCB0aGF0IHRoaXMKPj4+PiBzeW1ib2wgaXNuJ3QgbmVlZGVkIGFu
eW1vcmUuCj4+Pgo+Pj4gSSBkbyBzdGlsbCBzZWUgdGhpcyBmdW5jdGlvbiB1c2VkIGluIG5leHQt
MjAxOTExMDggaW4gZHJpdmVycy9zb2MvLgo+Pj4KPj4+IEknbGwgYmUgaGFwcHkgdG8gYWRqdXN0
IG15IFJGQyBkcml2ZXIgaWYgc29tZW9uZSBwb2ludHMgbWUgdG8gaG93IQo+Pgo+PiBMb29rIGF0
IGMzMWU3MzEyMWY0YyAoImJhc2U6IHNvYzogSGFuZGxlIGN1c3RvbSBzb2MgaW5mb3JtYXRpb24g
c3lzZnMKPj4gZW50cmllcyIpIGZvciBob3cgeW91IGNhbiBqdXN0IHVzZSB0aGUgZGVmYXVsdCBh
dHRyaWJ1dGVzIGZvciB0aGUgc29jIHRvCj4+IGNyZWF0ZSB0aGUgbmVlZGVkIHN5c2ZzIGZpbGVz
LCBpbnN0ZWFkIG9mIGhhdmluZyB0byBkbyBpdCAiYnkgaGFuZCIKPj4gd2hpY2ggaXMgcmFjeSBh
bmQgaW5jb3JyZWN0Lgo+IAo+IFVucmVsYXRlZC4KPiAKPj4+IEdpdmVuIHRoZSBjdXJyZW50IHN0
cnVjdCBsYXlvdXQsIGEgdHlwZSBjYXN0IG1pZ2h0IHdvcmsgKGJ1dCB1Z2x5KS4KPj4+IE9yIGlm
IHdlIHN0YXkgd2l0aCBteSBjdXJyZW50IFJGQyBkcml2ZXIgZGVzaWduLCB3ZSBjb3VsZCB1c2Ug
dGhlCj4+PiBwbGF0Zm9ybV9kZXZpY2UgaW5zdGVhZCBvZiB0aGUgc29jX2RldmljZSAod2hpY2gg
d291bGQgY2x1dHRlciB0aGUKPj4+IHNjcmVlbiBtb3JlIHRoYW4gInNvYyBzb2MwOiIpIG9yIHJl
c29ydCB0byBwcl9pbmZvKCkgdy9vIGRldmljZS4KPj4KPj4gSWNrLCBubywgZG9uJ3QgY2FzdCBi
bGluZGx5LiAgV2hhdCBkbyB5b3UgbmVlZCB0aGUgcG9pbnRlciBmb3I/ICBJcyB0aGlzCj4+IGZv
ciBpbi10cmVlIGNvZGU/Cj4gCj4gTm8sIGFuIFJGQyBwYXRjaHNldDogaHR0cHM6Ly9wYXRjaHdv
cmsua2VybmVsLm9yZy9jb3Zlci8xMTIyNDI2MS8KPiAKPiBBcyBJIGluZGljYXRlZCBhYm92ZSwg
SSB1c2VkIGl0IGZvciBhIGRldl9pbmZvKCksIHdoaWNoIEkgY2FuIGVhc2lseQo+IGF2b2lkIGJ5
IHVzaW5nIHByX2luZm8oKSBpbnN0ZWFkOgo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9y
ZWFsdGVrL2NoaXAuYyBiL2RyaXZlcnMvc29jL3JlYWx0ZWsvY2hpcC5jCj4gaW5kZXggZTUwNzhj
NjczMWZkLi5mOTM4MGU4MzE2NTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zb2MvcmVhbHRlay9j
aGlwLmMKPiArKysgYi9kcml2ZXJzL3NvYy9yZWFsdGVrL2NoaXAuYwo+IEBAIC0xNzgsOCArMTc4
LDcgQEAgc3RhdGljIGludCBydGRfc29jX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gCj4gICAgICAgICBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBzb2NfZGV2KTsKPiAK
PiAtICAgICAgIGRldl9pbmZvKHNvY19kZXZpY2VfdG9fZGV2aWNlKHNvY19kZXYpLAo+IC0gICAg
ICAgICAgICAgICAiJXMgJXMgKDB4JTA4eCkgcmV2ICVzICgweCUwOHgpIGRldGVjdGVkXG4iLAo+
ICsgICAgICAgcHJfaW5mbygiJXMgJXMgKDB4JTA4eCkgcmV2ICVzICgweCUwOHgpIGRldGVjdGVk
XG4iLAo+ICAgICAgICAgICAgICAgICBzb2NfZGV2X2F0dHItPmZhbWlseSwgc29jX2Rldl9hdHRy
LT5zb2NfaWQsIGNoaXBfaWQsCj4gICAgICAgICAgICAgICAgIHNvY19kZXZfYXR0ci0+cmV2aXNp
b24sIGNoaXBfcmV2KTsKPiAKClRlc3RlZCBhbmQgc3F1YXNoZWQgaW4gbXkgdHJlZS4KCj4gCj4g
QnV0IGFzIEkgc2FpZCwgdGhlcmUgaXMgc3RpbGwgaW4tdHJlZSBjb2RlIHVzaW5nIHRoaXMgaGVs
cGVyOgpbc25pcF0KPiBTbywgbm90IGNvdW50aW5nIG15IHVubWVyZ2VkIFJlYWx0ZWsgZHJpdmVy
LAo+ICogd2UgaGF2ZSB0d28gY2FzZXMgb2Ygc3RydWN0IGRldmljZSBiZWluZyB1c2VkIGZvciBk
ZXZfaW5mbygpLCB3aGljaAo+IGNvdWxkIGJlIGNsZWFuZWQgdXAgd2l0aCBkZXZpY2UtbGVzcyBw
cl9pbmZvKCksIEkgY291bGQgcG9zdCBhIHBhdGNoLAoKUGF0Y2ggc2VudDogaHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTIzNzk0OS8gKHVudGVzdGVkKQoKPiAqIGZyZXF1ZW50
IHVzYWdlIGluIGFybS9tYWNoLSogZm9yIG9mX3BsYXRmb3JtX2RlZmF1bHRfcG9wdWxhdGUoKSwg
dGhpcwo+IHNlZW1zIG1vc3QgZGlmZmljdWx0IHRvIHJlcGxhY2UgaWYgd2UgbmVpdGhlciB3YW50
IHRvIGNhc3Qgbm9yIGV4cG9zZQo+IHRoZSBzdHJ1Y3QsCgpPbmUgY2xldmVyIHdheSBtaWdodCBi
ZSB0byBpbXBsZW1lbnQgYSBuZXcgb2Zfc29jX2RlZmF1bHRfcG9wdWxhdGUoKSBpbgpkcml2ZXJz
L2Jhc2Uvc29jLmMgdGhhdCB0YWtlcyBhIHNvY19kZXZpY2UgaW5zdGVhZCBvZiBkZXZpY2UsIGRv
aW5nIHRoZQpjb252ZXJzaW9uIGluc2lkZSBzb2MuYyBhbmQgY2FsbGluZyBvZl9wbGF0Zm9ybV9k
ZWZhdWx0X3BvcHVsYXRlKCkgZnJvbQp0aGVyZS4gVGhlbiB3ZSBjb3VsZCBjb252ZXJ0IHByZXNl
bnQgdXNlcnMgdG8gcGFzcyBhcm91bmQgc29jX2RldmljZQppbnN0ZWFkIG9mIGRldmljZSwgd2l0
aCBhIHBlcnNwZWN0aXZlIHRvIG1ha2Ugc29jX2RldmljZV90b19kZXZpY2UoKQpzdGF0aWMgaW5z
aWRlIGJhc2Uvc29jLmMuCgpzeXNfc29jLmggZG9lcyBub3QgcHJlc2VudGx5ICNpbmNsdWRlIGFu
eSBPRiBoZWFkZXJzLCBzbyB0aGUgZGVjbGFyYXRpb24KbWF5IG5lZWQgdG8gZ28gaW50byBvZl9w
bGF0Zm9ybS5oIGFuZCB0byBjb25zaWRlciBDT05GSUdfU09DX0JVUy4KCldpbGwgcmVxdWlyZSBj
b21waWxlLXRlc3RpbmcgZm9yIGVhY2ggcGxhdGZvcm0gYW5kIGlkZWFsbHkgc29tZSBrYnVpbGQK
Ym90IHBhc3NlcyB0byBnZXQgcmlnaHQsIHNvIG5vdCBhIHF1aWNrIHNob3QuCgpXaGlsZSBhdCBp
dCwgYW4gb2Zfc29jX2RldmljZV9yZWdpc3RlcigpIHZhcmlhbnQgY291bGQgZmlsbApzb2NfZGV2
aWNlX2F0dHJpYnV0ZTo6bWFjaGluZSBpbiBjb21tb24gY29kZSBpbnN0ZWFkIG9mIGVhY2ggcGxh
dGZvcm0KZHVwbGljYXRpbmcgdG8gcmVhZCB0aGlzIGZyb20gdGhlIERUIHJvb3Qgbm9kZSdzIG1v
ZGVsIHByb3BlcnR5LgoKPiAqIHNvbWUgc2ltcGx5IHVudXNlZCwgd2hpY2ggY291bGQgYmUgcmVm
YWN0b3JlZCB0byByZXR1cm4gdm9pZCwgYW5kCgpQYXRjaCBzZW50OiBodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3BhdGNoLzExMjM3OTcxLyAodW50ZXN0ZWQpCgo+ICogc29tZSBmb3IgZGV2
aWNlX2NyZWF0ZV9maWxlKCksIHdoaWNoIGNvdWxkIHByb2JhYmx5IGJlIGF2b2lkZWQgd2l0aAo+
IGN1c3RvbV9hdHRyX2dyb3VwLgo+IAo+IEl0IGFsc28gcmFpc2VzIHRoZSBxdWVzdGlvbiBvZiB3
aGV0aGVyIG5ldyBhcm0gcGxhdGZvcm1zIHN1Y2ggYXMgUlREMTE5NQo+IChtYWNoLXJlYWx0ZWsp
IHNob3VsZCBhdHRlbXB0IHRvIHVzZSBvZl9wbGF0Zm9ybV9kZWZhdWx0X3BvcHVsYXRlKCkgd2l0
aAo+IHRoZSBzb2NfZGV2aWNlIHNvbWVob3csIG9yIGlmIG5vdCwgd2hldGhlciB0aG9zZSBwbGF0
Zm9ybXMgc2hvdWxkIGJlCj4gcmVmYWN0b3JlZCB0byBjb25zaXN0ZW50bHkgbm8gbG9uZ2VyIGRv
IHNvPwo+IAo+IEkgYmVsaWV2ZSBpbiB0aGUgQnJva2VuIFdpbmRvdyBUaGVvcnksIGkuZS4gZml4
aW5nIHdoYXQgd2UgY2FuIGJlZm9yZQo+IG1pc3Rha2VzIGdldCBjb3BpZWQgYW5kIHByb3BhZ2F0
ZSBmdXJ0aGVyIGluIGNvZGU7IGJ1dCBoZXJlIEkgZG9uJ3Qgc2VlCj4gYSBwZXJzcGVjdGl2ZSBm
b3IgZ2V0dGluZyByaWQgb2Ygc29jX2RldmljZV90b19kZXZpY2UoKSBjb21wbGV0ZWx5IHRvCj4g
cHJldmVudCBuZXcgdXNhZ2VzLCBub3IgY2FuIEkgdGVzdCBhbGwgb2YgdGhvc2UgcGxhdGZvcm1z
IG15c2VsZi4KPiAKPiBIYXMgYSBjbGVhbnVwIGJhc2VkIG9uIGN1c3RvbV9hdHRyX2dyb3VwIGJl
ZW4gYXR0ZW1wdGVkIGFscmVhZHkgYW5kIGlzCj4gd2FpdGluZyBvbiBwYXRjaGVzIHRvIGdldCBy
ZXZpZXdlZCBhbmQgbWVyZ2VkIHRocm91Z2ggbWFpbnRhaW5lciB0cmVlcywKPiBvciBkbyB3ZSBu
ZWVkIHRvIHByZXBhcmUgbmV3IGNsZWFudXAgcGF0Y2hlcyBoZXJlPyBBIHNlYXJjaCBmb3IKPiAi
c29jX2RldmljZV90b19kZXZpY2UiIG9uIExBS01MIFBhdGNod29yayBzaG93cyBvbmx5IHRoaXMg
cGF0Y2ggb2YgbWluZS4KCkFjdHVhbGx5IEkgZG9uJ3QgZmluZCBhIHNpbmdsZSB1c2VyIG9mIGN1
c3RvbV9hdHRyX2dyb3VwIGluIGxpbnV4LW5leHQsCndoaWNoIG1heSBiZSBiZWNhdXNlIHRoZSBw
YXRjaCBpbnRyb2R1Y2luZyBpdCBpcyBmcm9tIE9jdG9iZXIgYW5kIHBlb3BsZQphcmUgd2FpdGlu
ZyBvbiB0aGUgbmV4dCAtcmMxIGJlZm9yZSB0aGV5IGNhbiBtZXJnZSBwYXRjaGVzIHVzaW5nIGl0
PwoKUmVnYXJkcywKQW5kcmVhcwoKLS0gClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkg
R21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IElt
ZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
