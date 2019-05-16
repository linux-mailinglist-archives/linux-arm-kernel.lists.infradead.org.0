Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8FA200AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 09:52:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nShKD+oAxUNy45tp8nmmI+DEzr6c0CEKUOhnO8Y1vnM=; b=gSB/RjE6B7B0CIc/rKKqvO3MZ
	Hs3SZYy8NAUzAEahJnIcQ5pVV123nAoiGntIn6VDJMBwtIdorsUaMg3imM+fm/NUHaZ4H09aCXTn/
	zo8aehAHI/5t9HbK+/8bGGTENpoxRP4Rzksf4F8QgST1IRGDEyIP0gRoC97dUJS/nmEilPtMlGS14
	7NDi/s4ZZbqDesZUQembiIFb1QkUPQJp4vte+ntwqQmOJPzooZW8ZNCUqXtyaBeJOm3RTkwncQp/l
	9s7e43eFBSAWRTBLi30uLye3VkNMNns1wZS0OwpfqkZXjpA0QFoH9E/GtRQpwHplFK04cpMFDBOfz
	HscEFXl1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBBe-0000lt-Ca; Thu, 16 May 2019 07:52:22 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBBW-0000lE-Nv
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 07:52:16 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cdd16840000>; Thu, 16 May 2019 00:51:32 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 16 May 2019 00:52:13 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 16 May 2019 00:52:13 -0700
Received: from [10.19.108.132] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 16 May
 2019 07:52:10 +0000
Subject: Re: [PATCH V3 4/8] memory: tegra: Add Tegra210 EMC clock driver
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-5-josephl@nvidia.com>
 <74fad66b-a6e9-ffc9-c1c9-e88b841e9209@gmail.com>
 <648df201-eb63-6d26-3f90-02eba7624921@nvidia.com>
 <bb2ef045-7d77-02d0-79fb-06f68732c5a5@gmail.com>
