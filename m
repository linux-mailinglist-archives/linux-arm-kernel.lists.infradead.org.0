Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614D212950A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 12:29:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l7r4L4QXH2kBASuP6bgHfXPfu+uFfW6/rpGrE3FJ1uk=; b=U4JxZJBrZ64HbCLDNywf/InSj
	xJForCVgP3Fe2/bbVc1wzYxWJICgc54ePjpcc/gevoxfEetydyU5KMwOcX0slfWX5d/iWtZrQOcOo
	e6BCS9ZNug9mBa1ZLwpuu3GXGu7bOe5eu/c/NCxVB7aRhQPYt98c1zOa2rDebnBo6uvmf6Z2qhrVY
	V6C5gJHa4M+aOlbaDMQVtoCJYxQXFm8WhSXuWR6xsULWnoMsG8Fd3sl61avllwqliMJ2zWIaJB13O
	JhQLpZD2Uiga47F1Tck62/NUCj3GT+NIgvmQA6iXE3MlM9DOFQ71QW634dPvzJ/4yPFJDuc1YJE+m
	pJEbohiFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijLuG-0005VT-4Z; Mon, 23 Dec 2019 11:29:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijLu3-0005Tg-W4; Mon, 23 Dec 2019 11:29:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F7EC328;
 Mon, 23 Dec 2019 03:29:31 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE2493F68F;
 Mon, 23 Dec 2019 03:29:25 -0800 (PST)
Subject: Re: [PATCH 0/8] Convert the intel iommu driver to the dma-iommu api
To: Jani Nikula <jani.nikula@linux.intel.com>, Tom Murphy <murphyt7@tcd.ie>,
 iommu@lists.linux-foundation.org
