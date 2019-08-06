Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DE48373C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHqoj6Q/XQJpf8PMraF/6GeJY9Uk57n7+UZSEGfyX0Q=; b=gFq7GEe8ShwfKJ
	oIuMFey/qQ879RPmHTD39egDCQyBP0O45sdlECqQOKPVaokno2EQeSQmFGNQpYiSgFEM6LlT1Qu0W
	vZVOfI0V8at9n68a9FCn1ukLfwjUH9YAmf0cAVyQ2xiWs483Bqziuo5RGDvjoEMmTS4a0p2LaPCf/
	Wt27cL+OdZ7aAd7SCuFiRcvhhb9UyKu8uJfZwcoYVcpMJHGZmvc1osPpgr3NJvRo/MjrRMrscZrG/
	iVnDyGGNf4l5NADA5u/kmjZac8RdeI+i4QthExDpbnJ9wGare7Lape9vv5S/YPQjufCUlQLpenLkD
	CpoFYfsNxmlJ0KNFhEGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2ae-0002WU-Lg; Tue, 06 Aug 2019 16:45:36 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2aV-0002Vn-Gw
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 16:45:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L8Qsi9HRlyoVoGH2S+hSRi65LltiNgW4vXbUSsBYNjo=; b=AY0UMJb+iW++EBhB14ReL07/6
 b0pFwP1ANs8Ey7rLTMwawQUMPdUAgfQRQVnZ/OR7JKCYpuel75mq1XkvJI3943Z3MQqQqQhkmdhxO
 gMiRvM5UopNJOrzm9fVvISbh1BDxrhypglyOjuUgab1W+soP+Y92sFkPmzHVACpr+/u106dEpfBCi
 WoNn1LreZ4+hkZCRMYbGZ1hOFo9APnQctrKosgfefHdeyXB6/JMXLVG9ifNeovhlGxV0lw0W8ajJ3
 1igtLNju1aD0Nr45s4CdgQBE/9z4vnCe4JZPjGxIYq1S39XMDc/p6GxbFVUBCrhp5yKR6Z534S6qB
 7mcKWkceQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:49226)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hv2aC-0000SB-Ab; Tue, 06 Aug 2019 17:45:08 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hv2a7-0000fh-Ka; Tue, 06 Aug 2019 17:45:03 +0100
Date: Tue, 6 Aug 2019 17:45:03 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] dma-mapping: fix page attributes for dma_mmap_*
Message-ID: <20190806164503.GD1330@shell.armlinux.org.uk>
References: <20190801142118.21225-1-hch@lst.de>
 <20190801142118.21225-2-hch@lst.de>
 <20190801162305.3m32chycsdjmdejk@willie-the-truck>
 <20190801163457.GB26588@lst.de>
 <20190801164411.kmsl4japtfkgvzxe@willie-the-truck>
 <20190802081441.GA9725@lst.de>
 <20190802103803.3qrbhqwxlasojsco@willie-the-truck>
 <20190803064812.GA29746@lst.de>
 <20190806160854.htk67msiyadlrl4m@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806160854.htk67msiyadlrl4m@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_094527_982780_6C0AE8E7 
