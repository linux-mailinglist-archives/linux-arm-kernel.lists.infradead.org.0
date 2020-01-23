Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E50DA1462BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 08:38:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lseJUev/fWkjBCXPxY5skNwTCI2I/f962x8/ZDbeUbs=; b=Mb/gtcqdazCrn9
	jjfnPBt3HSBLe+nz6CRVM4Cd17kMzq3/K0IZCGRx+mIZUF1shkcZ6AwimecXrwDVhqoT2sLw4u5YV
	mnJeAUEIzRmfgKXKmZa71FPjb3SLoYsGZs45Iewmvn7oIz/QsueJlo1wN6IWGOPJVSNbDynI6hFWk
	52tFme3u5klDHwyRC25F/UFEZJMKzshrBiJCTMENpIY31IU/o4STnc63Ud5eJoqfe6kTCizfkT0Od
	bYhveLjnjr0hHUNgPYMzc7UGJUI9RuWvrCQOcU9SDGXqYmK6YhdIe+JTfRuGnS6wzSHv6UThtz156
	rStVX8I1yUWX95hzyKRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuX4V-0001C3-1z; Thu, 23 Jan 2020 07:38:35 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuX4L-0001Bj-H6
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 07:38:27 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00N7cG5V040330;
 Thu, 23 Jan 2020 01:38:16 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579765096;
 bh=+3fXqcctM4dNh7tgCXPjwPubIvB6hs8YxTRU7AzutRk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=mbeg9XgepZonrW1hQIw7gajr0qSxQQboBeue0IYJbJMm1keAa72SugKcqLG9zVXS0
 +/wucmukAmdUWSXS1TUMevXdKQy89omXtpS4/MIuyVbaBfFn8sn/syzbcnurcxLyek
 TeWKXuxjudNzQyqYiE0Xyc66WPOYqNlKZBeYzwww=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00N7cGqC059359
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 23 Jan 2020 01:38:16 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 23
 Jan 2020 01:38:16 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 23 Jan 2020 01:38:15 -0600
Received: from [172.24.190.4] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00N7cAwc040274;
 Thu, 23 Jan 2020 01:38:11 -0600
Subject: Re: [PATCH 1/3] dt-bindings: net: can: m_can: Add Documentation for
 stb-gpios
To: Dan Murphy <dmurphy@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-can@vger.kernel.org>
References: <20200122080310.24653-1-faiz_abbas@ti.com>
 <20200122080310.24653-2-faiz_abbas@ti.com>
 <c3b0eeb8-bd78-aa96-4783-62dc93f03bfe@ti.com>
 <8fc7c343-267d-c91c-0381-60990cfc35e8@ti.com>
 <f834087b-da1c-88a0-93fe-bc72c8ac71ff@ti.com>
From: Faiz Abbas <faiz_abbas@ti.com>
Message-ID: <57baeedc-9f51-7b92-f190-c0bbd8525a16@ti.com>
Date: Thu, 23 Jan 2020 13:09:41 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <f834087b-da1c-88a0-93fe-bc72c8ac71ff@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_233825_670431_F57B4F4F 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

