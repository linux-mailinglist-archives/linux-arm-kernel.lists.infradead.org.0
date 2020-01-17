Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 531DC140BA1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 14:52:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cI49BGSvQrSvktR+xlQ4RwHaKaFruyiPAvHe1akfGrg=; b=izx1hBd4OLGjOc
	L7IQmMbyWgHQzw2u80NRp024kcsli8jMq98a8szO8x/YYdYsaGYxVmp6+BfEFpOVVnRbq7WmOk7Z/
	/Va4i1cDhsH261qbXMyB1PphtXinakNU8xyGOyCxVTJ8Bf82zvR7G1Er936Xgm3ntw3X7RazHhw/9
	xzipurEKfY+yJ450zoPJ7BqkHyq7mYaHtYoK1P8CARX7/8t1kbWS075IEWVrOQEjKIrC2CnPjeA/g
	dFipMCBLW7hRODlXY9RHZPNxwED8LWspJrShEM2VtAXVuaJefIOAt6u8b7ztcPFvKU8ZGt9PYQLVj
	9TCxJAlC9SHw/GH8UNtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isS37-0003VX-QC; Fri, 17 Jan 2020 13:52:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isS2y-0003Uq-EF
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 13:52:28 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1isS2q-0003bt-CJ; Fri, 17 Jan 2020 14:52:16 +0100
Message-ID: <e880aba2725afe2aa5f10c4ba69366d0b0de29bb.camel@pengutronix.de>
Subject: Re: [EXT] [PATCH] PCI: imx6: Add L1SS support for i.MX8MQ
From: Lucas Stach <l.stach@pengutronix.de>
To: Andrey Smirnov <andrew.smirnov@gmail.com>, Richard Zhu
 <hongxing.zhu@nxp.com>
Date: Fri, 17 Jan 2020 14:52:14 +0100
In-Reply-To: <CAHQ1cqFg_EcLRUtOO65P-K4hFdkx0OyzxOupqdqwicnhROiZ6A@mail.gmail.com>
References: <20200114170231.16421-1-andrew.smirnov@gmail.com>
 <AM0PR0402MB35708B48AF371E81BFCCED158C370@AM0PR0402MB3570.eurprd04.prod.outlook.com>
 <CAHQ1cqFg_EcLRUtOO65P-K4hFdkx0OyzxOupqdqwicnhROiZ6A@mail.gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_055224_476055_B2D1B39D 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 <linux-arm-kernel@lists.infradead.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRG8sIDIwMjAtMDEtMTYgYXQgMDY6MzcgLTA4MDAsIEFuZHJleSBTbWlybm92IHdyb3RlOgo+
