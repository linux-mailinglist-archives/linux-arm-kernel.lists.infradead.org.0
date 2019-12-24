Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F414129C54
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 02:11:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbN0J2KYlfwZjhnEjIUAmukFlZxT/IvDR8eNIZ2CC/E=; b=Mh0fBrz79OcgSO
	oq7yyfs7F/TUvsSwLiAArUNIQBL173eFIlQ+I/iUYIjvzn8mUZEAwHR95lO8TBSCvzYl8mkR6gor5
	DDrr5NYqGS7l5oWOFIgpGDirNeobT7L/CvbdSZSOoOqa1GOmBFJngnjNE0HZMp2aW7nLUivwL8ah0
	OK28ENhRC47E4VZKn+01RXz9F2zK6q+PUYFuPTsL6ZKmKKVD9LRRTSpkcIwuDYHOYgIIwFJJX+oxb
	Xo9W8YqFFLMhFCDmWFQs/AR/vGFsiFTjlGAZCUqsJlQhAtn4UuFWld1LrMGkRUAGWtjcuGJPCAPR1
	jsy8PuAPu/9PfXlDE96g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijYjI-0001n4-P7; Tue, 24 Dec 2019 01:11:20 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijYj9-0001mg-Ir
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 01:11:13 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 31C863129C7C45629912;
 Tue, 24 Dec 2019 09:11:10 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Tue, 24 Dec 2019
 09:11:03 +0800
Subject: Re: [RFC PATCH 1/2] ACPICA/IORT: Correct the comment for id_count
To: John Garry <john.garry@huawei.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>, "Erik
 Schmauss" <erik.schmauss@intel.com>
References: <1577092997-9852-1-git-send-email-guohanjun@huawei.com>
 <efd1d3fd-0e7c-64af-f226-5f263e48d88c@huawei.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <02a5dc75-d1f1-9df5-3ce2-482fbf86075b@huawei.com>
Date: Tue, 24 Dec 2019 09:10:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <efd1d3fd-0e7c-64af-f226-5f263e48d88c@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_171111_786217_71861FFA 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-acpi@vger.kernel.org, linuxarm@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS8xMi8yMyAxODozNSwgSm9obiBHYXJyeSB3cm90ZToKPiBPbiAyMy8xMi8yMDE5IDA5
OjIzLCBIYW5qdW4gR3VvIHdyb3RlOgo+PiBJbiBJT1JUIHNwZWMKPj4gKGh0dHA6Ly9pbmZvY2Vu
dGVyLmFybS5jb20vaGVscC90b3BpYy9jb20uYXJtLmRvYy5kZW4wMDQ5ZC9ERU4wMDQ5RF9JT19S
ZW1hcHBpbmdfVGFibGUucGRmKSwKPj4gaWRfbnVtIG1lYW5zIE51bWJlciBvZiBJRHMgbWludXMg
b25lLCB1cGRhdGUgdGhlIGNvbW1lbnQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEhhbmp1biBHdW8g
PGd1b2hhbmp1bkBodWF3ZWkuY29tPgo+PiAtLS0KPj4KPj4gVGhpcyBwYXRjaCBqdXN0IGZvciBj
b21tZW50cywgbmVlZHMgdG8gYmUgdXBzdHJlYW0gaW4gQUNQSUNBIGZpcnN0Lgo+Pgo+PiDCoCBp
bmNsdWRlL2FjcGkvYWN0YmwyLmggfCAyICstCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9hY3BpL2Fj
dGJsMi5oIGIvaW5jbHVkZS9hY3BpL2FjdGJsMi5oCj4+IGluZGV4IGU0NWNlZDIuLjM4MjY0MmYg
MTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvYWNwaS9hY3RibDIuaAo+PiArKysgYi9pbmNsdWRlL2Fj
cGkvYWN0YmwyLmgKPj4gQEAgLTEwNCw3ICsxMDQsNyBAQCBlbnVtIGFjcGlfaW9ydF9ub2RlX3R5
cGUgewo+PiDCoCDCoCBzdHJ1Y3QgYWNwaV9pb3J0X2lkX21hcHBpbmcgewo+PiDCoMKgwqDCoMKg
IHUzMiBpbnB1dF9iYXNlO8KgwqDCoMKgwqDCoMKgIC8qIExvd2VzdCB2YWx1ZSBpbiBpbnB1dCBy
YW5nZSAqLwo+PiAtwqDCoMKgIHUzMiBpZF9jb3VudDvCoMKgwqDCoMKgwqDCoCAvKiBOdW1iZXIg
b2YgSURzICovCj4+ICvCoMKgwqAgdTMyIGlkX2NvdW50O8KgwqDCoMKgwqDCoMKgIC8qIE51bWJl
ciBvZiBJRHMgaW4gdGhlIHJhbmdlIG1pbnVzIG9uZSAqLwo+IAo+IFRoZSBJT1JUIHNwZWMgYWxz
byB1c2VzIHRoZSB0ZXJtICJMZW5ndGgiIGluIHRoZSBleGFtcGxlcy4uLgoKTW9yZSBjb25mdXNp
bmcuLi4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
