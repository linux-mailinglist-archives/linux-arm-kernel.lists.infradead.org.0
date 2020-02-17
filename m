Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8101613F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 14:52:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+b6kGPnwbAqI5xN962lmvDdFU5w09urWCuFFPY/S8xs=; b=N0wu4jggyeOfmr
	JBiHVuugMokJ00o8GfVPHRTCoatgYIkYOjh8ExyGMfDE70JSiyF7eKkMVMReM9jxEWeFiI+bmnAoF
	Q2FF3pgNZh8XVwTED89H3IvYokzDLsXjr4TJIJXdx+NO3cyGLqkQpCcgu+/RHS2ulDMemBtnFB5In
	+7R3bzgSOjRbjRw7iHY64NDcrRxRvE5ipgyaqGRSFZeSfyqXnmGrKHjsn1haiYqvWd1hvB48qOzNH
	F/oVgTdz54uiK22QL0iDhSn+ZEIhfybOR9I27jUKKwD9+krUjPod6gfc9PyV8bnlBig7jDVjWibjo
	pi6EmFHN2dKGXJsn9H+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3gp8-0001Y8-Nj; Mon, 17 Feb 2020 13:52:34 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3goy-0001Xg-I0
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 13:52:26 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01HDqCYC046134;
 Mon, 17 Feb 2020 07:52:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581947532;
 bh=+byLAupfUW+GTMI0YH08CXSZf3dS/A6iBoU8mYL7Bjs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=HURDfCsN2H10t7joYw6Uc17TbFSzb3Bapj1w2k5EsFytBbtFsNE9Ny8ytRK5p2oF+
 nktDfWEC01tDiWJfk602k506HngSFs22HRsrfGjm16bvB3ZbUYwepME7vLxUSYHmzQ
 16vYOXQYxGv0LZT4rKidGd0bxJb6KgY4O1fDvNi8=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01HDqCNK060998
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Feb 2020 07:52:12 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 17
 Feb 2020 07:52:11 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 17 Feb 2020 07:52:11 -0600
Received: from [172.24.190.4] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01HDq6xY041711;
 Mon, 17 Feb 2020 07:52:07 -0600
Subject: Re: [PATCH 1/3] dt-bindings: net: can: m_can: Add Documentation for
 stb-gpios
To: Rob Herring <robh@kernel.org>
References: <20200122080310.24653-1-faiz_abbas@ti.com>
 <20200122080310.24653-2-faiz_abbas@ti.com>
 <c3b0eeb8-bd78-aa96-4783-62dc93f03bfe@ti.com>
 <8fc7c343-267d-c91c-0381-60990cfc35e8@ti.com>
 <f834087b-da1c-88a0-93fe-bc72c8ac71ff@ti.com>
 <57baeedc-9f51-7b92-f190-c0bbd8525a16@ti.com> <20200203120610.GA9303@bogus>
From: Faiz Abbas <faiz_abbas@ti.com>
Message-ID: <15ae4d0e-10cf-7b4b-6487-8b64f885f184@ti.com>
Date: Mon, 17 Feb 2020 19:23:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200203120610.GA9303@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_055224_673845_0C9FAEA6 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, nm@ti.com,
 netdev@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, sriram.dash@samsung.com,
 linux-can@vger.kernel.org, t-kristo@ti.com, mkl@pengutronix.de,
 Dan Murphy <dmurphy@ti.com>, catalin.marinas@arm.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, wg@grandegger.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Um9iLAoKT24gMDMvMDIvMjAgNTozNiBwbSwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gVGh1LCBK
