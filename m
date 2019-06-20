Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E044CC4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 12:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eINFhsnNCqxcM+zySVaO0yUYebStmoi6YXRVEh+drQk=; b=tl95RvK5fTaa1C
	sfOn3NRWYM+KD2X9gEqYlD9idH8Dz3aueYyuNIDXe07SsuCgX0/Hyy6AXHc4/ugzxJZEFSJJ/Mtc1
	j2pADZ7pq6TWPvSWBR2r3NEtX1BkHTULgPNc/2r+11HQ5VBJrscjGmBVdFItccS0L5q81Uvkv/XqM
	33XFLEO8HIzBSWO48F49v4c7s53p5lzJPqo0M7tJyewP6uGqc0BQIrZoQqFBee+lZL9/u0HbUN8yJ
	iAg5Q6gh141HH7nkaSl636Oxc65BIywW6dXAQg6MbwTJPscu7r9qN23quPnqR2iLE/Qn6vjIOt2Ol
	YgFU5Azsb9d+6gHu1GLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdugE-0006eJ-BM; Thu, 20 Jun 2019 10:52:34 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hduff-0006Tn-Im
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 10:52:01 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 558CF68B20; Thu, 20 Jun 2019 12:51:24 +0200 (CEST)
Date: Thu, 20 Jun 2019 12:51:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: use exact allocation for dma coherent memory
Message-ID: <20190620105124.GA25233@lst.de>
References: <20190614134726.3827-1-hch@lst.de> <20190617082148.GF28859@kadam>
 <20190617083342.GA7883@lst.de> <20190619162903.GF9360@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619162903.GF9360@ziepe.ca>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_035200_058020_1411FD39 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Christoph Hellwig <hch@lst.de>, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux-rdma@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, H Hartley Sweeten <hsweeten@visionengravers.com>,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMTksIDIwMTkgYXQgMDE6Mjk6MDNQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+ID4gWWVzLiAgVGhpcyB3aWxsIGJsb3cgdXAgYmFkbHkgb24gbWFueSBwbGF0Zm9y
bXMsIGFzIHNxLT5xdWV1ZQo+ID4gbWlnaHQgYmUgdm1hcHBlZCwgaW9yZW1hcHBlZCwgY29tZSBm
cm9tIGEgcG9vbCB3aXRob3V0IHBhZ2UgYmFja2luZy4KPiAKPiBHYWgsIHRoaXMgYWRkciBnZXRz
IGZlZCBpbnRvIGlvX3JlbWFwX3Bmbl9yYW5nZS9yZW1hcF9wZm5fcmFuZ2UgdG9vLi4KPiAKPiBQ
b3RudXJpLCB5b3Ugc2hvdWxkIGZpeCB0aGlzLi4gCj4gCj4gWW91IHByb2JhYmx5IG5lZWQgdG8g
dXNlIGRtYV9tbWFwX2Zyb21fZGV2X2NvaGVyZW50KCkgaW4gdGhlIG1tYXAgPwoKVGhlIGZ1bmN0
aW9uIHRvIHVzZSBpcyBkbWFfbW1hcF9jb2hlcmVudCwgZG1hX21tYXBfZnJvbV9kZXZfY29oZXJl
bnQgaXMKanVzdCBhbiBpbnRlcm5hbCBoZWxwZXIuCgpUaGF0IGJlacWLIHNhaWQgdGhlIGRyaXZl
cnMvaW5maW5pYmFuZCBjb2RlIGhhcyBhIGxvdCBvZgoqcmVtYXBfcGZuX3JhbmdlLCBhbmQgYSBs
b3Qgb2YgdGhlbSBsb29rIGxpa2UgdGhleSBtaWdodCBiZSBmb3IKRE1BIG1lbW9yeS4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
