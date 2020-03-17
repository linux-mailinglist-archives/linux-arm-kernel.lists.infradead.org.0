Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E78A4187F51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 12:00:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8P3kMxlhEzbajeuGfKCOO63+Q+EP4C7lqfXvhd943E=; b=dgOU9axrbX0mEd
	0euh7ubnZLJDUvlOp3IqQ7U7RJv7ucZBoG0dpzDOVwbcDfA/lyaEmSJ+4whaCAzDrE3NRMidHnPam
	p1WHrvGyfb9wLU9pTwK8r3SRknaCEPJNf37fSBgIyrxVbx3y4NFSscdWOXak2EFGlr8qq273th5JP
	rmD6VfFMSh/zXqSU4Hb7PF09FGbkSFpaH1X0Us8dOr/gYD4xkVQAq6g6P/ffYs05EotnKs4kz8ZkA
	zXwpQ5h/mPEyQ/JYWSY261hfEGZiynrI0aTwNS8lwViOfO9lLT1hc7JnuJAgjS7wvr6y6igmQmhZt
	kBcVc+4qsyaLilRdNZYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9xM-0005ww-7r; Tue, 17 Mar 2020 11:00:20 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9xA-0004gT-2v
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 11:00:10 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CC8CE9A663F0575FBBF9;
 Tue, 17 Mar 2020 18:59:51 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Tue, 17 Mar 2020
 18:59:42 +0800
Subject: Re: [RFC PATCH v1 0/3] arm64: tlb: add support for TTL field
To: Marc Zyngier <maz@kernel.org>
References: <20200311025309.1743-1-yezhenyu2@huawei.com>
 <247ad619edf17eb266f856d937dac826@kernel.org>
From: "yezhenyu (A)" <yezhenyu2@huawei.com>
Message-ID: <e155d744-4433-b9a6-109f-f665316dd928@huawei.com>
Date: Tue, 17 Mar 2020 18:59:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <247ad619edf17eb266f856d937dac826@kernel.org>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_040008_302321_00437031 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
LWtlcm5lbC8yMDIwMDIxMTE3NDkzOC4yNzgwOS0xLW1hekBrZXJuZWwub3JnLwoKSSBoYXZlIHNl
bnQgdGhlIFBBVENIIHYyIG9uIDIwMjAtMDMtMTIgWzFdLiBEbyB5b3UgaGF2ZSBhbnkgc3VnZ2Vz
dGlvbgpmb3IgbXkgY29kZT8gIElzIGl0IGFwcHJvcHJpYXRlIHRvIHBvc3QgbXkgY29kZSBiYXNl
ZCBvbiB5b3VyIGJyYW5jaD8KCkxvb2tpbmcgZm9yd2FyZCB0byB5b3VyIHN1Z2dlc3Rpb25zLgoK
ClRoYW5rcywKCgl6aGVueXUKClsxXSBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC8zLzEyLzIK
CQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
