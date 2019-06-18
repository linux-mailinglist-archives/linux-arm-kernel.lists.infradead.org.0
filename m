Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E914A42E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:41:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iw4uxyqxaztEBXs0UjDs2ItCAfHYenVpXSQb5GtAWGU=; b=nprXfmzUaRGTwB
	mMZeGs0zByIV8HWeJFyegcVy5JopAolfw3yjg6Pnh9SY3eiUmyjhGsYFOpEfJUFAFXHXTVZ/I2PXl
	mg99UNwrDDFFZTo4dEsfOe6C+RKpLY9SUFobkIVhR6KS3wea/s8AcXRN8EILirKZoExECF79sJk4S
	aH1FhdfN/Q8u1jim8luiJPevTNIT+QE9cmWUrX2h0SI8WBAUVdEtanaK8N26s5Ucx6xfe3DVDHSuK
	Euov0wMiRymR77pqTmnojCFfgUdTlvb19w/GKqnDITuQVclS7pIOXEarM1z2zWIUwWwkyfy/x11Nv
	z+g6wigzhtO0PPwoYu2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFII-0007D4-B8; Tue, 18 Jun 2019 14:41:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFHi-0006ZB-6e
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:40:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 50E012B;
 Tue, 18 Jun 2019 07:40:26 -0700 (PDT)
Received: from [10.1.194.37] (e113632-lin.cambridge.arm.com [10.1.194.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3124C3F718;
 Tue, 18 Jun 2019 07:40:25 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: Jeremy Linton <jeremy.linton@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20190614223158.49575-1-jeremy.linton@arm.com>
 <20190614223158.49575-2-jeremy.linton@arm.com>
 <667f95c0-5aa9-f460-a49a-e6dfefc027d8@arm.com>
 <2d1b547f-f9ee-391c-c4f3-0232a08a86bc@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <718438d0-8648-897a-83e8-801146a0af86@arm.com>
Date: Tue, 18 Jun 2019 15:40:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <2d1b547f-f9ee-391c-c4f3-0232a08a86bc@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_074030_350992_204EE573 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org, sudeep.holla@arm.com,
 lenb@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTgvMDYvMjAxOSAxNToyMSwgSmVyZW15IExpbnRvbiB3cm90ZToKWy4uLl0KPj4+ICsgKiBS
ZXR1cm46IC1FTk9FTlQgaWYgdGhlIFBQVFQgZG9lc24ndCBleGlzdCwgdGhlIENQVSBjYW5ub3Qg
YmUgZm91bmQgb3IKPj4+ICsgKsKgwqDCoMKgwqDCoCB0aGUgdGFibGUgcmV2aXNpb24gaXNuJ3Qg
bmV3IGVub3VnaC4KPj4+ICsgKiBPdGhlcndpc2UgcmV0dXJucyBmbGFnIHZhbHVlCj4+PiArICov
Cj4+Cj4+IE5pdDogc3RyaWN0bHkgc3BlYWtpbmcgd2UncmUgbm90IHJldHVybmluZyB0aGUgZmxh
ZyB2YWx1ZSBidXQgaXRzIG1hc2sKPj4gYXBwbGllZCB0byB0aGUgZmxhZ3MgZmllbGQuIEkgZG9u
J3QgdGhpbmsgYW55b25lIHdpbGwgY2FyZSBhYm91dCBnZXR0aW5nCj4+IHRoZSBhY3R1YWwgZmxh
ZyB2YWx1ZSwgYnV0IGl0IHNob3VsZCBiZSBtYWRlIG9idmlvdXMgaW4gdGhlIGRvYzoKPiAKPiBP
ciBJIGNsYXJpZnkgdGhlIGNvZGUgdG8gYWN0dWFsbHkgZG8gd2hhdCB0aGUgY29tbWVudHMgc2F5
cy4gTWF5YmUgdGhhdCBpcyB3aGF0IEpvaG4gRyB3YXMgYWxzbyBwb2ludGluZyBvdXQgdG9vPwo+
IAoKTW1tIEkgZGlkbid0IGZpbmQgYW55IHJlcGx5IGZyb20gSm9obiByZWdhcmRpbmcgdGhpcyBp
biB2MSwgYnV0IEkgd291bGRuJ3QKbWluZCBlaXRoZXIgd2F5LCBhcyBsb25nIGFzIHRoZSBkb2Mg
JiBjb2RlIGFyZSBhbGlnbmVkLgoKWy4uLl0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
