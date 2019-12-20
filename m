Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB18D1283FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 22:40:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLQEyAWY/jfYRBdRYjUH3cUd5JsqPe+OZPE1Zi4oK2c=; b=sGrBOHkiU+P1+K
	UdTnZ4otegH6WQYLVB97js7gQby5Wr4nwW6SBIZ55pur3xfm63oqsr9LQkuEvUclJI72X4wXAWvh1
	I2/CrA9eCpZ7wZr0Axo698DJsHTf7hDsHbx3xDLrPPyESI+84mEWdr8wQ2OD+NFof0mAgjxPK1Okl
	WVVl4CPFoxET5H/0d1nQTz073jD6DkixUdY3OEyIMlAb13vf8TNE8Vj7nORzh45VJfuJVoP+SSVMv
	Sbkl38sQDBDzFU9pgzMlscoJjPU/ck+OUkrgY9AFcxauxYmCeHV8zM236G5CVCNaiJvP9fGLzSC62
	B2rQCKXstIA+KDphkuGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiQ0l-0006Fb-8R; Fri, 20 Dec 2019 21:40:39 +0000
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiQ0Z-00066x-DH
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 21:40:29 +0000
X-IronPort-AV: E=Sophos;i="5.69,337,1571695200"; d="scan'208";a="421295525"
Received: from 91-160-5-165.subs.proxad.net (HELO [192.168.44.23])
 ([91.160.5.165])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/AES128-SHA;
 20 Dec 2019 22:40:18 +0100
Subject: Re: [PATCH V6 0/7] ACPI: Support Generic Initiator proximity domains
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
References: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
 <dc5f5502-09c6-d476-db0e-0af3412bb031@gmail.com>
 <20191218145041.00005a11@Huawei.com>
