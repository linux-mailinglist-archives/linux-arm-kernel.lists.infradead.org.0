Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F6E1BD761
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EaWV1fhLR90XoHkFj2BY2n1wgQO3AmdTKTiAkKJEqqk=; b=dKRd2GqiaH6nJVq9Vzi3NIwMG
	+iZ5cfmF9LuCuDRZjpA/AGzwsW3ur+YhRsGTQcVHFTv4z7b4F+/5148fNiuKNQPDORyqIHtZuG8ul
	pBX7FPnTSu0IvGPDiWljaZJ4FXaXeHv3v2aC6PGcgJ4LcsOsbEdjKSO/grpAZ7M6XQzm94dSQShQJ
	UaML72Dml4eZ6+1ObHdidT3U2rcpn2QBBwpFSNtSg6fgW+dpIU2kLAvnfL+SLvSXR/fYLo06efwyj
	Ozw85fGGMXCjdEqBvbsAQL9YniNLmJIHmG0DVMD4NStu+k8gjBdb45HnCR4PciSc4D0cHx6H4x5nR
	8aFzxMKAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTiCa-0003X6-DW; Wed, 29 Apr 2020 08:36:20 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTiCN-0003To-58; Wed, 29 Apr 2020 08:36:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D9C5AABCF;
 Wed, 29 Apr 2020 08:36:01 +0000 (UTC)
Subject: Re: [PATCH 1/1] dma: actions: Fix lockdep splat for owl-dma
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
References: <7d503c3dcac2b3ef29d4122a74eacfce142a8f98.1588069418.git.cristian.ciocaltea@gmail.com>
 <20200428164921.GC5259@Mani-XPS-13-9360> <20200428181115.GB26885@BV030612LT>
 <20200428181803.GD5259@Mani-XPS-13-9360>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <a70a2352-7b22-6b85-848b-94d9ee17c022@suse.de>
