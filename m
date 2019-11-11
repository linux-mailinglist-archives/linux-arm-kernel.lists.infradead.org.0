Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 039DCF7796
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 16:24:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLhW6pvkqT7A16f8zwib0eLgtHH+ZZ4bnu1hb4I5/sk=; b=tajTRs6Yj4/bkL
	/yrqjzZhjnRnK9rIjfVENLV+S4tm7VcxyPmB1w3xkDZq7L65C9jTWlx4f39gAr5AdXVr6hBXjnk7c
	EiDanNtMc0KvAAbpXCt8gL0rV+af642J/tOkAt24r2CUxO98EvIiga6kX6SCqjDAwwtim+ByDQlXV
	/YK5rClUbDD7VoLYYibmM0wTV77K4u1WnsbGhZGz+9LDLHKwFraWJli7DNfjJiNLdtC7gMxo8UJye
	Mv7JiN4jctraI7Esv1hOgIj2s79UG2CYMyCVQRHFXS9eJgwZioCu8WABpF3Clr++7Z7yI0A2Unozy
	6/QFPbEHzBEGNgPw91Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUBYG-0002nZ-Ds; Mon, 11 Nov 2019 15:24:24 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUBY7-0002mt-CP
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 15:24:17 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xABFO7G0123167;
 Mon, 11 Nov 2019 09:24:07 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573485847;
 bh=CS+i48le/nixyfp28KvB8emlqsL8zLIaTpD4UiUPBgg=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=EFxfIiWFMAuTURTKB1Nqf1eArMcjvwoTQtrncyqluxEXYyeL9EX1bIRk4TKehpxHC
 vWhrB04F3pd6z97BEeGNblTbLXPidgZlnObE6Oqi3rJcnG1G/EdVBqIij3czCePGwc
 bmTxhAVGtgOxmrzho+ffLh0BGuw+SpobEDOq6sdM=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xABFO7Qr002743
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 Nov 2019 09:24:07 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 09:23:49 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 09:23:49 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xABFO2lD094280;
 Mon, 11 Nov 2019 09:24:03 -0600
Subject: Re: [PATCH v5 09/15] dmaengine: ti: New driver for K3 UDMA - split#1:
 defines, structs, io func
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
References: <20191111135330.8235-1-peter.ujfalusi@ti.com>
 <20191111135330.8235-10-peter.ujfalusi@ti.com>
