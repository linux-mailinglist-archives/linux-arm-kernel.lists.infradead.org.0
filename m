Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED99D1C5E98
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxDt22UIXRsfijVnwsptV4NSXqswAehwksrj1lycM50=; b=Qp7aVRccY3pPJj
	CiwUmduWThH1mBV4tyN05YVCimi5ZfDo0sCO8KXxync4L9lB7mdKIPjmOFhlOVsI9fHP/9zQ3bueG
	37udTMEnaxi/s+2l0eKPHA1lh4RPAQOqcSWC4rQiWJpmVXx6BazAjgFITD/3Trr25n13+0z16XbVU
	TZM7zFVeBODWymatEzxLdK+cjTUkdY8qG39s7jowWRf05KIT3Jdrwm7ExrzwUXp0okj0e5gPk9t0b
	SI0PXJzH3yi9CoC9MbXeDv5VIqIVGtmyVJQxbsrlFJGhZcezz1vpyN79bLglgIw0wQ8oK3iH+PFwX
	mO8uPnd6D519rsyFZTBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1AD-0005Q9-Hw; Tue, 05 May 2020 17:15:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW18p-0003Ns-Mr
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 17:14:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F208031B;
 Tue,  5 May 2020 10:13:58 -0700 (PDT)
Received: from [192.168.2.22] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 881A83F305;
 Tue,  5 May 2020 10:13:52 -0700 (PDT)
Subject: Re: [PATCH 00/16] dts/dt-bindings: Fix Arm Ltd. ARMv8 "boards"
To: Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200505165212.76466-1-andre.przywara@arm.com>
 <20200505165212.76466-3-andre.przywara@arm.com>
 <468a97b2-ed4d-382b-262b-6c0cd3025696@arm.com>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Organization: ARM Ltd.
Message-ID: <071f00e4-0658-d007-f70c-d2b9e4e3e5c6@arm.com>
Date: Tue, 5 May 2020 18:13:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <468a97b2-ed4d-382b-262b-6c0cd3025696@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_101359_826827_2AA8E0C0 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDUvMDUvMjAyMCAxODowNiwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMjAtMDUtMDUg
NTo1MSBwbSwgQW5kcmUgUHJ6eXdhcmEgd3JvdGU6Cj4+IERhdGU6IE1vbiwgNCBNYXkgMjAyMCAx
Mjo0Mjo0OSArMDEwMAo+PiBTdWJqZWN0OiBbUEFUQ0ggMDIvMTZdIGR0LWJpbmRpbmdzOiBhcm0t
c21tdTogQWxsb3cgbW11LTQwMCxzbW11LXYxCj4+IGNvbXBhdGlibGUKPiAKPiBeXiBub3Qgc3Vy
ZSBob3cgeW91IG1hbmFnZWQgdGhhdC4uLgoKSW1wcmVzc2l2ZSwgaHVoPyA7LSkKQWN0dWFsbHkg
anVzdCBhbiBhY2NpZGVudGFsIGVtcHR5IGxpbmUgd2hlbiBhZGRpbmcgQ2M6IGxpbmVzIHRvIHRo
ZQpoZWFkZXIgKGNvcHkgJiBwYXN0ZSB3aXRoIEVPTCkuIFVzaW5nIHRoZSBwcmV2aW91cyBzdWJq
ZWN0IGxpbmUgaXMKcHJvYmFibHkgYW4gYXJ0ZWZhY3Qgb2YgaG93IGdpdCBzZW5kLWVtYWlsIHdv
cmtzLgoKU29ycnkgZm9yIHRoYXQhCkkgZmlndXJlZCB0aGF0IHJlcGx5aW5nIHdvdWxkIGNyZWF0
ZSBtb3JlIGNodXJuLCBhcyB0aGUgYWN0dWFsIHN1YmplY3QKbGluZSBpcyBzdGlsbCBpbiB0aGUg
ZW1haWwuCgo+IAo+PiBUaGUgQXJtIFNNTVV2MSBEVCBiaW5kaW5nIG9ubHkgYWxsb3dzIGNvbWJp
bmluZyBhcm0sbW11LTQwMSB3aXRoCj4+IGFybSxzbW11LXYxLCBldmVuIHRob3VnaCB0aGUgTU1V
LTQwMCBpcyBjb21wYXRpYmxlIGFzIHdlbGwuCj4+Cj4+IEFsbG93IHRoaXMgY29tYmluYXRpb24g
YXMgd2VsbCB0byBsZXQgdGhlIEFybSBKdW5vIGJvYXJkIHBhc3MgdGhlIHRlc3QuCj4gCj4gQWNr
ZWQtYnk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+CgpUaGFua3MhCgpDaGVl
cnMsCkFuZHJlCgo+IAo+PiBTaWduZWQtb2ZmLWJ5OiBBbmRyZSBQcnp5d2FyYSA8YW5kcmUucHJ6
eXdhcmFAYXJtLmNvbT4KPj4gLS0tCj4+IMKgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9pb21tdS9hcm0sc21tdS55YW1sIHwgNCArKystCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pb21tdS9hcm0sc21tdS55YW1sCj4+IGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lvbW11L2FybSxzbW11LnlhbWwKPj4gaW5kZXgg
NjUxNWRiZTQ3NTA4Li5lM2VmMWM2OWQxMzIgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9pb21tdS9hcm0sc21tdS55YW1sCj4+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pb21tdS9hcm0sc21tdS55YW1sCj4+IEBAIC00MSw3
ICs0MSw5IEBAIHByb3BlcnRpZXM6Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDog
YXJtLG1tdS01MDAKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBhcm0sc21tdS12
Mgo+PiDCoMKgwqDCoMKgwqDCoCAtIGl0ZW1zOgo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29u
c3Q6IGFybSxtbXUtNDAxCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBlbnVtOgo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBhcm0sbW11LTQwMAo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgLSBhcm0sbW11LTQwMQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6
IGFybSxzbW11LXYxCj4+IMKgwqDCoMKgwqDCoMKgIC0gZW51bToKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAtIGFybSxzbW11LXYxCj4+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
