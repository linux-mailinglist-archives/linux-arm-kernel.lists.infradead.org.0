Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCCA12F81C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 13:19:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RsrBPs6SwR1VwN6MtKbxTD6diA2hZnWgqKXa0wsHfq4=; b=VwP9ihqeJ62/nj
	mml5vZzwiHjEZ6mh5Eo+VzwwfD9P5Fp8x8Z9gfJ8bQ5805QObbePKci6uNEWfpqVjlGzlkhN7+spc
	HV7NANnLEdj+CrkdN8pjbbyDFDTlLOJ0nN19NztyxxUo4lrb5gJKZ+9J9xVf93oh9/aGmSMGT8SHR
	6QW5R5fVujOczvg8apCaE+YdgEPv+W78zhuLf/S5Fi4b16xAngpgiSWjWbGL+2V3h3ytcbtsh7VYN
	6jyKL4KiC3rGVQRCH+JWMMBW+/54O1fttZ6q4KY+SsVLyqcukTY6Ryj9XiDakrcolZyINrUwJE3ic
	yDXbNQwFiDdZHhJDlx2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inLv8-0002co-Dy; Fri, 03 Jan 2020 12:19:14 +0000
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inLv2-0002bJ-3b
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 12:19:09 +0000
X-IronPort-AV: E=Sophos;i="5.69,390,1571695200"; d="scan'208";a="429785564"
Received: from vir91-18_migr-88-121-247-124.fbx.proxad.net (HELO
 [192.168.0.4]) ([88.121.247.124])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/AES128-SHA;
 03 Jan 2020 13:19:00 +0100
Subject: Re: [PATCH V6 0/7] ACPI: Support Generic Initiator proximity domains
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
References: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
 <dc5f5502-09c6-d476-db0e-0af3412bb031@gmail.com>
 <20191218145041.00005a11@Huawei.com>
 <1867024e-b0c4-c291-7190-262cc4b297a8@gmail.com>
 <20200102152604.000039f1@Huawei.com>
 <b428d231-4879-4462-ac42-900b5d094eee@gmail.com>
 <20200103100920.00006a18@Huawei.com>
From: Brice Goglin <brice.goglin@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=brice.goglin@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <13b2cc22-df30-ebee-fb94-cd66d8334507@gmail.com>
Date: Fri, 3 Jan 2020 13:18:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200103100920.00006a18@Huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_041908_424797_7F016FE0 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.83 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (brice.goglin[at]gmail.com)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

TGUgMDMvMDEvMjAyMCDDoCAxMTowOSwgSm9uYXRoYW4gQ2FtZXJvbiBhIMOpY3JpdMKgOgo+Cj4g
MSkgSWYgdGhlIG1lbW9yeSBhbmQgcHJvY2Vzc29yIGFyZSBpbiB0aGUgc2FtZSBkb21haW4sIHRo
YXQgc2hvdWxkIG1lYW4gdGhlCj4gYWNjZXNzIGNoYXJhY3RlcmlzdGljcyB3aXRoaW4gdGhhdCBk
b21haW4gYXJlIHRoZSBiZXN0IGluIHRoZSBzeXN0ZW0uCj4gSXQgaXMgcG9zc2libGUgdG8gaGF2
ZSBhIHNldHVwIHdpdGggdmVyeSBsb3cgbGF0ZW5jeSBhY2Nlc3MKPiBmcm9tIGEgcGFydGljdWxh
ciBwcm9jZXNzb3IgYnV0IGFsc28gbG93IGJhbmR3aWR0aC4gIEFub3RoZXIgZG9tYWluIG1heSBo
YXZlCj4gaGlnaCBiYW5kd2lkdGggYnV0IGxvbmcgbGF0ZW5jeS4gICBTdWNoIHN5c3RlbXMgbWF5
IG9jY3VyLCBidXQgdGhleSBhcmUgcHJvYmFibHkKPiBnb2luZyB0byBub3QgYmUgZm9yICdub3Jt
YWwgbWVtb3J5IHRoZSBPUyBjYW4ganVzdCB1c2UnLgo+Cj4gMikgSWYgd2UgaGF2ZSBhIHJlbGV2
YW50ICJNZW1vcnkgUHJveGltaXR5IERvbWFpbiBBdHRyaWJ1dGVzIFN0cnVjdHVyZSIKPiBOb3Rl
IHRoaXMgd2FzIHJlbmFtZWQgaW4gYWNwaSA2LjMgZnJvbSAiQWRkcmVzcyBSYW5nZSBTdHJ1Y3R1
cmUiIGFzCj4gaXQgbm8gbG9uZ2VyIGhhcyBhbnkgYWRkcmVzcyByYW5nZXMuCj4gKHdoaWNoIGFy
ZSBlbnRpcmVseSBvcHRpb25hbCBidHcpIHRoYXQgaW5kaWNhdGVzIHRoYXQgdGhlIG1lbW9yeSBj
b250cm9sbGVyCj4gZm9yIGEgZ2l2ZW4gbWVtb3J5IGxpZXMgaW4gdGhlIHByb3hpbWl0eSBkb21h
aW4gb2YgdGhlIEluaXRpYXRvciBzcGVjaWZpZWQuCj4gSWYgdGhhdCBoYXBwZW5zIHdlIGlnbm9y
ZSBjYXNlcyB3aGVyZSBobWF0IHNheXMgc29tZXdoZXJlIGVsc2UgaXMgbmVhcmVyCj4gdmlhIGJh
bmR3aWR0aCBhbmQgbGF0ZW5jeS4KPgo+IEZvciBjYXNlIDEpIEknbSBub3Qgc3VyZSB3ZSBhY3R1
YWxseSBlbmZvcmNlIGl0Lgo+IEkgdGhpbmsgeW91J3ZlIGhpdCBjYXNlIDIpLiAgCj4KPiBSZW1v
dmluZyB0aGUgYWRkcmVzcyByYW5nZSBzdHJ1Y3R1cmVzIHNob3VsZCB3b3JrLCBvciBhcyB5b3Ug
c2F5IHlvdSBjYW4KPiBtb3ZlIHRoYXQgbWVtb3J5IGludG8gc2VwYXJhdGUgbWVtb3J5IG5vZGVz
LgoKCkkgcmVtb3ZlZCB0aGUgInByb2Nlc3NvciBwcm94aW1pdHkgZG9tYWluIHZhbGlkIiBmbGFn
IGZyb20gdGhlIGFkZHJlc3MKcmFuZ2Ugc3RydWN0dXJlIG9mIG5vZGUyLCBhbmQgdGhlIEdJIGlz
IG5vdyBpdHMgYWNjZXNzMCBpbml0aWF0b3IKaW5zdGVhZCBvZiBub2RlMiBpdHNlbGYuIExvb2tz
IGxpa2UgaXQgY29uZmlybXMgSSB3YXMgaW4gY2FzZSAyKQoKVGhhbmtzCgpCcmljZQoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
