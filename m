Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D9D89D34
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTvEzaCAiCSH3j8ZstxxdHjYiNPNgu8vh/9UQ/yd5GA=; b=fupUaJyh3Jndu9
	VtjhYn91KK1TSa+VnL7HR7tMEEYiFpR6wQLUoUAkk0LmDw3OTullfaSNN3/yH40bviwm2dIcbTvED
	fxrYjNtryLB5EAAWxTSx+Kue8UaK7J0+xWkhsYmDLW/eWpSH61dbZyg6KVb0KdS8+mw7zIvZz/l21
	opKvZ3w3Dele3qcxKXvBIfW+OSKghFFZnhcOB/SCDGXXoWSXNMmuHJkc0/ZB9YS562JUhCGGz8aJo
	07cYnsSmgmPxkW6BY06MEm0lhgohTivM3b71cQ8K3lmFqftcBn+yYLQvaHDrYO9izqF+cFiLl9tBt
	zPBtChn/J0gSUU5S12xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8cP-0004nc-5R; Mon, 12 Aug 2019 11:36:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8cC-0004mo-TQ
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 11:35:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B3FC615AB;
 Mon, 12 Aug 2019 04:35:50 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4384D3F706;
 Mon, 12 Aug 2019 04:35:48 -0700 (PDT)
Date: Mon, 12 Aug 2019 12:35:43 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [EXT] Re: [PATCHv3 1/2] PCI: layerscape: Add the bar_fixed_64bit
 property in EP driver.
Message-ID: <20190812113543.GA25040@e121166-lin.cambridge.arm.com>
References: <20190628013826.4705-1-xiaowei.bao@nxp.com>
 <20190812101213.GB20861@e121166-lin.cambridge.arm.com>
 <AM5PR04MB329929A0B046F6BEB94B0120F5D30@AM5PR04MB3299.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR04MB329929A0B046F6BEB94B0120F5D30@AM5PR04MB3299.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_043553_041470_9687C5FF 
