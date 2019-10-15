Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B61D71D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 11:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZXSiMKbh4X1KcJxDrCTNlfU8V+vvQDVSsSbtswT8mc=; b=c9sg0n7krr7D6q
	bww65Qxa3GQ10/JaH+OkqUg+Mm+Zi3wGhZRyw1O3L7JrkSbEUKTLosgBhruCElqRHczXEYkek4tAq
	BRqph3umzWl/dLIU4j8jimGVEFoyh5WpmOrkMoTdzv/rz+oLXCh1oNibjcBNg3qT0g/9crrJv1kG0
	ZOGaU60wPIvPGTMWu0CNTmG3wqzE3N960xOkP7ho3eX/krZZJUh5E5ovM4j0PsBWiu7voTa80b7JW
	Xi26VwdWUp+f71XEYlxw2Mg11KwXzn4gH4zyGHt9JPSRNY5vce/Wmdqfk8I87n5tYKvwto0a8y3qt
	okuhWDUFOZoQx02adUBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKIor-0003ZB-DD; Tue, 15 Oct 2019 09:08:41 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKIoV-0003PL-Ug
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 09:08:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PE8+nIoxzD1zQdezsHIaVtBqecbIPWzv31qj99+GMFI=; b=rHXUMkGeY1/C+REceyjWg+4Rm
 01qjEdQ6LSV1hNiGadSYIGoQaUN97i2TAxt77SO9nWKaaBDGqACYgzfg6kiZjoOfvDWHvfW5yh1aY
 KyV9+zesdK06b1T11yiw+ZF81rVkFrdjOfPZvHvwd0E4nEU2l9/M9Paq2TFNVojY4Q5osIbiipDKg
 C3reJlQ+75m6pOM9628sIktXXyQ0osAu8zYoVXCqAMPh8wkWAeNjueaE0aZLD6rBfiWQeCIBm9EFW
 OoTv9Gvz2PNSeTmiyuvOIpKzXV3yiPEFR1Hr4a6hsnvTB5AJ5c4w1JjHh6QDxGQYDHfmJwnmvDQMd
 E4DF8O0lA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:43732)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iKIoB-0003R7-Is; Tue, 15 Oct 2019 10:07:59 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iKIo8-0005B3-As; Tue, 15 Oct 2019 10:07:56 +0100
Date: Tue, 15 Oct 2019 10:07:56 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH 3/6] PCI: mobiveil: Add PCIe Gen4 EP driver for NXP
 Layerscape SoCs
Message-ID: <20191015090756.GS25745@shell.armlinux.org.uk>
References: <20190916021742.22844-1-xiaowei.bao@nxp.com>
 <20190916021742.22844-4-xiaowei.bao@nxp.com>
 <20190924163850.GY25745@shell.armlinux.org.uk>
 <AM5PR04MB32991D0D69769CE29E0F8DAEF5930@AM5PR04MB3299.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR04MB32991D0D69769CE29E0F8DAEF5930@AM5PR04MB3299.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_020820_548956_4B505E24 
