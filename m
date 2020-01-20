Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A5414299E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 12:35:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCGqkif1WnWE4LZoH+zBjjXKS9I/c4fSQZtBXZHMuKc=; b=VlmHa8qfNt6q8+
	17LUDXJuxNmbAsIXvlhMI+Pgad7o/avaDYtRQH4ZRHq0WjVqWk1hI2cMbZL8wKMi4oiQ8VjO0CVhp
	YmjxoPP8h2QVCfwecFWPtG47exRGBV1zXDEXIJXvQ6yYin/KHIsyv97GdgMLVA00FmHsRVi8BcMix
	pWleR9gBbLGXk23cYi2k9tosBy6XRr8QSzJXQ8ZQZ+IUZWdqgFh0u26B03qKBMlbzhNEDDNg1w5qW
	6TxLVXgXRWep7K9iEae8sucp26tddItZuMQqBz7WTRBCeiX5E4HzpLvZsvGdRhgEmYTbWVK56SWtO
	Tx3vgNnH26ZOZ0GKV8Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVKg-0007hR-2x; Mon, 20 Jan 2020 11:35:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVKT-0007h4-AT
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 11:34:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30C4F30E;
 Mon, 20 Jan 2020 03:34:47 -0800 (PST)
Received: from [10.2.69.39] (unknown [10.2.69.39])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B137B3F68E;
 Mon, 20 Jan 2020 03:34:46 -0800 (PST)
Subject: Re: [PATCH] ARM: virt: Relax arch timer version check during early
 boot
To: Marc Zyngier <maz@kernel.org>
References: <1579097798-106243-1-git-send-email-vladimir.murzin@arm.com>
 <eb889279-87f2-d674-9299-169794c285eb@arm.com>
 <d4b8bb91f95385682f20c9dc5c6f5e50@kernel.org>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <38a43fed-1c7a-69ea-3662-e17f13ca74d6@arm.com>
