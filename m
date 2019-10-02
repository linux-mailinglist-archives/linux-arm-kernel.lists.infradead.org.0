Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEC0C4AC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 11:46:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJFWCUGbjrQdGfHaqsWAfha8qXD2OFTZpWwncFr4VvA=; b=kAqVv/73UVVaSj
	PZdouC0I6pTvgAMoelBxIgdPhuQPyG8IEMoPEW+5SYm089I2gqihWVM1sOC4y2tD5VG1zGtLm1EDt
	YK77Sy7ucLHgPBE+UHrZY6zJFiLVuVED4vvX1tbJaQP+fGn/FeTv+a3mbUXBUOOhLZiPTqJrUjJd1
	py/9Qz+ni/77ms1I8aTuNcPmrNmUjH0XEgRzJvGyodS4NvH4WmD+u56Soz85woveduv+FmjTJsu/K
	mzXg7k0p3vJhPBiq7pHOGFo8iR/sQjxpt9ncPGhyBSbQZe4hMYSNp8iQdskoxWL23j6FwG7hikpxE
	Sx9qrpicEnTnKBAPYegw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFbD3-0006OS-AW; Wed, 02 Oct 2019 09:46:13 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFb6s-0006G3-4q; Wed, 02 Oct 2019 09:39:56 +0000
X-UUID: f75bf5104f66491797ccc091a0b02072-20191002
X-UUID: f75bf5104f66491797ccc091a0b02072-20191002
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 872922363; Wed, 02 Oct 2019 01:36:34 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 2 Oct 2019 02:36:33 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 2 Oct 2019 17:21:27 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 2 Oct 2019 17:21:27 +0800
Message-ID: <1570008088.13954.14.camel@mtksdccf07>
Subject: Re: [PATCH net 2/2] arm: dts: mediatek: Fix mt7629 dts to reflect
 the latest dt-binding
From: mtk15127 <Mark-MC.Lee@mediatek.com>
To: =?ISO-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Date: Wed, 2 Oct 2019 17:21:28 +0800
In-Reply-To: <20191001135608.Horde.OSYef8s44rR0XHw22Bf55r8@www.vdorst.com>
References: <20191001123150.23135-1-Mark-MC.Lee@mediatek.com>
 <20191001123150.23135-3-Mark-MC.Lee@mediatek.com>
 <20191001135608.Horde.OSYef8s44rR0XHw22Bf55r8@www.vdorst.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_023950_864349_2F91328B 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Felix Fietkau <nbd@openwrt.org>, Nelson Chang <nelson.chang@mediatek.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, MarkLee <Mark-MC.Lee@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTEwLTAxIGF0IDEzOjU2ICswMDAwLCBSZW7DqSB2YW4gRG9yc3Qgd3JvdGU6
