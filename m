Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0475D132599
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 13:04:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcAPwGTWUUX78ci+nChVPQ+XmsDsBV7EPDHKB3P0zig=; b=kampfJOv8Zis3u
	2jBtyJzoXeuVgHo2btf8aGg6zE3JThBSZuiknDxcG/eui2pGo03b6cRVS2L9Mb5AOnALc0OacFgYw
	+Zfyg0SoMCSVNrXOgZXZjavHsGihkB3a9T/I+6IGg8+sz7psS2V3OhcGAr8OU8QVm0CH02OssLUZY
	lLKjxIgXhSZAdbk5V4jICC/w8N1hguJW3WfC6zPNC4q69Hcsb5cf4ULLlKDsjjeu6UATIMMCdmsq8
	mW/MrI9n4P540FKBzGjM/Hafe5N53lHiE1waDaXK8YtGQGVUWU8LwIoepGZnr6Zt4hcgdd2k9nvXD
	YaePHDNsuzi56fXQUmiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ionbB-0003MU-8l; Tue, 07 Jan 2020 12:04:37 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ionb2-0003LZ-W5
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 12:04:30 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C779D37ECAFB608F4710;
 Tue,  7 Jan 2020 20:04:16 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Tue, 7 Jan 2020
 20:04:08 +0800
Subject: Re: [PATCH v1] ACPI/IORT: Workaround for IORT ID count "minus one"
 issue
To: Robin Murphy <robin.murphy@arm.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>
References: <1577708824-4873-1-git-send-email-guohanjun@huawei.com>
 <2ce224b2-d926-67b0-f9dd-85ac53d967c5@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <598006c5-ba8e-1cb4-f273-6a209650b310@huawei.com>
