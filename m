Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7CE1E5F1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 14:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WiXHlXGPFZOE4Xd1ckd6BOESEJbR3OfrsXRD9vPPYCs=; b=aHKOM6/XcxaaZI
	8dHyVkhtCmVlBa7AGoCFKBBsIxP/NkMguXeU7TZtacaXQqeTRMtkpwTdb2MIyICR4fA2hHMuBQyVf
	Alq5VuBErD6Z8dJUVEFbO00TYMrFcnXQ0ppDItUTAFhLbt7P7R0ITPbWtvLTaigRPYWruKcI4hPR9
	6k8MWy4Yj03Simrq/QGbU2lRRbe1A4GGWFknfOygzKxfmcmB7Xd0d4aG1t3koaxgppM1NAx/m5agj
	8BGYfkhxIPwXCVd2z+Sg3UERHBeMPa8ia/rQ2PMQDDTCqN+fpSXPvwTEgPCCxP+cnSragEIjmH0PD
	E+SJslWcK61D8rEWbxEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHCS-000497-V7; Thu, 28 May 2020 11:59:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHCE-00048G-W0
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 11:59:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4602D6E;
 Thu, 28 May 2020 04:59:35 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D37283F6C4;
 Thu, 28 May 2020 04:59:34 -0700 (PDT)
Subject: Re: [PATCH 1/3] KVM: arm64: Stop writing aarch32's CSSELR into ACTLR
To: Marc Zyngier <maz@kernel.org>
References: <20200526161834.29165-1-james.morse@arm.com>
 <20200526161834.29165-2-james.morse@arm.com>
 <4be0c0b654f7d7c1efe9f52efb856bd8@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <09dca8e9-c548-43fd-a95b-747a77f19e02@arm.com>
Date: Thu, 28 May 2020 12:59:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4be0c0b654f7d7c1efe9f52efb856bd8@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_045939_069853_0958B3C8 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: stable@vger.kernel.org, Julien Thierry <julien.thierry.kdev@gmail.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDI4LzA1LzIwMjAgMDk6NTcsIE1hcmMgWnluZ2llciB3cm90ZToKPiBPbiAy
MDIwLTA1LTI2IDE3OjE4LCBKYW1lcyBNb3JzZSB3cm90ZToKPj4gYWNjZXNzX2Nzc2VscigpIHVz
ZXMgdGhlIDMyYml0IHItPnJlZyB2YWx1ZSB0byBhY2Nlc3MgdGhlIDY0Yml0IGFycmF5LAo+PiBz
byByZWFkcyBhbmQgd3JpdGUgdGhlIHdyb25nIHZhbHVlLiBzeXNfcmVnc1s0XSwgaXMgQUNUTFJf
RUwxLCB3aGljaAo+PiBpcyBzdWJzZXF1ZW50bHkgc2F2ZS9yZXN0b3JlZCB3aGVuIHdlIGVudGVy
IHRoZSBndWVzdC4KCj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2t2bS9zeXNfcmVncy5jIGIv
YXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYwo+PiBpbmRleCA1MWRiOTM0NzAyYjYuLjJlZGE1Mzlm
MzI4MSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYwo+PiArKysgYi9h
cmNoL2FybTY0L2t2bS9zeXNfcmVncy5jCj4+IEBAIC0yMDYwLDcgKzIwNjAsNyBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IHN5c19yZWdfZGVzYyBjcDE1X3JlZ3NbXSA9IHsKPj4KPj4gwqDCoMKgwqAg
eyBPcDEoMSksIENSbiggMCksIENSbSggMCksIE9wMigwKSwgYWNjZXNzX2Njc2lkciB9LAo+PiDC
oMKgwqDCoCB7IE9wMSgxKSwgQ1JuKCAwKSwgQ1JtKCAwKSwgT3AyKDEpLCBhY2Nlc3NfY2xpZHIg
fSwKPj4gLcKgwqDCoCB7IE9wMSgyKSwgQ1JuKCAwKSwgQ1JtKCAwKSwgT3AyKDApLCBhY2Nlc3Nf
Y3NzZWxyLCBOVUxMLCBjMF9DU1NFTFIgfSwKPj4gK8KgwqDCoCB7IE9wMSgyKSwgQ1JuKCAwKSwg
Q1JtKCAwKSwgT3AyKDApLCBhY2Nlc3NfY3NzZWxyX2VsMSwgTlVMTCwgQ1NTRUxSX0VMMSB9LAo+
PiDCoH07Cgo+IFRoaXMgaXMgYSBkZXBhcnR1cmUgZnJvbSB0aGUgd2F5IHdlIGRlYWwgd2l0aCAz
MmJpdCBDUDE1IHJlZ2lzdGVycy4KPiBXZSBkZWFsIHdpdGggdGhpcyBleGFjdCBpc3N1ZSBpbiBh
IHZlcnkgZGlmZmVyZW50IHdheSBmb3Igb3RoZXIKPiBDUDE1IHJlZ3MsIGJ5IGFkanVzdGluZyB0
aGUgaW5kZXggaW4gdGhlIHN5c19yZWdzIGFycmF5IChzZWUgdGhlCj4gd2F5IHdlIGhhbmRsZSB0
aGUgVk0gcmVncykuCj4gCj4gSG93IGFib3V0IHNvbWV0aGluZyBsaWtlIHRoaXMgKHVudGVzdGVk
KToKCltsaWtlIGFjY2Vzc192bV9yZWcoKSBkb2VzXQoKU3VyZSwgSSdsbCBnaXZlIHRoYXQgYSB0
ZXN0IGFuZCByZS1wb3N0IGl0LgoKCj4gSWRlYWxseSwgSSdkIGxpa2UgdGhlIGNvcmUgc3lzX3Jl
ZyBjb2RlIHRvIGRlYWwgd2l0aCB0aGlzIHNvcnQKPiBvZiBmdW5uaWVzLCBidXQgSSdtIHRyeWlu
ZyB0byBrZWVwIHRoZSBjaGFuZ2UgbWluaW1hbC4uLgoKUm9sbCB0aGlzICcvMicgYW5kIHVwcGVy
L2xvd2VyIGJpdHMgc3R1ZmYgaW50byBhIHZjcHVfd3JpdGVfY3AxNV9yZWcoKSB0aGF0IGNhbGxz
CnZjcHVfd3JpdGVfc3lzX3JlZygpPyAoL21lIGh1bnRzIG91dCB0aGUgdG9kbyBsaXN0KQoKClRo
YW5rcywKCkphbWVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
