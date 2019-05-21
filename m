Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D5C245A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:32:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hcBvrVGBsNHoZDXrHyoa3Ot2P8FvUl9zb74Lxz8iKC0=; b=hwz8MzyZQRgIHDMJjApuLmyA1
	D3fzV86S9QmiuOKNt2hWcbqWb8iv0hFCGWgT7gJKLkSMvaEWLF5sAlxL8UXjqVb3D4l13SFJIvBaH
	epama8WHyF41vXKekV+fPcijruCuXpU5ggmsCTUj8tqIMPD2QJkSyboGQ4/fr0Nj6A8WjWQFmqXMY
	B+41BBH+K8Eg2lfma7FwVq+Zb48DvmVI63qdk82/0y76W2bsZuuTX6yqC2uzcekP2qKJDCfPxcALP
	ng544pZkAkj9/T/vgPEvoKA7/5lADCKGT4E/+JnkFYI5i2L4lx2RuRvT+/XO2/p0WdCzrot7Pzx5T
	Tom2j9iEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStdt-0005Rm-U8; Tue, 21 May 2019 01:32:37 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStdn-0005RI-07
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:32:32 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 728B3608D4; Tue, 21 May 2019 01:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558402350;
 bh=jUBciQwDLO8DI/ZPhk5HhSoTVtSqS/+i48ZqN5DOVwA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=F47/6NMrbkhdAJ9MAogrobowwRLAa43aexBQxM2FzC/DbcjHMMhXAkYQDccVcOYrL
 Lo3XUC5vrv929pXKxtjGzFBzjGWqPA4Q6NYeiNiKz5RG8PmuFZGPXh9hd0kvnjCnZQ
 DZPNPlNrPDXWPZn7y9rwx811gwG6XSsKuTUSMlf4=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 85C5A602B7;
 Tue, 21 May 2019 01:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558402349;
 bh=jUBciQwDLO8DI/ZPhk5HhSoTVtSqS/+i48ZqN5DOVwA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=h307RjJc9xkBcbnBvEAcel6wzzP0lSQJmwqychQ0OK2jcvpNKzB+evEcy2FajZfZz
 y5AWG98+nUS1Kbj6zWQTquwNyIzxv13pm6e252k+Vf0iywk3GTe+Yd8CWLzAjOFcTh
 M6Fcpp54cyEfJOInaRF0yUB7joAZKpDXbaZREXac=
MIME-Version: 1.0
Date: Mon, 20 May 2019 19:32:29 -0600
From: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH 1/8] net: qualcomm: rmnet: fix struct rmnet_map_header
In-Reply-To: <81fd1e01-b8e3-f86a-fcc9-2bcbc51bd679@linaro.org>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-2-elder@linaro.org>
 <b0edef36555877350cfbab2248f8baac@codeaurora.org>
 <81fd1e01-b8e3-f86a-fcc9-2bcbc51bd679@linaro.org>
