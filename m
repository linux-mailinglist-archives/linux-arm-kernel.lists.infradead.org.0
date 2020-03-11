Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A08E1816DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:30:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nsrb4T0fZftLZmjsDDmR+iNzUYlQ8qo4fonhp5LQZ68=; b=Xh9tmAjL2vOTNu
	ATESjqxqh6VIyNIRojc6KqCJ4vYErDKHP/9fDX/ZLcr6Uk9xJ1C2qUuQJXeh/WQW7Tt5u4vjkrC4f
	s0/cwavNDpyKvbU0ZtN0Y5z6YfWEcuO1LB5/mP/w2X3hwy8WPc/Wc4s1lwI/a0fqcyw9oDp21WB1s
	KVvejokeQ1lASrjUF37Sul2HAy6dzBluqud5zEk+82RU3FA0q/cwX5lND4UmLxvZa0ZoYCG798pzq
	3cVkURUE1FIzrsp4+V9fplnrBoPoN8qTlpWcLEIBEj5iF5c7HAwBu0NVLAoaNy6zHD52kyGnhHg3m
	kD/D2EeI/A2aNgVBdAIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBzYu-0000sF-S1; Wed, 11 Mar 2020 11:30:08 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBzYg-0000rO-Lv
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 11:29:56 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 2C5005F22DA3ED759626;
 Wed, 11 Mar 2020 19:29:47 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0; Wed, 11 Mar 2020
 19:29:37 +0800
Subject: Re: [RFC PATCH v1 0/3] arm64: tlb: add support for TTL field
To: Marc Zyngier <maz@kernel.org>
References: <20200311025309.1743-1-yezhenyu2@huawei.com>
 <247ad619edf17eb266f856d937dac826@kernel.org>
From: "yezhenyu (A)" <yezhenyu2@huawei.com>
Message-ID: <6279257b-2b8c-10d0-8bb8-b0f4b851febb@huawei.com>
Date: Wed, 11 Mar 2020 19:29:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <247ad619edf17eb266f856d937dac826@kernel.org>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_042954_879379_66577D8B 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, linux-arch@vger.kernel.org, arm@kernel.org,
 catalin.marinas@arm.com, guohanjun@huawei.com, linux-kernel@vger.kernel.org,
 xiexiangyou@huawei.com, steven.price@arm.com, zhangshaokun@hisilicon.com,
 linux-mm@kvack.org, broonie@kernel.org, prime.zeng@hisilicon.com,
 aneesh.kumar@linux.ibm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMjAvMy8xMSAxNzoxMiwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IFpoZW55
