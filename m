Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A469FC50B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:06:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JyfFc1PhTSctU1brNJ4B7NXzs/JXCMi1GBC4FY1rUN4=; b=b8X59Aadc6a7NS
	JSIgRU8TARrUU2HWitS+ouTmh8Z068JZyrEUrJTH9MQVTewMngidw8ul0Y61SiiyxuqAF4M5VE1Az
	SGCp0LHXtENZtksCSit4d4gKpREVByqgXlSEqOE5VkAgpI2Beoa/bZPa1KkCOsIPdcDLtx04VavSL
	DTl3ir6bCKeksH7jEgl6FFYXS5r1LiSCvteROITpmHPmUP9CXXlKWSRdrQLr8DLPO+gDmXWoBI1QK
	fEbVTOznuhw9+k4frhHW26PL55XtBysjqpUJePIwz+RpV4Ntyvvca7e9ubFiFIaGUgYadDgoyB2Lf
	MD3NM5aPv46bPjN/bytw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCxl-0005wd-Ak; Thu, 14 Nov 2019 11:06:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCxb-0005vy-Og
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:06:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5D6731B;
 Thu, 14 Nov 2019 03:06:46 -0800 (PST)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C5C883F6C4;
 Thu, 14 Nov 2019 03:06:45 -0800 (PST)
Subject: Re: [PATCH v3 3/3] arm64: Workaround for Cortex-A55 erratum 1530923
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
References: <20191113172252.12610-1-steven.price@arm.com>
 <20191113172252.12610-4-steven.price@arm.com>
 <0b017ec9-5be1-90b9-be30-09462dec9e9d@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <af9c85ba-4926-7a57-8544-e548b953259e@arm.com>
Date: Thu, 14 Nov 2019 11:06:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0b017ec9-5be1-90b9-be30-09462dec9e9d@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_030647_850870_873A8E73 
X-CRM114-Status: GOOD (  10.94  )
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
Cc: linux-arm-kernel@lists.infradead.org, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQvMTEvMjAxOSAxMDoyNywgU3V6dWtpIEt1cnVwcGFzc2VyeSBQb3Vsb3NlIHdyb3RlOgo+
IE9uIDEzLzExLzIwMTkgMTc6MjIsIFN0ZXZlbiBQcmljZSB3cm90ZToKWy4uLl0KPj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvS2NvbmZpZyBiL2FyY2gvYXJtNjQvS2NvbmZpZwo+PiBpbmRleCBk
ZWZiNjhlNDUzODcuLmQyZGQ3MmMxOTU2MCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9LY29u
ZmlnCj4+ICsrKyBiL2FyY2gvYXJtNjQvS2NvbmZpZwo+PiBAQCAtNTMyLDYgKzUzMiwxOSBAQCBj
b25maWcgQVJNNjRfRVJSQVRVTV8xMTY1NTIyCj4+IMKgIMKgwqDCoMKgwqDCoMKgIElmIHVuc3Vy
ZSwgc2F5IFkuCj4+IMKgICtjb25maWcgQVJNNjRfRVJSQVRVTV8xNTMwOTIzCj4+ICvCoMKgwqAg
Ym9vbCAiQ29ydGV4LUE1NTogU3BlY3VsYXRpdmUgQVQgaW5zdHJ1Y3Rpb24gdXNpbmcgb3V0LW9m
LWNvbnRleHQKPj4gdHJhbnNsYXRpb24gcmVnaW1lIGNvdWxkIGNhdXNlIHN1YnNlcXVlbnQgcmVx
dWVzdCB0byBnZW5lcmF0ZSBhbgo+PiBpbmNvcnJlY3QgdHJhbnNsYXRpb24iCj4+ICvCoMKgwqAg
ZGVmYXVsdCB5Cj4+ICvCoMKgwqAgc2VsZWN0IEFSTTY0X1dPUktBUk9VTkRfU1BFQ1VMQVRJVkVf
QVQKPiAKPiBBUk02NF9XT1JLQVJPVU5EX1NQRUNVTEFUSVZFX0FUX1ZIRSA/CgpUaGFua3MgZm9y
IHNwb3R0aW5nIC0gYW5ub3lpbmdseSBJIGRvbid0IGV2ZW4gc2VlbSB0byBnZXQgYSB3YXJuaW5n
IGZyb20KS2NvbmZpZyBmb3IgdGhpcy4gSSdsbCBzcGluIGEgdjQgd2l0aCB5b3VyIFItQnMgb24g
dGhlIG90aGVyIHBhdGNoZXMgdG9vCih0aGFua3MgZm9yIHRob3NlIHRvbykuCgpTdGV2ZQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
