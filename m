Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39161457F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 15:37:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bMcO6klDOfbWQ3HvG2G85n1lIr38vkqZ1MjG5GrJPtI=; b=gkvrnlN8y2ld05F5FLFw+oe1D
	PygfuMd1eHgt1GQPUeLtmVhrvhd7MGVcPu68vvAaENR/gr0DhVjgiPkYBt7U0EsOvrw13103++cwk
	TWiQuDu0UFbfK2+wadl9ssdOX5USnitjSOzkt6WnEawkImMRZqwW8/DGpG4JyTNjgb3xxD2kWKiYZ
	54MLzWk976eDE/dPOubJAqAb1F7xZR5kmEenf8LHSHn/23/egrX0Nytu43FW2xDxERLqk0HvAaw7P
	owUiG7MV7qLMiaE3OJabjKTJaZwuSKRhr/t19fm8epV0lW+sXm6h/f07NR5OcE7o1TiqNG5lYXZ5O
	hBcVqnAeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuH8b-0001XL-M2; Wed, 22 Jan 2020 14:37:45 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuH8S-0001Wl-Ay
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 14:37:37 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00MEbSg1059865;
 Wed, 22 Jan 2020 08:37:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579703848;
 bh=ExCKsULHAY09wbOO5eobOUvQLsBWiXPX0ybK/2ZK/to=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=sVFv0qguYaSgtrDDtyh7c9sU7oqMHY6VpoQRS9BBgR9GtXBXuL/XeHnit+SO3Ycg+
 afvW7NgWnlgEmwyh4przgqq7u86VzyKhRq3HC/Y6nEdHyDzw8ejhWTIcOLqDr0k/uJ
 gxq1gqFfsF9vyxFKx1LUotUt/t26JBT3BlteIDXg=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00MEbSLs087066
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Jan 2020 08:37:28 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jan 2020 08:37:28 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Jan 2020 08:37:28 -0600
Received: from [10.250.65.13] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00MEbRQ4083641;
 Wed, 22 Jan 2020 08:37:27 -0600
Subject: Re: [PATCH 1/3] dt-bindings: net: can: m_can: Add Documentation for
 stb-gpios
To: Sekhar Nori <nsekhar@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-can@vger.kernel.org>
References: <20200122080310.24653-1-faiz_abbas@ti.com>
 <20200122080310.24653-2-faiz_abbas@ti.com>
 <c3b0eeb8-bd78-aa96-4783-62dc93f03bfe@ti.com>
 <8fc7c343-267d-c91c-0381-60990cfc35e8@ti.com>
From: Dan Murphy <dmurphy@ti.com>
Message-ID: <f834087b-da1c-88a0-93fe-bc72c8ac71ff@ti.com>
Date: Wed, 22 Jan 2020 08:34:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <8fc7c343-267d-c91c-0381-60990cfc35e8@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_063736_459807_1A8B5A40 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, nm@ti.com, catalin.marinas@arm.com,
 sriram.dash@samsung.com, t-kristo@ti.com, robh+dt@kernel.org,
 mkl@pengutronix.de, davem@davemloft.net, wg@grandegger.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2VraGFyCgpPbiAxLzIyLzIwIDg6MjQgQU0sIFNla2hhciBOb3JpIHdyb3RlOgo+IE9uIDIyLzAx
LzIwIDc6MDUgUE0sIERhbiBNdXJwaHkgd3JvdGU6Cj4+IEZhaXoKPj4KPj4gT24gMS8yMi8yMCAy
OjAzIEFNLCBGYWl6IEFiYmFzIHdyb3RlOgo+Pj4gVGhlIENBTiB0cmFuc2NlaXZlciBvbiBzb21l
IGJvYXJkcyBoYXMgYW4gU1RCIHBpbiB3aGljaCBpcwo+Pj4gdXNlZCB0byBjb250cm9sIGl0cyBz
dGFuZGJ5IG1vZGUuIEFkZCBhbiBvcHRpb25hbCBwcm9wZXJ0eQo+Pj4gc3RiLWdwaW9zIHRvIHRv
Z2dsZSB0aGUgc2FtZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBGYWl6IEFiYmFzIDxmYWl6X2Fi
YmFzQHRpLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IFNla2hhciBOb3JpIDxuc2VraGFyQHRpLmNv
bT4KPj4+IC0tLQo+Pj4gIMKgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
Y2FuL21fY2FuLnR4dCB8IDIgKysKPj4+ICDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvY2FuL21fY2FuLnR4dAo+Pj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L2Nhbi9tX2Nhbi50eHQKPj4+IGluZGV4IGVkNjE0MzgzYWY5Yy4uY2M4YmEzZjdhMmFh
IDEwMDY0NAo+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9j
YW4vbV9jYW4udHh0Cj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bmV0L2Nhbi9tX2Nhbi50eHQKPj4+IEBAIC00OCw2ICs0OCw4IEBAIE9wdGlvbmFsIFN1Ym5vZGU6
Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRoYXQgY2FuIGJlIHVzZWQgZm9y
IENBTi9DQU4tRkQgbW9kZXMuIFNlZQo+Pj4gICAgICAgICAgICAgICAgIAo+Pj4gRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9jYW4vY2FuLXRyYW5zY2VpdmVyLnR4dAo+Pj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmb3IgZGV0YWlscy4KPj4+ICtzdGItZ3Bp
b3PCoMKgwqDCoMKgwqDCoCA6IGdwaW8gbm9kZSB0byB0b2dnbGUgdGhlIFNUQiAoc3RhbmRieSkg
c2lnbmFsIG9uCj4+PiB0aGUgdHJhbnNjZWl2ZXIKPj4+ICsKPj4gVGhlIG1fY2FuLnR4dCBpcyBm
b3IgdGhlIG1fY2FuIGZyYW1ld29yay7CoCBJZiB0aGlzIGlzIHNwZWNpZmljIHRvIHRoZQo+PiBw
bGF0Zm9ybSB0aGVuIGl0IHJlYWxseSBkb2VzIG5vdCBiZWxvbmcgaGVyZS4KPj4KPj4gSWYgdGhl
IHBsYXRmb3JtIGhhcyBzcGVjaWZpYyBub2RlcyB0aGVuIG1heWJlIHdlIG5lZWQgYQo+PiBtX2Nh
bl9wbGF0Zm9ybS50eHQgYmluZGluZyBmb3Igc3BlY2lmaWMgcGxhdGZvcm0gbm9kZXMuwqAgQnV0
IEkgbGVhdmUKPj4gdGhhdCBkZWNpc2lvbiB0byBSb2IuCj4gU2luY2UgdGhpcyBpcyB0cmFuc2Nl
aXZlciBlbmFibGUsIHNob3VsZCB0aGlzIG5vdCBiZSBpbgo+IERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9uZXQvY2FuL2Nhbi10cmFuc2NlaXZlci50eHQ/CgorMQoKRGFuCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
