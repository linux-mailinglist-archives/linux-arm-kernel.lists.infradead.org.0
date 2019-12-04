Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CF31130E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 18:37:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKnwe0bv+YFaKKIIRk26u8C9E06VtrHei5KpgdYmtpA=; b=H70KqVl+COASml
	gTCz8QIRJ7/ej0sH8x6lcN+gy2LxlagePLNhQx1MKT6JUzx61WRKNfIuOUZE3X8GpbvoPE9thovPA
	qJA+rFmVYUqGiLs24UDv1ShDEnecA61c5dOJgazP60vcdTAePSAe4YmVhte2IQauh0sqfiyRIBcMv
	FIYfqrWeVZeBupdWicbHuNmDzZn5aDkDtjGYYGQM1TdIi2GXGclHto8iDTW2Va4tRwJKTVg+/edl+
	lch10/xDeOM8qXtWMteMYduG2e058Clxi6bqpIsJ8e0NLaOlPJyVlB21oa9bAhwWoDEW/cmty4Kwh
	jXrxk9m1juFQ1LzvwiWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYa8-0002Hw-TW; Wed, 04 Dec 2019 17:36:56 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYa1-0002HV-Si; Wed, 04 Dec 2019 17:36:51 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id A618F240002;
 Wed,  4 Dec 2019 17:36:47 +0000 (UTC)
Date: Wed, 4 Dec 2019 18:36:46 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Move xin32k fixed-clock out of
 PX30 DTSI
Message-ID: <20191204183646.2f7f6e7f@xps13>
In-Reply-To: <2665233.YyXs6BPQ7y@diego>
References: <20191204171537.14163-1-miquel.raynal@bootlin.com>
 <2665233.YyXs6BPQ7y@diego>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_093650_064240_09F5B703 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZSBvbiBXZWQs
IDA0IERlYyAyMDE5IDE4OjMxOjQ2CiswMTAwOgoKPiBIaSBNaXF1ZWwsCj4gCj4gQW0gTWl0dHdv
Y2gsIDQuIERlemVtYmVyIDIwMTksIDE4OjE1OjM3IENFVCBzY2hyaWViIE1pcXVlbCBSYXluYWw6
Cj4gPiBUaGlzIGNsb2NrIGhhcyBub3RoaW5nIHRvIGRvIGluIHRoZSBQWDMwIERUU0kgYXMgaXQg
aXMgc3VwcG9zZWQgdG8gYmUKPiA+IGFuIGlucHV0IG9mIHRoZSBTb0MuIE1vdmluZyBpdCB0byB0
aGUgRVZCIERUUyAob25seSBib2FyZCBmaWxlIHVzaW5nCj4gPiB0aGlzIERUU0kpIG1ha2VzIG1v
cmUgc2Vuc2UuIEFsc28sIHdoZW4gdGhpcyBjbG9jayBpcyBub3QgYSBmaXhlZAo+ID4gY2xvY2sg
YW5kIGNvbWVzIGZyb20gZWcuIGEgUE1JQyB0aGUgc2l0dWF0aW9uIGNhbiBiZSBkZXNjcmliZWQg
Y2xlYW5seQo+ID4gaW4gdGhlIGRldmljZSB0cmVlIChhdm9pZHMgaGF2aW5nIHRvIGRlbGV0ZSB0
aGUgZml4ZWQtY2xvY2sgbm9kZQo+ID4gZmlyc3QpLgo+ID4gCj4gPiBUaGlzIGNsb2NrIGlzIG5v
dCBtYW5kYXRvcnkgdG8gYm9vdCBzbyBpdCBzaG91bGQgbm90IGJyZWFrIGV4aXN0aW5nCj4gPiB1
c2Vycy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5h
bEBib290bGluLmNvbT4gIAo+IAo+IFNvcnJ5IGZvbyBiZWluZyB0aGUgYmVhcmVyIG9mIGJhZCBu
ZXdzIGFnYWluLCBidXQgdGhhdCBpc3N1ZSBnb3QgYWxyZWFkeQo+IGZpeGVkIGJ5OgoKSGUgaGUs
IG5vIHByb2JsZW0gOikgSSB3YXMgbm90IGFjdHVhbGx5IGxvb2tpbmcgYXQgdGhlIHJpZ2h0IGJy
YW5jaAoodjUuNS1hcm1zb2MvZHRzNjQpLgoKPiBhcm02NDogZHRzOiByb2NrY2hpcDogcmVtb3Zl
IHN0YXRpYyB4aW4zMmsgZnJvbSBweDMwCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvbW1pbmQvbGludXgtcm9ja2NoaXAuZ2l0L2NvbW1pdC8/aD12NS41
LWFybXNvYy9kdHM2NCZpZD0wMDUxOTEzN2Y3ZDRmYzE5ZmYyN2YzZDNmNGZjNDViNWIyMjJhZTgy
Cj4gCj4gYXJtNjQ6IGR0czogcm9ja2NoaXA6IGZpeCB0aGUgcHgzMC1ldmIgcG93ZXIgdHJlZQo+
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L21taW5kL2xp
bnV4LXJvY2tjaGlwLmdpdC9jb21taXQvP2g9djUuNS1hcm1zb2MvZHRzNjQmaWQ9OTE1YjZhOGI1
NGE2ZDQzNjg4NWE0NTg4NjdlNTlmYjIwZmM2MzU2ZAo+IAo+IAo+IE9uIG1vc3QvYWxsIFJvY2tj
aGlwIHRoZSB4aW4zMmsgY2xvY2sgaXMgYWN0dWFsbHkgcHJvdmlkZWQgYnkgdGhlIGJvYXJkcwo+
IHBtaWMgLSB0aGUgcms4MDkgaW4gdGhpcyBjYXNlLgoKVGhhbmtzIGZvciB0aGUgY29uZmlybWF0
aW9uIQpNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
