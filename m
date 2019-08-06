Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C30983656
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3i+zojKK3Z1Bg7a2UYoftvsZR2jYi/oYzUwc8NGMX+8=; b=t8xlyKC4c3nRt7
	gifonjgqIuL/7zfDitoQpqVjpnz1XCuXFEcqtZtFPHK1HL5ec9BWwVH4gOdWcPycHKu5an1f5SmqS
	fKMjv1ALHJ4DNtfAQZGQJ6b0Z0L1xF9abVw7tNcRK593XAB9pvENQXY9kJ/dHn85Z+WMjXCJ1SpzM
	6H4xBuJWQU74yaJHUP5y7fXDQ3cf9Oo47Q6JcAtLyTalICX/vF2tAUK8hTQBilONZ9B+JhVapvHBw
	v+9fx96sLv2aPNzCymOI+AvZit66baw5SsVY79dGI9gPrFDiuYViqJJxKT7XRUlTzd6nrcQqpy3ho
	3S7Kg3CgYyopGenxNVqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv21O-0001DH-DM; Tue, 06 Aug 2019 16:09:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv21E-0001Cn-Ij
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 16:09:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 981C320679;
 Tue,  6 Aug 2019 16:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565107739;
 bh=v0k57mTDkfDZaJNeGslFkP/p8/lZF5e0EN6d5zbeXJQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QwYLVlSCvE5RkEzMUkxya/17HqX4ysozqlmTdPTPO5zBru0s7lkz8yZHQi0kE7QPa
 J3nsmuubbBmALdIHYivFeIBCfxouhnJ+9TQ0HskYPSpEl7ePJW8QWsSwlXZEvwICkA
 ksIz9c1GMc0XmZhCNFQc096KaCxj+m1SMXGhPUZc=
Date: Tue, 6 Aug 2019 17:08:54 +0100
From: Will Deacon <will@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] dma-mapping: fix page attributes for dma_mmap_*
Message-ID: <20190806160854.htk67msiyadlrl4m@willie-the-truck>
References: <20190801142118.21225-1-hch@lst.de>
 <20190801142118.21225-2-hch@lst.de>
 <20190801162305.3m32chycsdjmdejk@willie-the-truck>
 <20190801163457.GB26588@lst.de>
 <20190801164411.kmsl4japtfkgvzxe@willie-the-truck>
 <20190802081441.GA9725@lst.de>
 <20190802103803.3qrbhqwxlasojsco@willie-the-truck>
 <20190803064812.GA29746@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803064812.GA29746@lst.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_090900_656195_46A791AC 
