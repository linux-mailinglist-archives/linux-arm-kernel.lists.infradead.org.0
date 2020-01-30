Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0142C14DCAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 15:16:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecEIfwFZeelUAuUuB/STMKa9/0v1byW3ondgtJ4r5k4=; b=CVCbFcZnz7bQS9
	AR2/14ytNyr7UoEjRIbOjQEoRSyHaDjNnERCnO/0fZXnWcpx7zBzzt19xmnkI/YUBGMtl8bHl7Njo
	8TFGSSzTCg6sLWIbP/P0p+gujsZuQGRSshWQgyZ8TgD7xtAaeJvZeaDAUO0s07bT2Q2fWrQgjSYGC
	Odq/VdBG55GJbEO3+zMVn5pnjqHHxErK5ttkHOD0//dYkvDkM9acqEbnlnOYGuYM5MOQ2kIp4gk82
	o4U2AcQUksPkgWVyv3K57aiKRYORgI0Z6T1UMYWEojCw0a7c9hZt39qMmFerzxtd1vFYlgcdbsaGF
	ZgLcEkFWXnjEfOGwRwUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixAbq-00053V-Vb; Thu, 30 Jan 2020 14:15:55 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixAbg-00052D-3G
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 14:15:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gX6hyt20QV23hW9BRxe2F20Xz12H4clKTdo4rjaVKBc=; b=gZUm7KU4jFD/ciDCawzCmQ4Qk
 BbhLC8I4sZQXvUmlzEilMB1DVfY3XM3xypcYqkiLSIJOeNRHBJLlXy1+SttaI9bOTE4tqilqEUTp3
 zuwGWZDR4DrnNm2V16/SirM6jMaoTXTqQ/14Fk5HuHvbogzgsSGkEOaDFKhH57y9KJB2N8cd6rIwk
 4iIlgmchckGeFZjvrlcJJawcO/0Fsb/5KD5oJUSFEUSGEmR8zSn0fU5HGTrvGr87HXpPkOSuywh0q
 3doHTSTEUH+1o2SRqlk/y4CZyoPo+OTr17xSPuPx2WwmBGflMV3yQxpdmoFuSAPGdlTp8xI1dLMPV
 Yog7MvofQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:33698)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ixAb9-0003h7-6h; Thu, 30 Jan 2020 14:15:11 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ixAb3-0004SG-Mt; Thu, 30 Jan 2020 14:15:05 +0000
Date: Thu, 30 Jan 2020 14:15:05 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Wei Yang <richardw.yang@linux.intel.com>
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
Message-ID: <20200130141505.GK25745@shell.armlinux.org.uk>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
 <20200129094738.GE25745@shell.armlinux.org.uk>
 <20200129215745.GA20736@richard>
 <20200129232441.GI25745@shell.armlinux.org.uk>
 <20200130013000.GA5137@richard>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130013000.GA5137@richard>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_061545_020886_39986E51 
