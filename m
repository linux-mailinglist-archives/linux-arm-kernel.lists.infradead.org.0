Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D620B7636F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q2lJypdnLm4N/xNpGL0wvy14WTlXMJzRiRGhJrIPXrk=; b=emkc8pCPFcHh32zwrkBpXvZiM
	S+v2O15o8jXTNPwt90YNnZraBzexhqzpL0ydYUBCbs4YsjSJQwFf5xItMLhei2o54ACd1C+A7GM+W
	CXLtXY+z9coXm/+PuytMNTAvIvpslMxqvm3a6tOh68xhHOZUbvuPptmVJZgoLgEU2CWloAR+FjE9C
	wfc3iFp/BmOCeMp43P0Lnqz1UlxS+nPlZmMTJG9zgC7rbbOERzWmbUsxV2uJaTFGgwVQ4gMlMyu72
	PkoIQiJWNYHlkpNUBgVign8D5T/XDQAUvDN+ROEFz0V55g3vU6IP2ZeiRdDCfs0ee6UTBOeqp4TeN
	V535FI6fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxOs-0002kB-De; Fri, 26 Jul 2019 10:24:34 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxOh-0002jk-Hs
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:24:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3EA456050D; Fri, 26 Jul 2019 10:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564136663;
 bh=TzDJ/1a8Jv6h+ZazwSpLHZM38+ZTBA4zhoCVFYPruq8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=D+Cvxw0TGr9ZqOempkbtCTjMfdsAdTC5Z/OaFpyMl1pfdmWGFBk+TScGTJTBLXdwu
 JXxapYwKx3S0iDhVgDs0YSypkZKcrREI5xjESlncoCRNlZLktp09BK37FVN/WoYqMR
 CmC7wVFF9y32BoD6urylpaqo3f0nmTgAZq1P3wog=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3B4C560214;
 Fri, 26 Jul 2019 10:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564136662;
 bh=TzDJ/1a8Jv6h+ZazwSpLHZM38+ZTBA4zhoCVFYPruq8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=fR7Q5d/Hf8709sAEvj7w9u03kxUR2pN8X8YSFl08pWDPc6Zwp058ngTb3jpjeLQpS
 Gc/LUgxwhk9DbGiKShCv9q7tNmsxQp+DnILHK9zLlQE4tHLe001v0qYoobuIpx6jRE
 ZP5Ltzw+QKoDopjZOGR9TCUYaajDm1aWgKBdLk0o=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3B4C560214
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [Regression] Missing device nodes for ETR, ETF and STM after
 CONFIG_UEVENT_HELPER=n
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
 <20190726070429.GA15714@kroah.com>
 <165028a7-ff12-dd28-cc4c-57a3961dbb40@codeaurora.org>
 <20190726084127.GA28470@kroah.com>
 <097942a1-6914-2542-450f-65a6147dc7aa@codeaurora.org>
 <6d48f996-6297-dc69-250b-790be6d2670c@codeaurora.org>
 <20190726101925.GA22476@kroah.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <2312327e-cfaa-67b0-c121-4af74e11eacf@codeaurora.org>
