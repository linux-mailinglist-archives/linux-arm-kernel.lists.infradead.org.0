Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DCF76302
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6VahJNz7kinCBRoDv2TeLvM5zsKC1eK41NccMvu8LYs=; b=ONjwuvJPaZZM0KrtI9CWFrb0N
	yqb1IcQnYrsfanGIW7o5883Akj/lwwosrFVlWVqzLZAvruM7MF2Vfjp/CcHYOKWWkOLWHBDTCcRGg
	wTIqiL5Avx2pDLJcukfyDl4glzPOw0jkVAy1KgR14+/BMhMuZNWgKBAcaGPWndEGM3qXzcahw56SW
	L8ilkQDx8mnAlLGhOOh8+QZOkKUmjiX662h6ykHcXpLWFDeEJ7/cpX+sHY12t2gHXOVvGwsiYYD+A
	CAhh6qSbSoX84wfXu9LVv7CmDAs7tIixc18mVxKIbrw94X1ipF84GZvyANAApUZ6TqkfoJHq+75/G
	1AoG9jblw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqx3f-0002kZ-Qw; Fri, 26 Jul 2019 10:02:39 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqx3R-0002k7-H4
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:02:26 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 35B4E60258; Fri, 26 Jul 2019 10:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564135345;
 bh=fEFNHwkFl9vCjGK1sf+w6PRPaH7HubwByv6t9BuXJCY=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=NZUkO9UTIT1ix06ckF83U41h4pXMA/SxbM5dcVO5OMOMTF+c3GZ5GIXcNh6gpMa+G
 GcTo15xFDjMSbhYhdFEWvr07DpVax+A+HCqTpD1qWcLu3ZwlaMxeiRdMHLH41WQS8Z
 6SoTU8Bb1KL4UkRJKRotrl1mHCbuUYrzkFG43MDg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.79.136.27]
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 181FA60312;
 Fri, 26 Jul 2019 10:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564135344;
 bh=fEFNHwkFl9vCjGK1sf+w6PRPaH7HubwByv6t9BuXJCY=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=ZWCyGesVJ4vCT67xkldBwP3sesU5xGDWwqEObFhpjBDR+90WhvQXtUrcFWge3Gopu
 5MeN4xE+9hpNzv3QTUtGiWJEAO95k5d2dtnvRK4Vla75HxUqg7UDlS3miYulvdtp/j
 ciEPfdWJJCLmIWN3NY0elBtCvcJKd92BIujfv3r8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 181FA60312
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [Regression] Missing device nodes for ETR, ETF and STM after
 CONFIG_UEVENT_HELPER=n
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, gregkh@linuxfoundation.org
References: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
 <20190726070429.GA15714@kroah.com>
 <165028a7-ff12-dd28-cc4c-57a3961dbb40@codeaurora.org>
 <20190726084127.GA28470@kroah.com>
 <f72f2fa1-7b1b-d7de-c9b4-cd574400d8e5@arm.com>
 <23fa6b3a-3f86-01f1-1b69-f3d4696ce3e2@codeaurora.org>
