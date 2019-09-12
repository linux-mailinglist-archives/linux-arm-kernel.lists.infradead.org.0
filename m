Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D961BB0F75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 15:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZCEs9i0zuZ5jo0KvVJdyNGosp04T0hZ1BQdu6cXWVE=; b=aARSAEsSkCdXPi
	7IG40tMWvlXsJnjMpDkkVJWhQ1CQeoA6FUw4HdgDBThoPmAUMwHnaCEJ+1jyQLxE5f8d1RY6Xfcso
	+KKeKMdZu/DCfpiuvfTHiVDehI5PapRlsNubho1nNPD+YMI2Lx7Ef3s9Wu+KbfubQ8sWxS/DTIEsn
	yunOn3zUgnI8QO3gUcIFg1U4jA7kRLsieXZoRvOsQMWsxAZcDQBLbn9zqZwKk7bi7xXdG+D9aWw/7
	XWkywMDrsSuLUVtvmA6/G/zSTFJvP1cabQ57p1pX1uyXH/vYSzIoRXfMNNlYkJ8CXfSDH8svFyPul
	rfXsObgbP2wJxLteDByg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Ojs-0003sL-LD; Thu, 12 Sep 2019 13:02:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Ojc-0003rM-3d
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 13:02:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA45928;
 Thu, 12 Sep 2019 06:02:01 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 09BF13F71F;
 Thu, 12 Sep 2019 06:02:01 -0700 (PDT)
Date: Thu, 12 Sep 2019 14:01:59 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v3 10/11] arm64: dts: layerscape: Add PCIe EP node for
 ls1088a
Message-ID: <20190912130159.GF9720@e119886-lin.cambridge.arm.com>
References: <20190902031716.43195-1-xiaowei.bao@nxp.com>
 <20190902031716.43195-11-xiaowei.bao@nxp.com>
 <20190902130628.GL9720@e119886-lin.cambridge.arm.com>
 <AM5PR04MB329926C6F424C4BE1CE9B787F5B90@AM5PR04MB3299.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR04MB329926C6F424C4BE1CE9B787F5B90@AM5PR04MB3299.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_060204_327300_BFACFF85 
