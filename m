Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C891D9C3C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Elo1iyjaBIAKwEkqIGTStParDYl3lZRMOLPAPSACgzE=; b=WiwfNEKl0Ow/Zk
	MCHN5oi1DLSlmAQCcUDik4mfUzyTnntAaDbymv1cxuTU0IWlPkSR64sJBiyzgNhD+IEpHMyPI5fph
	cbQynsmFdCzE3ivrlsbb3eKtb8xZLcpdaqdO/3VcXWudhcldpCJyXhToKOSvrl7ULjP/U50BY34Tj
	zqh/ziPRHEGU9C3pNfaovruDMci7kkk0ZqYBTl3h+Nz6VfsJ+/57TkwAdRIVX8i09yJDWCSoa9K0R
	zzJ9RsR+4xj2GPpjD+VrGI1K8HULkZgCeMybOqc04jAlsdu5U+aMm8b1xJzA/7aJGp6g9Fi+wC4W2
	T/6M93In75M1L0SqAXXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4vH-0002Vn-0V; Tue, 19 May 2020 16:16:55 +0000
Received: from avon.wwwdotorg.org ([104.237.132.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4v9-0002V7-UO
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:16:49 +0000
Received: from [10.2.55.234] (searspoint.nvidia.com [216.228.112.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by avon.wwwdotorg.org (Postfix) with ESMTPSA id 37E621C074F;
 Tue, 19 May 2020 10:16:45 -0600 (MDT)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at avon.wwwdotorg.org
Subject: Re: [PATCH 2/4] dt-bindings: sram: add documentation for
 reserved-only flag
To: Mian Yousaf Kaukab <ykaukab@suse.de>
References: <20200512144803.24344-1-ykaukab@suse.de>
 <20200512144803.24344-2-ykaukab@suse.de>
 <52f099e4-5c03-2141-f049-cd3adeb04c5b@wwwdotorg.org>
 <20200513104127.GA2309@suse.de>
From: Stephen Warren <swarren@wwwdotorg.org>
Autocrypt: addr=swarren@wwwdotorg.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <efcc6b5e-423c-8ae1-8a46-d6a06c1a1bab@wwwdotorg.org>
Date: Tue, 19 May 2020 10:16:43 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513104127.GA2309@suse.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_091648_062246_B4A40E1C 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 robin.murphy@arm.com, afaerber@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8xMy8yMCA0OjQxIEFNLCBNaWFuIFlvdXNhZiBLYXVrYWIgd3JvdGU6Cj4gT24gVHVlLCBN
YXkgMTIsIDIwMjAgYXQgMDE6NDU6MjhQTSAtMDYwMCwgU3RlcGhlbiBXYXJyZW4gd3JvdGU6Cj4+
IE9uIDUvMTIvMjAgODo0OCBBTSwgTWlhbiBZb3VzYWYgS2F1a2FiIHdyb3RlOgo+Pj4gQWRkIGRv
Y3VtZW50YXRpb24gZm9yIHRoZSBuZXcgb3B0aW9uYWwgZmxhZyBhZGRlZCBmb3IgU1JBTSBkcml2
ZXIuCj4+Cj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3NyYW0vc3JhbS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NyYW0v
c3JhbS55YW1sCj4+Cj4+PiArICByZXNlcnZlZC1vbmx5Ogo+Pj4gKyAgICBkZXNjcmlwdGlvbjoK
Pj4+ICsgICAgICBUaGUgZmxhZyBpbmRpY2F0aW5nLCB0aGF0IG9ubHkgU1JBTSByZXNlcnZlZCBy
ZWdpb25zIGhhdmUgdG8gYmUgcmVtYXBwZWQuCj4+PiArICAgICAgcmVtYXBwaW5nIHR5cGUgaXMg
c2VsZWN0ZWQgZGVwZW5kaW5nIHVwb24gbm8tbWVtb3J5LXdjIGFzIHVzdWFsLgo+Pj4gKyAgICB0
eXBlOiBib29sZWFuCj4+Cj4+IFRoaXMgZmVlbHMgYSBiaXQgbGlrZSBhIFNXIGZsYWcgcmF0aGVy
IHRoYW4gYSBIVyBkZXNjcmlwdGlvbiwgc28gSSdtIG5vdAo+PiBzdXJlIGl0J3MgYXBwcm9wcmlh
dGUgdG8gcHV0IGl0IGludG8gRFQuCj4gCj4gUmVzZXJ2ZWQgcmVnaW9ucyB0aGVtc2VsdmVzIGFy
ZSBzb2Z0d2FyZSBkZXNjcmlwdGlvbnMsIG5vPyBUaGVuIHdlIGhhdmUgJ3Bvb2wnCj4gZmxhZyB3
aGljaCBpcyBhZ2FpbiBhIHNvZnR3YXJlIGZsYWcgYW5kIHNvIG9uLiBUaGlzIGZsYWcgZmFsbHMg
aW50byBzYW1lCj4gY2F0ZWdvcnkgYW5kIG5vdGhpbmcgb3V0IG9mIG9yZGluYXJ5LgoKSSBzdXBw
b3NlIHRoYXQncyB0cnVlIHRvIHNvbWUgZXh0ZW50LiBUaGlzIGlzIGluZGVlZCBhIGRlc2NyaXB0
aW9uIG9mCnRoZSBzeXN0ZW0gZW52aXJvbm1lbnQgcHJlc2VudGVkIHRvIHRoZSBTVyB0aGF0IGNv
bnN1bWVzIHRoZSBEVCwgd2hpY2gKaXMgYSBiaXQgbW9yZSB0aGFuIHB1cmUgSFcgZGVzY3JpcHRp
b24gYnV0IHN0aWxsIGEgZGVzY3JpcHRpb24gb2YKc29tZXRoaW5nIGltcG9zZWQgZXh0ZXJuYWxs
eSByYXRoZXIgdGhhbiBkZXNjcmliaW5nIHNvbWV0aGluZyB0aGF0J3MgdXAKdG8gdGhlIGRpc2Ny
ZXRpb24gb2YgdGhlIGNvbnN1bWluZyBTVy4gU28sIGdvIGFoZWFkLgoKPj4gQXJlIHRoZXJlIGFu
eSBjYXNlcyB3aGVyZSB0aGUgU1cgc2hvdWxkIG1hcCBhbGwgb2YgdGhlIFNSQU0sIGkuZS4gd2hl
cmUKPj4gd2Ugd291bGRuJ3QgZXhwZWN0IHRvIHNldCByZXNlcnZlZC1vbmx5PyBbLi4uXQo+IAo+
IFllcywgaGVyZSBhcmUgYSBmZXcgZXhhbXBsZXM6Cj4gYXJjaC9hcm0vYm9vdC9kdHMvYXNwZWVk
LWcqLmR0c2kKPiBhcmNoL2FybS9ib290L2R0cy9hdDkxKi5kdHNpCj4gYXJjaC9hcm0vYm9vdC9k
dHMvYmNtNzQ0NS5kdHNpCj4gVGhlbiBhcmNoL2FybS9ib290L2R0cy9kcmE3LmR0c2kgaXMgYW4g
ZXhhbXBsZSB3aGVyZSB3ZSBzaG91bGQgbWFwIGV2ZXJ5dGhpbmcKPiBleGNlcHQgdGhlIHJlc2Vy
dmVkIHJlZ2lvbi4KPiAKPj4gWy4uLl0gSSdkIGV4cGVjdCByZXNlcnZlZC1vbmx5IHRvIGJlCj4+
IHRoZSBkZWZhdWx0LCBhbmQgcGVyaGFwcyBvbmx5LCBtb2RlIG9mIG9wZXJhdGlvbiBmb3IgdGhl
IFNSQU0gZHJpdmVyLgo+IAo+IEl0IHdpbGwgYnJlYWsgY29tcGF0aWJpbGl0eSB3aXRoIGV4aXN0
aW5nIGR0YnMuCj4gCj4+IElmIHdlIGNhbid0IGRvIHRoYXQgYmVjYXVzZSBzb21lIFNXIGN1cnJl
bnRseSBleHBlY3RzIHRvIGJlIGFibGUgdG8gbWFwCj4+IGFyYml0cmFyeSBwb3J0aW9ucyBvZiB0
aGUgU1JBTSwgc2hvdWxkbid0IHRoYXQgU1cgYmUgZml4ZWQgdG8gdGVsbCB0aGUKPj4gU1JBTSBk
cml2ZXIgd2hpY2ggcGFydHMgaXQncyB1c2luZywgaGVuY2Ugc3RpbGwgYWxsb3dpbmcgdGhlIGRy
aXZlciB0bwo+PiBvbmx5IG1hcCBpbi11c2UgcG9ydGlvbnM/Cj4gCj4gVXNlciBkb2VzbuKAmXQg
bmVlZCBzcmFtIGRyaXZlciBpbiB0aGF0IGNhc2UuIEl0IGNhbiB1c2UgZ2VuYWxsb2MgYXBpIGRp
cmVjdGx5LgoKVGhpcyBzb3VuZHMgYSBiaXQgb2RkLiBXaXRob3V0IGEgZHJpdmVyIGZvciB0aGUg
cmVzZXJ2ZWQgcmVnaW9uLCBub3RoaW5nCnNob3VsZCBiZSB0b3VjaGluZyBpdCwgc2luY2Ugb3Ro
ZXJ3aXNlIHRoZXJlJ3Mgbm8gY29kZSB0aGF0IG93bnMgYW4KbWFuYWdlcyB0aGUgcmVnaW9uLiBJ
ZiBhbnkgY29kZSBuZWVkcyB0byBjb25zdW1lIHRoZSByZWdpb24sIGl0IHNob3VsZApvYnRhaW4g
aW5mbyBhYm91dCB0aGUgcmVnaW9uIGZyb20gc29tZSBmb3JtIG9mIHByb3ZpZGVyIGNvZGUgdGhh
dCBjYW4KaGFuZGxlIGJvdGggdGhlIGFsbG9jYXRpb24gYW5kIG1hcHBpbmcuIEFueXRoaW5nIGVs
c2Ugc291bmRzIGxpa2Ugc29tZQpjb25zdW1lciBjb2RlIGRpcmVjdGx5IG1ha2luZyB1c2Ugb2Yg
RFQgbm9kZXMgaXQgZG9lc24ndCBvd24uIEJ1dCBzaW5jZQpJJ20gbm90IGZhbWlsaWFyIGVub3Vn
aCB3aXRoIHRoZSBTUkFNIGRyaXZlciBhbmQgZ2VuYWxsb2MgY29kZSB0aGF0IHlvdQptZW50aW9u
IHRvIGZ1bGx5IHVuZGVyc3RhbmQgdGhlIGFsbG9jYXRpb24gcGF0aHMgSSBndWVzcyBJIHdvbid0
IG9iamVjdApmb3Igbm93LCBhbHRob3VnaCBpdCBkb2VzIHN0aWxsIHNvdW5kIGZpc2h5LgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