Date: Wed, 29 Apr 2020 10:36:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200428181803.GD5259@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_013607_341034_AC006559 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjguMDQuMjAgdW0gMjA6MTggc2NocmllYiBNYW5pdmFubmFuIFNhZGhhc2l2YW06Cj4gT24g
VHVlLCBBcHIgMjgsIDIwMjAgYXQgMDk6MTE6MTVQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2FsdGVh
IHdyb3RlOgo+PiBPbiBUdWUsIEFwciAyOCwgMjAyMCBhdCAxMDoxOToyMVBNICswNTMwLCBNYW5p
dmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+PiBPbiBUdWUsIEFwciAyOCwgMjAyMCBhdCAwMTo1
NjoxMlBNICswMzAwLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4+Pj4gV2hlbiB0aGUga2Vy
bmVsIGlzIGJ1aWxkIHdpdGggbG9ja2RlcCBzdXBwb3J0IGFuZCB0aGUgb3dsLWRtYSBkcml2ZXIg
aXMKPj4+PiB1c2VkLCB0aGUgZm9sbG93aW5nIG1lc3NhZ2UgaXMgc2hvd246ClsuLi5dCj4+Pj4g
VGhlIHJlcXVpcmVkIGZpeCBpcyB0byB1c2Ugc3Bpbl9sb2NrX2luaXQoKSBvbiB0aGUgcGNoYW4g
bG9jayBiZWZvcmUKPj4+PiBhdHRlbXB0aW5nIHRvIGNhbGwgYW55IHNwaW5fbG9ja19pcnFzYXZl
KCkgaW4gb3dsX2RtYV9nZXRfcGNoYW4oKS4KPj4+Cj4+PiBSaWdodCwgdGhpcyBpcyBhIGJ1Zy4g
QnV0IHdoaWxlIGxvb2tpbmcgYXQgdGhlIGNvZGUgbm93LCBJIGZlZWwgdGhhdCB3ZSBkb24ndAo+
Pj4gbmVlZCAncGNoYW4tPmxvY2snLiBUaGUgaWRlYSB3YXMgdG8gcHJvdGVjdCAncGNoYW4tPnZj
aGFuJywgYnV0IEkgdGhpbmsKPj4+ICdvZC0+bG9jaycgaXMgdGhlIGJldHRlciBjYW5kaWRhdGUg
Zm9yIHRoYXQgc2luY2UgaXQgYWxyZWFkeSBwcm90ZWN0cyBpdCBpbgo+Pj4gJ293bF9kbWFfdGVy
bWluYXRlX3BjaGFuJy4KPj4+Cj4+PiBTbyBJJ2QgYmUgaGFwcHkgaWYgeW91IHJlbW92ZSB0aGUg
bG9jayBmcm9tICdwY2hhbicgYW5kIGp1c3QgZGlyZWN0bHkgdXNlIHRoZQo+Pj4gb25lIGluICdv
ZCcuCj4+Pgo+Pj4gT3V0IG9mIGN1cmlvc2l0eSwgb24gd2hpY2ggcGxhdGZvcm0geW91J3JlIHRl
c3RpbmcgdGhpcz8KPj4KPj4gVG90YWxseSBhZ3JlZSwgSSB3aWxsIHNlbmQgYSBuZXcgcGF0Y2gg
cmV2aXNpb24gYXMgc29vbiBhcyBJIGRvIHNvbWUKPj4gbW9yZSB0ZXN0aW5nLgo+IAo+IENvb1ts
XSwgdGhhbmtzIQo+IAo+PiBJJ20gY3VycmVudGx5IGV4cGVyaW1lbnRpbmcgb24gYW4gQWN0aW9u
cyBTNTAwIGJhc2VkIGJvYXJkIChSb3NlYXBwbGUgUGkpCj4+IHRyeWluZyB0byBleHRlbmQsIGlm
IHBvc3NpYmxlLCB0aGUgZXhpc3RpbmcgbWFpbmxpbmUgc3VwcG9ydCBmb3IgdGhvc2UKPj4gU29D
cy4KPiAKPiBBd2Vzb21lISBJdCdzIGdyZWF0IHRvIHNlZSB0aGF0IEFjdGlvbnMgcGxhdGZvcm0g
aXMgc2VlaW5nIHNvbWUgYXR0ZW50aW9uCj4gdGhlc2UgZGF5cyA6KQo+IAo+PiBJIGRvbid0IGhh
dmUgbXVjaCBwcm9ncmVzcyBzbyBmYXIsIHNpbmNlIEkgc3RhcnRlZCBxdWl0ZSByZWNlbnRseQo+
PiBhbmQgSSBhbHNvIGxhY2sgZXhwZXJpZW5jZSBpbiB0aGUga2VybmVsIGRldmVsb3BtZW50IGFy
ZWEsIGJ1dCBJIGRvIG15Cj4+IGJlc3QgdG8gY29tZSBiYWNrIHdpdGggbW9yZSBwYXRjaGVzIG9u
Y2UgSSBnZXQgYSBjb25zaXN0ZW50IGZ1bmN0aW9uYWxpdHkuCj4gCj4gTm8gd29ycmllcy4gRmVl
bCBmcmVlIHRvIHJlYWNoIG91dCB0byBtZSBpZiB5b3UgaGF2ZSBhbnkgcXVlc3Rpb25zLiBUaGVy
ZSBpcwo+IGEgbG90IG9mIHdvcmsgdG8gZG8gYW5kIGZvciBzdXJlIGl0IHdpbGwgYmUgYSBnb29k
IGxlYXJuaW5nIGN1cnZlLgo+IAo+IFdlIGRvIGhhdmUgYW4gSVJDIGNoYW5uZWwgKCMjbGludXgt
YWN0aW9ucykgZm9yIHF1aWNrIGRpc2N1c3Npb25zLiBGZWVbbF0gZnJlZQo+IHRvIGpvaW4hCgpQ
bGVhc2UgYWxzbyBDQyB0aGUgbGludXgtYWN0aW9ucyBtYWlsaW5nIGxpc3Qgb24gYW55IHBhdGNo
ZXM6CgpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
Y3Rpb25zCgpNYW5pLCBkbyB5b3UgaGF2ZSBhIDUuNy1yYzEgdHJlZSBzZXQgdXAgb3Igc2hvdWxk
IEkgcXVldWUgcGF0Y2hlcyB0aGlzIApyb3VuZD8gSXQgc3RpbGwgc2VlbXMgbWlzc2luZyBpbiBN
QUlOVEFJTkVSUywgYW5kIHRoZW4gdGhlcmUncyBNYXRoZXVzJyAKcGF0Y2hlcyBpbiByZXZpZXcu
CgpUaGFua3MsCkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdt
YkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVu
ZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
