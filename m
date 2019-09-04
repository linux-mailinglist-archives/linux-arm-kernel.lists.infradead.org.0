Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3F5A8638
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLUKopeooEqzEh7EJCMkQ9kq+9H/QkJGKezHf+538Ms=; b=qdHnpkrnDmkJ8R
	9F/7XEXbBa9sWwIwdbVlRA0GNNerP38/AGXXQWrip6v5UwGM8zf/A06IuBT4FUFGkrl+02F5UEzdw
	d6G2iNxFZKbdFHoXSK+vj3/SZLZJPQmmr1fyW/R8Wgl0CTuq34elyBlQ9403YDx//rBf8CVwhaPqG
	4uA9ogDIOsudn1BD4TEY29JNFPFa5IQclWHmf96sEk7VhHHwyJoMEyPeBCpnqX85EVIgSnVSnV2YT
	DyQmY3VXmmRZzPyQnk5WI9P4djRkLYXkS1f4dgGyXpkoMJeMAAx4UeTWP38ZSP4V9QWBiDtsdf+Sc
	ntpqlINokvp9SDsbzhzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Xav-0007ta-TF; Wed, 04 Sep 2019 15:53:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Xak-0007tF-8V
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:53:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6BB8728;
 Wed,  4 Sep 2019 08:53:05 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C969A3F246;
 Wed,  4 Sep 2019 08:53:03 -0700 (PDT)
Subject: Re: [PATCH v4 05/10] KVM: arm64: Support stolen time reporting via
 shared structure
To: Zenghui Yu <yuzenghui@huawei.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
References: <20190830084255.55113-1-steven.price@arm.com>
 <20190830084255.55113-6-steven.price@arm.com>
 <d55d091f-1c0f-9c47-b7b2-95c87285335d@huawei.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <d68fd0f8-a01f-0939-8493-865c4f037783@arm.com>
Date: Wed, 4 Sep 2019 16:53:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d55d091f-1c0f-9c47-b7b2-95c87285335d@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_085306_347336_E1A1764D 
X-CRM114-Status: GOOD (  13.56  )
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDMvMDkvMjAxOSAxMDoxNCwgWmVuZ2h1aSBZdSB3cm90ZToKPiBPbiAyMDE5LzgvMzAgMTY6
NDIsIFN0ZXZlbiBQcmljZSB3cm90ZToKPj4gSW1wbGVtZW50IHRoZSBzZXJ2aWNlIGNhbGwgZm9y
IGNvbmZpZ3VyaW5nIGEgc2hhcmVkIHN0cnVjdHVyZSBiZXR3ZWVuIGEKPj4gVkNQVSBhbmQgdGhl
IGh5cGVydmlzb3IgaW4gd2hpY2ggdGhlIGh5cGVydmlzb3IgY2FuIHdyaXRlIHRoZSB0aW1lCj4+
IHN0b2xlbiBmcm9tIHRoZSBWQ1BVJ3MgZXhlY3V0aW9uIHRpbWUgYnkgb3RoZXIgdGFza3Mgb24g
dGhlIGhvc3QuCj4+Cj4+IFRoZSBoeXBlcnZpc29yIGFsbG9jYXRlcyBtZW1vcnkgd2hpY2ggaXMg
cGxhY2VkIGF0IGFuIElQQSBjaG9zZW4gYnkgdXNlcgo+PiBzcGFjZS4KPiAKPiBJdCBzZWVtcyB0
aGF0IG5vIGFsbG9jYXRpb24gaGFwcGVucyBpbiB0aGUgaHlwZXJ2aXNvciBjb2RlLsKgIFVzZXIg
c3BhY2UKPiB3aWxsIGRvIGl0IGluc3RlYWQ/CgpBaCwgeWVzIEkgc2hvdWxkIHVwZGF0ZSB0aGUg
Y29tbWl0IG1lc3NhZ2UuIFVzZXIgc3BhY2UgZG9lcyBub3cgYWxsb2NhdGUKdGhlIG1lbW9yeS4g
VGhhbmtzIGZvciBzcG90dGluZyB0aGF0LgoKU3RldmUKCj4+IFRoZSBoeXBlcnZpc29yIHRoZW4g
dXBkYXRlcyB0aGUgc2hhcmVkIHN0cnVjdHVyZSB1c2luZwo+PiBrdm1fcHV0X2d1ZXN0KCkgdG8g
ZW5zdXJlIHNpbmdsZSBjb3B5IGF0b21pY2l0eSBvZiB0aGUgNjQtYml0IHZhbHVlCj4+IHJlcG9y
dGluZyB0aGUgc3RvbGVuIHRpbWUgaW4gbmFub3NlY29uZHMuCj4+Cj4+IFdoZW5ldmVyIHN0b2xl
biB0aW1lIGlzIGVuYWJsZWQgYnkgdGhlIGd1ZXN0LCB0aGUgc3RvbGVuIHRpbWUgY291bnRlciBp
cwo+PiByZXNldC4KPj4KPj4gVGhlIHN0b2xlbiB0aW1lIGl0c2VsZiBpcyByZXRyaWV2ZWQgZnJv
bSB0aGUgc2NoZWRfaW5mbyBzdHJ1Y3R1cmUKPj4gbWFpbnRhaW5lZCBieSB0aGUgTGludXggc2No
ZWR1bGVyIGNvZGUuIFdlIGVuYWJsZSBTQ0hFRFNUQVRTIHdoZW4KPj4gc2VsZWN0aW5nIEtWTSBL
Y29uZmlnIHRvIGVuc3VyZSB0aGlzIHZhbHVlIGlzIG1lYW5pbmdmdWwuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IFN0ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5jb20+Cj4gCj4gVGhhbmtzLAo+
IHplbmdodWkKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
