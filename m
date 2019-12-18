Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7360C1245DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 12:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XijGJpsdB+QNspH0RxPfrfH6eDnlUPxH5GOQxuS79KQ=; b=Gwx13Z/lM2TXz2
	eTk9caE0N/o3hTfP+1s/4FHyZgbrvXiBnXdzOJzjIf5SpVgrU7k3a6un1J5PCsD9HhdNZX/89GvXA
	TuNc7Cv7zhFDUJsWUvM/gcfQJwnbeQV/s3UPudlOyzJDietft7C8iKsHiCY2+M5HidBE6kU7ifFSo
	4jYv1ky4B/lcie+WU+lF+dLe6xH7a/OJrHLQ0Q3rlChhUqcubjINLFpHNgR+qUQCmyTlHv4P9AuUq
	NTCA73tJLkvJ67+unnMDz30P6GqFl0N1ef/3kgaR7LmUcCmaCluDQPmZS2L2XCAZ5vC76BrY33RkT
	yxwBgg7bg2LWVpFFPzAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihXbM-0003gj-7S; Wed, 18 Dec 2019 11:34:48 +0000
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihXbA-0003cf-QC
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 11:34:39 +0000
X-IronPort-AV: E=Sophos;i="5.69,329,1571695200"; d="scan'208";a="420838954"
Received: from nat-inria-bordeaux-52-gw-01-bso.bordeaux.inria.fr (HELO
 [10.204.4.154]) ([194.199.1.52])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/AES128-SHA;
 18 Dec 2019 12:34:34 +0100
Subject: Re: [PATCH V6 7/7] docs: mm: numaperf.rst Add brief description for
 access class 1.
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-mm@kvack.org,
 linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, x86@kernel.org
References: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
 <20191216153809.105463-8-Jonathan.Cameron@huawei.com>
From: Brice Goglin <brice.goglin@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=brice.goglin@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <4cf4e790-cacb-b250-bf28-5ba540eb0dc7@gmail.com>
Date: Wed, 18 Dec 2019 12:34:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191216153809.105463-8-Jonathan.Cameron@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_033437_178516_3E6B687E 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.83 listed in list.dnswl.org]
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (brice.goglin[at]gmail.com)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Tao Xu <tao3.xu@intel.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linuxarm@huawei.com, Keith Busch <keith.busch@intel.com>, jglisse@redhat.com,
 Hanjun Guo <guohanjun@huawei.com>, Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMTYvMTIvMjAxOSDDoCAxNjozOCwgSm9uYXRoYW4gQ2FtZXJvbiBhIMOpY3JpdMKgOgo+IFRy
eSB0byBtYWtlIG1pbmltYWwgY2hhbmdlcyB0byB0aGUgZG9jdW1lbnQgd2hpY2ggYWxyZWFkeSBk
ZXNjcmliZXMKPiBhY2Nlc3MgY2xhc3MgMCBpbiBhIGdlbmVyaWMgZmFzaGlvbiAoaW5jbHVkaW5n
IElPIGluaXRpYXRpb3JzIHRoYXQKPiBhcmUgbm90IENQVXMpLgo+Cj4gU2lnbmVkLW9mZi1ieTog
Sm9uYXRoYW4gQ2FtZXJvbiA8Sm9uYXRoYW4uQ2FtZXJvbkBodWF3ZWkuY29tPgo+IC0tLQo+ICBE
b2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL21tL251bWFwZXJmLnJzdCB8IDggKysrKysrKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vYWRtaW4tZ3VpZGUvbW0vbnVtYXBlcmYucnN0IGIvRG9jdW1lbnRhdGlvbi9hZG1pbi1n
dWlkZS9tbS9udW1hcGVyZi5yc3QKPiBpbmRleCBhODBjM2MzNzIyNmUuLjMyN2MwZDcyNjkyZCAx
MDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL21tL251bWFwZXJmLnJzdAo+
ICsrKyBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvbW0vbnVtYXBlcmYucnN0Cj4gQEAgLTU2
LDYgKzU2LDExIEBAIG5vZGVzJyBhY2Nlc3MgY2hhcmFjdGVyaXN0aWNzIHNoYXJlIHRoZSBzYW1l
IHBlcmZvcm1hbmNlIHJlbGF0aXZlIHRvIG90aGVyCj4gIGxpbmtlZCBpbml0aWF0b3Igbm9kZXMu
IEVhY2ggdGFyZ2V0IHdpdGhpbiBhbiBpbml0aWF0b3IncyBhY2Nlc3MgY2xhc3MsCj4gIHRob3Vn
aCwgZG8gbm90IG5lY2Vzc2FyaWx5IHBlcmZvcm0gdGhlIHNhbWUgYXMgZWFjaCBvdGhlci4KPiAg
Cj4gK1RoZSBhY2Nlc3MgY2xhc3MgIjEiIGlzIHVzZWQgdG8gYWxsb3cgZGlmZmVyZW50aWF0aW9u
IGJldHdlZW4gaW5pdGlhdG9ycwo+ICt0aGF0IGFyZSBDUFVzIGFuZCBoZW5jZSBzdWl0YWJsZSBm
b3IgZ2VuZXJpYyB0YXNrIHNjaGVkdWxpbmcsIGFuZAo+ICtJTyBpbml0aWF0b3JzIHN1Y2ggYXMg
R1BVcyBhbmQgQ1BVcy4gIFVubGlrZSBhY2Nlc3MgY2xhc3MgMCwgb25seQo+ICtub2RlcyBjb250
YWluaW5nIENQVXMgYXJlIGNvbnNpZGVyZWQuCj4gKwo+ICA9PT09PT09PT09PT09PT09Cj4gIE5V
TUEgUGVyZm9ybWFuY2UKPiAgPT09PT09PT09PT09PT09PQo+IEBAIC04OCw2ICs5Myw5IEBAIFRo
ZSBsYXRlbmN5IGF0dHJpYnV0ZXMgYXJlIHByb3ZpZGVkIGluIG5hbm9zZWNvbmRzLgo+ICBUaGUg
dmFsdWVzIHJlcG9ydGVkIGhlcmUgY29ycmVzcG9uZCB0byB0aGUgcmF0ZWQgbGF0ZW5jeSBhbmQg
YmFuZHdpZHRoCj4gIGZvciB0aGUgcGxhdGZvcm0uCj4gIAo+ICtBY2Nlc3MgY2xhc3MgMCwgdGFr
ZXMgdGhlIHNhbWUgZm9ybSwgYnV0IG9ubHkgaW5jbHVkZXMgdmFsdWVzIGZvciBDUFUgdG8KPiAr
bWVtb3J5IGFjdGl2aXR5LgoKClNob3VsZG4ndCB0aGlzIGJlICJjbGFzcyAxIiBoZXJlPwoKQm90
aCBodW5rcyBsb29rIGNvbnRyYWRpY3RvcnkgdG8gbWUuCgpCcmljZQoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
