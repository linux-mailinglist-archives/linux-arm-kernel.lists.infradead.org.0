Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FA114C402
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 01:28:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zgC/ZLz7EFKe3cZrzBodAq+BqlQ7qDuk22BH74EF58=; b=I7jcLnGTbKyPar
	wXPaPn2QIczsokv/zsIeKkr3/yCLjo0NA9YurgjWaom4M6xNpZH9D3bVdkiYn5Q7qJDh9aJFR72ax
	jbhaUMs8MmBvPH9YuASrC72vzPRVU6WOR4/v6YY2UJQuS+UCYSFWzsu2GkB2h/J6nBtg/6nkio6Eb
	1lb+mFVUwb0+mzs6Jd8hFIZrEX155Xj6b0JA97qh19BgTHTzrKSfbPxJWs/m6Opss2ikMqVU4SZq+
	r79lArms+5L0++dT02FG2PB0Bl5tAa2tyw3p4VuRWlXCZQ3plrY8hdbmeXHAr17O+7nMI31u/zuGt
	ih8aij/x+JdX5PXRRFzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwbDk-0000eC-1i; Wed, 29 Jan 2020 00:28:40 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwbDa-0000dD-O0
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 00:28:32 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 16:28:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,375,1574150400"; d="scan'208";a="229456426"
Received: from richard.sh.intel.com (HELO localhost) ([10.239.159.54])
 by orsmga003.jf.intel.com with ESMTP; 28 Jan 2020 16:28:25 -0800
Date: Wed, 29 Jan 2020 08:28:38 +0800
From: Wei Yang <richardw.yang@linux.intel.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
Message-ID: <20200129002838.GA12835@richard>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
 <20200128004301.GD20624@richard>
 <d66bb20e-c0e7-caef-cbbc-aa216c2be7d6@gmail.com>
 <20200128232907.GA11467@richard>
 <27b70b0c-7945-cc85-8321-d9e4b6f17865@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27b70b0c-7945-cc85-8321-d9e4b6f17865@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_162830_830948_DFD9D14D 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: Wei Yang <richardw.yang@linux.intel.com>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, thellstrom@vmware.com,
 yang.shi@linux.alibaba.com, aneesh.kumar@linux.ibm.com,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Jon Hunter <jonathanh@nvidia.com>, linux-mm@kvack.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Wei Yang <richardw.yang@linux.intel.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, akpm@linux-foundation.org, dan.j.williams@intel.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKYW4gMjksIDIwMjAgYXQgMDI6MzU6MjVBTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+MjkuMDEuMjAyMCAwMjoyOSwgV2VpIFlhbmcg0L/QuNGI0LXRgjoKPj4gT24gVHVl