Date: Tue, 7 Jan 2020 20:03:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <2ce224b2-d926-67b0-f9dd-85ac53d967c5@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_040429_202113_4618B934 
X-CRM114-Status: GOOD (  18.76  )
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
Cc: linux-acpi@vger.kernel.org, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC8xLzcgMToxOSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDMwLzEyLzIwMTkgMTI6
MjcgcG0sIEhhbmp1biBHdW8gd3JvdGU6Cj4+IFRoZSBJT1JUIHNwZWMgWzBdIHNheXMgTnVtYmVy
IG9mIElEcyA9IFRoZSBudW1iZXIgb2YgSURzIGluIHRoZSByYW5nZSBtaW51cwo+PiBvbmUsIGl0
IGlzIGNvbmZ1c2luZyBidXQgaXQgd2FzIHdyaXR0ZW4gZG93biBpbiB0aGUgZmlyc3QgdmVyc2lv
biBvZiB0aGUKPj4gSU9SVCBzcGVjLiBCdXQgdGhlIElPUlQgSUQgbWFwcGluZyBmdW5jdGlvbiBp
b3J0X2lkX21hcCgpIGRpZCBzb21ldGhpbmcKPj4gd3JvbmcgZnJvbSB0aGUgc3RhcnQsIHdoaWNo
IGJhaWxzIG91dCBpZjoKPj4KPj4gdGhlIHJlcXVlc3QgSUQgPj0gdGhlIGlucHV0IGJhc2UgKyBu
dW1iZXIgb2YgSURzCj4+Cj4+IFRoaXMgaXMgd3JvbmcgYmVjYXVzZSBpdCBpZ25vcmVkIHRoZSAi
bWludXMgb25lIiwgYW5kIGJyZWFrcyBzb21lIHZhbGlkCj4+IHVzZWNhc2VzIHN1Y2ggYXMgSUQg
bWFwcGluZyB0byBjb250YWluIHNpbmdsZSBkZXZpY2UgbWFwcGluZyB3aXRob3V0Cj4+IHNpbmds
ZSBtYXBwaW5nIGZsYWcgc2V0Lgo+Pgo+PiBQYW5rYWogQmFuc2FsIHByb3Bvc2VkIGEgc29sdXRp
b24gdG8gZml4IHRoZSBpc3N1ZSBbMV0sIHdoaWNoIGJhaWxzCj4+IG91dCBpZjoKPj4KPj4gdGhl
IHJlcXVlc3QgSUQgPiB0aGUgaW5wdXQgYmFzZSArIG51bWJlciBvZiBJRHMKPj4KPj4gVGhpcyB3
b3JrcyBhcyB0aGUgc3BlYyBkZWZpbmVkLCB1bmZvcnR1bmF0ZWx5IHNvbWUgZmlybXdhcmUgZGlk
bid0Cj4+IG1pbnVzIG9uZSBmb3IgdGhlIG51bWJlciBvZiBJRHMgaW4gdGhlIHJhbmdlLCBhbmQg
dGhlIHByb3BvYXNlZAo+PiBzb2x1dGlvbiB3aWxsIGJyZWFrIHRob3NlIHN5c3RlbXMgaW4gdGhp
cyB3YXk6Cj4+Cj4+IFBDSSBob3N0YnJpZGdlIG1hcHBpbmcgZW50cnkgMToKPj4gSW5wdXQgYmFz
ZTrCoCAweDEwMDAKPj4gSUQgQ291bnQ6wqDCoMKgIDB4MTAwCj4+IE91dHB1dCBiYXNlOiAweDEw
MDAKPj4gT3V0cHV0IHJlZmVyZW5jZTogMHhDNMKgIC8vSVRTIHJlZmVyZW5jZQo+Pgo+PiBQQ0kg
aG9zdGJyaWRnZSBtYXBwaW5nIGVudHJ5IDI6Cj4+IElucHV0IGJhc2U6wqAgMHgxMTAwCj4+IElE
IENvdW50OsKgwqDCoCAweDEwMAo+PiBPdXRwdXQgYmFzZTogMHgyMDAwCj4+IE91dHB1dCByZWZl
cmVuY2U6IDB4RDTCoCAvL0lUUyByZWZlcmVuY2UKPj4KPj4gVHdvIG1hcHBpbmcgZW50cmllcyB3
aGljaCB0aGUgc2Vjb25kIGVudHJ5J3MgSW5wdXQgYmFzZSA9IHRoZSBmaXJzdAo+PiBlbnRyeSdz
IElucHV0IGJhc2UgKyBJRCBjb3VudCwgc28gZm9yIHJlcXVlc3RlciBJRCAweDExMDAgd2lsbCBt
YXAKPj4gdG8gSVRTIDB4QzQgbm90IDB4RDQgaWYgd2UgdXBkYXRlICc+PScgdG8gJz4nLgo+Pgo+
PiBTbyBpbnRyb2R1Y2UgYSB3b3JrYXJvdW5kIHRvIG1hdGNoIHRoZSBJT1JUJ3MgT0VNIGluZm9y
bWF0aW9uIGZvcgo+PiB0aGUgYnJva2VuIGZpcm13YXJlLCBhbHNvIHVwZGF0ZSB0aGUgbG9naWMg
b2YgdGhlIElEIG1hcHBpbmcgZm9yCj4+IGZpcm13YXJlcyByZXBvcnQgdGhlIG51bWJlciBvZiBJ
RHMgYXMgdGhlIElPUlQgc3BlYyBkZWZpbmVkLCB0bwo+PiBtYWtlIHRoZSBjb2RlIGNvbXBhdGli
bGUgZm9yIGJvdGgga2luZHMgb2Ygc3lzdGVtLgo+Pgo+PiBJIGNoZWNrZWQgdGhlIEFDUEkgdGFi
bGVzIGluIHRoZSB0aWFub2NvcmUvZWRrMi1wbGF0Zm9ybXMgWzJdLCBvbmx5Cj4+IEhpU2lsaWNv
biBISVAwNy8wOCBkaWQgd3JvbmcsIHNvIGp1c3QgYWRkIEhJUDA3LzA4IHRvIHRoZSB3b3JrYXJv
dW5kCj4+IGluZm8gdGFibGUsIGlmIHdlIGJyZWFrIG90aGVyIHBsYXRmb3Jtcywgd2UgY2FuIGFk
ZCB0aGF0IGxhdGVyLgo+Pgo+PiBbMF06IGh0dHA6Ly9pbmZvY2VudGVyLmFybS5jb20vaGVscC90
b3BpYy9jb20uYXJtLmRvYy5kZW4wMDQ5ZC9ERU4wMDQ5RF9JT19SZW1hcHBpbmdfVGFibGUucGRm
Cj4+IFsxXTogaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTI5MjgyMy8KPj4g
WzJdOiBodHRwczovL2dpdGh1Yi5jb20vdGlhbm9jb3JlL2VkazItcGxhdGZvcm1zCj4+Cj4+IENj
OiBQYW5rYWogQmFuc2FsIDxwYW5rYWouYmFuc2FsQG54cC5jb20+Cj4+IENjOiBMb3JlbnpvIFBp
ZXJhbGlzaSA8bG9yZW56by5waWVyYWxpc2lAYXJtLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSGFu
anVuIEd1byA8Z3VvaGFuanVuQGh1YXdlaS5jb20+Cj4+IC0tLQo+Pgo+PiBSRkMtPnYxOgo+PiAt
IFByaW50IHdhcm5pbmcgd2hlbiBtYXRjaGVkIHRoZSB3b3JrYXJvdW5kIGluZm8sIHN1Z2dlc3Rl
ZCBieSBQYW5rYWouCj4+Cj4+IMKgIGRyaXZlcnMvYWNwaS9hcm02NC9pb3J0LmMgfCA1NSArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQo+PiDCoCAxIGZpbGUg
Y2hhbmdlZCwgNTIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvYWNwaS9hcm02NC9pb3J0LmMgYi9kcml2ZXJzL2FjcGkvYXJtNjQvaW9ydC5j
Cj4+IGluZGV4IDMzZjcxOTguLjYwZWIxMGQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvYWNwaS9h
cm02NC9pb3J0LmMKPj4gKysrIGIvZHJpdmVycy9hY3BpL2FybTY0L2lvcnQuYwo+PiBAQCAtMjk4
LDYgKzI5OCw0MiBAQCBzdGF0aWMgYWNwaV9zdGF0dXMgaW9ydF9tYXRjaF9ub2RlX2NhbGxiYWNr
KHN0cnVjdCBhY3BpX2lvcnRfbm9kZSAqbm9kZSwKPj4gwqDCoMKgwqDCoCByZXR1cm4gc3RhdHVz
Owo+PiDCoCB9Cj4+IMKgICtzdHJ1Y3QgaW9ydF93b3JrYXJvdW5kX29lbV9pbmZvIHsKPj4gK8Kg
wqDCoCBjaGFyIG9lbV9pZFtBQ1BJX09FTV9JRF9TSVpFICsgMV07Cj4+ICvCoMKgwqAgY2hhciBv
ZW1fdGFibGVfaWRbQUNQSV9PRU1fVEFCTEVfSURfU0laRSArIDFdOwo+PiArwqDCoMKgIHUzMiBv
ZW1fcmV2aXNpb247Cj4+ICt9Owo+PiArCj4+ICtzdGF0aWMgYm9vbCBhcHBseV9pZF9jb3VudF93
b3JrYXJvdW5kOwo+PiArCj4+ICtzdGF0aWMgc3RydWN0IGlvcnRfd29ya2Fyb3VuZF9vZW1faW5m
byB3YV9pbmZvW10gX19pbml0ZGF0YSA9IHsKPj4gK8KgwqDCoCB7Cj4+ICvCoMKgwqDCoMKgwqDC
oCAub2VtX2lkwqDCoMKgwqDCoMKgwqAgPSAiSElTScKgICIsCj4+ICvCoMKgwqDCoMKgwqDCoCAu
b2VtX3RhYmxlX2lkwqDCoMKgID0gIkhJUDA3wqDCoCAiLAo+PiArwqDCoMKgwqDCoMKgwqAgLm9l
bV9yZXZpc2lvbsKgwqDCoCA9IDAsCj4+ICvCoMKgwqAgfSwgewo+PiArwqDCoMKgwqDCoMKgwqAg
Lm9lbV9pZMKgwqDCoMKgwqDCoMKgID0gIkhJU0nCoCAiLAo+PiArwqDCoMKgwqDCoMKgwqAgLm9l
bV90YWJsZV9pZMKgwqDCoCA9ICJISVAwOMKgwqAgIiwKPj4gK8KgwqDCoMKgwqDCoMKgIC5vZW1f
cmV2aXNpb27CoMKgwqAgPSAwLAo+PiArwqDCoMKgIH0KPj4gK307Cj4+ICsKPj4gK3N0YXRpYyB2
b2lkIF9faW5pdAo+PiAraW9ydF9jaGVja19pZF9jb3VudF93b3JrYXJvdW5kKHN0cnVjdCBhY3Bp
X3RhYmxlX2hlYWRlciAqdGJsKQo+PiArewo+PiArwqDCoMKgIGludCBpOwo+PiArCj4+ICvCoMKg
wqAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUod2FfaW5mbyk7IGkrKykgewo+PiArwqDCoMKg
wqDCoMKgwqAgaWYgKCFtZW1jbXAod2FfaW5mb1tpXS5vZW1faWQsIHRibC0+b2VtX2lkLCBBQ1BJ
X09FTV9JRF9TSVpFKSAmJgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAhbWVtY21wKHdhX2lu
Zm9baV0ub2VtX3RhYmxlX2lkLCB0YmwtPm9lbV90YWJsZV9pZCwgQUNQSV9PRU1fVEFCTEVfSURf
U0laRSkgJiYKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd2FfaW5mb1tpXS5vZW1fcmV2aXNp
b24gPT0gdGJsLT5vZW1fcmV2aXNpb24pIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXBw
bHlfaWRfY291bnRfd29ya2Fyb3VuZCA9IHRydWU7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHByX3dhcm4oRldfQlVHICJJRCBjb3VudCBmb3IgSUQgbWFwcGluZyBlbnRyeSBpcyB3cm9uZywg
YXBwbHlpbmcgd29ya2Fyb3VuZFxuIik7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJyZWFr
Owo+PiArwqDCoMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgIH0KPj4gK30KPj4gKwo+PiDCoCBzdGF0
aWMgaW50IGlvcnRfaWRfbWFwKHN0cnVjdCBhY3BpX2lvcnRfaWRfbWFwcGluZyAqbWFwLCB1OCB0
eXBlLCB1MzIgcmlkX2luLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1MzIg
KnJpZF9vdXQpCj4+IMKgIHsKPj4gQEAgLTMxNCw5ICszNTAsMjEgQEAgc3RhdGljIGludCBpb3J0
X2lkX21hcChzdHJ1Y3QgYWNwaV9pb3J0X2lkX21hcHBpbmcgKm1hcCwgdTggdHlwZSwgdTMyIHJp
ZF9pbiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5YSU87Cj4+IMKgwqDCoMKgwqAg
fQo+PiDCoCAtwqDCoMKgIGlmIChyaWRfaW4gPCBtYXAtPmlucHV0X2Jhc2UgfHwKPj4gLcKgwqDC
oMKgwqDCoMKgIChyaWRfaW4gPj0gbWFwLT5pbnB1dF9iYXNlICsgbWFwLT5pZF9jb3VudCkpCj4+
IC3CoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOWElPOwo+PiArwqDCoMKgIC8qCj4+ICvCoMKgwqDC
oCAqIElPUlQgc3BlYyBzYXlzIE51bWJlciBvZiBJRHMgPSBUaGUgbnVtYmVyIG9mIElEcyBpbiB0
aGUgcmFuZ2UgbWludXMKPj4gK8KgwqDCoMKgICogb25lLCBidXQgdGhlIElPUlQgY29kZSBpbmdv
cmVkIHRoZSAibWludXMgb25lIiwgYW5kIHNvbWUgZmlybXdhcmUKPj4gK8KgwqDCoMKgICogZGlk
IHRoYXQgdG9vLCBzbyBhcHBseSBhIHdvcmthcm91bmQgaGVyZSB0byBrZWVwIGNvbXBhdGlibGUg
d2l0aAo+PiArwqDCoMKgwqAgKiBib3RoIG5ldyBhbmQgb2xkIHZlcnNpb25zIG9mIHRoZSBmaXJt
d2FyZS4KPj4gK8KgwqDCoMKgICovCj4+ICvCoMKgwqAgaWYgKGFwcGx5X2lkX2NvdW50X3dvcmth
cm91bmQpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChyaWRfaW4gPCBtYXAtPmlucHV0X2Jhc2Ug
fHwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKHJpZF9pbiA+PSBtYXAtPmlucHV0X2Jhc2Ug
KyBtYXAtPmlkX2NvdW50KSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTlhJ
TzsKPj4gK8KgwqDCoCB9IGVsc2Ugewo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHJpZF9pbiA8IG1h
cC0+aW5wdXRfYmFzZSB8fAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAocmlkX2luID4gbWFw
LT5pbnB1dF9iYXNlICsgbWFwLT5pZF9jb3VudCkpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybiAtRU5YSU87Cj4+ICvCoMKgwqAgfQo+IAo+IFRoaXMgc2VlbXMgbmVlZGxlc3NseSBy
ZXBldGl0aXZlIGFuZCBjb252b2x1dGVkLi4uIGhvdyBhYm91dCByZWZhY3RvcmluZyB0byBzb21l
dGhpbmcgbGlrZToKPiAKPiDCoMKgwqDCoG1hcF9tYXggPSBtYXAtPmlucHV0X2Jhc2UgKyBtYXAt
PmlkX2NvdW50Owo+IMKgwqDCoMKgaWYgKGFwcGx5X2lkX2NvdW50X3dvcmthcm91bmQpCj4gwqDC
oMKgwqDCoMKgwqAgbWFwX21heC0tOwoKTXVjaCBiZXR0ZXIsIHRoYW5rcyEgSSB3aWxsIHVwZGF0
ZSBteSBwYXRjaC4KClRoYW5rcwpIYW5qdW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
