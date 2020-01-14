Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EDC13A7F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:08:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WiHMz4Nf8mKJHfjNdwnIp8/DrDhmwAnKh/rNyWak5+E=; b=WkCqZxodIJEkdE
	fFg5psGoW2x+i7/x5w0nRPXs41HXyzsGsw5nwFheJ+15Lv6a0uNTGoTthBxSdcog6bTtV6skHbl3f
	Zw0YagKejWWbrTL4CK6fwQB+8fzuNjQrPAjzNIDUvOvWm4/kgZcjWeQ+jUYZLbVpPxNo8UJcwC1yM
	YDITg8ktgHhvn5fG4npBBju65plE6/Fka5rl/0BtzWOKBpkkQd8Vb2s9PyCzlefG/EZa+f/YZ2jE5
	w392/dyxxU2c0yysU79FMn04yCQYgg8dimjlG2quDTYoQzqknu2Z34CnS3GnXmFoRjdDfjDCEjhmT
	4EzmEgpJmllNm/6H/MWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irK3K-00070P-9D; Tue, 14 Jan 2020 11:08:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irK38-0006wq-PE
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:07:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 46832142F;
 Tue, 14 Jan 2020 03:07:52 -0800 (PST)
Received: from [10.163.1.192] (unknown [10.163.1.192])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E61483F6C4;
 Tue, 14 Jan 2020 03:07:45 -0800 (PST)
Subject: Re: [PATCH V11 1/5] mm/hotplug: Introduce arch callback validating
 the hot remove range
To: David Hildenbrand <david@redhat.com>,
 David Hildenbrand <dhildenb@redhat.com>
References: <6f0efddc-f124-58ca-28b6-4632469cf992@arm.com>
 <3C3BE5FA-0CFC-4C90-8657-63EF5B680B0B@redhat.com>
 <6b8fb779-31e8-1b63-85a8-9f6c93a04494@arm.com>
 <19194427-1295-3596-2c2c-463c4adf4f35@redhat.com>
 <78f04711-2ca6-280c-d0c2-ab9eea866e59@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <2c4b04d6-6d86-e87a-9b09-b931133a0d9c@arm.com>