X-CRM114-Status: GOOD (  24.40  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "kishon@ti.com" <kishon@ti.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBPY3QgMTUsIDIwMTkgYXQgMDc6NDY6MTJBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3Jv
dGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogUnVzc2Vs
bCBLaW5nIC0gQVJNIExpbnV4IGFkbWluIDxsaW51eEBhcm1saW51eC5vcmcudWs+Cj4gPiBTZW50
OiAyMDE55bm0OeaciDI15pelIDA6MzkKPiA+IFRvOiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9A
bnhwLmNvbT4KPiA+IENjOiBaLnEuIEhvdSA8emhpcWlhbmcuaG91QG54cC5jb20+OyBiaGVsZ2Fh
c0Bnb29nbGUuY29tOwo+ID4gcm9iaCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJtLmNv
bTsgc2hhd25ndW9Aa2VybmVsLm9yZzsgTGVvIExpCj4gPiA8bGVveWFuZy5saUBueHAuY29tPjsg
a2lzaG9uQHRpLmNvbTsgbG9yZW56by5waWVyYWxpc2lAYXJtLmNvbTsgTS5oLiBMaWFuCj4gPiA8
bWluZ2h1YW4ubGlhbkBueHAuY29tPjsgYW5kcmV3Lm11cnJheUBhcm0uY29tOyBNaW5na2FpIEh1
Cj4gPiA8bWluZ2thaS5odUBueHAuY29tPjsgbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsKPiA+
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgZGV2aWNldHJlZUB2Z2VyLmtl
cm5lbC5vcmc7Cj4gPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCj4gPiBTdWJqZWN0OiBS
ZTogW1BBVENIIDMvNl0gUENJOiBtb2JpdmVpbDogQWRkIFBDSWUgR2VuNCBFUCBkcml2ZXIgZm9y
IE5YUAo+ID4gTGF5ZXJzY2FwZSBTb0NzCj4gPiAKPiA+IE9uIE1vbiwgU2VwIDE2LCAyMDE5IGF0
IDEwOjE3OjM5QU0gKzA4MDAsIFhpYW93ZWkgQmFvIHdyb3RlOgo+ID4gPiBUaGlzIFBDSWUgY29u
dHJvbGxlciBpcyBiYXNlZCBvbiB0aGUgTW9iaXZlaWwgR1BFWCBJUCwgaXQgd29yayBpbiBFUAo+
ID4gPiBtb2RlIGlmIHNlbGVjdCB0aGlzIGNvbmZpZyBvcHRlcmF0aW9uLgo+ID4gPgo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4KPiA+ID4gLS0t
Cj4gPiA+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAgMiArCj4gPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWlsL0tjb25maWcg
ICAgICAgICAgICB8ICAxNyArKy0KPiA+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZl
aWwvTWFrZWZpbGUgICAgICAgICAgIHwgICAxICsKPiA+ID4gIC4uLi9jb250cm9sbGVyL21vYml2
ZWlsL3BjaWUtbGF5ZXJzY2FwZS1nZW40LWVwLmMgIHwgMTU2Cj4gPiA+ICsrKysrKysrKysrKysr
KysrKysrKwo+ID4gPiAgNCBmaWxlcyBjaGFuZ2VkLCAxNzMgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkgIGNyZWF0ZSBtb2RlCj4gPiA+IDEwMDY0NCBkcml2ZXJzL3BjaS9jb250cm9sbGVy
L21vYml2ZWlsL3BjaWUtbGF5ZXJzY2FwZS1nZW40LWVwLmMKPiA+ID4KPiA+ID4gZGlmZiAtLWdp
dCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMgaW5kZXggYjk5NzA1Ni4uMDg1OGI1NCAxMDA2
NDQKPiA+ID4gLS0tIGEvTUFJTlRBSU5FUlMKPiA+ID4gKysrIGIvTUFJTlRBSU5FUlMKPiA+ID4g
QEAgLTEyMzYzLDExICsxMjM2MywxMyBAQCBGOgo+ID4gCWRyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjLypsYXllcnNjYXBlKgo+ID4gPgo+ID4gPiAgUENJIERSSVZFUiBGT1IgTlhQIExBWUVSU0NB
UEUgR0VONCBDT05UUk9MTEVSCj4gPiA+ICBNOglIb3UgWmhpcWlhbmcgPFpoaXFpYW5nLkhvdUBu
eHAuY29tPgo+ID4gPiArTToJWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+Cj4gPiA+
ICBMOglsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnCj4gPiA+ICBMOglsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gIFM6CU1haW50YWluZWQKPiA+ID4gIEY6CURvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvbGF5ZXJzY2FwZS1wY2llLWdlbjQudHh0
Cj4gPiA+ICBGOglkcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYmliZWlsL3BjaWUtbGF5ZXJzY2Fw
ZS1nZW40LmMKPiA+ID4gK0Y6CWRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNpZS1s
YXllcnNjYXBlLWdlbjQtZXAuYwo+ID4gPgo+ID4gPiAgUENJIERSSVZFUiBGT1IgR0VORVJJQyBP
RiBIT1NUUwo+ID4gPiAgTToJV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvS2NvbmZpZwo+ID4gPiBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvS2NvbmZpZwo+ID4gPiBpbmRleCAyMDU0
OTUwLi4wNjk2YjZlIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL21v
Yml2ZWlsL0tjb25maWcKPiA+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVp
bC9LY29uZmlnCj4gPiA+IEBAIC0yNywxMyArMjcsMjQgQEAgY29uZmlnIFBDSUVfTU9CSVZFSUxf
UExBVAo+ID4gPiAgCSAgZm9yIGFkZHJlc3MgdHJhbnNsYXRpb24gYW5kIGl0IGlzIGEgUENJZSBH
ZW40IElQLgo+ID4gPgo+ID4gPiAgY29uZmlnIFBDSUVfTEFZRVJTQ0FQRV9HRU40Cj4gPiA+IC0J
Ym9vbCAiRnJlZXNjYWxlIExheWVyc2NhcGUgUENJZSBHZW40IGNvbnRyb2xsZXIiCj4gPiA+ICsJ
Ym9vbCAiRnJlZXNjYWxlIExheWVyc2NwZSBQQ0llIEdlbjQgY29udHJvbGxlciBpbiBSQyBtb2Rl
Igo+ID4gPiAgCWRlcGVuZHMgb24gUENJCj4gPiA+ICAJZGVwZW5kcyBvbiBPRiAmJiAoQVJNNjQg
fHwgQVJDSF9MQVlFUlNDQVBFKQo+ID4gPiAgCWRlcGVuZHMgb24gUENJX01TSV9JUlFfRE9NQUlO
Cj4gPiA+ICAJc2VsZWN0IFBDSUVfTU9CSVZFSUxfSE9TVAo+ID4gPiAgCWhlbHAKPiA+ID4gIAkg
IFNheSBZIGhlcmUgaWYgeW91IHdhbnQgUENJZSBHZW40IGNvbnRyb2xsZXIgc3VwcG9ydCBvbgo+
ID4gPiAtCSAgTGF5ZXJzY2FwZSBTb0NzLiBUaGUgUENJZSBjb250cm9sbGVyIGNhbiB3b3JrIGlu
IFJDIG9yCj4gPiA+IC0JICBFUCBtb2RlIGFjY29yZGluZyB0byBSQ1dbSE9TVF9BR1RfUEVYXSBz
ZXR0aW5nLgo+ID4gPiArCSAgTGF5ZXJzY2FwZSBTb0NzLiBBbmQgdGhlIFBDSWUgY29udHJvbGxl
ciB3b3JrIGluIFJDIG1vZGUKPiA+ID4gKwkgIGJ5IHNldHRpbmcgdGhlIFJDV1tIT1NUX0FHVF9Q
RVhdIHRvIDAuCj4gPiA+ICsKPiA+ID4gK2NvbmZpZyBQQ0lFX0xBWUVSU0NBUEVfR0VONF9FUAo+
ID4gPiArCWJvb2wgIkZyZWVzY2FsZSBMYXllcnNjcGUgUENJZSBHZW40IGNvbnRyb2xsZXIgaW4g
RVAgbW9kZSIKPiA+ID4gKwlkZXBlbmRzIG9uIFBDSQo+ID4gPiArCWRlcGVuZHMgb24gT0YgJiYg
KEFSTTY0IHx8IEFSQ0hfTEFZRVJTQ0FQRSkKPiA+ID4gKwlkZXBlbmRzIG9uIFBDSV9FTkRQT0lO
VAo+ID4gPiArCXNlbGVjdCBQQ0lFX01PQklWRUlMX0VQCj4gPiA+ICsJaGVscAo+ID4gPiArCSAg
U2F5IFkgaGVyZSBpZiB5b3Ugd2FudCBQQ0llIEdlbjQgY29udHJvbGxlciBzdXBwb3J0IG9uCj4g
PiA+ICsJICBMYXllcnNjYXBlIFNvQ3MuIEFuZCB0aGUgUENJZSBjb250cm9sbGVyIHdvcmsgaW4g
RVAgbW9kZQo+ID4gPiArCSAgYnkgc2V0dGluZyB0aGUgUkNXW0hPU1RfQUdUX1BFWF0gdG8gMS4K
PiA+ID4gIGVuZG1lbnUKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
bW9iaXZlaWwvTWFrZWZpbGUKPiA+ID4gYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWls
L01ha2VmaWxlCj4gPiA+IGluZGV4IDY4NmQ0MWYuLjZmNTQ4NTYgMTAwNjQ0Cj4gPiA+IC0tLSBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvTWFrZWZpbGUKPiA+ID4gKysrIGIvZHJp
dmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9NYWtlZmlsZQo+ID4gPiBAQCAtNCwzICs0LDQg
QEAgb2JqLSQoQ09ORklHX1BDSUVfTU9CSVZFSUxfSE9TVCkgKz0KPiA+ID4gcGNpZS1tb2JpdmVp
bC1ob3N0Lm8KPiA+ID4gIG9iai0kKENPTkZJR19QQ0lFX01PQklWRUlMX0VQKSArPSBwY2llLW1v
Yml2ZWlsLWVwLm8KPiA+ID4gIG9iai0kKENPTkZJR19QQ0lFX01PQklWRUlMX1BMQVQpICs9IHBj
aWUtbW9iaXZlaWwtcGxhdC5vCj4gPiA+ICBvYmotJChDT05GSUdfUENJRV9MQVlFUlNDQVBFX0dF
TjQpICs9IHBjaWUtbGF5ZXJzY2FwZS1nZW40Lm8KPiA+ID4gK29iai0kKENPTkZJR19QQ0lFX0xB
WUVSU0NBUEVfR0VONF9FUCkgKz0KPiA+IHBjaWUtbGF5ZXJzY2FwZS1nZW40LWVwLm8KPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNpZS1sYXllcnNj
YXBlLWdlbjQtZXAuYwo+ID4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNp
ZS1sYXllcnNjYXBlLWdlbjQtZXAuYwo+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiBp
bmRleCAwMDAwMDAwLi43YmZlYzUxCj4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gKysrIGIvZHJp
dmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9wY2llLWxheWVyc2NhcGUtZ2VuNC1lcC5jCj4g
PiA+IEBAIC0wLDAgKzEsMTU2IEBACj4gPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMAo+ID4gPiArLyoKPiA+ID4gKyAqIFBDSWUgY29udHJvbGxlciBFUCBkcml2ZXIgZm9y
IEZyZWVzY2FsZSBMYXllcnNjYXBlIFNvQ3MKPiA+ID4gKyAqCj4gPiA+ICsgKiBDb3B5cmlnaHQg
KEMpIDIwMTkgTlhQIFNlbWljb25kdWN0b3IuCj4gPiA+ICsgKgo+ID4gPiArICogQXV0aG9yOiBY
aWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4gICovCj4gPiA+ICsKPiA+ID4gKyNpbmNs
dWRlIDxsaW51eC9rZXJuZWwuaD4KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9pbml0Lmg+Cj4gPiA+
ICsjaW5jbHVkZSA8bGludXgvb2ZfcGNpLmg+Cj4gPiA+ICsjaW5jbHVkZSA8bGludXgvb2ZfcGxh
dGZvcm0uaD4KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9vZl9hZGRyZXNzLmg+Cj4gPiA+ICsjaW5j
bHVkZSA8bGludXgvcGNpLmg+Cj4gPiA+ICsjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNl
Lmg+Cj4gPiA+ICsjaW5jbHVkZSA8bGludXgvcmVzb3VyY2UuaD4KPiA+ID4gKwo+ID4gPiArI2lu
Y2x1ZGUgInBjaWUtbW9iaXZlaWwuaCIKPiA+ID4gKwo+ID4gPiArI2RlZmluZSBQQ0lFX0xYMl9C
QVJfTlVNCTQKPiA+ID4gKwo+ID4gPiArI2RlZmluZSB0b19sc19wY2llX2c0X2VwKHgpCWRldl9n
ZXRfZHJ2ZGF0YSgoeCktPmRldikKPiA+ID4gKwo+ID4gPiArc3RydWN0IGxzX3BjaWVfZzRfZXAg
ewo+ID4gPiArCXN0cnVjdCBtb2JpdmVpbF9wY2llCQkqbXZfcGNpOwo+ID4gPiArfTsKPiA+ID4g
Kwo+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgbHNfcGNpZV9nNF9lcF9v
Zl9tYXRjaFtdID0gewo+ID4gPiArCXsgLmNvbXBhdGlibGUgPSAiZnNsLGx4MjE2MGEtcGNpZS1l
cCIsfSwKPiA+ID4gKwl7IH0sCj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICtzdGF0aWMgY29uc3Qg
c3RydWN0IHBjaV9lcGNfZmVhdHVyZXMgbHNfcGNpZV9nNF9lcGNfZmVhdHVyZXMgPSB7Cj4gPiA+
ICsJLmxpbmt1cF9ub3RpZmllciA9IGZhbHNlLAo+ID4gPiArCS5tc2lfY2FwYWJsZSA9IHRydWUs
Cj4gPiA+ICsJLm1zaXhfY2FwYWJsZSA9IHRydWUsCj4gPiA+ICsJLnJlc2VydmVkX2JhciA9ICgx
IDw8IEJBUl80KSB8ICgxIDw8IEJBUl81KSwKPiA+IAo+ID4gCQkJQklUKEJBUl80KSB8IEJJVChC
QVJfNSkgPwo+IAo+IEkgdGhpbmsgdXNlIC5yZXNlcnZlZF9iYXIgPSAoMSA8PCBCQVJfNCkgfCAo
MSA8PCBCQVJfNSksIGlzIGJldHRlciwgYmVjYXVzZSBCQVJfNCAKPiBpcyBub3QgYSBiaXQgb2Yg
cmVnaXN0ZXIuCgpXaHkgaXMgd2hldGhlciBpdCdzIGEgcmVnaXN0ZXIgb3Igbm90IHJlbGV2ZW50
PwoKLS0gClJNSydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2Rl
dmVsb3Blci9wYXRjaGVzLwpGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVy
YmlhOiBzeW5jIGF0IDEyLjFNYnBzIGRvd24gNjIya2JwcyB1cApBY2NvcmRpbmcgdG8gc3BlZWR0
ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBzIHVwCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