YW4gMjMsIDIwMjAgYXQgMDE6MDk6NDFQTSArMDUzMCwgRmFpeiBBYmJhcyB3cm90ZToKPj4gSGks
Cj4+Cj4+IE9uIDIyLzAxLzIwIDg6MDQgcG0sIERhbiBNdXJwaHkgd3JvdGU6Cj4+PiBTZWtoYXIK
Pj4+Cj4+PiBPbiAxLzIyLzIwIDg6MjQgQU0sIFNla2hhciBOb3JpIHdyb3RlOgo+Pj4+IE9uIDIy
LzAxLzIwIDc6MDUgUE0sIERhbiBNdXJwaHkgd3JvdGU6Cj4+Pj4+IEZhaXoKPj4+Pj4KPj4+Pj4g
T24gMS8yMi8yMCAyOjAzIEFNLCBGYWl6IEFiYmFzIHdyb3RlOgo+Pj4+Pj4gVGhlIENBTiB0cmFu
c2NlaXZlciBvbiBzb21lIGJvYXJkcyBoYXMgYW4gU1RCIHBpbiB3aGljaCBpcwo+Pj4+Pj4gdXNl
ZCB0byBjb250cm9sIGl0cyBzdGFuZGJ5IG1vZGUuIEFkZCBhbiBvcHRpb25hbCBwcm9wZXJ0eQo+
Pj4+Pj4gc3RiLWdwaW9zIHRvIHRvZ2dsZSB0aGUgc2FtZS4KPj4+Pj4+Cj4+Pj4+PiBTaWduZWQt
b2ZmLWJ5OiBGYWl6IEFiYmFzIDxmYWl6X2FiYmFzQHRpLmNvbT4KPj4+Pj4+IFNpZ25lZC1vZmYt
Ynk6IFNla2hhciBOb3JpIDxuc2VraGFyQHRpLmNvbT4KPj4+Pj4+IC0tLQo+Pj4+Pj4gwqDCoCBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Nhbi9tX2Nhbi50eHQgfCAyICsr
Cj4+Pj4+PiDCoMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPj4+Pj4+Cj4+Pj4+
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9jYW4v
bV9jYW4udHh0Cj4+Pj4+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
Y2FuL21fY2FuLnR4dAo+Pj4+Pj4gaW5kZXggZWQ2MTQzODNhZjljLi5jYzhiYTNmN2EyYWEgMTAw
NjQ0Cj4+Pj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2Nh
bi9tX2Nhbi50eHQKPj4+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvY2FuL21fY2FuLnR4dAo+Pj4+Pj4gQEAgLTQ4LDYgKzQ4LDggQEAgT3B0aW9uYWwgU3Vi
bm9kZToKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRoYXQgY2FuIGJl
IHVzZWQgZm9yIENBTi9DQU4tRkQgbW9kZXMuIFNlZQo+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgCj4+Pj4+PiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0
L2Nhbi9jYW4tdHJhbnNjZWl2ZXIudHh0Cj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBmb3IgZGV0YWlscy4KPj4+Pj4+ICtzdGItZ3Bpb3PCoMKgwqDCoMKgwqDCoCA6IGdw
aW8gbm9kZSB0byB0b2dnbGUgdGhlIFNUQiAoc3RhbmRieSkgc2lnbmFsIG9uCj4+Pj4+PiB0aGUg
dHJhbnNjZWl2ZXIKPj4+Pj4+ICsKPj4+Pj4gVGhlIG1fY2FuLnR4dCBpcyBmb3IgdGhlIG1fY2Fu
IGZyYW1ld29yay7CoCBJZiB0aGlzIGlzIHNwZWNpZmljIHRvIHRoZQo+Pj4+PiBwbGF0Zm9ybSB0
aGVuIGl0IHJlYWxseSBkb2VzIG5vdCBiZWxvbmcgaGVyZS4KPj4+Pj4KPj4+Pj4gSWYgdGhlIHBs
YXRmb3JtIGhhcyBzcGVjaWZpYyBub2RlcyB0aGVuIG1heWJlIHdlIG5lZWQgYQo+Pj4+PiBtX2Nh
bl9wbGF0Zm9ybS50eHQgYmluZGluZyBmb3Igc3BlY2lmaWMgcGxhdGZvcm0gbm9kZXMuwqAgQnV0
IEkgbGVhdmUKPj4+Pj4gdGhhdCBkZWNpc2lvbiB0byBSb2IuCj4+Pj4gU2luY2UgdGhpcyBpcyB0
cmFuc2NlaXZlciBlbmFibGUsIHNob3VsZCB0aGlzIG5vdCBiZSBpbgo+Pj4+IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvY2FuL2Nhbi10cmFuc2NlaXZlci50eHQ/Cj4+Pgo+
Pgo+PiBUaGUgdHJhbnNjZWl2ZXIgbm9kZSBpcyBqdXN0IGEgbm9kZSB3aXRob3V0IGFuIGFzc29j
aWF0ZWQgZGV2aWNlLiBJIGhhZAo+PiB0cmllZCB0byBjb252ZXJ0IGl0IHRvIGEgcGh5IGltcGxl
bWVudGF0aW9uIGJ1dCB0aGF0IGlkZWEgZ290IHNob3QgZG93bgo+PiBoZXJlOgo+Pgo+PiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTAwNjIzOC8KPiAKPiBOb2RlcyBh
bmQgZHJpdmVycyBhcmUgbm90IGEgMS0xIHRoaW5nLiBJcyB0aGUgdHJhbnNjZWl2ZXIgYSBzZXBh
cmF0ZSBoL3cgCj4gZGV2aWNlPyBJZiBzbywgdGhlbiBpdCBzaG91bGQgYmUgYSBzZXBhcmF0ZSBu
b2RlIGFuZCBwcm9wZXJ0aWVzIG9mIHRoYXQgCj4gZGV2aWNlIGdvIGluIGl0cyBub2RlLiAKClRo
ZSB0cmFuc2NlaXZlciBpcyBpbmRlZWQgYSBzZXBhcmF0ZSBkZXZpY2UuCgpBbHNvLCBub3RoaW5n
IGlzIHN0b3BwaW5nIHlvdSBmcm9tIHVzaW5nIHRoZSBQSFkKPiBiaW5kaW5nIHdpdGhvdXQgdXNp
bmcgdGhlIGtlcm5lbCdzIFBIWSBmcmFtZXdvcmsuCgpUaGUgcGh5IGZyYW1ld29yayBzZWVtZWQg
bGlrZSB0aGUgYmVzdCBjb2RlIHJldXNlIHRvIGltcGxlbWVudCBpdC4KCj4gCj4gQXMgdG8gd2hl
dGhlciBpdCBzaG91bGQgYmUgYSBzZXBhcmF0ZSBwaHkgZHJpdmVyLCBJIHRoaW5rIHByb2JhYmx5
IHRoZSAKPiB3cm9uZyBkZWNpc2lvbiB3YXMgbWFkZS4gV2UgYWx3YXlzIHNlZW0gdG8gc3RhcnQg
b3V0IHdpdGggbm8gUEhZIG9uIAo+IHRoZXNlIHRoaW5ncyBhbmQgdGhlIGNvbXBsZXhpdHkganVz
dCBncm93cyB1bnRpbCB3ZSBuZWVkIG9uZS4gCj4gCgpXZSBzaG91bGQgYmUgYWJsZSB0byBoYW5k
bGUgdHdvIHByb3BlcnRpZXMgKG9uZSBtYXgtZGF0YXJhdGUgYW5kIHRoZQpvdGhlciByZWd1bGF0
b3Igbm9kZSkgZm9yIG5vdy4gSWYgd2UgaGF2ZSB0byBhZGQgbW9yZSBjb21wbGV4IHBhcnRzIHRo
ZW4KbWF5YmUgd2UgY2FuIHRoaW5rIGFib3V0IHRoZSBkcml2ZXIuIEkgYW0ganVzdCBhZGRpbmcg
YSB4Y2VpdmVyCnJlZ3VsYXRvciBmb3Igbm93LgoKVGhhbmtzLApGYWl6CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
