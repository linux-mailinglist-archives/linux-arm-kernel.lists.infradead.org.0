Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C81FF1F1B2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 16:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7ZlwV4OSqHV0RIN8o6QxTWJAXJOBxRY23GsMjDJDqQ=; b=q5/NfnP68Gte0A
	3J2iTR2mU/mw5HAEqV5Pl3wk6KHcW2Prhu/7EOMj1W0glufxiWEer8WKNvp+5rN/3eEo+pa+s6e0W
	Gidgstg3cZDSEDW5M0eJtmXFIq0uK6cijTgCUPlXJ2XOtnJ5UKU/KHxXWceSXKj7UEWIqDHEjXbrd
	YTz5w8iUgVuR+u8G2tL5aG7qErTVoDqiirbdx90wVt27NdzLvmDsQ1IhJF17gdkHzL3tIMt5ZVM+H
	Yj4G5ckKFqMX21O3C9CjSeCpnyeNIv0z0LgvKxuRgBFVIFWAK2PLhpQCMM+EwHptHxxWdCbUXdckk
	A2as6OHrOZJ5LRFoW9Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIzo-0003LJ-N9; Mon, 08 Jun 2020 14:43:28 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIzf-0003K6-4N; Mon, 08 Jun 2020 14:43:21 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id iIzYjRwAsCKzeiIzbjmpDv; Mon, 08 Jun 2020 16:43:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1591627395; bh=pNmlUcaLydVQs8c0KPtxW18ChQ+9wIDu23I5D8PG9ns=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=lXCo703uwISHHqPVb6LTcqFk1zNpzIkdhr02b5dliC8MlC2/rjrPwyE2XU608Nt09
 xZ9RfHLMOUST+ISspnRMwOMIvx+pg+q+zx8hWQ4pghyAFQkpQ3I+IYdWx/xwRUtmg8
 49UW5n/YV9yqxbKA+r/688nnMTIp4XIUmbCfPT94ixhwsPr1uKVYdqMaweA2Evx0bU
 xjpsPkQ3qcSuJh9PhpOjXemxrCAHPwjKS7k8JOi+3q27ZsKc0Bssx41HDEZAXS5awd
 QUc1lJsv6deDzJ1Z2dZwe6ovg+I7Kk795sKZHv9gMUmZc03XJctF4lmWq1WLk61tZb
 8XCblszNv+ZWA==
Subject: Re: [PATCH 1/5] media: videodev2: add Compressed Framebuffer pixel
 formats
To: Neil Armstrong <narmstrong@baylibre.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>
References: <20200604135317.9235-1-narmstrong@baylibre.com>
 <20200604135317.9235-2-narmstrong@baylibre.com>
 <02aa06fd8397b77c9a75d3a8399cb55d3b4d39c1.camel@ndufresne.ca>
 <4d22ff40-11ac-c77a-564d-af9a678f23af@baylibre.com>
 <a15dea55-3ca4-2a65-5c56-6c1edd2de405@xs4all.nl>
 <a4c5ae79-1d4d-4c1e-1535-c6c8b02d4b6f@baylibre.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <2a0db0a4-9d04-f20c-39d8-ff25e07e64b7@xs4all.nl>
Date: Mon, 8 Jun 2020 16:43:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <a4c5ae79-1d4d-4c1e-1535-c6c8b02d4b6f@baylibre.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfLyiiimZ6YdsUbH2tz9gxpGCvK/fKk/xvLXfYWzoiateyJhQ0WV54t8begnlvmJru1Ht1bY5+UvW1rQaAFymDZhRDME3mQSFAKi18y7URqpcxn9hWHrG
 P9tgUzo/h6059EbdQo08Kgs/7fr/iP57hoJxgK3gP4AlNaIbXwX4mAT1H2vFaDcLEh69CeeBgg5q9Hc3GBwD9my05rakpAaB54pCYOSGYbYxZuaqjiXqBqcZ
 Wv4IB38oR84t4kT17uZEFyXPkJUP4omGWaZaFB+bK10JKirQzctsRn6H4l+PZdr2eiqDM2AbSlK5SxKdCx2PDlbrWdGe8dSuZZPfx86evzb8UWkQddtQhFOp
 MOQO/ayVZSY2I+/gJX308rbxogdZkMyjLJJDR9qwHrUTrVRmruRCyjxpQVapx8hwGCi6Vzls/pbZmgoUC0TU9vK8xu81Icgni5oQpm9tuZC1XszVBXw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_074319_877710_945AEBD5 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.22 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDgvMDYvMjAyMCAxNjoxNCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gT24gMDgvMDYvMjAy