Cj4gSGkgTWFya0xlZSwKPiAKPiBRdW90aW5nIE1hcmtMZWUgPE1hcmstTUMuTGVlQG1lZGlhdGVr
LmNvbT46Cj4gCj4gPiAqIFJlbW92ZXMgbWVkaWF0ZWsscGh5c3BlZWQgcHJvcGVydHkgZnJvbSBk
dHNpIHRoYXQgaXMgdXNlbGVzcyBpbiBQSFlMSU5LCj4gPiAqIFNldCBnbWFjMCB0byBmaXhlZC1s
aW5rIHNnbWlpIDIuNUdiaXQgbW9kZQo+ID4gKiBTZXQgZ21hYzEgdG8gZ21paSBtb2RlIHRoYXQg
Y29ubmVjdCB0byBhIGludGVybmFsIGdwaHkKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXJrTGVl
IDxNYXJrLU1DLkxlZUBtZWRpYXRlay5jb20+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybS9ib290L2R0
cy9tdDc2MjktcmZiLmR0cyB8IDEzICsrKysrKysrKysrKy0KPiA+ICBhcmNoL2FybS9ib290L2R0
cy9tdDc2MjkuZHRzaSAgICB8ICAyIC0tCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290
L2R0cy9tdDc2MjktcmZiLmR0cyAgCj4gPiBiL2FyY2gvYXJtL2Jvb3QvZHRzL210NzYyOS1yZmIu
ZHRzCj4gPiBpbmRleCAzNjIxYjdkMmIyMmEuLjZiZjFmN2Q4ZGRiNSAxMDA2NDQKPiA+IC0tLSBh
L2FyY2gvYXJtL2Jvb3QvZHRzL210NzYyOS1yZmIuZHRzCj4gPiArKysgYi9hcmNoL2FybS9ib290
L2R0cy9tdDc2MjktcmZiLmR0cwo+ID4gQEAgLTY2LDkgKzY2LDIxIEBACj4gPiAgCXBpbmN0cmwt
MSA9IDwmZXBoeV9sZWRzX3BpbnM+Owo+ID4gIAlzdGF0dXMgPSAib2theSI7Cj4gPgo+ID4gKwln
bWFjMDogbWFjQDAgewo+ID4gKwkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxldGgtbWFjIjsKPiA+
ICsJCXJlZyA9IDwwPjsKPiA+ICsJCXBoeS1tb2RlID0gInNnbWlpIjsKPiA+ICsJCWZpeGVkLWxp
bmsgewo+ID4gKwkJCXNwZWVkID0gPDI1MDA+Owo+ID4gKwkJCWZ1bGwtZHVwbGV4Owo+ID4gKwkJ
CXBhdXNlOwo+ID4gKwkJfTsKPiA+ICsJfTsKPiA+ICsKPiA+ICAJZ21hYzE6IG1hY0AxIHsKPiA+
ICAJCWNvbXBhdGlibGUgPSAibWVkaWF0ZWssZXRoLW1hYyI7Cj4gPiAgCQlyZWcgPSA8MT47Cj4g
PiArCQlwaHktbW9kZSA9ICJnbWlpIjsKPiA+ICAJCXBoeS1oYW5kbGUgPSA8JnBoeTA+Owo+ID4g
IAl9Owo+ID4KPiA+IEBAIC03OCw3ICs5MCw2IEBACj4gPgo+ID4gIAkJcGh5MDogZXRoZXJuZXQt
cGh5QDAgewo+ID4gIAkJCXJlZyA9IDwwPjsKPiA+IC0JCQlwaHktbW9kZSA9ICJnbWlpIjsKPiA+
ICAJCX07Cj4gPiAgCX07Cj4gPiAgfTsKPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0
cy9tdDc2MjkuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL210NzYyOS5kdHNpCj4gPiBpbmRleCA5
NjA4YmMyY2NiM2YuLjg2N2I4ODEwM2I5ZCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL210NzYyOS5kdHNpCj4gPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9tdDc2MjkuZHRzaQo+
ID4gQEAgLTQ2OCwxNCArNDY4LDEyIEBACj4gPiAgCQkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxt
dDc2Mjktc2dtaWlzeXMiLCAic3lzY29uIjsKPiA+ICAJCQlyZWcgPSA8MHgxYjEyODAwMCAweDMw
MDA+Owo+ID4gIAkJCSNjbG9jay1jZWxscyA9IDwxPjsKPiA+IC0JCQltZWRpYXRlayxwaHlzcGVl
ZCA9ICIyNTAwIjsKPiA+ICAJCX07Cj4gPgo+ID4gIAkJc2dtaWlzeXMxOiBzeXNjb25AMWIxMzAw
MDAgewo+ID4gIAkJCWNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ3NjI5LXNnbWlpc3lzIiwgInN5
c2NvbiI7Cj4gPiAgCQkJcmVnID0gPDB4MWIxMzAwMDAgMHgzMDAwPjsKPiA+ICAJCQkjY2xvY2st
Y2VsbHMgPSA8MT47Cj4gPiAtCQkJbWVkaWF0ZWsscGh5c3BlZWQgPSAiMjUwMCI7Cj4gPiAgCQl9
Owo+ID4gIAl9Owo+ID4gIH07Cj4gPiAtLQo+ID4gMi4xNy4xCj4gCj4gRG9lcyBNVDc2Mjkgc29j
IGhhcyB0aGUgc2FtZSBTR01JSSBJUCBibG9jayBhcyBvbiB0aGUgTVQ3NjIyPwo+IElmIHRoYXQg
aXMgdGhlIGNhc2UgdGhlbiBwaHktbW9kZSBzaG91bGQgc2V0IHRvICIyNTAwYmFzZS14Ii4KICBZ
ZXMsTVQ3NjI5IGFuZCBNVDc2MjIgdXNlIHRoZSBzYW1lIFNHTUlJIGJsb2NrLiAKICBUaGFua3Mg
Zm9yIHlvdXIgc3VnZ2VzdGlvbiwgd2lsbCBjaGFuZ2UgZ21hYzAgcGh5LW1vZGUgdG8gIjI1MDBi
YXNlLXgiCiAgaW4gdGhlIG5leHQgcGF0Y2guCgpNYXJrCj4gU2VlIGRpc2N1c3Npb24gYWJvdXQg
dGhlIE1UNzYyMiBbMV0gYW5kIGR0cyBvZiAgCj4gbXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRz
WzJdWzNdCj4gCj4gTm90ZSB0aGUgY29kZSBvbmx5IHNldCB0aGUgcGh5IGluIG92ZXJjbG9jayBt
b2RlIGlmIHBoeW1vZGUgPSAgCj4gMjUwMGJhc2UteCBhbmQgdGhlCj4gbGluayBpcyBhIGZpeGVk
LWxpbmssIHNlZSBbNF0uCj4gQWxzcCB0aGUgY3VycmVudCBjb2RlIGRvZXNuJ3Qgc3VwcG9ydCBz
Z21paSBzbyB3ZWxsLiBTZ21paSBhdCAyLjVHYml0IGlzIG5vdAo+IHN1cHBvcnRlZCBhdCBhbGwu
Cj4gCj4gR3JlYXRzLAo+IAo+IFJlbsOpCj4gCj4gWzFdOiAgCj4gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbmV0ZGV2LzIwMTkwODIyMTQ0NDMzLkdUMTMyOTRAc2hlbGwuYXJtbGludXgub3JnLnVr
Lwo+IFsyXTogIAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDE5MDgyNTE3NDM0
MS4yMDc1MC00LW9wZW5zb3VyY2VAdmRvcnN0LmNvbS8KPiBbM106ICAKPiBodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9kYXZlbS9uZXQuZ2l0L3RyZWUvYXJj
aC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMjbjEy
Mgo+IFs0XTogIAo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwv
Z2l0L2RhdmVtL25ldC5naXQvdHJlZS9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtf
c2dtaWkuYyNuNzIKPiAKPiAKPiAKPiAKPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