X-CRM114-Status: GOOD (  25.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "pombredanne@nexb.com" <pombredanne@nexb.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>, "kishon@ti.com" <kishon@ti.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "shawn.lin@rock-chips.com" <shawn.lin@rock-chips.com>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgMTA6Mzk6MDBBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3Jv
dGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogTG9yZW56
byBQaWVyYWxpc2kgPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+Cj4gPiBTZW50OiAyMDE55bm0
OOaciDEy5pelIDE4OjEyCj4gPiBUbzogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+
OyBraXNob25AdGkuY29tCj4gPiBDYzogYmhlbGdhYXNAZ29vZ2xlLmNvbTsgcm9iaCtkdEBrZXJu
ZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsKPiA+IHNoYXduZ3VvQGtlcm5lbC5vcmc7IExl
byBMaSA8bGVveWFuZy5saUBueHAuY29tPjsgYXJuZEBhcm5kYi5kZTsKPiA+IGdyZWdraEBsaW51
eGZvdW5kYXRpb24ub3JnOyBNLmguIExpYW4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IE1pbmdr
YWkKPiA+IEh1IDxtaW5na2FpLmh1QG54cC5jb20+OyBSb3kgWmFuZyA8cm95LnphbmdAbnhwLmNv
bT47Cj4gPiBrc3Rld2FydEBsaW51eGZvdW5kYXRpb24ub3JnOyBwb21icmVkYW5uZUBuZXhiLmNv
bTsKPiA+IHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbTsgbGludXgtcGNpQHZnZXIua2VybmVsLm9y
ZzsKPiA+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJu
ZWwub3JnOwo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eHBw
Yy1kZXZAbGlzdHMub3psYWJzLm9yZwo+ID4gU3ViamVjdDogW0VYVF0gUmU6IFtQQVRDSHYzIDEv
Ml0gUENJOiBsYXllcnNjYXBlOiBBZGQgdGhlIGJhcl9maXhlZF82NGJpdAo+ID4gcHJvcGVydHkg
aW4gRVAgZHJpdmVyLgo+ID4gCj4gPiBDYXV0aW9uOiBFWFQgRW1haWwKPiA+IAo+ID4gRmlyc3Qg
b2ZmOgo+ID4gCj4gPiBUcmltIHRoZSBDQyBsaXN0LCB5b3UgQ0MnZWQgbWFpbnRhaW5lcnMgKGFu
ZCBtYWlsaW5nIGxpc3RzKSBmb3Igbm8gcmVhc29ucwo+ID4gd2hhdHNvdmVyLgo+IFtYaWFvd2Vp
IEJhb11IaSBMb3JlbnpvLCBJIGFtIG5vdCBjbGVhciB3aHkgdGhlIG1haWwgbGlzdCBpcyB0aGUg
Q0MsIEkgdXNlIHRoZSBjb21tYW5kICJnaXQgc2VuZC1lbWFpbCAtLXRvIiwgSSB3aWxsIHRyeSB0
byBzZW5kIHRoZSBwYXRjaCBhZ2FpbiwgZG8gSSBuZWVkIHRvIG1vZGlmeSB0aGUgdmVyc2lvbiBp
cyB2NCB3aGVuIEkgc2VuZCB0aGlzIHBhdGNoIGFnYWluPwoKWWVzIHlvdSBkby4KCldyYXAgbGlu
ZXMgdG8gbWF4IDgwIGNoYXJhY3RlcnMuIFRoZXJlIGlzIG5vIG5lZWQgdG8gYWRkIFtYaWFvd2Vp
IEJhb10uCgoxKSBSZWFkLCBlbWFpbCBldGlxdWV0dGUKCmh0dHBzOi8va2VybmVsbmV3Ymllcy5v
cmcvUGF0Y2hDdWx0dXJlCgoyKSBnZXRfbWFpbnRhaW5lci5wbCAtZiBkcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS5jCgpDb21wYXJlIHRoZSBvdXRwdXQgdG8gdGhlIHBl
b3BsZSBpbiBDQywgdHJpbSBpdCBhY2NvcmRpbmdseS4KCjMpIFRoZSBOWFAgbWFpbnRhaW5lcnMg
aW4gdGhlIE1BSU5UQUlORVJTIGZpbGUgaGF2ZSBub3QgZ2l2ZW4gYSBzaW5nbGUKICAgY29tbWVu
dCBmb3IgdGhpcyBwYXRjaHNldC4gRWl0aGVyIHRoZXkgc2hvdyB1cCBvciBJIHdpbGwgcmVtb3Zl
IHRoZW0KICAgZnJvbSB0aGUgTUFJTlRBSU5FUlMgbGlzdC4KCjQpIEJlZm9yZSBzdWJtaXR0aW5n
IHBhdGNoZXMsIHRhbGsgdG8gc29tZW9uZSBhdCBOWFAgd2hvIGNhbiBoZWxwIHlvdQogICBmb3Jt
YXQgdGhlbSBpbiBwcmVwYXJhdGlvbiBmb3IgcG9zdGluZywgSSBkbyBub3QgaGF2ZSB0aW1lIHRv
IHdyaXRlCiAgIGd1aWRlbGluZXMgZm9yIGV2ZXJ5b25lIHBvc3Rpbmcgb24gbGludXgtcGNpLCBz
b3JyeSwgdGhlIGluZm9ybWF0aW9uCiAgIGlzIG91dCB0aGVyZSBpZiB5b3UgY2FyZSB0byByZWFk
IGl0LgoKVGhhbmtzLApMb3JlbnpvCgo+ID4gCj4gPiBUaGVuLCByZWFkIHRoaXM6Cj4gPiAKPiA+
IGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRw
cyUzQSUyRiUyRmxvcmUua2UKPiA+IHJuZWwub3JnJTJGbGludXgtcGNpJTJGMjAxNzEwMjYyMjM3
MDEuR0EyNTY0OSU0MGJoZWxnYWFzLWdsYXB0b3Aucm9hCj4gPiBtLmNvcnAuZ29vZ2xlLmNvbSUy
RiZhbXA7ZGF0YT0wMiU3QzAxJTdDeGlhb3dlaS5iYW8lNDBueHAuY29tJTcKPiA+IEMxYzU4NjE3
OGUyM2M0MjNhMGU4ODA4ZDcxZjBkOGY2ZiU3QzY4NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzAK
PiA+IDE2MzUlN0MwJTdDMCU3QzYzNzAxMjAxNTQyNjc4ODU3NSZhbXA7c2RhdGE9M2J4MWJERkl6
aWs4Rm5EMHdsCj4gPiBkdUFVdjd3dExkRDFKM2hRM3hOSDJ4bUZZJTNEJmFtcDtyZXNlcnZlZD0w
Cj4gPiAKPiA+IGFuZCBtYWtlIHlvdXIgcGF0Y2hlcyBjb21wbGlhbnQgcGxlYXNlLgo+ID4gCj4g
PiBPbiBGcmksIEp1biAyOCwgMjAxOSBhdCAwOTozODoyNUFNICswODAwLCBYaWFvd2VpIEJhbyB3
cm90ZToKPiA+ID4gVGhlIFBDSWUgY29udHJvbGxlciBvZiBsYXllcnNjYXBlIGp1c3QgaGF2ZSA0
IEJBUnMsIEJBUjAgYW5kIEJBUjEgaXMKPiA+ID4gMzJiaXQsIEJBUjMgYW5kIEJBUjQgaXMgNjRi
aXQsIHRoaXMgaXMgZGV0ZXJtaW5lZCBieSBoYXJkd2FyZSwgc28gc2V0Cj4gPiA+IHRoZSBiYXJf
Zml4ZWRfNjRiaXQgd2l0aCAweDE0Lgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBYaWFvd2Vp
IEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4KPiA+ID4gLS0tCj4gPiA+IHYyOgo+ID4gPiAgLSBS
ZXBsYWNlIHZhbHVlIDB4MTQgd2l0aCBhIG1hY3JvLgo+ID4gPiB2MzoKPiA+ID4gIC0gTm8gY2hh
bmdlLgo+ID4gPgo+ID4gPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2Nh
cGUtZXAuYyB8ICAgIDEgKwo+ID4gPiAgMSBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbnMoKyks
IDAgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jCj4gPiA+IGIvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpLWxheWVyc2NhcGUtZXAuYwo+ID4gPiBpbmRleCBiZTYxZDk2Li4yMjdjMzNi
IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJz
Y2FwZS1lcC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXll
cnNjYXBlLWVwLmMKPiA+ID4gQEAgLTQ0LDYgKzQ0LDcgQEAgc3RhdGljIGludCBsc19wY2llX2Vz
dGFibGlzaF9saW5rKHN0cnVjdCBkd19wY2llICpwY2kpCj4gPiA+ICAgICAgIC5saW5rdXBfbm90
aWZpZXIgPSBmYWxzZSwKPiA+ID4gICAgICAgLm1zaV9jYXBhYmxlID0gdHJ1ZSwKPiA+ID4gICAg
ICAgLm1zaXhfY2FwYWJsZSA9IGZhbHNlLAo+ID4gPiArICAgICAuYmFyX2ZpeGVkXzY0Yml0ID0g
KDEgPDwgQkFSXzIpIHwgKDEgPDwgQkFSXzQpLAo+ID4gCj4gPiBJIHdvdWxkIGFwcHJlY2lhdGUg
S2lzaG9uJ3MgQUNLIG9uIHRoaXMuCj4gPiAKPiA+IExvcmVuem8KPiA+IAo+ID4gPiAgfTsKPiA+
ID4KPiA+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcyoKPiA+ID4gLS0K
PiA+ID4gMS43LjEKPiA+ID4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