Date: Mon, 20 Jan 2020 11:34:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d4b8bb91f95385682f20c9dc5c6f5e50@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_033449_401424_2216F66D 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDEvMjAvMjAgMTE6MTQgQU0sIE1hcmMgWnluZ2llciB3cm90ZToKPiBIaSBW
bGFkaW1pciwKPiAKPiBPbiAyMDIwLTAxLTIwIDExOjQ2LCBWbGFkaW1pciBNdXJ6aW4gd3JvdGU6
Cj4+ICsgTWFyYwo+PiArIGt2bWFybUBsaXN0cy5jcy5jb2x1bWJpYS5lZHUKPj4KPj4gT24gMS8x
NS8yMCAyOjE2IFBNLCBWbGFkaW1pciBNdXJ6aW4gd3JvdGU6Cj4+PiBVcGRhdGVzIHRvIHRoZSBH
ZW5lcmljIFRpbWVyIGFyY2hpdGVjdHVyZSBhbGxvdyBJRF9QRlIxLkdlblRpbWVyIHRvCj4+PiBo
YXZlIHZhbHVlcyBvdGhlciB0aGFuIDAgb3IgMS4gQXQgdGhlIG1vbWVudCwgTGludXggaXMgcXVp
dGUgc3RyaWN0IGluCj4+PiB0aGUgd2F5IGl0IGhhbmRsZXMgdGhpcyBmaWVsZCBhdCBlYXJseSBi
b290IGFuZCB3aWxsIG5vdCBjb25maWd1cmUKPj4+IGFyY2ggdGltZXIgaWYgaXQgZG9lc24ndCBm
aW5kIHRoZSB2YWx1ZSAxLgo+Pj4KPj4+IFNpbmNlIGhlcmUgdXNlIHViZnggZm9yIGFyY2ggdGlt
ZXIgdmVyc2lvbiBleHRyYWN0aW9uIChoeWItc3R1YiBidWlsZAo+Pj4gd2l0aCAtbWFyY2g9YXJt
djctYSwgc28gaXQgaXMgc2FmZSkKPj4+Cj4+PiBUbyBoZWxwIGJhY2twb3J0cyAoZXZlbiB0aG91
Z2ggdGhlIGNvZGUgd2FzIGNvcnJlY3QgYXQgdGhlIHRpbWUgb2Ygd3JpdGluZykKPj4+IEZpeGVz
OiA4ZWM1OGJlOWYzZmYgKCJBUk06IHZpcnQ6IGFyY2hfdGltZXJzOiBlbmFibGUgYWNjZXNzIHRv
IHBoeXNpY2FsIHRpbWVycyIpCj4+PiBTaWduZWQtb2ZmLWJ5OiBWbGFkaW1pciBNdXJ6aW4gPHZs
YWRpbWlyLm11cnppbkBhcm0uY29tPgo+IAo+IEknbSBub3Qgb3Bwb3NlZCB0byBzdWNoIGEgY2hh
bmdlLCBidXQgaXQnZCBiZSBnb29kIHRvIGRvY3VtZW50IHdoYXQgb3RoZXIgdmFsdWVzCj4gYXJl
IGV4cGVjdGVkIGhlcmUsIGFzIHRoZSBjdXJyZW50IChSZXYgRV9hKSBBUk0gQVJNIG9ubHkgbWVu
dGlvbnMgdmFsdWVzIDAgYW5kIDEuCgpUaGF0IHRydWUsIEFSTSBBUk0gZG9lc24ndCBtZW50aW9u
IGl0IHlldC4gT1RPSCwgc2hvdWxkIHdlIHJlYWxseSBjYXJlIGFib3V0IGV4YWN0CnZhbHVlcyBh
cyBzb29uIGl0IHN0YXlzIGNvbXBhdGlibGU/CgpDaGVlcnMKVmxhZGltaXIKCj4gCj4gVGhhbmtz
LAo+IAo+IMKgwqDCoMKgwqDCoMKgIE0uCj4gCj4+PiAtLS0KPj4+IMKgYXJjaC9hcm0va2VybmVs
L2h5cC1zdHViLlMgfCA3ICsrKy0tLS0KPj4+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0va2VybmVs
L2h5cC1zdHViLlMgYi9hcmNoL2FybS9rZXJuZWwvaHlwLXN0dWIuUwo+Pj4gaW5kZXggYWU1MDIw
My4uNjYwN2ZhOCAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtL2tlcm5lbC9oeXAtc3R1Yi5TCj4+
PiArKysgYi9hcmNoL2FybS9rZXJuZWwvaHlwLXN0dWIuUwo+Pj4gQEAgLTE0NiwxMCArMTQ2LDkg
QEAgQVJNX0JFOChvcnLCoMKgwqAgcjcsIHI3LCAjKDEgPDwgMjUpKcKgwqDCoMKgIEAgSFNDVExS
LkVFCj4+PiDCoCNpZiAhZGVmaW5lZChaSU1BR0UpICYmIGRlZmluZWQoQ09ORklHX0FSTV9BUkNI
X1RJTUVSKQo+Pj4gwqDCoMKgwqAgQCBtYWtlIENOVFBfKiBhbmQgQ05UUENUIGFjY2Vzc2libGUg
ZnJvbSBQTDEKPj4+IMKgwqDCoMKgIG1yY8KgwqDCoCBwMTUsIDAsIHI3LCBjMCwgYzEsIDHCoMKg
wqAgQCBJRF9QRlIxCj4+PiAtwqDCoMKgIGxzcsKgwqDCoCByNywgIzE2Cj4+PiAtwqDCoMKgIGFu
ZMKgwqDCoCByNywgIzB4Zgo+Pj4gLcKgwqDCoCBjbXDCoMKgwqAgcjcsICMxCj4+PiAtwqDCoMKg
IGJuZcKgwqDCoCAxZgo+Pj4gK8KgwqDCoCB1YmZ4wqDCoMKgIHI3LCByNywgIzE2LCAjNAo+Pj4g
K8KgwqDCoCB0ZXHCoMKgwqAgcjcsICMwCj4+PiArwqDCoMKgIGJlccKgwqDCoCAxZgo+Pj4gwqDC
oMKgwqAgbXJjwqDCoMKgIHAxNSwgNCwgcjcsIGMxNCwgYzEsIDDCoMKgwqAgQCBDTlRIQ1RMCj4+
PiDCoMKgwqDCoCBvcnLCoMKgwqAgcjcsIHI3LCAjM8KgwqDCoMKgwqDCoMKgIEAgUEwxUENFTiB8
IFBMMVBDVEVOCj4+PiDCoMKgwqDCoCBtY3LCoMKgwqAgcDE1LCA0LCByNywgYzE0LCBjMSwgMMKg
wqDCoCBAIENOVEhDVEwKPj4+Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