dSwKPiAKPiBPbiAyMDIwLTAzLTExIDAyOjUzLCBaaGVueXUgWWUgd3JvdGU6Cj4+IEFSTXY4LjQt
VFRMIHByb3ZpZGVzIHRoZSBUVEwgZmllbGQgaW4gdGxiaSBpbnN0cnVjdGlvbiB0byBpbmRpY2F0
ZQo+PiB0aGUgbGV2ZWwgb2YgdHJhbnNsYXRpb24gdGFibGUgd2FsayBob2xkaW5nIHRoZSBsZWFm
IGVudHJ5IGZvciB0aGUKPj4gYWRkcmVzcyB0aGF0IGlzIGJlaW5nIGludmFsaWRhdGVkLiBIYXJk
d2FyZSBjYW4gdXNlIHRoaXMgaW5mb3JtYXRpb24KPj4gdG8gZGV0ZXJtaW5lIGlmIHRoZXJlIHdh
cyBhIHJpc2sgb2Ygc3BsaW50ZXJpbmcuCj4+Cj4+IFRoaXMgc2V0IG9mIHBhdGNoZXMgYWRkcyBU
VEwgZmllbGQgdG8gX19UTEJJX0FERFIsIGFuZCB1c2VzCj4+IEFyY2hpdGVjdHVyZS1zcGVjaWZp
YyBNTSBjb250ZXh0IHRvIHBhc3MgdGhlIFRUTCB2YWx1ZSB0byB0bGIgaW50ZXJmYWNlLgo+Pgo+
PiBUaGUgZGVmYXVsdCB2YWx1ZSBvZiBUVEwgaXMgMCwgd2hpY2ggd2lsbCBub3QgaGF2ZSBhbnkg
aW1wYWN0IG9uIHRoZQo+PiBUTEIgbWFpbnRlbmFuY2UgaW5zdHJ1Y3Rpb25zLiBUaGUgbGFzdCBw
YXRjaCB0cnlzIHRvIHVzZSBUVEwgZmllbGQgaW4KPj4gc29tZSBvYnZpb3VzbHkgdGxiLWZsdXNo
IGludGVyZmFjZS4KPiAKPiBJIGhhdmUgYWxyZWFkeSBwb3N0ZWQgc29tZSBzdXBwb3J0IGZvciBB
Uk12OC40LVRUTCBhcyBwYXJ0IG9mIG15IE5WIHNlcmllcyBbMV0sCj4gcGF0Y2hlcyA2MiwgNjcs
IDY4IGFuZCA2OS4gVGhpcyBvbmx5IGRlYWxzIHdpdGggU3RhZ2UtMiB0cmFuc2xhdGlvbiBzbyBm
YXIuCj4gSWYgeW91IGludGVuZCB0byBhZGQgU3RhZ2UtMSwgcGxlYXNlIGJ1aWxkIG9uIHRvcCBv
ZiB3aGF0IEkgaGF2ZSBhbHJlYWR5IHBvc3RlZAo+IChJIGNhbiBleHRyYWN0IHRoZSBwYXRjaGVz
IG9uIGEgc2VwYXJhdGUgYnJhbmNoIGlmIHlvdSB3YW50KS4KPiAKPiBUaGFua3MsCj4gCj4gwqDC
oMKgwqDCoMKgwqAgTS4KPiAKPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJt
LWtlcm5lbC8yMDIwMDIxMTE3NDkzOC4yNzgwOS0xLW1hekBrZXJuZWwub3JnLwoKSSBqdXN0IHJl
YWRlZCB5b3VyIGNvZGUgY2hhbmdlcyB0byBUVEwuIFlvdSBwYXNzIHRoZSBUVEwgdmFsdWUgYnkg
Y2hhbmdpbmcgdGhlCmZ1bmN0aW9uIGludGVyZmFjZSwgd2hpY2ggb25seSBpbnZvbHZlcyB0aGUg
QVJNIGFuZCBBUk02NCBhcmNoaXRlY3R1cmVzIGluIFN0YWdlLTIKdHJhbnNsYXRpb24uCgpIb3dl
dmVyLCBpbiBTdGFnZS0xLCBtYW55IGNvbW1vbiBpbnRlcmZhY2VzKHN1Y2ggYXMgZmx1c2hfdGxi
X3JhbmdlKSBuZWVkIHRvIGJlCm1vZGlmaWVkLCB3aGljaCBpbnZvbHZlcyB2ZXJ5IG11Y2ggYXJj
aGl0ZWN0dXJlcy4gU28gSSB0cnkgdG8gdXNlIE1NIGNvbnRleHQgaW4KbW1fc3RydWN0IHRvIHBh
c3MgdGhlIFRUTCB2YWx1ZS4KCkkgd2lsbCBzZW5kIHBhdGNoIHYyIGJhc2VkIG9uIHRvcCBvZiB5
b3VyIGt2bS1hcm02NC9udi01LjYtcmMxIGJyYW5jaCBzb29uLgoKaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbWF6L2FybS1wbGF0Zm9ybXMuZ2l0L2xvZy8/
aD1rdm0tYXJtNjQvbnYtNS42LXJjMQoKClRoYW5rcywKWmhlbnl1CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
