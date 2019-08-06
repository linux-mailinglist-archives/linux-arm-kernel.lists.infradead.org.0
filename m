Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C668374E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DILAxKvmY/Oiy61ozYaQh+wg8JBC1o4pTRSJnFy7MUg=; b=ttmutW5PJh3CNq
	nGAE9l4lzWOTzYfB5Q/j04+D9tjQhDQ1zTkLprLVe3ygJSQJy1GlNRgPZsa9qpo48WJbApMzhNmaz
	7OkvvYItWp8C4gXyFRpSFVlvgbrbf35rUNPeOuZeF8m2x7TUJ1e3gv/VjUafLgbQlKX0lWpD7+OiD
	5HvNAciehSdh+qNfx4h+IoiPWHRcDBcSZX7J6e8D2OY5pdqQmIcEQYW/FRA8M+EQSfUp2TUiHj/T9
	1Yomwgy8o5NIEPfmmPv91YraEJjo3bMyLJS8sttMujhMBjgcilKpFd7aofM9isGLY7nLbDYlfRBLg
	2vTPqvqHWVHNPBW9vgng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2dl-00036b-3s; Tue, 06 Aug 2019 16:48:49 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2dU-00035w-Cq
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 16:48:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2xbU9eGH8Hn5AbLibXFA8i2BhIbjPGsDxSHEGclO7DY=; b=eZwyX0IYZ2o1mynwE2Hz8BgOn
 1IYSUKBfERotJIfG9zTtzX0bg4i08mQ5mMz6MCpMov84N9NI9dKaErTO39e8hveags+aR+z+d61qP
 W3w6jej9QozJBNVBhiIvdTj7/8x21XG296MB4TCw5PA3XToUIUHcmZVo2bgcj29giaXjSaRwo5m1i
 apKc2Nx+v1j2CSPgt0VzhW9CxMtyl+lhnoPIf1/QpSd7MesE+kISmudz2+Jf9n3t9voIsXSyen3WY
 +ze92NX2gq4pRI9lO51qHr+H7EmvaTCALnfcgZUyl64IRxEtq2PKmgi/japG58C1Z2+kdJ8eNmMbW
 Nmv4H0fpQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:49228)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hv2dF-0000TH-Ou; Tue, 06 Aug 2019 17:48:17 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hv2dE-0000fq-Mb; Tue, 06 Aug 2019 17:48:16 +0100
Date: Tue, 6 Aug 2019 17:48:16 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] dma-mapping: fix page attributes for dma_mmap_*
Message-ID: <20190806164816.GE1330@shell.armlinux.org.uk>
References: <20190801142118.21225-1-hch@lst.de>
 <20190801142118.21225-2-hch@lst.de>
 <20190801162305.3m32chycsdjmdejk@willie-the-truck>
 <20190801163457.GB26588@lst.de>
 <20190801164411.kmsl4japtfkgvzxe@willie-the-truck>
 <20190802081441.GA9725@lst.de>
 <20190802103803.3qrbhqwxlasojsco@willie-the-truck>
 <20190803064812.GA29746@lst.de>
 <20190806160854.htk67msiyadlrl4m@willie-the-truck>
 <20190806164503.GD1330@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806164503.GD1330@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_094832_698387_1714CDA3 
