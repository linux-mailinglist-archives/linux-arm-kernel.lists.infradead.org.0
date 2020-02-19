Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB857164154
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:19:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbLZoZQxrrqVzb6Bk0ye3Hk420wN7920yZTAAQcjVgU=; b=X0xhtrbHdEWUJN
	80kqX6RotHytHaPpxIduPywGJyLtuFShCouYxpQ0jINhUNw6xJYmZkNtJEXXW9xVsF1TyXCjdODWd
	hr6AXrNO8UIjg6LqfXe2IfyDaCnFREMQCg0tjkyfjX6Xpvf4ymTZGs5HyHhJvWvl4Vojqe1G6PVFq
	mpabkFsjV66y2TaUmXED9t/FEVou4kfDXIY9vO1r3NGKEWV2npdyRsiAXZyFqdfzjWu4E2oZ36iY8
	TVfgNKcsqqcXpZj7REbeR6OPgtZTrqaCNzWYAOraqCQIdQJjy3DdhPyNovrf8qPMiJ3xYRCwES7sF
	ILhjUz1BLY4zvh6d2LAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MRb-0002aA-AQ; Wed, 19 Feb 2020 10:19:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4MRR-0002Zc-Tc
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:18:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2B341FB;
 Wed, 19 Feb 2020 02:18:52 -0800 (PST)
Received: from [172.16.1.159] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E9F33F6CF;
 Wed, 19 Feb 2020 02:18:50 -0800 (PST)
Subject: Re: [PATCH 3/5] kvm: arm64: Limit PMU version to ARMv8.1
To: Marc Zyngier <maz@kernel.org>
References: <20200216185324.32596-1-maz@kernel.org>
 <20200216185324.32596-4-maz@kernel.org>
 <eb0294ef-5ad2-9940-2d59-b92220948ffc@arm.com>
 <c0a848e3ababff4ee9ecaa4b246d5875@kernel.org>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <ed7f31d5-9a2b-6ea0-85f8-74fcd7d9ac61@arm.com>
Date: Wed, 19 Feb 2020 10:18:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c0a848e3ababff4ee9ecaa4b246d5875@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_021854_003782_B08572BA 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Maydell <peter.maydell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIvMTkvMjAgOTo0NiBBTSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIw
MjAtMDItMTggMTc6NDMsIEphbWVzIE1vcnNlIHdyb3RlOgo+PiBIaSBNYXJjLAo+Pgo+PiBPbiAx
Ni8wMi8yMDIwIDE4OjUzLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+PiBPdXIgUE1VIGNvZGUgaXMg
b25seSBpbXBsZW1lbnRpbmcgdGhlIEFSTXY4LjEgZmVhdHVyZXMsIHNvIGxldCdzCj4+PiBzdGlj
ayB0byB0aGlzIHdoZW4gcmVwb3J0aW5nIHRoZSBmZWF0dXJlIHNldCB0byB0aGUgZ3Vlc3QuCj4+
Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYyBiL2FyY2gvYXJtNjQv
a3ZtL3N5c19yZWdzLmMKPj4+IGluZGV4IDY4MmZlZGQ3NzAwZi4uMDZiMmQwZGM2YzczIDEwMDY0
NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYwo+Pj4gKysrIGIvYXJjaC9hcm02
NC9rdm0vc3lzX3JlZ3MuYwo+Pj4gQEAgLTEwOTMsNiArMTA5MywxMSBAQCBzdGF0aWMgdTY0IHJl
YWRfaWRfcmVnKGNvbnN0IHN0cnVjdCBrdm1fdmNwdQo+Pj4gKnZjcHUsCj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEZFQVRVUkUoSURfQUE2NElTQVIxX0dQQSkgfAo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBGRUFUVVJFKElEX0FBNjRJU0FSMV9H
UEkpKTsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+PiArwqDCoMKgIGNhc2UgU1lTX0lE
X0FBNjRERlIwX0VMMToKPj4+ICvCoMKgwqDCoMKgwqDCoCAvKiBMaW1pdCBQTVUgdG8gQVJNdjgu
MSAqLwo+Pgo+PiBOb3QganVzdCBsaW1pdCwgYnV0IHVwZ3JhZGUgdG9vISAoZm9yY2U/KQo+PiBU
aGlzIGxvb2tzIHNhZmUgYmVjYXVzZSBBUk1WOF9QTVVfRVZUWVBFX0VWRU5UIGFsd2F5cyBpbmNs
dWRlcyB0aGUKPj4gZXh0cmEgYml0cyB0aGlzIGFkZGVkLCBhbmQgdGhlIHJlZ2lzdGVyIGlzIGFs
d2F5cyB0cmFwcGVkLgo+IAo+IFRoYXQncyBkZWZpbml0ZWx5IG5vdCB3aGF0IEkgaW50ZW5kZWQh
IExldCBtZSBmaXggdGhhdCBvbmUuCgpXaGF0IGdvZXMgd3Jvbmc/CgpUaGUgcmVnaXN0ZXIgZGVz
Y3JpcHRpb24gc2F5cyB0byBzdXBwb3J0IHY4LjEgeW91IG5lZWQ6CnwgRXh0ZW5kZWQgMTYtYml0
IFBNRVZUWVBFUjxuPl9FTDAuZXZ0Q291bnQgZmllbGQKfCBJZiBFTDIgaXMgaW1wbGVtZW50ZWQs
IHRoZSBNRENSX0VMMi5IUE1EIGNvbnRyb2wgYml0CgpJdCBsb29rcyBsaWtlIHRoZSBleHRlbmRl
ZCBQTUVWVFlQRVIgd291bGQgd29yayB2aWEgdGhlIGVtdWxhdGlvbiwgYW5kCkVMMiBndWVzdHMg
YXJlIHRvdGFsbHkgY3JhenkuCgpJcyB0aGUgU1RBTExfKiBiaXRzIGluIEFSTXY4LjEtUE1VIHRo
ZSBwcm9ibGVtLCAuLi4gb3IgdGhlIGV4dHJhIHdvcmsKZm9yIE5WPwoKCj4+IFRoZSBQTVUgdmVy
c2lvbiBpcyBhbHNvIHJlYWRhYmxlIHZpYSBJRF9ERlIwX0VMMS5QZXJmTW9uLCBzaG91bGQgdGhh
dAo+PiBiZSBzYW5pdGlzZWQgdG8gYmUgdGhlIHNhbWU/IChJIGRvbid0IHRoaW5rIHdlJ3ZlIGhp
ZGRlbiBhbiBhYXJjaDY0Cj4+IGZlYXR1cmUgdGhhdCBhbHNvIGV4aXN0ZWQgaW4gYWFyY2gzMiBi
ZWZvcmUpLgo+IAo+IEluZGVlZCwgeWV0IGFub3RoZXIgb3ZlcnNpZ2h0LiBJJ2xsIGZpeCB0aGF0
IHRvby4KCihXZWlyZCB2YXJpYXRpb24gaW4gdGhlIGFhcmNoMzIgYW5kIGFhcmNoNjQgSUQgcmVn
aXN0ZXJzIGlzbid0IHNvbWV0aGluZwpJIGNhcmUgYWJvdXQgLi4uIHdobyB3b3VsZCBldmVyIGxv
b2sgYXQgYm90aD8pCgoKClRoYW5rcywKCkphbWVzCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
