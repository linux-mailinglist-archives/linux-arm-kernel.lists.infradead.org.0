Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B86149E5A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 04:00:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGxpgnL2KtYo9gsUYljCZJd2jaa0MDUIbR8jt8UZUYE=; b=hfnF24D4g4yk2n
	cIdpjhBTNqw9Am/sm7uQbFu99JsTE6x55ntN3EYVehKW6esVHJx7ZrEEkpWUQmfavMB/LCEsMmlUw
	xaOvuLC7/4yUQrWj492wAL0Qp1yyTXBwnlfq2TzgrhuvyJtrX7SH17A2MHThFKpMINTj9qcq8X8yy
	yBRwJatSYKLv110Nnx3EoknfIrj9kldqtUAbP14RNxWyfbEIv9HjvB0NwHSb1aGReY3j47ZBBxpor
	L1UFqs+YdWB7JgUAA73OSHWjFNE8JpK3+buBK4/4QMz8akWwMsWquFJftInErMW6T1NY1mj5ZAnBl
	B/XuKBKfz1wemmwutZwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivudJ-0005Ya-Dy; Mon, 27 Jan 2020 03:00:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivud3-0005YG-0y
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 02:59:58 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6934F20720;
 Mon, 27 Jan 2020 02:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580093992;
 bh=Xxe6e1RbtGn4/jUYrlDkK2iVd7wbKVCAUBJPGAeGEvk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pkR1ldAGILY7ByaZeZKE51wQBHl8Rev9VIgD1Rt2qUp2zzEeiDsmpCWuBmo3k3K/K
 zT01gJcoa9jeN+LW5t1rUwsYtJ8ULwZKlofyZvEhLrdRV9bcfQ3ZSiC39VrgC+r3vt
 SzwnOuNGl0WXlnG1/ar5Gqf5ncnnydrUK59NBVg4=
Date: Sun, 26 Jan 2020 18:59:51 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
Message-Id: <20200126185951.c9246349befcccce210a4ab8@linux-foundation.org>
In-Reply-To: <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_185957_091781_5D31E033 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: thellstrom@vmware.com, yang.shi@linux.alibaba.com,
 Russell King - ARM Linux <linux@armlinux.org.uk>, aneesh.kumar@linux.ibm.com,
 linux-kernel@vger.kernel.org, Jon Hunter <jonathanh@nvidia.com>,
 linux-mm@kvack.org, Thierry Reding <thierry.reding@gmail.com>,
 Wei Yang <richardw.yang@linux.intel.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, dan.j.williams@intel.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAyNiBKYW4gMjAyMCAxNzo0Nzo1NyArMDMwMCBEbWl0cnkgT3NpcGVua28gPGRpZ2V0
