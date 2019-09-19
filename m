Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5748CB7629
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgjwsNv4lU7ZaUOafI4lzvz+e4qbjCebSDswO0TNBC4=; b=TC+yeU0l2/7oV3
	iYdNb1BU5vD8ApSz696JcShkDcG4me0uPip/dOa+9Ix8fWpmjT/0uH97PNduswoONLpcLs0JjsZdu
	rLVMh/wyrThSt6UhBSQpKYf1pxLH55V9aBBCYz5zC9QuEzllnU3h1IEyUs++z7ztNTgeLngp8MN4+
	kNiGPfn5CS1Fzci2tmA/hzUfRc+HiEKIoNgIwmxUs/PANoS78jnARdSnAmIFiVLW65mFA9w6BC3Hv
	fXYKR7hj9PqpCYlNInANFZ/pIsWb88vbUH+qVQGMNohc1QeUGZLErdiywprE3KGDzX69R/cnXrqm4
	Td/239nNwgAWDdtQZolg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAse3-0007pp-U5; Thu, 19 Sep 2019 09:22:36 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsdm-0007oj-VA
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:22:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PnHJHn5nyOwEnoC4jOn3fI9vYEyhcg602JOqDnZhc04=; b=qdwj0UB6tXl/9jzEAYhrvthtQ
 PsUm5r3+PztmdL0D3u5h1tSigCknBCqhrVQ4Im+fPcvxSv7DuJ83hyddHmjnnumw7yLWATSBmYrJP
 O7G82AVSXT4T0ZHQsXBssuj9xEpPfZFGV73H0OUko+KONfuOy31Uggt4YsXc64/J0Dfu8xXE8wmNp
 EZyv7LA5hQt02/WzlUau7jO3Y938uDH+TwnihSSEZQ+GGZvE8BDjSGawklVcv5iqB7/7sZP10QMAy
 O3MzKMvc/qFjkdMtf7ZwfUw5W9CLS497lJLeQepVCTlcre6xdJM7VOOAixZKoIMaL6CYKENlqyjtC
 rQ44MOIUw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:33878)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iAsdW-0005E7-Bz; Thu, 19 Sep 2019 10:22:02 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iAsdU-000397-9T; Thu, 19 Sep 2019 10:22:00 +0100
Date: Thu, 19 Sep 2019 10:22:00 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "Y.b. Lu" <yangbo.lu@nxp.com>
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
Message-ID: <20190919092200.GI25745@shell.armlinux.org.uk>
References: <CAOMZO5DXv8g5qTGdvobDdLWim+tW=vK4+K=P-VqJK23KERMhJw@mail.gmail.com>
 <20190917133317.GQ25745@shell.armlinux.org.uk>
 <CAOMZO5DS_1Uc9TMc29e+8tCg-srvMjf3uth_9P3cnro6det+7A@mail.gmail.com>
 <20190917135157.GT25745@shell.armlinux.org.uk>
 <CAOMZO5BDirX0Fwo716v1ddYaaO+OL8Woht63mw8OEhDuMBTb8Q@mail.gmail.com>
 <CADRPPNQ-WTY0QC7_bX=N0QeueKve=k0SaMvbjOrByyvzFojz2g@mail.gmail.com>
 <VI1PR0401MB22376A0EA85123B2AEB72EDEF8890@VI1PR0401MB2237.eurprd04.prod.outlook.com>
 <20190919070435.GF25745@shell.armlinux.org.uk>
 <VI1PR0401MB2237E1B46D540B4362417AEEF8890@VI1PR0401MB2237.eurprd04.prod.outlook.com>
 <20190919083803.GG25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919083803.GG25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_022219_336698_1A740C14 
