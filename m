Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F3976342
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KRoLqMEn0o6r3xnSfDJjOGUAa2PROik9vnXVVZTBV+E=; b=OOPQlosJ/BlW7Aksvev/P0Cof
	jo4URp0PD1TmNDRxkqJ4IPkvnnWMmvSlvYpmR2+1j6Ex+1l1BRjc0cF2TrW61WtLc5Bfg/AfsHUqN
	QuBxeqluWYrZWLww4VAXTivv9DRV7tcEwIBt3QeFYroUa982qMyBGiip9FlQGFbnVIdgmDlFDWQvq
	UPaxw/gHo7kwQtWoTalHQJ0np1Svf59a5bmXKCgd14+W3EJz2ytxqkpZrJA2pbaYj8FPKbBlGCFFP
	nMOUR2zjEJ8yr6vDflRDzwvB8gYfs+J9+TE6f80UJ2rpvt41q25BQG77Wm7OL+lt0qhw6lOZ5hZaD
	HhoQOtyUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqwzj-00016c-0x; Fri, 26 Jul 2019 09:58:35 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqwzX-000160-CU
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 09:58:24 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 04BCA602BC; Fri, 26 Jul 2019 09:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564135103;
 bh=j3uQJTmCdq40VmREaWK3WDQwD/oEO5ZQLNR/cHQZdEY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=oPZr6B55EHXPISTrt5KJH3lRx4eVdPdpHTeJi74MmStgicB2U/hL0rrJl03PbMHsA
 5t34sWgsSxTlSSug9HWlyibMeyTgArrOJ7FO7EhdHHVbd+Jb+VkVeGRNevOfsXZ7mw
 bNOw54eKG+uU0qO/C77bKm51xHQv6EZm/bH9ZJjQ=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 64D976021C;
 Fri, 26 Jul 2019 09:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1564135101;
 bh=j3uQJTmCdq40VmREaWK3WDQwD/oEO5ZQLNR/cHQZdEY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=fI8H3wgDWxVBkPo0HmEcdnzAV0cSbAbhaRh35YW7vzmLdA5z0z197ApxN7xfRIxEp
 ZqP+aNNqAsQ65MwF9OK4lUxvLetTQObl02LynVzFOqnN80lb0dcx49vSchNLUrgeoA
 76R9iq4lQpxmZujgUTEPaS6CzBAlGaDwdSXgnnwc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 64D976021C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [Regression] Missing device nodes for ETR, ETF and STM after
 CONFIG_UEVENT_HELPER=n
To: Suzuki K Poulose <suzuki.poulose@arm.com>, gregkh@linuxfoundation.org
References: <cfe09a46-462f-633a-37c2-52f8bfc0ffb2@codeaurora.org>
 <20190726070429.GA15714@kroah.com>
 <165028a7-ff12-dd28-cc4c-57a3961dbb40@codeaurora.org>
 <20190726084127.GA28470@kroah.com>
 <f72f2fa1-7b1b-d7de-c9b4-cd574400d8e5@arm.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <23fa6b3a-3f86-01f1-1b69-f3d4696ce3e2@codeaurora.org>
Date: Fri, 26 Jul 2019 15:28:17 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f72f2fa1-7b1b-d7de-c9b4-cd574400d8e5@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_025823_462014_8A4E5FCA 
X-CRM114-Status: GOOD (  18.73  )
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

