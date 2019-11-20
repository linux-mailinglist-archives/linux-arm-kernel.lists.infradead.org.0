Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B8C103128
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 02:30:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZS8l5UlomLJg1qUz8xBcv8Xs+ZLU0QwwdzIlIxN6gg=; b=NkLUgY1CbnsEo3
	nAJCo8sT30cP2ZfsU+ZeTCli8LPPnJPpu62uil97eEZnT9iNYM/xTn5vEXJWR/VqjJ4stjKdJuGFy
	S21P161sC8aHrdy0t48KV+0ESsiRtkpRHvBIbGRTXf2NUvZetZtnkFYVRAe2TzX+ZFdyvFlxNNqCW
	jDAXgj2NL/Ja5bKcxCugE6BDsBzWX1afjQrSGzaRpX+uO2nryFp2wLy8MPquOamKUQUizl9t6cj98
	pG1RztwGtBbfhLTwGVUaLXVrEXFjh5YgF94f5Ij/wGWI0CDu582nh/lu6giFCmhKs+h2AtAi1x0rG
	4gedxhHk6WBIeA94KBqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXEpT-0003ty-Dr; Wed, 20 Nov 2019 01:30:47 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXEpJ-0003t8-Pq
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 01:30:39 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 21FB7613BD1FC5D68747;
 Wed, 20 Nov 2019 09:30:30 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Wed, 20 Nov 2019
 09:30:17 +0800
Subject: Re: [RFC PATCH v2] arm64: cpufeatures: add support for tlbi range
 instructions
To: Marc Zyngier <maz@kernel.org>
References: <5DC960EB.9050503@huawei.com>
 <20191111132716.GA9394@willie-the-truck> <5DC96660.8040505@huawei.com>
 <d4542758f83b3df3ab391341499fecfb@www.loen.fr>
 <c9dfb341-9d14-1a62-0c34-6ec8bd9b4c55@huawei.com>
 <e6d2ad1c5392c2c3503ed8bb7560e04f@www.loen.fr>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <3b833c82-2c1b-462a-f06f-d4c8b373dac1@huawei.com>
Date: Wed, 20 Nov 2019 09:29:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <e6d2ad1c5392c2c3503ed8bb7560e04f@www.loen.fr>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_173038_001609_2D411D8E 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, wanghuiqiang <wanghuiqiang@huawei.com>,
 suzuki.poulose@arm.com, catalin.marinas@arm.com,
 Zhenyu Ye <yezhenyu2@huawei.com>, linux-kernel@vger.kernel.org,
 xiexiangyou@huawei.com, Linuxarm <linuxarm@huawei.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, arm@kernel.org,
 tangnianyao@huawei.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMTkvMTEvMTkgMTg6MDMsIE1hcmMgWnluZ2llciB3cm90ZToKPiBIaSBI