X-CRM114-Status: GOOD (  29.80  )
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
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Catalin Marinas <catalin.marinas@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMDU6MDg6NTRQTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gU2F0LCBBdWcgMDMsIDIwMTkgYXQgMDg6NDg6MTJBTSArMDIwMCwgQ2hyaXN0b3Bo
IEhlbGx3aWcgd3JvdGU6Cj4gPiBPbiBGcmksIEF1ZyAwMiwgMjAxOSBhdCAxMTozODowM0FNICsw
MTAwLCBXaWxsIERlYWNvbiB3cm90ZToKPiA+ID4gCj4gPiA+IFNvIHRoaXMgYm9pbHMgZG93biB0
byBhIHRlcm1pbm9sb2d5IG1pc21hdGNoLiBUaGUgQXJtIGFyY2hpdGVjdHVyZSBkb2Vzbid0IGhh
dmUKPiA+ID4gYW55dGhpbmcgY2FsbGVkICJ3cml0ZSBjb21iaW5lIiwgc28gaW4gTGludXggd2Ug
aW5zdGVhZCBwcm92aWRlIHdoYXQgdGhlIEFybQo+ID4gPiBhcmNoaXRlY3R1cmUgY2FsbHMgIk5v
cm1hbCBub24tY2FjaGVhYmxlIiBtZW1vcnkgZm9yIHBncHJvdF93cml0ZWNvbWJpbmUoKS4KPiA+
ID4gQW1vbmdzdCBvdGhlciB0aGluZ3MsIHRoaXMgbWVtb3J5IHR5cGUgcGVybWl0cyBzcGVjdWxh
dGlvbiwgdW5hbGlnbmVkIGFjY2Vzc2VzCj4gPiA+IGFuZCBtZXJnaW5nIG9mIHdyaXRlcy4gSSBm
b3VuZCBzb21ldGhpbmcgaW4gdGhlIGFyY2hpdGVjdHVyZSBzcGVjIGFib3V0Cj4gPiA+IG5vbi1j
YWNoYWJsZSBtZW1vcnksIGJ1dCBpdCdzIHdyaXR0ZW4gaW4gQXJtZ2xpc2hbMV0uCj4gPiA+IAo+
ID4gPiBwZ3Byb3Rfbm9uY2FjaGVkKCksIG9uIHRoZSBvdGhlciBoYW5kLCBwcm92aWRlcyB3aGF0
IHRoZSBhcmNoaXRlY3R1cmUgY2FsbHMKPiA+ID4gU3Ryb25nbHkgT3JkZXJlZCBvciBEZXZpY2Ut
bkduUm5FIG1lbW9yeS4gVGhpcyBpcyBpbnRlbmRlZCBmb3IgbWFwcGluZyBNTUlPCj4gPiA+IChp
LmUuIFBDSSBjb25maWcgc3BhY2UpIGFuZCB0aGVyZWZvcmUgZm9yYmlkcyBzcGVjdWxhdGlvbiwg
cHJlc2VydmVzIGFjY2Vzcwo+ID4gPiBzaXplLCByZXF1aXJlcyBzdHJpY3QgYWxpZ25tZW50IGFu
ZCBhbHNvIGZvcmNlcyB3cml0ZSByZXNwb25zZXMgdG8gY29tZSBmcm9tCj4gPiA+IHRoZSBlbmRw
b2ludC4KPiA+ID4gCj4gPiA+IEkgdGhpbmsgdGhlIG5hbWluZyBtaXNtYXRjaCBpcyBoaXN0b3Jp
Y2FsLCBidXQgb24gYXJtNjQgd2Ugd2FudGVkIHRvIHVzZSB0aGUKPiA+ID4gc2FtZSBuYW1lcyBh
cyBhcm0zMiBzbyB0aGF0IGFueSBkcml2ZXJzIHVzaW5nIHRoZXNlIHRoaW5ncyBkaXJlY3RseSB3
b3VsZCBnZXQKPiA+ID4gdGhlIHNhbWUgYmVoYXZpb3VyLgo+ID4gCj4gPiBUaGF0IGFsbCBtYWtl
cyBzZW5zZSwgYnV0IGl0IHRvdGFsbHkgbmVlZHMgYSBjb21tZW50LiAgSSdsbCB0cnkgdG8gZHJh
ZnQKPiA+IG9uZSBiYXNlZCBvbiB0aGlzLiAgSSd2ZSBhbHNvIGxvb2tlZCBhdCB0aGUgYXJtMzIg
Y29kZSBhIGJpdCBtb3JlLCBhbmQKPiA+IGl0IHNlZW1zIGFybSBhbHdheXMgKD8pIHN1cHBvcnRl
ZCBOb3JtYWwgbm9uLWNhY2hlYWJsZSBhdHRyaWJ1dGUsIGJ1dAo+ID4gTGludXggb25seSBvcHRp
b25hbGx5IHVzZXMgaXQgZm9yIGFybSB2NisgYmVjYXVzZSBvZiBmZWFycyBvZiBkcml2ZXJzCj4g
PiBtaXNzaW5nIGJhcnJpZXJzLgo+IAo+IEkgdGhpbmsgaXQgd2FzIGFsc28gdG8gZG8gd2l0aCBh
bGlhc2luZywgYnV0IEkgZG9uJ3QgcmVjYWxsIGFsbCBvZiB0aGUKPiBkZXRhaWxzLgoKQVJNdjYr
IGlzIHdoZXJlIHRoZSBhcmNoaXRlY3R1cmUgc2lnbmlmaWNhbnRseSBjaGFuZ2VkIHRvIGludHJv
ZHVjZQp0aGUgaWRlYSBvZiBbTm9ybWFsLCBEZXZpY2UsIFN0cm9uZ2x5IE9yZGVyZWRdIHdoZXJl
IE5vcm1hbCBoYXMgdGhlCmNhY2hlIGF0dHJpYnV0ZXMuCgpCZWZvcmUgdGhhdCwgd2UgaGFkIGp1
c3QgInVuY2FjaGVkL3VuYnVmZmVyZWQsIHVuY2FjaGVkL2J1ZmZlcmVkLApjYWNoZWQvdW5idWZm
ZXJlZCwgY2FjaGVkL2J1ZmZlcmVkIiBtb2Rlcy4KClRoZSB3cml0ZSBidWZmZXIgKGVuYWJsZWQg
YnkgYnVmZmVyZWQgbW9kZXMpIGhhcyBubyBhcmNoaXRlY3RlZApndWFyYW50ZWVzIGFib3V0IGhv
dyBsb25nIHdyaXRlcyB3aWxsIHNpdCBpbiBpdCwgYW5kIHRoZXJlIGlzIG9ubHkKdGhlICJkcmFp
biB3cml0ZSBidWZmZXIiIGluc3RydWN0aW9uIHRvIHB1c2ggd3JpdGVzIG91dC4KClVwIHRvIGFu
ZCBpbmNsdWRpbmcgQVJNdjUsIHdlIHRvb2sgdGhlIGVhc3kgYXBwcm9hY2ggb2YganVzdCB1c2lu
Zwp0aGUgInVuY2FjaGVkL3VuYnVmZmVyZWQiIG1vZGUgc2luY2UgdGhhdCBpcyAoYSkgdGhlIHNh
ZmVzdCwgYW5kIChiKQphdm9pZHMgd3JpdGUgYnVmZmVycyB0aGF0IGFsaWFzIHdoZW4gdGhlcmUg
YXJlIG11bHRpcGxlIGRpZmZlcmVudAptYXBwaW5ncy4KCldlIGNvdWxkIGhhdmUgdXNlZCBhIGRp
ZmZlcmVudCBhcHByb2FjaCwgbWFraW5nIGFsbCBJTyB3cml0ZXMgY29udGFpbgphICJkcmFpbiB3
cml0ZSBidWZmZXIiIGluc3RydWN0aW9uLCBhbmQgbWFwIERNQSBtZW1vcnkgYXMgImJ1ZmZlcmVk
IiwKYnV0IGFzIHRoZXJlIHdlcmUgbm8gTGludXggYmFycmllcnMgZGVmaW5lZCB0byBvcmRlciBt
ZW1vcnkgYWNjZXNzZXMKdG8gRE1BIG1lbW9yeSAoc28sIGZvciBleGFtcGxlLCByaW5nIGJ1ZmZl
cnMgY2FuIGJlIHVwZGF0ZWQgaW4gdGhlCmNvcnJlY3Qgb3JkZXIpIGJhY2sgaW4gdGhvc2UgZGF5
cywgdXNpbmcgdGhlIHVuY2FjaGVkL3VuYnVmZmVyZWQgbW9kZQp3YXMgdGhlIHNhbmVzdCBhbmQg
bW9zdCByZWxpYWJsZSBzb2x1dGlvbi4KCj4gCj4gPiBUaGUgb3RoZXIgcmVhbGx5IHdlaXJkIHRo
aW5ncyBpcyB0aGF0IGluIGFybTMyCj4gPiBwZ3Byb3RfZG1hY29oZXJlbnQgaW5jdWRlcyB0aGUg
TF9QVEVfWE4gYml0LCB3aGljaCBmcm9tIG15IHVuZGVyc3RhbmRpbmcKPiA+IGlzIHRoZSBuby1l
eGVjdHVyZSBiaXQsIGJ1dCBwZ3Byb3Rfd3JpdGVjb21iaW5lIGRvZXMgbm90LiAgVGhpcyBzZWVt
cyB0bwo+ID4gbm90IHZlcnkgdW5pbnRlbnRpb25hbC4gIFNvIG1pbnVzIHRoYXQgdGhlIHdob2xl
IERNQV9BVFRSX1dSSVRFX0NPTULQhk5FCj4gPiBzZWVtcyB0byBiZSBhYm91dCBmbGFnZ2luZyBv
bGQgYXJtIHNwZWNpZmljIGRyaXZlcnMgYXMgaGF2aW5nIHRoZSBwcm9wZXIKPiA+IGJhcnJpZXJz
IGluIHBsYWNlcyBhbmQgb3RoZXJ3aXNlIGlzIGEgbm8tb3AuCj4gCj4gSSB0aGluayBpdCBvbmx5
IG1hdHRlcnMgZm9yIEFybXY3IENQVXMsIGJ1dCB5ZXMsIHdlIHNob3VsZCBwcm9iYWJseSBiZQo+
IHNldHRpbmcgTF9QVEVfWE4gZm9yIGJvdGggb2YgdGhlc2UgbWVtb3J5IHR5cGVzLgoKQ29udmVu
dGlvbmFsbHksIHBncHJvdF93cml0ZWNvbWJpbmUoKSBoYXMgb25seSBiZWVuIHVzZWQgdG8gY2hh
bmdlCnRoZSBtZW1vcnkgdHlwZSBhbmQgbm90IHRoZSBwZXJtaXNzaW9ucy4gIFNpbmNlIHdyaXRl
Y29tYmluZSBtZW1vcnkKaXMgc3RpbGwgY2FwYWJsZSBvZiBiZWluZyBleGVjdXRlZCwgSSBkb24n
dCBzZWUgYW55IHJlYXNvbiB0byBzZXQgWE4KZm9yIGl0LgoKSWYgdGhlIHVzZXIgd2lzaGVzIHRv
IG1tYXAoKSB1c2luZyBQUk9UX1JFQUR8UFJPVF9FWEVDLCB0aGVuIGlzIHRoZXJlCnJlYWxseSBh
IHJlYXNvbiBmb3Igd3JpdGVjb21iaW5lIHRvIHNldCBYTiBvdmVycmlkaW5nIHRoZSB1c2VyPwoK
VGhhdCBzYWlkLCBwZ3Byb3Rfd3JpdGVjb21iaW5lKCkgaXMgbW9zdGx5IHVzZWQgZm9yIGZyYW1l
YnVmZmVycywgd2hpY2gKYXJndWFibHkgc2hvdWxkbid0IGJlIGV4ZWN1dGFibGUgYW55d2F5IC0g
YnV0IHdobydkIHdhbnQgdG8gbW1hcCgpIHRoZQpmcmFtZWJ1ZmZlciB3aXRoIFBST1RfRVhFQz8K
Cj4gCj4gPiBIZXJlIGlzIG15IHRlbnRhdGl2ZSBwbGFuOgo+ID4gCj4gPiAgLSByZXNwaW4gdGhp
cyBwYXRjaCB3aXRoIGEgc21hbGwgZml4IHRvIGhhbmRsZSB0aGUKPiA+ICAgIERNQV9BVFRSX05P
Tl9DT05TSVNURU5UIChhcyBpbiBpZ25vcmUgaXQgdW5sZXNzIGFjdHVhbGx5IHN1cHBvcnRlZCks
Cj4gPiAgICBidXQga2VlcCB0aGUgbmFtZSBhcy1pcyB0byBhdm9pZCBjaHVybi4gIFRoaXMgc2hv
dWxkIGFsbG93IDUuMwo+ID4gICAgaW5jbHVzaW9uIGFuZCBiYWNrcG9ydHMKPiA+ICAtIHJlbW92
ZSBETUFfQVRUUl9XUklURV9DT01CSU5FIHN1cHBvcnQgZnJvbSBtaXBzLCBwcm9iYWJseSBhbHNv
IDUuMwo+ID4gICAgbWF0ZXJpYWwuCj4gPiAgLSBtb3ZlIGFsbCBhcmNoaXRlY3R1cmVzIGJ1dCBh
cm0gb3ZlciB0byBqdXN0IGRlZmluZQo+ID4gICAgcGdwcm90X2RtYWNvaGVyZW50LCBpbmNsdWRp
bmcgYSBjb21tZW50IHdpdGggdGhlIGFib3ZlIGV4cGxhbmF0aW9uCj4gPiAgICBmb3IgYXJtNjQu
Cj4gCj4gVGhhdCB3b3VsZCBiZSBncmVhdCwgdGhhbmtzLgo+IAo+ID4gIC0gbWFrZSBETUFfQVRU
Ul9XUklURV9DT01CSU5FIGEgbm8tb3AgYW5kIHNjaGVkdWxlIGl0IGZvciByZW1vdmFsLAo+ID4g
ICAgdGh1cyByZW1vdmluZyB0aGUgbGFzdCBpbnN0YW5jZXMgb2YgYXJjaF9kbWFfbW1hcF9wZ3By
b3QKPiAKPiBBbGwgc291bmRzIGdvb2QgdG8gbWUsIGFsdGhvdWdoIEkgc3VwcG9zZSAzMi1iaXQg
QXJtIHBsYXRmb3JtcyB3aXRob3V0Cj4gQ09ORklHX0FSTV9ETUFfTUVNX0JVRkZFUkFCTEUgbWF5
IHJ1biBpbnRvIGlzc3VlcyBpZiBETUFfQVRUUl9XUklURV9DT01CSU5FCj4gZGlzYXBwZWFycy4g
T25seSBvbmUgd2F5IHRvIGZpbmQgb3V0Li4uCgpMb29raW5nIGF0IHRoZSByZXN1bHRzIG9mIGdy
ZXAsIEkgdGhpbmsgb25seSBPTUFQMisgYW5kIEV4eW5vcyBtYXkgYmUKYWZmZWN0ZWQuCgpIb3dl
dmVyLCByZW1vdmluZyB3cml0ZWNvbWJpbmUgc3VwcG9ydCBmcm9tIHRoZSBETUEgQVBJIGlzIGdv
aW5nIHRvCmhhdmUgYSBodWdlIGltcGFjdCBmb3IgZnJhbWVidWZmZXJzIG9uIGVhcmxpZXIgQVJN
cyAtIHRoYXQncyB3aGVyZSB3ZQpkbyBleHBlY3QgZnJhbWVidWZmZXJzIHRvIGJlIG1hcHBlZCAi
dW5jYWNoZWQvYnVmZmVyZWQiIGZvciBwZXJmb3JtYW5jZQpyZWFzb25zIGFuZCBub3QgInVuY2Fj
aGVkL3VuYnVmZmVyZWQiLiAgSXQncyBxdWl0ZSBsaXRlcmFsbHkgdGhlCmRpZmZlcmVuY2UgYmV0
d2VlbiBjb25zb2xlIHNjcm9sbGluZyBiZWluZyB1c2FibGUgYW5kIHRvdGFsbHkgdW51c2FibGUu
CgpHaXZlbiB3aGF0IEkndmUgc2FpZCBhYm92ZSwgc3dpdGNoaW5nIHRvIHVzaW5nIGJ1ZmZlcmVk
IG1vZGUgZm9yIG5vcm1hbApETUEgbWFwcGluZ3MgaXMgZGF0YS1jb3JydXB0aW5nIHJpc2t5IC0g
YXMgaW4geW91ciBmaWxlc3lzdGVtIGNvdWxkIGdldApmcmllZC4gIEkgZG9uJ3QgdGhpbmsgd2Ug
c2hvdWxkIHBsYXkgZmFzdCBhbmQgbG9vc2Ugd2l0aCBwZW9wbGUncyBkYXRhCmJ5IHJhbmRvbWx5
IGNoYW5naW5nIHRoYXQgImJlY2F1c2Ugd2UnZCBsaWtlIHRvIiwgYW5kIEkgZG9uJ3Qgc2VlIHRo
YXQKc2NyZXdpbmcgdGhlIGNvbnNvbGUgaXMgcmVhbGx5IGFuIG9wdGlvbiBlaXRoZXIuCgotLSAK
Uk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRwczovL3d3dy5hcm1saW51eC5vcmcudWsvZGV2ZWxvcGVy
L3BhdGNoZXMvCkZUVEMgYnJvYWRiYW5kIGZvciAwLjhtaWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5
bmMgYXQgMTIuMU1icHMgZG93biA2MjJrYnBzIHVwCkFjY29yZGluZyB0byBzcGVlZHRlc3QubmV0
OiAxMS45TWJwcyBkb3duIDUwMGticHMgdXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