SGkgU3V6dWtpLAoKT24gNy8yNi8yMDE5IDI6NTggUE0sIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6
Cj4gCj4gCj4gT24gMDcvMjYvMjAxOSAwOTo0MSBBTSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3Rl
Ogo+PiBPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAwMTo1MDoyN1BNICswNTMwLCBTYWkgUHJha2Fz
aCBSYW5qYW4gd3JvdGU6Cj4+PiBPbiA3LzI2LzIwMTkgMTI6MzQgUE0sIEdyZWcgS3JvYWgtSGFy
dG1hbiB3cm90ZToKPj4+PiBPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAxMTo0OToxOUFNICswNTMw
LCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4+Pj4+IEhpLAo+Pj4+Pgo+Pj4+PiBXaGVuIHRy
eWluZyB0byB0ZXN0IG15IGNvcmVzaWdodCBwYXRjaGVzLCBJIGZvdW5kIHRoYXQgZXRyLGV0ZiBh
bmQgc3RtCj4+Pj4+IGRldmljZSBub2RlcyBhcmUgbWlzc2luZyBmcm9tIC9kZXYuCj4+Pj4KPj4+
PiBJIGhhdmUgbm8gaWRlYSB3aGF0IHRob3NlIGRldmljZSBub2RlcyBhcmUuCj4+Pj4KPj4+Pj4g
QmlzZWN0aW9uIGdpdmVzIHRoaXMgYXMgdGhlIGJhZCBjb21taXQuCj4+Pj4+Cj4+Pj4+IDFiZTAx
ZDRhNTcxNDJkZWQyM2JkYjllMGM4ZDkzNjllNjkzYjI2Y2MgaXMgdGhlIGZpcnN0IGJhZCBjb21t
aXQKPj4+Pj4gY29tbWl0IDFiZTAxZDRhNTcxNDJkZWQyM2JkYjllMGM4ZDkzNjllNjkzYjI2Y2MK
Pj4+Pj4gQXV0aG9yOiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJl
Pgo+Pj4+PiBEYXRlOsKgwqAgVGh1IE1hciAxNCAxMjoxMzo1MCAyMDE5ICswMTAwCj4+Pj4+Cj4+
Pj4+IMKgwqDCoMKgwqAgZHJpdmVyOiBiYXNlOiBEaXNhYmxlIENPTkZJR19VRVZFTlRfSEVMUEVS
IGJ5IGRlZmF1bHQKPj4+Pj4KPj4+Pj4gwqDCoMKgwqDCoCBTaW5jZSBjb21taXQgNzkzNDc3OWE2
OWYxMTg0ZiAoIkRyaXZlci1Db3JlOiBkaXNhYmxlIAo+Pj4+PiAvc2Jpbi9ob3RwbHVnIGJ5Cj4+
Pj4+IMKgwqDCoMKgwqAgZGVmYXVsdCIpLCB0aGUgaGVscCB0ZXh0IGZvciB0aGUgL3NiaW4vaG90
cGx1ZyBmb3JrLWJvbWIgc2F5cwo+Pj4+PiDCoMKgwqDCoMKgICJUaGlzIHNob3VsZCBub3QgYmUg
dXNlZCB0b2RheSBbLi4uXSBjcmVhdGVzIGEgaGlnaCBzeXN0ZW0gCj4+Pj4+IGxvYWQsIG9yCj4+
Pj4+IMKgwqDCoMKgwqAgWy4uLl0gb3V0LW9mLW1lbW9yeSBzaXR1YXRpb25zIGR1cmluZyBib290
dXAiLsKgIFRoZSByYXRpb25hbGUgCj4+Pj4+IGZvciB0aGlzCj4+Pj4+IMKgwqDCoMKgwqAgd2Fz
IHRoYXQgbm8gcmVjZW50IG1haW5zdHJlYW0gc3lzdGVtIHVzZWQgdGhpcyBhbnltb3JlIChpbiAK
Pj4+Pj4gMjAxMCEpLgo+Pj4+Pgo+Pj4+PiDCoMKgwqDCoMKgIEEgZmV3IHllYXJzIGxhdGVyLCB0
aGUgY29tcGxldGUgdWV2ZW50IGhlbHBlciBzdXBwb3J0IHdhcyAKPj4+Pj4gbWFkZSBvcHRpb25h
bAo+Pj4+PiDCoMKgwqDCoMKgIGluIGNvbW1pdCA4NmQ1NjEzNGYxYjY3ZDBjICgia29iamVjdDog
TWFrZSBzdXBwb3J0IGZvciAKPj4+Pj4gdWV2ZW50X2hlbHBlcgo+Pj4+PiDCoMKgwqDCoMKgIG9w
dGlvbmFsLiIpLsKgIEhvd2V2ZXIsIGlmIHdhcyBzdGlsbCBsZWZ0IGVuYWJsZWQgYnkgZGVmYXVs
dCwgCj4+Pj4+IHRvIHN1cHBvcnQKPj4+Pj4gwqDCoMKgwqDCoCBhbmNpZW50IHVzZXJsYW5kLgo+
Pj4+Pgo+Pj4+PiDCoMKgwqDCoMKgIFRpbWUgcGFzc2VkIGJ5LCBhbmQgbm90aGluZyBzaG91bGQg
dXNlIHRoaXMgYW55bW9yZSwgc28gaXQgCj4+Pj4+IGNhbiBiZQo+Pj4+PiDCoMKgwqDCoMKgIGRp
c2FibGVkIGJ5IGRlZmF1bHQuCj4+Pj4+Cj4+Pj4+IMKgwqDCoMKgwqAgU2lnbmVkLW9mZi1ieTog
R2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPj4+Pj4gwqDCoMKg
wqDCoCBTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5k
YXRpb24ub3JnPgo+Pj4+Pgo+Pj4+PiDCoMKgIGRyaXZlcnMvYmFzZS9LY29uZmlnIHwgMSAtCj4+
Pj4+IMKgwqAgMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKPj4+Pj4KPj4+Pj4KPj4+Pj4g
QW55IGlkZWEgb24gdGhpcz8KPj4+Pgo+Pj4+IFRoYXQgbWVhbnMgdGhhdCB3aG8gZXZlciBjcmVh
dGVkIHRob3NlIGRldmljZSBub2RlcyBpcyByZWx5aW5nIG9uIHVkZXYKPj4+PiB0byBkbyB0aGlz
LCBhbmQgaXMgbm90IGRvaW5nIHRoZSBjb3JyZWN0IHRoaW5nIHdpdGhpbiB0aGUga2VybmVsIGFu
ZAo+Pj4+IHVzaW5nIGRldnRtcGZzLgo+Pj4+Cj4+Pj4gQW55IHBvaW50ZXJzIHRvIHdoZXJlIGlu
IHRoZSBrZXJuZWwgdGhvc2UgZGV2aWNlcyBhcmUgdHJ5aW5nIHRvIGJlCj4+Pj4gY3JlYXRlZD8K
Pj4+Pgo+Pj4KPj4+IFNvbWV3aGVyZSBpbiBkcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvKiBw
cm9iYWJseS4gSSBhbSBub3Qgc3VyZSwKPj4+IE1hdGhpZXUvU3V6dWtpIHdvdWxkIGJlIGFibGUg
dG8gcG9pbnQgeW91IHRvIHRoZSBleGFjdCBjb2RlLgo+Pj4KPj4+IEFsc28ganVzdCB0byBhZGQg
b24gc29tZSBtb3JlIGRldGFpbHMsIEkgYW0gdXNpbmcgKmluaXRyYW1mcyoKPiAKPj4KPj4gQXJl
IHlvdSB1c2luZyBkZXZ0bXBmcyBmb3IgeW91ciAvZGV2LyBtb3VudD8KPiAKPiBJIHRoaW5rIHRo
YXQgc2hvdWxkIHNvbHZlIHRoZSBpc3N1ZSBeXgo+IAoKWWVzIG1vdW50aW5nIC9kZXYgdXNpbmcg
ZGV2dG1wZnMgZG9lcyBzb2x2ZSB0aGUgaXNzdWUuIEJ1dCBpcyB0aGlzIApkaWZmZXJlbnQgYmVo
YXZpb3VyIE9LPwoKLVNhaQoKLS0gClFVQUxDT01NIElORElBLCBvbiBiZWhhbGYgb2YgUXVhbGNv
bW0gSW5ub3ZhdGlvbiBDZW50ZXIsIEluYy4gaXMgYSBtZW1iZXIKb2YgQ29kZSBBdXJvcmEgRm9y
dW0sIGhvc3RlZCBieSBUaGUgTGludXggRm91bmRhdGlvbgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