SGksCgpPbiAyMi8wMS8yMCA4OjA0IHBtLCBEYW4gTXVycGh5IHdyb3RlOgo+IFNla2hhcgo+IAo+
IE9uIDEvMjIvMjAgODoyNCBBTSwgU2VraGFyIE5vcmkgd3JvdGU6Cj4+IE9uIDIyLzAxLzIwIDc6
MDUgUE0sIERhbiBNdXJwaHkgd3JvdGU6Cj4+PiBGYWl6Cj4+Pgo+Pj4gT24gMS8yMi8yMCAyOjAz
IEFNLCBGYWl6IEFiYmFzIHdyb3RlOgo+Pj4+IFRoZSBDQU4gdHJhbnNjZWl2ZXIgb24gc29tZSBi
b2FyZHMgaGFzIGFuIFNUQiBwaW4gd2hpY2ggaXMKPj4+PiB1c2VkIHRvIGNvbnRyb2wgaXRzIHN0
YW5kYnkgbW9kZS4gQWRkIGFuIG9wdGlvbmFsIHByb3BlcnR5Cj4+Pj4gc3RiLWdwaW9zIHRvIHRv
Z2dsZSB0aGUgc2FtZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEZhaXogQWJiYXMgPGZhaXpf
YWJiYXNAdGkuY29tPgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFNla2hhciBOb3JpIDxuc2VraGFyQHRp
LmNvbT4KPj4+PiAtLS0KPj4+PiDCoMKgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvY2FuL21fY2FuLnR4dCB8IDIgKysKPj4+PiDCoMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbmV0L2Nhbi9tX2Nhbi50eHQKPj4+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9uZXQvY2FuL21fY2FuLnR4dAo+Pj4+IGluZGV4IGVkNjE0MzgzYWY5Yy4u
Y2M4YmEzZjdhMmFhIDEwMDY0NAo+Pj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9uZXQvY2FuL21fY2FuLnR4dAo+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9uZXQvY2FuL21fY2FuLnR4dAo+Pj4+IEBAIC00OCw2ICs0OCw4IEBAIE9w
dGlvbmFsIFN1Ym5vZGU6Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGhh
dCBjYW4gYmUgdXNlZCBmb3IgQ0FOL0NBTi1GRCBtb2Rlcy4gU2VlCj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgCj4+Pj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L25ldC9jYW4vY2FuLXRyYW5zY2VpdmVyLnR4dAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGZvciBkZXRhaWxzLgo+Pj4+ICtzdGItZ3Bpb3PCoMKgwqDCoMKgwqDCoCA6IGdw
aW8gbm9kZSB0byB0b2dnbGUgdGhlIFNUQiAoc3RhbmRieSkgc2lnbmFsIG9uCj4+Pj4gdGhlIHRy
YW5zY2VpdmVyCj4+Pj4gKwo+Pj4gVGhlIG1fY2FuLnR4dCBpcyBmb3IgdGhlIG1fY2FuIGZyYW1l
d29yay7CoCBJZiB0aGlzIGlzIHNwZWNpZmljIHRvIHRoZQo+Pj4gcGxhdGZvcm0gdGhlbiBpdCBy
ZWFsbHkgZG9lcyBub3QgYmVsb25nIGhlcmUuCj4+Pgo+Pj4gSWYgdGhlIHBsYXRmb3JtIGhhcyBz
cGVjaWZpYyBub2RlcyB0aGVuIG1heWJlIHdlIG5lZWQgYQo+Pj4gbV9jYW5fcGxhdGZvcm0udHh0
IGJpbmRpbmcgZm9yIHNwZWNpZmljIHBsYXRmb3JtIG5vZGVzLsKgIEJ1dCBJIGxlYXZlCj4+PiB0
aGF0IGRlY2lzaW9uIHRvIFJvYi4KPj4gU2luY2UgdGhpcyBpcyB0cmFuc2NlaXZlciBlbmFibGUs
IHNob3VsZCB0aGlzIG5vdCBiZSBpbgo+PiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L2Nhbi9jYW4tdHJhbnNjZWl2ZXIudHh0Pwo+IAoKVGhlIHRyYW5zY2VpdmVyIG5vZGUg
aXMganVzdCBhIG5vZGUgd2l0aG91dCBhbiBhc3NvY2lhdGVkIGRldmljZS4gSSBoYWQKdHJpZWQg
dG8gY29udmVydCBpdCB0byBhIHBoeSBpbXBsZW1lbnRhdGlvbiBidXQgdGhhdCBpZGVhIGdvdCBz
aG90IGRvd24KaGVyZToKCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC8x
MDA2MjM4LwoKVGhhbmtzLApGYWl6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