YW5qdW4sCj4gCj4gT24gMjAxOS0xMS0xOSAwMToxMywgSGFuanVuIEd1byB3cm90ZToKPj4gK0Nj
IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0IGFuZCBTaGFva3VuLgo+Pgo+PiBIaSBNYXJj
LAo+Pgo+PiBPbiAyMDE5LzExLzExIDIyOjA0LCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+PiBPbiAy
MDE5LTExLTExIDE0OjU2LCBaaGVueXUgWWUgd3JvdGU6Cj4+Pj4gT24gMjAxOS8xMS8xMSAyMToy
NywgV2lsbCBEZWFjb24gd3JvdGU6Cj4+Pj4+IE9uIE1vbiwgTm92IDExLCAyMDE5IGF0IDA5OjIz
OjU1UE0gKzA4MDAsIFpoZW55dSBZZSB3cm90ZToKPj4gWy4uLl0KPj4+Pj4KPj4+Pj4gSG93IGRv
ZXMgdGhpcyBhZGRyZXNzIG15IGNvbmNlcm5zIGhlcmU6Cj4+Pj4+IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LWFybS1rZXJuZWwvMjAxOTEwMzExMzE2NDkuR0IyNzE5NkB3aWxsaWUtdGhl
LXRydWNrLwo+Pj4+Pgo+Pj4+PiA/Cj4+Pj4+Cj4+Pj4+IFdpbGwKPj4+Pgo+Pj4+IEkgdGhpbmsg
eW91ciBjb25jZXJuIGlzIG1vcmUgYWJvdXQgdGhlIGhhcmR3YXJlIGxldmVsLCBhbmQgd2UgY2Fu
IGRvCj4+Pj4gbm90aGluZyBhYm91dAo+Pj4+IHRoaXMgYXQgYWxsLiBUaGUgaW50ZXJjb25uZWN0
L0RWTSBpbXBsZW1lbnRhdGlvbiBpcyBub3QgZXhwb3NlZCB0bwo+Pj4+IHNvZnR3YXJlIGxheWVy
Cj4+Pj4gKGFuZCBubyBuZWVkKSwgYW5kIG1heSBzaG91bGQgYmUgY29uc3RyYWluZWQgYXQgaGFy
ZHdhcmUgbGV2ZWwuCj4+Pgo+Pj4gWW91J3JlIG1pc3NpbmcgdGhlIHBvaW50IGhlcmU6IHRoZSBp
bnN0cnVjdGlvbiBtYXkgYmUgaW1wbGVtZW50ZWQKPj4+IGFuZCBwZXJmZWN0bHkgd29ya2luZyBh
dCB0aGUgQ1BVIGxldmVsLCBhbmQgeWV0IG5vdCBjYXJyaWVkIG92ZXIKPj4+IHRoZSBpbnRlcmNv
bm5lY3QuIEluIHRoaXMgc2l0dWF0aW9uLCBvdGhlciBDUFVzIG1heSBub3Qgb2JzZXJ2ZQo+Pj4g
dGhlIERWTSBtZXNzYWdlcyBpbnN0cnVjdGluZyB0aGVtIG9mIHN1Y2ggaW52YWxpZGF0aW9uLCBh
bmQgeW91J2xsIGVuZAo+Pj4gdXAgd2l0aCBtZW1vcnkgY29ycnVwdGlvbi4KPj4+Cj4+PiBTbywg
aW4gdGhlIGFic2VuY2Ugb2YgYW4gYXJjaGl0ZWN0dXJhbCBndWFyYW50ZWUgdGhhdCByYW5nZSBp
bnZhbGlkYXRpb24KPj4+IGlzIHN1cHBvcnRlZCBhbmQgb2JzZXJ2ZWQgYnkgYWxsIHRoZSBEVk0g
YWdlbnRzIGluIHRoZSBzeXN0ZW0sIHRoZXJlIG11c3QKPj4+IGJlIGEgZmlybXdhcmUgZGVzY3Jp
cHRpb24gZm9yIGl0IG9uIHdoaWNoIHRoZSBrZXJuZWwgY2FuIHJlbHkuCj4+Cj4+IEknbSB0aGlu
a2luZyBvZiBob3cgdG8gYWRkIGEgZmlybXdhcmUgZGVzY3JpcHRpb24gZm9yIGl0LCBob3cgYWJv
dXQgdGhpczoKPj4KPj4gQWRkaW5nIGEgc3lzdGVtIGxldmVsIGZsYWcgdG8gaW5kaWNhdGUgdGhl
IHN1cHBvcnRpbmcgb2YgVElCaSBieSByYW5nZSwKPj4gd2hpY2ggbWVhbnMgYWRkaW5nIGEgYmlu
ZGluZyBuYW1lIGZvciBleGFtcGxlICJ0bGJpLWJ5LXJhbmdlIiBhdCBzeXN0ZW0KPj4gbGV2ZWwg
aW4gdGhlIGR0cyBmaWxlLCBvciBhIHRsYmkgYnkgcmFuZ2UgZmxhZyBpbiBBQ1BJIEZBRFQgdGFi
bGUsIHRoZW4KPj4gd2UgdXNlIHRoZSBJRCByZWdpc3RlciBwZXItY3B1IGFuZCB0aGUgc3lzdGVt
IGxldmVsIGZsYWcgYXMKPj4KPj4gaWYgKGNwdXNfaGF2ZV9jb25zdF9jYXAoQVJNNjRfSEFTX1RM
QklfQllfUkFOR0UpICYmCj4+IHN5c3RlbV9sZXZlbF90bGJpX2J5X3JhbmdlKQo+PiDCoMKgwqDC
oGZsdXNoX3RsYl9ieV9yYW5nZSgpCj4+IGVsc2UKPj4gwqDCoMKgwqBmbHVzaF90bGJfcmFuZ2Uo
KQo+Pgo+PiBBbmQgdGhpcyBzZWVtcyB3b3JrIGZvciBoZXRlcm9nZW5lb3VzIHN5c3RlbSAob2xu
eSBwYXJ0cyBvZiB0aGUgQ1BVIHN1cHBvcnQKPj4gVExCaSBieSByYW5nZSkgYXMgd2VsbCwgY29y
cmVjdCBtZSBpZiBhbnl0aGluZyB3cm9uZy4KPiAKPiBJdCBjb3VsZCB3b3JrLCBidXQgaXQgbmVl
ZHMgdG8gY29tZSB3aXRoIHRoZSBzdHJvbmdlc3QgZ3VhcmFudGVlcyB0aGF0Cj4gYWxsIHRoZSBE
Vk0gYWdlbnRzIGluIHRoZSBzeXN0ZW0gdW5kZXJzdGFuZCB0aGlzIHR5cGUgb2YgaW52YWxpZGF0
aW9uLAo+IHNwZWNpYWxseSBhcyB3ZSBtb3ZlIGludG8gdGhlIFNWTSB0ZXJyaXRvcnkuIEl0IG1h
eSBhbHNvIG5lZWQgdG8gY29wZQo+IHdpdGggbm9uLWNvbXBsaWFudCBhZ2VudHMgYmVpbmcgaG90
LXBsdWdnZWQsIG9yIGF0IGxlYXN0IGRpc2NvdmVyZWQgbGF0ZS4KClRvdGFsbHkgYWdyZWVkLCB3
ZSBhcmUgd29ya2luZyBvbiB0aGlzIGluIHRoZSBzeXN0ZW0gbGV2ZWwgaW5jbHVkaW5nIFNNTVUu
Cgo+IAo+IEkgYWxzbyB3b25kZXIgaWYgdGhlIEFSTXY4LjQtVFRMIGV4dGVuc2lvbiAod2hpY2gg
SSBoYXZlIHBhdGNoZXMgZm9yIGluCj4gdGhlIG5lc3RlZCB2aXJ0IHNlcmllcykgcmVxdWlyZXMg
dGhlIHNhbWUga2luZCBvZiB0cmVhdG1lbnQgKGFmdGVyIGFsbCwKPiBpdCBoYXMgYW4gaW1wbGlj
aXQgcmFuZ2UgYmFzZWQgb24gdGhlIGJhc2UgZ3JhbnVsZSBzaXplIGFuZCBsZXZlbCkuCj4gCj4g
SW4gYW55IHdheSwgdGhpcyByZXF1aXJlcyBjYXJlZnVsIHNwZWNpZmljYXRpb24sIGFuZCBJIGRv
bid0IHRoaW5rCj4gd2UgY2FuIGltcHJvdmlzZSB0aGlzIG9uIHRoZSBNTC4uLiA7LSkKClN1cmUg
OiksIHRoZSBnb29kIG5ld3MgaXMgdGhhdCBBUk0gb2ZmaWNpYWxseSBhbm5vdW5jZWQgd2lsbCBi
ZQp3b3JraW5nIHdpdGggSHVhd2VpIGFnYWluLgoKU28gaWYgSSB1bmRlcnN0YW5kIHlvdXIgcG9p
bnQgY29ycmVjdGx5LCB3ZSBuZWVkIHN0ZXBzIHRvIHRha2U6CiAtIEFSTSBzcGVjIG5lZWRzIHRv
IG1ha2UgVElCaSBieSByYW5nZSBjcnlzdGFsIGNsZWFyIGFuZCBiZWluZwogICB3cml0dGVuIGRv
d24gaW4gdGhlIHNwZWM7CiAtIEZpcm13YXJlIGRlc2NyaXB0aW9uIG9mIHN1cHBvcnRpbmcgVExC
aSBieSByYW5nZSBpbiBzeXN0ZW0gbGV2ZWwKICAgZm9yIGJvdGggRkRUIGFuZCBBQ1BJOwogLSBU
aGVuIHVwc3RyZWFtIHRoZSBjb2RlLgoKVGhhbmtzCkhhbmp1bgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