Message-ID: <f24f96d8-2fbc-cf6c-59eb-b4636c55a0b6@codeaurora.org>
Date: Fri, 26 Jul 2019 15:32:20 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <23fa6b3a-3f86-01f1-1b69-f3d4696ce3e2@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_030225_604421_C4D4BFF1 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: geert+renesas@glider.be, mathieu.poirier@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 leo.yan@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy8yNi8yMDE5IDM6MjggUE0sIFNhaSBQcmFrYXNoIFJhbmphbiB3cm90ZToKPiBIaSBTdXp1
a2ksCj4gCj4gT24gNy8yNi8yMDE5IDI6NTggUE0sIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6Cj4+
Cj4+Cj4+IE9uIDA3LzI2LzIwMTkgMDk6NDEgQU0sIEdyZWcgS3JvYWgtSGFydG1hbiB3cm90ZToK
Pj4+IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDAxOjUwOjI3UE0gKzA1MzAsIFNhaSBQcmFrYXNo
IFJhbmphbiB3cm90ZToKPj4+PiBPbiA3LzI2LzIwMTkgMTI6MzQgUE0sIEdyZWcgS3JvYWgtSGFy
dG1hbiB3cm90ZToKPj4+Pj4gT24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMTE6NDk6MTlBTSArMDUz
MCwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+Pj4+Pj4gSGksCj4+Pj4+Pgo+Pj4+Pj4gV2hl
biB0cnlpbmcgdG8gdGVzdCBteSBjb3Jlc2lnaHQgcGF0Y2hlcywgSSBmb3VuZCB0aGF0IGV0cixl
dGYgYW5kIAo+Pj4+Pj4gc3RtCj4+Pj4+PiBkZXZpY2Ugbm9kZXMgYXJlIG1pc3NpbmcgZnJvbSAv
ZGV2Lgo+Pj4+Pgo+Pj4+PiBJIGhhdmUgbm8gaWRlYSB3aGF0IHRob3NlIGRldmljZSBub2RlcyBh
cmUuCj4+Pj4+Cj4+Pj4+PiBCaXNlY3Rpb24gZ2l2ZXMgdGhpcyBhcyB0aGUgYmFkIGNvbW1pdC4K
Pj4+Pj4+Cj4+Pj4+PiAxYmUwMWQ0YTU3MTQyZGVkMjNiZGI5ZTBjOGQ5MzY5ZTY5M2IyNmNjIGlz
IHRoZSBmaXJzdCBiYWQgY29tbWl0Cj4+Pj4+PiBjb21taXQgMWJlMDFkNGE1NzE0MmRlZDIzYmRi
OWUwYzhkOTM2OWU2OTNiMjZjYwo+Pj4+Pj4gQXV0aG9yOiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdl
ZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+Pj4+Pj4gRGF0ZTrCoMKgIFRodSBNYXIgMTQgMTI6MTM6
NTAgMjAxOSArMDEwMAo+Pj4+Pj4KPj4+Pj4+IMKgwqDCoMKgwqAgZHJpdmVyOiBiYXNlOiBEaXNh
YmxlIENPTkZJR19VRVZFTlRfSEVMUEVSIGJ5IGRlZmF1bHQKPj4+Pj4+Cj4+Pj4+PiDCoMKgwqDC
oMKgIFNpbmNlIGNvbW1pdCA3OTM0Nzc5YTY5ZjExODRmICgiRHJpdmVyLUNvcmU6IGRpc2FibGUg
Cj4+Pj4+PiAvc2Jpbi9ob3RwbHVnIGJ5Cj4+Pj4+PiDCoMKgwqDCoMKgIGRlZmF1bHQiKSwgdGhl
IGhlbHAgdGV4dCBmb3IgdGhlIC9zYmluL2hvdHBsdWcgZm9yay1ib21iIHNheXMKPj4+Pj4+IMKg
wqDCoMKgwqAgIlRoaXMgc2hvdWxkIG5vdCBiZSB1c2VkIHRvZGF5IFsuLi5dIGNyZWF0ZXMgYSBo
aWdoIHN5c3RlbSAKPj4+Pj4+IGxvYWQsIG9yCj4+Pj4+PiDCoMKgwqDCoMKgIFsuLi5dIG91dC1v
Zi1tZW1vcnkgc2l0dWF0aW9ucyBkdXJpbmcgYm9vdHVwIi7CoCBUaGUgCj4+Pj4+PiByYXRpb25h
bGUgZm9yIHRoaXMKPj4+Pj4+IMKgwqDCoMKgwqAgd2FzIHRoYXQgbm8gcmVjZW50IG1haW5zdHJl
YW0gc3lzdGVtIHVzZWQgdGhpcyBhbnltb3JlIChpbiAKPj4+Pj4+IDIwMTAhKS4KPj4+Pj4+Cj4+
Pj4+PiDCoMKgwqDCoMKgIEEgZmV3IHllYXJzIGxhdGVyLCB0aGUgY29tcGxldGUgdWV2ZW50IGhl
bHBlciBzdXBwb3J0IHdhcyAKPj4+Pj4+IG1hZGUgb3B0aW9uYWwKPj4+Pj4+IMKgwqDCoMKgwqAg
aW4gY29tbWl0IDg2ZDU2MTM0ZjFiNjdkMGMgKCJrb2JqZWN0OiBNYWtlIHN1cHBvcnQgZm9yIAo+
Pj4+Pj4gdWV2ZW50X2hlbHBlcgo+Pj4+Pj4gwqDCoMKgwqDCoCBvcHRpb25hbC4iKS7CoCBIb3dl
dmVyLCBpZiB3YXMgc3RpbGwgbGVmdCBlbmFibGVkIGJ5IGRlZmF1bHQsIAo+Pj4+Pj4gdG8gc3Vw
cG9ydAo+Pj4+Pj4gwqDCoMKgwqDCoCBhbmNpZW50IHVzZXJsYW5kLgo+Pj4+Pj4KPj4+Pj4+IMKg
wqDCoMKgwqAgVGltZSBwYXNzZWQgYnksIGFuZCBub3RoaW5nIHNob3VsZCB1c2UgdGhpcyBhbnlt
b3JlLCBzbyBpdCAKPj4+Pj4+IGNhbiBiZQo+Pj4+Pj4gwqDCoMKgwqDCoCBkaXNhYmxlZCBieSBk
ZWZhdWx0Lgo+Pj4+Pj4KPj4+Pj4+IMKgwqDCoMKgwqAgU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0
dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPj4+Pj4+IMKgwqDCoMKgwqAgU2ln
bmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9y
Zz4KPj4+Pj4+Cj4+Pj4+PiDCoMKgIGRyaXZlcnMvYmFzZS9LY29uZmlnIHwgMSAtCj4+Pj4+PiDC
oMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEFu
eSBpZGVhIG9uIHRoaXM/Cj4+Pj4+Cj4+Pj4+IFRoYXQgbWVhbnMgdGhhdCB3aG8gZXZlciBjcmVh
dGVkIHRob3NlIGRldmljZSBub2RlcyBpcyByZWx5aW5nIG9uIHVkZXYKPj4+Pj4gdG8gZG8gdGhp
cywgYW5kIGlzIG5vdCBkb2luZyB0aGUgY29ycmVjdCB0aGluZyB3aXRoaW4gdGhlIGtlcm5lbCBh
bmQKPj4+Pj4gdXNpbmcgZGV2dG1wZnMuCj4+Pj4+Cj4+Pj4+IEFueSBwb2ludGVycyB0byB3aGVy
ZSBpbiB0aGUga2VybmVsIHRob3NlIGRldmljZXMgYXJlIHRyeWluZyB0byBiZQo+Pj4+PiBjcmVh
dGVkPwo+Pj4+Pgo+Pj4+Cj4+Pj4gU29tZXdoZXJlIGluIGRyaXZlcnMvaHd0cmFjaW5nL2NvcmVz
aWdodC8qIHByb2JhYmx5LiBJIGFtIG5vdCBzdXJlLAo+Pj4+IE1hdGhpZXUvU3V6dWtpIHdvdWxk
IGJlIGFibGUgdG8gcG9pbnQgeW91IHRvIHRoZSBleGFjdCBjb2RlLgo+Pj4+Cj4+Pj4gQWxzbyBq
dXN0IHRvIGFkZCBvbiBzb21lIG1vcmUgZGV0YWlscywgSSBhbSB1c2luZyAqaW5pdHJhbWZzKgo+
Pgo+Pj4KPj4+IEFyZSB5b3UgdXNpbmcgZGV2dG1wZnMgZm9yIHlvdXIgL2Rldi8gbW91bnQ/Cj4+
Cj4+IEkgdGhpbmsgdGhhdCBzaG91bGQgc29sdmUgdGhlIGlzc3VlIF5eCj4+Cj4gCj4gWWVzIG1v
dW50aW5nIC9kZXYgdXNpbmcgZGV2dG1wZnMgZG9lcyBzb2x2ZSB0aGUgaXNzdWUuIEJ1dCBpcyB0
aGlzIAo+IGRpZmZlcmVudCBiZWhhdmlvdXIgT0s/CgpTb3JyeSBpZ25vcmUgdGhlIGRpZmZlcmVu
dCBiZWhhdmlvdXIgdGhpbmcuIEkgbWlzdW5kZXJzdG9vZC4KCi1TYWkKCi0tIApRVUFMQ09NTSBJ
TkRJQSwgb24gYmVoYWxmIG9mIFF1YWxjb21tIElubm92YXRpb24gQ2VudGVyLCBJbmMuIGlzIGEg
bWVtYmVyCm9mIENvZGUgQXVyb3JhIEZvcnVtLCBob3N0ZWQgYnkgVGhlIExpbnV4IEZvdW5kYXRp
b24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
