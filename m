Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA83195E6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 20:16:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h+FOVCxPhNxVNfyNxgIITFUERTp5+K3v56FBjgQYsT4=; b=PMeZaUItOygRRY8kCrpcHDRT4
	TrrFstVCrTsSztiS9MWeIMYRT6kCyFpjw+kIRhpjl7EnT6icGQlu7b10igbjJBG1cjoGoryQ78iWV
	T8iNdGNfWRpV1lc/YpHzglZC09TlYBJQ0X+VaNPKUKY/eu1AlmyeTG/dloRrVRo/Pf/pATorxu+ws
	DZrJQa7WW6ehDyTC4xoC3BYWKp8gQ+LU1DlHloZJskLJ7AcSfiM0UE35zi7XcKCFjh7CA6NOuTBhJ
	/2WPjQtcqqn/msDDtksU8SkMkL42rzJ4WU4Aqh2oL0aPMYDwM3a0BPfWuFGivqmYjQuSzy+WMgZCV
	oLRaATVsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHuSR-0007rv-1E; Fri, 27 Mar 2020 19:15:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHuSH-0007qq-C8
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 19:15:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8A9430E;
 Fri, 27 Mar 2020 12:15:40 -0700 (PDT)
Received: from [10.57.60.204] (unknown [10.57.60.204])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF4563F71E;
 Fri, 27 Mar 2020 12:15:38 -0700 (PDT)
Subject: Re: [PATCH 0/2] amba/platform: Initialize dma_parms at the bus level
To: Ulf Hansson <ulf.hansson@linaro.org>, BOUGH CHEN <haibo.chen@nxp.com>
References: <20200325113407.26996-1-ulf.hansson@linaro.org>
 <VI1PR04MB504097B40CE0B804FA60D67A90CF0@VI1PR04MB5040.eurprd04.prod.outlook.com>
 <VI1PR04MB5040FFADA4F780422E208AC390CC0@VI1PR04MB5040.eurprd04.prod.outlook.com>
 <CAPDyKFr_yOmZ2MMvp=1krHejCRDRfhC0B+1icYR5xuZfhKy_ag@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2b2f1b1e-d186-e60f-baa9-3223ad4101f0@arm.com>
