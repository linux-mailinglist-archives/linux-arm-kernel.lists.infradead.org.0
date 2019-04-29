Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EABCCEA95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 21:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XuqWOvx4du3X7F7FOyLELKce9Up20lfVNoyfm5FQR2o=; b=hUTzSeUDcYuIfQ
	6LDPUJImnth+pQZh4dLds+WPzPy9gLfg7jHujyHts+L2XmAb1+mGrd84LWPR/ozZw3VOXiggWRbOP
	6PdGwQDgvKrU79lz9upIf3707slnRDkFFztgbdkPPN+sqxrgdJxZm+ULQPYn+yA+140kabrma98+r
	+B85pBGYLSLei0eJLXpA2u78J0NLSpyZRdw/ly5yNFBvkmrCC2xNmuOThumnqWncHzYtxItUNK7ZR
	wtwu4ApLupMCeoN/qeo7/9ODIKTizMUNgB/ONjb2yxDMWiky9zjq3KmwkT/JiG328cWznehr+xNwW
	rgGpVvhOtwaWLOpgIqZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLBX9-0001hk-OY; Mon, 29 Apr 2019 19:01:47 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLBX2-0001gr-DS
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 19:01:42 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 978DE68AFE; Mon, 29 Apr 2019 21:01:20 +0200 (CEST)
Date: Mon, 29 Apr 2019 21:01:20 +0200
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 02/26] arm64/iommu: improve mmap bounds checking
Message-ID: <20190429190120.GA5637@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-3-hch@lst.de>
 <306b7a19-4eb5-d1d8-5250-40f3ba9bca16@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <306b7a19-4eb5-d1d8-5250-40f3ba9bca16@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_120140_603261_A67D8883 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBcHIgMjksIDIwMTkgYXQgMDE6MzU6NDZQTSArMDEwMCwgUm9iaW4gTXVycGh5IHdy
b3RlOgo+IE9uIDIyLzA0LzIwMTkgMTg6NTksIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+PiBU
aGUgbnJfcGFnZXMgY2hlY2tzIHNob3VsZCBiZSBkb25lIGZvciBhbGwgbW1hcCByZXF1ZXN0cywg
bm90IGp1c3QgdGhvc2UKPj4gdXNpbmcgcmVtYXBfcGZuX3JhbmdlLgo+Cj4gSSB0aGluayBpdCBw
cm9iYWJseSBtYWtlcyBzZW5zZSBub3cgdG8ganVzdCBzcXVhc2ggdGhpcyB3aXRoICMyMiBvbmUg
d2F5IG9yIAo+IHRoZSBvdGhlciwgYnV0IGlmIHlvdSByZWFsbHkgcmVhbGx5IHN0aWxsIHdhbnQg
dG8ga2VlcCBpdCBhcyBhIHNlcGFyYXRlIAo+IHBhdGNoIHdpdGggYSBtaXNsZWFkaW5nIGNvbW1p
dCBtZXNzYWdlIHRoZW4gSSdtIHdpbGxpbmcgdG8ga2VlcCBteSAKPiBjb21wbGFpbnRzIHRvIG15
c2VsZiA6KQoKV2VsbCwgSSBzcGxpdCB0aGlzIG91dCBpbiByZXNwb25zZSB0byB5b3VyIGVhcmxp
ZXIgY29tbWVudHMsIHNvIGlmIHlvdQpwcmVmZXIgaXQgc3F1YXNoZdGVIGJhY2sgaW4gSSBjYW4g
ZG8gdGhhdC4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
