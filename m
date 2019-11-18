Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29921100BFA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 20:05:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BID7VZwJr/NYBm2GAgx72Tq4Jk0YfUkOrD4WS12FhuA=; b=sJD8UNJ9S3HgTm
	GTTCuCnEyqRZ7foIrLF7w9z7Rvw5NzvuMqO44XteQ/oZXpDzgTP/VbSkGNK8qTEMcMJGH3bJF2CHF
	uhc2la3fQTxERhC80WbDA5cCqRcgYaZ9eQ1iNdUaPVep9g07YTTKGsETMzcds3xtiefHuDoTl8og7
	/C3Smx3FUt+rIDVbRHsbfPFooHTRB0fMOvfN4nYh2beg2hbG6zSn+PEXv2Jk1+cNEkykbv9Oo+44c
	j2Ifl1DZQSTR9fJHrq1hk7aE6DrgAn20U5NqMLiX9LYlzzFzy/08VkrC1FknwU6AoF6Rsf71EXD0h
	VSCsD0jyKJhpvAcJDkfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWmL8-0007Cb-09; Mon, 18 Nov 2019 19:05:34 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWmKx-0007B8-6a; Mon, 18 Nov 2019 19:05:25 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iWmKl-000530-T0; Mon, 18 Nov 2019 20:05:12 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from dell2.five-lan.de (p508F31A5.dip0.t-ipconnect.de
 [80.143.49.165]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 xAIJ59Ku008128
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Mon, 18 Nov 2019 20:05:10 +0100
Subject: Re: arm64: dts: rockchip: Disable HS400 for mmc on rk3399-roc-pc
To: Doug Anderson <dianders@chromium.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
References: <20190301153348.29870-1-christoph.muellner@theobroma-systems.com>
 <2766673.iMURPl8gB5@phil>
 <69472c06-8b21-c3d8-acad-1a0a292c0fa2@fivetechno.de>
 <3460135.SDF8zhHPq4@diego>
 <CAD=FV=VnjyQJpRcW6P1f4+ZrSOzAe2Cnoej=it4aCz+F_ozukw@mail.gmail.com>
From: Markus Reichl <m.reichl@fivetechno.de>
Message-ID: <2db7a63f-a091-db8d-3414-cac289011878@fivetechno.de>
Date: Mon, 18 Nov 2019 20:05:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAD=FV=VnjyQJpRcW6P1f4+ZrSOzAe2Cnoej=it4aCz+F_ozukw@mail.gmail.com>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1574103923;
 5eb49a01; 
X-HE-SMSGID: 1iWmKl-000530-T0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_110523_387395_7928BD4F 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Brian Norris <briannorris@chromium.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Vicente Bergas <vicencb@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tony Xie <tony.xie@rock-chips.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Randy Li <ayaka@soulik.info>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRG91ZywKCkFtIDE4LjExLjE5IHVtIDE3OjA4IHNjaHJpZWIgRG91ZyBBbmRlcnNvbjoKPiBI
aSwKPiAKPiAKPiBPbiBGcmksIE5vdiAxNSwgMjAxOSBhdCAzOjE5IEFNIEhlaWtvIFN0w7xibmVy
IDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Pgo+PiBIaSBNYXJrdXMsCj4+Cj4+IEFtIEZyZWl0
YWcsIDE1LiBOb3ZlbWJlciAyMDE5LCAxMTozNzo1OCBDRVQgc2NocmllYiBNYXJrdXMgUmVpY2hs
Ogo+PiA+IEFtIDE0LjExLjE5IHVtIDE0OjEwIHNjaHJpZWIgSGVpa28gU3R1ZWJuZXI6Cj4+ID4g
PiAkc3ViamVjdCBpcyBtaXNzaW5nIHRoZSBbUEFUQ0hdIHByZWZpeAo+PiA+IHdpbGwgZml4Lgo+
Pgo+PiBubyBuZWVkIHRvIHJlc2VuZCBqdXN0IGZvciB0aGlzIC4uLiBqdXN0IHRvIGtlZXAgaW4g
bWluZCBmb3IgZnV0dXJlIHBhdGNoZXMgOy0pCj4+Cj4+Cj4+ID4gPiBBbSBNb250YWcsIDExLiBO
b3ZlbWJlciAyMDE5LCAxMDo1MTowNCBDRVQgc2NocmllYiBNYXJrdXMgUmVpY2hsOgo+PiA+ID4+
IFdvcmtpbmcgd2l0aCByb290ZnMgb24gdHdvIDEyOEdCIG1tY3Mgb24gcmszMzk5LXJvYy1wYy4K
Pj4gPiA+Pgo+PiA+ID4+IE9uZSAobW1jIG5hbWUgMTI4RzcyLCBvbmUgc2NyZXcgaG9sZSkgd29y
a3MgZmluZSBpbiBIUzQwMCBtb2RlLgo+PiA+ID4+IE90aGVyIChtbWMgbmFtZSBESk5CNFIsIGZp
cmVmbHkgb24gcGNiLCB0d28gc2NyZXcgaG9sZXMpIGdldHMgbG90cyBvZgo+PiA+ID4+IG1tYzE6
ICJydW5uaW5nIENRRSByZWNvdmVyeSIsIGV2ZW4gaGFuZ3Mgd2l0aCBkYW1hZ2VkIGZzLAo+PiA+
ID4+IHdoZW4gcnVubmluZyB1bmRlciBoZWF2eSBsb2FkLCBlLmcuIGNvbXBpbGluZyBrZXJuZWwu
Cj4+ID4gPj4gQm90aCBydW4gZmluZSB3aXRoIEhTMjAwLgo+PiA+ID4+Cj4+ID4gPj4gRGlzYWJs
aW5nIENRIHdpdGggcGF0Y2ggbW1jOiBjb3JlOiBBZGQgTU1DIENvbW1hbmQgUXVldWUgU3VwcG9y
dCBrZXJuZWwgcGFyYW1ldGVyIFswXSBkaWQgbm90IGhlbHAuCj4+ID4gPj4gWzBdIGh0dHBzOi8v
Z2l0bGFiLmNvbS9heXVmYW4tcmVwb3Mvcm9jazY0L2xpbnV4LW1haW5saW5lLWtlcm5lbC9jb21t
aXQvNTRlMjY0MTU0Yjg3ZGZlMzJhODM1OWIyNzI2ZTJkNTYxMWFkYmFmMwo+PiA+ID4KPj4gPiA+
IEknbSBob3BpbmcgZm9yIHNvbWUgaW5wdXQgZnJvbSBvdGhlciBwZW9wbGUgaW4gQ2MgYnV0IHlv
dXIgbWFpbCBoZWFkZXJzCj4+ID4gPiBhbHNvIHJlZmVyZW5jZWQgdGhlIGRyaXZlLWltcGVuZGFu
Y2Ugc2VyaWVzIGZyb20gQ2hyaXN0b3BoIFswXSwgd2hpY2gKPj4gPiA+IGl0IHNlZW1zIHdlIG5l
ZWQgdG8gcG9rZSB0aGUgcGh5IG1haW50YWluZXIgYWdhaW4uCj4+ID4gPgo+PiA+ID4gRGlkIHlv
dSBjaGVjayBpZiBjaGFuZ2luZyB0aGUgaW1wZWRhbmNlIGhlbHBlZCAobGlrZSB0aGUgc2lnbmFs
IGRhbXBlbmluZwo+PiA+ID4gUGhpbGlwcCBkZXNjcmliZWQgaW4gb25lIG9mIHRoZSByZXBsaWVz
IHRoZXJlKS4KPj4gPgo+PiA+IGNoZWNrZWQgd2l0aAo+PiA+Cj4+ID4gJmVtbWNfcGh5IHsKPj4g
PiArICAgICAgIGRyaXZlLWltcGVkYW5jZS1vaG0gPSA8MzM+Owo+PiA+Cj4+ID4gZ2l2ZXMgbm8g
aW1wcm92ZW1lbnQ6Cj4+Cj4+IFRoYXQgaXMgc2FkIC4uLiBJIGd1ZXNzIHdlIHJlYWxseSBzaG91
bGQgZGlzYWJsZSBoczQwMCB0aGVuIC4uLgo+PiB0aGF0IG1heSBnaXZlIG90aGVycyBtb3JlIGlu
Y2VudGl2ZSB0byBkaXZlIGRlZXBlciA7LSkKPiAKPiBKdXN0IG91dCBvZiBjdXJpb3NpdHksIGlz
IHRoZSBwcm9ibGVtIHdpdGggdGhlIHN0cm9iZSBsaW5lLCBvciB3aXRoCj4gaHM0MDA/ICBIYXZl
IHlvdSB0cmllZCB1c2luZyB0aGUgc29sdXRpb24gZnJvbSAicmszMzk5LWdydS5kdHNpIj8KPiBO
YW1lbHk6Cj4gCj4gICAgICAgICAvKgo+ICAgICAgICAgICogU2lnbmFsIGludGVncml0eSBpc24n
dCBncmVhdCBhdCAyMDAgTUh6IGFuZCAxNTAgTUh6IChERFIpIGdpdmVzIHRoZQo+ICAgICAgICAg
ICogc2FtZSAob3IgbmVhcmx5IHRoZSBzYW1lKSBwZXJmb3JtYW5jZSBmb3IgYWxsIGVNTUMgdGhh
dCBhcmUgaW50ZW5kZWQKPiAgICAgICAgICAqIHRvIGJlIHVzZWQuCj4gICAgICAgICAgKi8KPiAg
ICAgICAgIGFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDE1MDAwMDAwMD47Cj4gCj4gSUlSQyBoczQw
MCBvbiByazMzOTkgd2FzIGEgYml0IGlmZnkgYnV0IHJ1bm5pbmcgYXQgMTUwIE1IeiBtYWRlIGl0
Cj4gbXVjaCBtb3JlIHJlbGlhYmxlIGFuZCBzdGlsbCBnYXZlIHlvdSAzMDAgTUIvcyB0cmFuc2Zl
ciByYXRlIChzbyBtdWNoCj4gYmV0dGVyIHRoYW4gaHMyMDApLiAgSW4gcmVhbGl0eSBtYW55IGVN
TUMgY2hpcHMgY2FuJ3QgZG8gPiAzMDAgTUIvcwo+IGFueXdheS4KPiAKSSB0cmllZCAxNTAwMDAw
MDAgYW5kIDEwMDAwMDAwMCwgYnV0IGl0IGRpZCBub3QgaGVscC4KCkdydcOfLAotLQpNYXJrdXMK
Cj4gLURvdWcKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
