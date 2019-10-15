Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EC5D71FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 11:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzzjfOHixpxjn4cYPk14LeJkZTchtNlusxhAxrmIPLE=; b=sLMtr/IgEiZ1id
	2kxBLtHKNmO2nvY+u0j+Ntosj8pLIwuZRn5I3nhLMCd9wgWVhCFyvm/6177DdclQwzKfBH1jxMnBg
	9LMyjHf2Z8xKYCvr2mUYOP5eYEKLyUBMHmpeu5jroeoENHCUxDwJILB8oVDT4sWk3aWMA9wgO4MOj
	GVVBHnkex90Tucwxog++BlC7i1cgchLsAfkqylmMy0cHCsjPiJmAPzJauQqZEZ/lRyQ3cdBXWE/Z5
	tSiG+dlrxPKGma4YtcTF9nEmHgjnx5JylLW7GZZayEu796O5jcDiNasus9NuYLE/MBQ6pOg4cfSXJ
	U5dI0chp5LBY+2jmb4yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKIzD-0008LV-8K; Tue, 15 Oct 2019 09:19:23 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKIz3-0008KO-J1
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 09:19:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YIaOBNWN2tpG+RpI2kNEP0VXguIxNOWwrYW3F7DeUP8=; b=OMkoqyY0vapTbGrlufm/6ayOY
 XSkrMEjXZT8h0b4GmtbZLBbtUTelQxluoeVreLNcdFjQ3+ceI/7EH9H4HSWoODT26X1rOm6DdWmFp
 oRnlqVuSs8zXTw94Yq1mm+GHmz1UGUrzmVH7IYyRo+jgQT3B8i/m8iH0trQB3tn7gCI+TPdIEYzZK
 elCvZorMO4eEfAhIZyeqFJDIvtEYWDvAKk4HK89yLFp02wurTrDCuj49xyFohoimuHy8BN0cGeEjN
 q95FWUIV9VfODFWWmp6L1Jy/QOmc+As8DcvxIfzkA17ySv7MKXHXiP+2hKUSt9WrkKF68LPUP2e+X
 4tzF+1+5w==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:43734)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iKIyh-0003VI-5O; Tue, 15 Oct 2019 10:18:51 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iKIyf-0005C9-SU; Tue, 15 Oct 2019 10:18:49 +0100
Date: Tue, 15 Oct 2019 10:18:49 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH 3/6] PCI: mobiveil: Add PCIe Gen4 EP driver for NXP
 Layerscape SoCs
Message-ID: <20191015091849.GT25745@shell.armlinux.org.uk>
References: <20190916021742.22844-1-xiaowei.bao@nxp.com>
 <20190916021742.22844-4-xiaowei.bao@nxp.com>
 <20190924163850.GY25745@shell.armlinux.org.uk>
 <AM5PR04MB32991D0D69769CE29E0F8DAEF5930@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <20191015090756.GS25745@shell.armlinux.org.uk>
 <AM5PR04MB3299919E5C4C8A764DB3A656F5930@AM5PR04MB3299.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR04MB3299919E5C4C8A764DB3A656F5930@AM5PR04MB3299.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_021913_972488_82CB01F7 
X-CRM114-Status: GOOD (  27.23  )
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

