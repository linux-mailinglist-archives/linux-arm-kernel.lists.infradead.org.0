Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BE2158FAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 14:17:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwN05yR9IY1vsDpW5UMkkOAdiu+4uELSyRc2YUyrC5k=; b=h3e/2hLcyhqg9y
	9hQXY28G72JpFiushD88XJAfqU+jN61RUrA19EWBTQmETggYChXhR72a/K4R8vP4AIppsVFA3Jqw3
	DbgF5OnbpNF2Lo1skPJvwWhWzh8fyciwaoMGe2ANgNOmK1SqzreuxYb8lR9IVsUmiZum7cS3doCIB
	z2NnWmBRdNETEf5k5nGBEU6tGOH1zPAD6nldyvlcwIK56z8XViNxohc0lWGl9nlLB1XkTQFumfOCE
	6uVwpbHU2dQP9aXi1nNtOQcdY92pYAlH+HXOexNh+gW/jeaDzBz8Cdxxg7GgnmlTOaUGMS38gKOb8
	jseLV72Ffzsdl3UVzX7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1VQH-0006js-Cj; Tue, 11 Feb 2020 13:17:53 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1VQ7-0006jS-RM
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 13:17:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5357CAAF1;
 Tue, 11 Feb 2020 13:17:42 +0000 (UTC)
Subject: Re: [PATCH 1/3] hwspinlock: sunxi: Implement support for Allwinner's
 A64 SoC
To: Maxime Ripard <maxime@cerno.tech>
References: <20200210170143.20007-1-nborisov@suse.com>
 <20200210170143.20007-2-nborisov@suse.com>
 <20200211074643.uhhzpp4ycvkaz4pd@gilmour.lan>
 <7fb0e4f7-4da6-517f-6e96-9b3dc6ee4e56@suse.com>
 <20200211123427.gbzhopfuge6osd2s@gilmour.lan>
From: Nikolay Borisov <nborisov@suse.com>
Autocrypt: addr=nborisov@suse.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <4e6eb880-8b52-aa1b-53bb-b77ff2cb858f@suse.com>
Date: Tue, 11 Feb 2020 15:17:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200211123427.gbzhopfuge6osd2s@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_051744_179985_63F62187 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, bjorn.andersson@linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS4wMi4yMCDQsy4gMTQ6MzQg0YcuLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+IE9uIFR1
ZSwgRmViIDExLCAyMDIwIGF0IDEwOjA4OjA4QU0gKzAyMDAsIE5pa29sYXkgQm9yaXNvdiB3cm90
ZToKPj4gT24gMTEuMDIuMjAg0LMuIDk6NDYg0YcuLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+Pj4g
SGksCj4+Pgo+Pj4gT24gTW9uLCBGZWIgMTAsIDIwMjAgYXQgMDc6MDE6NDFQTSArMDIwMCwgTmlr
b2xheSBCb3Jpc292IHdyb3RlOgo+Pj4+IEJhc2VkIG9uIHRoZSBkYXRhc2hlZXQgdGhpcyBpbXBs
ZW1lbnRzIHN1cHBvcnQgZm9yIHRoZSBod3NwaW5sb2NrIElQCj4+Pj4gYmxvY2suCj4+Pgo+Pj4g
SG93IHdhcyB0aGlzIHRlc3RlZD8KPj4KPj4gSSB0ZXN0ZWQgaXQgb24gbXkgcGluZTY0IGx0cyBl
LmcuIGxvYWRpbmcgdGhlIGRyaXZlciBhbmQgcmVhZGluZyB0aGUKPj4gcmVzZXQvY2xvY2svc3lz
c3RhdHVzIHJlZ2lzdGVycyB0byBlbnN1cmUgZXZlcnl0aGluZyBpcyB1bm1hc2tlZCBhbmQgaGFz
Cj4+IGV4cGVjdGVkIHZhbHVlcy4KPiAKPiBJc24ndCB0aGUgcG9pbnQgb2YgaHdzcGlubG9ja3Mg
dGhhdCBpdCdzIHNoYXJlZCBiZXR3ZWVuIHRoZSBBUklTQyBjb3JlCj4gYW5kIHRoZSBBUk0gY29y
ZXMuIEhvdyBkaWQgeW91IHRlc3QgdGhhdCB0aGUgbG9jayB3YXMgYWN0dWFsbHkgdGFrZW4KPiBv
biB0aGUgb3RoZXIgc2lkZSBqdXN0IGJ5IHVzaW5nIHRoZSBBUk0gY29yZXM/CgpJIGhhdmVuJ3Qu
IEknbSByZWFsbHkgZm9jdXNlIGRvbiBqdXN0IGVuYWJsaW5nIHRoaXMgb24gdGhlIGxpbnV4IHNp
ZGUgb2YKdGhpbmdzLiBUcnVlLCBodyBzcGlubG9ja3MgYXJlIHVzZWQgdG8gc3luY2hyb25pemUg
Y3B1IHJ1bm5pbmcgZGlmZmVyZW50Ck9TJ2VzLiBJdCdzIHN0aWxsIGltcGxlbWVudGF0aW9uIGRl
ZmluZWQgd2hpY2ggaHdzcGlubG9jayBpcyB1c2VkIGZvcgp3aGljaCBjb21wb25lbnQuIEFkZGl0
aW9uYWxseSBpZiB3ZSBhc3N1bWUgdGhlIEFSSVNDIGNvcmUgdXNlcyBzcGlubG9jawp0aGlzIG1l
YW5zIGJ5IHRoZSB0aW1lIGxpbnV4IGlzIGJvb3RlZCB0aGUgc3BpbmxvY2tzIHNob3VsZCBhbHJl
YWR5IGJlCmNsb2NrZWQgYW5kIG91dCBvZiBzb2Z0d2FyZSByZXNldCBzbyBwZXJoYWhwcyB0aGlz
IGlzIGFsc28gcmVkdW5kYW50IGluCnRoZSBkcml2ZXI/CgoKPHNuaXA+CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
