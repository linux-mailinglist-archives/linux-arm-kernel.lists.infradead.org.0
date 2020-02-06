Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730D0153EA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 07:23:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UnvNVZufwxF2VSr0vNzJYSG+Xi+0/VjE8Lx27fI5E7A=; b=csDWMfm/RY3CVLY+CE13JVpLD
	gDT7QCrFo9KYDjYgD82bsfOET00NJ+LXGvTuTaiiwpc3Hz40vzS7NcQkSr4wAaJImYx3imn1ScdvA
	N/4RifP03lrTKTr3/bifqfINvTHUwiWMuHlYtDRU5nnb3f1jafC4v0LdjRZ+QROe3OTuyzIuc7QXE
	tGty3m4skGeWi2IR7yji1JFUP1ywe4lIAzM1O2v08vdGa6qg2ilnmQSBvK0IRbG0ugkKg+eIveQN2
	ecccs4X6xDR0wiQVB3fDK8F/IQBz8sMR5AeFp82bqz3V4dgmMb/pSNeBZW0dHhxNM1aY/MdHqgVKZ
	UZRLpt0nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izaYy-000091-F9; Thu, 06 Feb 2020 06:22:56 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izaYs-00007b-Ox
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 06:22:52 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 40B44A058A6BDADCB195;
 Thu,  6 Feb 2020 14:22:30 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Thu, 6 Feb 2020
 14:22:24 +0800
Subject: Re: [PATCH 0/5] irqchip/gic-v4.1: Cleanup and fixes for GICv4.1
To: Marc Zyngier <maz@kernel.org>
References: <20200204090940.1225-1-yuzenghui@huawei.com>
 <004ca9ea2d525d5b1bcf1d78f10c61ba@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <df640d5a-e7ba-b1c8-51f9-89b843ad6adb@huawei.com>
Date: Thu, 6 Feb 2020 14:22:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <004ca9ea2d525d5b1bcf1d78f10c61ba@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_222250_981830_8B9C0F87 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: jason@lakedaemon.net, linux-kernel@vger.kernel.org,
 wanghaibin.wang@huawei.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMjAvMi81IDIwOjQ2LCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gSGkgWmVu
Z2h1aSwKPiAKPiBPbiAyMDIwLTAyLTA0IDA5OjA5LCBaZW5naHVpIFl1IHdyb3RlOgo+PiBIaSwK
Pj4KPj4gVGhpcyBzZXJpZXMgY29udGFpbnMgc29tZSBjbGVhbnVwcywgVlBST1BCQVNFUiBmaWVs
ZCBwcm9ncmFtbWluZyBmaXgKPj4gYW5kIGxldmVsMiB2UEUgdGFibGUgYWxsb2NhdGlvbiBlbmhh
bmNlbWVudCwgY29sbGVjdGVkIHdoaWxlIGxvb2tpbmcKPj4gdGhyb3VnaCB0aGUgR0lDdjQuMSBk
cml2ZXIgb25lIG1vcmUgdGltZS4KPj4KPj4gSG9wZSB0aGV5IHdpbGwgaGVscCwgdGhhbmtzIQo+
Pgo+PiBaZW5naHVpIFl1ICg1KToKPj4gwqAgaXJxY2hpcC9naWMtdjQuMTogRml4IHByb2dyYW1t
aW5nIG9mIEdJQ1JfVlBST1BCQVNFUl80XzFfU0laRQo+PiDCoCBpcnFjaGlwL2dpYy12NC4xOiBT
ZXQgdnBlX2wxX2Jhc2UgZm9yIGFsbCByZWRpc3RyaWJ1dG9ycwo+PiDCoCBpcnFjaGlwL2dpYy12
NC4xOiBFbnN1cmUgTDIgdlBFIHRhYmxlIGlzIGFsbG9jYXRlZCBhdCBSRCBsZXZlbAo+PiDCoCBp
cnFjaGlwL2dpYy12NC4xOiBEcm9wICd0bXAnIGluIGluaGVyaXRfdnBlX2wxX3RhYmxlX2Zyb21f
cmQoKQo+PiDCoCBpcnFjaGlwL2dpYy12My1pdHM6IFJlbW92ZSBzdXBlcmZsdW91cyBXQVJOX09O
Cj4+Cj4+IMKgZHJpdmVycy9pcnFjaGlwL2lycS1naWMtdjMtaXRzLmPCoMKgIHwgODAgKysrKysr
KysrKysrKysrKysrKysrKysrKysrLS0tCj4+IMKgaW5jbHVkZS9saW51eC9pcnFjaGlwL2FybS1n
aWMtdjMuaCB8wqAgMiArLQo+PiDCoDIgZmlsZXMgY2hhbmdlZCwgNzUgaW5zZXJ0aW9ucygrKSwg
NyBkZWxldGlvbnMoLSkKPiAKPiBUaGFua3MgYSBsb3QgZm9yIHRoaXMsIG11Y2ggYXBwcmVjaWF0
ZWQsIEknbSBxdWl0ZSBoYXBweSB3aXRoIHRoZSBvdmVyYWxsCj4gc3RhdGUgb2YgdGhlIHNlcmll
cy4gSWYgeW91IGNhbiBqdXN0IGFkZHJlc3MgdGhlIGNvdXBsZSBvZiBuaXRzIEkgaGF2ZSBvbgo+
IHBhdGNoICMzLCBJJ2xsIHRoZW4gcXVldWUgdGhlIHNlcmllcyBhbmQgc2VuZCBvZmYgdG8gVGhv
bWFzIHRvZ2V0aGVyIHdpdGgKPiB0aGUgcmVzdCBvZiB0aGUgcXVldWVkIGZpeGVzLgoKSSB3aWxs
IHJlc3BpbiBwYXRjaCMzIHdpdGggeW91ciBzdWdnZXN0aW9uIGFuZCBzZW5kIHYyIHRvZGF5LgpU
aGFua3MgZm9yIHlvdXIgcmV2aWV3IQoKClplbmdodWkKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
