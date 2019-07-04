Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 716395F1CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 05:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMMp2cHqvbyKh9dUJD9HMOCO/SiHzOrkscFPwhQKZpo=; b=BmWjFfcXpOqFJE
	aYkTsJrY15EVe9XIxnxBECJdSwTl4E1o04alrebSMBjKkLRWwvQCRVByWByYZMIZhcIV/C/G9XYyN
	ZL6Y9A9zGsdT+Jd40eMRm8lqv9pE/kQ5FaMFS1L2RUvMQYartMD3/VtQYORG+1WOL2e5eFTt6fc3H
	JuEDLPvRY9+MRZof8zgGOWMOuypPS0cjhKyJk5lp47vUa/wIyRs0kCbjxcg4LRt2LIWsarw3dcCzF
	aj9nqjWiYNJ9/MhrggoZ8AwAQAiVsNhLw7oUhP/JjIa0tKti6rRla1xKyHeaNeY0LeYqjwBT+lkMf
	0xexOiUsAyp5k8AMF1CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hisQa-0006M0-UD; Thu, 04 Jul 2019 03:28:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hisQD-0006KU-Ez
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 03:28:35 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id F08F8AD5DDA7AD8D9FE7;
 Thu,  4 Jul 2019 11:28:20 +0800 (CST)
Received: from [127.0.0.1] (10.184.52.56) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Thu, 4 Jul 2019
 11:28:12 +0800
Subject: Re: [PATCH RFC 0/3] Support CPU hotplug for ARM64
To: Jia He <hejianet@gmail.com>, <rjw@rjwysocki.net>,
 <catalin.marinas@arm.com>, <james.morse@arm.com>
