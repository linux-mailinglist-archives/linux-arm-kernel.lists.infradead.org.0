Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0441A1975
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 03:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wPVbmJIuZoaCgcPhVkIEnOlxpLFsYcgjcz5xuzkyGZ8=; b=H+uuHdBlbMVeiIVTO9ovF1TLY
	XA6JwigwdcOjUEQHt2Q9LMewQVm26QGeOByN7MR4sEAa/IPtcRkj9aOWPrJ/yuCTRVC7AULg8xkK6
	QasiflodS28sG1SP60bLw6C/Dw6p/wM/FDZ2Gbb15YzxmhZHaNa2Zyaw4gLhMXyIsc4MprFB9e9/z
	du7L9nxZ/4SCB/YIfYkt1phAIRpu55Px/54bitDeyxP7YDJuGJBnH4NEHBljmPL3VKcuZfYJ02zw7
	INHtYq37cNcSqm/TdvVWRs8pJ0XITtHzszlOqAggKEL9TZZKJKVOxPn0IIUCAgdnuRhLtmUQz+mPW
	evFLWPm3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLzLe-0001LA-J7; Wed, 08 Apr 2020 01:17:46 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLzLY-0001JP-Eg
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 01:17:42 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CE0E864582508C10A993;
 Wed,  8 Apr 2020 09:17:26 +0800 (CST)
Received: from [127.0.0.1] (10.133.217.205) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0;
 Wed, 8 Apr 2020 09:17:15 +0800
Subject: Re: Why is text_mutex used in jump_label_transform for x86_64
To: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>
References: <f7f686f2-4f28-1763-dd19-43eff6a5a8f2@huawei.com>
 <20200320102709.GC20696@hirez.programming.kicks-ass.net>
 <28edc3d5-83a3-43cb-3e64-7d0525d430f3@huawei.com>
 <20200406091551.GG20730@hirez.programming.kicks-ass.net>
 <20200406141020.GB3178@willie-the-truck>
From: "chengjian (D)" <cj.chengjian@huawei.com>
Message-ID: <de85ea66-59b6-d86c-e46f-8354c7e894d7@huawei.com>
Date: Wed, 8 Apr 2020 09:17:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200406141020.GB3178@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.133.217.205]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_181740_664294_3F4E4509 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: jakub.kicinski@netronome.com, Kees Cook <keescook@chromium.org>,
 "Xiexiuqi \(Xie XiuQi\)" <xiexiuqi@huawei.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bobo.shaobowang@huawei.com, Li Bin <huawei.libin@huawei.com>,
 andrew.murray@arm.com, bristot@redhat.com,
 linux-arm-kernel@lists.infradead.org,
 "chengjian \(D\)" <cj.chengjian@huawei.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC82IDIyOjEwLCBXaWxsIERlYWNvbiB3cm90ZToKPiBPbiBNb24sIEFwciAwNiwg