T24gVHVlLCBPY3QgMTUsIDIwMTkgYXQgMDk6MTQ6MDBBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3Jv
dGU6Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogUnVzc2VsbCBLaW5n
IC0gQVJNIExpbnV4IGFkbWluIDxsaW51eEBhcm1saW51eC5vcmcudWs+Cj4gPiBTZW50OiAyMDE5
5bm0MTDmnIgxNeaXpSAxNzowOAo+ID4gVG86IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAu
Y29tPgo+ID4gQ2M6IFoucS4gSG91IDx6aGlxaWFuZy5ob3VAbnhwLmNvbT47IGJoZWxnYWFzQGdv
b2dsZS5jb207Cj4gPiByb2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOyBz
aGF3bmd1b0BrZXJuZWwub3JnOyBMZW8gTGkKPiA+IDxsZW95YW5nLmxpQG54cC5jb20+OyBraXNo
b25AdGkuY29tOyBsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tOyBNLmguIExpYW4KPiA+IDxtaW5n
aHVhbi5saWFuQG54cC5jb20+OyBhbmRyZXcubXVycmF5QGFybS5jb207IE1pbmdrYWkgSHUKPiA+
IDxtaW5na2FpLmh1QG54cC5jb20+OyBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOwo+ID4gbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVs
Lm9yZzsKPiA+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPiA+IFN1YmplY3Q6IFJlOiBb
UEFUQ0ggMy82XSBQQ0k6IG1vYml2ZWlsOiBBZGQgUENJZSBHZW40IEVQIGRyaXZlciBmb3IgTlhQ
Cj4gPiBMYXllcnNjYXBlIFNvQ3MKPiA+IAo+ID4gT24gVHVlLCBPY3QgMTUsIDIwMTkgYXQgMDc6
NDY6MTJBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3JvdGU6Cj4gPiA+Cj4gPiA+Cj4gPiA+ID4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+ID4gPiBGcm9tOiBSdXNzZWxsIEtpbmcgLSBBUk0g
TGludXggYWRtaW4gPGxpbnV4QGFybWxpbnV4Lm9yZy51az4KPiA+ID4gPiBTZW50OiAyMDE55bm0
OeaciDI15pelIDA6MzkKPiA+ID4gPiBUbzogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5j
b20+Cj4gPiA+ID4gQ2M6IFoucS4gSG91IDx6aGlxaWFuZy5ob3VAbnhwLmNvbT47IGJoZWxnYWFz
QGdvb2dsZS5jb207Cj4gPiA+ID4gcm9iaCtkdEBrZXJuZWwub3JnOyBtYXJrLnJ1dGxhbmRAYXJt
LmNvbTsgc2hhd25ndW9Aa2VybmVsLm9yZzsgTGVvCj4gPiA+ID4gcm9iaCtMaQo+ID4gPiA+IDxs
ZW95YW5nLmxpQG54cC5jb20+OyBraXNob25AdGkuY29tOyBsb3JlbnpvLnBpZXJhbGlzaUBhcm0u
Y29tOyBNLmguCj4gPiA+ID4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsgYW5kcmV3Lm11
cnJheUBhcm0uY29tOyBNaW5na2FpIEh1Cj4gPiA+ID4gPG1pbmdrYWkuaHVAbnhwLmNvbT47IGxp
bnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7Cj4gPiA+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsKPiA+ID4gPiBsaW51eC1r
ZXJuZWxAdmdlci5rZXJuZWwub3JnCj4gPiA+ID4gU3ViamVjdDogUmU6IFtQQVRDSCAzLzZdIFBD
STogbW9iaXZlaWw6IEFkZCBQQ0llIEdlbjQgRVAgZHJpdmVyIGZvcgo+ID4gPiA+IE5YUCBMYXll
cnNjYXBlIFNvQ3MKPiA+ID4gPgo+ID4gPiA+IE9uIE1vbiwgU2VwIDE2LCAyMDE5IGF0IDEwOjE3
OjM5QU0gKzA4MDAsIFhpYW93ZWkgQmFvIHdyb3RlOgo+ID4gPiA+ID4gVGhpcyBQQ0llIGNvbnRy
b2xsZXIgaXMgYmFzZWQgb24gdGhlIE1vYml2ZWlsIEdQRVggSVAsIGl0IHdvcmsgaW4KPiA+ID4g
PiA+IEVQIG1vZGUgaWYgc2VsZWN0IHRoaXMgY29uZmlnIG9wdGVyYXRpb24uCj4gPiA+ID4gPgo+
ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+
Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICAgMgo+ID4gKwo+ID4gPiA+ID4gIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvbW9iaXZlaWwvS2NvbmZpZyAgICAgICAgICAgIHwgIDE3ICsrLQo+ID4gPiA+ID4g
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvTWFrZWZpbGUgICAgICAgICAgIHwgICAx
ICsKPiA+ID4gPiA+ICAuLi4vY29udHJvbGxlci9tb2JpdmVpbC9wY2llLWxheWVyc2NhcGUtZ2Vu
NC1lcC5jICB8IDE1Ngo+ID4gPiA+ID4gKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gPiAg
NCBmaWxlcyBjaGFuZ2VkLCAxNzMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkgIGNyZWF0
ZSBtb2RlCj4gPiA+ID4gPiAxMDA2NDQgZHJpdmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9w
Y2llLWxheWVyc2NhcGUtZ2VuNC1lcC5jCj4gPiA+ID4gPgo+ID4gPiA+ID4gZGlmZiAtLWdpdCBh
L01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMgaW5kZXggYjk5NzA1Ni4uMDg1OGI1NAo+ID4gPiA+
ID4gMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9NQUlOVEFJTkVSUwo+ID4gPiA+ID4gKysrIGIvTUFJ
TlRBSU5FUlMKPiA+ID4gPiA+IEBAIC0xMjM2MywxMSArMTIzNjMsMTMgQEAgRjoKPiA+ID4gPiAJ
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvKmxheWVyc2NhcGUqCj4gPiA+ID4gPgo+ID4gPiA+
ID4gIFBDSSBEUklWRVIgRk9SIE5YUCBMQVlFUlNDQVBFIEdFTjQgQ09OVFJPTExFUgo+ID4gPiA+
ID4gIE06CUhvdSBaaGlxaWFuZyA8WmhpcWlhbmcuSG91QG54cC5jb20+Cj4gPiA+ID4gPiArTToJ
WGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+Cj4gPiA+ID4gPiAgTDoJbGludXgtcGNp
QHZnZXIua2VybmVsLm9yZwo+ID4gPiA+ID4gIEw6CWxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwo+ID4gPiA+ID4gIFM6CU1haW50YWluZWQKPiA+ID4gPiA+ICBGOglEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL2xheWVyc2NhcGUtcGNpZS1nZW40LnR4dAo+
ID4gPiA+ID4gIEY6CWRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaWJlaWwvcGNpZS1sYXllcnNj
YXBlLWdlbjQuYwo+ID4gPiA+ID4gK0Y6CWRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwv
cGNpZS1sYXllcnNjYXBlLWdlbjQtZXAuYwo+ID4gPiA+ID4KPiA+ID4gPiA+ICBQQ0kgRFJJVkVS
IEZPUiBHRU5FUklDIE9GIEhPU1RTCj4gPiA+ID4gPiAgTToJV2lsbCBEZWFjb24gPHdpbGxAa2Vy
bmVsLm9yZz4KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL21v
Yml2ZWlsL0tjb25maWcKPiA+ID4gPiA+IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVp
bC9LY29uZmlnCj4gPiA+ID4gPiBpbmRleCAyMDU0OTUwLi4wNjk2YjZlIDEwMDY0NAo+ID4gPiA+
ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9LY29uZmlnCj4gPiA+ID4g
PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWlsL0tjb25maWcKPiA+ID4gPiA+
IEBAIC0yNywxMyArMjcsMjQgQEAgY29uZmlnIFBDSUVfTU9CSVZFSUxfUExBVAo+ID4gPiA+ID4g
IAkgIGZvciBhZGRyZXNzIHRyYW5zbGF0aW9uIGFuZCBpdCBpcyBhIFBDSWUgR2VuNCBJUC4KPiA+
ID4gPiA+Cj4gPiA+ID4gPiAgY29uZmlnIFBDSUVfTEFZRVJTQ0FQRV9HRU40Cj4gPiA+ID4gPiAt
CWJvb2wgIkZyZWVzY2FsZSBMYXllcnNjYXBlIFBDSWUgR2VuNCBjb250cm9sbGVyIgo+ID4gPiA+
ID4gKwlib29sICJGcmVlc2NhbGUgTGF5ZXJzY3BlIFBDSWUgR2VuNCBjb250cm9sbGVyIGluIFJD
IG1vZGUiCj4gPiA+ID4gPiAgCWRlcGVuZHMgb24gUENJCj4gPiA+ID4gPiAgCWRlcGVuZHMgb24g
T0YgJiYgKEFSTTY0IHx8IEFSQ0hfTEFZRVJTQ0FQRSkKPiA+ID4gPiA+ICAJZGVwZW5kcyBvbiBQ
Q0lfTVNJX0lSUV9ET01BSU4KPiA+ID4gPiA+ICAJc2VsZWN0IFBDSUVfTU9CSVZFSUxfSE9TVAo+
ID4gPiA+ID4gIAloZWxwCj4gPiA+ID4gPiAgCSAgU2F5IFkgaGVyZSBpZiB5b3Ugd2FudCBQQ0ll
IEdlbjQgY29udHJvbGxlciBzdXBwb3J0IG9uCj4gPiA+ID4gPiAtCSAgTGF5ZXJzY2FwZSBTb0Nz
LiBUaGUgUENJZSBjb250cm9sbGVyIGNhbiB3b3JrIGluIFJDIG9yCj4gPiA+ID4gPiAtCSAgRVAg
bW9kZSBhY2NvcmRpbmcgdG8gUkNXW0hPU1RfQUdUX1BFWF0gc2V0dGluZy4KPiA+ID4gPiA+ICsJ
ICBMYXllcnNjYXBlIFNvQ3MuIEFuZCB0aGUgUENJZSBjb250cm9sbGVyIHdvcmsgaW4gUkMgbW9k
ZQo+ID4gPiA+ID4gKwkgIGJ5IHNldHRpbmcgdGhlIFJDV1tIT1NUX0FHVF9QRVhdIHRvIDAuCj4g
PiA+ID4gPiArCj4gPiA+ID4gPiArY29uZmlnIFBDSUVfTEFZRVJTQ0FQRV9HRU40X0VQCj4gPiA+
ID4gPiArCWJvb2wgIkZyZWVzY2FsZSBMYXllcnNjcGUgUENJZSBHZW40IGNvbnRyb2xsZXIgaW4g
RVAgbW9kZSIKPiA+ID4gPiA+ICsJZGVwZW5kcyBvbiBQQ0kKPiA+ID4gPiA+ICsJZGVwZW5kcyBv
biBPRiAmJiAoQVJNNjQgfHwgQVJDSF9MQVlFUlNDQVBFKQo+ID4gPiA+ID4gKwlkZXBlbmRzIG9u
IFBDSV9FTkRQT0lOVAo+ID4gPiA+ID4gKwlzZWxlY3QgUENJRV9NT0JJVkVJTF9FUAo+ID4gPiA+
ID4gKwloZWxwCj4gPiA+ID4gPiArCSAgU2F5IFkgaGVyZSBpZiB5b3Ugd2FudCBQQ0llIEdlbjQg
Y29udHJvbGxlciBzdXBwb3J0IG9uCj4gPiA+ID4gPiArCSAgTGF5ZXJzY2FwZSBTb0NzLiBBbmQg
dGhlIFBDSWUgY29udHJvbGxlciB3b3JrIGluIEVQIG1vZGUKPiA+ID4gPiA+ICsJICBieSBzZXR0
aW5nIHRoZSBSQ1dbSE9TVF9BR1RfUEVYXSB0byAxLgo+ID4gPiA+ID4gIGVuZG1lbnUKPiA+ID4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWlsL01ha2VmaWxl
Cj4gPiA+ID4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvTWFrZWZpbGUKPiA+
ID4gPiA+IGluZGV4IDY4NmQ0MWYuLjZmNTQ4NTYgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWlsL01ha2VmaWxlCj4gPiA+ID4gPiArKysgYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL21vYml2ZWlsL01ha2VmaWxlCj4gPiA+ID4gPiBAQCAtNCwzICs0
LDQgQEAgb2JqLSQoQ09ORklHX1BDSUVfTU9CSVZFSUxfSE9TVCkgKz0KPiA+ID4gPiA+IHBjaWUt
bW9iaXZlaWwtaG9zdC5vCj4gPiA+ID4gPiAgb2JqLSQoQ09ORklHX1BDSUVfTU9CSVZFSUxfRVAp
ICs9IHBjaWUtbW9iaXZlaWwtZXAubwo+ID4gPiA+ID4gIG9iai0kKENPTkZJR19QQ0lFX01PQklW
RUlMX1BMQVQpICs9IHBjaWUtbW9iaXZlaWwtcGxhdC5vCj4gPiA+ID4gPiAgb2JqLSQoQ09ORklH
X1BDSUVfTEFZRVJTQ0FQRV9HRU40KSArPSBwY2llLWxheWVyc2NhcGUtZ2VuNC5vCj4gPiA+ID4g
PiArb2JqLSQoQ09ORklHX1BDSUVfTEFZRVJTQ0FQRV9HRU40X0VQKSArPQo+ID4gPiA+IHBjaWUt
bGF5ZXJzY2FwZS1nZW40LWVwLm8KPiA+ID4gPiA+IGRpZmYgLS1naXQKPiA+ID4gPiA+IGEvZHJp
dmVycy9wY2kvY29udHJvbGxlci9tb2JpdmVpbC9wY2llLWxheWVyc2NhcGUtZ2VuNC1lcC5jCj4g
PiA+ID4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNpZS1sYXllcnNjYXBl
LWdlbjQtZXAuYwo+ID4gPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4gPiA+IGluZGV4
IDAwMDAwMDAuLjdiZmVjNTEKPiA+ID4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gPiA+ICsrKyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvbW9iaXZlaWwvcGNpZS1sYXllcnNjYXBlLWdlbjQtZXAu
Ywo+ID4gPiA+ID4gQEAgLTAsMCArMSwxNTYgQEAKPiA+ID4gPiA+ICsvLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMAo+ID4gPiA+ID4gKy8qCj4gPiA+ID4gPiArICogUENJZSBjb250
cm9sbGVyIEVQIGRyaXZlciBmb3IgRnJlZXNjYWxlIExheWVyc2NhcGUgU29Dcwo+ID4gPiA+ID4g
KyAqCj4gPiA+ID4gPiArICogQ29weXJpZ2h0IChDKSAyMDE5IE5YUCBTZW1pY29uZHVjdG9yLgo+
ID4gPiA+ID4gKyAqCj4gPiA+ID4gPiArICogQXV0aG9yOiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5i
YW9AbnhwLmNvbT4gICovCj4gPiA+ID4gPiArCj4gPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2tl
cm5lbC5oPgo+ID4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9pbml0Lmg+Cj4gPiA+ID4gPiArI2lu
Y2x1ZGUgPGxpbnV4L29mX3BjaS5oPgo+ID4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9vZl9wbGF0
Zm9ybS5oPgo+ID4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9vZl9hZGRyZXNzLmg+Cj4gPiA+ID4g
PiArI2luY2x1ZGUgPGxpbnV4L3BjaS5oPgo+ID4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9wbGF0
Zm9ybV9kZXZpY2UuaD4gI2luY2x1ZGUgPGxpbnV4L3Jlc291cmNlLmg+Cj4gPiA+ID4gPiArCj4g
PiA+ID4gPiArI2luY2x1ZGUgInBjaWUtbW9iaXZlaWwuaCIKPiA+ID4gPiA+ICsKPiA+ID4gPiA+
ICsjZGVmaW5lIFBDSUVfTFgyX0JBUl9OVU0JNAo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyNkZWZp
bmUgdG9fbHNfcGNpZV9nNF9lcCh4KQlkZXZfZ2V0X2RydmRhdGEoKHgpLT5kZXYpCj4gPiA+ID4g
PiArCj4gPiA+ID4gPiArc3RydWN0IGxzX3BjaWVfZzRfZXAgewo+ID4gPiA+ID4gKwlzdHJ1Y3Qg
bW9iaXZlaWxfcGNpZQkJKm12X3BjaTsKPiA+ID4gPiA+ICt9Owo+ID4gPiA+ID4gKwo+ID4gPiA+
ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGxzX3BjaWVfZzRfZXBfb2ZfbWF0
Y2hbXSA9IHsKPiA+ID4gPiA+ICsJeyAuY29tcGF0aWJsZSA9ICJmc2wsbHgyMTYwYS1wY2llLWVw
Iix9LAo+ID4gPiA+ID4gKwl7IH0sCj4gPiA+ID4gPiArfTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9lcGNfZmVhdHVyZXMgbHNfcGNpZV9nNF9lcGNfZmVh
dHVyZXMgPSB7Cj4gPiA+ID4gPiArCS5saW5rdXBfbm90aWZpZXIgPSBmYWxzZSwKPiA+ID4gPiA+
ICsJLm1zaV9jYXBhYmxlID0gdHJ1ZSwKPiA+ID4gPiA+ICsJLm1zaXhfY2FwYWJsZSA9IHRydWUs
Cj4gPiA+ID4gPiArCS5yZXNlcnZlZF9iYXIgPSAoMSA8PCBCQVJfNCkgfCAoMSA8PCBCQVJfNSks
Cj4gPiA+ID4KPiA+ID4gPiAJCQlCSVQoQkFSXzQpIHwgQklUKEJBUl81KSA/Cj4gPiA+Cj4gPiA+
IEkgdGhpbmsgdXNlIC5yZXNlcnZlZF9iYXIgPSAoMSA8PCBCQVJfNCkgfCAoMSA8PCBCQVJfNSks
IGlzIGJldHRlciwKPiA+ID4gYmVjYXVzZSBCQVJfNCBpcyBub3QgYSBiaXQgb2YgcmVnaXN0ZXIu
Cj4gPiAKPiA+IFdoeSBpcyB3aGV0aGVyIGl0J3MgYSByZWdpc3RlciBvciBub3QgcmVsZXZlbnQ/
Cj4gCj4gTXkgdW5kZXJzdGFuZCBpcyB0aGF0IHRoZSBCSVQgaXMgdXNlZCB0byByZWdpc3Rlciwg
cmVmZXIgdG8gb3RoZXIgRVAgZHJpdmVyIGZpbGVzLAo+IGl0IGFsc28gdXNlIDEgPDwgQkFSXzQg
bWV0aG9kLgo+IAo+IFtiYW94d0B0aXRhbiBjb250cm9sbGVyXSQgZ3JlcCAtciAicmVzZXJ2ZWRf
YmFyIiAqCj4gZHdjL3BjaS1rZXlzdG9uZS5jOiAgICAgLnJlc2VydmVkX2JhciA9IDEgPDwgQkFS
XzAgfCAxIDw8IEJBUl8xLAo+IG1vYml2ZWlsL3BjaWUtbGF5ZXJzY2FwZS1nZW40LWVwLmM6ICAg
ICAucmVzZXJ2ZWRfYmFyID0gKDEgPDwgQkFSXzQpIHwgKDEgPDwgQkFSXzUpLAoKJCBncmVwICdc
PEJJVCgnIGZzIGtlcm5lbCBsaWIgbW0gbmV0IC1yCgpBYm91dCA2OTUgbm9uLWRldmljZSBkcml2
ZXIgaW5zdGFuY2VzIGF0IHRoZSB2ZXJ5IGxlYXN0IHNlZW0gdG8gZGlzYWdyZWUuCgotLSAKUk1L
J3MgUGF0Y2ggc3lzdGVtOiBodHRwczovL3d3dy5hcm1saW51eC5vcmcudWsvZGV2ZWxvcGVyL3Bh
dGNoZXMvCkZUVEMgYnJvYWRiYW5kIGZvciAwLjhtaWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5bmMg
YXQgMTIuMU1icHMgZG93biA2MjJrYnBzIHVwCkFjY29yZGluZyB0byBzcGVlZHRlc3QubmV0OiAx
MS45TWJwcyBkb3duIDUwMGticHMgdXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