MCAxMToyNiwgSGFucyBWZXJrdWlsIHdyb3RlOgo+PiBPbiAwOC8wNi8yMDIwIDEwOjE2LCBOZWls
IEFybXN0cm9uZyB3cm90ZToKPj4+IEhpIE5pY29sYXMsCj4+Pgo+Pj4gT24gMDUvMDYvMjAyMCAx
NzozNSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPj4+PiBMZSBqZXVkaSAwNCBqdWluIDIwMjAg
w6AgMTU6NTMgKzAyMDAsIE5laWwgQXJtc3Ryb25nIGEgw6ljcml0IDoKPj4+Pj4gRnJvbTogTWF4
aW1lIEpvdXJkYW4gPG1qb3VyZGFuQGJheWxpYnJlLmNvbT4KPj4+Pj4KPj4+Pj4gQWRkIHR3byBn
ZW5lcmljIENvbXByZXNzZWQgRnJhbWVidWZmZXIgcGl4ZWwgZm9ybWF0cyB0byBiZSB1c2VkCj4+
Pj4+IHdpdGggYSBtb2RpZmllciB3aGVuIGltcG9ydGVkIGJhY2sgaW4gYW5vdGhlciBzdWJzeXN0
ZW0gbGlrZSBEUk0vS01TLgo+Pj4+Pgo+Pj4+PiBUaGVzZSBwaXhlbCBmb3JtYXRzIHJlcHJlc2Vu
dHMgZ2VuZXJpYyA4Yml0cyBhbmQgMTBiaXRzIGNvbXByZXNzZWQgYnVmZmVycwo+Pj4+PiB3aXRo
IGEgdmVuZG9yIHNwZWNpZmljIGxheW91dC4KPj4+Pj4KPj4+Pj4gVGhlc2UgYXJlIGFsaWduZWQg
d2l0aCB0aGUgRFJNX0ZPUk1BVF9ZVVY0MjBfOEJJVCBhbmQgRFJNX0ZPUk1BVF9ZVVY0MjBfMTBC
SVQKPj4+Pj4gdXNlZCB0byBkZXNjcmliZSB0aGUgdW5kZXJseWluZyBjb21wcmVzc2VkIGJ1ZmZl
cnMgdXNlZCBmb3IgQVJNIEZyYW1lYnVmZmVyCj4+Pj4+IENvbXByZXNzaW9uLiBJbiB0aGUgQW1s
b2dpYyBjYXNlLCB0aGUgY29tcHJlc3Npb24gaXMgZGlmZmVyZW50IGJ1dCB0aGUKPj4+Pj4gdW5k
ZXJseWluZyBidWZmZXIgY29tcG9uZW50cyBpcyB0aGUgc2FtZS4KPj4+Pj4KPj4+Pj4gU2lnbmVk
LW9mZi1ieTogTWF4aW1lIEpvdXJkYW4gPG1qb3VyZGFuQGJheWxpYnJlLmNvbT4KPj4+Pj4gU2ln
bmVkLW9mZi1ieTogTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgo+Pj4+
PiAtLS0KPj4+Pj4gIGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwuYyB8IDIgKysK
Pj4+Pj4gIGluY2x1ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaCAgICAgICB8IDkgKysrKysrKysr
Cj4+Pj4+ICAyIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKPj4+Pj4KPj4+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwuYyBiL2RyaXZlcnMv
bWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwuYwo+Pj4+PiBpbmRleCAyMzIyZjA4YTk4YmUuLjhm
MTRhZGZkNWJjNSAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRs
Mi1pb2N0bC5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaW9jdGwu
Ywo+Pj4+PiBAQCAtMTQ0Nyw2ICsxNDQ3LDggQEAgc3RhdGljIHZvaWQgdjRsX2ZpbGxfZm10ZGVz
YyhzdHJ1Y3QgdjRsMl9mbXRkZXNjICpmbXQpCj4+Pj4+ICAJCWNhc2UgVjRMMl9QSVhfRk1UX1M1
Q19VWVZZX0pQRzoJZGVzY3IgPSAiUzVDNzNNWCBpbnRlcmxlYXZlZCBVWVZZL0pQRUciOyBicmVh
azsKPj4+Pj4gIAkJY2FzZSBWNEwyX1BJWF9GTVRfTVQyMUM6CWRlc2NyID0gIk1lZGlhdGVrIENv
bXByZXNzZWQgRm9ybWF0IjsgYnJlYWs7Cj4+Pj4+ICAJCWNhc2UgVjRMMl9QSVhfRk1UX1NVTlhJ
X1RJTEVEX05WMTI6IGRlc2NyID0gIlN1bnhpIFRpbGVkIE5WMTIgRm9ybWF0IjsgYnJlYWs7Cj4+
Pj4+ICsJCWNhc2UgVjRMMl9QSVhfRk1UX1lVVjQyMF84QklUOglkZXNjciA9ICJDb21wcmVzc2Vk
IFlVViA0OjI6MCA4LWJpdCBGb3JtYXQiOyBicmVhazsKPj4+Pj4gKwkJY2FzZSBWNEwyX1BJWF9G
TVRfWVVWNDIwXzEwQklUOglkZXNjciA9ICJDb21wcmVzc2VkIFlVViA0OjI6MCAxMC1iaXQgRm9y
bWF0IjsgYnJlYWs7Cj4gCj4gWy4uXQo+IAo+Pj4+Cj4+Pj4gSSdsbCByZW1pbmQgdGhhdCB0aGUg
bW9kaWZpZXIgaW1wbGVtZW50YXRpb24gaGFzIGdyZWF0IHZhbHVlIGFuZCBpcwo+Pj4+IG11Y2gg
bW9yZSBzY2FsYWJsZSB0aGVuIHRoZSBjdXJyZW50IFY0TDIgYXBwcm9hY2guIFRoZXJlIGhhcyBi
ZWVuIHNvbWUKPj4+PiBlYXJseSBwcm9wb3NhbCBmb3IgdGhpcywgbWF5YmUgaXQncyB0aW1lIHRv
IHByaW9yaXRpemUgYmVjYXVzZSB0aGlzCj4+Pj4gbGlzdCB3aWxsIHN0YXJ0cyBncm93aW5nIHdp
dGggaHVuZHJlZCBvciBldmVuIHRob3VzYW5kcyBvciBmb3JtYXQsCj4+Pj4gd2hpY2ggaXMgY2xl
YXJseSBpbmRpY2F0ZWQgYnkgdGhlIGluY3JlYXNlIG9mIG1vZGlmaWVyIGdlbmVyYXRvciBtYWNy
bwo+Pj4+IG9uIHRoZSBEUk0gc2lkZS4KPj4+Cj4+PiBZZXMsIGJ1dCB1bnRpbCB0aGUgbWlncmF0
aW9uIG9mIGRybV9mb3VyY2MgYW5kIHY0bDIgZm91cmNjIGludG8gYSBjb21tb24gb25lCj4+PiBp
cyBkZWNpZGVkLCBJJ20gc3R1Y2sgYW5kIHRoaXMgaXMgdGhlIG9ubHkgaW50ZXJtZWRpYXRlIHNv
bHV0aW9uIEkgZm91bmQuCj4+Cj4+IFdlIGNhbiBzYWZlbHkgYXNzdW1lIHRoYXQgZHJtIGZvdXJj
YyBhbmQgdjRsMiBmb3VyY2Mgd29uJ3QgYmUgbWVyZ2VkLgo+Pgo+PiBUaGVyZSBpcyB0b28gbXVj
aCBkaXZlcmdlbmNlIGFuZCBub3QgZW5vdWdoIGludGVyZXN0IGluIGNyZWF0aW5nIGNvbW1vbgo+
PiBmb3VyY2NzLgo+Pgo+PiBCdXQgd2UgKmRvKiB3YW50IHRvIHNoYXJlIHRoZSBtb2RpZmllcnMu
Cj4+Cj4+Pgo+Pj4gV2UgaGF2ZSBhIHdvcmtpbmcgc29sdXRpb24gd2l0aCBCb3JpcydzIHBhdGNo
c2V0IHdpdGggZXh0X2ZtdCBwYXNzaW5nIHRoZQo+Pj4gbW9kaWZpZXIgdG8gdXNlci1zcGFjZS4K
Pj4+Cj4+PiBidXQgYW55d2F5LCBzaW5jZSB0aGUgZ29hbCBpcyB0byBtZXJnZSB0aGUgZm91cmNj
IGJldHdlZW4gRFJNICYgVjRMMiwgdGhlc2UgWVVWNDIwXypCSVQKPj4+IHdpbGwgc3RpbGwgYmUg
bmVlZGVkIGlmIHdlIHBhc3MgdGhlIG1vZGlmaWVyIHdpdGggYW4gZXh0ZW5kZWQgZm9ybWF0IHN0
cnVjdC4KPj4KPj4gV2UgdHJpZWQgbWVyZ2luZyBmb3VyY2NzIGJ1dCB0aGF0IHJhbiBpbnRvIHJl
c2lzdGFuY2UuIEZyYW5rbHksIEkgd291bGRuJ3QKPj4gYm90aGVyIHdpdGggdGhpcywgaXQgaXMg
bXVjaCBlYXNpZXIgdG8ganVzdCBjcmVhdGUgYSBjb252ZXJzaW9uIHRhYmxlIGluIHRoZQo+PiBr
ZXJuZWwgZG9jcy4KPj4KPj4gU28gZG9uJ3QgYmxvY2sgb24gdGhpcywgSSB3b3VsZCByZWFsbHkg
cHJlZmVyIGlmIHRoZSBleHRfZm10IHNlcmllcyBpcyBwaWNrZWQKPj4gdXAgYWdhaW4gYW5kIHJl
YmFzZWQgYW5kIHJlcG9zdGVkIGFuZCB0aGVuIHdvcmtlZCBvbi4gVGhlIHN0YXRlbGVzcyBjb2Rl
YyBzdXBwb3J0Cj4+IGlzIHRha2luZyBsZXNzIHRpbWUgKGl0J3Mgc2hhcGluZyB1cCB3ZWxsKSBz
byB0aGVyZSBpcyBtb3JlIHRpbWUgdG8gd29yayBvbiB0aGlzLgo+IAo+IE9rLCBJIGFscmVhZHkg
c3RhcnRpbmcgZGlzY3Vzc2luZyB3aXRoIEhlbGVuIEtvaWtlIGFib3V0IHRoZSBleHRfZm50IHJl
LXNwaW4uCj4gCj4gU2hvdWxkIEkgcmUtaW50cm9kdWNlIGRpZmZlcmVudCB2NGwyIHBpeGZtdCBm
b3IgdGhlc2UgRFJNIFlVVjQyMF8qQklUIG9yIEkgY2FuIGtlZXAgdGhpcwo+IHBhdGNoIGFsb25n
IHRoZSBuZXcgZXh0X2ZtdCBhbmQgc2hhcmVkIG1vZGlmaWVycyA/CgpTbyB0byBiZSBjbGVhciB0
aGUgRFJNX0ZPUk1BVF9ZVVY0MjBfOEJJVC8xMEJJVCBmb3VyY2NzIGRlZmluZSB0aGF0IHRoaXMg
aXMgYQpidWZmZXIgY29udGFpbmluZyBjb21wcmVzc2VkIFlVVjQyMCBpbiA4IG9yIDEwIGJpdCBh
bmQgdGhlIG1vZGlmaWVyIHRlbGxzIHVzZXJzcGFjZQp3aGljaCBjb21wcmVzc2lvbiBpcyB1c2Vk
LCByaWdodD8KCkFuZCB3ZSB3b3VsZCBhZGQgVjRMMl9QSVhfRk1UX1lVVjQyMF84QklUL18xMEJJ
VCB0aGF0LCBJIGFzc3VtZSwgdXNlIHRoZSBzYW1lCmZvdXJjYyB2YWx1ZXMgYXMgdGhlIERSTSB2
YXJpYW50cz8KClNpbmNlIHRoZXNlIGZvdXJjY3MgYXJlIGJhc2ljYWxseSB1c2VsZXNzIHdpdGhv
dXQgVjRMMiBtb2RpZmllciBzdXBwb3J0IGl0IHdvdWxkCm9ubHkgbWFrZSBzZW5zZSBpbiBjb21i
aW5hdGlvbiB3aXRoIHRoZSBleHRfZm10IHNlcmllcy4KClJlZ2FyZHMsCgoJSGFucwoKPiAKPiBO
ZWlsCj4gCj4+Cj4+IEkgYmVsaWV2ZSB3ZSByZWFsbHkgbmVlZCB0aGlzIHNpbmNlIHY0bDJfYnVm
ZmVyIGFuZCB2NGwyX2Zvcm1hdCBhcmUgYSByZWFsIG1lc3MuCj4+Cj4+IFJlZ2FyZHMsCj4+Cj4+
IAlIYW5zCj4+Cj4+Pgo+Pj4+Cj4+Pj4+ICAJCWRlZmF1bHQ6Cj4+Pj4+ICAJCQlpZiAoZm10LT5k
ZXNjcmlwdGlvblswXSkKPj4+Pj4gIAkJCQlyZXR1cm47Cj4+Pj4+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmggYi9pbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYy
LmgKPj4+Pj4gaW5kZXggYzNhMWNmMWM1MDdmLi45MGI5OTQ5YWNiOGEgMTAwNjQ0Cj4+Pj4+IC0t
LSBhL2luY2x1ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaAo+Pj4+PiArKysgYi9pbmNsdWRlL3Vh
cGkvbGludXgvdmlkZW9kZXYyLmgKPj4+Pj4gQEAgLTcwNSw2ICs3MDUsMTUgQEAgc3RydWN0IHY0
bDJfcGl4X2Zvcm1hdCB7Cj4+Pj4+ICAjZGVmaW5lIFY0TDJfUElYX0ZNVF9GV0hUICAgICB2NGwy
X2ZvdXJjYygnRicsICdXJywgJ0gnLCAnVCcpIC8qIEZhc3QgV2Fsc2ggSGFkYW1hcmQgVHJhbnNm
b3JtICh2aWNvZGVjKSAqLwo+Pj4+PiAgI2RlZmluZSBWNEwyX1BJWF9GTVRfRldIVF9TVEFURUxF
U1MgICAgIHY0bDJfZm91cmNjKCdTJywgJ0YnLCAnVycsICdIJykgLyogU3RhdGVsZXNzIEZXSFQg
KHZpY29kZWMpICovCj4+Pj4+ICAKPj4+Pj4gKy8qCj4+Pj4+ICsgKiBDb21wcmVzc2VkIEx1bWlu
YW5jZStDaHJvbWluYW5jZSBtZXRhLWZvcm1hdHMKPj4+Pj4gKyAqIEluIHRoZXNlIGZvcm1hdHMs
IHRoZSBjb21wb25lbnQgb3JkZXJpbmcgaXMgc3BlY2lmaWVkIChZLCBmb2xsb3dlZCBieSBVCj4+
Pj4+ICsgKiB0aGVuIFYpLCBidXQgdGhlIGV4YWN0IExpbmVhciBsYXlvdXQgaXMgdW5kZWZpbmVk
Lgo+Pj4+PiArICogVGhlc2UgZm9ybWF0cyBjYW4gb25seSBiZSB1c2VkIHdpdGggYSBub24tTGlu
ZWFyIG1vZGlmaWVyLgo+Pj4+PiArICovCj4+Pj4+ICsjZGVmaW5lIFY0TDJfUElYX0ZNVF9ZVVY0
MjBfOEJJVAl2NGwyX2ZvdXJjYygnWScsICdVJywgJzAnLCAnOCcpIC8qIDEtcGxhbmUgWVVWIDQ6
MjowIDgtYml0ICovCj4+Pj4+ICsjZGVmaW5lIFY0TDJfUElYX0ZNVF9ZVVY0MjBfMTBCSVQJdjRs
Ml9mb3VyY2MoJ1knLCAnVScsICcxJywgJzAnKSAvKiAxLXBsYW5lIFlVViA0OjI6MCAxMC1iaXQg
Ki8KPj4+Pj4gKwo+Pj4+PiAgLyogIFZlbmRvci1zcGVjaWZpYyBmb3JtYXRzICAgKi8KPj4+Pj4g
ICNkZWZpbmUgVjRMMl9QSVhfRk1UX0NQSUExICAgIHY0bDJfZm91cmNjKCdDJywgJ1AnLCAnSScs
ICdBJykgLyogY3BpYTEgWVVWICovCj4+Pj4+ICAjZGVmaW5lIFY0TDJfUElYX0ZNVF9XTlZBICAg
ICB2NGwyX2ZvdXJjYygnVycsICdOJywgJ1YnLCAnQScpIC8qIFdpbm5vdiBodyBjb21wcmVzcyAq
Lwo+Pj4+Cj4+Pgo+Pj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNzM3MjIvI3JldjcKPj4+Cj4+Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
