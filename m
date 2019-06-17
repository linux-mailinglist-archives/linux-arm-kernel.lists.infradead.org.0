Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 605F1477B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 03:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iox0o939whg1gi+mUgl1vD2BTc+5yviMFGO3N85wN30=; b=j4wdxk56gFJH7a
	oeKRZM1B7fTCPREWbpS1fLKMokgpsJ8ryy7XrcBcqmO90wWNo00lvwJw6vMmOTi7AxjBTnOVA9fRE
	h7RXpC7sIWZNPlwTPhaiLTdZx2nOQAoPrbqrkiepkrQV2RJ0D33OIz6lhgPNSAhtTyEWBRs+dQkMc
	PqWKbOh03zUHxQlDfQY9pWkvlgl/CBSSw+bODSwuThoOEOkomq0J1jQ/FeSI0PgPACsrqxZ7vLymI
	nyDUMA+qWKib9d0m3Ms1M73cyPzUqZG7pydV6bLM/S83nqcPa7rMvOIqbpffrt6mHbZNKNbP7vjpu
	TLn02wmw5izXO5v53bGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcgVA-0007FS-4d; Mon, 17 Jun 2019 01:32:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcgUv-0007EH-IN
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 01:31:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73BDD28;
 Sun, 16 Jun 2019 18:31:43 -0700 (PDT)
Received: from [10.162.42.123] (p8cg001049571a15.blr.arm.com [10.162.42.123])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 6CA773F246; Sun, 16 Jun 2019 18:31:41 -0700 (PDT)
Subject: Re: LTP hugemmap05 test case failure on arm64 with linux-next
 (next-20190613)
To: Qian Cai <cai@lca.pw>, Will Deacon <will.deacon@arm.com>
References: <1560461641.5154.19.camel@lca.pw>
 <20190614102017.GC10659@fuggles.cambridge.arm.com>
 <1560514539.5154.20.camel@lca.pw>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <054b6532-a867-ec7c-0a72-6a58d4b2723e@arm.com>
Date: Mon, 17 Jun 2019 07:02:02 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1560514539.5154.20.camel@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_183149_661355_F07BEC5E 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 "linux-mm@kvack.org" <linux-mm@kvack.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gUWlhbiwKCk9uIDA2LzE0LzIwMTkgMDU6NDUgUE0sIFFpYW4gQ2FpIHdyb3RlOgo+IE9u
IEZyaSwgMjAxOS0wNi0xNCBhdCAxMToyMCArMDEwMCwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+IEhp
IFFpYW4sCj4+Cj4+IE9uIFRodSwgSnVuIDEzLCAyMDE5IGF0IDA1OjM0OjAxUE0gLTA0MDAsIFFp
YW4gQ2FpIHdyb3RlOgo+Pj4gTFRQIGh1Z2VtbWFwMDUgdGVzdCBjYXNlIFsxXSBjb3VsZCBub3Qg
ZXhpdCBpdHNlbGYgcHJvcGVybHkgYW5kIHRoZW4gZGVncmFkZQo+Pj4gdGhlCj4+PiBzeXN0ZW0g
cGVyZm9ybWFuY2Ugb24gYXJtNjQgd2l0aCBsaW51eC1uZXh0IChuZXh0LTIwMTkwNjEzKS4gVGhl
IGJpc2VjdGlvbgo+Pj4gc28KPj4+IGZhciBpbmRpY2F0ZXMsCj4+Pgo+Pj4gQkFEOsKgwqAzMGJh
ZmJjMzU3ZjEgTWVyZ2UgcmVtb3RlLXRyYWNraW5nIGJyYW5jaCAnYXJtNjQvZm9yLW5leHQvY29y
ZScKPj4+IEdPT0Q6IDBjM2QxMjRhMzA0MyBNZXJnZSByZW1vdGUtdHJhY2tpbmcgYnJhbmNoICdh
cm02NC1maXhlcy9mb3ItbmV4dC9maXhlcycKPj4KPj4gRGlkIHlvdSBmaW5pc2ggdGhlIGJpc2Vj
dGlvbiBpbiB0aGUgZW5kPyBBbHNvLCB3aGF0IGNvbmZpZyBhcmUgeW91IHVzaW5nCj4+ICh5b3Ug
dXN1YWxseSBoYXZlIHNvbWV0aGluZyBmYWlybHkgZXNvdGVyaWMgOyk/Cj4gCj4gTm8sIGl0IGlz
IHN0aWxsIHJ1bm5pbmcuCj4gCj4gaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2Nh
aWxjYS9saW51eC1tbS9tYXN0ZXIvYXJtNjQuY29uZmlnCj4gCgpXZXJlIHlvdSBhYmxlIHRvIGJp
c2VjdCB0aGUgcHJvYmxlbSB0aWxsIGEgcGFydGljdWxhciBjb21taXQgPwoKLSBBbnNodW1hbgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
