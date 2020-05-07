Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53101C8D3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YLwhXXdEHn4bOe8a/bksyz5IqeqU3c5MNle+NYv/mSU=; b=KbQ1TuzctdD6TbAVLltEWstaT
	ck7dnMeSCfHVNqdwhwoSyqunmolMX3k1KGIT/alcsuo6U7SwYcyGZ0EWza8VXVNdvToisvoWHgaKI
	5xjz7em0HD/B8cS2yCwFRdCMyMJ0SVDzscEdNpGYGLN+IOvGlsyID6BBsyVckZfVs5cMMG1QT1JPp
	nW29J6PsKlkw1gpGHuG68iX0eveDsJHc25k77jrh7toiQs0a6wSTdmN1jb7IkXDnxsSH9gwOW44qZ
	tbZkBmRXUJ0KBZI1hFucCxW/o26VJbR6AnkH1gil6xtTuiRWAxXRANMFYCEpzU/nUo1mIZn7nHc/Q
	qBDEXIKtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWh6U-0006Zk-7h; Thu, 07 May 2020 14:02:22 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWh6M-0006Yb-UI
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:02:16 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E086F7C6EBFA0A9EE031;
 Thu,  7 May 2020 22:02:09 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.93) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Thu, 7 May 2020
 22:02:04 +0800
Subject: Re: [PATCH] ACPI: IORT: Add extra message "applying workaround" for
 off-by-1 issue
From: Hanjun Guo <guohanjun@huawei.com>
To: Ard Biesheuvel <ardb@kernel.org>
References: <1588858868-18039-1-git-send-email-guohanjun@huawei.com>
 <CAMj1kXHGfW=OKLO1S1Mf__9TzNXkrZ5BNvD8H_QYUTtF+awwpg@mail.gmail.com>
 <251b222a-7340-2d06-f07b-f81a9c19ac43@huawei.com>
Message-ID: <628896e3-e43f-5814-a5ff-2bd5de223f20@huawei.com>
Date: Thu, 7 May 2020 22:02:03 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <251b222a-7340-2d06-f07b-f81a9c19ac43@huawei.com>
Content-Language: en-GB
X-Originating-IP: [10.166.213.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_070215_146672_77865BCA 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC81LzcgMjE6NTMsIEhhbmp1biBHdW8gd3JvdGU6Cj4gSGkgQXJkLAo+IAo+IE9uIDIw
MjAvNS83IDIxOjQ5LCBBcmQgQmllc2hldXZlbCB3cm90ZToKPj4gT24gVGh1LCA3IE1heSAyMDIw
IGF0IDE1OjQ3LCBIYW5qdW4gR3VvIDxndW9oYW5qdW5AaHVhd2VpLmNvbT4gd3JvdGU6Cj4+Pgo+
Pj4gQXMgd2UgYWxyZWFkeSBhcHBsaWVkIGEgd29ya2Fyb3VuZCBmb3IgdGhlIG9mZi1ieS0xIGlz
c3VlLAo+Pj4gaXQncyBnb29kIHRvIGFkZCBleHRyYSBtZXNzYWdlICJhcHBseWluZyB3b3JrYXJv
dW5kIiB0bwo+Pj4gbWFrZSBwZW9wbGUgbGVzcyB1bmVhc3kgdG8gc2VlIHN1Y2ggbWVzc2FnZSBp
biB0aGUgYm9vdCBsb2cuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSGFuanVuIEd1byA8Z3VvaGFu
anVuQGh1YXdlaS5jb20+Cj4+Cj4+IEhpIEhhbmp1biwKPj4KPj4+IC0tLQo+Pj4KPj4+IEJhc2Vk
IG9uIHRvcCBvZiBmb3ItbmV4dC9hY3BpIGJyYW5jaCBvZiBBUk02NCByZXBvCj4+Pgo+Pj4gwqAg
ZHJpdmVycy9hY3BpL2FybTY0L2lvcnQuYyB8IDIgKy0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2FjcGkvYXJtNjQvaW9ydC5jIGIvZHJpdmVycy9hY3BpL2FybTY0L2lvcnQuYwo+Pj4gaW5kZXgg
YjAxMWQyNS4uZjNkNDkyYSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvYWNwaS9hcm02NC9pb3J0
LmMKPj4+ICsrKyBiL2RyaXZlcnMvYWNwaS9hcm02NC9pb3J0LmMKPj4+IEBAIC0zMjgsNyArMzI4
LDcgQEAgc3RhdGljIGludCBpb3J0X2lkX21hcChzdHJ1Y3QgCj4+PiBhY3BpX2lvcnRfaWRfbWFw
cGluZyAqbWFwLCB1OCB0eXBlLCB1MzIgcmlkX2luLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAqIE90aGVyd2lzZSwgdGhpbmdzIGFyZSAqcmVhbGx5KiBicm9rZW4sIGFu
ZCB3ZSAKPj4+IGp1c3QgZGlzcmVnYXJkCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICogZHVwbGljYXRlIG1hdGNoZXMgZW50aXJlbHkgdG8gcmV0YWluIGNvbXBhdGliaWxp
dHkuCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcl9lcnIoRldfQlVHICJbbWFwICVwXSBjb25mbGljdGlu
ZyBtYXBwaW5nIGZvciBpbnB1dCAKPj4+IElEIDB4JXhcbiIsCj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBwcl9lcnIoRldfQlVHICJbbWFwICVwXSBjb25mbGljdGluZyBtYXBwaW5n
IGZvciBpbnB1dCAKPj4+IElEIDB4JXgsIGFwcGx5aW5nIHdvcmthcm91bmRcbiIsCj4+Cj4+IFRo
aXMgaXMgbm90IGNvcnJlY3QuIFRoZSB3b3JrYXJvdW5kIGlzIG9ubHkgYXBwbGllZCBpZiByaWRf
aW4gPT0KPj4gbWFwLT5pbnB1dF9iYXNlLCBzbyBiZXR0ZXIgdG8gcHJpbnQgYSBzZWNvbmQgbGlu
ZSBhZnRlciB0aGUgJ3JldHVybicKPj4gYmVsb3cgdGhhdCBpcyBvbmx5IHJlYWNoZWQgaW4gdGhh
dCBwYXJ0aWN1bGFyIGNhc2UuCj4gCj4gT2J2aW91cyBJJ20gd3JvbmcsIEkgd2lsbCB1cGRhdGUg
dGhpcyBwYXRjaCwgdGhhbmtzIGEgbG90IQoKQnkgdGhlIHdheSwgaG93IGFib3V0IHRoZSBwcmlu
dCBiZWxvdz8gU2hvdWxkIEkgYWRkIHNvbWV0aGluZyBtb3JlPwoKICAgICAgICAgICAgICAgICBp
ZiAocmlkX2luICE9IG1hcC0+aW5wdXRfYmFzZSkKICAgICAgICAgICAgICAgICAgICAgICAgIHJl
dHVybiAtRU5YSU87CisKKyAgICAgICAgIHByX2VycihGV19CVUcgImFwcGx5aW5nIHdvcmthcm91
bmQgZm9yIHRoZSBjb25mbGljdGluZyAKbWFwcGluZ1xuIik7CgpUaGFua3MKSGFuanVuCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