References: <1561720392-45907-1-git-send-email-wangxiongfeng2@huawei.com>
 <2b22cf4d-9646-9f20-41ae-cceb83d9791b@gmail.com>
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <135ee490-a5a6-46c9-208e-81849b20d6b6@huawei.com>
Date: Thu, 4 Jul 2019 11:26:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <2b22cf4d-9646-9f20-41ae-cceb83d9791b@gmail.com>
Content-Language: en-US
X-Originating-IP: [10.184.52.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_202833_806810_2DABF339 
X-CRM114-Status: GOOD (  14.14  )
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
Cc: xiexiuqi@huawei.com, jonathan.cameron@huawei.com, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSnVzdGluLAoKT24gMjAxOS83LzQgMTE6MDAsIEppYSBIZSB3cm90ZToKPiBIaSBYaW9uZ2Zl
bmcKPiAKPiBJdCBpcyBhIGxpdHRsZSBiaXQgYXdrZnVsIHRoYXQgSSBhbSBhbHNvwqAgaW52ZXN0
aWdhdGluZyBhY3BpIGJhc2VkIGNwdSBob3RwbHVnIGlzc3VlIHNpbGltYXIgd2l0aAo+IAo+IHlv
dXIgaWRlYS4gTXkgcXVlc3Rpb24gaXMgeW91ciBwdXJwb3NlIHRvIGltcGxlbWVudCB0aGUgdmNw
dSBob3RwbHVnIGluIGFybTY0IHFlbXU/CgpZZXMsIG15IHB1cnBvc2UgaXMgdG8gaW1wbGVtZW50
IHRoZSB2Y3B1IGhvdHBsdWcgaW4gYXJtNjQgcWVtdS4gU28gdGhhdCBJIGNhbiBhZGQgb3IgcmVt
b3ZlIHZjcHUKd2l0aG91dCBzaHV0dGluZyBkb3duIHRoZSBHdWVzdCBPUy4KClRoYW5rcywKWGlv
bmdmZW5nCgo+IAo+IFRoYW5rcyBmb3IgdGhlIGVsbGFib3JhdGlvbgo+IAo+IC0tLQo+IENoZWVy
cywKPiBKdXN0aW4gKEppYSBIZSkKPiAKPiBPbiAyMDE5LzYvMjggMTk6MTMsIFhpb25nZmVuZyBX
YW5nIHdyb3RlOgo+PiBUaGlzIHBhdGNoc2V0IG1hcmsgYWxsIHRoZSBHSUNDIG5vZGUgaW4gTUFE
VCBhcyBwb3NzaWJsZSBDUFVzIGV2ZW4gdGhvdWdoIGl0Cj4+IGlzIGRpc2FibGVkLiBCdXQgb25s
eSB0aG9zZSBlbmFibGVkIEdJQ0Mgbm9kZSBhcmUgbWFya2VkIGFzIHByZXNlbnQgQ1BVcy4KPj4g
U28gdGhhdCBrZXJuZWwgd2lsbCBpbml0aWFsaXplIHNvbWUgQ1BVIHJlbGF0ZWQgZGF0YSBzdHJ1
Y3R1cmUgaW4gYWR2YW5jZSBiZWZvcmUKPj4gdGhlIENQVSBpcyBhY3R1YWxseSBob3QgYWRkZWQg
aW50byB0aGUgc3lzdGVtLiBUaGlzIHBhdGNoc2V0IGFsc28gaW1wbGVtZW50Cj4+ICdhY3BpXyh1
biltYXBfY3B1KCknIGFuZCAnYXJjaF8odW4pcmVnaXN0ZXJfY3B1KCknIGZvciBBUk02NC4gVGhl
c2UgZnVuY3Rpb25zIGFyZQo+PiBuZWVkZWQgdG8gZW5hYmxlIENQVSBob3RwbHVnLgo+Pgo+PiBU
byBzdXBwb3J0IENQVSBob3RwbHVnLCB3ZSBuZWVkIHRvIGFkZCBhbGwgdGhlIHBvc3NpYmxlIEdJ
Q0Mgbm9kZSBpbiBNQURUCj4+IGluY2x1ZGluZyB0aG9zZSBDUFVzIHRoYXQgYXJlIG5vdCBwcmVz
ZW50IGJ1dCBtYXkgYmUgaG90IGFkZGVkIGxhdGVyLiBUaG9zZQo+PiBDUFVzIGFyZSBtYXJrZWQg
YXMgZGlzYWJsZWQgaW4gR0lDQyBub2Rlcy4KPj4KPj4gWGlvbmdmZW5nIFdhbmcgKDMpOgo+PiDC
oMKgIEFDUEkgLyBzY2FuOiBldmFsdWF0ZSBfU1RBIGZvciBwcm9jZXNzb3JzIGRlY2xhcmVkIHZp
YSBBU0wgRGV2aWNlCj4+IMKgwqDCoMKgIHN0YXRlbWVudAo+PiDCoMKgIGFybTY0OiBtYXJrIGFs
bCB0aGUgR0lDQyBub2RlcyBpbiBNQURUIGFzIHBvc3NpYmxlIGNwdQo+PiDCoMKgIGFybTY0OiBB
ZGQgQ1BVIGhvdHBsdWcgc3VwcG9ydAo+Pgo+PiDCoCBhcmNoL2FybTY0L2tlcm5lbC9hY3BpLmPC
oCB8IDIyICsrKysrKysrKysrKysrKysrKysrKysKPj4gwqAgYXJjaC9hcm02NC9rZXJuZWwvc2V0
dXAuYyB8IDE5ICsrKysrKysrKysrKysrKysrKy0KPj4gwqAgYXJjaC9hcm02NC9rZXJuZWwvc21w
LmPCoMKgIHwgMTEgKysrKystLS0tLS0KPj4gwqAgZHJpdmVycy9hY3BpL3NjYW4uY8KgwqDCoMKg
wqDCoCB8IDEyICsrKysrKysrKysrKwo+PiDCoCA0IGZpbGVzIGNoYW5nZWQsIDU3IGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCj4+Cj4gCj4gLgo+IAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