X-CRM114-Status: GOOD (  18.86  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 Leo Li <leoyang.li@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBTZXAgMDMsIDIwMTkgYXQgMDI6MDE6MzJBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3Jv
dGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQW5kcmV3
IE11cnJheSA8YW5kcmV3Lm11cnJheUBhcm0uY29tPgo+ID4gU2VudDogMjAxOeW5tDnmnIgy5pel
IDIxOjA2Cj4gPiBUbzogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+Cj4gPiBDYzog
cm9iaCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNvbTsgc2hhd25ndW9Aa2VybmVs
Lm9yZzsgTGVvCj4gPiBMaSA8bGVveWFuZy5saUBueHAuY29tPjsga2lzaG9uQHRpLmNvbTsgbG9y
ZW56by5waWVyYWxpc2lAYXJtLmNvbTsgTS5oLgo+ID4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAu
Y29tPjsgTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsgUm95Cj4gPiBaYW5nIDxyb3ku
emFuZ0BueHAuY29tPjsgamluZ29vaGFuMUBnbWFpbC5jb207Cj4gPiBndXN0YXZvLnBpbWVudGVs
QHN5bm9wc3lzLmNvbTsgbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsKPiA+IGRldmljZXRyZWVA
dmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOwo+ID4gbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eHBwYy1kZXZAbGlzdHMub3psYWJz
Lm9yZzsKPiA+IGFybmRAYXJuZGIuZGU7IGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnOyBaLnEu
IEhvdQo+ID4gPHpoaXFpYW5nLmhvdUBueHAuY29tPgo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCB2
MyAxMC8xMV0gYXJtNjQ6IGR0czogbGF5ZXJzY2FwZTogQWRkIFBDSWUgRVAgbm9kZSBmb3IKPiA+
IGxzMTA4OGEKPiA+IAo+ID4gT24gTW9uLCBTZXAgMDIsIDIwMTkgYXQgMTE6MTc6MTVBTSArMDgw
MCwgWGlhb3dlaSBCYW8gd3JvdGU6Cj4gPiA+IEFkZCBQQ0llIEVQIG5vZGUgZm9yIGxzMTA4OGEg
dG8gc3VwcG9ydCBFUCBtb2RlLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBYaWFvd2VpIEJh
byA8eGlhb3dlaS5iYW9AbnhwLmNvbT4KPiA+ID4gLS0tCj4gPiA+IHYyOgo+ID4gPiAgLSBSZW1v
dmUgdGhlIHBmLW9mZnNldCBwcm9wYXJ0eS4KPiA+ID4gdjM6Cj4gPiA+ICAtIE5vIGNoYW5nZS4K
PiA+ID4KPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwODhhLmR0
c2kgfCAzMQo+ID4gKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAzMSBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDg4YS5kdHNpCj4gPiBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwODhhLmR0c2kKPiA+ID4gaW5kZXggYzY3NmQwNy4uZGEy
NDZhYiAxMDA2NDQKPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNs
LWxzMTA4OGEuZHRzaQo+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9m
c2wtbHMxMDg4YS5kdHNpCj4gPiA+IEBAIC00ODMsNiArNDgzLDE3IEBACj4gPiA+ICAJCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOwo+ID4gPiAgCQl9Owo+ID4gPgo+ID4gPiArCQlwY2llX2VwQDM0MDAw
MDAgewo+ID4gPiArCQkJY29tcGF0aWJsZSA9ICJmc2wsbHMxMDg4YS1wY2llLWVwIiwiZnNsLGxz
LXBjaWUtZXAiOwo+ID4gCj4gPiBIZXJlIHlvdSBzcGVjaWZ5IGEgZmFsbGJhY2sgImZzbCxscy1w
Y2llLWVwIiB0aGF0IGlzIHJlbW92ZWQgYnkgdGhpcyBzZXJpZXMuCj4gPiAKPiA+IEJlc2lkZXMg
dGhhdCwgdGhpcyBsb29rcyBPSy4KPiAKPiBBcyBleHBsYWluZWQsIHRoZSAiZnNsLGxzLXBjaWUt
ZXAiIGlzIG5lZWRlZCwgZHVlIHRvIHRoZSB1LWJvb3Qgd2lsbCBmaXh1cCB0aGUgc3RhdHVzCj4g
cHJvcGVydHkgYmFzZSBvbiB0aGlzIGNvbXBhdGlibGUsIEkgdGhpbmsgd2UgcmVzZXJ2ZSB0aGlz
IGNvbXBhdGlibGUgaXMgaGVscGZ1bGx5LAo+IGlmIGRlbGF0ZSB0aGlzIGNvbXBhdGlibGUsIEkg
aGF2ZSB0byBtb2RpZnkgdGhlIGNvZGUgb2YgYm9vdGxvYWRlci4KCkkgYXNzdW1lIHlvdSBtZWFu
IHRoYXQgdS1ib290IGZpeGVzIHVwICJmc2wsbHMtcGNpZS1lcCIgKm9ubHkqIGZvciBsczEwNDZh
CmRldmljZXM/CgpUaGFua3MsCgpBbmRyZXcgTXVycmF5Cgo+IAo+IFRoYW5rcyAKPiBYSWFvd2Vp
Cj4gCj4gPiAKPiA+IFRoYW5rcywKPiA+IAo+ID4gQW5kcmV3IE11cnJheQo+ID4gCj4gPiA+ICsJ
CQlyZWcgPSA8MHgwMCAweDAzNDAwMDAwIDB4MCAweDAwMTAwMDAwCj4gPiA+ICsJCQkgICAgICAg
MHgyMCAweDAwMDAwMDAwIDB4OCAweDAwMDAwMDAwPjsKPiA+ID4gKwkJCXJlZy1uYW1lcyA9ICJy
ZWdzIiwgImFkZHJfc3BhY2UiOwo+ID4gPiArCQkJbnVtLWliLXdpbmRvd3MgPSA8MjQ+Owo+ID4g
PiArCQkJbnVtLW9iLXdpbmRvd3MgPSA8MTI4PjsKPiA+ID4gKwkJCW1heC1mdW5jdGlvbnMgPSAv
Yml0cy8gOCA8Mj47Cj4gPiA+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gPiArCQl9Owo+
ID4gPiArCj4gPiA+ICAJCXBjaWVAMzUwMDAwMCB7Cj4gPiA+ICAJCQljb21wYXRpYmxlID0gImZz
bCxsczEwODhhLXBjaWUiOwo+ID4gPiAgCQkJcmVnID0gPDB4MDAgMHgwMzUwMDAwMCAweDAgMHgw
MDEwMDAwMCAgIC8qIGNvbnRyb2xsZXIKPiA+IHJlZ2lzdGVycyAqLwo+ID4gPiBAQCAtNTA4LDYg
KzUxOSwxNiBAQAo+ID4gPiAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ID4gIAkJfTsKPiA+
ID4KPiA+ID4gKwkJcGNpZV9lcEAzNTAwMDAwIHsKPiA+ID4gKwkJCWNvbXBhdGlibGUgPSAiZnNs
LGxzMTA4OGEtcGNpZS1lcCIsImZzbCxscy1wY2llLWVwIjsKPiA+ID4gKwkJCXJlZyA9IDwweDAw
IDB4MDM1MDAwMDAgMHgwIDB4MDAxMDAwMDAKPiA+ID4gKwkJCSAgICAgICAweDI4IDB4MDAwMDAw
MDAgMHg4IDB4MDAwMDAwMDA+Owo+ID4gPiArCQkJcmVnLW5hbWVzID0gInJlZ3MiLCAiYWRkcl9z
cGFjZSI7Cj4gPiA+ICsJCQludW0taWItd2luZG93cyA9IDw2PjsKPiA+ID4gKwkJCW51bS1vYi13
aW5kb3dzID0gPDg+Owo+ID4gPiArCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ID4gKwkJfTsK
PiA+ID4gKwo+ID4gPiAgCQlwY2llQDM2MDAwMDAgewo+ID4gPiAgCQkJY29tcGF0aWJsZSA9ICJm
c2wsbHMxMDg4YS1wY2llIjsKPiA+ID4gIAkJCXJlZyA9IDwweDAwIDB4MDM2MDAwMDAgMHgwIDB4
MDAxMDAwMDAgICAvKiBjb250cm9sbGVyCj4gPiByZWdpc3RlcnMgKi8KPiA+ID4gQEAgLTUzMyw2
ICs1NTQsMTYgQEAKPiA+ID4gIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiA+ICAJCX07Cj4g
PiA+Cj4gPiA+ICsJCXBjaWVfZXBAMzYwMDAwMCB7Cj4gPiA+ICsJCQljb21wYXRpYmxlID0gImZz
bCxsczEwODhhLXBjaWUtZXAiLCJmc2wsbHMtcGNpZS1lcCI7Cj4gPiA+ICsJCQlyZWcgPSA8MHgw
MCAweDAzNjAwMDAwIDB4MCAweDAwMTAwMDAwCj4gPiA+ICsJCQkgICAgICAgMHgzMCAweDAwMDAw
MDAwIDB4OCAweDAwMDAwMDAwPjsKPiA+ID4gKwkJCXJlZy1uYW1lcyA9ICJyZWdzIiwgImFkZHJf
c3BhY2UiOwo+ID4gPiArCQkJbnVtLWliLXdpbmRvd3MgPSA8Nj47Cj4gPiA+ICsJCQludW0tb2It
d2luZG93cyA9IDw4PjsKPiA+ID4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiA+ICsJCX07
Cj4gPiA+ICsKPiA+ID4gIAkJc21tdTogaW9tbXVANTAwMDAwMCB7Cj4gPiA+ICAJCQljb21wYXRp
YmxlID0gImFybSxtbXUtNTAwIjsKPiA+ID4gIAkJCXJlZyA9IDwwIDB4NTAwMDAwMCAwIDB4ODAw
MDAwPjsKPiA+ID4gLS0KPiA+ID4gMi45LjUKPiA+ID4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