X-CRM114-Status: GOOD (  34.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dann frazier <dann.frazier@canonical.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Will Deacon <will.deacon@arm.com>, Leo Li <leoyang.li@nxp.com>,
 Nicolin Chen <nicoleotsuka@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBTZXAgMTksIDIwMTkgYXQgMDk6Mzg6MDRBTSArMDEwMCwgUnVzc2VsbCBLaW5nIC0g
QVJNIExpbnV4IGFkbWluIHdyb3RlOgo+IEhpLAo+IAo+IFRoYW5rcyBmb3IgdGhlIHJlcGx5Lgo+
IAo+IEkgc2VlIHRoYXQgdGhpcyBiaXQgaXMgbWFya2VkICJyZXNlcnZlZCIgaW4gdGhlIExYMjE2
MEEgcmVmZXJlbmNlCj4gbWFudWFsLgoKU29ycnksIEkgd2FzIGxvb2tpbiBhdCBiaXQgNSwgaXQn
cyBhY3R1YWxseSBiaXQgNi4gIFJlc3Qgb2YgbXkgbWFpbCBpcwpzdGlsbCByZWxldmVudC4KCj4g
Cj4gVGhpcyBicmluZ3MgdXAgc29tZSBmdXJ0aGVyIHF1ZXN0aW9ucy4KPiAKPiBUaGUgRFQgcHJv
cGVydHkgImRtYS1jb2hlcmVudCIgaXMgdXNlZCB0byB0ZWxsIHRoZSBPUyB3aGV0aGVyIHRoZQo+
IGRldmljZSBpcyBETUEgY29oZXJlbnQgb3Igbm90LiAgSWYgdGhpcyBwcm9wZXJ0eSBpcyBtaXNz
aW5nLCBidXQgdGhlCj4gZGV2aWNlIGlzIHNldCBhcyBETUEgY29oZXJlbnQsIGFuZCB0aGUgT1Mg
dXNlcyAibm9ybWFsLCBub24tY2FjaGVhYmxlIgo+IG1lbW9yeSBmb3IgdGhlIEFETUEgdGFibGUs
IHRoZW4gZXJyb3JzIGNhbiBvY2N1ciBpZiB0aGVyZSBhcmUgc3RhbGUKPiBjYWNoZSBsaW5lcyBj
b3JyZXNwb25kaW5nIHRvIHRoZSBtZW1vcnkgdXNlZC4gIFRoZSBlU0RIQyBjb250cm9sbGVyCj4g
d2lsbCBzZWUgdGhlIHN0YWxlIGNhY2hlIGxpbmVzLCBidXQgdGhlIENQVSB3aWxsIG5vdC4KPiAK
PiBBZGRpbmcgImRtYS1jb2hlcmVudCIgdG8gdGhlIERUIGRlY2xhcmF0aW9ucyBhbG9uZSBkb2Vz
IG5vdCBzZWVtIHRvCj4gYmUgdGhlIHJpZ2h0IHNvbHV0aW9uIC0gaWYgd2UgaGF2ZSBhbiBPUyB0
aGF0IGRvZXMgbm90IHNldCB0aGUKPiBFU0RIQ19ETUFfU05PT1AgYml0LCB0aGVuIHdlIGhhdmUg
YSBzaW1pbGFyIGlzc3VlLgo+IAo+IFNob3VsZG4ndCBFU0RIQ19ETUFfU05PT1AgYmUgc2V0IGRl
cGVuZGluZyBvbiB3aGV0aGVyIHRoZSBkZXZpY2UgaXMKPiBETUEgY29oZXJlbnQgb3Igbm90Pwo+
IAo+IE5vdGUgdGhhdCB0aGUgZGV2aWNlIGlzIF9ub3RfIG1hcmtlZCBhcyAiZG1hLWNvaGVyZW50
IiBpbiBlaXRoZXIKPiBtYWlubGluZSBub3IgaW4gdGhlIExTREstMTkuMDYtVjQuMTkgYnJhbmNo
IG9mCj4gaHR0cHM6Ly9zb3VyY2UuY29kZWF1cm9yYS5vcmcvZXh0ZXJuYWwvcW9yaXEvcW9yaXEt
Y29tcG9uZW50cy9saW51eAo+IHRvIGF2b2lkIEFETUEgZGVzY3JpcHRvciBmZXRjaCBlcnJvcnMs
IHdoaWNoIGxlYWRzIHRvIHRoaXMgZXJyb3IgdGhhdAo+IGhhcyBub3cgYmVlbiBvYnNlcnZlZCB3
aXRoIHY1LjMga2VybmVscyAtIGNhdXNlZCBwcmVjaXNlbHkgYXMgSQo+IGRlc2NyaWJlIGFib3Zl
Lgo+IAo+IFRoYW5rcy4KPiAKPiBPbiBUaHUsIFNlcCAxOSwgMjAxOSBhdCAwODoxNTowMEFNICsw
MDAwLCBZLmIuIEx1IHdyb3RlOgo+ID4gSGkgUnVzc2VsbCwKPiA+IAo+ID4gVGhlIEVTREhDX0RN
QV9TTk9PUCBiaXQgaXMgYWx3YXlzIHNldCBpbiBlU0RIQyBkcml2ZXIgZm9yIERNQS4KPiA+IAo+
ID4gMWIgLSBETUEgdHJhbnNhY3Rpb25zIGFyZSBzbm9vcGVkIGJ5IHRoZSBDUFUgZGF0YSBjYWNo
ZS4KPiA+IDBiIC0gRE1BIHRyYW5zYWN0aW9ucyBhcmUgbm90IHNub29wZWQgYnkgdGhlIENQVSBk
YXRhIGNhY2hlLgo+ID4gCj4gPiBUaGFua3MgYSBsb3QuCj4gPiAKPiA+IEJlc3QgcmVnYXJkcywK
PiA+IFlhbmdibyBMdQo+ID4gCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiA+
IEZyb206IFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbiA8bGludXhAYXJtbGludXgub3Jn
LnVrPgo+ID4gPiBTZW50OiBUaHVyc2RheSwgU2VwdGVtYmVyIDE5LCAyMDE5IDM6MDUgUE0KPiA+
ID4gVG86IFkuYi4gTHUgPHlhbmdiby5sdUBueHAuY29tPgo+ID4gPiBDYzogTGVvIExpIDxsZW95
YW5nLmxpQG54cC5jb20+OyBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+Owo+ID4g
PiBBZHJpYW4gSHVudGVyIDxhZHJpYW4uaHVudGVyQGludGVsLmNvbT47IENocmlzdG9waCBIZWxs
d2lnIDxoY2hAbHN0LmRlPjsKPiA+ID4gTGludXggQVJNIDxsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmc+OyBOaWNvbGluIENoZW4KPiA+ID4gPG5pY29sZW90c3VrYUBnbWFpbC5j
b20+OyBXaWxsIERlYWNvbiA8d2lsbC5kZWFjb25AYXJtLmNvbT47IGRhbm4KPiA+ID4gZnJhemll
ciA8ZGFubi5mcmF6aWVyQGNhbm9uaWNhbC5jb20+OyBsaW51eC1tbWMKPiA+ID4gPGxpbnV4LW1t
Y0B2Z2VyLmtlcm5lbC5vcmc+Cj4gPiA+IFN1YmplY3Q6IFJlOiBbUkVHUkVTU0lPTl0gc2RoY2kg
bm8gbG9uZ2VyIGRldGVjdHMgU0QgY2FyZHMgb24gTFgyMTYwQQo+ID4gPiAKPiA+ID4gSGksCj4g
PiA+IAo+ID4gPiBUaGlzIGlzIG5vdCB0aGUgaXNzdWUsIHNpbmNlIHRoZSBwcm9ibGVtIGhhcyBi
ZWVuIG9ic2VydmVkIHdpdGggZU1NQyB0b28sCj4gPiA+IGFuZCBpcyBzcG9yYWRpYyBpbiBuYXR1
cmUuCj4gPiA+IAo+ID4gPiBQbGVhc2UgY291bGQgeW91IGFuc3dlciB0aGUgcXVlc3Rpb24gcG9z
ZWQ6IGFyZSB0aGUgZVNESEMgY29udHJvbGxlcnMgRE1BCj4gPiA+IGNvaGVyZW50IG9yIGFyZSB0
aGV5IG5vdCBjb2hlcmVudD8KPiA+ID4gCj4gPiA+IFRoYW5rcy4KPiA+ID4gCj4gPiA+IE9uIFRo
dSwgU2VwIDE5LCAyMDE5IGF0IDA0OjEzOjIwQU0gKzAwMDAsIFkuYi4gTHUgd3JvdGU6Cj4gPiA+
ID4gU29ycnkuIE15IGVtYWlsIHdhcyByZWplY3RlZCBieSBtYWlsaW5nIGxpc3RzLiBMZXQgbWUg
cmUtc2VuZC4KPiA+ID4gPgo+ID4gPiA+IEhpIFJ1c3NlbGwsCj4gPiA+ID4KPiA+ID4gPiBJ4oCZ
bSBub3Qgc3VyZSB3aGF0IGJvYXJkIHlvdSB3ZXJlIHVzaW5nIGZvciBMWDIxNjBBLgo+ID4gPiA+
IFdlIGhhZCBhbiBrbm93biBpc3N1ZSBmb3IgZVNESEMgY29udHJvbGxlciBhbmQgYWxsIE5YUCBM
YXllcnNjYXBlIFJEQgo+ID4gPiBib2FyZHMuCj4gPiA+ID4gZVNESEMgY291bGRu4oCZdCBwcm92
aWRlIHBvd2VyLWN5Y2xlIHRvIFNEIGNhcmQsIGFuZCBldmVuIHdvcnNlLCBib2FyZAo+ID4gPiBy
ZXNldCBjb3VsZG7igJl0IHByb3ZpZGUgcG93ZXItY3ljbGUgdG8gU0QgY2FyZCBlaXRoZXIuCj4g
PiA+ID4gQnV0IGZvciBVSFMtSSBTRCBjYXJkLCBpdOKAmXMgcmVxdWlyZWQgdG8gaGF2ZSBhIHBv
d2VyLWN5Y2xlIHRvIHJlc2V0IGNhcmQgaWYgaXQKPiA+ID4gZ29lcyBpbnRvIFVIUy1JIG1vZGUu
IE90aGVyd2lzZSwgd2UgZG9u4oCZdCBrbm93IHdoYXQgd2lsbCBoYXBwZW4gd2hlbgo+ID4gPiBr
ZXJuZWwgaW5pdGlhbGl6ZXMgU0QgY2FyZCBhZnRlciBhIHJlYm9vdC9yZXNldC4KPiA+ID4gPgo+
ID4gPiA+IEkgY291bGQgcmVwcm9kdWNlIHRoYXQgaXNzdWUgd2l0aCBiZWxvdyBzdGVwcyBvbiBs
YXRlc3QgbWFpbmxpbmUga2VybmVsLgo+ID4gPiA+IDEuIFBvd2VyIG9mZiBib2FyZCwgYW5kIHBv
d2VyIG9uIGJvYXJkLgo+ID4gPiA+IDIuIFN0YXJ0IHVwIGtlcm5lbCwgdGhlIFNEIGNhcmQgd29y
a3MgZmluZSBpbiBVSFMtSSBtb2RlLgo+ID4gPiA+IDMuIFJlYm9vdC9yZXNldCBib2FyZC4gKFRo
aXMgY291bGRu4oCZdCBwcm92aWRlIHBvd2VyLWN5Y2xlIHRvIFNEIGNhcmQpCj4gPiA+ID4gNC4g
U3RhcnQgdXAga2VybmVsLCB0aGUgU0QgY2FyZCBnZXRzIHRoYXQgQURNQSBlcnJvciBpc3N1ZS4K
PiA+ID4gPgo+ID4gPiA+IFNvIGNvdWxkIHlvdSBoYXZlIGEgdHJ5IHRvIHBvd2VyIG9mZi9wb3dl
ciBvbiB0aGUgYm9hcmQsIGFuZCB0aGVuIHN0YXJ0IHVwCj4gPiA+IGtlcm5lbC4gRG9u4oCZdCB1
c2UgcmVib290LCBvciBib2FyZCByZXNldCBidXR0b24uCj4gPiA+ID4gT3IgeW91IGNhbiByZW1v
dmUgU0QgY2FyZCBhbmQgc3RhcnQgdXAga2VybmVsLCBhbmQgaW5zZXJ0IFNEIGNhcmQgd2hlbgo+
ID4gPiBrZXJuZWwgaGFzIGJlZW4gc3RhcnRlZCB1cC4KPiA+ID4gPiBUaGFua3MgYSBsb3QuCj4g
PiA+ID4KPiA+ID4gPiBCZXN0IHJlZ2FyZHMsCj4gPiA+ID4gWWFuZ2JvIEx1Cj4gPiA+ID4KPiA+
ID4gPgo+ID4gPiA+IEZyb206IExpIFlhbmcgPGxlb3lhbmcubGlAbnhwLmNvbT4KPiA+ID4gPiBT
ZW50OiBXZWRuZXNkYXksIFNlcHRlbWJlciAxOCwgMjAxOSAxOjQ4IEFNCj4gPiA+ID4gVG86IEZh
YmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT47IFkuYi4gTHUgPHlhbmdiby5sdUBueHAu
Y29tPgo+ID4gPiA+IENjOiBBZHJpYW4gSHVudGVyIDxhZHJpYW4uaHVudGVyQGludGVsLmNvbT47
IENocmlzdG9waCBIZWxsd2lnCj4gPiA+ID4gPGhjaEBsc3QuZGU+OyBMaW51eCBBUk0gPGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZz47Cj4gPiA+ID4gTmljb2xpbiBDaGVuIDxu
aWNvbGVvdHN1a2FAZ21haWwuY29tPjsgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluCj4g
PiA+ID4gPGxpbnV4QGFybWxpbnV4Lm9yZy51az47IFdpbGwgRGVhY29uIDx3aWxsLmRlYWNvbkBh
cm0uY29tPjsgZGFubgo+ID4gPiA+IGZyYXppZXIgPGRhbm4uZnJhemllckBjYW5vbmljYWwuY29t
PjsgbGludXgtbW1jCj4gPiA+ID4gPGxpbnV4LW1tY0B2Z2VyLmtlcm5lbC5vcmc+Cj4gPiA+ID4g
U3ViamVjdDogUmU6IFtSRUdSRVNTSU9OXSBzZGhjaSBubyBsb25nZXIgZGV0ZWN0cyBTRCBjYXJk
cyBvbiBMWDIxNjBBCj4gPiA+ID4KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gT24gVHVlLCBTZXAg
MTcsIDIwMTkgYXQgNjozMSBQTSBGYWJpbyBFc3RldmFtCj4gPiA+IDxtYWlsdG86ZmVzdGV2YW1A
Z21haWwuY29tPiB3cm90ZToKPiA+ID4gPiBbQWRkaW5nIExpIFlhbmddCj4gPiA+ID4KPiA+ID4g
PiBPbiBUdWUsIFNlcCAxNywgMjAxOSBhdCAxMDo1MiBBTSBSdXNzZWxsIEtpbmcgLSBBUk0gTGlu
dXggYWRtaW4KPiA+ID4gPiA8bWFpbHRvOmxpbnV4QGFybWxpbnV4Lm9yZy51az4gd3JvdGU6Cj4g
PiA+ID4KPiA+ID4gPiA+IFRoZSBwcmVzc2luZyBxdWVzdGlvbiBzZWVtcyB0byBiZSB0aGlzOgo+
ID4gPiA+ID4KPiA+ID4gPiA+IEFyZSB0aGUgZVNESEMgb24gdGhlIExYMjE2MEEgRE1BIGNvaGVy
ZW50IG9yIGFyZSB0aGV5IG5vdD8KPiA+ID4gPiA+Cj4gPiA+ID4gPiBBbnkgY2hhbmNlcyBvZiBm
aW5kaW5nIG91dCBpbnRlcm5hbGx5IHdoYXQgdGhlIHRydWUgYW5zd2VyIHRvIHRoYXQsCj4gPiA+
ID4gPiByYXRoZXIgdGhhbiBtZSBwb2tpbmcgYWJvdXQgdHJ5aW5nIHN0dWZmIGV4cGVyaW1lbnRh
bGx5P8KgIEhhdmluZyBhCj4gPiA+ID4gPiBkZWZpbml0aXZlIGFuc3dlciBmb3IgYSBwb3RlbnRp
YWxseSBkYXRhLWNvcnJ1cHRpbmcgY2hhbmdlIHdvdWxkIGJlCj4gPiA+ID4gPiByZWFsbHkgZ29v
ZC4uLgo+ID4gPiA+Cj4gPiA+ID4gTGkgWWFuZywKPiA+ID4gPgo+ID4gPiA+IENvdWxkIHlvdSBw
bGVhc2UgaGVscCB0byBjb25maXJtIFJ1c3NlbGwncyBxdWVzdGlvbj8KPiA+ID4gPiBBZGRpbmcg
WWFuZ2JvIHdobyBpcyB3b3JraW5nIG9uIFNESEMuCj4gPiA+ID4KPiA+ID4gPiBSZWdhcmRzLAo+
ID4gPiA+IExlbwo+ID4gPiAKPiA+ID4gLS0KPiA+ID4gUk1LJ3MgUGF0Y2ggc3lzdGVtOgo+ID4g
PiBodHRwczovL2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0
cHMlM0ElMkYlMkZ3d3cuYXIKPiA+ID4gbWxpbnV4Lm9yZy51ayUyRmRldmVsb3BlciUyRnBhdGNo
ZXMlMkYmYW1wO2RhdGE9MDIlN0MwMSU3Q3lhbmdiby5sCj4gPiA+IHUlNDBueHAuY29tJTdDN2Vj
YTJiOTY1MjEwNGM5NWE1MjAwOGQ3M2NjZmE5OWElN0M2ODZlYTFkM2JjMmI0Cj4gPiA+IGM2ZmE5
MmNkOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYzNzA0NDczNDkxMTQ2NTEwMiZhbXA7c2RhdGE9UUIK
PiA+ID4gU0V6QTlMMkhDOTlnbTY1UDk2NUUzbyUyRmhOTTE4dTJTb3VPWnhURXM2cyUzRCZhbXA7
cmVzZXJ2ZWQ9MAo+ID4gPiBGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVy
YmlhOiBzeW5jIGF0IDEyLjFNYnBzIGRvd24gNjIya2Jwcwo+ID4gPiB1cCBBY2NvcmRpbmcgdG8g
c3BlZWR0ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBzIHVwCj4gCj4gLS0gCj4gUk1LJ3Mg
UGF0Y2ggc3lzdGVtOiBodHRwczovL3d3dy5hcm1saW51eC5vcmcudWsvZGV2ZWxvcGVyL3BhdGNo
ZXMvCj4gRlRUQyBicm9hZGJhbmQgZm9yIDAuOG1pbGUgbGluZSBpbiBzdWJ1cmJpYTogc3luYyBh
dCAxMi4xTWJwcyBkb3duIDYyMmticHMgdXAKPiBBY2NvcmRpbmcgdG8gc3BlZWR0ZXN0Lm5ldDog
MTEuOU1icHMgZG93biA1MDBrYnBzIHVwCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKLS0gClJNSydzIFBhdGNo
IHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwpG
VFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0IDEyLjFN
YnBzIGRvd24gNjIya2JwcyB1cApBY2NvcmRpbmcgdG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1icHMg
ZG93biA1MDBrYnBzIHVwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
