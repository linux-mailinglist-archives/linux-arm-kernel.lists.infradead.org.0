Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464EA10FFB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 15:13:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4HfDAX+Qpaes21YvbB2Cbov+kbpxadiUAxNC/zBYaY=; b=aU+hhH/MbZdEOt
	R46CVG3za5MjTH3FfZZ0Osl9Bl9gtF+pSqjV3usp1uASpG+JaHjYpIyoyV+dPhv5rpw6XSiuCFYXS
	SNHqEX5L2l+dyeSP4HGVRuHp9fCU+3JEYXshgL+h0FwcKDvOT6MnRD3CySSd5n6sfPs8I0jw6jMMb
	J37YQDCJFqd2eGtw+BPNNiSDIXbpbnPY8KMk02EbV2skC+0G1TcWwWZu3LcmbJcoIkZoXRYlbp/w/
	eGbRMvDtRwdUABm2w4C5AEUvVRi1tmZJ4hnwRoOqAj3qlJ5j0DBnr+fQHLlkdpp+t0pdIQ1RHv7/i
	xk3nd8EPtSmru0QKkwjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8vg-0002pY-SF; Tue, 03 Dec 2019 14:13:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8vY-0002ot-HP
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 14:13:21 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ic8vA-0000FI-AU; Tue, 03 Dec 2019 15:12:56 +0100
Message-ID: <0aec80383d4deea2574a016c8a8b370bcc006c8e.camel@pengutronix.de>
Subject: Re: [PATCH 1/3] dt-bindings: clock: Update Hisilicon reset doc
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jun Nie <jun.nie@linaro.org>
Date: Tue, 03 Dec 2019 15:12:53 +0100
In-Reply-To: <CABymUCOoTZ0MAmtb9O2N+KZj+XF=073C9=BxBgbL9RXwMCuuMA@mail.gmail.com>
References: <20191202144524.5391-1-jun.nie@linaro.org>
 <20191202144524.5391-2-jun.nie@linaro.org>
 <cd0fae1a6b88a37e034876b53b350e79f58c654f.camel@pengutronix.de>
 <CABymUCOoTZ0MAmtb9O2N+KZj+XF=073C9=BxBgbL9RXwMCuuMA@mail.gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_061320_577014_72EB7EE4 
X-CRM114-Status: GOOD (  20.52  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 sboyd@kernel.org, Michael Turquette <mturquette@baylibre.com>,
 yuehaibing@huawei.com, Wei Xu <xuwei5@hisilicon.com>,
 xuejiancheng@hisilicon.com, Rob Herring <robh+dt@kernel.org>,
 swinslow@gmail.com, opensource@jilayne.com, tglx@linutronix.de,
 linux-clk@vger.kernel.org, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTEyLTAzIGF0IDExOjExICswODAwLCBKdW4gTmllIHdyb3RlOgo+IFBoaWxp
cHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+IOS6jjIwMTnlubQxMuaciDPml6Xlkajk
uowg5LiK5Y2IMTowNOWGmemBk++8mgo+ID4gSGkgSnVuLAo+ID4gCj4gPiBJIGhhdmUgYSBmZXcg
cXVlc3Rpb25zIGFuZCBjb21tZW50cyBhYm91dCB0aGVzZSBwYXRjaGVzLiBJIG5vdGljZSB0aGF0
Cj4gPiB0aGUgY2hhbmdlZCBkZXZpY2UgdHJlZXMgb25seSB1c2UgdGhlIGRlZmF1bHQgc2V0dGlu
Zy4gQXJlIHRoZXNlIG5ldwo+ID4gZmVhdHVyZXMgc29tZXRoaW5nIHRoYXQgaXMgcmVxdWlyZWQg
Zm9yIHRoZSBwcmVzZW50IFNvQ3MsIG9yIGlzIHRoaXMgaW4KPiA+IHByZXBhcmF0aW9uIGZvciBh
IG5ldyBTb0M/Cj4gCj4gWWVzLCB0aGlzIHBhdGNoIHNldCBpcyBwcmVwYXJlZCBmb3IgbmV3IFNv
Qy4KPiAKPiA+IE9uIE1vbiwgMjAxOS0xMi0wMiBhdCAyMjo0NSArMDgwMCwgSnVuIE5pZSB3cm90
ZToKPiA+ID4gRG9jdW1lbnQgdGhlIHVwZGF0ZSBvZiBIaXNpbGljb24gcmVzZXQgb3BlcmF0aW9u
IGV4dGVuc2lvbi4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEp1biBOaWUgPGp1bi5uaWVA
bGluYXJvLm9yZz4KPiA+ID4gLS0tCj4gPiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9j
ay9oaXNpLWNyZy50eHQgICAgfCAxMiArKysrLS0tLQo+ID4gPiAgaW5jbHVkZS9kdC1iaW5kaW5n
cy9yZXNldC9oaXNpbGljb24tcmVzZXRzLmggIHwgMjggKysrKysrKysrKysrKysrKysrKwo+ID4g
PiAgMiBmaWxlcyBjaGFuZ2VkLCAzNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4g
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvaGlzaWxpY29u
LXJlc2V0cy5oCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2Nsb2NrL2hpc2ktY3JnLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9jbG9jay9oaXNpLWNyZy50eHQKPiA+ID4gaW5kZXggY2M2MGIzZDQyM2YzLi5m
ZDhiMGE5NjQ4MDYgMTAwNjQ0Cj4gPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9jbG9jay9oaXNpLWNyZy50eHQKPiA+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2hpc2ktY3JnLnR4dAo+ID4gPiBAQCAtMjYsMTkgKzI2LDIx
IEBAIHRvIHNwZWNpZnkgdGhlIGNsb2NrIHdoaWNoIHRoZXkgY29uc3VtZS4KPiA+ID4gCj4gPiA+
ICBBbGwgdGhlc2UgaWRlbnRpZmllciBjb3VsZCBiZSBmb3VuZCBpbiA8ZHQtYmluZGluZ3MvY2xv
Y2svaGkzNTE5LWNsb2NrLmg+Lgo+ID4gPiAKPiA+ID4gLS0gI3Jlc2V0LWNlbGxzOiBzaG91bGQg
YmUgMi4KPiA+ID4gKy0gI3Jlc2V0LWNlbGxzOiBzaG91bGQgYmUgMy4KCklmIHRoaXMgaXMgb25s
eSBuZWVkZWQgZm9yIGEgbmV3IFNvQywgeW91IHNob3VsZCBpbnRyb2R1Y2UgYSBuZXcKY29tcGF0
aWJsZSBhbmQgbGVhdmUgI3Jlc2V0LWNlbGxzID0gPDI+IGZvciB0aGUgb2xkIGNvbXBhdGlibGUu
IFRoZSBuZXcKY29tcGF0aWJsZSBjYW4gcmVxdWlyZSAjcmVzZXQtY2VsbHMgPSA8Mz4uIFdpdCB0
aGlzLCB0aGUgY3VycmVudCBkZXZpY2UKdHJlZXMgZG9uJ3QgaGF2ZSB0byBiZSBjaGFuZ2VkIGF0
IGFsbC4KCnJlZ2FyZHMKUGhpbGlwcAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