IE9uIFR1ZSwgSmFuIDE0LCAyMDIwIGF0IDc6MjYgUE0gUmljaGFyZCBaaHUgPGhvbmd4aW5nLnpo
dUBueHAuY29tPiB3cm90ZToKPiA+IAo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+
ID4gPiBGcm9tOiBBbmRyZXkgU21pcm5vdiA8YW5kcmV3LnNtaXJub3ZAZ21haWwuY29tPgo+ID4g
PiBTZW50OiAyMDIw5bm0MeaciDE15pelIDE6MDMKPiA+ID4gVG86IGxpbnV4LXBjaUB2Z2VyLmtl
cm5lbC5vcmcKPiA+ID4gQ2M6IEFuZHJleSBTbWlybm92IDxhbmRyZXcuc21pcm5vdkBnbWFpbC5j
b20+OyBMb3JlbnpvIFBpZXJhbGlzaQo+ID4gPiA8bG9yZW56by5waWVyYWxpc2lAYXJtLmNvbT47
IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+OyBDaHJpcwo+ID4gPiBIZWFseSA8
Y3BoZWFseUBnbWFpbC5jb20+OyBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT47
IFJpY2hhcmQKPiA+ID4gWmh1IDxob25neGluZy56aHVAbnhwLmNvbT47IGRsLWxpbnV4LWlteCA8
bGludXgtaW14QG54cC5jb20+Owo+ID4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gU3ViamVjdDogW0VYVF0g
W1BBVENIXSBQQ0k6IGlteDY6IEFkZCBMMVNTIHN1cHBvcnQgZm9yIGkuTVg4TVEKPiA+ID4gCj4g
PiA+IENhdXRpb246IEVYVCBFbWFpbAo+ID4gPiAKPiA+ID4gQWRkIGNvZGUgdG8gY29uZmlndXJl
IFBDSSBJUCBibG9jayB0byB1dGlsaXplIHN1cHBvcnRlZCBBU1BNIGZlYXR1cmVzLgo+ID4gPiAK
PiA+ID4gU2lnbmVkLW9mZi1ieTogQW5kcmV5IFNtaXJub3YgPGFuZHJldy5zbWlybm92QGdtYWls
LmNvbT4KPiA+IFtSaWNoYXJkIFpodV0gIEhJIEFuZHJleToKPiA+IFRoaXMgcGF0Y2ggZG9lcyB0
aGUgcmVnbWFwIHRvIHRoZSBzcmMgcmVnaW9uLCByaWdodD8KPiAKPiBJbmRlZWQuCj4gCj4gPiBI
b3cgYWJvdXQgdG8gYWRkIGFub3RoZXIgcmVzZXQgdG8gbWFuaXB1bGF0ZSB0aGUgKl9PVkVSUklE
RSBiaXQuCj4gPiBKdXN0IGxpa2UgdGhlIGZvbGxvd2luZyBiaXRzLgo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgcmVzZXRzID0gPCZzcmMgSU1YOE1RX1JFU0VUX1BDSUVQSFk+LAo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZzcmMgSU1YOE1RX1JFU0VUX1BDSUVfQ1RS
TF9BUFBTX0VOPiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmc3JjIElN
WDhNUV9SRVNFVF9QQ0lFX0NUUkxfQVBQU19UVVJOT0ZGPjsKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgIHJlc2V0LW5hbWVzID0gInBjaWVwaHkiLCAiYXBwcyIsICJ0dXJub2ZmIjsKPiA+IAo+
IAo+IExhc3QgdGltZSBJIHRhbGtlZCB0byBQaGlsaXBwIFphYmVsIChtYWludGFpbmVyIG9mIHJl
c2V0IHN1YnN5c3RlbSkgaGUKPiBtYWRlIGl0IHByZXR0eSBjbGVhciB0aGF0IGhlIHRob3VnaCB0
aGF0IGV4cG9zaW5nIHRob3NlIFBDSWUgcmVsYXRlZAo+IGJpdHMgdmlhIHJlc2V0IHN1YnN5c3Rl
bSAoZm9yIGJvdGggaW14NyBhbmQgaW14OG1xKSB3YXMgYSBtaXN0YWtlIGFuZAo+IGdvaW5nIGZv
cndhcmQgaGUnZCBsaWtlIHRvIHNlZSBvbmx5IHRydWUgcmVzZXQgZnVuY3Rpb25hbGl0eSB0byBi
ZQo+IGV4cG9zZWQgdGhhdCB3YXkuIElNWDhNUV9QQ0lFX0NUUkxfQVBQU19DTEtfUkVRIGlzIGRl
ZmluaXRlbHkgbm90IGEKPiByZXNldCBsaW5lLCBzbyB0aGUgY2FzZSBmb3IgYWRkaW5nIGl0IHRv
IHJlc2V0IGRyaXZlciBpcyBldmVuIHdlYWtlci4KPiAKPiBMdWNhcywgZG8geW91IG1pbmQgc2hh
cmluZyB5b3VyIHRob3VnaHRzIG9uIHRoaXM/CgpXaGlsZSBJJ20gbm90IHRvbyBoYXBweSB0aGF0
IHdlIGFyZSBub3cgZ29pbmcgdG8gaGF2ZSBtdWx0aXBsZSBwYXRocyB0bwp0aG9zZSBQQ0llIHJl
bGF0ZWQgY29udHJvbCBiaXRzIGluIHRoZSBkcml2ZXIsIEkgdG90YWxseSBhZ3JlZSB0aGF0IHdl
CnNob3VsZCBzdG9wIGFidXNpbmcgdGhlIHJlc2V0IEFQSSBmb3IgdGhpbmdzIHRoYXQgYXJlbid0
IGEgcmVzZXQuCgpNYXliZSB3ZSBzaG91bGQgZXZlbiBnbyBhbGwgdGhlIHdheSBhbmQgc3dpdGNo
IHRoZSBBUFBTX0VOIGJpdAptYW5pcHVsYXRpb24gdG8gdXNlIHRoZSByZWdtYXAgaW5zdGVhZCBv
ZiB0aGUgcmVzZXQuIFRoaXMgd291bGQgYmUgYSBEVApjb21wYXRpYmxlIGNoYW5nZSwgYXMgd2Ug
d291bGQganVzdCBpZ25vcmUgdGhlIGFwcHMgcmVzZXQgc3BlY2lmaWVkIGluCm9sZCBEVHMgYW5k
IGRvbid0IHJlcXVpcmUgYW55IERUIGNoYW5nZXMgZm9yIHRoaXMgdG8gd29yayBpZiB0aGUgcmVn
bWFwCmlzIGxvb2tlZCB1cCBieSBjb21wYXRpYmxlLgoKUmVnYXJkcywKTHVjYXMKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
