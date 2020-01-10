Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6033B13715D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:34:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2XFf5tlfXtzBGdIO1rIqMvvnoGitKfX5AMnYCGEH63o=; b=G+vtk3trzhkWCI
	zpgOyIq2I1TmY4kFUa0bihYFTsMavSggE6oX0D7t2HMek+ozPJNbm5BnCIHvaBj6Em2a1Tzapav1P
	btrS8lUaV05yqN5Fmkx37LoNbXWNRU132jEQjf2hAeGjo81FVEhX7HTXBFAb4X/U15IfYPDHpcK/C
	c+QiIZ1i2XSolBaWkvPhNTrzZt3y+vLFm1oN/Gyua2BhouzQTL6BrIcQV+hdXydGM8BrnmpYz5Wnm
	F1TxACIYpGwkVyiZ+zOq7eTU6CM8FFKEoteBLNScyWRk1fT/neh2z39OMggyHEpRsmLzDBM9TkRoi
	FAfePdmeWeffX8TkpDSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwIZ-0005ST-9B; Fri, 10 Jan 2020 15:34:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwIP-0005Rt-BH
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:33:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D7BC30E;
 Fri, 10 Jan 2020 07:33:56 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 268623F6C4;
 Fri, 10 Jan 2020 07:33:54 -0800 (PST)
Date: Fri, 10 Jan 2020 15:33:47 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Message-ID: <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
 <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_073357_433904_24DE8DE3 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Olof Johansson <olof@lixom.net>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBEZWMgMTcsIDIwMTkgYXQgMDI6NTA6MTVBTSArMDAwMCwgWi5xLiBIb3Ugd3JvdGU6
Cj4gSGkgTG9yZW56bywKPiAKPiBUaGUgdjkgcGF0Y2hlcyBoYXZlIGFkZHJlc3NlZCB0aGUgY29t
bWVudHMgZnJvbSBBbmRyZXcsIGFuZCBpdCBoYXMKPiBiZWVuIGRyaWVkIGFib3V0IDEgbW9udGgs
IGNhbiB5b3UgaGVscCB0byBhcHBseSB0aGVtPwoKV2Ugc2hhbGwgaGF2ZSBhIGxvb2sgYmVnaW5u
aW5nIG9mIG5leHQgd2Vlaywgc29ycnkgZm9yIHRoZSBkZWxheQppbiBnZXR0aW5nIGJhY2sgdG8g
eW91LgoKTG9yZW56bwoKPiBUaGFua3MsCj4gWmhpcWlhbmcKPiAKPiA+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBPbG9mIEpvaGFuc3NvbiA8b2xvZkBsaXhvbS5uZXQ+Cj4g
PiBTZW50OiAyMDE55bm0MTLmnIgxNOaXpSAyOjM3Cj4gPiBUbzogWi5xLiBIb3UgPHpoaXFpYW5n
LmhvdUBueHAuY29tPjsgYmhlbGdhYXNAZ29vZ2xlLmNvbQo+ID4gQ2M6IGxpbnV4LXBjaUB2Z2Vy
Lmtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiA+IGRl
dmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOwo+
ID4gcm9iaCtkdEBrZXJuZWwub3JnOyBhcm5kQGFybmRiLmRlOyBtYXJrLnJ1dGxhbmRAYXJtLmNv
bTsKPiA+IGwuc3VicmFobWFueWFAbW9iaXZlaWwuY28uaW47IHNoYXduZ3VvQGtlcm5lbC5vcmc7
Cj4gPiBtLmthcnRoaWtleWFuQG1vYml2ZWlsLmNvLmluOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhw
LmNvbT47Cj4gPiBsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tOyBjYXRhbGluLm1hcmluYXNAYXJt
LmNvbTsKPiA+IHdpbGwuZGVhY29uQGFybS5jb207IGFuZHJldy5tdXJyYXlAYXJtLmNvbTsgTWlu
Z2thaSBIdQo+ID4gPG1pbmdrYWkuaHVAbnhwLmNvbT47IE0uaC4gTGlhbiA8bWluZ2h1YW4ubGlh
bkBueHAuY29tPjsgWGlhb3dlaSBCYW8KPiA+IDx4aWFvd2VpLmJhb0BueHAuY29tPgo+ID4gU3Vi
amVjdDogUmU6IFtQQVRDSHY5IDAwLzEyXSBQQ0k6IFJlY29kZSBNb2JpdmVpbCBkcml2ZXIgYW5k
IGFkZCBQQ0llIEdlbjQKPiA+IGRyaXZlciBmb3IgTlhQIExheWVyc2NhcGUgU29Dcwo+ID4gCj4g
PiBIaSEKPiA+IAo+ID4gT24gVHVlLCBOb3YgMTksIDIwMTkgYXQgNzo0NSBQTSBaLnEuIEhvdSA8
emhpcWlhbmcuaG91QG54cC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBGcm9tOiBIb3UgWmhpcWlh
bmcgPFpoaXFpYW5nLkhvdUBueHAuY29tPgo+ID4gPgo+ID4gPiBUaGlzIHBhdGNoIHNldCBpcyB0
byByZWNvZGUgdGhlIE1vYml2ZWlsIGRyaXZlciBhbmQgYWRkIFBDSWUgc3VwcG9ydAo+ID4gPiBm
b3IgTlhQIExheWVyc2NhcGUgc2VyaWVzIFNvQ3MgaW50ZWdyYXRlZCBNb2JpdmVpbCdzIFBDSWUg
R2VuNAo+ID4gPiBjb250cm9sbGVyLgo+ID4gCj4gPiBDYW4gd2UgZ2V0IGEgcmVzcGluIGZvciB0
aGlzIG9uIHRvcCBvZiB0aGUgNS41IG1lcmdlIHdpbmRvdyBtYXRlcmlhbD8KPiA+IEdpdmVuIHRo
YXQgaXQncyBhIGJ1bmNoIG9mIHJlZmFjdG9yaW5ncywgbWFueSBvZiB0aGVtIGRvbid0IGFwcGx5
IG9uIHRvcCBvZgo+ID4gdGhlIG1hdGVyaWFsIHRoYXQgd2FzIG1lcmdlZC4KPiA+IAo+ID4gSSdk
IGxvdmUgdG8gc2VlIHRoZXNlIGdvIGluIHNvb25lciByYXRoZXIgdGhhbiBsYXRlciBzbyBJIGNh
biBzdGFydCBnZXR0aW5nIC1uZXh0Cj4gPiBydW5uaW5nIG9uIGxzMjE2MGEgaGVyZS4KPiA+IAo+
ID4gCj4gPiAtT2xvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
