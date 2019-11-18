Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFC4100A1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 18:19:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jX1e96KZhWk4Xta7TY+6erVa+kLvGuUXH1lJOw/vsAE=; b=INOolUqTajjiWS
	4aUYQAFheJ86qm+0HAJ3ORaQY1ZDLRfJDp6bV2Z6b/JQO+rIhfPNnQc9GsDn0iE5EcKRJZG0TZORA
	uDPVXb8z+Vdg2Bm1a/v6aIGE7CMX9D7lbLSYFVPH7FlIXu4TQxuzaEJsmSqGfe9+2mhqwEUU7DvdL
	XAfvA1Ac3TbDO7kiGHs3sGR3qq5eknUuVde1dZYczsS9a8P8XAsNu5gWsGh3/nmKWjDPutIAIjqh4
	eVzQgbEiiX5g46aM5SbqsfUV/SBtBE/WSsOIekIigzOZlm7l3vfuXMwarKG/ufqnHZ4SF9tVX5esJ
	mhoXdh4t62BpL55Vuf6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWkgi-0007pE-GQ; Mon, 18 Nov 2019 17:19:44 +0000
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWkgV-0007o7-H1
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 17:19:33 +0000
X-IronPort-AV: E=Sophos;i="5.68,320,1569276000"; d="scan'208";a="327147313"
Received: from unknown (HELO [172.20.24.15]) ([204.98.150.10])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/AES128-SHA;
 18 Nov 2019 18:18:38 +0100
Subject: Re: [PATCH V5 1/4] ACPI: Support Generic Initiator only domains
To: Dan Williams <dan.j.williams@intel.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>
References: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
 <20191004114330.104746-2-Jonathan.Cameron@huawei.com>
 <CAPcyv4jZG-5s6NsS-_-oNG45y0Qb1mVD_s8cCGqLYtzvHqEo+Q@mail.gmail.com>
 <20191113094742.00000dc4@huawei.com>
 <77b6a6e8-9d44-1e1c-3bf0-a8d04833598d@intel.com>
 <20191113174845.000009d3@huawei.com>
 <CAPcyv4g5xUBp871+T26+se8WH9154g7V81qsToYAbXAALMuhKQ@mail.gmail.com>
 <20191114112504.00005b61@huawei.com>
 <CAPcyv4jrXvPOvoBCW8H42_og1wJ_t9_=5N4C7-OugYyNzdqBLA@mail.gmail.com>
From: Brice Goglin <brice.goglin@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=brice.goglin@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <d0106281-f65c-369f-ef0f-11afc5f60048@gmail.com>
Date: Mon, 18 Nov 2019 18:18:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAPcyv4jrXvPOvoBCW8H42_og1wJ_t9_=5N4C7-OugYyNzdqBLA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_091931_867184_B867BCE8 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.104 listed in list.dnswl.org]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (brice.goglin[at]gmail.com)
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
Cc: Linux ACPI <linux-acpi@vger.kernel.org>, Tao Xu <tao3.xu@intel.com>,
 X86 ML <x86@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>, Keith Busch <keith.busch@intel.com>,
 Linux MM <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMTYvMTEvMjAxOSDDoCAyMTo0NSwgRGFuIFdpbGxpYW1zIGEgw6ljcml0wqA6Cj4KPj4gTXkg
ZmVlbGluZyBpcyB0aGF0IGFueSBleGlzdGluZyB1c2VycyBvZiBhY2Nlc3MwIGFyZSBkZWZpbml0
ZWx5IG5vdCBnb2luZwo+PiB0byBiZSBleHBlY3RpbmcgZ2VuZXJpYyBpbml0aWF0b3JzLCBzbyB3
ZSBtaWdodCB3YW50IHRvIGRvIHRoaXMgdGhlIG90aGVyCj4+IHdheSBhcm91bmQuIGFjY2VzczAg
aXMgb25seSBDUFVzIGFuZCBtZW1vcnksIGFjY2VzczEgaXMgaW5jbHVkaW5nCj4+IGdlbmVyaWMg
aW5pdGlhdG9ycy4gIElmIHRoZXJlIGFyZSBubyBHSXMgZG9uJ3QgZXhwb3NlIGFjY2VzczEgYXQg
YWxsPwo+IFRoZXJlIGFyZSBubyBjb25zdW1lcnMgb2YgdGhlIGluZm9ybWF0aW9uIHRoYXQgSSBr
bm93IG9mLCBzbyBJIGRvIG5vdAo+IHNlZSB0aGUgcmlzayBvZiByZWdyZXNzaW9uLgoKCmh3bG9j
IGFscmVhZHkgcmVhZHMgYWNjZXNzMC9pbml0aWF0b3JzLyBub2RlIHN5bWxpbmtzIChtb3N0bHkg
dXNlZnVsIGZvcgpmaW5kaW5nIHdoaWNoIENQVXMgYXJlIGxvY2FsIHRvIGttZW0gZGF4IGRldmlj
ZXMpLiBJZiBJIHVuZGVyc3RhbmQKY29ycmVjdGx5IHRoZSBjaGFuZ2VzIHlvdSBwcm9wb3NlLCB3
ZSB3b3VsZCBnZXQgYW4gZW1wdHkgbGlzdCBvZiBDUFVzIGluCnRoZSBhY2Nlc3MwL2luaXRpYXRv
cnMvIG5vZGVzPyBJZiBpdCBvbmx5IG9jY3VycyBvbiBwbGF0Zm9ybXMgd2l0aCBHSQood2hlbiBh
cmUgdGhvc2UgY29taW5nIHRvIG1hcmtldD8pLCBJJ2Qgc2F5IGl0J3Mgbm90IGEgYmlnIGRlYWwg
Zm9yIHVzLAp3ZSdsbCBtYW5hZ2UgdG8gaGF2ZSB1c2VycyB1cGdyYWRlIHRoZWlyIGh3bG9jLgoK
QnJpY2UKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