Date: Fri, 27 Mar 2020 19:15:37 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFr_yOmZ2MMvp=1krHejCRDRfhC0B+1icYR5xuZfhKy_ag@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_121545_501352_10971BF6 
X-CRM114-Status: GOOD (  27.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, Vinod Koul <vkoul@kernel.org>,
 Ludovic Barre <ludovic.barre@st.com>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMy0yNyAzOjM0IHBtLCBVbGYgSGFuc3NvbiB3cm90ZToKPiBPbiBGcmksIDI3IE1h
ciAyMDIwIGF0IDA0OjAyLCBCT1VHSCBDSEVOIDxoYWliby5jaGVuQG54cC5jb20+IHdyb3RlOgo+
Pgo+Pgo+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+IEZyb206IEJPVUdIIENIRU4K
Pj4+IFNlbnQ6IDIwMjDlubQz5pyIMjbml6UgMTI6NDEKPj4+IFRvOiBVbGYgSGFuc3NvbiA8dWxm
LmhhbnNzb25AbGluYXJvLm9yZz47IEdyZWcgS3JvYWgtSGFydG1hbgo+Pj4gPGdyZWdraEBsaW51
eGZvdW5kYXRpb24ub3JnPjsgUmFmYWVsIEogLiBXeXNvY2tpIDxyYWZhZWxAa2VybmVsLm9yZz47
Cj4+PiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCj4+PiBDYzogQXJuZCBCZXJnbWFubiA8
YXJuZEBhcm5kYi5kZT47IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPjsKPj4+IFJ1c3Nl
bGwgS2luZyA8bGludXhAYXJtbGludXgub3JnLnVrPjsgTGludXMgV2FsbGVpaiA8bGludXMud2Fs
bGVpakBsaW5hcm8ub3JnPjsKPj4+IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+OyBMdWRv
dmljIEJhcnJlIDxsdWRvdmljLmJhcnJlQHN0LmNvbT47Cj4+PiBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmc7IGRtYWVuZ2luZUB2Z2VyLmtlcm5lbC5vcmcKPj4+IFN1YmplY3Q6
IFJFOiBbUEFUQ0ggMC8yXSBhbWJhL3BsYXRmb3JtOiBJbml0aWFsaXplIGRtYV9wYXJtcyBhdCB0
aGUgYnVzIGxldmVsCj4+Pgo+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+Pj4gRnJv
bTogVWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxpbmFyby5vcmc+Cj4+Pj4gU2VudDogMjAyMOW5
tDPmnIgyNeaXpSAxOTozNAo+Pj4+IFRvOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51
eGZvdW5kYXRpb24ub3JnPjsgUmFmYWVsIEogLgo+Pj4+IFd5c29ja2kgPHJhZmFlbEBrZXJuZWwu
b3JnPjsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwo+Pj4+IENjOiBBcm5kIEJlcmdtYW5u
IDxhcm5kQGFybmRiLmRlPjsgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Owo+Pj4+IFJ1
c3NlbGwgS2luZyA8bGludXhAYXJtbGludXgub3JnLnVrPjsgTGludXMgV2FsbGVpago+Pj4+IDxs
aW51cy53YWxsZWlqQGxpbmFyby5vcmc+OyBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPjsg
Qk9VR0ggQ0hFTgo+Pj4+IDxoYWliby5jaGVuQG54cC5jb20+OyBMdWRvdmljIEJhcnJlIDxsdWRv
dmljLmJhcnJlQHN0LmNvbT47Cj4+Pj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnOyBkbWFlbmdpbmVAdmdlci5rZXJuZWwub3JnOyBVbGYKPj4+PiBIYW5zc29uIDx1bGYuaGFu
c3NvbkBsaW5hcm8ub3JnPgo+Pj4+IFN1YmplY3Q6IFtQQVRDSCAwLzJdIGFtYmEvcGxhdGZvcm06
IEluaXRpYWxpemUgZG1hX3Bhcm1zIGF0IHRoZSBidXMKPj4+PiBsZXZlbAo+Pj4+Cj4+Pj4gSXQn
cyBjdXJyZW50bHkgdGhlIGFtYmEvcGxhdGZvcm0gZHJpdmVyJ3MgcmVzcG9uc2liaWxpdHkgdG8g
aW5pdGlhbGl6ZQo+Pj4+IHRoZSBwb2ludGVyLCBkbWFfcGFybXMsIGZvciBpdHMgY29ycmVzcG9u
ZGluZyBzdHJ1Y3QgZGV2aWNlLiBUaGUKPj4+PiBiZW5lZml0IHdpdGggdGhpcyBhcHByb2FjaCBh
bGxvd3MgdXMgdG8gYXZvaWQgdGhlIGluaXRpYWxpemF0aW9uIGFuZAo+Pj4+IHRvIG5vdCB3YXN0
ZSBtZW1vcnkgZm9yIHRoZSBzdHJ1Y3QgZGV2aWNlX2RtYV9wYXJhbWV0ZXJzLCBhcyB0aGlzIGNh
bgo+Pj4+IGJlIGRlY2lkZWQgb24gYSBjYXNlIGJ5IGNhc2UgYmFzaXMuCj4+Pj4KPj4+PiBIb3dl
dmVyLCBpdCBoYXMgdHVybmVkIG91dCB0aGF0IHRoaXMgYXBwcm9hY2ggaXMgbm90IHZlcnkgcHJh
Y3RpY2FsLgo+Pj4+IE5vdCBvbmx5IGRvZXMgaXQgbGVhZCB0byBvcGVuIGNvZGluZywgYnV0IGFs
c28gdG8gcmVhbCBlcnJvcnMuIEluCj4+Pj4gcHJpbmNpcGxlIGNhbGxlcnMgb2YKPj4+PiBkbWFf
c2V0X21heF9zZWdfc2l6ZSgpIGRvZXNuJ3QgY2hlY2sgdGhlIGVycm9yIGNvZGUsIGJ1dCBqdXN0
IGFzc3VtZXMKPj4+PiBpdCBzdWNjZWVkcy4KPj4+Pgo+Pj4+IEZvciB0aGVzZSByZWFzb25zLCB0
aGlzIHNlcmllcyBpbml0aWFsaXplcyB0aGUgZG1hX3Bhcm1zIGZyb20gdGhlCj4+Pj4gYW1iYS9w
bGF0Zm9ybSBidXMgYXQgdGhlIGRldmljZSByZWdpc3RyYXRpb24gcG9pbnQuIFRoaXMgYWxzbyBm
b2xsb3dzCj4+Pj4gdGhlIHdheSB0aGUgUENJIGRldmljZXMgYXJlIGJlaW5nIG1hbmFnZWQsIHNl
ZSBwY2lfZGV2aWNlX2FkZCgpLgo+Pj4+Cj4+Pj4gSWYgaXQgdHVybnMgb3V0IHRoYXQgdGhpcyBp
cyBhbiBhY2NlcHRhYmxlIHNvbHV0aW9uLCB3ZSBwcm9iYWJseSBhbHNvCj4+Pj4gd2FudCB0aGUg
Y2hhbmdlcyBmb3Igc3RhYmxlLCBidXQgSSBhbSBub3Qgc3VyZSBpZiBpdCBhcHBsaWVzIHdpdGhv
dXQgY29uZmxpY3RzLgo+Pj4+Cj4+Pj4gVGhlIHNlcmllcyBpcyBiYXNlZCBvbiB2NS42LXJjNy4K
Pj4+Pgo+Pj4KPj4+IEhpIFVsZiwKPj4+Cj4+PiBTaW5jZSBpLk1YUU0gU01NVSByZWxhdGVkIGNv
ZGUgc3RpbGwgbm90IHVwc3RyZWFtIHlldCwgc28gSSBhcHBseSB5b3VyCj4+PiBwYXRjaGVzIG9u
IG91ciBpbnRlcm5hbCBMaW51eCBicmFuY2ggYmFzZWQgb24gdjUuNC4yNCwgYW5kIGZpbmQgaXQg
ZG8gbm90IHdvcmsKPj4+IG9uIG15IHNpZGUuIE1heWJlIGZvciBwbGF0Zm9ybSBjb3JlIGRyaXZl
cnMsIHRoZXJlIGlzIGEgZ2FwIGJldHdlZW4gdjUuNC4yNAo+Pj4gYW5kIHY1LjYtcmM3IHdoaWNo
IGhhcyB0aGUgaW1wYWN0Lgo+Pj4gSSB3aWxsIHRyeSB0byBwdXQgb3VyIFNNTVUgcmVsYXRlZCBj
b2RlIGludG8gdjUuNi1yYzcsIHRoZW4gZG8gdGhlIHRlc3QgYWdhaW4uCj4+Pgo+Pj4KPj4KPj4g
SGkgVWxmLAo+Pgo+PiBPbiB0aGUgbGF0ZXN0IExpbnV4LW5leHQgYnJhbmNoLCB0aGUgdG9wIGNv
bW1pdCA4OTI5NWM1OWMxZjA2M2I1MzNkMDcxY2E0OWQwZmEwYzA3ODNjYTZmICh0YWc6IG5leHQt
MjAyMDAzMjYpLCBhZnRlciBhZGQgeW91ciB0d28gcGF0Y2hlcywgSSBqdXN0IGFkZCB0aGUgc2lt
cGxlIGRlYnVnIGNvZGUgYXMgZm9sbG93aW5nIGluIHRoZSAvZHJpdmVyL21tYy9jb3JlL3F1ZXVl
LmMsIGJ1dCBzZWVtcyBzdGlsbCBub3Qgd29yayBhcyBvdXIgZXhwZWN0LCBsb2dpY2FsbHksIGl0
IHNob3VsZCB3b3JrLCBzbyBjYW4geW91IG9yIGFueW9uZSB0ZXN0IG9uIG90aGVyIHBsYXRmb3Jt
PyBUaGlzIHNlZW1zIHdlaXJkLgo+IAo+IFlvdSBhcmUgcmlnaHQsIHRoaXMgZG9lc24ndCB3b3Jr
IGZvciBwbGF0Zm9ybSBkZXZpY2VzIGJlaW5nIGFkZGVkCj4gdGhyb3VnaCB0aGUgT0YgcGF0aC4K
PiAKPiBJbiBvdGhlciB3b3Jkcywgb2ZfcGxhdGZvcm1fZGV2aWNlX2NyZWF0ZV9wZGF0YSgpIG1h
bnVhbGx5IGFsbG9jYXRlcwo+IHRoZSBwbGF0Zm9ybSBkZXZpY2UgYW5kIGFzc2lnbnMgaXQgdGhl
ICZwbGF0Zm9ybV9idXNfdHlwZSwgYnV0IHdpdGhvdXQKPiBjYWxsaW5nIHBsYXRmb3JtX2Rldmlj
ZV9hZGQoKS4KPiAKPiBGb3IgYW1iYSwgaXQgd29ya3MgZmluZSwgYXMgaW4gdGhhdCBPRiBwYXRo
LCBhbWJhX2RldmljZV9hZGQoKSBpcyBjYWxsZWQuIEhtbS4KPiAKPiBJIHJlLXNwaW4gdGhpcywg
dG8gYWRkcmVzcyB0aGUgcHJvYmxlbS4gUGVyaGFwcyB3ZSBzaW1wbHkgbmVlZCB0byB1c2UKPiB0
aGUgLT5wcm9iZSgpIHBhdGguCgpGV0lXIHdlIGFscmVhZHkgaGF2ZSBzZXR1cF9wZGV2X2RtYV9t
YXNrcygpLCBzbyBpdCBtaWdodCBiZSBsb2dpY2FsIHRvIAppbmNsdWRlIGRtYV9wYXJtcyBpbiB0
aGVyZSB0b28uCgpSb2Jpbi4KCj4gCj4gS2luZCByZWdhcmRzCj4gVWZmZQo+IAo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tbWMvY29yZS9xdWV1ZS5jIGIvZHJpdmVycy9tbWMvY29yZS9xdWV1
ZS5jCj4+IGluZGV4IDI1YmVlM2RhZjllMi4uZjA5MTI4MGY3ZmZiIDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL21tYy9jb3JlL3F1ZXVlLmMKPj4gKysrIGIvZHJpdmVycy9tbWMvY29yZS9xdWV1ZS5j
Cj4+IEBAIC00MDMsNiArNDAzLDEzIEBAIHN0YXRpYyB2b2lkIG1tY19zZXR1cF9xdWV1ZShzdHJ1
Y3QgbW1jX3F1ZXVlICptcSwgc3RydWN0IG1tY19jYXJkICpjYXJkKQo+PiAgICAgICAgICAgICAg
ICAgIGJsa19xdWV1ZV9tYXhfc2VnbWVudF9zaXplKG1xLT5xdWV1ZSwKPj4gICAgICAgICAgICAg
ICAgICAgICAgICAgIHJvdW5kX2Rvd24oaG9zdC0+bWF4X3NlZ19zaXplLCBibG9ja19zaXplKSk7
Cj4+Cj4+ICsgICAgICAgcHJfZXJyKCIjIyMjIyMgdGhlIG1heCBzZWdtZW50IHNpemUgaXMgJWRc
biIsIHF1ZXVlX21heF9zZWdtZW50X3NpemUobXEtPnF1ZXVlKSk7Cj4+ICsgICAgICAgaWYgKGhv
c3QtPnBhcmVudC0+ZG1hX3Bhcm1zKSB7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgcHJfZXJy
KCIjIyMjIyMjIyMgdGhlIGRtYSBwYXJtcyBoYXMgdmFsdWVcbiIpOwo+PiArICAgICAgIH0gZWxz
ZSBpZiAoIShob3N0LT5wYXJlbnQtPmRtYV9wYXJtcykpIHsKPj4gKyAgICAgICAgICAgICAgICAg
ICAgICBwcl9lcnIoIiMjIyMjIyMjIHRoZSBkbWEgcGFybXMgaXMgemVybyEhXG4iKTsKPj4gKyAg
ICAgICB9Cj4+ICsKPj4gICAgICAgICAgZG1hX3NldF9tYXhfc2VnX3NpemUobW1jX2Rldihob3N0
KSwgcXVldWVfbWF4X3NlZ21lbnRfc2l6ZShtcS0+cXVldWUpKTsKPj4KPj4gICAgICAgICAgSU5J
VF9XT1JLKCZtcS0+cmVjb3Zlcnlfd29yaywgbW1jX21xX3JlY292ZXJ5X2hhbmRsZXIpOwo+Pgo+
PiBIZXJlIGlzIHRoZSBsb2cgSSBnb3Qgd2hlbiBzeXN0ZW0gcnVuLCBldmVuIGFmdGVyIHlvdXIg
cGF0Y2gsIHRoZSBkZXYtPmRtYV9wYXJtcyBpcyBzdGlsbCBOVUxMLgo+PiBbICAgIDAuOTg5ODUz
XSBtbWMwOiBuZXcgSFM0MDAgTU1DIGNhcmQgYXQgYWRkcmVzcyAwMDAxCj4+IFsgICAgMC45OTU3
MDhdIHNkaGNpLWVzZGhjLWlteCAzMGI1MDAwMC5tbWM6IEdvdCBDRCBHUElPCj4+IFsgICAgMC45
OTkzNzRdICMjIyMjIyB0aGUgbWF4IHNlZ21lbnQgc2l6ZSBpcyA2NTAyNAo+PiBbICAgIDEuMDA4
NTk0XSAjIyMjIyMjIyB0aGUgZG1hIHBhcm1zIGlzIHplcm8hIQo+PiBbICAgIDEuMDEyODc1XSBt
bWNibGswOiBtbWMwOjAwMDEgSUIyOTMyIDI5LjIgR2lCCj4+IFsgICAgMS4wMTc1NjldICMjIyMj
IyB0aGUgbWF4IHNlZ21lbnQgc2l6ZSBpcyA2NTAyNAo+PiBbICAgIDEuMDIyMTk1XSAjIyMjIyMj
IyB0aGUgZG1hIHBhcm1zIGlzIHplcm8hIQo+PiBbICAgIDEuMDI2NDc5XSBtbWNibGswYm9vdDA6
IG1tYzA6MDAwMSBJQjI5MzIgcGFydGl0aW9uIDEgNC4wMCBNaUIKPj4gWyAgICAxLjAzMjU0MV0g
IyMjIyMjIHRoZSBtYXggc2VnbWVudCBzaXplIGlzIDY1MDI0Cj4+IFsgICAgMS4wMzUxOThdIG1t
YzE6IFNESENJIGNvbnRyb2xsZXIgb24gMzBiNTAwMDAubW1jIFszMGI1MDAwMC5tbWNdIHVzaW5n
IEFETUEKPj4gWyAgICAxLjAzNzE2OV0gIyMjIyMjIyMgdGhlIGRtYSBwYXJtcyBpcyB6ZXJvISEK
Pj4gWyAgICAxLjA0ODQ5M10gbW1jYmxrMGJvb3QxOiBtbWMwOjAwMDEgSUIyOTMyIHBhcnRpdGlv
biAyIDQuMDAgTWlCCj4+IFsgICAgMS4wNTQ1MzFdIG1tY2JsazBycG1iOiBtbWMwOjAwMDEgSUIy
OTMyIHBhcnRpdGlvbiAzIDQuMDAgTWlCLCBjaGFyZGV2ICgyMzQ6MCkKPj4KPj4KPj4gUmVnYXJk
cwo+PiBIYWlibyBDaGVuCj4+PiBCZXN0IFJlZ2FyZHMKPj4+IEhhaWJvIENoZW4KPj4+Cj4+Pj4g
S2luZCByZWdhcmRzCj4+Pj4gVWxmIEhhbnNzb24KPj4+Pgo+Pj4+IFVsZiBIYW5zc29uICgyKToK
Pj4+PiAgICBkcml2ZXIgY29yZTogcGxhdGZvcm06IEluaXRpYWxpemUgZG1hX3Bhcm1zIGZvciBw
bGF0Zm9ybSBkZXZpY2VzCj4+Pj4gICAgYW1iYTogSW5pdGlhbGl6ZSBkbWFfcGFybXMgZm9yIGFt
YmEgZGV2aWNlcwo+Pj4+Cj4+Pj4gICBkcml2ZXJzL2FtYmEvYnVzLmMgICAgICAgICAgICAgIHwg
MiArKwo+Pj4+ICAgZHJpdmVycy9iYXNlL3BsYXRmb3JtLmMgICAgICAgICB8IDEgKwo+Pj4+ICAg
aW5jbHVkZS9saW51eC9hbWJhL2J1cy5oICAgICAgICB8IDEgKwo+Pj4+ICAgaW5jbHVkZS9saW51
eC9wbGF0Zm9ybV9kZXZpY2UuaCB8IDEgKwo+Pj4+ICAgNCBmaWxlcyBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKykKPj4+Pgo+Pj4+IC0tCj4+Pj4gMi4yMC4xCj4+Cj4gCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