Date: Tue, 14 Jan 2020 16:39:04 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <78f04711-2ca6-280c-d0c2-ab9eea866e59@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_030754_907049_B22F2B24 
X-CRM114-Status: GOOD (  23.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-mm@kvack.org,
 arunks@codeaurora.org, cpandya@codeaurora.org, ira.weiny@intel.com,
 will@kernel.org, steven.price@arm.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, robin.murphy@arm.com, broonie@kernel.org, cai@lca.pw,
 ard.biesheuvel@arm.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, steve.capper@arm.com,
 logang@deltatee.com, linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMS8xNC8yMDIwIDA3OjQzIEFNLCBBbnNodW1hbiBLaGFuZHVhbCB3cm90ZToKPiAKPiAK
PiBPbiAwMS8xMy8yMDIwIDA0OjA3IFBNLCBEYXZpZCBIaWxkZW5icmFuZCB3cm90ZToKPj4gT24g
MTMuMDEuMjAgMTA6NTAsIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+Pj4KPj4+Cj4+PiBPbiAw
MS8xMy8yMDIwIDAyOjQ0IFBNLCBEYXZpZCBIaWxkZW5icmFuZCB3cm90ZToKPj4+Pgo+Pj4+Cj4+
Pj4+IEFtIDEzLjAxLjIwMjAgdW0gMTA6MTAgc2NocmllYiBBbnNodW1hbiBLaGFuZHVhbCA8YW5z
aHVtYW4ua2hhbmR1YWxAYXJtLmNvbT46Cj4+Pj4+Cj4+Pj4+IO+7vwo+Pj4+Pgo+Pj4+Pj4gT24g
MDEvMTAvMjAyMCAwMjoxMiBQTSwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6Cj4+Pj4+Pj4gT24g
MTAuMDEuMjAgMDQ6MDksIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+Pj4+Pj4+IEN1cnJlbnRs
eSB0aGVyZSBhcmUgdHdvIGludGVyZmFjZXMgdG8gaW5pdGlhdGUgbWVtb3J5IHJhbmdlIGhvdCBy
ZW1vdmFsIGkuZQo+Pj4+Pj4+IHJlbW92ZV9tZW1vcnkoKSBhbmQgX19yZW1vdmVfbWVtb3J5KCkg
d2hpY2ggdGhlbiBjYWxscyB0cnlfcmVtb3ZlX21lbW9yeSgpLgo+Pj4+Pj4+IFBsYXRmb3JtIGdl
dHMgY2FsbGVkIHdpdGggYXJjaF9yZW1vdmVfbWVtb3J5KCkgdG8gdGVhciBkb3duIHJlcXVpcmVk
IGtlcm5lbAo+Pj4+Pj4+IHBhZ2UgdGFibGVzIGFuZCBvdGhlciBhcmNoIHNwZWNpZmljIHByb2Nl
ZHVyZXMuIEJ1dCB0aGVyZSBhcmUgcGxhdGZvcm1zCj4+Pj4+Pj4gbGlrZSBhcm02NCB3aGljaCBt
aWdodCB3YW50IHRvIHByZXZlbnQgcmVtb3ZhbCBvZiBjZXJ0YWluIHNwZWNpZmljIG1lbW9yeQo+
Pj4+Pj4+IHJhbmdlcyBpcnJlc3BlY3RpdmUgb2YgdGhlaXIgcHJlc2VudCB1c2FnZSBvciBtb3Zh
YmlsaXR5IHByb3BlcnRpZXMuCj4+Pj4+Pgo+Pj4+Pj4gV2h5PyBJcyB0aGlzIG9ubHkgcmVsZXZh
bnQgZm9yIGJvb3QgbWVtb3J5PyBJIGhvcGUgc28sIG90aGVyd2lzZSB0aGUKPj4+Pj4+IGFyY2gg
Y29kZSBuZWVkcyBmaXhpbmcgSU1ITy4KPj4+Pj4KPj4+Pj4gUmlnaHQsIGl0IGlzIHJlbGV2YW50
IG9ubHkgZm9yIHRoZSBib290IG1lbW9yeSBvbiBhcm02NCBwbGF0Zm9ybS4gQnV0IHRoaXMKPj4+
Pj4gbmV3IGFyY2ggY2FsbGJhY2sgbWFrZXMgaXQgZmxleGlibGUgdG8gcmVqZWN0IGFueSBnaXZl
biBtZW1vcnkgcmFuZ2UuCj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gSWYgaXQncyBvbmx5IGJvb3QgbWVt
b3J5LCB3ZSBzaG91bGQgZGlzYWxsb3cgb2ZmbGluaW5nIGluc3RlYWQgdmlhIGEKPj4+Pj4+IG1l
bW9yeSBub3RpZmllciAtIG11Y2ggY2xlYW5lci4KPj4+Pj4KPj4+Pj4gRG9udCBoYXZlIG11Y2gg
ZGV0YWlsIHVuZGVyc3RhbmRpbmcgb2YgTU1VIG5vdGlmaWVyIG1lY2hhbmlzbSBidXQgZnJvbSBz
b21lCj4+Pj4+IGluaXRpYWwgcmVhZGluZywgaXQgc2VlbXMgbGlrZSB3ZSBuZWVkIHRvIGhhdmUg
YSBtbV9zdHJ1Y3QgZm9yIGEgbm90aWZpZXIKPj4+Pj4gdG8gbW9uaXRvciB2YXJpb3VzIGV2ZW50
cyBvbiB0aGUgcGFnZSB0YWJsZS4gSnVzdCB3b25kZXJpbmcgaG93IGEgcGh5c2ljYWwKPj4+Pj4g
bWVtb3J5IHJhbmdlIGxpa2UgYm9vdCBtZW1vcnkgY2FuIGJlIG1vbml0b3JlZCBiZWNhdXNlIGl0
IGNhbiBiZSB1c2VkIGJvdGgKPj4+Pj4gZm9yIGZvciBrZXJuZWwgKGluaXRfbW0pIG9yIHVzZXIg
c3BhY2UgcHJvY2VzcyBhdCBzYW1lIHRpbWUuIElzIHRoZXJlIHNvbWUKPj4+Pj4gbWVjaGFuaXNt
IHdlIGNvdWxkIGRvIHRoaXMgPwo+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IEN1cnJlbnQg
YXJjaCBjYWxsIGJhY2sgYXJjaF9yZW1vdmVfbWVtb3J5KCkgaXMgdG9vIGxhdGUgaW4gdGhlIHBy
b2Nlc3MgdG8KPj4+Pj4+PiBhYm9ydCBtZW1vcnkgaG90IHJlbW92YWwgYXMgbWVtb3J5IGJsb2Nr
IGRldmljZXMgYW5kIGZpcm13YXJlIG1lbW9yeSBtYXAKPj4+Pj4+PiBlbnRyaWVzIHdvdWxkIGhh
dmUgYWxyZWFkeSBiZWVuIHJlbW92ZWQuIFBsYXRmb3JtcyBzaG91bGQgYmUgYWJsZSB0byBhYm9y
dAo+Pj4+Pj4+IHRoZSBwcm9jZXNzIGJlZm9yZSB0YWtpbmcgdGhlIG1lbV9ob3RwbHVnX2xvY2sg
d2l0aCBtZW1faG90cGx1Z19iZWdpbigpLgo+Pj4+Pj4+IFRoaXMgZXNzZW50aWFsbHkgcmVxdWly
ZXMgYSBuZXcgYXJjaCBjYWxsYmFjayBmb3IgbWVtb3J5IHJhbmdlIHZhbGlkYXRpb24uCj4+Pj4+
Pgo+Pj4+Pj4gSSBzb21ld2hhdCBkaXNsaWtlIHRoaXMgdmVyeSBtdWNoLiBNZW1vcnkgcmVtb3Zh
bCBzaG91bGQgbmV2ZXIgZmFpbCBpZgo+Pj4+Pj4gdXNlZCBzYW5lbHkuIFNlZSBlLmcuLCBfX3Jl
bW92ZV9tZW1vcnkoKSwgaXQgd2lsbCBCVUcoKSB3aGVuZXZlcgo+Pj4+Pj4gc29tZXRoaW5nIGxp
a2UgdGhhdCB3b3VsZCBzdHJpa2UuCj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyBkaWZmZXJl
bnRpYXRlcyBtZW1vcnkgcmFuZ2UgdmFsaWRhdGlvbiBiZXR3ZWVuIG1lbW9yeSBob3QgYWRkIGFu
ZCBob3QKPj4+Pj4+PiByZW1vdmUgcGF0aHMgYmVmb3JlIGNhcnZpbmcgb3V0IGEgbmV3IGhlbHBl
ciBjaGVja19ob3RyZW1vdmVfbWVtb3J5X3JhbmdlKCkKPj4+Pj4+PiB3aGljaCBpbmNvcnBvcmF0
ZXMgYSBuZXcgYXJjaCBjYWxsYmFjay4gVGhpcyBjYWxsIGJhY2sgcHJvdmlkZXMgcGxhdGZvcm1z
Cj4+Pj4+Pj4gYW4gb3Bwb3J0dW5pdHkgdG8gcmVmdXNlIG1lbW9yeSByZW1vdmFsIGF0IHRoZSB2
ZXJ5IG9uc2V0LiBJbiBmdXR1cmUgdGhlCj4+Pj4+Pj4gc2FtZSBwcmluY2lwbGUgY2FuIGJlIGV4
dGVuZGVkIGZvciBtZW1vcnkgaG90IGFkZCBwYXRoIGlmIHJlcXVpcmVkLgo+Pj4+Pj4+Cj4+Pj4+
Pj4gUGxhdGZvcm1zIGNhbiBjaG9vc2UgdG8gb3ZlcnJpZGUgdGhpcyBjYWxsYmFjayBpbiBvcmRl
ciB0byByZWplY3Qgc3BlY2lmaWMKPj4+Pj4+PiBtZW1vcnkgcmFuZ2VzIGZyb20gcmVtb3ZhbCBv
ciBjYW4ganVzdCBmYWxsYmFjayB0byBhIGRlZmF1bHQgaW1wbGVtZW50YXRpb24KPj4+Pj4+PiB3
aGljaCBhbGxvd3MgcmVtb3ZhbCBvZiBhbGwgbWVtb3J5IHJhbmdlcy4KPj4+Pj4+Cj4+Pj4+PiBJ
IHN1c3BlY3Qgd2Ugd2FudCByZWFsbHkgd2FudCB0byBkaXNhbGxvdyBvZmZsaW5pbmcgaW5zdGVh
ZC4gRS5nLiwgSQo+Pj4+Pgo+Pj4+PiBJZiBib290IG1lbW9yeSBwYWdlcyBjYW4gYmUgcHJldmVu
dGVkIGZyb20gYmVpbmcgb2ZmbGluZWQgZm9yIHN1cmUsIHRoZW4gaXQKPj4+Pj4gd291bGQgaW5k
aXJlY3RseSBkZWZpbml0ZWx5IHByZXZlbnQgaG90IHJlbW92ZSBwcm9jZXNzIGFzIHdlbGwuCj4+
Pj4+Cj4+Pj4+PiByZW1lbWJlciBzMzkweCBkb2VzIHRoYXQgd2l0aCBjZXJ0YWluIGFyZWFzIG5l
ZWRlZCBmb3IgZHVtcGluZy9rZXhlYy4KPj4+Pj4KPj4+Pj4gQ291bGQgbm90IGZpbmQgYW55IHJl
ZmVyZW5jZXMgdG8gbW11X25vdGlmaWVyIGluIGFyY2gvczM5MCBvciBhbnkgb3RoZXIgYXJjaAo+
Pj4+PiBmb3IgdGhhdCBtYXR0ZXIgYXBhcnQgZnJvbSBLVk0gKHdoaWNoIGhhcyBhbiB1c2VyIHNw
YWNlIGNvbXBvbmVudCksIGNvdWxkIHlvdQo+Pj4+PiBwbGVhc2UgZ2l2ZSBzb21lIHBvaW50ZXJz
ID8KPj4+Pgo+Pj4+IE1lbW9yeSAoaG90cGx1Zykgbm90aWZpZXIsIG5vdCBNTVUgbm90aWZpZXIg
OikKPj4+Cj4+PiBUaGV5IGFyZSBzbyBzaW1pbGFybHkgbmFtZWQgOikKPj4+Cj4+Pj4KPj4+PiBO
b3Qgb24gbXkgbm90ZWJvb2sgcmlnaHQgbm93LCBncmVwIGZvciBNRU1fR09JTkdfT0ZGTElORSwg
dGhhdCBzaG91bGQgYmUgaXQuCj4+Pj4KPj4+Cj4+PiBHb3QgaXQsIHRoYW5rcyAhIEJ1dCB3ZSB3
aWxsIHN0aWxsIG5lZWQgYm9vdCBtZW1vcnkgZW51bWVyYXRpb24gdmlhIE1FTUJMT0NLX0JPT1QK
Pj4+IHRvIHJlamVjdCBhZmZlY3RlZCBvZmZsaW5lIHJlcXVlc3RzIGluIHRoZSBjYWxsYmFjay4K
Pj4KPj4gRG8geW91IHJlYWxseSBuZWVkIHRoYXQ/Cj4+Cj4+IFdlIGhhdmUgU0VDVElPTl9JU19F
QVJMWS4gWW91IGNvdWxkIGl0ZXJhdGUgYWxsIGludm9sdmVkIHNlY3Rpb25zIChmb3IKPj4gd2hp
Y2ggeW91IGFyZSBnZXR0aW5nIG5vdGlmaWVkKSBhbmQgY2hlY2sgaWYgYW55IG9uZSBvZiB0aGVz
ZSBpcyBtYXJrZWQKPj4gU0VDVElPTl9JU19FQVJMWS4gdGhlbiwgaXQgd2FzIGFkZGVkIGR1cmlu
ZyBib290IGFuZCBub3QgdmlhIGFkZF9tZW1vcnkoKS4KPiAKPiBTZWVtcyB0byBiZSBhIGJldHRl
ciBhcHByb2FjaCB0aGFuIGFkZGluZyBhIG5ldyBtZW1ibG9jayBmbGFnLgoKVGhlc2UgYWRkaXRp
b25hbCBjaGFuZ2VzIGRvIHRoZSB0cmljayBhbmQgcHJldmVudCBib290IG1lbW9yeSByZW1vdmFs
LgpIb3BlIHRoaXMgaXMgaW4gbGluZSB3aXRoIHlvdXIgZWFybGllciBzdWdnZXN0aW9uLgoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvbW0vbW11LmMgYi9hcmNoL2FybTY0L21tL21tdS5jCmluZGV4
IDAwZjNlMTgzNjU1OC4uM2I1OWU2YTI5ZGVhIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L21tL21t
dS5jCisrKyBiL2FyY2gvYXJtNjQvbW0vbW11LmMKQEAgLTE3LDYgKzE3LDcgQEAKKysrIGIvYXJj
aC9hcm02NC9tbS9tbXUuYwpAQCAtMTcsNiArMTcsNyBAQAogI2luY2x1ZGUgPGxpbnV4L21tYW4u
aD4KICNpbmNsdWRlIDxsaW51eC9ub2RlbWFzay5oPgogI2luY2x1ZGUgPGxpbnV4L21lbWJsb2Nr
Lmg+CisjaW5jbHVkZSA8bGludXgvbWVtb3J5Lmg+CiAjaW5jbHVkZSA8bGludXgvZnMuaD4KICNp
bmNsdWRlIDxsaW51eC9pby5oPgogI2luY2x1ZGUgPGxpbnV4L21tLmg+CkBAIC0xMzY1LDQgKzEz
NjYsMzcgQEAgdm9pZCBhcmNoX3JlbW92ZV9tZW1vcnkoaW50IG5pZCwgdTY0IHN0YXJ0LCB1NjQg
c2l6ZSwKICAgICAgICBfX3JlbW92ZV9wYWdlcyhzdGFydF9wZm4sIG5yX3BhZ2VzLCBhbHRtYXAp
OwogICAgICAgIF9fcmVtb3ZlX3BnZF9tYXBwaW5nKHN3YXBwZXJfcGdfZGlyLCBfX3BoeXNfdG9f
dmlydChzdGFydCksIHNpemUpOwogfQorCitzdGF0aWMgaW50IGJvb3RfbWVtX3JlbW92ZV9ub3Rp
ZmllcihzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLAorICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB1bnNpZ25lZCBsb25nIGFjdGlvbiwgdm9pZCAqZGF0YSkKK3sKKyAgICAgICB1
bnNpZ25lZCBsb25nIHN0YXJ0X3BmbiwgZW5kX3BmbiwgcGZuLCBzZWN0aW9uX25yOworICAgICAg
IHN0cnVjdCBtZW1fc2VjdGlvbiAqbXM7CisgICAgICAgc3RydWN0IG1lbW9yeV9ub3RpZnkgKmFy
ZyA9IGRhdGE7CisKKyAgICAgICBzdGFydF9wZm4gPSBhcmctPnN0YXJ0X3BmbjsKKyAgICAgICBl
bmRfcGZuID0gc3RhcnRfcGZuICsgYXJnLT5ucl9wYWdlczsKKworICAgICAgIGlmIChhY3Rpb24g
IT0gTUVNX0dPSU5HX09GRkxJTkUpCisgICAgICAgICAgICAgICByZXR1cm4gTk9USUZZX09LOwor
CisgICAgICAgZm9yIChwZm4gPSBzdGFydF9wZm47IHBmbiA8IGVuZF9wZm47IHBmbiArPSBQQUdF
U19QRVJfU0VDVElPTikgeworICAgICAgICAgICAgICAgc2VjdGlvbl9uciA9IHBmbl90b19zZWN0
aW9uX25yKHBmbik7CisgICAgICAgICAgICAgICBtcyA9IF9fbnJfdG9fc2VjdGlvbihzZWN0aW9u
X25yKTsKKworICAgICAgICAgICAgICAgaWYgKGVhcmx5X3NlY3Rpb24obXMpKQorICAgICAgICAg
ICAgICAgICAgICAgICByZXR1cm4gTk9USUZZX0JBRDsKKyAgICAgICB9CisgICAgICAgcmV0dXJu
IE5PVElGWV9PSzsKK30KKworc3RhdGljIHN0cnVjdCBub3RpZmllcl9ibG9jayBib290X21lbV9y
ZW1vdmVfbmIgPSB7CisgICAgICAgLm5vdGlmaWVyX2NhbGwgPSBib290X21lbV9yZW1vdmVfbm90
aWZpZXIsCit9OworCitzdGF0aWMgaW50IF9faW5pdCBib290X21lbV9yZW1vdmVfaW5pdCh2b2lk
KQoreworICAgICAgIHJldHVybiByZWdpc3Rlcl9tZW1vcnlfbm90aWZpZXIoJmJvb3RfbWVtX3Jl
bW92ZV9uYik7Cit9CitkZXZpY2VfaW5pdGNhbGwoYm9vdF9tZW1fcmVtb3ZlX2luaXQpOwogI2Vu
ZGlmCgo+IAo+Pgo+Pgo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
