Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F058011C85B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 09:41:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uG6+ODWtyK9Mcyy3na8pPUJQXBelVmzXswmL9o19DTM=; b=kExq66AuGeziN5
	iJJd6trgEjI8YWRs7hG9LnCWiOLouEQiFj2NkiiI1hs4FR8nRO1ZHoWVWfHSLFoU3ZXA3u2g8rWb9
	fTWpHqZCF15b/5SvrLvWhqVuVRzLY1wSS/X+PDdarFHQaqmFQXbJGyl/60MpLRuwbkAv3YMnmjIoF
	c9d+6B4tMJTAevf+YlX0YCgsuDlZsN8atNQBOzhnCa5QVD9OT7RrdMZtHYME4E4U6gHRDYhujIxB4
	qG9vn1mpRQs7Xmb70UEpSXdcN5uvEQ8sjVIXMfR8lIM6dew5llKKg7A8WmAM8uUzYnnD96gsQtfHo
	n98GAjkoDc57zmSlwlFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifK1n-0002OY-FN; Thu, 12 Dec 2019 08:40:55 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifK1c-0002NH-W2; Thu, 12 Dec 2019 08:40:46 +0000
Received: by mail-ot1-f65.google.com with SMTP id 66so957497otd.9;
 Thu, 12 Dec 2019 00:40:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AQWN2ilbL/pV9oSuedTqVkyb3PS6uRdUps6Bbw03pBk=;
 b=reZOmwIZ9p8YN0jrtZ8L6ieXJKjgfZy2H+6zB1npi5zOtO7QIc66SRqekqvC/bsAlj
 zbbyr5s2dIHK9xniXiXmyjB/BR0c5CmSBPfnJ71+8OkZTPgW/tLIvKNB3kjGxUVbVBZb
 4swCW9bFvoDGpdx1t0TUhB6vxn+PCnpKoF7fB2kXc/sqzP+/lG3pXeAO9lUu7WBaFGau
 fsw6ReUFiWToza/WkHhhopN+QUTXMbKyyQXJJzQXCgG+avOdfFbzs6N/+ezS1d5fExxI
 ICM8whBiR/n0q/CaQRRU34ZBlGdIDitVLeX3OOuiqeVZhOcUPWkndiuCRVnKgMe/X5Qa
 /tBQ==
X-Gm-Message-State: APjAAAXqPo4u9skiqiTG3Q6G0luwYgqigRGG6uTu6XUq8IxemFiqqSwf
 H5CIQt0VB0kOa5vGv/SWPYOt4F3so+Tl2z7+xrU=
X-Google-Smtp-Source: APXvYqysUxu8Fvc2fIhN06OFqRY0qpSAEhlRgYRJ7iOByHsa4CbdkD7ZfCNq5icsxrmSiZ5dHtFTX6Xxp+lE34VAdgE=
X-Received: by 2002:a9d:dc1:: with SMTP id 59mr7036813ots.250.1576140041766;
 Thu, 12 Dec 2019 00:40:41 -0800 (PST)
