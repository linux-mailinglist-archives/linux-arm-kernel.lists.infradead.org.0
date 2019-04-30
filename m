Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2A0F5D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 13:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9JwlA+7zX7LzwCmODj5mKmUES9x2gBWyQcolztdaVmY=; b=guqXwdkkRgbUmnLGPRAfItBZ1
	Zni2dJ98bc9/NgQO00JJDpFLdHw1d3gmQxrCXFlEkbCnNgETnDmALTF/q08C/wZzovKi4OoLWTMFO
	PAdlSc4xBdrSCmv7l/ImGCwksZpe3fwfPx95qxWBx08e/Dw9FZroz7EUeuUE2rB5f+AMdw6xjbXCq
	nDV9gC2rzJikZclP0qTM+h/PA7g/xngLAlgHfw4N01jQtAdflCmx9epvXayo+ASQ+U0BND/ESgK3a
	2JuRhmZkucb6MapUWW9sFweXryaPTPZCODSV+neQwIWWQPt4/gJR7zrQ5ksmbWdmNtQ3qhzp6DC7S
	Aw3KySAzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLR5i-0000Rp-Db; Tue, 30 Apr 2019 11:38:30 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLR5b-0000RO-Dp
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 11:38:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C47080D;
 Tue, 30 Apr 2019 04:38:22 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 164F23F5C1;
 Tue, 30 Apr 2019 04:38:20 -0700 (PDT)
Subject: Re: [PATCH 02/26] arm64/iommu: improve mmap bounds checking
To: Christoph Hellwig <hch@lst.de>
References: <20190422175942.18788-1-hch@lst.de>
 <20190422175942.18788-3-hch@lst.de>
 <306b7a19-4eb5-d1d8-5250-40f3ba9bca16@arm.com> <20190429190120.GA5637@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a96caa67-ac59-9ce8-aabc-2601c9a10203@arm.com>
Date: Tue, 30 Apr 2019 12:38:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429190120.GA5637@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_043823_502840_273117E6 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjkvMDQvMjAxOSAyMDowMSwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6Cj4gT24gTW9uLCBB
cHIgMjksIDIwMTkgYXQgMDE6MzU6NDZQTSArMDEwMCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBP
biAyMi8wNC8yMDE5IDE4OjU5LCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPj4+IFRoZSBucl9w
YWdlcyBjaGVja3Mgc2hvdWxkIGJlIGRvbmUgZm9yIGFsbCBtbWFwIHJlcXVlc3RzLCBub3QganVz
dCB0aG9zZQo+Pj4gdXNpbmcgcmVtYXBfcGZuX3JhbmdlLgo+Pgo+PiBJIHRoaW5rIGl0IHByb2Jh
Ymx5IG1ha2VzIHNlbnNlIG5vdyB0byBqdXN0IHNxdWFzaCB0aGlzIHdpdGggIzIyIG9uZSB3YXkg
b3IKPj4gdGhlIG90aGVyLCBidXQgaWYgeW91IHJlYWxseSByZWFsbHkgc3RpbGwgd2FudCB0byBr
ZWVwIGl0IGFzIGEgc2VwYXJhdGUKPj4gcGF0Y2ggd2l0aCBhIG1pc2xlYWRpbmcgY29tbWl0IG1l
c3NhZ2UgdGhlbiBJJ20gd2lsbGluZyB0byBrZWVwIG15Cj4+IGNvbXBsYWludHMgdG8gbXlzZWxm
IDopCj4gCj4gV2VsbCwgSSBzcGxpdCB0aGlzIG91dCBpbiByZXNwb25zZSB0byB5b3VyIGVhcmxp
ZXIgY29tbWVudHMsIHNvIGlmIHlvdQo+IHByZWZlciBpdCBzcXVhc2hl0ZUgYmFjayBpbiBJIGNh
biBkbyB0aGF0Li4KCkFGQUlDUyBJIG9ubHkgZXZlciBzdWdnZXN0ZWQgc3BsaXR0aW5nIHRoZSBv
cmlnaW5hbCAiZml4IGFuZCByZWZhY3RvciIgCmNvbW1pdCBpbnRvIHRoZSBmaXggKHBhdGNoICMx
KSBhbmQgdGhlIHJlZmFjdG9yIC0gSSB0aGluayB3ZSd2ZSBqdXN0IAplbmRlZCB1cCBhZGRpbmcg
bW9yZSAicmVmYWN0b3IiIG9uIHRvcCBpbiB0aGUgZXZvbHV0aW9uIG9mIHRoZSBzZXJpZXMgOikK
ClJvYmluLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