From: Joseph Lo <josephl@nvidia.com>
Message-ID: <3afd909c-5be9-370d-e21a-ec57be3b841b@nvidia.com>
Date: Thu, 16 May 2019 15:52:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <bb2ef045-7d77-02d0-79fb-06f68732c5a5@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL108.nvidia.com (172.18.146.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557993092; bh=4tYXVDno4KsskhiP9PdJy8YJDFFqRr5SFW0KndO/iBM=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=QRZhD9TaVAD5dOHju+CIHeSqirBQ/Ulz15Kk2FmIblanfUyxPeO4afRI+aW6v0jEC
 4mxyRVNhhrUOeeW2FTTBVHxKDgWR1UjBsWpWjweH+mpnTomFW1GT6eUxsHonzQOXPL
 EJfoDq+3orBP52QP16A795sbIOXBv1uiXV1xuOOLmrEX9mHLtNe2CB0b70vh6oAJ0P
 ZPHe5B+st3dHfzcihktR40rHrR19xKpi53zkIZEhxI9g4nc4UAgitud94aI3vgkT9t
 UKvCgne+FM3dGLU4H4wdr/wG03I+3ZphrW2ugU6f8T6IMeJPWKV2anjGhs4qhWm/l1
 F2wt+FurGu0QA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_005214_793324_3F147D91 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8xNS8xOSAxMToyNSBQTSwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+IDE1LjA1LjIwMTkg
MTE6NDIsIEpvc2VwaCBMbyDQv9C40YjQtdGCOgo+PiBPbiA1LzE1LzE5IDE6MDQgQU0sIERtaXRy
eSBPc2lwZW5rbyB3cm90ZToKPj4+IDEwLjA1LjIwMTkgMTE6NDcsIEpvc2VwaCBMbyDQv9C40YjQ
tdGCOgo+Pj4+IFRoaXMgaXMgdGhlIGluaXRpYWwgcGF0Y2ggZm9yIFRlZ3JhMjEwIEVNQyBjbG9j
ayBkcml2ZXIsIHdoaWNoIGRvZXNuJ3QKPj4+PiBpbmNsdWRlIHRoZSBzdXBwb3J0IGNvZGUgYW5k
IGRldGFpbCBzZXF1ZW5jZSBmb3IgY2xvY2sgc2NhbGluZyB5ZXQuCj4+Pj4KPj4+PiBUaGUgZHJp
dmVyIGlzIGRlc2lnbmVkIHRvIHN1cHBvcnQgTFBERFI0IFNEUkFNLiBCZWNhdXNlIG9mIHRoZSBM
UEREUjQKPj4+PiBkZXZpY2VzIG5lZWQgdG8gZG8gaW5pdGlhbCB0aW1lIHRyYWluaW5nIGJlZm9y
ZSBpdCBjYW4gYmUgdXNlZCwgdGhlCj4+Pj4gZmlybXdhcmUgd2lsbCBoZWxwIHRvIGRvIHRoYXQg
YXQgZWFybHkgYm9vdCBzdGFnZS4gVGhlbiwgdGhlIHRyYWluZWQKPj4+PiB0YWJsZSBmb3IgdGhl
IHJhdGVzIHdlIHN1cHBvcnQgd2lsbCBwYXNzIHRvIHRoZSBrZXJuZWwgdmlhIERULiBTbyB0aGUK
Pj4+PiBkcml2ZXIgY2FuIGdldCB0aGUgdHJhaW5lZCB0YWJsZSBmb3IgY2xvY2sgc2NhbGluZyBz
dXBwb3J0Lgo+Pj4+Cj4+Pj4gRm9yIHRoZSBoaWdoZXIgcmF0ZSBzdXBwb3J0IChhYm92ZSA4MDBN
SHopLCB0aGUgcGVyaW9kaWMgdHJhaW5pbmcgaXMKPj4+PiBuZWVkZWQgZm9yIHRoZSB0aW1pbmcg
Y29tcGVuc2F0aW9uLiBTbyBiYXNpY2FsbHksIHR3byBtZXRob2RvbG9naWVzIGZvcgo+Pj4+IGNs
b2NrIHNjYWxpbmcgYXJlIHN1cHBvcnRlZCwgb25lIGlzIGZvbGxvd2luZyB0aGUgY2xvY2sgY2hh
bmdpbmcKPj4+PiBzZXF1ZW5jZSB0byB1cGRhdGUgdGhlIEVNQyB0YWJsZSB0byBFTUMgcmVnaXN0
ZXJzIGFuZCBhbm90aGVyIGlzIGlmIHRoZQo+Pj4+IHJhdGUgbmVlZHMgcGVyaW9kaWMgdHJhaW5p
bmcsIHRoZW4gd2Ugd2lsbCBzdGFydCBhIHRpbWVyIHRvIGRvIHRoYXQKPj4+PiBwZXJpb2RpY2Fs
bHkgdW50aWwgaXQgc2NhbGVzIHRvIHRoZSBsb3dlciByYXRlLgo+Pj4+Cj4+Pj4gQmFzZWQgb24g
dGhlIHdvcmsgb2YgUGV0ZXIgRGUgU2NocmlqdmVyIDxwZGVzY2hyaWp2ZXJAbnZpZGlhLmNvbT4u
Cj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBKb3NlcGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4K
Pj4+PiAtLS0Kc25pcC4KPj4+PiArwqDCoMKgIGlmICghc2VxLT5zZXRfY2xvY2spIHsKPj4+PiAr
wqDCoMKgwqDCoMKgwqAgc2VxID0gTlVMTDsKPj4+PiArwqDCoMKgwqDCoMKgwqAgZGV2X2Vycigm
cGRldi0+ZGV2LCAiSW52YWxpZCBFTUMgc2VxdWVuY2UgZm9yIHRhYmxlIFJldi4gJWRcbiIsCj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW1jLT5lbWNfdGFibGVbMF0ucmV2KTsKPj4+PiAr
wqDCoMKgwqDCoMKgwqAgZ290byBlbWNfY2xrX3JlZ2lzdGVyOwo+Pj4KPj4+IFdoeSBkbyB5b3Ug
d2FudCB0byByZWdpc3RlciBFTUMgY2xvY2sgaWYgc29tZXRoaW5nIGZhaWxzPyBLTVNHIHdpbGwg
YmUKPj4+IGZsb29kZWQgd2l0aCBlcnJvcnMgY29taW5nIGZyb20gY2xrX3NldF9yYXRlLgo+Pj4K
Pj4KPj4gU2VlIHBhdGNoIDcgaW4gdGhlIHNlcmllcywgdGhlIGxlZ2FjeSBFTUMgY2xvY2sgd2ls
bCBiZSByZW1vdmVkIGxhdGVyLAo+PiBzbyB3ZSBuZWVkIHRvIHJlZ2lzdGVyIHRoZSBFTUMgY2xv
Y2sgd2hldGhlciB0aGUgdGFibGUgaXMgcmVhZHkgb3Igbm90PiBJbiB0aGF0IGNhc2UsIEkgbWVh
biBpZiB0aGUgdGFibGUgaXMgbm90IGF2YWlsYWJsZSwgaXQgd2lsbCBzdGlsbAo+PiByZWdpc3Rl
ciBFTUMgY2xvY2sgYXQgdGhlIHJhdGUgdGhhdCBib290IGxvYWRlciBjb25maWd1cmVkIGJlZm9y
ZSBrZXJuZWwKPj4gYm9vdGluZy4gU28gdGhlIE1DIGNsb2NrIGNhbiBzdGlsbCB3b3JrIGFzIGV4
cGVjdGVkLCB3aGljaCBpcyB1bmRlciBFTUMKPj4gY2xvY2suCj4+Cj4+IEFuZCBJIGRpZCB0ZXN0
IHRoYXQsIGNvdWxkbid0IG9ic2VydmUgYW55IEtNU0cgaW4gdGhhdCBjYXNlLgo+IAo+IExvb2tz
IGxpa2UgaXQga2luZGEgc2hvdWxkIHdvcmsgaW4gdGhlIGVuZC4KPiAKPiBBbHRob3VnaCBpdCdz
IG5vdCBnb29kIHRoYXQgbm93IE1DIGRyaXZlciByZWxpZXMgb24gdGhlIEVNQyBkcml2ZXIKPiBw
cmVzZW5jZS4gTWF5YmUgaXQncyBub3QgdGhlIGJlc3QgdmFyaWFudCB3aXRoIG1vdmluZyB0aGUg
Y2xvY2sgc3R1ZmYKPiBpbnRvIHRoZSBFTUMgZHJpdmVyPwo+IAo+IFdoYXQgYWJvdXQgdGhlIGJh
Y2t3YXJkcyBjb21wYXRpYmlsaXR5IGZvciBEVCB0aGF0IGRvZXNuJ3QgaGF2ZSB0aGUgRU1DCj4g
bm9kZT8KPiAKPiBXaGF0IGlmIEVNQyBkcml2ZXIgaXMgZGlzYWJsZWQgaW4gdGhlIGtlcm5lbCdz
IGNvbmZpZz8KClRoZSB0aHJlZSBxdWVzdGlvbnMgYWJvdmUgYXJlIGFjdHVhbGx5IG9uZSBwcm9i
bGVtIGhlcmUuIEl0J3Mgbm90IGFib3V0IApNQyBjbG9jaywgYmVjYXVzZSBpdCdzIHN0aWxsIGF2
YWlsYWJsZSBhZnRlciB0aGVzZSBjaGFuZ2VzLiBBbmQgTUMgCmRyaXZlciBjYW4gc3RpbGwgZ2V0
IGl0IGluIHRoZSBwcm9iZSBmdW5jdGlvbiBldmVuIHRoZSBFTUMgZHJpdmVyIGlzbid0IAp0aGVy
ZS4KClRoZSBwcm9ibGVtIGlzIHRoYXQgd2l0aG91dCBFTUMgZHJpdmVyIGFmdGVyIHRoZXNlIGNo
YW5nZXMuIFRoZSBQTExNIAp3aWxsIGhhdmUgbm8gY2xpZW50IHVuZGVyIGl0LCB3aGljaCB3aWxs
IGNhdXNlIHRoZSBQTExNIHRvIGJlIGRpc2FibGVkIAppbiB0aGUgbGF0ZSBpbml0IGNhbGwgb2Yg
ImNsa19kaXNhYmxlX3VudXNlZCIuIFNvIHRoZSBzeXN0ZW0gd2lsbCBiZSBzdHVjay4KCj4gCj4g
QW5kIGxhc3RseS4uIHdoYXQgc3RvcHMgdGhlIE1DIGRyaXZlciB0byBwcm9iZSBiZWZvcmUgdGhl
IEVNQz8gTG9va3MKPiBsaWtlIE1DIGRyaXZlciBpcyBhbHJlYWR5IGluIHRyb3VibGUgYmVjYXVz
ZSBpdCdzIG9uIGFyY2ggbGV2ZWwgYW5kIHRoZQo+IEVNQyBpcyBvbiBzdWJzeXMsIGhlbmNlIE1D
IHdpbGwgZ2V0IHRoZSBvcnBoYW5lZCBjbG9jayBhbmQgd29uJ3QKPiBpbml0aWFsaXplIGhhcmR3
YXJlIHByb3Blcmx5IG9uIHByb2JlLgoKQWZ0ZXIgdGhpcyBtb3ZpbmcsIHRoZSBFTUMgZHJpdmVy
IHdpbGwgYmUgYWx3YXlzIGVuYWJsZWQgYnkgZGVmYXVsdC4gQW5kIAp0aGUgRFQgY2hhbmdlIGlz
IG5lY2Vzc2FyeSBhcyB3ZWxsLiBUaGUgYmxvYiBvZiBFTUMgdGFibGUgaXMgbm90IApuZWNlc3Nh
cnksIGJlY2F1c2UgaXQgbmVlZHMgYSBmaXJtd2FyZSB1cGRhdGUuIFdlIHdpbGwgdXBkYXRlIHRo
ZSAKZmlybXdhcmUgYWNjb3JkaW5nbHkgYWZ0ZXIgdGhlIHJldmlldyBzZXR0bGVkIGFuZCByZWxl
YXNlIGl0IGxhdGVyLgoKSW4gY2FzZSBvZiBubyBFTUMgdGFibGUgYmxvYiwgdGhlIGRyaXZlciBj
YW4gc3RpbGwgYmUgcmVnaXN0ZXJlZCwgYnV0IG5vIApzY2FsaW5nIGZ1bmN0aW9uIHByb3ZpZGVk
LgoKPiAKPiBCVFcsIGhvdyBhcmUgeW91IHRlc3RpbmcgdGhlIEVNQyBkcml2ZXI/IElzIHRoZXJl
IFQyMTAgZGV2ZnJlcSBwYXRjaGVzCj4gaW4gd29ya3M/IE9yIHdoYXQncyB0aGUgdXNlciBvZiB0
aGUgRU1DIG9uIFQyMTA/Cj4gCgoxLiBDdXJyZW50bHksIHZpYSBkZWJ1Z2ZzLgoyLiBObywgd2Ug
cHJlZmVyIHRvIHVzZSBJbnRlcmNvbm5lY3QgZnJhbWV3b3JrIGZvciB0aGF0LiBUaGUgZXZhbHVh
dGlvbiAKaXMgb25nb2luZy4KMy4gV2l0aCBJbnRlcmNvbm5lY3QsIHRoZSBkZXZpY2VzIG9yIHBl
cmlwaGVyYWxzIGNhbiByZWdpc3RlciBvbiBpdCB0byAKcmVxdWVzdCB0aGUgQlcuIFNvIHdlIGNh
biBmaW5lLXR1bmUgdGhlIEJXIHJlcXVpcmVtZW50cyB3aXRoIHRoZSBsYXRlbmN5IAphbGxvd2Fu
Y2UgcmVnaXN0ZXJzIGFsdG9nZXRoZXIgdG8gZ2V0IGJldHRlciBlZmZpY2llbmN5LgoKVGhhbmtz
LApKb3NlcGgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
