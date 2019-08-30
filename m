Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6BCA2F09
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 07:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXAE8CdeWrS1Q0pg4aHxu45SZcRbjntUoKgKtHuQc8g=; b=Pr1KKD0QWnr3pl
	M9DhZJpGcoEAzDnq6S2pbh/6sUcNSwxMr1Zu20Jb2dlEY90UZbzyd5PqbKQ/qsgAAoG81kyVMG7kv
	XXIN+6pEZy/i7BYfjMAbGpSzoNSAUaUAIHIIHq/gQf83Sf5ivzTMO9sGsY0vkJmsYPgrNTefPlMm6
	RtFqZA0N6tknKKutmzf11etKa1sTrybrZtOpZT2/mOx1JpJ2UnFehtalBBjMoEOjNvZocX1gB0+Wx
	L5CN5d4owSLSBWOPGYtEu054PHwMyCMYNnejFvPjNNy9yLf2OQ9kfPB7HHJn3qMB7xYixJqMYtVpN
	qSbS5Ff9Il5K2j+9gOAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ZbR-0007QB-V5; Fri, 30 Aug 2019 05:37:41 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Zb8-0007Ox-On
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 05:37:24 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7U5bBq0007730;
 Fri, 30 Aug 2019 00:37:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567143431;
 bh=wENEtc1oSdE7sKdHvE/SrtRNZIVELKHhkqPIGCtqfZM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=fP+UQ47ODQpVpnHMSgU5hH2Tw8D2QjpX/uQ0nWELDQ8CIOgTzh81lJSfMvU/RNJi7
 rRVBF5K0YELHhOo+cMFUNJpqQA9yYjdnmOTHXBS2+1IQJtiS87lUuTqR+R+cxGmEUm
 g20o9y/eXQs6LQQ4vwrizejntWF+Ue1biLPyEqow=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7U5bB59040438
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 00:37:11 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 00:37:11 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 00:37:11 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7U5b9RZ082071;
 Fri, 30 Aug 2019 00:37:09 -0500
Subject: Re: [PATCH 4/5] dt-bindings: dma: ti-edma: Add option for reserved
 channel ranges
To: Rob Herring <robh@kernel.org>
References: <20190823125618.8133-1-peter.ujfalusi@ti.com>
 <20190823125618.8133-5-peter.ujfalusi@ti.com> <20190829224728.GA1198@bogus>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <a4c5688b-cbeb-5059-5351-11d9ae1b25d5@ti.com>
Date: Fri, 30 Aug 2019 08:37:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190829224728.GA1198@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_223722_914227_376821DC 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Um9iLAoKT24gMzAvMDgvMjAxOSAxLjQ3LCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBGcmksIEF1
ZyAyMywgMjAxOSBhdCAwMzo1NjoxN1BNICswMzAwLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4g
U2ltaWxhcmx5IHRvIHBhUkFNIHNsb3RzLCBjaGFubmVscyBjYW4gYmUgdXNlZCBieSBvdGhlciBj
b3Jlcy4KPj4KPj4gQWRkIG9wdGlvbmFsIHByb3BlcnR5IHRvIGNvbmZpZ3VyZSB0aGUgcmVzZXJ2
ZWQgY2hhbm5lbCByYW5nZXMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxw
ZXRlci51amZhbHVzaUB0aS5jb20+Cj4+IC0tLQo+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2RtYS90aS1lZG1hLnR4dCB8IDUgKysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9kbWEvdGktZWRtYS50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZG1hL3RpLWVkbWEudHh0Cj4+IGluZGV4IDRiYmM5NGQ4MjljOC4uMTE5ODY4MmFkYTk5
IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3Rp
LWVkbWEudHh0Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEv
dGktZWRtYS50eHQKPj4gQEAgLTQyLDYgKzQyLDkgQEAgT3B0aW9uYWwgcHJvcGVydGllczoKPj4g
IC0gdGksZWRtYS1yZXNlcnZlZC1zbG90LXJhbmdlczogUGFSQU0gc2xvdCByYW5nZXMgd2hpY2gg
c2hvdWxkIG5vdCBiZSB1c2VkIGJ5Cj4+ICAJCXRoZSBkcml2ZXIsIHRoZXkgYXJlIGFsbG9jYXRl
ZCB0byBiZSB1c2VkIGJ5IGZvciBleGFtcGxlIHRoZQo+PiAgCQlEU1AuIFNlZSBleGFtcGxlLgo+
PiArLSB0aSxlZG1hLXJlc2VydmVkLWNoYW4tcmFuZ2VzOiBjaGFubmVsIHJhbmdlcyB3aGljaCBz
aG91bGQgbm90IGJlIHVzZWQgYnkKPj4gKwkJdGhlIGRyaXZlciwgdGhleSBhcmUgYWxsb2NhdGVk
IHRvIGJlIHVzZWQgYnkgZm9yIGV4YW1wbGUgdGhlCj4+ICsJCURTUC4gU2VlIGV4YW1wbGUuCj4g
Cj4gQmFzZWQgb24gdGhlIG90aGVyIHRocmVhZCwgSSB0aGluayBleHRlbmRpbmcgZG1hLWNoYW5u
ZWwtbWFzayB0byBhIAo+IHVpbnQzMi1hcnJheSBtYWtlcyBzZW5zZSBoZXJlLgoKWWVzLCB0aGF0
IGlzIHRoZSByZWFzb24gSSBoYXZlIGFza2VkIG9uIHRoYXQgYW5kIEknbSBpbiBwcm9ncmVzcyBv
Zgpjb252ZXJ0aW5nIHRoZSBlZG1hIGRyaXZlciB0byB1c2UgdGhlIGRtYS1jaGFubmVsLW1hc2su
Ckp1c3QgbmVlZCB0byBkbyBzb21lIHNodWZmbGluZyBpbiB0aGUgZHJpdmVyIHRvIGdldCB0aGUg
bWFzayBpbiBhIGZvcm0KdXNhYmxlIGJ5IHRoZSBkcml2ZXIuCgpJJ2xsIHNlbmQgYW4gdXBkYXRl
ZCBzZXJpZXMgZWFybHkgbmV4dCB3ZWVrLgoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZp
bmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNp
bmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