X-CRM114-Status: GOOD (  32.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Shawn Anastasio <shawn@anastas.io>, Michael Ellerman <mpe@ellerman.id.au>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Catalin Marinas <catalin.marinas@arm.com>, linuxppc-dev@lists.ozlabs.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDU6NDU6MDNQTSArMDEwMCwgUnVzc2VsbCBLaW5nIC0g
QVJNIExpbnV4IGFkbWluIHdyb3RlOgo+IE9uIFR1ZSwgQXVnIDA2LCAyMDE5IGF0IDA1OjA4OjU0
UE0gKzAxMDAsIFdpbGwgRGVhY29uIHdyb3RlOgo+ID4gT24gU2F0LCBBdWcgMDMsIDIwMTkgYXQg
MDg6NDg6MTJBTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6Cj4gPiA+IE9uIEZyaSwg
QXVnIDAyLCAyMDE5IGF0IDExOjM4OjAzQU0gKzAxMDAsIFdpbGwgRGVhY29uIHdyb3RlOgo+ID4g
PiA+IAo+ID4gPiA+IFNvIHRoaXMgYm9pbHMgZG93biB0byBhIHRlcm1pbm9sb2d5IG1pc21hdGNo
LiBUaGUgQXJtIGFyY2hpdGVjdHVyZSBkb2Vzbid0IGhhdmUKPiA+ID4gPiBhbnl0aGluZyBjYWxs
ZWQgIndyaXRlIGNvbWJpbmUiLCBzbyBpbiBMaW51eCB3ZSBpbnN0ZWFkIHByb3ZpZGUgd2hhdCB0
aGUgQXJtCj4gPiA+ID4gYXJjaGl0ZWN0dXJlIGNhbGxzICJOb3JtYWwgbm9uLWNhY2hlYWJsZSIg
bWVtb3J5IGZvciBwZ3Byb3Rfd3JpdGVjb21iaW5lKCkuCj4gPiA+ID4gQW1vbmdzdCBvdGhlciB0
aGluZ3MsIHRoaXMgbWVtb3J5IHR5cGUgcGVybWl0cyBzcGVjdWxhdGlvbiwgdW5hbGlnbmVkIGFj
Y2Vzc2VzCj4gPiA+ID4gYW5kIG1lcmdpbmcgb2Ygd3JpdGVzLiBJIGZvdW5kIHNvbWV0aGluZyBp
biB0aGUgYXJjaGl0ZWN0dXJlIHNwZWMgYWJvdXQKPiA+ID4gPiBub24tY2FjaGFibGUgbWVtb3J5
LCBidXQgaXQncyB3cml0dGVuIGluIEFybWdsaXNoWzFdLgo+ID4gPiA+IAo+ID4gPiA+IHBncHJv
dF9ub25jYWNoZWQoKSwgb24gdGhlIG90aGVyIGhhbmQsIHByb3ZpZGVzIHdoYXQgdGhlIGFyY2hp
dGVjdHVyZSBjYWxscwo+ID4gPiA+IFN0cm9uZ2x5IE9yZGVyZWQgb3IgRGV2aWNlLW5HblJuRSBt
ZW1vcnkuIFRoaXMgaXMgaW50ZW5kZWQgZm9yIG1hcHBpbmcgTU1JTwo+ID4gPiA+IChpLmUuIFBD
SSBjb25maWcgc3BhY2UpIGFuZCB0aGVyZWZvcmUgZm9yYmlkcyBzcGVjdWxhdGlvbiwgcHJlc2Vy
dmVzIGFjY2Vzcwo+ID4gPiA+IHNpemUsIHJlcXVpcmVzIHN0cmljdCBhbGlnbm1lbnQgYW5kIGFs
c28gZm9yY2VzIHdyaXRlIHJlc3BvbnNlcyB0byBjb21lIGZyb20KPiA+ID4gPiB0aGUgZW5kcG9p
bnQuCj4gPiA+ID4gCj4gPiA+ID4gSSB0aGluayB0aGUgbmFtaW5nIG1pc21hdGNoIGlzIGhpc3Rv
cmljYWwsIGJ1dCBvbiBhcm02NCB3ZSB3YW50ZWQgdG8gdXNlIHRoZQo+ID4gPiA+IHNhbWUgbmFt
ZXMgYXMgYXJtMzIgc28gdGhhdCBhbnkgZHJpdmVycyB1c2luZyB0aGVzZSB0aGluZ3MgZGlyZWN0
bHkgd291bGQgZ2V0Cj4gPiA+ID4gdGhlIHNhbWUgYmVoYXZpb3VyLgo+ID4gPiAKPiA+ID4gVGhh
dCBhbGwgbWFrZXMgc2Vuc2UsIGJ1dCBpdCB0b3RhbGx5IG5lZWRzIGEgY29tbWVudC4gIEknbGwg
dHJ5IHRvIGRyYWZ0Cj4gPiA+IG9uZSBiYXNlZCBvbiB0aGlzLiAgSSd2ZSBhbHNvIGxvb2tlZCBh
dCB0aGUgYXJtMzIgY29kZSBhIGJpdCBtb3JlLCBhbmQKPiA+ID4gaXQgc2VlbXMgYXJtIGFsd2F5
cyAoPykgc3VwcG9ydGVkIE5vcm1hbCBub24tY2FjaGVhYmxlIGF0dHJpYnV0ZSwgYnV0Cj4gPiA+
IExpbnV4IG9ubHkgb3B0aW9uYWxseSB1c2VzIGl0IGZvciBhcm0gdjYrIGJlY2F1c2Ugb2YgZmVh
cnMgb2YgZHJpdmVycwo+ID4gPiBtaXNzaW5nIGJhcnJpZXJzLgo+ID4gCj4gPiBJIHRoaW5rIGl0
IHdhcyBhbHNvIHRvIGRvIHdpdGggYWxpYXNpbmcsIGJ1dCBJIGRvbid0IHJlY2FsbCBhbGwgb2Yg
dGhlCj4gPiBkZXRhaWxzLgo+IAo+IEFSTXY2KyBpcyB3aGVyZSB0aGUgYXJjaGl0ZWN0dXJlIHNp
Z25pZmljYW50bHkgY2hhbmdlZCB0byBpbnRyb2R1Y2UKPiB0aGUgaWRlYSBvZiBbTm9ybWFsLCBE
ZXZpY2UsIFN0cm9uZ2x5IE9yZGVyZWRdIHdoZXJlIE5vcm1hbCBoYXMgdGhlCj4gY2FjaGUgYXR0
cmlidXRlcy4KPiAKPiBCZWZvcmUgdGhhdCwgd2UgaGFkIGp1c3QgInVuY2FjaGVkL3VuYnVmZmVy
ZWQsIHVuY2FjaGVkL2J1ZmZlcmVkLAo+IGNhY2hlZC91bmJ1ZmZlcmVkLCBjYWNoZWQvYnVmZmVy
ZWQiIG1vZGVzLgo+IAo+IFRoZSB3cml0ZSBidWZmZXIgKGVuYWJsZWQgYnkgYnVmZmVyZWQgbW9k
ZXMpIGhhcyBubyBhcmNoaXRlY3RlZAo+IGd1YXJhbnRlZXMgYWJvdXQgaG93IGxvbmcgd3JpdGVz
IHdpbGwgc2l0IGluIGl0LCBhbmQgdGhlcmUgaXMgb25seQo+IHRoZSAiZHJhaW4gd3JpdGUgYnVm
ZmVyIiBpbnN0cnVjdGlvbiB0byBwdXNoIHdyaXRlcyBvdXQuCj4gCj4gVXAgdG8gYW5kIGluY2x1
ZGluZyBBUk12NSwgd2UgdG9vayB0aGUgZWFzeSBhcHByb2FjaCBvZiBqdXN0IHVzaW5nCj4gdGhl
ICJ1bmNhY2hlZC91bmJ1ZmZlcmVkIiBtb2RlIHNpbmNlIHRoYXQgaXMgKGEpIHRoZSBzYWZlc3Qs
IGFuZCAoYikKPiBhdm9pZHMgd3JpdGUgYnVmZmVycyB0aGF0IGFsaWFzIHdoZW4gdGhlcmUgYXJl
IG11bHRpcGxlIGRpZmZlcmVudAo+IG1hcHBpbmdzLgo+IAo+IFdlIGNvdWxkIGhhdmUgdXNlZCBh
IGRpZmZlcmVudCBhcHByb2FjaCwgbWFraW5nIGFsbCBJTyB3cml0ZXMgY29udGFpbgo+IGEgImRy
YWluIHdyaXRlIGJ1ZmZlciIgaW5zdHJ1Y3Rpb24sIGFuZCBtYXAgRE1BIG1lbW9yeSBhcyAiYnVm
ZmVyZWQiLAo+IGJ1dCBhcyB0aGVyZSB3ZXJlIG5vIExpbnV4IGJhcnJpZXJzIGRlZmluZWQgdG8g
b3JkZXIgbWVtb3J5IGFjY2Vzc2VzCj4gdG8gRE1BIG1lbW9yeSAoc28sIGZvciBleGFtcGxlLCBy
aW5nIGJ1ZmZlcnMgY2FuIGJlIHVwZGF0ZWQgaW4gdGhlCj4gY29ycmVjdCBvcmRlcikgYmFjayBp
biB0aG9zZSBkYXlzLCB1c2luZyB0aGUgdW5jYWNoZWQvdW5idWZmZXJlZCBtb2RlCj4gd2FzIHRo
ZSBzYW5lc3QgYW5kIG1vc3QgcmVsaWFibGUgc29sdXRpb24uCj4gCj4gPiAKPiA+ID4gVGhlIG90
aGVyIHJlYWxseSB3ZWlyZCB0aGluZ3MgaXMgdGhhdCBpbiBhcm0zMgo+ID4gPiBwZ3Byb3RfZG1h
Y29oZXJlbnQgaW5jdWRlcyB0aGUgTF9QVEVfWE4gYml0LCB3aGljaCBmcm9tIG15IHVuZGVyc3Rh
bmRpbmcKPiA+ID4gaXMgdGhlIG5vLWV4ZWN0dXJlIGJpdCwgYnV0IHBncHJvdF93cml0ZWNvbWJp
bmUgZG9lcyBub3QuICBUaGlzIHNlZW1zIHRvCj4gPiA+IG5vdCB2ZXJ5IHVuaW50ZW50aW9uYWwu
ICBTbyBtaW51cyB0aGF0IHRoZSB3aG9sZSBETUFfQVRUUl9XUklURV9DT01C0IZORQo+ID4gPiBz
ZWVtcyB0byBiZSBhYm91dCBmbGFnZ2luZyBvbGQgYXJtIHNwZWNpZmljIGRyaXZlcnMgYXMgaGF2
aW5nIHRoZSBwcm9wZXIKPiA+ID4gYmFycmllcnMgaW4gcGxhY2VzIGFuZCBvdGhlcndpc2UgaXMg
YSBuby1vcC4KPiA+IAo+ID4gSSB0aGluayBpdCBvbmx5IG1hdHRlcnMgZm9yIEFybXY3IENQVXMs
IGJ1dCB5ZXMsIHdlIHNob3VsZCBwcm9iYWJseSBiZQo+ID4gc2V0dGluZyBMX1BURV9YTiBmb3Ig
Ym90aCBvZiB0aGVzZSBtZW1vcnkgdHlwZXMuCj4gCj4gQ29udmVudGlvbmFsbHksIHBncHJvdF93
cml0ZWNvbWJpbmUoKSBoYXMgb25seSBiZWVuIHVzZWQgdG8gY2hhbmdlCj4gdGhlIG1lbW9yeSB0
eXBlIGFuZCBub3QgdGhlIHBlcm1pc3Npb25zLiAgU2luY2Ugd3JpdGVjb21iaW5lIG1lbW9yeQo+
IGlzIHN0aWxsIGNhcGFibGUgb2YgYmVpbmcgZXhlY3V0ZWQsIEkgZG9uJ3Qgc2VlIGFueSByZWFz
b24gdG8gc2V0IFhOCj4gZm9yIGl0Lgo+IAo+IElmIHRoZSB1c2VyIHdpc2hlcyB0byBtbWFwKCkg
dXNpbmcgUFJPVF9SRUFEfFBST1RfRVhFQywgdGhlbiBpcyB0aGVyZQo+IHJlYWxseSBhIHJlYXNv
biBmb3Igd3JpdGVjb21iaW5lIHRvIHNldCBYTiBvdmVycmlkaW5nIHRoZSB1c2VyPwo+IAo+IFRo
YXQgc2FpZCwgcGdwcm90X3dyaXRlY29tYmluZSgpIGlzIG1vc3RseSB1c2VkIGZvciBmcmFtZWJ1
ZmZlcnMsIHdoaWNoCj4gYXJndWFibHkgc2hvdWxkbid0IGJlIGV4ZWN1dGFibGUgYW55d2F5IC0g
YnV0IHdobydkIHdhbnQgdG8gbW1hcCgpIHRoZQo+IGZyYW1lYnVmZmVyIHdpdGggUFJPVF9FWEVD
Pwo+IAo+ID4gCj4gPiA+IEhlcmUgaXMgbXkgdGVudGF0aXZlIHBsYW46Cj4gPiA+IAo+ID4gPiAg
LSByZXNwaW4gdGhpcyBwYXRjaCB3aXRoIGEgc21hbGwgZml4IHRvIGhhbmRsZSB0aGUKPiA+ID4g
ICAgRE1BX0FUVFJfTk9OX0NPTlNJU1RFTlQgKGFzIGluIGlnbm9yZSBpdCB1bmxlc3MgYWN0dWFs
bHkgc3VwcG9ydGVkKSwKPiA+ID4gICAgYnV0IGtlZXAgdGhlIG5hbWUgYXMtaXMgdG8gYXZvaWQg
Y2h1cm4uICBUaGlzIHNob3VsZCBhbGxvdyA1LjMKPiA+ID4gICAgaW5jbHVzaW9uIGFuZCBiYWNr
cG9ydHMKPiA+ID4gIC0gcmVtb3ZlIERNQV9BVFRSX1dSSVRFX0NPTUJJTkUgc3VwcG9ydCBmcm9t
IG1pcHMsIHByb2JhYmx5IGFsc28gNS4zCj4gPiA+ICAgIG1hdGVyaWFsLgo+ID4gPiAgLSBtb3Zl
IGFsbCBhcmNoaXRlY3R1cmVzIGJ1dCBhcm0gb3ZlciB0byBqdXN0IGRlZmluZQo+ID4gPiAgICBw
Z3Byb3RfZG1hY29oZXJlbnQsIGluY2x1ZGluZyBhIGNvbW1lbnQgd2l0aCB0aGUgYWJvdmUgZXhw
bGFuYXRpb24KPiA+ID4gICAgZm9yIGFybTY0Lgo+ID4gCj4gPiBUaGF0IHdvdWxkIGJlIGdyZWF0
LCB0aGFua3MuCj4gPiAKPiA+ID4gIC0gbWFrZSBETUFfQVRUUl9XUklURV9DT01CSU5FIGEgbm8t
b3AgYW5kIHNjaGVkdWxlIGl0IGZvciByZW1vdmFsLAo+ID4gPiAgICB0aHVzIHJlbW92aW5nIHRo
ZSBsYXN0IGluc3RhbmNlcyBvZiBhcmNoX2RtYV9tbWFwX3BncHJvdAo+ID4gCj4gPiBBbGwgc291
bmRzIGdvb2QgdG8gbWUsIGFsdGhvdWdoIEkgc3VwcG9zZSAzMi1iaXQgQXJtIHBsYXRmb3JtcyB3
aXRob3V0Cj4gPiBDT05GSUdfQVJNX0RNQV9NRU1fQlVGRkVSQUJMRSBtYXkgcnVuIGludG8gaXNz
dWVzIGlmIERNQV9BVFRSX1dSSVRFX0NPTUJJTkUKPiA+IGRpc2FwcGVhcnMuIE9ubHkgb25lIHdh
eSB0byBmaW5kIG91dC4uLgo+IAo+IExvb2tpbmcgYXQgdGhlIHJlc3VsdHMgb2YgZ3JlcCwgSSB0
aGluayBvbmx5IE9NQVAyKyBhbmQgRXh5bm9zIG1heSBiZQo+IGFmZmVjdGVkLgo+IAo+IEhvd2V2
ZXIsIHJlbW92aW5nIHdyaXRlY29tYmluZSBzdXBwb3J0IGZyb20gdGhlIERNQSBBUEkgaXMgZ29p
bmcgdG8KPiBoYXZlIGEgaHVnZSBpbXBhY3QgZm9yIGZyYW1lYnVmZmVycyBvbiBlYXJsaWVyIEFS
TXMgLSB0aGF0J3Mgd2hlcmUgd2UKPiBkbyBleHBlY3QgZnJhbWVidWZmZXJzIHRvIGJlIG1hcHBl
ZCAidW5jYWNoZWQvYnVmZmVyZWQiIGZvciBwZXJmb3JtYW5jZQo+IHJlYXNvbnMgYW5kIG5vdCAi
dW5jYWNoZWQvdW5idWZmZXJlZCIuICBJdCdzIHF1aXRlIGxpdGVyYWxseSB0aGUKPiBkaWZmZXJl
bmNlIGJldHdlZW4gY29uc29sZSBzY3JvbGxpbmcgYmVpbmcgdXNhYmxlIGFuZCB0b3RhbGx5IHVu
dXNhYmxlLgo+IAo+IEdpdmVuIHdoYXQgSSd2ZSBzYWlkIGFib3ZlLCBzd2l0Y2hpbmcgdG8gdXNp
bmcgYnVmZmVyZWQgbW9kZSBmb3Igbm9ybWFsCj4gRE1BIG1hcHBpbmdzIGlzIGRhdGEtY29ycnVw
dGluZyByaXNreSAtIGFzIGluIHlvdXIgZmlsZXN5c3RlbSBjb3VsZCBnZXQKPiBmcmllZC4gIEkg
ZG9uJ3QgdGhpbmsgd2Ugc2hvdWxkIHBsYXkgZmFzdCBhbmQgbG9vc2Ugd2l0aCBwZW9wbGUncyBk
YXRhCj4gYnkgcmFuZG9tbHkgY2hhbmdpbmcgdGhhdCAiYmVjYXVzZSB3ZSdkIGxpa2UgdG8iLCBh
bmQgSSBkb24ndCBzZWUgdGhhdAo+IHNjcmV3aW5nIHRoZSBjb25zb2xlIGlzIHJlYWxseSBhbiBv
cHRpb24gZWl0aGVyLgoKU29ycnksIEkgZm9yZ290IHRvIGV4cGxhaW4gLSB0aGUgcmVhc29uIGlz
IGRtYV9hbGxvY193cml0ZWNvbWJpbmUoKQppbnRlcm5hbGx5IHVzZXMgRE1BX0FUVFJfV1JJVEVf
Q09NQklORSwgd2hpY2ggSSdkIGZvcmdvdHRlbiBhYm91dAp3aGVuIGdyZXBwaW5nIC0gc28gdGhl
cmUncyBwb3RlbnRpYWxseSB3YXkgbW9yZSB1c2VycyB0aGFuIG15IGdyZXBzCmFib3ZlIGZvdW5k
LgoKLS0gClJNSydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2Rl
dmVsb3Blci9wYXRjaGVzLwpGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVy
YmlhOiBzeW5jIGF0IDEyLjFNYnBzIGRvd24gNjIya2JwcyB1cApBY2NvcmRpbmcgdG8gc3BlZWR0
ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBzIHVwCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