LCBKYW4gMjgsIDIwMjAgYXQgMDY6NTk6NDhQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3Rl
Ogo+Pj4gMjguMDEuMjAyMCAwMzo0MywgV2VpIFlhbmcg0L/QuNGI0LXRgjoKPj4+PiBPbiBTdW4s
IEphbiAyNiwgMjAyMCBhdCAwNTo0Nzo1N1BNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6
Cj4+Pj4+IDE4LjAxLjIwMjAgMDI6MjIsIFdlaSBZYW5nINC/0LjRiNC10YI6Cj4+Pj4+PiBVc2Ug
dGhlIGdlbmVyYWwgaGVscGVyIGluc3RlYWQgb2YgZG8gaXQgYnkgaGFuZC4KPj4+Pj4+Cj4+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBXZWkgWWFuZyA8cmljaGFyZHcueWFuZ0BsaW51eC5pbnRlbC5jb20+
Cj4+Pj4+PiAtLS0KPj4+Pj4+ICBtbS9tcmVtYXAuYyB8IDcgKystLS0tLQo+Pj4+Pj4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Pj4+Pgo+Pj4+Pj4g
ZGlmZiAtLWdpdCBhL21tL21yZW1hcC5jIGIvbW0vbXJlbWFwLmMKPj4+Pj4+IGluZGV4IGMyYWY4
YmE0YmE0My4uYTI1ODkxNGYzZWUxIDEwMDY0NAo+Pj4+Pj4gLS0tIGEvbW0vbXJlbWFwLmMKPj4+
Pj4+ICsrKyBiL21tL21yZW1hcC5jCj4+Pj4+PiBAQCAtMjUzLDExICsyNTMsOCBAQCB1bnNpZ25l
ZCBsb25nIG1vdmVfcGFnZV90YWJsZXMoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCj4+Pj4+
PiAgCj4+Pj4+PiAgCWZvciAoOyBvbGRfYWRkciA8IG9sZF9lbmQ7IG9sZF9hZGRyICs9IGV4dGVu
dCwgbmV3X2FkZHIgKz0gZXh0ZW50KSB7Cj4+Pj4+PiAgCQljb25kX3Jlc2NoZWQoKTsKPj4+Pj4+
IC0JCW5leHQgPSAob2xkX2FkZHIgKyBQTURfU0laRSkgJiBQTURfTUFTSzsKPj4+Pj4+IC0JCS8q
IGV2ZW4gaWYgbmV4dCBvdmVyZmxvd2VkLCBleHRlbnQgYmVsb3cgd2lsbCBiZSBvayAqLwo+Pj4+
Pj4gKwkJbmV4dCA9IHBtZF9hZGRyX2VuZChvbGRfYWRkciwgb2xkX2VuZCk7Cj4+Pj4+PiAgCQll
eHRlbnQgPSBuZXh0IC0gb2xkX2FkZHI7Cj4+Pj4+PiAtCQlpZiAoZXh0ZW50ID4gb2xkX2VuZCAt
IG9sZF9hZGRyKQo+Pj4+Pj4gLQkJCWV4dGVudCA9IG9sZF9lbmQgLSBvbGRfYWRkcjsKPj4+Pj4+
ICAJCW9sZF9wbWQgPSBnZXRfb2xkX3BtZCh2bWEtPnZtX21tLCBvbGRfYWRkcik7Cj4+Pj4+PiAg
CQlpZiAoIW9sZF9wbWQpCj4+Pj4+PiAgCQkJY29udGludWU7Cj4+Pj4+PiBAQCAtMzAxLDcgKzI5
OCw3IEBAIHVuc2lnbmVkIGxvbmcgbW92ZV9wYWdlX3RhYmxlcyhzdHJ1Y3Qgdm1fYXJlYV9zdHJ1
Y3QgKnZtYSwKPj4+Pj4+ICAKPj4+Pj4+ICAJCWlmIChwdGVfYWxsb2MobmV3X3ZtYS0+dm1fbW0s
IG5ld19wbWQpKQo+Pj4+Pj4gIAkJCWJyZWFrOwo+Pj4+Pj4gLQkJbmV4dCA9IChuZXdfYWRkciAr
IFBNRF9TSVpFKSAmIFBNRF9NQVNLOwo+Pj4+Pj4gKwkJbmV4dCA9IHBtZF9hZGRyX2VuZChuZXdf
YWRkciwgbmV3X2FkZHIgKyBsZW4pOwo+Pj4+Pj4gIAkJaWYgKGV4dGVudCA+IG5leHQgLSBuZXdf
YWRkcikKPj4+Pj4+ICAJCQlleHRlbnQgPSBuZXh0IC0gbmV3X2FkZHI7Cj4+Pj4+PiAgCQltb3Zl
X3B0ZXModm1hLCBvbGRfcG1kLCBvbGRfYWRkciwgb2xkX2FkZHIgKyBleHRlbnQsIG5ld192bWEs
Cj4+Pj4+Pgo+Pj4+Pgo+Pj4+PiBIZWxsbyBXZWksCj4+Pj4+Cj4+Pj4+IFN0YXJ0aW5nIHdpdGgg
bmV4dC0yMDIwMDEyMiwgSSdtIHNlZWluZyB0aGUgZm9sbG93aW5nIGluIEtNU0cgb24gTlZJRElB
Cj4+Pj4+IFRlZ3JhIChBUk0zMik6Cj4+Pj4+Cj4+Pj4+ICBCVUc6IEJhZCByc3MtY291bnRlciBz
dGF0ZSBtbToocHRydmFsKSB0eXBlOk1NX0FOT05QQUdFUyB2YWw6MTkwCj4+Pj4+Cj4+Pj4KPj4+
PiBUaGFua3MuCj4+Pj4KPj4+PiBXb3VsZCB5b3UgbWluZCBsZXR0aW5nIG1lIGtub3cgd2hpY2gg
Y2FzZSB5b3UgYXJlIHRlc3Rpbmc/Cj4+Pgo+Pj4gTm90aGluZyBzcGVjaWFsLCBzeXN0ZW1kIHN0
YXJ0cyB0byBmYWxsIGFwYXJ0IGR1cmluZyBib290Lgo+Pj4KPj4+PiBPciB0aGUgc3BlY2lhbCB0
aGluZyBpcyAzMi1iaXQgcGxhdGZvcm0/Cj4+PiBJIGhhdmUgYSBsaW1pdGVkIGtub3dsZWRnZSBh
Ym91dCBtbS8sIHNvIGNhbid0IHByb3ZpZGUgZGV0YWlsZWQgZXhwbGFuYXRpb24uCj4+Pgo+Pj4g
UGxlYXNlIHRha2UgYSBsb29rIGF0IHRoaXM6Cj4+Pgo+Pj4gWzFdCj4+PiBodHRwczovL2VsaXhp
ci5ib290bGluLmNvbS9saW51eC92NS41L3NvdXJjZS9hcmNoL2FybS9pbmNsdWRlL2FzbS9wZ3Rh
YmxlLTJsZXZlbC5oI0wyMTAKPj4+Cj4+PiBbMl0KPj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4u
Y29tL2xpbnV4L3Y1LjUvc291cmNlL2luY2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS5oI0w1NDkK
Pj4+Cj4+PiBbM10KPj4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPWMwYmExMGI1MTJlYjJlMmEzODg4
YjZlNmNjMGUwODlmNWU3YTE5MWIKPj4gCj4+IFRoYW5rcywgSSBzZWUgdGhlIGRpZmZlcmVuY2Ug
aGVyZS4KPj4gCj4+IElmIHRoaXMgaXMgdGhlIGNhc2UsIHdlIGNhbid0IHVzZSBwbWRfYWRkcl9l
bmQoKSB0byBzaW1wbGlmeSB0aGUgY2FsY3VsYXRpb24uCj4+IFRoaXMgY2hhbmdlcyB0aGUgYmVo
YXZpb3IuCj4+IAo+PiBJIHdvdWxkIHByZXBhcmUgYW5vdGhlciBwYXRjaCBzZXQgdG8gZml4IHRo
aXMuIFdvdWxkIHlvdSBtaW5kIGhlbHBpbmcgbWUKPj4gdmVyaWZ5IG9uIHlvdXIgcGxhdGZvcm0/
Cj4KPlN1cmUsIHBsZWFzZSBmZWVsIGZyZWUgdG8gQ0MgbWUgb24gdGhhdCBwYXRjaC4KClRoYW5r
cywgeW91IGFyZSBpbiB0aGUgY2MgbGlzdCBvZiB2Mi4KCkhvcGUgdGhpcyBvbmUgd29ya3MgZmlu
ZSBvbiBBUk0uCgotLSAKV2VpIFlhbmcKSGVscCB5b3UsIEhlbHAgbWUKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
