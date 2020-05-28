Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B951E57F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 08:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SWEJ1MkycazdwyB1L/LRf3KuBMMIi4h5Uc+Ipu/sAG8=; b=XcZ62CiNHE0Qr5hmfLaBEnz5z
	Glcdk1ekga4BiZjIp+11IR8JYz5M8sjdhkGdaq1ArZuDNBvaDQsgb+IKgS1/LAIxCMbC3Kdxc9fpI
	DwoP4r0G7sYwSRzmEQgLhrrpJ/cdL0235eLWbyh26CF9re4VMaUPe0VPc3Edd/yrNOvGQGWFQ8ZTL
	DAX2M6QUCJvL3w+P3h/auNBv1S/LrOam4MD28agyi4wFJWkZ/3TGv+6ts1t1lKxrdKR+FijAoFceJ
	108asXlEu6TfCOUNolKaQoJH3+stumy+D2nSwgSoC04lewxlPiNktIyN0ysm9g6IxmauuSRPJb75O
	Fz89GU2QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCQC-0001jz-0K; Thu, 28 May 2020 06:53:44 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCQ2-0001jf-L7
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 06:53:36 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ci21so2642327pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 23:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=zbKuT3nrBchNOXLtoqggayeJJOXuYIPFyuAneEl5VZE=;
 b=WeIYDG9i+HPcpC+T7wLyd72laBytTR0RvEwehEj45sRWw4OKQzXYNNFynXnVehee4d
 Xz6/jjgw409iODdX8f+4nfB4ksOmJlLeRUjPatyd73dc4YdD/O6i/XN42ATrsS/CHqC2
 Hj1KqTS/6K1rdwTjZSmW73Clu5pi1g+wvul9mqCnXjpkHb3po6GXlCny3fXX4LNkVWWh
 +Rf0+FfG/tiIkuRFgH2XUOnYBAJUB98HYAgq5RhcSvah+qLAhflgOXk0g/sakA7NLXbh
 qEjIntovK2YBpTUr74m+FL9V9Iy1pdy/deZKUseiSeBwZTjQlJikyz4UUCdSr+OwEHgX
 9Dug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=zbKuT3nrBchNOXLtoqggayeJJOXuYIPFyuAneEl5VZE=;
 b=jjy+T2pkHBT6L4cgzIEu7BYbOwM7sdklzEcNBf0N+ZePL+6ETRLKpCJ5TSu95KE/k4
 ADsth6MCuTafqKlENM9RtE4jsI4ZoU82UAJS5cUmTy9H86nXpq4yZHWvSQq1gwAfbqfh
 3sGe1yn0ImOV6Y4ToJ9iKNH3YXseYBehtZN1+r6M5NtxiPYLpwLizuIrStGqhb49tYJW
 oiHql/LzBjM4s2z3vHsJ6jXU0B7+l3Un9Ick2jY+9DXPKMRFuavi6Sja70yi9D7EccsB
 gLM5ElAiZPcLWFUuA1lOTzv9jHphDewiID0dH9G4V5u0A6R1MWbVondbKJ3DqATBia3a
 r50Q==
X-Gm-Message-State: AOAM532lPXYHEVydXsC7Y359d8Y7FPGmu1gx4zfm8wnpecbedjd1K5Vk
 RcM+YasF6CuqfxljrFpfSpRK3w==
X-Google-Smtp-Source: ABdhPJzZUXUIWStr7BtNwklBZN744dC8lv7AAZWH3qxAABW36QOxKh3qydTDu9mclcxQ1QgO9lDG4g==
X-Received: by 2002:a17:90a:d317:: with SMTP id
 p23mr2285917pju.107.1590648813784; 
 Wed, 27 May 2020 23:53:33 -0700 (PDT)
Received: from [10.140.6.42] ([45.135.186.12])
 by smtp.gmail.com with ESMTPSA id g18sm3799582pfq.146.2020.05.27.23.53.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 23:53:33 -0700 (PDT)
Subject: Re: [PATCH 2/2] iommu: calling pci_fixup_iommu in iommu_fwspec_init
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <1590493749-13823-1-git-send-email-zhangfei.gao@linaro.org>
 <1590493749-13823-3-git-send-email-zhangfei.gao@linaro.org>
 <20200527090115.GB179718@kroah.com>
