Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F5E1457B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 15:24:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2nGjqmk0vNQeZhmIbmjA0Zyto3IrdlpOcpiaBMvOcm0=; b=hpxH9ySlz3hghW
	jS+8XgAUXYxNG4H2a49xk+waI7qqdttKVtG05hxqD+gTFhOMx8822uMheaMki/7kHE/L1Bcgw6rNy
	/VR8a4BBoTazWXj0o8O0rk0jwNXJsgOvQqtnhd6ayRh5iOy/nmZ8r7lBUaXGYDoTrpKwyZNVYjCAK
	0d+dyHGgGa8nGeNdPzX1r0rmS5e498bF/7B3gB7p9WNueHXkS3R9NVu+czXylmN/lFWa1gF/msW/0
	wh6Gnc5p07QnrXRonyFR9uIhsQeQTChl70UiPSA2tH5GH+w+b+YGdz/pjc+OxftlRmF//x6nVUBpt
	bxMgJQ1brqXtg0iQzTLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuGw5-0003fN-GO; Wed, 22 Jan 2020 14:24:49 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuGvt-0003ed-1Z
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 14:24:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00MEOP0r055902;
 Wed, 22 Jan 2020 08:24:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579703065;
 bh=Nyeylm0gjyF8o7Phqcn3fOc+DFddhIjGH+F7kSw4Lxg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=jTtwl3ElWLdUdI1gTZc++aUq5A9xlOe5EM4OjtymNBKOa3QO7666qZx5evq/fIx2k
 58i4Geij6YHdXaYYBXpJVykvDwniOqsKy0ZsDUS62emfFuZ+9eci0/G2t7B4Ou9Qlo
 AXShmCpKqH/cNTyxaSvQy4DqzcSjFsmiXxyy/3Yw=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00MEOPV9065269
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Jan 2020 08:24:25 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jan 2020 08:24:25 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Jan 2020 08:24:25 -0600
Received: from [172.24.145.246] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00MEOIIo016493;
 Wed, 22 Jan 2020 08:24:19 -0600
Subject: Re: [PATCH 1/3] dt-bindings: net: can: m_can: Add Documentation for
 stb-gpios
To: Dan Murphy <dmurphy@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-can@vger.kernel.org>
References: <20200122080310.24653-1-faiz_abbas@ti.com>
 <20200122080310.24653-2-faiz_abbas@ti.com>
 <c3b0eeb8-bd78-aa96-4783-62dc93f03bfe@ti.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <8fc7c343-267d-c91c-0381-60990cfc35e8@ti.com>
Date: Wed, 22 Jan 2020 19:54:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c3b0eeb8-bd78-aa96-4783-62dc93f03bfe@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_062437_168882_8FBE0B00 
X-CRM114-Status: GOOD (  17.60  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIvMDEvMjAgNzowNSBQTSwgRGFuIE11cnBoeSB3cm90ZToKPiBGYWl6Cj4gCj4gT24gMS8y
Mi8yMCAyOjAzIEFNLCBGYWl6IEFiYmFzIHdyb3RlOgo+PiBUaGUgQ0FOIHRyYW5zY2VpdmVyIG9u
IHNvbWUgYm9hcmRzIGhhcyBhbiBTVEIgcGluIHdoaWNoIGlzCj4+IHVzZWQgdG8gY29udHJvbCBp
dHMgc3RhbmRieSBtb2RlLiBBZGQgYW4gb3B0aW9uYWwgcHJvcGVydHkKPj4gc3RiLWdwaW9zIHRv
IHRvZ2dsZSB0aGUgc2FtZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRmFpeiBBYmJhcyA8ZmFpel9h
YmJhc0B0aS5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFNla2hhciBOb3JpIDxuc2VraGFyQHRpLmNv
bT4KPj4gLS0tCj4+IMKgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvY2Fu
L21fY2FuLnR4dCB8IDIgKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9j
YW4vbV9jYW4udHh0Cj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9j
YW4vbV9jYW4udHh0Cj4+IGluZGV4IGVkNjE0MzgzYWY5Yy4uY2M4YmEzZjdhMmFhIDEwMDY0NAo+
PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Nhbi9tX2Nhbi50
eHQKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9jYW4vbV9j
YW4udHh0Cj4+IEBAIC00OCw2ICs0OCw4IEBAIE9wdGlvbmFsIFN1Ym5vZGU6Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0aGF0IGNhbiBiZSB1c2VkIGZvciBDQU4vQ0FOLUZEIG1v
ZGVzLiBTZWUKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4+IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvY2FuL2Nhbi10cmFuc2NlaXZlci50eHQKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZvciBkZXRhaWxzLgo+PiArc3RiLWdwaW9zwqDC
oMKgwqDCoMKgwqAgOiBncGlvIG5vZGUgdG8gdG9nZ2xlIHRoZSBTVEIgKHN0YW5kYnkpIHNpZ25h
bCBvbgo+PiB0aGUgdHJhbnNjZWl2ZXIKPj4gKwo+IAo+IFRoZSBtX2Nhbi50eHQgaXMgZm9yIHRo
ZSBtX2NhbiBmcmFtZXdvcmsuwqAgSWYgdGhpcyBpcyBzcGVjaWZpYyB0byB0aGUKPiBwbGF0Zm9y
bSB0aGVuIGl0IHJlYWxseSBkb2VzIG5vdCBiZWxvbmcgaGVyZS4KPiAKPiBJZiB0aGUgcGxhdGZv
cm0gaGFzIHNwZWNpZmljIG5vZGVzIHRoZW4gbWF5YmUgd2UgbmVlZCBhCj4gbV9jYW5fcGxhdGZv
cm0udHh0IGJpbmRpbmcgZm9yIHNwZWNpZmljIHBsYXRmb3JtIG5vZGVzLsKgIEJ1dCBJIGxlYXZl
Cj4gdGhhdCBkZWNpc2lvbiB0byBSb2IuCgpTaW5jZSB0aGlzIGlzIHRyYW5zY2VpdmVyIGVuYWJs
ZSwgc2hvdWxkIHRoaXMgbm90IGJlIGluCkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvY2FuL2Nhbi10cmFuc2NlaXZlci50eHQ/CgpUaGFua3MsClNla2hhcgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
