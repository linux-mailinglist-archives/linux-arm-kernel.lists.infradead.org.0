Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F0C8B4A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 11:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6Fm0V9kvJGbBXf5AZeA8N8XFmIyp3erg7bjuigDTOs=; b=jfdQHb8NMe/fnB
	TwVf6lyvPyCILTniFE5bW54A75rcOMVm9XMo5FSgjMq5PrgZrdVolkmJwJOi2mjfzRr8QNGGqzP3k
	ja1WxOnKvqh7p+P1LjApc+J0SbyfNygxnGQHceYIhUXuajy9cXoSAo3/+LUeR1enLgS7/OtjwRIz9
	SIAd3z1cZySQRophb/anPSwPZmkdcYn4RSLpbhrgfL0NUtMhuH3QoWriV6JvMwT/zdNJ/KCoot+sH
	Gu3zGWUf/2RJ8fkCp9/TFKnWdThTSqZjH8s6L0BbCOn71/eJssOI+UTGe2/aoOqgYS65b+NMMNsZp
	gJwUR1DSFAuqf6o2Nn6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTTE-0001vr-PZ; Tue, 13 Aug 2019 09:52:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTT1-0001v5-Pn
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 09:51:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3AC3A337;
 Tue, 13 Aug 2019 02:51:46 -0700 (PDT)
Received: from red-moon (red-moon.cambridge.arm.com [10.1.197.39])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 026FC3F706;
 Tue, 13 Aug 2019 02:51:43 -0700 (PDT)
Date: Tue, 13 Aug 2019 10:51:51 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [EXT] Re: [PATCHv5 1/2] PCI: layerscape: Add the bar_fixed_64bit
 property in EP driver.
Message-ID: <20190813095151.GA10070@red-moon>
References: <20190813062840.2733-1-xiaowei.bao@nxp.com>
 <61e6df1c-a0dc-8f05-f74a-85a3cac9823f@ti.com>
 <AM5PR04MB32993CC1344DD660A298C7E1F5D20@AM5PR04MB3299.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR04MB32993CC1344DD660A298C7E1F5D20@AM5PR04MB3299.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_025147_927215_A85C9B8E 
X-CRM114-Status: GOOD (  21.08  )
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Roy Zang <roy.zang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "hayashi.kunihiko@socionext.com" <hayashi.kunihiko@socionext.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "yue.wang@amlogic.com" <yue.wang@amlogic.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "dwmw@amazon.co.uk" <dwmw@amazon.co.uk>,
 "jonnyc@amazon.com" <jonnyc@amazon.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "tpiepho@impinj.com" <tpiepho@impinj.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Mingkai Hu <mingkai.hu@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WW91IHNob3VsZCBmaXggeW91ciBlbWFpbCBjbGllbnQgc2V0LXVwIHRvIGF2b2lkIHN0aWNraW5n