X-CRM114-Status: GOOD (  28.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 akpm@linux-foundation.org, aneesh.kumar@linux.ibm.com,
 linux-kernel@vger.kernel.org, Jon Hunter <jonathanh@nvidia.com>,
 linux-mm@kvack.org, Thierry Reding <thierry.reding@gmail.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, Dmitry Osipenko <digetx@gmail.com>,
 dan.j.williams@intel.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gMzAsIDIwMjAgYXQgMDk6MzA6MDBBTSArMDgwMCwgV2VpIFlhbmcgd3JvdGU6
Cj4gT24gV2VkLCBKYW4gMjksIDIwMjAgYXQgMTE6MjQ6NDFQTSArMDAwMCwgUnVzc2VsbCBLaW5n
IC0gQVJNIExpbnV4IGFkbWluIHdyb3RlOgo+ID5PbiBUaHUsIEphbiAzMCwgMjAyMCBhdCAwNTo1
Nzo0NUFNICswODAwLCBXZWkgWWFuZyB3cm90ZToKPiA+PiBPbiBXZWQsIEphbiAyOSwgMjAyMCBh
dCAwOTo0NzozOEFNICswMDAwLCBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4gd3JvdGU6
Cj4gPj4gPk9uIFN1biwgSmFuIDI2LCAyMDIwIGF0IDA1OjQ3OjU3UE0gKzAzMDAsIERtaXRyeSBP
c2lwZW5rbyB3cm90ZToKPiA+PiA+PiAxOC4wMS4yMDIwIDAyOjIyLCBXZWkgWWFuZyDQv9C40YjQ
tdGCOgo+ID4+ID4+ID4gVXNlIHRoZSBnZW5lcmFsIGhlbHBlciBpbnN0ZWFkIG9mIGRvIGl0IGJ5
IGhhbmQuCj4gPj4gPj4gPiAKPiA+PiA+PiA+IFNpZ25lZC1vZmYtYnk6IFdlaSBZYW5nIDxyaWNo
YXJkdy55YW5nQGxpbnV4LmludGVsLmNvbT4KPiA+PiA+PiA+IC0tLQo+ID4+ID4+ID4gIG1tL21y
ZW1hcC5jIHwgNyArKy0tLS0tCj4gPj4gPj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKPiA+PiA+PiA+IAo+ID4+ID4+ID4gZGlmZiAtLWdpdCBhL21t
L21yZW1hcC5jIGIvbW0vbXJlbWFwLmMKPiA+PiA+PiA+IGluZGV4IGMyYWY4YmE0YmE0My4uYTI1
ODkxNGYzZWUxIDEwMDY0NAo+ID4+ID4+ID4gLS0tIGEvbW0vbXJlbWFwLmMKPiA+PiA+PiA+ICsr
KyBiL21tL21yZW1hcC5jCj4gPj4gPj4gPiBAQCAtMjUzLDExICsyNTMsOCBAQCB1bnNpZ25lZCBs
b25nIG1vdmVfcGFnZV90YWJsZXMoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCj4gPj4gPj4g
PiAgCj4gPj4gPj4gPiAgCWZvciAoOyBvbGRfYWRkciA8IG9sZF9lbmQ7IG9sZF9hZGRyICs9IGV4
dGVudCwgbmV3X2FkZHIgKz0gZXh0ZW50KSB7Cj4gPj4gPj4gPiAgCQljb25kX3Jlc2NoZWQoKTsK
PiA+PiA+PiA+IC0JCW5leHQgPSAob2xkX2FkZHIgKyBQTURfU0laRSkgJiBQTURfTUFTSzsKPiA+
PiA+PiA+IC0JCS8qIGV2ZW4gaWYgbmV4dCBvdmVyZmxvd2VkLCBleHRlbnQgYmVsb3cgd2lsbCBi
ZSBvayAqLwo+ID4+ID4+ID4gKwkJbmV4dCA9IHBtZF9hZGRyX2VuZChvbGRfYWRkciwgb2xkX2Vu
ZCk7Cj4gPj4gPj4gPiAgCQlleHRlbnQgPSBuZXh0IC0gb2xkX2FkZHI7Cj4gPj4gPj4gPiAtCQlp
ZiAoZXh0ZW50ID4gb2xkX2VuZCAtIG9sZF9hZGRyKQo+ID4+ID4+ID4gLQkJCWV4dGVudCA9IG9s
ZF9lbmQgLSBvbGRfYWRkcjsKPiA+PiA+PiA+ICAJCW9sZF9wbWQgPSBnZXRfb2xkX3BtZCh2bWEt
PnZtX21tLCBvbGRfYWRkcik7Cj4gPj4gPj4gPiAgCQlpZiAoIW9sZF9wbWQpCj4gPj4gPj4gPiAg
CQkJY29udGludWU7Cj4gPj4gPj4gPiBAQCAtMzAxLDcgKzI5OCw3IEBAIHVuc2lnbmVkIGxvbmcg
bW92ZV9wYWdlX3RhYmxlcyhzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwKPiA+PiA+PiA+ICAK
PiA+PiA+PiA+ICAJCWlmIChwdGVfYWxsb2MobmV3X3ZtYS0+dm1fbW0sIG5ld19wbWQpKQo+ID4+
ID4+ID4gIAkJCWJyZWFrOwo+ID4+ID4+ID4gLQkJbmV4dCA9IChuZXdfYWRkciArIFBNRF9TSVpF
KSAmIFBNRF9NQVNLOwo+ID4+ID4+ID4gKwkJbmV4dCA9IHBtZF9hZGRyX2VuZChuZXdfYWRkciwg
bmV3X2FkZHIgKyBsZW4pOwo+ID4+ID4+ID4gIAkJaWYgKGV4dGVudCA+IG5leHQgLSBuZXdfYWRk
cikKPiA+PiA+PiA+ICAJCQlleHRlbnQgPSBuZXh0IC0gbmV3X2FkZHI7Cj4gPj4gPj4gPiAgCQlt
b3ZlX3B0ZXModm1hLCBvbGRfcG1kLCBvbGRfYWRkciwgb2xkX2FkZHIgKyBleHRlbnQsIG5ld192
bWEsCj4gPj4gPj4gPiAKPiA+PiA+PiAKPiA+PiA+PiBIZWxsbyBXZWksCj4gPj4gPj4gCj4gPj4g
Pj4gU3RhcnRpbmcgd2l0aCBuZXh0LTIwMjAwMTIyLCBJJ20gc2VlaW5nIHRoZSBmb2xsb3dpbmcg
aW4gS01TRyBvbiBOVklESUEKPiA+PiA+PiBUZWdyYSAoQVJNMzIpOgo+ID4+ID4+IAo+ID4+ID4+
ICAgQlVHOiBCYWQgcnNzLWNvdW50ZXIgc3RhdGUgbW06KHB0cnZhbCkgdHlwZTpNTV9BTk9OUEFH
RVMgdmFsOjE5MAo+ID4+ID4+IAo+ID4+ID4+IGFuZCBldmVudHVhbGx5IGtlcm5lbCBoYW5ncy4K
PiA+PiA+PiAKPiA+PiA+PiBHaXQncyBiaXNlY3Rpb24gcG9pbnRzIHRvIHRoaXMgcGF0Y2ggYW5k
IHJldmVydGluZyBpdCBoZWxwcy4gUGxlYXNlIGZpeCwKPiA+PiA+PiB0aGFua3MgaW4gYWR2YW5j
ZS4KPiA+PiA+Cj4gPj4gPlRoZSBhYm92ZSBpcyBkZWZpbml0ZWx5IHdyb25nIC0gcFhYX2FkZHJf
ZW5kKCkgYXJlIGRlc2lnbmVkIHRvIGJlIHVzZWQKPiA+PiA+d2l0aCBhbiBhZGRyZXNzIGluZGV4
IHdpdGhpbiB0aGUgcFhYIHRhYmxlIHRhYmxlIGFuZCB0aGUgYWRkcmVzcyBpbmRleAo+ID4+ID5v
ZiBlaXRoZXIgdGhlIGxhc3QgZW50cnkgaW4gdGhlIHNhbWUgcFhYIHRhYmxlIG9yIHRoZSBiZWdp
bm5pbmcgb2YgdGhlCj4gPj4gPl9uZXh0XyBwWFggdGFibGUuICBBcmJpdGFyeSBlbmQgYWRkcmVz
cyBpbmRpY2llcyBhcmUgbm90IGFsbG93ZWQuCj4gPj4gPgo+ID4+IAo+ID4+ICNkZWZpbmUgcG1k
X2FkZHJfZW5kKGFkZHIsIGVuZCkJCQkJCQlcCj4gPj4gKHsJdW5zaWduZWQgbG9uZyBfX2JvdW5k
YXJ5ID0gKChhZGRyKSArIFBNRF9TSVpFKSAmIFBNRF9NQVNLOwlcCj4gPj4gCShfX2JvdW5kYXJ5
IC0gMSA8IChlbmQpIC0gMSk/IF9fYm91bmRhcnk6IChlbmQpOwkJXAo+ID4+IH0pCj4gPj4gCj4g
Pj4gSWYgbXkgdW5kZXJzdGFuZGluZyBpcyBjb3JyZWN0LCB0aGUgZGVmaW5pdGlvbiBoZXJlIGFs
aWduIHRoZSBhZGRyIHRvIG5leHQgUE1ECj4gPj4gYm91bmRhcnkgb3IgZW5kLgo+ID4+IAo+ID4+
IEkgZG9uJ3Qgc2VlIHRoZSBwb3NzaWJpbGl0eSB0byBhY3Jvc3MgYW5vdGhlciBQTUQuIERvIEkg
bWlzcyBzb21ldGhpbmc/Cj4gPgo+ID5Mb29rIGF0IHRoZSBkZWZpbml0aW9uIG9mIHAqX2FkZHJf
ZW5kKCkgdGhhdCBhcmUgdXNlZCB3aGVuIHBhZ2UgdGFibGVzCj4gPmFyZSByb2xsZWQgdXAuCj4g
Pgo+IAo+IFNvcnJ5LCBJIGRvbid0IGdldCB5b3VyIHBvaW50Lgo+IAo+IFdoYXQncyB0aGUgbWVh
bmluZyBvZiAicm9sbCB1cCIgaGVyZT8KPiAKPiBXb3VsZCB5b3UgbWluZCBnaXZpbmcgbWUgYW4g
ZXhhbXBsZT8gSSBzZWUgcG1kX2FkZHJfZW5kKCkgaXMgbm90IHVzZWQgaW4gbWFueQo+IHBsYWNl
cyBpbiBjb3JlIGtlcm5lbC4gQnkgZ2xhbmNpbmcgdGhvc2UgdXNhZ2VzLCBhbGwgdGhlIHBsYWNl
cyB1c2UgaXQgbGlrZQo+IHBtZF9hZGRyX2VuZChhZGRyLCBlbmQpLiBTZWVtcyBubyBzcGVjaWFs
bHkgaGFuZGluZyBvbiB0aGUgZW5kIGFkZHJlc3MuCj4gCj4gT3IgeW91IG1lYW4gdGhlIGNhc2Ug
d2hlbiBwbWRfYWRkcl9lbmQoKSBpcyBkZWZpbmVkIHRvIHJldHVybiAiZW5kIiBkaXJlY3RseT8g
CgpOb3QgYWxsIGhhcmR3YXJlIGhhcyBmaXZlIGxldmVscyBvZiBwYWdlIHRhYmxlcy4gIFdoZW4g
aGFyZHdhcmUgZG9lcyBub3QKaGF2ZSBmaXZlIGxldmVscywgaXQgaXMgY29tbW9uIHRvICJyb2xs
IHVwIiBzb21lIG9mIHRoZSBwYWdlIHRhYmxlcyBpbnRvCm90aGVycy4KClRoZXJlIGFyZSBnZW5l
cmljIHdheXMgdG8gaW1wbGVtZW50IHRoaXMsIHdoaWNoIGluY2x1ZGUgdXNpbmc6CgppbmNsdWRl
L2FzbS1nZW5lcmljL3BndGFibGUtbm9wNGQuaAppbmNsdWRlL2FzbS1nZW5lcmljL3BndGFibGUt
bm9wdWQuaAppbmNsdWRlL2FzbS1nZW5lcmljL3BndGFibGUtbm9wbWQuaAoKYW5kIHRoZW4gdGhl
cmUncyBhcmNoaXRlY3R1cmUgd2F5cyB0byBpbXBsZW1lbnQgdGhpcy4gIDMyLWJpdCBBUk0gdGFr
ZXMKaXRzIGltcGxlbWVudGF0aW9uIGZvciBQTUQgbm90IGZyb20gdGhlIGdlbmVyaWMgdmVyc2lv
biwgd2hpY2gKcG9zdC1kYXRlcyAzMi1iaXQgQVJNLCBidXQgZnJvbSBob3cgcGFnZSB0YWJsZSBy
b2xsLXVwIHdhcyBpbXBsZW1lbnRlZApiYWNrIGF0IHRoZSB0aW1lIHdoZW4gdGhlIGN1cnJlbnQg
QVJNIHNjaGVtZSB3YXMgZGV2aXNlZC4gIFRoZSBnZW5lcmljCnNjaGVtZSBpcyB1bnN1aXRhYmxl
IGZvciAzMi1iaXQgQVJNIHNpbmNlIHdlIGRvIG1vcmUgdGhhbiBqdXN0IHJvbGwtdXAKcGFnZSB0
YWJsZXMsIGJ1dCB0aGlzIGlzIGlycmVsZXZlbnQgZm9yIHRoaXMgZGlzY3Vzc2lvbi4KCkFsbCB0
aHJlZSBvZiB0aGUgZ2VuZXJpYyBpbXBsZW1lbnRhdGlvbnMsIGFuZCAzMi1iaXQgQVJNLCBkZWZp
bmUgdGhlCnBYWF9hZGRyX2VuZCgpIG1hY3JvcyB0aHVzbHk6CgppbmNsdWRlL2FzbS1nZW5lcmlj
L3BndGFibGUtbm9wNGQuaDojZGVmaW5lIHA0ZF9hZGRyX2VuZChhZGRyLCBlbmQpIChlbmQpCmlu
Y2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS1ub3BtZC5oOiNkZWZpbmUgcG1kX2FkZHJfZW5kKGFk
ZHIsIGVuZCkgKGVuZCkKaW5jbHVkZS9hc20tZ2VuZXJpYy9wZ3RhYmxlLW5vcHVkLmg6I2RlZmlu
ZSBwdWRfYWRkcl9lbmQoYWRkciwgZW5kKSAoZW5kKQphcmNoL2FybS9pbmNsdWRlL2FzbS9wZ3Rh
YmxlLTJsZXZlbC5oOiNkZWZpbmUgcG1kX2FkZHJfZW5kKGFkZHIsZW5kKSAoZW5kKQoKc2luY2Us
IGFzIEkgc3RhdGVkLCBwWFhfYWRkcl9lbmQoKSBleHBlY3RzIGl0cyAiZW5kIiBhcmd1bWVudCB0
byBiZQp0aGUgYWRkcmVzcyBpbmRleCBvZiB0aGUgbmV4dCBlbnRyeSBpbiB0aGUgaW1tZWRpYXRl
bHkgdXBwZXIgcGFnZQp0YWJsZSBsZXZlbCwgb3IgdGhlIGFkZHJlc3MgaW5kZXggb2YgdGhlIGxh
c3QgZW50cnkgd2Ugd2lzaCB0bwpwcm9jZXNzLCB3aGljaCBldmVyIGlzIHNtYWxsZXIuCgpJZiBp
dCdzIGxhcmdlciB0aGFuIHRoZSBhZGRyZXNzIGluZGV4IG9mIHRoZSBuZXh0IGVudHJ5IGluIHRo
ZQppbW1lZGlhdGVseSB1cHBlciBwYWdlIHRhYmxlIGxldmVsLCB0aGVuIHRoZSBlZmZlY3Qgb2Yg
YWxsIHRoZXNlCm1hY3JvcyB3aWxsIGJlIHRvIHdhbGsgb2ZmIHRoZSBlbmQgb2YgdGhlIGN1cnJl
bnQgbGV2ZWwgb2YgcGFnZQp0YWJsZS4KClRvIHNlZSBob3cgdGhleSBfc2hvdWxkXyBiZSB1c2Vk
LCBzZWUgdGhlIGxvb3BzIGluIGZyZWVfcGdkX3JhbmdlKCkKYW5kIHRoZSBmcmVlX3BYWF9yYW5n
ZSgpIGZ1bmN0aW9ucyBjYWxsZWQgZnJvbSB0aGVyZSBhbmQgYmVsb3cuCgpJbiBhbGwgY2FzZXMg
d2hlbiB0aGUgcFhYX2FkZHJfZW5kKCkgbWFjcm8gd2FzIGludHJvZHVjZWQsIHdoYXQgSSBzdGF0
ZQphYm92ZSBob2xkcyB0cnVlIC0gYW5kIEkgYmVsaWV2ZSBzdGlsbCBob2xkcyB0cnVlIHRvZGF5
LCB1bnRpbCB0aGlzCnBhdGNoIHRoYXQgaGFzIHJlcG9ydGVkbHkgY2F1c2VkIGlzc3Vlcy4KCi0t
IApSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9w
ZXIvcGF0Y2hlcy8KRlRUQyBicm9hZGJhbmQgZm9yIDAuOG1pbGUgbGluZSBpbiBzdWJ1cmJpYTog
c3luYyBhdCAxMi4xTWJwcyBkb3duIDYyMmticHMgdXAKQWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5u
ZXQ6IDExLjlNYnBzIGRvd24gNTAwa2JwcyB1cAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