Date: Fri, 26 Jul 2019 15:54:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726101925.GA22476@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_032423_629406_848A3A5E 
X-CRM114-Status: GOOD (  18.79  )
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy8yNi8yMDE5IDM6NDkgUE0sIEdyZWcgS3JvYWgtSGFydG1hbiB3cm90ZToKPiBPbiBGcmks
IEp1bCAyNiwgMjAxOSBhdCAwMzo0NDo0MFBNICswNTMwLCBTYWkgUHJha2FzaCBSYW5qYW4gd3Jv
dGU6Cj4+IE9uIDcvMjYvMjAxOSAzOjE0IFBNLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4+
PiBPbiA3LzI2LzIwMTkgMjoxMSBQTSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+Pj4+IE9u
IEZyaSwgSnVsIDI2LCAyMDE5IGF0IDAxOjUwOjI3UE0gKzA1MzAsIFNhaSBQcmFrYXNoIFJhbmph
biB3cm90ZToKPj4+Pj4gT24gNy8yNi8yMDE5IDEyOjM0IFBNLCBHcmVnIEtyb2FoLUhhcnRtYW4g
d3JvdGU6Cj4+Pj4+PiBPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAxMTo0OToxOUFNICswNTMwLCBT
YWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4+Pj4+Pj4gSGksCj4+Pj4+Pj4KPj4+Pj4+PiBXaGVu
IHRyeWluZyB0byB0ZXN0IG15IGNvcmVzaWdodCBwYXRjaGVzLCBJIGZvdW5kIHRoYXQgZXRyLGV0
ZiBhbmQgc3RtCj4+Pj4+Pj4gZGV2aWNlIG5vZGVzIGFyZSBtaXNzaW5nIGZyb20gL2Rldi4KPj4+
Pj4+Cj4+Pj4+PiBJIGhhdmUgbm8gaWRlYSB3aGF0IHRob3NlIGRldmljZSBub2RlcyBhcmUuCj4+
Pj4+Pgo+Pj4+Pj4+IEJpc2VjdGlvbiBnaXZlcyB0aGlzIGFzIHRoZSBiYWQgY29tbWl0Lgo+Pj4+
Pj4+Cj4+Pj4+Pj4gMWJlMDFkNGE1NzE0MmRlZDIzYmRiOWUwYzhkOTM2OWU2OTNiMjZjYyBpcyB0
aGUgZmlyc3QgYmFkIGNvbW1pdAo+Pj4+Pj4+IGNvbW1pdCAxYmUwMWQ0YTU3MTQyZGVkMjNiZGI5
ZTBjOGQ5MzY5ZTY5M2IyNmNjCj4+Pj4+Pj4gQXV0aG9yOiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdl
ZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+Pj4+Pj4+IERhdGU6wqDCoCBUaHUgTWFyIDE0IDEyOjEz
OjUwIDIwMTkgKzAxMDAKPj4+Pj4+Pgo+Pj4+Pj4+ICDCoMKgwqDCoMKgIGRyaXZlcjogYmFzZTog
RGlzYWJsZSBDT05GSUdfVUVWRU5UX0hFTFBFUiBieSBkZWZhdWx0Cj4+Pj4+Pj4KPj4+Pj4+PiAg
wqDCoMKgwqDCoCBTaW5jZSBjb21taXQgNzkzNDc3OWE2OWYxMTg0ZiAoIkRyaXZlci1Db3JlOgo+
Pj4+Pj4+IGRpc2FibGUgL3NiaW4vaG90cGx1ZyBieQo+Pj4+Pj4+ICDCoMKgwqDCoMKgIGRlZmF1
bHQiKSwgdGhlIGhlbHAgdGV4dCBmb3IgdGhlIC9zYmluL2hvdHBsdWcgZm9yay1ib21iIHNheXMK
Pj4+Pj4+PiAgwqDCoMKgwqDCoCAiVGhpcyBzaG91bGQgbm90IGJlIHVzZWQgdG9kYXkgWy4uLl0g
Y3JlYXRlcyBhCj4+Pj4+Pj4gaGlnaCBzeXN0ZW0gbG9hZCwgb3IKPj4+Pj4+PiAgwqDCoMKgwqDC
oCBbLi4uXSBvdXQtb2YtbWVtb3J5IHNpdHVhdGlvbnMgZHVyaW5nIGJvb3R1cCIuCj4+Pj4+Pj4g
VGhlIHJhdGlvbmFsZSBmb3IgdGhpcwo+Pj4+Pj4+ICDCoMKgwqDCoMKgIHdhcyB0aGF0IG5vIHJl
Y2VudCBtYWluc3RyZWFtIHN5c3RlbSB1c2VkIHRoaXMKPj4+Pj4+PiBhbnltb3JlIChpbiAyMDEw
ISkuCj4+Pj4+Pj4KPj4+Pj4+PiAgwqDCoMKgwqDCoCBBIGZldyB5ZWFycyBsYXRlciwgdGhlIGNv
bXBsZXRlIHVldmVudCBoZWxwZXIKPj4+Pj4+PiBzdXBwb3J0IHdhcyBtYWRlIG9wdGlvbmFsCj4+
Pj4+Pj4gIMKgwqDCoMKgwqAgaW4gY29tbWl0IDg2ZDU2MTM0ZjFiNjdkMGMgKCJrb2JqZWN0OiBN
YWtlIHN1cHBvcnQKPj4+Pj4+PiBmb3IgdWV2ZW50X2hlbHBlcgo+Pj4+Pj4+ICDCoMKgwqDCoMKg
IG9wdGlvbmFsLiIpLsKgIEhvd2V2ZXIsIGlmIHdhcyBzdGlsbCBsZWZ0IGVuYWJsZWQKPj4+Pj4+
PiBieSBkZWZhdWx0LCB0byBzdXBwb3J0Cj4+Pj4+Pj4gIMKgwqDCoMKgwqAgYW5jaWVudCB1c2Vy
bGFuZC4KPj4+Pj4+Pgo+Pj4+Pj4+ICDCoMKgwqDCoMKgIFRpbWUgcGFzc2VkIGJ5LCBhbmQgbm90
aGluZyBzaG91bGQgdXNlIHRoaXMKPj4+Pj4+PiBhbnltb3JlLCBzbyBpdCBjYW4gYmUKPj4+Pj4+
PiAgwqDCoMKgwqDCoCBkaXNhYmxlZCBieSBkZWZhdWx0Lgo+Pj4+Pj4+Cj4+Pj4+Pj4gIMKgwqDC
oMKgwqAgU2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGds
aWRlci5iZT4KPj4+Pj4+PiAgwqDCoMKgwqDCoCBTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhh
cnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+Pj4+Pj4+Cj4+Pj4+Pj4gIMKgwqAg
ZHJpdmVycy9iYXNlL0tjb25maWcgfCAxIC0KPj4+Pj4+PiAgwqDCoCAxIGZpbGUgY2hhbmdlZCwg
MSBkZWxldGlvbigtKQo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+PiBBbnkgaWRlYSBvbiB0aGlzPwo+
Pj4+Pj4KPj4+Pj4+IFRoYXQgbWVhbnMgdGhhdCB3aG8gZXZlciBjcmVhdGVkIHRob3NlIGRldmlj
ZSBub2RlcyBpcyByZWx5aW5nIG9uIHVkZXYKPj4+Pj4+IHRvIGRvIHRoaXMsIGFuZCBpcyBub3Qg
ZG9pbmcgdGhlIGNvcnJlY3QgdGhpbmcgd2l0aGluIHRoZSBrZXJuZWwgYW5kCj4+Pj4+PiB1c2lu
ZyBkZXZ0bXBmcy4KPj4+Pj4+Cj4+Pj4+PiBBbnkgcG9pbnRlcnMgdG8gd2hlcmUgaW4gdGhlIGtl
cm5lbCB0aG9zZSBkZXZpY2VzIGFyZSB0cnlpbmcgdG8gYmUKPj4+Pj4+IGNyZWF0ZWQ/Cj4+Pj4+
Pgo+Pj4+Pgo+Pj4+PiBTb21ld2hlcmUgaW4gZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0Lyog
cHJvYmFibHkuIEkgYW0gbm90IHN1cmUsCj4+Pj4+IE1hdGhpZXUvU3V6dWtpIHdvdWxkIGJlIGFi
bGUgdG8gcG9pbnQgeW91IHRvIHRoZSBleGFjdCBjb2RlLgo+Pj4+Pgo+Pj4+PiBBbHNvIGp1c3Qg
dG8gYWRkIG9uIHNvbWUgbW9yZSBkZXRhaWxzLCBJIGFtIHVzaW5nICppbml0cmFtZnMqCj4+Pj4K
Pj4+PiBBcmUgeW91IHVzaW5nIGRldnRtcGZzIGZvciB5b3VyIC9kZXYvIG1vdW50Pwo+Pj4+Cj4+
Pgo+Pj4gSSBhbSBub3QgbW91bnRpbmcgZGV2dG1wZnMuIEhvd2V2ZXIKPj4+Cj4+PiAgIMKgQ09O
RklHX0RFVlRNUEZTPXkKPj4+ICAgwqBDT05GSUdfREVWVE1QRlNfTU9VTlQ9eQo+Pj4KPj4KPj4g
T2sgbXkgaW5pdHJhbWZzIGlzIHVzaW5nIG1kZXY6Cj4+Cj4+ICovc2Jpbi9tZGV2IC1zKgo+Pgo+
PiBUaGlzIHNvbWVob3cgaXMgbm90IG1vdW50aW5nIGV0ciwgZXRmLCBzdG0gZGV2aWNlcyB3aGVu
IHVldmVudC1oZWxwZXIgaXMKPj4gZGlzYWJsZWQuIEFueXdheXMgYXMgU3V6dWtpIG1lbnRpb25l
ZCwgdXNpbmcgZGV2dG1wZnMgZG9lcyBmaXggdGhlIGlzc3VlLgo+IAo+IExhc3QgSSBsb29rZWQg
KG1hbnkgeWVhcnMgYWdvKSBtZGV2IHJlcXVpcmVzIHVldmVudC1oZWxwZXIgaW4gb3JkZXIgZm9y
Cj4gaXQgdG8gd29yay4gIEkgcmVjb21tZW5kIHRoYXQgaWYgeW91IHJlbHkgb24gbWRldiB0byBr
ZWVwIHRoYXQgb3B0aW9uCj4gZW5hYmxlZCwgb3IgdG8ganVzdCB1c2UgZGV2dG1wZnMgYW5kIHVk
ZXYgOikKPiAKCk9rIHRoYXQgZXhwbGFpbnMsIGl0cyBub3QgYSBoYXJkIHJlcXVpcmVtZW50IGZv
ciBtZSB0byB1c2UgbWRldi4gSSBqdXN0IApoYXBwZW4gdG8gc3R1bWJsZSB1cG9uIHRoaXMgaXNz
dWUuIFRoYW5rcyBmb3IgeW91ciB0aW1lIDopCgpUaGFua3MsClNhaQoKLS0gClFVQUxDT01NIElO
RElBLCBvbiBiZWhhbGYgb2YgUXVhbGNvbW0gSW5ub3ZhdGlvbiBDZW50ZXIsIEluYy4gaXMgYSBt
ZW1iZXIKb2YgQ29kZSBBdXJvcmEgRm9ydW0sIGhvc3RlZCBieSBUaGUgTGludXggRm91bmRhdGlv
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
