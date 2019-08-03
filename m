Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 184C3804C2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 08:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/NEdsubTvNyUcRFKmWK4cjCC21yiQlFa+qZWlv9dIA=; b=Tkh4DpUEDSu5N2
	OajwLQx0HNQtBhMdb0ItkwlVawvLtjC9H8NFI271fJGzkOQQ2OBAAVFQPQjXB6l4LoRvh3nEDox63
	8AAe/XWzsUTZXyBNFwQAR0VFMtnCSz+/BTPExGkOHGdxMT70vom8mVfkagrQayxMLL+wQzljfDeHQ
	ntT2kevIufEUgzZarIvAojOL0ZDfPwQbpTOcQWGNPASwPs7LSpq6OSkIJiYw6zY2n1sA+DYgGsfHq
	zAvq5VFxgEkkOFxR00tKKhe6CNBqbAx7hI6Q2aNtqIK9vjtRYlYsbTZwLvUzpkI/2GaXVMhQgmPn0
	qtkcqUQbMFKGoYTFciZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htnqC-0006eW-GZ; Sat, 03 Aug 2019 06:48:32 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htnq1-0006dl-F3
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 06:48:23 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3208868BFE; Sat,  3 Aug 2019 08:48:13 +0200 (CEST)
Date: Sat, 3 Aug 2019 08:48:12 +0200
From: Christoph Hellwig <hch@lst.de>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] dma-mapping: fix page attributes for dma_mmap_*
Message-ID: <20190803064812.GA29746@lst.de>
References: <20190801142118.21225-1-hch@lst.de>
 <20190801142118.21225-2-hch@lst.de>
 <20190801162305.3m32chycsdjmdejk@willie-the-truck>
 <20190801163457.GB26588@lst.de>
 <20190801164411.kmsl4japtfkgvzxe@willie-the-truck>
 <20190802081441.GA9725@lst.de>
 <20190802103803.3qrbhqwxlasojsco@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802103803.3qrbhqwxlasojsco@willie-the-truck>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_234821_659235_81A93A62 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Shawn Anastasio <shawn@anastas.io>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Catalin Marinas <catalin.marinas@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgMDIsIDIwMTkgYXQgMTE6Mzg6MDNBTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gCj4gU28gdGhpcyBib2lscyBkb3duIHRvIGEgdGVybWlub2xvZ3kgbWlzbWF0Y2guIFRo