Message-ID: <f6ad18d4-a8c2-fbed-3e41-40dcb23e651c@ti.com>
Date: Mon, 11 Nov 2019 17:25:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111135330.8235-10-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_072415_549182_30E8FF8B 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 j-keerthy@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 tony@atomide.com, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxMS8xMS8yMDE5IDE1LjUzLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiBTcGxpdCBw
YXRjaCBmb3IgcmV2aWV3IGNvbnRhaW5pbmc6IGRlZmluZXMsIHN0cnVjdHMsIGlvIGFuZCBsb3cg
bGV2ZWwKPiBmdW5jdGlvbnMgYW5kIGludGVycnVwdCBjYWxsYmFja3MuCj4gCj4gRE1BIGRyaXZl
ciBmb3IKPiBUZXhhcyBJbnN0cnVtZW50cyBLMyBOQVZTUyBVbmlmaWVkIERNQSDigJMgUGVyaXBo
ZXJhbCBSb290IENvbXBsZXggKFVETUEtUCkKPiAKPiBUaGUgVURNQS1QIGlzIGludGVuZGVkIHRv
IHBlcmZvcm0gc2ltaWxhciAoYnV0IHNpZ25pZmljYW50bHkgdXBncmFkZWQpIGZ1bmN0aW9ucwo+
IGFzIHRoZSBwYWNrZXQtb3JpZW50ZWQgRE1BIHVzZWQgb24gcHJldmlvdXMgU29DIGRldmljZXMu
IFRoZSBVRE1BLVAgbW9kdWxlCj4gc3VwcG9ydHMgdGhlIHRyYW5zbWlzc2lvbiBhbmQgcmVjZXB0
aW9uIG9mIHZhcmlvdXMgcGFja2V0IHR5cGVzLiBUaGUgVURNQS1QIGlzCj4gYXJjaGl0ZWN0ZWQg
dG8gZmFjaWxpdGF0ZSB0aGUgc2VnbWVudGF0aW9uIGFuZCByZWFzc2VtYmx5IG9mIFNvQyBETUEg
ZGF0YQo+IHN0cnVjdHVyZSBjb21wbGlhbnQgcGFja2V0cyB0by9mcm9tIHNtYWxsZXIgZGF0YSBi
bG9ja3MgdGhhdCBhcmUgbmF0aXZlbHkKPiBjb21wYXRpYmxlIHdpdGggdGhlIHNwZWNpZmljIHJl
cXVpcmVtZW50cyBvZiBlYWNoIGNvbm5lY3RlZCBwZXJpcGhlcmFsLiBNdWx0aXBsZQo+IFR4IGFu
ZCBSeCBjaGFubmVscyBhcmUgcHJvdmlkZWQgd2l0aGluIHRoZSBETUEgd2hpY2ggYWxsb3cgbXVs
dGlwbGUgc2VnbWVudGF0aW9uCj4gb3IgcmVhc3NlbWJseSBvcGVyYXRpb25zIHRvIGJlIG9uZ29p
bmcuIFRoZSBETUEgY29udHJvbGxlciBtYWludGFpbnMgc3RhdGUKPiBpbmZvcm1hdGlvbiBmb3Ig
ZWFjaCBvZiB0aGUgY2hhbm5lbHMgd2hpY2ggYWxsb3dzIHBhY2tldCBzZWdtZW50YXRpb24gYW5k
Cj4gcmVhc3NlbWJseSBvcGVyYXRpb25zIHRvIGJlIHRpbWUgZGl2aXNpb24gbXVsdGlwbGV4ZWQg
YmV0d2VlbiBjaGFubmVscyBpbiBvcmRlcgo+IHRvIHNoYXJlIHRoZSB1bmRlcmx5aW5nIERNQSBo
YXJkd2FyZS4gQW4gZXh0ZXJuYWwgRE1BIHNjaGVkdWxlciBpcyB1c2VkIHRvCj4gY29udHJvbCB0
aGUgb3JkZXJpbmcgYW5kIHJhdGUgYXQgd2hpY2ggdGhpcyBtdWx0aXBsZXhpbmcgb2NjdXJzIGZv
ciBUcmFuc21pdAo+IG9wZXJhdGlvbnMuIFRoZSBvcmRlcmluZyBhbmQgcmF0ZSBvZiBSZWNlaXZl
IG9wZXJhdGlvbnMgaXMgaW5kaXJlY3RseSBjb250cm9sbGVkCj4gYnkgdGhlIG9yZGVyIGluIHdo
aWNoIGJsb2NrcyBhcmUgcHVzaGVkIGludG8gdGhlIERNQSBvbiB0aGUgUnggUFNJLUwgaW50ZXJm
YWNlLgo+IAo+IFRoZSBVRE1BLVAgYWxzbyBzdXBwb3J0cyBhY3RpbmcgYXMgYm90aCBhIFVUQyBh
bmQgVURNQS1DIGZvciBpdHMgaW50ZXJuYWwKPiBjaGFubmVscy4gQ2hhbm5lbHMgaW4gdGhlIFVE
TUEtUCBjYW4gYmUgY29uZmlndXJlZCB0byBiZSBlaXRoZXIgUGFja2V0LUJhc2VkIG9yCj4gVGhp
cmQtUGFydHkgY2hhbm5lbHMgb24gYSBjaGFubmVsIGJ5IGNoYW5uZWwgYmFzaXMuCj4gCj4gVGhl
IGluaXRpYWwgZHJpdmVyIHN1cHBvcnRzOgo+IC0gTUVNX1RPX01FTSAoVFIgbW9kZSkKPiAtIERF
Vl9UT19NRU0gKFBhY2tldCAvIFRSIG1vZGUpCj4gLSBNRU1fVE9fREVWIChQYWNrZXQgLyBUUiBt
b2RlKQo+IC0gQ3ljbGljIChQYWNrZXQgLyBUUiBtb2RlKQo+IC0gTWV0YWRhdGEgZm9yIGRlc2Ny
aXB0b3JzCj4gCj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNp
QHRpLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9kbWEvdGkvazMtdWRtYS5jIHwgMTA0NyArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2RtYS90aS9rMy11ZG1h
LmggfCAgMTIwICsrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTE2NyBpbnNlcnRpb25zKCspCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2RtYS90aS9rMy11ZG1hLmMKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvZG1hL3RpL2szLXVkbWEuaAo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS90aS9rMy11ZG1hLmMgYi9kcml2ZXJzL2RtYS90aS9rMy11ZG1hLmMKPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uYzZmOTRkNzkzODhjCj4gLS0tIC9k
ZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZG1hL3RpL2szLXVkbWEuYwoKLi4uCgo+ICtzdGF0aWMg
Ym9vbCB1ZG1hX2lzX2NoYW5fcnVubmluZyhzdHJ1Y3QgdWRtYV9jaGFuICp1YykKPiArewo+ICsJ
dTMyIHRydF9jdGwgPSAwOwo+ICsJdTMyIHJydF9jdGwgPSAwOwo+ICsKPiArCWlmICh1Yy0+dGNo
YW4pCj4gKwkJdHJ0X2N0bCA9IHVkbWFfdGNoYW5ydF9yZWFkKHVjLT50Y2hhbiwgVURNQV9UQ0hB
Tl9SVF9DVExfUkVHKTsKPiArCWlmICh1Yy0+cmNoYW4pCj4gKwkJcnJ0X2N0bCA9IHVkbWFfcmNo
YW5ydF9yZWFkKHVjLT5yY2hhbiwgVURNQV9SQ0hBTl9SVF9DVExfUkVHKTsKPiArCj4gKwlpZiAo
dHJ0X2N0bCAmIChVRE1BX0NIQU5fUlRfQ1RMX0VOIHx8IHJydF9jdGwgJiBVRE1BX0NIQU5fUlRf
Q1RMX0VOKSkKCkdhc2g6CmlmICh0cnRfY3RsICYgVURNQV9DSEFOX1JUX0NUTF9FTiB8fCBycnRf
Y3RsICYgVURNQV9DSEFOX1JUX0NUTF9FTikKCgo+ICsJCXJldHVybiB0cnVlOwo+ICsKPiArCXJl
dHVybiBmYWxzZTsKPiArfQoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ks
IFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDog
MDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
