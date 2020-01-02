Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4C312EB71
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 22:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TH5U0y6d7GwWbj6EaXG/qo9MhQcnm2guY4wdLPnHuDM=; b=QK16Oa0pgJ/s/a
	e7u7RtH/d5tXvHKopby5tDzRnWm7dlSyKUMI41++p1M/rdWY+3dMW94kRHDxzDVAJBF4yg9rdWB7Q
	HQyV+QNLnQi6jQ4DemMJwNkeOSlzqjNhb0u9v55nLSOBWZ89yIzrF832YN+cuvqRXfRH2X+Ref4sB
	MgY1XKUNkAVq01F8mNUXtdi4rckh1mrn0zzeAfjNF/ZApuu2LF2sqlFwXoV2GoxOmgSTdzIr0S/44
	PUjytt9TA11sZUWYG6WztzANDvYamfeyeAq8I2C0tBcRgqG2S0MV1C7iJ0ibNdGf2JK5JLODD3FXb
	9L4ZvH1wmb4nH+c9mRrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in89g-0006IH-B2; Thu, 02 Jan 2020 21:37:20 +0000
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in89X-0006HS-R7
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 21:37:13 +0000
X-IronPort-AV: E=Sophos;i="5.69,388,1571695200"; d="scan'208";a="429721732"
Received: from vir91-18_migr-88-121-247-124.fbx.proxad.net (HELO
 [192.168.0.4]) ([88.121.247.124])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/AES128-SHA;
 02 Jan 2020 22:37:05 +0100
Subject: Re: [PATCH V6 0/7] ACPI: Support Generic Initiator proximity domains
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
References: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
 <dc5f5502-09c6-d476-db0e-0af3412bb031@gmail.com>
 <20191218145041.00005a11@Huawei.com>
 <1867024e-b0c4-c291-7190-262cc4b297a8@gmail.com>
 <20200102152604.000039f1@Huawei.com>
From: Brice Goglin <brice.goglin@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=brice.goglin@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <b428d231-4879-4462-ac42-900b5d094eee@gmail.com>
Date: Thu, 2 Jan 2020 22:37:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200102152604.000039f1@Huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_133712_152466_E8906D79 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.83 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (brice.goglin[at]gmail.com)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-acpi@vger.kernel.org,
 Tao Xu <tao3.xu@intel.com>, x86@kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, linux-mm@kvack.org, jglisse@redhat.com,
 Sudeep Holla <sudeep.holla@arm.com>, Hanjun Guo <guohanjun@huawei.com>,
 Keith Busch <kbusch@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMDIvMDEvMjAyMCDDoCAxNjoyNywgSm9uYXRoYW4gQ2FtZXJvbiBhIMOpY3JpdMKgOgo+Cj4+