ZSBBcm0gYXJjaGl0ZWN0dXJlIGRvZXNuJ3QgaGF2ZQo+IGFueXRoaW5nIGNhbGxlZCAid3JpdGUg
Y29tYmluZSIsIHNvIGluIExpbnV4IHdlIGluc3RlYWQgcHJvdmlkZSB3aGF0IHRoZSBBcm0KPiBh
cmNoaXRlY3R1cmUgY2FsbHMgIk5vcm1hbCBub24tY2FjaGVhYmxlIiBtZW1vcnkgZm9yIHBncHJv
dF93cml0ZWNvbWJpbmUoKS4KPiBBbW9uZ3N0IG90aGVyIHRoaW5ncywgdGhpcyBtZW1vcnkgdHlw
ZSBwZXJtaXRzIHNwZWN1bGF0aW9uLCB1bmFsaWduZWQgYWNjZXNzZXMKPiBhbmQgbWVyZ2luZyBv
ZiB3cml0ZXMuIEkgZm91bmQgc29tZXRoaW5nIGluIHRoZSBhcmNoaXRlY3R1cmUgc3BlYyBhYm91
dAo+IG5vbi1jYWNoYWJsZSBtZW1vcnksIGJ1dCBpdCdzIHdyaXR0ZW4gaW4gQXJtZ2xpc2hbMV0u
Cj4gCj4gcGdwcm90X25vbmNhY2hlZCgpLCBvbiB0aGUgb3RoZXIgaGFuZCwgcHJvdmlkZXMgd2hh
dCB0aGUgYXJjaGl0ZWN0dXJlIGNhbGxzCj4gU3Ryb25nbHkgT3JkZXJlZCBvciBEZXZpY2Utbkdu
Um5FIG1lbW9yeS4gVGhpcyBpcyBpbnRlbmRlZCBmb3IgbWFwcGluZyBNTUlPCj4gKGkuZS4gUENJ
IGNvbmZpZyBzcGFjZSkgYW5kIHRoZXJlZm9yZSBmb3JiaWRzIHNwZWN1bGF0aW9uLCBwcmVzZXJ2
ZXMgYWNjZXNzCj4gc2l6ZSwgcmVxdWlyZXMgc3RyaWN0IGFsaWdubWVudCBhbmQgYWxzbyBmb3Jj
ZXMgd3JpdGUgcmVzcG9uc2VzIHRvIGNvbWUgZnJvbQo+IHRoZSBlbmRwb2ludC4KPiAKPiBJIHRo
aW5rIHRoZSBuYW1pbmcgbWlzbWF0Y2ggaXMgaGlzdG9yaWNhbCwgYnV0IG9uIGFybTY0IHdlIHdh
bnRlZCB0byB1c2UgdGhlCj4gc2FtZSBuYW1lcyBhcyBhcm0zMiBzbyB0aGF0IGFueSBkcml2ZXJz
IHVzaW5nIHRoZXNlIHRoaW5ncyBkaXJlY3RseSB3b3VsZCBnZXQKPiB0aGUgc2FtZSBiZWhhdmlv
dXIuCgpUaGF0IGFsbCBtYWtlcyBzZW5zZSwgYnV0IGl0IHRvdGFsbHkgbmVlZHMgYSBjb21tZW50
LiAgSSdsbCB0cnkgdG8gZHJhZnQKb25lIGJhc2VkIG9uIHRoaXMuICBJJ3ZlIGFsc28gbG9va2Vk
IGF0IHRoZSBhcm0zMiBjb2RlIGEgYml0IG1vcmUsIGFuZAppdCBzZWVtcyBhcm0gYWx3YXlzICg/
KSBzdXBwb3J0ZWQgTm9ybWFsIG5vbi1jYWNoZWFibGUgYXR0cmlidXRlLCBidXQKTGludXggb25s
eSBvcHRpb25hbGx5IHVzZXMgaXQgZm9yIGFybSB2NisgYmVjYXVzZSBvZiBmZWFycyBvZiBkcml2
ZXJzCm1pc3NpbmcgYmFycmllcnMuICBUaGUgb3RoZXIgcmVhbGx5IHdlaXJkIHRoaW5ncyBpcyB0
aGF0IGluIGFybTMyCnBncHJvdF9kbWFjb2hlcmVudCBpbmN1ZGVzIHRoZSBMX1BURV9YTiBiaXQs
IHdoaWNoIGZyb20gbXkgdW5kZXJzdGFuZGluZwppcyB0aGUgbm8tZXhlY3R1cmUgYml0LCBidXQg
cGdwcm90X3dyaXRlY29tYmluZSBkb2VzIG5vdC4gIFRoaXMgc2VlbXMgdG8Kbm90IHZlcnkgdW5p
bnRlbnRpb25hbC4gIFNvIG1pbnVzIHRoYXQgdGhlIHdob2xlIERNQV9BVFRSX1dSSVRFX0NPTULQ
hk5FCnNlZW1zIHRvIGJlIGFib3V0IGZsYWdnaW5nIG9sZCBhcm0gc3BlY2lmaWMgZHJpdmVycyBh
cyBoYXZpbmcgdGhlIHByb3BlcgpiYXJyaWVycyBpbiBwbGFjZXMgYW5kIG90aGVyd2lzZSBpcyBh
IG5vLW9wLgoKSGVyZSBpcyBteSB0ZW50YXRpdmUgcGxhbjoKCiAtIHJlc3BpbiB0aGlzIHBhdGNo
IHdpdGggYSBzbWFsbCBmaXggdG8gaGFuZGxlIHRoZQogICBETUFfQVRUUl9OT05fQ09OU0lTVEVO
VCAoYXMgaW4gaWdub3JlIGl0IHVubGVzcyBhY3R1YWxseSBzdXBwb3J0ZWQpLAogICBidXQga2Vl
cCB0aGUgbmFtZSBhcy1pcyB0byBhdm9pZCBjaHVybi4gIFRoaXMgc2hvdWxkIGFsbG93IDUuMwog
ICBpbmNsdXNpb24gYW5kIGJhY2twb3J0cwogLSByZW1vdmUgRE1BX0FUVFJfV1JJVEVfQ09NQklO
RSBzdXBwb3J0IGZyb20gbWlwcywgcHJvYmFibHkgYWxzbyA1LjMKICAgbWF0ZXJpYWwuCiAtIG1v
dmUgYWxsIGFyY2hpdGVjdHVyZXMgYnV0IGFybSBvdmVyIHRvIGp1c3QgZGVmaW5lCiAgIHBncHJv
dF9kbWFjb2hlcmVudCwgaW5jbHVkaW5nIGEgY29tbWVudCB3aXRoIHRoZSBhYm92ZSBleHBsYW5h
dGlvbgogICBmb3IgYXJtNjQuCiAtIG1ha2UgRE1BX0FUVFJfV1JJVEVfQ09NQklORSBhIG5vLW9w
IGFuZCBzY2hlZHVsZSBpdCBmb3IgcmVtb3ZhbCwKICAgdGh1cyByZW1vdmluZyB0aGUgbGFzdCBp
bnN0YW5jZXMgb2YgYXJjaF9kbWFfbW1hcF9wZ3Byb3QKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