From: Zhangfei Gao <zhangfei.gao@linaro.org>
Message-ID: <e8293663-7fb8-ee57-0b9f-b3057b8aae7d@linaro.org>
Date: Thu, 28 May 2020 14:53:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200527090115.GB179718@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_235334_723945_BAB65517 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-acpi@vger.kernel.org, Wangzhou <wangzhou1@hisilicon.com>,
 linux-crypto@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, kenneth-lee-2012@foxmail.com,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLzUvMjcg5LiL5Y2INTowMSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3RlOgo+IE9u
IFR1ZSwgTWF5IDI2LCAyMDIwIGF0IDA3OjQ5OjA5UE0gKzA4MDAsIFpoYW5nZmVpIEdhbyB3cm90
ZToKPj4gQ2FsbGluZyBwY2lfZml4dXBfaW9tbXUgaW4gaW9tbXVfZndzcGVjX2luaXQsIHdoaWNo
IGFsbG9jCj4+IGlvbW11X2Z3bm9kZS4gU29tZSBwbGF0Zm9ybSBkZXZpY2VzIGFwcGVhciBhcyBQ
Q0kgYnV0IGFyZQo+PiBhY3R1YWxseSBvbiB0aGUgQU1CQSBidXMsIGFuZCB0aGV5IG5lZWQgZml4
dXAgaW4KPj4gZHJpdmVycy9wY2kvcXVpcmtzLmMgaGFuZGxpbmcgaW9tbXVfZndub2RlLgo+PiBT
byBjYWxsaW5nIHBjaV9maXh1cF9pb21tdSBhZnRlciBpb21tdV9md25vZGUgaXMgYWxsb2NhdGVk
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBaaGFuZ2ZlaSBHYW8gPHpoYW5nZmVpLmdhb0BsaW5hcm8u
b3JnPgo+PiAtLS0KPj4gICBkcml2ZXJzL2lvbW11L2lvbW11LmMgfCA0ICsrKysKPj4gICAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lv
bW11L2lvbW11LmMgYi9kcml2ZXJzL2lvbW11L2lvbW11LmMKPj4gaW5kZXggN2IzNzU0Mi4uZmI4
NGM0MiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9pb21tdS9pb21tdS5jCj4+ICsrKyBiL2RyaXZl
cnMvaW9tbXUvaW9tbXUuYwo+PiBAQCAtMjQxOCw2ICsyNDE4LDEwIEBAIGludCBpb21tdV9md3Nw
ZWNfaW5pdChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBmd25vZGVfaGFuZGxlICppb21tdV9m
d25vZGUsCj4+ICAgCWZ3c3BlYy0+aW9tbXVfZndub2RlID0gaW9tbXVfZndub2RlOwo+PiAgIAlm
d3NwZWMtPm9wcyA9IG9wczsKPj4gICAJZGV2X2lvbW11X2Z3c3BlY19zZXQoZGV2LCBmd3NwZWMp
Owo+PiArCj4+ICsJaWYgKGRldl9pc19wY2koZGV2KSkKPj4gKwkJcGNpX2ZpeHVwX2RldmljZShw
Y2lfZml4dXBfaW9tbXUsIHRvX3BjaV9kZXYoZGV2KSk7Cj4gV2h5IGNhbid0IHRoZSBjYWxsZXIg
ZG8gdGhpcyBhcyBpdCAia25vd3MiIGl0IGlzIGEgUENJIGRldmljZSBhdCB0aGF0Cj4gcG9pbnQg
aW4gdGltZSwgcmlnaHQ/ClB1dHRpbmcgZml4dXAgaGVyZSBpcyBiZWNhdXNlCjEuIGlvbW11X2Z3
c3BlYyBoYXMgYmVlbiBhbGxvY2F0ZWQKMi4gaW9tbXVfZndzcGVjX2luaXQgd2lsbCBiZSBjYWxs
ZWQgYnkgb2ZfcGNpX2lvbW11X2luaXQgYW5kIAppb3J0X3BjaV9pb21tdV9pbml0LCBjb3Zlcmlu
ZyBib3RoIGFjcGkgYW5kIGR0CgpUaGFua3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