MIME-Version: 1.0
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-5-afaerber@suse.de>
In-Reply-To: <20191212033952.5967-5-afaerber@suse.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Dec 2019 09:40:20 +0100
Message-ID: <CAMuHMdWdxJ9AaWhyCW-u8fCpXSDCPd-D6Dx129SF5nRssZsK=g@mail.gmail.com>
Subject: Re: [RFC 04/25] spi: gpio: Implement LSB First bitbang support
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_004045_031871_8D4ACA3D 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-realtek-soc@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 linux-leds@vger.kernel.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCk9uIFRodSwgRGVjIDEyLCAyMDE5IGF0IDQ6NDEgQU0gQW5kcmVhcyBGw6Ry
YmVyIDxhZmFlcmJlckBzdXNlLmRlPiB3cm90ZToKPiBBZGQgc3VwcG9ydCBmb3Igc2xhdmUgRFQg
cHJvcGVydHkgc3BpLWxzYi1maXJzdCwgaS5lLiwgU1BJX0xTQl9GSVJTVCBtb2RlLgo+Cj4gRHVw
bGljYXRlIHRoZSBpbmxpbmUgaGVscGVycyBiaXRiYW5nX3R4cnhfYmVfY3BoYXswLDF9IGFzIExF
IHZlcnNpb25zLgo+IE1ha2UgY2hlY2twYXRjaC5wbCBoYXBweSBieSBjaGFuZ2luZyAidW5zaWdu
ZWQiIHRvICJ1bnNpZ25lZCBpbnQiLgo+Cj4gQ29uZGl0aW9uYWxseSBjYWxsIHRoZW0gZnJvbSBh
bGwgdGhlIHNwaS1ncGlvIHR4cnhfd29yZCBjYWxsYmFja3MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBB
bmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+CgpUaGFua3MgZm9yIHlvdXIgcGF0Y2gh
Cgo+IC0tLSBhL2RyaXZlcnMvc3BpL3NwaS1ncGlvLmMKPiArKysgYi9kcml2ZXJzL3NwaS9zcGkt
Z3Bpby5jCj4gQEAgLTEzNSwyNSArMTM1LDM3IEBAIHN0YXRpYyBpbmxpbmUgaW50IGdldG1pc28o
Y29uc3Qgc3RydWN0IHNwaV9kZXZpY2UgKnNwaSkKPiAgc3RhdGljIHUzMiBzcGlfZ3Bpb190eHJ4
X3dvcmRfbW9kZTAoc3RydWN0IHNwaV9kZXZpY2UgKnNwaSwKPiAgICAgICAgICAgICAgICAgdW5z
aWduZWQgbnNlY3MsIHUzMiB3b3JkLCB1OCBiaXRzLCB1bnNpZ25lZCBmbGFncykKPiAgewo+IC0g
ICAgICAgcmV0dXJuIGJpdGJhbmdfdHhyeF9iZV9jcGhhMChzcGksIG5zZWNzLCAwLCBmbGFncywg
d29yZCwgYml0cyk7Cj4gKyAgICAgICBpZiAodW5saWtlbHkoc3BpLT5tb2RlICYgU1BJX0xTQl9G
SVJTVCkpCj4gKyAgICAgICAgICAgICAgIHJldHVybiBiaXRiYW5nX3R4cnhfbGVfY3BoYTAoc3Bp
LCBuc2VjcywgMCwgZmxhZ3MsIHdvcmQsIGJpdHMpOwo+ICsgICAgICAgZWxzZQo+ICsgICAgICAg
ICAgICAgICByZXR1cm4gYml0YmFuZ190eHJ4X2JlX2NwaGEwKHNwaSwgbnNlY3MsIDAsIGZsYWdz
LCB3b3JkLCBiaXRzKTsKPiAgfQoKRHVwbGljYXRpbmcgYWxsIGZ1bmN0aW9ucyBzb3VuZHMgYSBi
aXQgd2FzdGVmdWwgdG8gbWUuCgpXaGF0IGFib3V0IHJldmVydGluZyB0aGUgd29yZCBmaXJzdCwg
YW5kIGNhbGxpbmcgdGhlIG5vcm1hbCBmdW5jdGlvbnM/CgogICAgaWYgKHVubGlrZWx5KHNwaS0+
bW9kZSAmIFNQSV9MU0JfRklSU1QpKSB7CiAgICAgICAgICAgIGlmIChiaXRzIDw9IDgpCiAgICAg
ICAgICAgICAgICAgICAgd29yZCA9IGJpdHJldjgod29yZCkgPj4gKGJpdHMgLSA4KTsKICAgICAg
ICAgICAgZWxzZSBpZiAoYml0cyA8PSAxNikKICAgICAgICAgICAgICAgICAgICB3b3JkID0gYml0
cmV2MTYod29yZCkgPj4gKGJpdHMgLSAxNik7CiAgICAgICAgICAgIGVsc2UKICAgICAgICAgICAg
ICAgICAgICB3b3JkID0gYml0cmV2MzIod29yZCkgPj4gKGJpdHMgLSAzMik7CiAgICB9CiAgICBy
ZXR1cm4gYml0YmFuZ190eHJ4X2JlX2NwaGEwKHNwaSwgbnNlY3MsIDAsIGZsYWdzLCB3b3JkLCBi
aXRzKTsKCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQK
Ci0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBp
YTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdp
dGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdt
IHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRo
aW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBU
b3J2YWxkcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
