Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9B44262A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0Tg5py/jL5iOgqFoA2cw36mAuyIWDU60V1rPTUMRqk=; b=Ym114Z2unj/y86
	bDKG1+j4ejsolr7sD/fscsc6aWlrR3V/siVJBOul4EJXnT/tKV9dTf3Yym7JaWJYhpdLPQotgLDGq
	NyKVdQku3SS+ZRK+Mba+JPbkH/RYjsnyk1xAs1Km87Ils6Uqj9NxQSLHyNewxSqgVAvVqfNZYfhAE
	V44Gmq3agDT9fM3mNCCBGCzkGJHwBNEwclMJgmYB0MmbaFNdjRVbLJ1dbF9YIvGHjhMf1DxoX95/6
	L1NWVMqsPWd+dXa5HYyQeGeSv9lv3KuwqX352xgPi0z2q7VH5bEU98UhE09KYYw5VGILxXtKzeoMM
	5lSHNXmXQyBy5du9MR9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2bb-0007oN-Aq; Wed, 12 Jun 2019 12:43:55 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2bP-0007nQ-6h
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:43:46 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id BDF4F40B2B569458F45B;
 Wed, 12 Jun 2019 20:43:36 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Wed, 12 Jun 2019
 20:43:35 +0800
Subject: Re: [PATCH] arm64: tlbflush: Ensure start/end of address range are
 aligned to stride
From: Hanjun Guo <guohanjun@huawei.com>
To: Will Deacon <will.deacon@arm.com>, <linux-arm-kernel@lists.infradead.org>
References: <20190611121928.19253-1-will.deacon@arm.com>
 <ef079778-2111-2672-129d-b2876496a9d8@huawei.com>
Message-ID: <a393343f-8bf0-0367-3239-c6368f5c1233@huawei.com>
Date: Wed, 12 Jun 2019 20:43:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <ef079778-2111-2672-129d-b2876496a9d8@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054345_439828_78DF3514 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS82LzExIDIzOjIzLCBIYW5qdW4gR3VvIHdyb3RlOgo+IEhpIFdpbGwsCj4gCj4gT24g
MjAxOS82LzExIDIwOjE5LCBXaWxsIERlYWNvbiB3cm90ZToKPj4gU2luY2UgY29tbWl0IDNkNjVi
NmJiYzAxZSAoImFybTY0OiB0bGJpOiBTZXQgTUFYX1RMQklfT1BTIHRvCj4+IFBUUlNfUEVSX1BU
RSIpLCB3ZSByZXNvcnQgdG8gcGVyLUFTSUQgaW52YWxpZGF0aW9uIHdoZW4gYXR0ZW1wdGluZyB0
bwo+PiBwZXJmb3JtIG1vcmUgdGhhbiBQVFJTX1BFUl9QVEUgaW52YWxpZGF0aW9uIGluc3RydWN0
aW9ucyBpbiBhIHNpbmdsZQo+PiBjYWxsIHRvIF9fZmx1c2hfdGxiX3JhbmdlKCkuIFdoaWxzdCB0
aGlzIGlzIGJlbmVmaWNpYWwsIHRoZSBtbXVfZ2F0aGVyCj4+IGNvZGUgZG9lcyBub3QgZW5zdXJl
IHRoYXQgdGhlIGVuZCBhZGRyZXNzIG9mIHRoZSByYW5nZSBpcyByb3VuZGVkLXVwCj4+IHRvIHRo
ZSBzdHJpZGUgd2hlbiBmcmVlaW5nIGludGVybWVkaWF0ZSBwYWdlIHRhYmxlcyBpbiBwWFhfZnJl
ZV90bGIoKSwKPj4gd2hpY2ggZGVmZWF0cyBvdXIgcmFuZ2UgY2hlY2tpbmcuCj4+Cj4+IEFsaWdu
IHRoZSBib3VuZHMgcGFzc2VkIGludG8gX19mbHVzaF90bGJfcmFuZ2UoKS4KPj4KPj4gQ2M6IENh
dGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+Cj4+IENjOiBQZXRlciBaaWps
c3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+Cj4+IFJlcG9ydGVkLWJ5OiBIYW5qdW4gR3VvIDxn
dW9oYW5qdW5AaHVhd2VpLmNvbT4KPiAKPiBUaGFua3MgZm9yIHRoZSBwYXRjaO+8jEkgd2lsbCB0
ZXN0IHRoZSBwYXRjaCB0b21vcnJvdyBteSBsb2NhbCB0aW1lCj4gYXMgaXQncyBsYXRlIGhlcmUs
IGFuZCB3aWxsIHVwZGF0ZSB5b3Ugd2hlbiBJIGdldCB0aGUgcmVzdWx0cy4KCkkgdGVzdGVkIHRo
aXMgcGF0Y2ggb24gdG9wIG9mIDUuMi1yYzEsIGFuZCBvbiB0aGUgS3VucGVuZzkyMCBBUk02NApz
ZXJ2ZXIgcGxhdGZvcm0sIHdpdGggdGVzdCBjYXNlIEkgcmVwb3J0ZWQgYmVmb3JlLCBJIGNhbiBz
ZWUgYWJvdXQKMTAwJSBzcGVlZHVwIGZvciBtdW5tYXAoKSAoZnJvbSBhYm91dCA0N3VzIHRvIDI1
dXMpLCB0aGF0J3MgZ3JlYXQhCgpUZXN0ZWQtYnk6IEhhbmp1biBHdW8gPGd1b2hhbmp1bkBodWF3
ZWkuY29tPgpSZXZpZXdlZC1ieTogSGFuanVuIEd1byA8Z3VvaGFuanVuQGh1YXdlaS5jb20+CgpU
aGFua3MKSGFuanVuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