eEBnbWFpbC5jb20+IHdyb3RlOgoKPiAxOC4wMS4yMDIwIDAyOjIyLCBXZWkgWWFuZyDQv9C40YjQ
tdGCOgo+ID4gVXNlIHRoZSBnZW5lcmFsIGhlbHBlciBpbnN0ZWFkIG9mIGRvIGl0IGJ5IGhhbmQu
Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFdlaSBZYW5nIDxyaWNoYXJkdy55YW5nQGxpbnV4Lmlu
dGVsLmNvbT4KPiA+IC0tLQo+ID4gIG1tL21yZW1hcC5jIHwgNyArKy0tLS0tCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL21tL21yZW1hcC5jIGIvbW0vbXJlbWFwLmMKPiA+IGluZGV4IGMyYWY4YmE0YmE0My4u
YTI1ODkxNGYzZWUxIDEwMDY0NAo+ID4gLS0tIGEvbW0vbXJlbWFwLmMKPiA+ICsrKyBiL21tL21y
ZW1hcC5jCj4gPiBAQCAtMjUzLDExICsyNTMsOCBAQCB1bnNpZ25lZCBsb25nIG1vdmVfcGFnZV90
YWJsZXMoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCj4gPiAgCj4gPiAgCWZvciAoOyBvbGRf
YWRkciA8IG9sZF9lbmQ7IG9sZF9hZGRyICs9IGV4dGVudCwgbmV3X2FkZHIgKz0gZXh0ZW50KSB7
Cj4gPiAgCQljb25kX3Jlc2NoZWQoKTsKPiA+IC0JCW5leHQgPSAob2xkX2FkZHIgKyBQTURfU0la
RSkgJiBQTURfTUFTSzsKPiA+IC0JCS8qIGV2ZW4gaWYgbmV4dCBvdmVyZmxvd2VkLCBleHRlbnQg
YmVsb3cgd2lsbCBiZSBvayAqLwo+ID4gKwkJbmV4dCA9IHBtZF9hZGRyX2VuZChvbGRfYWRkciwg
b2xkX2VuZCk7Cj4gPiAgCQlleHRlbnQgPSBuZXh0IC0gb2xkX2FkZHI7Cj4gPiAtCQlpZiAoZXh0
ZW50ID4gb2xkX2VuZCAtIG9sZF9hZGRyKQo+ID4gLQkJCWV4dGVudCA9IG9sZF9lbmQgLSBvbGRf
YWRkcjsKPiA+ICAJCW9sZF9wbWQgPSBnZXRfb2xkX3BtZCh2bWEtPnZtX21tLCBvbGRfYWRkcik7
Cj4gPiAgCQlpZiAoIW9sZF9wbWQpCj4gPiAgCQkJY29udGludWU7Cj4gPiBAQCAtMzAxLDcgKzI5
OCw3IEBAIHVuc2lnbmVkIGxvbmcgbW92ZV9wYWdlX3RhYmxlcyhzdHJ1Y3Qgdm1fYXJlYV9zdHJ1
Y3QgKnZtYSwKPiA+ICAKPiA+ICAJCWlmIChwdGVfYWxsb2MobmV3X3ZtYS0+dm1fbW0sIG5ld19w
bWQpKQo+ID4gIAkJCWJyZWFrOwo+ID4gLQkJbmV4dCA9IChuZXdfYWRkciArIFBNRF9TSVpFKSAm
IFBNRF9NQVNLOwo+ID4gKwkJbmV4dCA9IHBtZF9hZGRyX2VuZChuZXdfYWRkciwgbmV3X2FkZHIg
KyBsZW4pOwo+ID4gIAkJaWYgKGV4dGVudCA+IG5leHQgLSBuZXdfYWRkcikKPiA+ICAJCQlleHRl
bnQgPSBuZXh0IC0gbmV3X2FkZHI7Cj4gPiAgCQltb3ZlX3B0ZXModm1hLCBvbGRfcG1kLCBvbGRf
YWRkciwgb2xkX2FkZHIgKyBleHRlbnQsIG5ld192bWEsCj4gPiAKPiAKPiBIZWxsbyBXZWksCj4g
Cj4gU3RhcnRpbmcgd2l0aCBuZXh0LTIwMjAwMTIyLCBJJ20gc2VlaW5nIHRoZSBmb2xsb3dpbmcg
aW4gS01TRyBvbiBOVklESUEKPiBUZWdyYSAoQVJNMzIpOgo+IAo+ICAgQlVHOiBCYWQgcnNzLWNv
dW50ZXIgc3RhdGUgbW06KHB0cnZhbCkgdHlwZTpNTV9BTk9OUEFHRVMgdmFsOjE5MAo+IAo+IGFu
ZCBldmVudHVhbGx5IGtlcm5lbCBoYW5ncy4KPiAKPiBHaXQncyBiaXNlY3Rpb24gcG9pbnRzIHRv
IHRoaXMgcGF0Y2ggYW5kIHJldmVydGluZyBpdCBoZWxwcy4gUGxlYXNlIGZpeCwKPiB0aGFua3Mg
aW4gYWR2YW5jZS4KClRoYW5rcy4gIEkgaGFkIHRoZXNlIHRhZ2dlZCBmb3IgNS43LXJjMSBhbnl3
YXksIHNvIEknbGwgZHJvcCBhbGwgZml2ZQpwYXRjaGVzLgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