IGFuIFtFWFRdCnRhZyB0byB5b3VyIGVtYWlscyAkU1VCSkVDVC4KCk9uIFR1ZSwgQXVnIDEzLCAy
MDE5IGF0IDA3OjM5OjQ4QU0gKzAwMDAsIFhpYW93ZWkgQmFvIHdyb3RlOgo+IAo+IAo+ID4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IEtpc2hvbiBWaWpheSBBYnJhaGFtIEkg
PGtpc2hvbkB0aS5jb20+Cj4gPiBTZW50OiAyMDE55bm0OOaciDEz5pelIDE1OjMwCj4gPiBUbzog
WGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+OyBsb3JlbnpvLnBpZXJhbGlzaUBhcm0u
Y29tOwo+ID4gYmhlbGdhYXNAZ29vZ2xlLmNvbTsgTS5oLiBMaWFuIDxtaW5naHVhbi5saWFuQG54
cC5jb20+OyBNaW5na2FpIEh1Cj4gPiA8bWluZ2thaS5odUBueHAuY29tPjsgUm95IFphbmcgPHJv
eS56YW5nQG54cC5jb20+Owo+ID4gbC5zdGFjaEBwZW5ndXRyb25peC5kZTsgdHBpZXBob0BpbXBp
bmouY29tOyBMZW9uYXJkIENyZXN0ZXoKPiA+IDxsZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT47IGFu
ZHJldy5zbWlybm92QGdtYWlsLmNvbTsKPiA+IHl1ZS53YW5nQGFtbG9naWMuY29tOyBoYXlhc2hp
Lmt1bmloaWtvQHNvY2lvbmV4dC5jb207Cj4gPiBkd213QGFtYXpvbi5jby51azsgam9ubnljQGFt
YXpvbi5jb207IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7Cj4gPiBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnOyBsaW51eHBwYy1kZXZAbGlzdHMub3psYWJzLm9yZzsKPiA+IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gU3ViamVjdDogW0VYVF0gUmU6IFtQQVRD
SHY1IDEvMl0gUENJOiBsYXllcnNjYXBlOiBBZGQgdGhlIGJhcl9maXhlZF82NGJpdAo+ID4gcHJv
cGVydHkgaW4gRVAgZHJpdmVyLgo+ID4gCj4gPiBDYXV0aW9uOiBFWFQgRW1haWwKClNlZSBhYm92
ZSwgdGhpcyAiQ2F1dGlvbiIgc3R1ZmYgc2hvdWxkIGRpc2FwcGVhci4KCkFsc28sIHF1b3Rpbmcg
dGhlIGVtYWlsIGhlYWRlciBpcyB1c2VsZXNzLCBwbGVhc2UgY29uZmlndXJlIHlvdXIgZW1haWwK
Y2xpZW50IHRvIHJlbW92ZSBpdC4KClRoYW5rcywKTG9yZW56bwoKPiA+IE9uIDEzLzA4LzE5IDEx
OjU4IEFNLCBYaWFvd2VpIEJhbyB3cm90ZToKPiA+ID4gVGhlIFBDSWUgY29udHJvbGxlciBvZiBs
YXllcnNjYXBlIGp1c3QgaGF2ZSA0IEJBUnMsIEJBUjAgYW5kIEJBUjEgaXMKPiA+ID4gMzJiaXQs
IEJBUjIgYW5kIEJBUjQgaXMgNjRiaXQsIHRoaXMgaXMgZGV0ZXJtaW5lZCBieSBoYXJkd2FyZSwg
c28gc2V0Cj4gPiA+IHRoZSBiYXJfZml4ZWRfNjRiaXQgd2l0aCAweDE0Lgo+ID4gPgo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4KPiA+IAo+ID4g
QWNrZWQtYnk6IEtpc2hvbiBWaWpheSBBYnJhaGFtIEkgPGtpc2hvbkB0aS5jb20+Cj4gPiA+IC0t
LQo+ID4gPiB2MjoKPiA+ID4gIC0gUmVwbGFjZSB2YWx1ZSAweDE0IHdpdGggYSBtYWNyby4KPiA+
ID4gdjM6Cj4gPiA+ICAtIE5vIGNoYW5nZS4KPiA+ID4gdjQ6Cj4gPiA+ICAtIHNlbmQgdGhlIHBh
dGNoIGFnYWluIHdpdGggJy0tdG8nLgo+ID4gPiB2NToKPiA+ID4gIC0gZml4IHRoZSBjb21taXQg
bWVzc2FnZS4KPiA+ID4KPiA+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXll
cnNjYXBlLWVwLmMgfCAxICsKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+
ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxh
eWVyc2NhcGUtZXAuYwo+ID4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXll
cnNjYXBlLWVwLmMKPiA+ID4gaW5kZXggYmU2MWQ5Ni4uY2E5YWE0NSAxMDA2NDQKPiA+ID4gLS0t
IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUtZXAuYwo+ID4gPiAr
KysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jCj4gPiA+
IEBAIC00NCw2ICs0NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcwo+
ID4gbHNfcGNpZV9lcGNfZmVhdHVyZXMgPSB7Cj4gPiA+ICAgICAgIC5saW5rdXBfbm90aWZpZXIg
PSBmYWxzZSwKPiA+ID4gICAgICAgLm1zaV9jYXBhYmxlID0gdHJ1ZSwKPiA+ID4gICAgICAgLm1z
aXhfY2FwYWJsZSA9IGZhbHNlLAo+ID4gPiArICAgICAuYmFyX2ZpeGVkXzY0Yml0ID0gKDEgPDwg
QkFSXzIpIHwgKDEgPDwgQkFSXzQpLAo+ID4gPiAgfTsKPiA+ID4KPiA+ID4gIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcyoKPiBJIGNoZWNrIG90aGVyIHBsYXRmb3JtcywgaXQg
aXMgJ3N0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcycsIEkgY2FuIGdldCB0aGUg
Y29ycmVjdCAKPiBWYWx1ZSB1c2UgdGhpcyBkZWZpbmUgd2F5IGluIHBjaS1lcGYtdGVzdC5jIGZp
bGUuCj4gPiA+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
