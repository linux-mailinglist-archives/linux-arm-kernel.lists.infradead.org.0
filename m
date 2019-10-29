Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB7DE8EAC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kvxiY6pgtlZQT8YULCz2DuPYIbpTDx3wqo8812/n0tM=; b=oSo8ICfxAE4W5EL2zvWOe+PBZ
	fNM5hLortZjzBDFdzV9Mq4THBWDfucdXQzu4NRNLsNIy4anAHHCUD93wUhaHp8O1+eRyq3RR5pvXO
	MVGgntsEBdUbGsiUek7SBojsnMmvAQlraLe6rbushwXs6DIUyM/R0pRwAWBjyDVi5Va7e/Wii+OPO
	dyh1rJ3Awb7yGnuwDCgq21JDRMXDZ+NqZ7E+itqqVW9vOHhLpAT86+IiyyEFu/6QgVz4K+di7pS06
	K2ThFtsxJ/r1ILJ5k52vIgSeyxWhzAV2C0wt0DJcbFU28CX7VKapFuCtiEFI1htU9I4OuiAouJ0ee
	xY/hkFqoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPVed-00017z-Cv; Tue, 29 Oct 2019 17:51:39 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPVeT-00016w-5V
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 17:51:30 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 775C360EE4; Tue, 29 Oct 2019 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572371487;
 bh=bftFcLSwZqHPkXi1F7N9wDRTevZ/aidKfDH06FT0MTs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=FjrjwM1qFc3qxgoaWtnh7W8rxak6gcGl0vA9Wi3TkigH8bTiC+5lU5QR5k8tgUoRp
 2egWQzqboPyWn3bRQmXA3gduVUsX03yAE5OjmBfQi/Uicbn+dDq/bG+RTx4/JLhmcl
 ZjliZ01gNF6PK0zwhLI3+XlmrzIg7aRKGoKh3zFQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.226.58.28] (i-global254.qualcomm.com [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jhugo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D1C3160927;
 Tue, 29 Oct 2019 17:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572371485;
 bh=bftFcLSwZqHPkXi1F7N9wDRTevZ/aidKfDH06FT0MTs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Vmxg6f9I6CsqxhG2qQxoCeMZ/wMemRYoIBQo8OJ5PYixGobQz36E7Q4s0FoxcyRei
 rVjNutek6jnmhBSCL5D4d7UK1hi9oaWab6xzBymhJe72gPzt3Xi5EhSpdNTs/b24WI
 pimxF6XZZgLel4GJ0sSFrel73RYZFs1aiwMdAZdY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D1C3160927
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jhugo@codeaurora.org
Subject: Re: [PATCH] arm64: cpufeature: Enable Qualcomm Falkor errata 1009 for
 Kryo
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Will Deacon <will@kernel.org>
References: <20191029060604.1208925-1-bjorn.andersson@linaro.org>
 <20191029115008.GD12103@willie-the-truck>
 <16ccb343-8253-0224-e957-c73f51f110a1@codeaurora.org>
 <d9700408-b11e-b5c8-db9d-f70ccd1bde73@codeaurora.org>
 <20191029171149.GB13281@willie-the-truck> <20191029172431.GY571@minitux>
From: Jeffrey Hugo <jhugo@codeaurora.org>
Message-ID: <b22e4ff5-5f2c-3987-8f48-49de0c57e8c6@codeaurora.org>
Date: Tue, 29 Oct 2019 11:51:23 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191029172431.GY571@minitux>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_105129_255784_C52E8D64 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMjkvMjAxOSAxMDoyNCBBTSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgo+IE9uIFR1ZSAy
OSBPY3QgMTA6MTEgUERUIDIwMTksIFdpbGwgRGVhY29uIHdyb3RlOgo+IAo+PiBPbiBUdWUsIE9j
dCAyOSwgMjAxOSBhdCAwOTowNzo1M0FNIC0wNjAwLCBKZWZmcmV5IEh1Z28gd3JvdGU6Cj4+PiBP
biAxMC8yOS8yMDE5IDc6NDQgQU0sIEplZmZyZXkgSHVnbyB3cm90ZToKPj4+PiBPbiAxMC8yOS8y
MDE5IDQ6NTAgQU0sIFdpbGwgRGVhY29uIHdyb3RlOgo+Pj4+PiBPbiBNb24sIE9jdCAyOCwgMjAx
OSBhdCAxMTowNjowNFBNIC0wNzAwLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4+Pj4+PiBUaGUg
S3J5byBjb3JlcyBzaGFyZSBlcnJhdGEgMTAwOSB3aXRoIEZhbGtvciwgc28gYWRkIHRoZWlyIG1v
ZGVsCj4+Pj4+PiBkZWZpbml0aW9ucyBhbmQgZW5hYmxlIGl0IGZvciB0aGVtIGFzIHdlbGwuCj4+
Pj4+Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogQmpvcm4gQW5kZXJzc29uIDxiam9ybi5hbmRlcnNz
b25AbGluYXJvLm9yZz4KPj4+Pj4+IC0tLQo+Pj4+Pj4gIMKgIGFyY2gvYXJtNjQvaW5jbHVkZS9h
c20vY3B1dHlwZS5oIHwgNCArKysrCj4+Pj4+PiAgwqAgYXJjaC9hcm02NC9rZXJuZWwvY3B1X2Vy
cmF0YS5jwqDCoCB8IDIgKysKPj4+Pj4+ICDCoCAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9u
cygrKQo+Pj4+Pj4KPj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2Nw
dXR5cGUuaAo+Pj4+Pj4gYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2NwdXR5cGUuaAo+Pj4+Pj4g
aW5kZXggYjE0NTRkMTE3Y2QyLi44MDY3NDc2ZWEyZTQgMTAwNjQ0Cj4+Pj4+PiAtLS0gYS9hcmNo
L2FybTY0L2luY2x1ZGUvYXNtL2NwdXR5cGUuaAo+Pj4+Pj4gKysrIGIvYXJjaC9hcm02NC9pbmNs
dWRlL2FzbS9jcHV0eXBlLmgKPj4+Pj4+IEBAIC04NCw2ICs4NCw4IEBACj4+Pj4+PiAgwqAgI2Rl
ZmluZSBRQ09NX0NQVV9QQVJUX0ZBTEtPUl9WMcKgwqDCoMKgwqDCoMKgIDB4ODAwCj4+Pj4+PiAg
wqAgI2RlZmluZSBRQ09NX0NQVV9QQVJUX0ZBTEtPUsKgwqDCoMKgwqDCoMKgIDB4QzAwCj4+Pj4+
PiAgwqAgI2RlZmluZSBRQ09NX0NQVV9QQVJUX0tSWU/CoMKgwqDCoMKgwqDCoCAweDIwMAo+Pj4+
Pj4gKyNkZWZpbmUgUUNPTV9DUFVfUEFSVF9LUllPX0dPTETCoMKgwqDCoMKgwqDCoCAweDIxMQo+
Pj4+Pj4gKyNkZWZpbmUgUUNPTV9DUFVfUEFSVF9LUllPX1NJTFZFUsKgwqDCoCAweDIwNQo+Pj4+
Cj4+Pj4gVGhlc2UgYXJlIG5vdCBLcnlvIHBhcnQgbnVtYmVycyAoODk5OCspLsKgIFRoZXkgYXJl
IEh5ZHJhIG9uZXMuCj4+Pj4KPj4+Pj4KPj4+Pj4gQ2FuIHlvdSBkb3VibGUtY2hlY2sgdGhpcywg
cGxlYXNlPyBNeSBQaXhlbC0xIHBob25lIGNsYWltcyBzb21ldGhpbmcgd2l0aAo+Pj4+PiAweDIw
MSwgYnV0IEkgZG9uJ3Qga25vdyBpZiB0aGF0J3Mgd2hhdCB5b3Ugd2VyZSBhaW1pbmcgZm9yLiBJ
dCB3b3VsZCBiZQo+Pj4+PiBncmVhdCBpZiBRdWFsY29tbSBjb3VsZCBkb2N1bWVudCB0aGVzZSBy
ZWdpc3RlciBmaWVsZHMgc29tZXdoZXJlLAo+Pj4+PiBlc3BlY2lhbGx5Cj4+Pj4+IHNpbmNlIHdl
J3JlIHRyeWluZyB0byB3b3JrIGFyb3VuZCB0aGVpciBoYXJkd2FyZSBlcnJhdGEgZm9yIHRoZW0u
Cj4+Pj4KPj4+PiBJIHdpc2ggSSBjb3VsZCBwb2ludCB5b3UgdG8gcHVibGljIGRvY3VtZW50YXRp
b24uwqAgSSBkb24ndCBoYXBwZW4gdG8KPj4+PiBrbm93IHdoZXJlIGl0IGlzLsKgIEFzIGZhciBh
cyA4OTk2IGdvZXMsIHRoZXJlIGFyZSBxdWl0ZSBhIGZldyBwYXJ0Cj4+Pj4gbnVtYmVycy7CoCBU
aGUgb25lcyBJIGNvdWxkIGZpbmQgYXJlOgo+Pj4+IDIwMQo+Pj4+IDIwNQo+Pj4+IDIxMQo+Pj4+
IDI0MQo+Pj4+IDI1MQo+Pj4+Cj4+Pj4gMjgxIGhhcHBlbnMgdG8gYmUgUURGMjQzMgo+Pj4KPj4+
ICBGcm9tIGFza2luZyBhcm91bmQsIEkgZm91bmQgc29tZW9uZSBpbiB0aGUga25vdy4gIFdlIGRv
bid0IGhhdmUgcHVibGljCj4+PiBkb2N1bWVudGF0aW9uLCBidXQgSSBjYW4gZm9sbG93IHVwIHRv
IHRyeSB0byBjcmVhdGUgc29tZXRoaW5nIC0gaXRzIGxpa2VseQo+Pj4gZ29pbmcgdG8gdGFrZSBh
IGJpdC4gIEkgd2FzIGdpdmVuIHRoZSBmb2xsb3dpbmcgaW5mb3JtYXRpb24gdG8gc2hhcmUuICBU
aGlzCj4+PiBpcyBzcGVjaWZpYyB0byBIeWRyYSBvbmx5LQo+Pj4KPj4+IE1JRFJbMTU6MTJdID0g
UEFSVFsxMTo4XQo+Pj4gSHlkcmEgYW5kIHRlY2hub2xvZ3kgbm9kZSBkaWZmZXJlbnRpYXRvciAo
MHgxID0gSHlkcmEgMTZubTsgMHgyID0gSHlkcmEKPj4+IDE0bm07IDB4MyA9IEh5ZHJhIDEwbm0p
Cj4+Pgo+Pj4gTUlEUlsxMToxMF0gPSBQQVJUWzc6Nl0KPj4+IFRoaXMgY29ycmVzcG9uZHMgdG8g
dGhlIGNsdXN0ZXIgcmV2aXNpb24gbnVtYmVyCj4+Pgo+Pj4gTUlEUls5OjhdID0gUEFSVFs1OjRd
Cj4+PiBUZWNobm9sb2d5IHZhcmlhbnQgd2l0aGluIHRoZSBub2RlCj4+Pgo+Pj4gTUlEUls3OjZd
ID0gUEFSVFszOjJdCj4+PiAwYjAwID0gNTEyS0IgTDIKPj4+IDBiMDEgPSAxTUIgTDIKPj4+IDBi
MTAgPSAyTUIgTDIKPj4+IDBiMTEgPSA0TUIgTDIKPj4+Cj4+PiBNSURSWzU6NF0gPSBQQVJUWzE6
MF0KPj4+IDBiMDAgPSB1bmktY29yZQo+Pj4gMGIwMSA9IGR1YWwtY29yZSBjbHVzdGVyCj4+PiAw
YjEwID0gdHJpLWNvcmUgY2x1c3Rlcgo+Pj4gMGIxMSA9IHF1YWQtY29yZSBjbHVzdGVyCj4+Cj4+
IFRoYW5rcyBmb3IgZGlnZ2luZyB1cCB0aGUgZGV0YWlscywgSmVmZnJleS4gQXMgZmFyIGFzIEkg
Y2FuIHRlbGwsIG91cgo+PiAnaXNfa3J5b19taWRyKCknIGZ1bmN0aW9uIHdpbGwgcmV0dXJuICd0
cnVlJyBmb3IgYWxsIG9mIHRoZXNlLCBzbyBJIHRoaW5rCj4+IHRoYXQncyB3aGF0IHdlIHNob3Vs
ZCBiZSB1c2luZyBmb3IgdGhpcyBlcnJhdHVtIHdvcmthcm91bmQuIFdvdWxkIHRoYXQgd29yawo+
PiBmb3IgeW91Pwo+Pgo+IAo+IFllcywgSSBhZ3JlZS4gVGhlcmUncyBhIGZhaXIgYW1vdW50IG9m
IHZhcmlhbnRzIGludm9sdmVkLCBzbyBsZXQncyBnbwo+IGZvciBpc19rcnlvX21pZHIoKSAod2hp
Y2ggc2hvdWxkIGJlIGlzX2h5ZHJhX21pZHIoKSkuCj4gCgpJIGFsc28gYWdyZWUsIGJ1dCBiZWxp
ZXZlIHRoYXQgaXQgc2hvdWxkIGJlIHJlbmFtZWQgdG8gaXNfaHlkcmFfbWlkcigpIAphcyBCam9y
biBzdWdnZXN0cywgc2luY2UgdGhlcmUgaXMgYSAia3J5byIgYXJjaGl0ZWN0dXJlIHdoaWNoIGhh
cyAKZGlmZmVyZW50IHBhcnQgaWRzLCBhbmQgSSB0aGluayBjb250aW51aW5nIHRvIHVzZSAia3J5
byIgZm9yIHRoZSBjdXJyZW50IAplcnJhdGEgd2lsbCBiZSBjb25mdXNpbmcgaWYgdGhlcmUgaXMg
ZXJyYXRhIGZvciB0aGUga3J5byBhcmNoaXRlY3R1cmUgaW4gCnRoZSBmdXR1cmUuCgpPZiBjb3Vy
c2UsIGl0IGRvZXNuJ3QgaGVscCB0aGF0IG1hcmtldGluZyBzZWVtcyB0byBoYXZlIHVzZWQgImty
eW8iIGZvciAKYm90aCBhcmNoaXRlY3R1cmVzLgoKLS0gCkplZmZyZXkgSHVnbwpRdWFsY29tbSBU
ZWNobm9sb2dpZXMsIEluYy4gaXMgYSBtZW1iZXIgb2YgdGhlCkNvZGUgQXVyb3JhIEZvcnVtLCBh
IExpbnV4IEZvdW5kYXRpb24gQ29sbGFib3JhdGl2ZSBQcm9qZWN0LgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