From: Brice Goglin <brice.goglin@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=brice.goglin@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <1867024e-b0c4-c291-7190-262cc4b297a8@gmail.com>
Date: Fri, 20 Dec 2019 22:40:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191218145041.00005a11@Huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_134027_729051_25685936 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.83 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (brice.goglin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
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

TGUgMTgvMTIvMjAxOSDDoCAxNTo1MCwgSm9uYXRoYW4gQ2FtZXJvbiBhIMOpY3JpdMKgOgo+IE9u
IFdlZCwgMTggRGVjIDIwMTkgMTI6MzI6MDYgKzAxMDAKPiBCcmljZSBHb2dsaW4gPGJyaWNlLmdv
Z2xpbkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4+IExlIDE2LzEyLzIwMTkgw6AgMTY6MzgsIEpvbmF0
aGFuIENhbWVyb24gYSDDqWNyaXTCoDoKPj4+IEludHJvZHVjZXMgYSBuZXcgdHlwZSBvZiBOVU1B
IG5vZGUgZm9yIGNhc2VzIHdoZXJlIHdlIHdhbnQgdG8gcmVwcmVzZW50Cj4+PiB0aGUgYWNjZXNz
IGNoYXJhY3RlcmlzdGljcyBvZiBhIG5vbiBDUFUgaW5pdGlhdG9yIG9mIG1lbW9yeSByZXF1ZXN0
cywKPj4+IGFzIHRoZXNlIGRpZmZlciBmcm9tIGFsbCB0aG9zZSBmb3IgZXhpc3Rpbmcgbm9kZXMg
Y29udGFpbmluZyBDUFVzIGFuZC9vcgo+Pj4gbWVtb3J5Lgo+Pj4KPj4+IFRoZXNlIEdlbmVyaWMg
SW5pdGlhdG9ycyBhcmUgcHJlc2VudGVkIGJ5IHRoZSBub2RlIGFjY2VzczAgY2xhc3MgaW4KPj4+
IHN5c2ZzIGluIHRoZSBzYW1lIHdheSBhcyBhIENQVS4gICBJdCBzZWVtcyBsaWtlbHkgdGhhdCB0
aGVyZSB3aWxsIGJlCj4+PiB1c2VjYXNlcyBpbiB3aGljaCB0aGUgYmVzdCAnQ1BVJyBpcyBkZXNp
cmVkIGFuZCBHZW5lcmljIEluaXRpYXRvcnMKPj4+IHNob3VsZCBiZSBpZ25vcmVkLiAgVGhlIGZp
bmFsIGZldyBwYXRjaGVzIGluIHRoaXMgc2VyaWVzIGludHJvZHVjZWQKPj4+IGFjY2VzczEgd2hp
Y2ggaXMgYSBuZXcgcGVyZm9ybWFuY2UgY2xhc3MgaW4gdGhlIHN5c2ZzIG5vZGUgZGVzY3JpcHRp
b24KPj4+IHdoaWNoIHByZXNlbnRzIG9ubHkgQ1BVIHRvIG1lbW9yeSByZWxhdGlvbnNoaXBzLiAg
VGVzdCBjYXNlcyBmb3IgdGhpcwo+Pj4gYXJlIGRlc2NyaWJlZCBiZWxvdy4gIAo+Pgo+PiBIZWxs
byBKb25hdGhhbgo+Pgo+PiBJZiBJIHdhbnQgdG8gdGVzdCB0aGlzIHdpdGggYSBmYWtlIEdJLCB3
aGF0IGFyZSB0aGUgbWluaW1hbCBzZXQgb2YKPj4gY2hhbmdlcyBJIHNob3VsZCBwdXQgaW4gbXkg
QUNQSSB0YWJsZXM/IENhbiBJIGp1c3Qgc3BlY2lmeSBhIGR1bW15IEdJIGluCj4+IFNSQVQ/IFdo
YXQgaGFuZGxlIHNob3VsZCBJIHVzZSB0aGVyZT8KPiBFeGFjdGx5IHRoYXQgZm9yIGEgZHVtbXkg
R0kuICBBbHNvIGV4dGVuZCBITUFUIGFuZCBTTElUIGZvciB0aGUgZXh0cmEKPiBwcm94aW1pdHkg
ZG9tYWluIC8gaW5pdGlhdG9yLgoKCkkgY291bGRuJ3QgZ2V0IHRoaXMgdG8gd29yayAoeW91ciBw
YXRjaGVzIG9uIHRvcCBvZiA1LjUtcmMyKS4gSSBhZGRlZAp0aGUgR0kgaW4gU1JBVCwgYW5kIGV4
dGVuZGVkIEhNQVQgYW5kIFNMSVQgYWNjb3JkaW5nbHkuCgpJIGRvbid0IGtub3cgaWYgdGhhdCdz
IGV4cGVjdGVkIGJ1dCBJIGdldCBhbiBhZGRpdGlvbmFsIG5vZGUgaW4gc3lzZnMsCndpdGggMGtC
IG1lbW9yeS4KCkhvd2V2ZXIgdGhlIEhNQVQgdGFibGUgZ2V0cyBpZ25vcmVkIGJlY2F1c2UgZmlu
ZF9tZW1fdGFyZ2V0KCkgZmFpbHMgaW4KaG1hdF9wYXJzZV9wcm94aW1pdHlfZG9tYWluKCkuIFRo
ZSB0YXJnZXQgc2hvdWxkIGhhdmUgYmVlbiBhbGxvY2F0ZWQgaW4KYWxsb2NfbWVtb3J5X3Rhcmdl
dCgpIHdoaWNoIGlzIGNhbGxlZCBpbiBzcmF0X3BhcnNlX21lbV9hZmZpbml0eSgpLCBidXQKaXQg
c2VlbXMgdG8gbWUgdGhhdCB0aGlzIGZ1bmN0aW9uIGlzbid0IGNhbGxlZCBmb3IgR0kgbm9kZXMu
IE9yIHNob3VsZApTUkFUIGFsc28gY29udGFpbiBhIG5vcm1hbCBNZW1vcnkgbm9kZSB3aXRoIHNh
bWUgUE0gYXMgdGhlIEdJPwoKQnJpY2UKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