IEhvd2V2ZXIgdGhlIEhNQVQgdGFibGUgZ2V0cyBpZ25vcmVkIGJlY2F1c2UgZmluZF9tZW1fdGFy
Z2V0KCkgZmFpbHMgaW4KPj4gaG1hdF9wYXJzZV9wcm94aW1pdHlfZG9tYWluKCkuIFRoZSB0YXJn
ZXQgc2hvdWxkIGhhdmUgYmVlbiBhbGxvY2F0ZWQgaW4KPj4gYWxsb2NfbWVtb3J5X3RhcmdldCgp
IHdoaWNoIGlzIGNhbGxlZCBpbiBzcmF0X3BhcnNlX21lbV9hZmZpbml0eSgpLCBidXQKPj4gaXQg
c2VlbXMgdG8gbWUgdGhhdCB0aGlzIGZ1bmN0aW9uIGlzbid0IGNhbGxlZCBmb3IgR0kgbm9kZXMu
IE9yIHNob3VsZAo+PiBTUkFUIGFsc28gY29udGFpbiBhIG5vcm1hbCBNZW1vcnkgbm9kZSB3aXRo
IHNhbWUgUE0gYXMgdGhlIEdJPwo+Pgo+IEhpIEJyaWNlLAo+Cj4gWWVzIHlvdSBzaG91bGQgc2Vl
IGEgbm9kZSB3aXRoIDBrQiBtZW1vcnkuICBTYW1lIGFzIHlvdSBnZXQgZm9yIGEgcHJvY2Vzc29y
Cj4gb25seSBub2RlIEkgYmVsaWV2ZS4KPgo+IHNyYXRfcGFyc2VfbWVtX2FmZmluaXR5IHNob3Vs
ZG4ndCBjYWxsIGFsbG9jX21lbW9yeV90YXJnZXQgZm9yIHRoZSBHSSBub2Rlcwo+IGFzIHRoZXkg
ZG9uJ3QgaGF2ZSBhbnkgbWVtb3J5LiAgIFRoZSBobWF0IHRhYmxlIHNob3VsZCBvbmx5IHJlZmVy
IHRvCj4gR0kgZG9tYWlucyBhcyBpbml0aWF0b3JzLiAgSnVzdCB0byBjaGVjaywgZG8geW91IGhh
dmUgdGhlbSBsaXN0ZWQgYXMKPiBhIHRhcmdldCBub2RlPyAgT3IgcGVyaGFwcyBpbiBzb21lIGht
YXQgcHJveGltaXR5IGVudHJ5IGFzIG1lbW9yeV9QRD8KPgoKVGhhbmtzLCBJIGZpbmFsbHkgZ290
IHRoaW5ncyB0byB3b3JrLiBJIGFtIG9uIHg4Ni4gSXQncyBhIGR1YWwtc29ja2V0Cm1hY2hpbmUg
d2l0aCBTdWJOVU1BIGNsdXN0ZXJzICgyIG5vZGVzIHBlciBzb2NrZXQpIGFuZCBOVkRJTU1zIChv
bmUKZGF4LWttZW0gbm9kZSBwZXIgc29ja2V0KS4gQmVmb3JlIGFkZGluZyBhIEdJLCBpbml0aWF0
b3JzIGxvb2sgbGlrZSB0aGlzOgoKbm9kZTAgLT4gbm9kZTAgYW5kIG5vZGU0Cgpub2RlMSAtPiBu
b2RlMSBhbmQgbm9kZTUKCm5vZGUyIC0+IG5vZGUyIGFuZCBub2RlNAoKbm9kZTMgLT4gbm9kZTMg
YW5kIG5vZGU1CgpJIGFkZGVkIGEgR0kgd2l0aCBmYXN0ZXIgYWNjZXNzIHRvIG5vZGUwLCBub2Rl
Miwgbm9kZTQgKGZpcnN0IHNvY2tldCkuCgpUaGUgR0kgbm9kZSBiZWNvbWVzIGFuIGFjY2VzczAg
aW5pdGlhdG9yIGZvciBub2RlNCwgYW5kIG5vZGUwIGFuZCBub2RlMgpyZW1haW4gYWNjZXNzMSBp
bml0aWF0b3JzLgoKVGhlIEdJIG5vZGUgZG9lc24ndCBiZWNvbWUgYWNjZXNzMCBpbml0aWF0b3Ig
Zm9yIG5vZGUwIGFuZCBub2RlMiwgbGlrZWx5CmJlY2F1c2Ugb2YgdGhpcyB0ZXN0IDoKCiAgICAg
ICAgLyoKICAgICAgICAgKiBJZiB0aGUgQWRkcmVzcyBSYW5nZSBTdHJ1Y3R1cmUgcHJvdmlkZXMg
YSBsb2NhbCBwcm9jZXNzb3IgcHhtLCBsaW5rCiAgICAgICAgICogb25seSB0aGF0IG9uZS4gT3Ro
ZXJ3aXNlLCBmaW5kIHRoZSBiZXN0IHBlcmZvcm1hbmNlIGF0dHJpYnV0ZXMgYW5kCiAgICAgICAg
ICogcmVnaXN0ZXIgYWxsIGluaXRpYXRvcnMgdGhhdCBtYXRjaC4KICAgICAgICAgKi8KICAgICAg
ICBpZiAodGFyZ2V0LT5wcm9jZXNzb3JfcHhtICE9IFBYTV9JTlZBTCkgewoKSSBndWVzcyBJIHNo
b3VsZCBzcGxpdCBub2RlMC0zIGludG8gc2VwYXJhdGUgQ1BVIG5vZGVzIGFuZCBtZW1vcnkgbm9k
ZXMKaW4gU1JBVD8KCkJyaWNlCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