MjAyMCBhdCAxMToxNTo1MUFNICswMjAwLCBQZXRlciBaaWpsc3RyYSB3cm90ZToKPj4gT24gTW9u
LCBBcHIgMDYsIDIwMjAgYXQgMDQ6Mzk6MTFQTSArMDgwMCwgY2hlbmdqaWFuIChEKSB3cm90ZToK
Pj4+IE9uIDIwMjAvMy8yMCAxODoyNywgUGV0ZXIgWmlqbHN0cmEgd3JvdGU6Cj4+Pj4gSXQgZGVw
ZW5kcyBvbiB0aGUgYXJjaGl0ZWN0dXJlIGRldGFpbHMgb2YgaG93IHNlbGYtbW9kaWZ5aW5nIGNv
ZGUgd29ya3MuCj4+Pj4gSW4gcGFydGljdWxhciwgeDg2IGlzIGEgdmFyaWFibGUgaW5zdHJ1Y3Rp
b24gbGVuZ3RoIGFyY2hpdGVjdHVyZSBhbmQKPj4+PiBuZWVkcyBleHRyZW1lIGNhcmUgLS0gaXQn
cyBpbXBsZW1lbnRhdGlvbiByZXF1aXJlcyB0aGVyZSBvbmx5IGJlIGEKPj4+PiBzaW5nbGUgdGV4
dCBtb2RpZmllciBhdCBhbnkgb25lIHRpbWUsIGhlbmNlIHRoZSB1c2Ugb2YgdGV4dF9tdXRleC4K
Pj4+Pgo+Pj4+IEFSTTY0IE9UT0ggaXMsIGxpa2UgbW9zdCBSSVNDIGJhc2VkIGFyY2hpdGVjdHVy
ZXMsIGEgZml4ZWQgd2lkdGgKPj4+PiBpbnN0cnVjdGlvbiBhcmNoaXRlY3R1cmUuIEFuZCBpbiBw
YXJ0aWN1bGFyIGl0IGNhbiByZS13cml0ZSBjZXJ0YWluCj4+Pj4gKGJyYW5jaCkgaW5zdHJ1Y3Rp
b25zIHdpdGggaW1wdW5pdHkgKHNlZSB0aGVpcgo+Pj4+IGFhcmNoNjRfaW5zbl9wYXRjaF90ZXh0
X25vc3luYygpKS4gV2hpY2ggaXMgd2h5IHRoZXkgZG9uJ3QgbmVlZAo+Pj4+IGFkZGl0aW9uYWwg
c2VyaWFsaXphdGlvbi4KPj4+IEhpLCBQZXRlcgo+Pj4KPj4+IFRoYW5rIHlvdSB2ZXJ5IG11Y2gg
Zm9yIHlvdXIgcmVwbHkuCj4+Pgo+Pj4gWDg2IGlzIGEgdmFyaWFibGUtbGVuZ3RoIGluc3RydWN0
aW9uLCBvbmx5IG9uZSBieXRlIG1vZGlmaWNhdGlvbiBvZiB0aGUKPj4+IGluc3RydWN0aW9uCj4+
PiBjYW4gYmUgcmVnYXJkZWQgYXMgYXRvbWljLiBzbyB3ZSBtdXN0IGJlIHZlcnkgY2FyZWZ1bCB3
aGVuIG1vZGlmeWluZwo+Pj4gaW5zdHJ1Y3Rpb25zCj4+PiBjb25jdXJyZW50bHkuCj4+IENsb3Nl
IGVub3VnaC4KPj4KPj4+IEZvciBvdGhlciBhcmNoaXRlY3R1cmVzIHN1Y2ggYXMgQVJNNjQsIHRo
ZSBtb2RpZmljYXRpb24gb2Ygc29tZSBpbnN0cnVjdGlvbnMKPj4+IGNhbiBiZQo+Pj4gY29uc2lk
ZXJlZCBhdG9taWMsIChFZy4gbm9wIC0+IGptcC9iKS4gVGhlIHNldCBvZiBpbnN0cnVjdGlvbnMg
dGhhdCBjYW4gYmUKPj4+IGV4ZWN1dGVkCj4+PiBieSBvbmUgdGhyZWFkIG9mIGV4ZWN1dGlvbiBh
cyB0aGV5IGFyZSBiZWluZyBtb2RpZmllZCBieSBhbm90aGVyIHRocmVhZCBvZgo+Pj4gZXhlY3V0
aW9uCj4+PiB3aXRob3V0IHJlcXVpcmluZyBleHBsaWNpdCBzeW5jaHJvbml6YXRpb24uCj4+Pgo+
Pj4gSW4gQVJNNjQgQXJjaGl0ZWN0dXJlIFJlZmVyZW5jZSBNYW51YWwsIEkgZmluZCB0aGF0Ogo+
Pj4gIMKgwqDCoCBDb25jdXJyZW50IG1vZGlmaWNhdGlvbiBhbmQgZXhlY3V0aW9uIG9mIGluc3Ry
dWN0aW9ucyBjYW4gbGVhZCB0byB0aGUKPj4+IHJlc3VsdGluZyBpbnN0cnVjdGlvbiBwZXJmb3Jt
aW5nIGFueSBiZWhhdmlvcgo+Pj4gIMKgwqDCoCB0aGF0IGNhbiBiZSBhY2hpZXZlZCBieSBleGVj
dXRpbmcgYW55IHNlcXVlbmNlIG9mIGluc3RydWN0aW9ucyB0aGF0IGNhbgo+Pj4gYmUgZXhlY3V0
ZWQgZnJvbSB0aGUgc2FtZSBFeGNlcHRpb24gbGV2ZWwsCj4+PiAgwqDCoMKgIGV4Y2VwdCB3aGVy
ZSBlYWNoIG9mIHRoZSBpbnN0cnVjdGlvbiBiZWZvcmUgbW9kaWZpY2F0aW9uIGFuZCB0aGUKPj4+
IGluc3RydWN0aW9uIGFmdGVyIG1vZGlmaWNhdGlvbiBpcyBvbmUgb2YgYSBCLCBCTCwgQlJLLAo+
Pj4gIMKgwqDCoCBIVkMsIElTQiwgTk9QLCBTTUMsIG9yIFNWQyBpbnN0cnVjdGlvbi4KPj4+ICDC
oMKgwqAgRm9yIHRoZSBCLCBCTCwgQlJLLCBIVkMsIElTQiwgTk9QLCBTTUMsIGFuZCBTVkMgaW5z
dHJ1Y3Rpb25zIHRoZQo+Pj4gYXJjaGl0ZWN0dXJlIGd1YXJhbnRlZXMgdGhhdCwgYWZ0ZXIgbW9k
aWZpY2F0aW9uIG9mIHRoZQo+Pj4gIMKgwqDCoCBpbnN0cnVjdGlvbiwgYmVoYXZpb3IgaXMgY29u
c2lzdGVudCB3aXRoIGV4ZWN1dGlvbiBvZiBlaXRoZXI6Cj4+PiAgwqDCoMKgIOKAoiBUaGUgaW5z
dHJ1Y3Rpb24gb3JpZ2luYWxseSBmZXRjaGVkLgo+Pj4gIMKgwqDCoCDigKIgQSBmZXRjaCBvZiB0
aGUgbW9kaWZpZWQgaW5zdHJ1Y3Rpb24KPj4+Cj4+PiBTbyB3ZSBjYW4gc2FmZWx5IG1vZGlmeSBq
dW1wX2xhYmVsIGZvciBBUk02NChmcm9tIE5PUCB0byBiIG9yIGZvcm0gYiB0bwo+Pj4gTk9QKS4K
Pj4+Cj4+PiBJcyBteSB1bmRlcnN0YW5kaW5nIGNvcnJlY3Q/Cj4+IEkgdGhpbmsgc287IGJ1dCBJ
J20gcmVhbGx5IG5vdCBtdWNoIG9mIGFuIEFSTTY0IHBlcnNvbi4gRldJVyBJIHRoaW5rIEkKPj4g
cmVtZW1iZXIgV2lsbCBzYXlpbmcgdGhlIHNhbWUgaXMgdHJ1ZSBvZiBBUk0gKDMyYml0KSBhbmQg
dGhleSBjb3VsZAo+PiBpbXBsZW1lbnQgdGhlIHNhbWUgb3B0aW1pemF0aW9uLCBidXQgc28gZmFy
IG5vYm9keSBoYXMgYm90aGVyZWQgZG9pbmcKPj4gc28uIEJ1dCBwbGVhc2UsIGFzayBhbiBBUk02
NCBtYWludGFpbmVyIGFuZCBkb24ndCB0YWtlIG15IHdvcmQgZm9yIHRoaXMuCj4gT24gMzItYml0
IHRoZXJlIGFyZSBjb21wbGljYXRpb25zIHdpdGggVGh1bWItMiBpbnN0cnVjdGlvbnMgd2hlcmUg
eW91IGNhbgo+IGhhdmUgYSBtaXh0dXJlIG9mIDE2LWJpdCBhbmQgMzItYml0IGVuY29kaW5ncywg
c28geW91IGhhdmUgdG8gYmUgcHJldHR5Cj4gY2FyZWZ1bCB0aGVyZS4KPgo+IEZvciBhcm02NCwg
d2UgaGF2ZSBhYXJjaDY0X2luc25fcGF0Y2hfdGV4dF9ub3N5bmMoKSB3aGljaCB3ZSB1c2UgdG8g
dG9nZ2xlCj4ganVtcCBsYWJlbHMuCj4KPiBXaWxsCj4KPiAuCgoKSGksIFBldGVyIGFuZCBXaWxs
CgogwqDCoMKgIEkgaGF2ZSBsZWFybmVkLgoKIMKgwqDCoCBJIHRydWx5IGFwcHJlY2lhdGUgeW91
ciB0aW1lbHkgaGVscC4KCgogwqDCoMKgIFRoYW5rcyBhIGxvdC4KCiDCoMKgwqAgLS0gQ2hlbmcg
SmlhbgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