References: <20191221150402.13868-1-murphyt7@tcd.ie> <87blrzwcn8.fsf@intel.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <432d306c-fe9f-75b2-f0f7-27698f1467ad@arm.com>
Date: Mon, 23 Dec 2019 11:29:17 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <87blrzwcn8.fsf@intel.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_032936_120865_84B2C69A 
X-CRM114-Status: GOOD (  23.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Julien Grall <julien.grall@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, David Woodhouse <dwmw2@infradead.org>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0xMi0yMyAxMDozNyBhbSwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gT24gU2F0LCAyMSBE
ZWMgMjAxOSwgVG9tIE11cnBoeSA8bXVycGh5dDdAdGNkLmllPiB3cm90ZToKPj4gVGhpcyBwYXRj
aHNldCBjb252ZXJ0cyB0aGUgaW50ZWwgaW9tbXUgZHJpdmVyIHRvIHRoZSBkbWEtaW9tbXUgYXBp
Lgo+Pgo+PiBXaGlsZSBjb252ZXJ0aW5nIHRoZSBkcml2ZXIgSSBleHBvc2VkIGEgYnVnIGluIHRo
ZSBpbnRlbCBpOTE1IGRyaXZlcgo+PiB3aGljaCBjYXVzZXMgYSBodWdlIGFtb3VudCBvZiBhcnRp
ZmFjdHMgb24gdGhlIHNjcmVlbiBvZiBteQo+PiBsYXB0b3AuIFlvdSBjYW4gc2VlIGEgcGljdHVy
ZSBvZiBpdCBoZXJlOgo+PiBodHRwczovL2dpdGh1Yi5jb20vcGlwcHkzNjAva2VybmVsUGF0Y2hl
cy9ibG9iL21hc3Rlci9JTUdfMjAxOTEyMTlfMjI1OTIyLmpwZwo+Pgo+PiBUaGlzIGlzc3VlIGlz
IG1vc3QgbGlrZWx5IGluIHRoZSBpOTE1IGRyaXZlciBhbmQgaXMgbW9zdCBsaWtlbHkgY2F1c2Vk
Cj4+IGJ5IHRoZSBkcml2ZXIgbm90IHJlc3BlY3RpbmcgdGhlIHJldHVybiB2YWx1ZSBvZiB0aGUK
Pj4gZG1hX21hcF9vcHM6Om1hcF9zZyBmdW5jdGlvbi4gWW91IGNhbiBzZWUgdGhlIGRyaXZlciBp
Z25vcmluZyB0aGUKPj4gcmV0dXJuIHZhbHVlIGhlcmU6Cj4+IGh0dHBzOi8vZ2l0aHViLmNvbS90
b3J2YWxkcy9saW51eC9ibG9iLzdlMDE2NWIyZjFhOTEyYTA2ZTM4MWU5MWYwZjRlNDk1ZjRhYzM3
MzYvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jI0w1MQo+Pgo+PiBQ
cmV2aW91c2x5IHRoaXMgZGlkbuKAmXQgY2F1c2UgaXNzdWVzIGJlY2F1c2UgdGhlIGludGVsIG1h
cF9zZyBhbHdheXMKPj4gcmV0dXJuZWQgdGhlIHNhbWUgbnVtYmVyIG9mIGVsZW1lbnRzIGFzIHRo
ZSBpbnB1dCBzY2F0dGVyIGdhdGhlciBsaXN0Cj4+IGJ1dCB3aXRoIHRoZSBjaGFuZ2UgdG8gdGhp
cyBkbWEtaW9tbXUgYXBpIHRoaXMgaXMgbm8gbG9uZ2VyIHRoZQo+PiBjYXNlLiBJIHdhc27igJl0
IGFibGUgdG8gdHJhY2sgdGhlIGJ1ZyBkb3duIHRvIGEgc3BlY2lmaWMgbGluZSBvZiBjb2RlCj4+
IHVuZm9ydHVuYXRlbHkuCj4+Cj4+IENvdWxkIHNvbWVvbmUgZnJvbSB0aGUgaW50ZWwgdGVhbSBs
b29rIGF0IHRoaXM/Cj4gCj4gTGV0IG1lIGdldCB0aGlzIHN0cmFpZ2h0LiBUaGVyZSBpcyBjdXJy
ZW50IEFQSSB0aGF0IG9uIHN1Y2Nlc3MgYWx3YXlzCj4gcmV0dXJucyB0aGUgc2FtZSBudW1iZXIg
b2YgZWxlbWVudHMgYXMgdGhlIGlucHV0IHNjYXR0ZXIgZ2F0aGVyCj4gbGlzdC4gWW91IHByb3Bv
c2UgdG8gY2hhbmdlIHRoZSBBUEkgc28gdGhhdCB0aGlzIGlzIG5vIGxvbmdlciB0aGUgY2FzZT8K
Ck5vLCB0aGUgQVBJIGZvciBkbWFfbWFwX3NnKCkgaGFzIGFsd2F5cyBiZWVuIHRoYXQgaXQgbWF5
IHJldHVybiBmZXdlciAKRE1BIHNlZ21lbnRzIHRoYW4gbmVudHMgLSBzZWUgRG9jdW1lbnRhdGlv
bi9ETUEtQVBJLnR4dCAoYW5kIG90aGVyd2lzZSwgCnRoZSByZXR1cm4gdmFsdWUgd291bGQgc3Vy
ZWx5IGJlIGEgc2ltcGxlIHN1Y2Nlc3MvZmFpbCBjb25kaXRpb24pLiAKUmVseWluZyBvbiBhIHBh
cnRpY3VsYXIgaW1wbGVtZW50YXRpb24gYmVoYXZpb3VyIGhhcyBuZXZlciBiZWVuIHN0cmljdGx5
IApjb3JyZWN0LCBldmVuIGlmIGl0IGRvZXMgaGFwcGVuIHRvIGJlIGEgdmVyeSBjb21tb24gYmVo
YXZpb3VyLgoKPiBBIHF1aWNrIGNoZWNrIG9mIHZhcmlvdXMgZG1hX21hcF9zZygpIGNhbGxzIGlu
IHRoZSBrZXJuZWwgc2VlbXMgdG8KPiBpbmRpY2F0ZSBjaGVja2luZyBmb3IgMCBmb3IgZXJyb3Jz
IGFuZCB0aGVuIGlnbm9yaW5nIHRoZSBub24temVybyByZXR1cm4KPiBpcyBhIGNvbW1vbiBwYXR0
ZXJuLiBBcmUgeW91IHN1cmUgaXQncyBva2F5IHRvIG1ha2UgdGhlIGNoYW5nZSB5b3UncmUKPiBw
cm9wb3Npbmc/CgpWYXJpb3VzIGNvZGUgdXNlcyB0cmlja3MgbGlrZSBqdXN0IGl0ZXJhdGluZyB0
aGUgbWFwcGVkIGxpc3QgdW50aWwgdGhlIApmaXJzdCBzZWdtZW50IHdpdGggemVybyBzZ19kbWFf
bGVuKCkuIE90aGVycyBtYXkgd2VsbCBzaW1wbHkgaGF2ZSBidWdzLgoKUm9iaW4uCgo+IEFueXdh
eSwgZHVlIHRvIHRoZSB0aW1lIG9mIHllYXIgYW5kIGFsbCwgSSdkIGxpa2UgdG8gYXNrIHlvdSB0
byBmaWxlIGEKPiBidWcgYWdhaW5zdCBpOTE1IGF0IFsxXSBzbyB0aGlzIGlzIG5vdCBmb3Jnb3R0
ZW4sIGFuZCBwbGVhc2UgbGV0J3Mgbm90Cj4gbWVyZ2UgdGhlIGNoYW5nZXMgYmVmb3JlIHRoaXMg
aXMgcmVzb2x2ZWQuCj4gCj4gCj4gVGhhbmtzLAo+IEphbmkuCj4gCj4gCj4gWzFdIGh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzL25ldwo+IAo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
