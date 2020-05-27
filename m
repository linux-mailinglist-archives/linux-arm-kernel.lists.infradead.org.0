Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFD21E3D07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftkHfF/IyW16KjvbKfrzn/zdhN2LXpT2g+BZ4E9ke7Y=; b=rzrxplVdJ8edfl
	/g9sBn717jg5PhY892OlXbQsJMM5FlAIftWpQk+P+BmI34QsigkhI33Kh0w37No1qR/jYvv7aTjQT
	9L4F12AZ7yarKJBMrN3OhF6EAf4DDM7V2FARngnG0Bd/eHmIG0VzSu3AJaxqK4lMUNyaE3e4Up0wW
	tyXPG4zszyxzuEaOvL3XtK/uoCAKdf3Qszy1dGc0DdvIxRcB8iSDG7Le75G2GxCs0OMb6LzizqfY0
	bAEAFb/vd8pt+RSuAGE9vUv0+PjWzDvoDfOZbr7dinDXZ+Xu+V/U+xk1fToBUpcIh+AWHiz2if/61
	s23LUD4oAYTrqODuyx6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrwr-0006vx-Kc; Wed, 27 May 2020 09:02:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrwX-0006tK-BC
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:01:48 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5CC1F20723;
 Wed, 27 May 2020 09:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590570104;
 bh=Ly0PPgLoVOdP2MHz53CmBLAFstCS5mfpl1WpLZ15gps=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=onCoAOhnzHO9z1pUO0//RWYJLmKfFMRTqXoBIY+gdObr+17e6nwXXsvWN0RMThy9e
 uwLwAnL2f9xW9oLDKOWZn/Nzmaln1ON7ULTIQPpaM1zsoyYnkrxXXpwhUkArhx2hE2
 yEEIJrw8f7A1SPpbRQGH1EvlHjbsZMtVrqHdWmVk=
Date: Wed, 27 May 2020 11:01:42 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Zhangfei Gao <zhangfei.gao@linaro.org>
Subject: Re: [PATCH 1/2] PCI: Introduce PCI_FIXUP_IOMMU
Message-ID: <20200527090142.GC179718@kroah.com>
References: <1590493749-13823-1-git-send-email-zhangfei.gao@linaro.org>
 <1590493749-13823-2-git-send-email-zhangfei.gao@linaro.org>
 <20200526144644.GA20784@infradead.org>
 <39144dc0-3b04-3127-978b-bd8487dd06e0@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39144dc0-3b04-3127-978b-bd8487dd06e0@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_020145_455069_C31D6603 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Christoph Hellwig <hch@infradead.org>, linux-acpi@vger.kernel.org,
 Wangzhou <wangzhou1@hisilicon.com>, linux-crypto@vger.kernel.org,
 Hanjun Guo <guohanjun@huawei.com>, Bjorn Helgaas <bhelgaas@google.com>,
 kenneth-lee-2012@foxmail.com, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMjYsIDIwMjAgYXQgMTE6MDk6NTdQTSArMDgwMCwgWmhhbmdmZWkgR2FvIHdy
b3RlOgo+IEhpLCBDaHJpc3RvcGgKPiAKPiBPbiAyMDIwLzUvMjYg5LiL5Y2IMTA6NDYsIENocmlz
dG9waCBIZWxsd2lnIHdyb3RlOgo+ID4gT24gVHVlLCBNYXkgMjYsIDIwMjAgYXQgMDc6NDk6MDhQ
TSArMDgwMCwgWmhhbmdmZWkgR2FvIHdyb3RlOgo+ID4gPiBTb21lIHBsYXRmb3JtIGRldmljZXMg
YXBwZWFyIGFzIFBDSSBidXQgYXJlIGFjdHVhbGx5IG9uIHRoZSBBTUJBIGJ1cywKPiA+ID4gYW5k
IHRoZXkgbmVlZCBmaXh1cCBpbiBkcml2ZXJzL3BjaS9xdWlya3MuYyBoYW5kbGluZyBpb21tdV9m
d25vZGUuCj4gPiA+IEhlcmUgaW50cm9kdWNpbmcgUENJX0ZJWFVQX0lPTU1VLCB3aGljaCBpcyBj
YWxsZWQgYWZ0ZXIgaW9tbXVfZndub2RlCj4gPiA+IGlzIGFsbG9jYXRlZCwgaW5zdGVhZCBvZiBy
ZXVzaW5nIFBDSV9GSVhVUF9GSU5BTCBzaW5jZSBpdCB3aWxsIHNsb3cKPiA+ID4gZG93biBpb21t
dSBwcm9iaW5nIGFzIGFsbCBkZXZpY2VzIGluIGZpeHVwIGZpbmFsIGxpc3Qgd2lsbCBiZQo+ID4g
PiByZXByb2Nlc3NlZC4KPiA+IFdobyBpcyBnb2luZyB0byB1c2UgdGhpcz8gIEkgZG9uJ3Qgc2Vl
IGEgc2luZ2xlIHVzZXIgaW4gdGhlIHNlcmllcy4KPiBXZSB3aWxsIGFkZCBpb21tdSBmaXh1cCBp
biBkcml2ZXJzL3BjaS9xdWlya3MuYywgaGFuZGxpbmcKPiAKPiBmd3NwZWMtPmNhbl9zdGFsbCwg
d2hpY2ggaXMgaW50cm9kdWNlZCBpbgo+IAo+IGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3Rz
L2xpbnV4LXBjaS9tc2c5NDU1OS5odG1sCj4gCj4gVW5mb3J0dW5hdGVseSwgdGhlIHBhdGNoIGRv
ZXMgbm90IGNhdGNoIHY1LjgsIHNvIHdlIGhhdmUgdG8gd2FpdC4KPiBBbmQgd2Ugd2FudCB0byBj
aGVjayB3aGV0aGVyIHRoaXMgaXMgYSByaWdodCBtZXRob2QgdG8gc29sdmUgdGhpcyBpc3N1ZS4K
CldlIGNhbid0IHRha2UgbmV3IGFwaXMgd2l0aG91dCBhIHJlYWwgdXNlciwgc28gcGxlYXNlIHN1
Ym1pdCB0aGVtIGFsbCBhdApvbmNlLgoKdGhhbmtzLAoKZ3JlZyBrLWgKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