X-CRM114-Status: GOOD (  22.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linuxppc-dev@lists.ozlabs.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Catalin Marinas <catalin.marinas@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBBdWcgMDMsIDIwMTkgYXQgMDg6NDg6MTJBTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gT24gRnJpLCBBdWcgMDIsIDIwMTkgYXQgMTE6Mzg6MDNBTSArMDEwMCwgV2ls
bCBEZWFjb24gd3JvdGU6Cj4gPiAKPiA+IFNvIHRoaXMgYm9pbHMgZG93biB0byBhIHRlcm1pbm9s
b2d5IG1pc21hdGNoLiBUaGUgQXJtIGFyY2hpdGVjdHVyZSBkb2Vzbid0IGhhdmUKPiA+IGFueXRo
aW5nIGNhbGxlZCAid3JpdGUgY29tYmluZSIsIHNvIGluIExpbnV4IHdlIGluc3RlYWQgcHJvdmlk
ZSB3aGF0IHRoZSBBcm0KPiA+IGFyY2hpdGVjdHVyZSBjYWxscyAiTm9ybWFsIG5vbi1jYWNoZWFi
bGUiIG1lbW9yeSBmb3IgcGdwcm90X3dyaXRlY29tYmluZSgpLgo+ID4gQW1vbmdzdCBvdGhlciB0
aGluZ3MsIHRoaXMgbWVtb3J5IHR5cGUgcGVybWl0cyBzcGVjdWxhdGlvbiwgdW5hbGlnbmVkIGFj
Y2Vzc2VzCj4gPiBhbmQgbWVyZ2luZyBvZiB3cml0ZXMuIEkgZm91bmQgc29tZXRoaW5nIGluIHRo
ZSBhcmNoaXRlY3R1cmUgc3BlYyBhYm91dAo+ID4gbm9uLWNhY2hhYmxlIG1lbW9yeSwgYnV0IGl0
J3Mgd3JpdHRlbiBpbiBBcm1nbGlzaFsxXS4KPiA+IAo+ID4gcGdwcm90X25vbmNhY2hlZCgpLCBv
biB0aGUgb3RoZXIgaGFuZCwgcHJvdmlkZXMgd2hhdCB0aGUgYXJjaGl0ZWN0dXJlIGNhbGxzCj4g
PiBTdHJvbmdseSBPcmRlcmVkIG9yIERldmljZS1uR25SbkUgbWVtb3J5LiBUaGlzIGlzIGludGVu
ZGVkIGZvciBtYXBwaW5nIE1NSU8KPiA+IChpLmUuIFBDSSBjb25maWcgc3BhY2UpIGFuZCB0aGVy
ZWZvcmUgZm9yYmlkcyBzcGVjdWxhdGlvbiwgcHJlc2VydmVzIGFjY2Vzcwo+ID4gc2l6ZSwgcmVx
dWlyZXMgc3RyaWN0IGFsaWdubWVudCBhbmQgYWxzbyBmb3JjZXMgd3JpdGUgcmVzcG9uc2VzIHRv
IGNvbWUgZnJvbQo+ID4gdGhlIGVuZHBvaW50Lgo+ID4gCj4gPiBJIHRoaW5rIHRoZSBuYW1pbmcg
bWlzbWF0Y2ggaXMgaGlzdG9yaWNhbCwgYnV0IG9uIGFybTY0IHdlIHdhbnRlZCB0byB1c2UgdGhl
Cj4gPiBzYW1lIG5hbWVzIGFzIGFybTMyIHNvIHRoYXQgYW55IGRyaXZlcnMgdXNpbmcgdGhlc2Ug
dGhpbmdzIGRpcmVjdGx5IHdvdWxkIGdldAo+ID4gdGhlIHNhbWUgYmVoYXZpb3VyLgo+IAo+IFRo
YXQgYWxsIG1ha2VzIHNlbnNlLCBidXQgaXQgdG90YWxseSBuZWVkcyBhIGNvbW1lbnQuICBJJ2xs
IHRyeSB0byBkcmFmdAo+IG9uZSBiYXNlZCBvbiB0aGlzLiAgSSd2ZSBhbHNvIGxvb2tlZCBhdCB0
aGUgYXJtMzIgY29kZSBhIGJpdCBtb3JlLCBhbmQKPiBpdCBzZWVtcyBhcm0gYWx3YXlzICg/KSBz
dXBwb3J0ZWQgTm9ybWFsIG5vbi1jYWNoZWFibGUgYXR0cmlidXRlLCBidXQKPiBMaW51eCBvbmx5
IG9wdGlvbmFsbHkgdXNlcyBpdCBmb3IgYXJtIHY2KyBiZWNhdXNlIG9mIGZlYXJzIG9mIGRyaXZl
cnMKPiBtaXNzaW5nIGJhcnJpZXJzLgoKSSB0aGluayBpdCB3YXMgYWxzbyB0byBkbyB3aXRoIGFs
aWFzaW5nLCBidXQgSSBkb24ndCByZWNhbGwgYWxsIG9mIHRoZQpkZXRhaWxzLgoKPiBUaGUgb3Ro
ZXIgcmVhbGx5IHdlaXJkIHRoaW5ncyBpcyB0aGF0IGluIGFybTMyCj4gcGdwcm90X2RtYWNvaGVy
ZW50IGluY3VkZXMgdGhlIExfUFRFX1hOIGJpdCwgd2hpY2ggZnJvbSBteSB1bmRlcnN0YW5kaW5n
Cj4gaXMgdGhlIG5vLWV4ZWN0dXJlIGJpdCwgYnV0IHBncHJvdF93cml0ZWNvbWJpbmUgZG9lcyBu
b3QuICBUaGlzIHNlZW1zIHRvCj4gbm90IHZlcnkgdW5pbnRlbnRpb25hbC4gIFNvIG1pbnVzIHRo
YXQgdGhlIHdob2xlIERNQV9BVFRSX1dSSVRFX0NPTULQhk5FCj4gc2VlbXMgdG8gYmUgYWJvdXQg
ZmxhZ2dpbmcgb2xkIGFybSBzcGVjaWZpYyBkcml2ZXJzIGFzIGhhdmluZyB0aGUgcHJvcGVyCj4g
YmFycmllcnMgaW4gcGxhY2VzIGFuZCBvdGhlcndpc2UgaXMgYSBuby1vcC4KCkkgdGhpbmsgaXQg
b25seSBtYXR0ZXJzIGZvciBBcm12NyBDUFVzLCBidXQgeWVzLCB3ZSBzaG91bGQgcHJvYmFibHkg
YmUKc2V0dGluZyBMX1BURV9YTiBmb3IgYm90aCBvZiB0aGVzZSBtZW1vcnkgdHlwZXMuCgo+IEhl
cmUgaXMgbXkgdGVudGF0aXZlIHBsYW46Cj4gCj4gIC0gcmVzcGluIHRoaXMgcGF0Y2ggd2l0aCBh
IHNtYWxsIGZpeCB0byBoYW5kbGUgdGhlCj4gICAgRE1BX0FUVFJfTk9OX0NPTlNJU1RFTlQgKGFz
IGluIGlnbm9yZSBpdCB1bmxlc3MgYWN0dWFsbHkgc3VwcG9ydGVkKSwKPiAgICBidXQga2VlcCB0
aGUgbmFtZSBhcy1pcyB0byBhdm9pZCBjaHVybi4gIFRoaXMgc2hvdWxkIGFsbG93IDUuMwo+ICAg
IGluY2x1c2lvbiBhbmQgYmFja3BvcnRzCj4gIC0gcmVtb3ZlIERNQV9BVFRSX1dSSVRFX0NPTUJJ
TkUgc3VwcG9ydCBmcm9tIG1pcHMsIHByb2JhYmx5IGFsc28gNS4zCj4gICAgbWF0ZXJpYWwuCj4g
IC0gbW92ZSBhbGwgYXJjaGl0ZWN0dXJlcyBidXQgYXJtIG92ZXIgdG8ganVzdCBkZWZpbmUKPiAg
ICBwZ3Byb3RfZG1hY29oZXJlbnQsIGluY2x1ZGluZyBhIGNvbW1lbnQgd2l0aCB0aGUgYWJvdmUg
ZXhwbGFuYXRpb24KPiAgICBmb3IgYXJtNjQuCgpUaGF0IHdvdWxkIGJlIGdyZWF0LCB0aGFua3Mu
Cgo+ICAtIG1ha2UgRE1BX0FUVFJfV1JJVEVfQ09NQklORSBhIG5vLW9wIGFuZCBzY2hlZHVsZSBp
dCBmb3IgcmVtb3ZhbCwKPiAgICB0aHVzIHJlbW92aW5nIHRoZSBsYXN0IGluc3RhbmNlcyBvZiBh
cmNoX2RtYV9tbWFwX3BncHJvdAoKQWxsIHNvdW5kcyBnb29kIHRvIG1lLCBhbHRob3VnaCBJIHN1
cHBvc2UgMzItYml0IEFybSBwbGF0Zm9ybXMgd2l0aG91dApDT05GSUdfQVJNX0RNQV9NRU1fQlVG
RkVSQUJMRSBtYXkgcnVuIGludG8gaXNzdWVzIGlmIERNQV9BVFRSX1dSSVRFX0NPTUJJTkUKZGlz
YXBwZWFycy4gT25seSBvbmUgd2F5IHRvIGZpbmQgb3V0Li4uCgpXaWxsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