Message-ID: <d90f8ccdc1f76f9166f269eb71a14f7f@codeaurora.org>
X-Sender: subashab@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_183231_076462_66788407 
X-CRM114-Status: GOOD (  17.72  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: syadagir@codeaurora.org, ejcaruso@google.com, arnd@arndb.de,
 netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 davem@davemloft.net, cpratapa@codeaurora.org, benchan@google.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pj4gSWYgdGhlIGFib3ZlIGlsbHVzdHJhdGlvbiBpcyBzdXBwb3NlZCB0byBiZSBpbiBuZXR3b3Jr
IGJ5dGUgb3JkZXIsCj4+IHRoZW4gaXQgaXMgd3JvbmcuIFRoZSBkb2N1bWVudGF0aW9uIGhhcyB0
aGUgZGVmaW5pdGlvbiBmb3IgdGhlIE1BUAo+PiBwYWNrZXQuCj4gCj4gTmV0d29yayAqYml0KiBv
cmRlciBpcyBpcnJlbGV2YW50IHRvIHRoZSBob3N0LiAgSG9zdCBtZW1vcnkgaXMKPiBieXRlIGFk
ZHJlc3NhYmxlIG9ubHksIGFuZCBiaXQgMCBpcyB0aGUgbG93LW9yZGVyIGJpdC4KPiAKPj4gUGFj
a2V0IGZvcm1hdCAtCj4+IAo+PiBCaXTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAxwqDCoMKgwqDCoMKgwqDCoMKgwqAgMi03wqDCoMKgwqDCoCA4IC0g
MTXCoMKgwqDCoMKgwqDCoMKgwqDCoCAxNiAKPj4gLSAzMQo+PiBGdW5jdGlvbsKgwqAgQ29tbWFu
ZCAvIERhdGHCoMKgIFJlc2VydmVkwqDCoMKgwqAgUGFkwqDCoCBNdWx0aXBsZXhlciBJRMKgwqDC
oCAKPj4gUGF5bG9hZCBsZW5ndGgKPj4gQml0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzMiAtIHgK
Pj4gRnVuY3Rpb27CoMKgwqDCoCBSYXfCoCBCeXRlcwo+IAo+IEkgZG9uJ3Qga25vdyBob3cgdG8g
aW50ZXJwcmV0IHRoaXMuICBBcmUgeW91IHNheWluZyB0aGF0IHRoZSBsb3ctCj4gb3JkZXIgYml0
IG9mIHRoZSBmaXJzdCBieXRlIGlzIHRoZSBjb21tYW5kL2RhdGEgZmxhZz8gIE9yIGlzIGl0Cj4g
dGhlIGhpZ2gtb3JkZXIgYml0IG9mIHRoZSBmaXJzdCBieXRlPwo+IAo+IEknbSBzYXlpbmcgdGhh
dCB3aGF0IEkgb2JzZXJ2ZWQgd2hlbiBidWlsZGluZyB0aGUgY29kZSB3YXMgdGhhdAo+IGFzIG9y
aWdpbmFsbHkgZGVmaW5lZCwgdGhlIGNkX2JpdCBmaWVsZCB3YXMgdGhlIGhpZ2gtb3JkZXIgYml0
Cj4gKGJpdCA3KSBvZiB0aGUgZmlyc3QgYnl0ZSwgd2hpY2ggSSB1bmRlcnN0YW5kIHRvIGJlIHdy
b25nLgo+IAo+IElmIHlvdSBhcmUgdGVsbGluZyBtZSB0aGF0IHRoZSBjb21tYW5kL2RhdGEgZmxh
ZyByZXNpZGVzIGF0IGJpdAo+IDcgb2YgdGhlIGZpcnN0IGJ5dGUsIEkgd2lsbCB1cGRhdGUgdGhl
IGZpZWxkIG1hc2tzIGluIGEgbGF0ZXIKPiBwYXRjaCBpbiB0aGlzIHNlcmllcyB0byByZWZsZWN0
IHRoYXQuCj4gCgpIaWdoZXIgb3JkZXIgYml0IGlzIENvbW1hbmQgLyBEYXRhLgoKPj4gVGhlIGRy
aXZlciB3YXMgd3JpdHRlbiBhc3N1bWluZyB0aGF0IHRoZSBob3N0IHdhcyBydW5uaW5nIEFSTTY0
LCBzbwo+PiB0aGUgc3RydWN0cyBhcmUgbGl0dGxlIGVuZGlhbi4gKEkgc2hvdWxkIGhhdmUgbWFk
ZSBpdCBjb21wYXRpYmxlCj4+IHdpdGggYmlnIGFuZCBsaXR0bGUgZW5kaWFuIGVhcmxpZXIgc28g
dGhhdCBpcyBteSBmYXVsdCkuCj4gCj4gTGl0dGxlIGVuZGlhbiBhbmQgYmlnIGVuZGlhbiBoYXZl
IG5vIGJlYXJpbmcgb24gdGhlIGhvc3Qncwo+IGludGVycHJldGF0aW9uIG9mIGJpdHMgd2l0aGlu
IGEgYnl0ZS4KPiAKPiBQbGVhc2UgY2xhcmlmeS4gIEkgd2FudCB0aGUgcGF0Y2hlcyB0byBiZSBj
b3JyZWN0LCBhbmQgd2hhdAo+IHlvdSdyZSBleHBsYWluaW5nIGRvZXNuJ3QgcmVhbGx5IHN0cmFp
Z2h0ZW4gdGhpbmdzIG91dCBmb3IgbWUuCj4gCj4gCQkJCQktQWxleAoKQ2FuJ3QgdGhpcyBiaXRm
aWVsZHMganVzdCBiZSB1c2VkIHNpbWlsYXIgdG8gaG93IHN0cnVjdCB0Y3BoZHIgJgppcGhkciBh
cmUgY3VycmVudGx5IGRlZmluZWQuIFRoYXQgd2F5LCB5b3UgZG9udCBoYXZlIHRvIG1ha2UKdGhl
c2UgbWFueSBjaGFuZ2VzLgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3F1YWxj
b21tL3JtbmV0L3JtbmV0X21hcC5oIApiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3F1YWxjb21tL3Jt
bmV0L3JtbmV0X21hcC5oCmluZGV4IDg4NGYxZjUuLjMwMmQxZGIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L3F1YWxjb21tL3JtbmV0L3JtbmV0X21hcC5oCisrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L3F1YWxjb21tL3JtbmV0L3JtbmV0X21hcC5oCkBAIC00MCw5ICs0MCwxNyBA
QCBlbnVtIHJtbmV0X21hcF9jb21tYW5kcyB7CiAgfTsKCiAgc3RydWN0IHJtbmV0X21hcF9oZWFk
ZXIgeworI2lmIGRlZmluZWQoX19MSVRUTEVfRU5ESUFOX0JJVEZJRUxEKQogICAgICAgICB1OCAg
cGFkX2xlbjo2OwogICAgICAgICB1OCAgcmVzZXJ2ZWRfYml0OjE7CiAgICAgICAgIHU4ICBjZF9i
aXQ6MTsKKyNlbGlmIGRlZmluZWQgKF9fQklHX0VORElBTl9CSVRGSUVMRCkKKyAgICAgICB1OCAg
Y2RfYml0OjE7CisgICAgICAgdTggIHJlc2VydmVkX2JpdDoxOworICAgICAgIHU4ICBwYWRfbGVu
OjY7CisjZWxzZQorI2Vycm9yICJQbGVhc2UgZml4IDxhc20vYnl0ZW9yZGVyLmg+IgorI2VuZGlm
CiAgICAgICAgIHU4ICBtdXhfaWQ7CiAgICAgICAgIF9fYmUxNiBwa3RfbGVuOwogIH0gIF9fYWxp
Z25lZCgxKTsKCgotLSAKUXVhbGNvbW0gSW5ub3ZhdGlvbiBDZW50ZXIsIEluYy4gaXMgYSBtZW1i
ZXIgb2YgQ29kZSBBdXJvcmEgRm9ydW0sCmEgTGludXggRm91bmRhdGlvbiBDb2xsYWJvcmF0aXZl
IFByb2plY3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
