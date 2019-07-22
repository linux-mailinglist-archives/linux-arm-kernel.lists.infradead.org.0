Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA66708A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 20:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBGS6rs1Y1CGrQRQJYY9f/Ym/vQe2Dn2nd4ovntFMJc=; b=rv15b/K8PipzB0
	/Tw2A4mlA71sVyEsUvjYtov0sRyVWK2VTZGDK2gggZGlQkeWzswnUJQcmtduQCLvb8GbEMTV1W1FR
	wiAYS5YDzBjafz0HaImxxjCfeKa3fVdDE72M59opeOiGy0ZkeaPSZrSk2Vy9rcLXDtv55HBGh33I3
	B8u/gWyJ8RmXcxIjQi1HL266Bo5MlF8bxDEdxLT8Q9jKHPjTdz8R4zR1juAngC7LqGtOWeZ7I0KD8
	9daVJnHdUfk8B/07NC6GXsGUdVfK89L39pjMgLFfN9qNxrh/dI1b7sLxXkYdZPun/Htvc5cFy8g0Y
	c8ZmRP5EZHkYAE6k4wqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpd5N-0004CJ-HJ; Mon, 22 Jul 2019 18:30:57 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpd4G-0002SU-2J
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 18:29:49 +0000
Received: by mail-io1-f66.google.com with SMTP id m24so76163794ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 11:29:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=45VBkdwbSdeHAF4CxCfsEpgQ0Hv/6sDXiE8u86RMzcI=;
 b=LWhVJbojzNT8DhuqHdH66AutwANIwLby2xn6W4hqkycj7uIS8gckH/a6doq7wHDkdE
 Ik7nQyKwB2Bqjr0wPBSg/iIpopQoDRihk1gqAsoFLTr8AOFjATs6O6AYbbz2XrrPZWk8
 7dz7FX7026px+DPKHo3oLLkRt/VLLJrFHazXa/FCeqQk1SC3mqRGcZnZO/5ZYzxXxWO7
 FToJQh/3bN5Xh7JVuA4ElA2QDU/tqpMixnZ/Lg8q6ZIL9mtJQvRfXMp0Mm/7kwfr2LAj
 +21KV6wYTNaEbYIW8JtzTjqDLyxS6gQKCYEQLZD4jDcyGBohGDzyz8bArPArsTMJLPSB
 5DgQ==
X-Gm-Message-State: APjAAAWhVu1WFGpDsk1uEuVm6bjJfb916AIIXbhNCtE6HUo2w6oWYMFM
 2cK7w0vjEocoPc4x1RSnFQ==
X-Google-Smtp-Source: APXvYqy0/9HHdGzLDl2P0Oto77pOLJAS7xoNpItq0R4cBSAOfioLfzVoEKB8XKnU2bhgimfk2b6elw==
X-Received: by 2002:a02:c6b8:: with SMTP id o24mr2514691jan.80.1563820186890; 
 Mon, 22 Jul 2019 11:29:46 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id d25sm33325592iom.52.2019.07.22.11.29.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 11:29:46 -0700 (PDT)
Date: Mon, 22 Jul 2019 12:29:45 -0600
From: Rob Herring <robh@kernel.org>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [RESEND PATCH 01/10] dt-bindings: crypto: k3: Add sa2ul bindings
 documentation
Message-ID: <20190722182945.GA24685@bogus>
References: <20190628042745.28455-1-j-keerthy@ti.com>
 <20190628042745.28455-2-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628042745.28455-2-j-keerthy@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_112948_149435_4707E4B7 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: nm@ti.com, devicetree@vger.kernel.org, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdW4gMjgsIDIwMTkgYXQgMDk6NTc6MzZBTSArMDUzMCwgS2VlcnRoeSB3cm90ZToK
PiBUaGUgc2VyaWVzIGFkZHMgQ3J5cHRvIGhhcmR3YXJlIGFjY2VsZXJhdG9yIHN1cHBvcnQgZm9y
IFNBMlVMLgo+IFNBMlVMIHN0YW5kcyBmb3Igc2VjdXJpdHkgYWNjZWxlcmF0b3IgdWx0cmEgbGl0
ZS4KPiAKPiBUaGUgU2VjdXJpdHkgQWNjZWxlcmF0b3IgKFNBMl9VTCkgc3Vic3lzdGVtIHByb3Zp
ZGVzIGhhcmR3YXJlCj4gY3J5cHRvZ3JhcGhpYyBhY2NlbGVyYXRpb24gZm9yIHRoZSBmb2xsb3dp
bmcgdXNlIGNhc2VzOgo+IOKAoiBFbmNyeXB0aW9uIGFuZCBhdXRoZW50aWNhdGlvbiBmb3Igc2Vj
dXJlIGJvb3QKPiDigKIgRW5jcnlwdGlvbiBhbmQgYXV0aGVudGljYXRpb24gb2YgY29udGVudCBp
biBhcHBsaWNhdGlvbnMKPiAgIHJlcXVpcmluZyBEUk0gKGRpZ2l0YWwgcmlnaHRzIG1hbmFnZW1l
bnQpIGFuZAo+ICAgY29udGVudC9hc3NldCBwcm90ZWN0aW9uCj4gVGhlIGRldmljZSBpbmNsdWRl
cyBvbmUgaW5zdGFudGlhdGlvbiBvZiBTQTJfVUwgbmFtZWQgU0EyX1VMMAo+IAo+IFNBMlVMIG5l
ZWRzIG9uIHR4IGNoYW5uZWwgYW5kIGEgcGFpciBvZiByeCBkbWEgY2hhbm5lbHMuCj4gCj4gU2ln
bmVkLW9mZi1ieTogS2VlcnRoeSA8ai1rZWVydGh5QHRpLmNvbT4KPiAtLS0KPiAgLi4uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvY3J5cHRvL3NhMnVsLnR4dCAgICAgIHwgNDcgKysrKysrKysrKysrKysr
KysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9zYTJ1bC50eHQK
PiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0
by9zYTJ1bC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY3J5cHRvL3Nh
MnVsLnR4dAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi44MWNj
MDM5NjczYjQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2NyeXB0by9zYTJ1bC50eHQKPiBAQCAtMCwwICsxLDQ3IEBACj4gK0szIFNvQyBT
QTJVTCBjcnlwdG8gbW9kdWxlCj4gKwo+ICtSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+ICsKPiArLSBj
b21wYXRpYmxlIDogU2hvdWxkIGJlOgo+ICsgIC0gInRpLHNhMnVsLWNyeXB0byIKCk5lZWRzIHRv
IGJlIFNvQyBzcGVjaWZpYy4KCj4gKy0gcmVnIDogT2Zmc2V0IGFuZCBsZW5ndGggb2YgdGhlIHJl
Z2lzdGVyIHNldCBmb3IgdGhlIG1vZHVsZQo+ICsKPiArLSBkbWFzOiBETUEgc3BlY2lmaWVycyBm
b3IgdHggYW5kIHJ4IGRtYS4gc2EydWwgbmVlZHMgb25lIHR4IGNoYW5uZWwKPiArCWFuZCAyIHJ4
IGNoYW5uZWxzLiBGaXJzdCByeCBjaGFubmVsIGZvciA8IDI1NiBieXRlcyBhbmQKPiArCXRoZSBv
dGhlciBvbmUgZm9yID49MjU2IGJ5dGVzLiBTZWUgdGhlIERNQSBjbGllbnQgYmluZGluZywKPiAr
ICAgICAgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL2RtYS50eHQKPiAr
LSBkbWEtbmFtZXM6IERNQSByZXF1ZXN0IG5hbWVzIGhhcyB0byBoYXZlIG9uZSB0eCBhbmQgMiBy
eCBuYW1lcwo+ICsJY29ycmVzcG9uZGluZyB0byBkbWFzIGFiaXZlLgo+ICstIHRpLHBzaWwtY29u
ZmlnKiAtIFVETUEgUFNJTCBuYXRpdmUgUGVyaXBoZXJhbCB1c2luZyBwYWNrZXQgbW9kZS4KPiAr
CVNBMlVMIG11c3QgaGF2ZSBFUElCKEV4dGVuZGVkIHByb3RvY2FsIGluZm9ybWF0aW9uIGJsb2Nr
KQo+ICsJYW5kIFBTREFUQShwcm90b2NvbCBzcGVjaWZpYyBkYXRhKSBwcm9wZXJ0aWVzLgoKSWYg
dGksbmVlZHMtZXBpYiBpcyByZXF1aXJlZCwgdGhlbiB3aHkgZG8geW91IG5lZWQgdG8gc3BlY2lm
eSBpdCBpbiBEVD8gCkluIGFueSBjYXNlLCB0aGlzIGFsbCBzZWVtcyBsaWtlIGNoYW5uZWwgY29u
ZmlnIGluZm8gdGhhdCBzaG91bGQgYmUgcGFydCAKb2YgdGhlICNkbWEtY2VsbHMuCgpBbHNvLCBk
b24ndCB1c2UgdmVuZG9yIHByZWZpeGVzIG9uIG5vZGUgbmFtZXMuCgo+ICsKPiArRXhhbXBsZSBB
TTY1NCBTQTJVTDoKPiArY3J5cHRvOiBjcnlwdG9ANEUwMDAwMCB7Cj4gKwljb21wYXRpYmxlID0g
InRpLHNhMnVsLWNyeXB0byI7Cj4gKwlyZWcgPSA8MHgwIDB4NEUwMDAwMCAweDAgMHgxMjAwPjsK
PiArCXRpLHBzaWwtYmFzZSA9IDwweDQwMDA+Owo+ICsKPiArCWRtYXMgPSA8Jm1haW5fdWRtYXAg
JmNyeXB0byAwIFVETUFfRElSX1RYPiwKPiArCQk8Jm1haW5fdWRtYXAgJmNyeXB0byAwIFVETUFf
RElSX1JYPiwKPiArCQk8Jm1haW5fdWRtYXAgJmNyeXB0byAxIFVETUFfRElSX1JYPjsKPiArCWRt
YS1uYW1lcyA9ICJ0eCIsICJyeDEiLCAicngyIjsKPiArCj4gKwl0aSxwc2lsLWNvbmZpZzAgewo+
ICsJCWxpbnV4LHVkbWEtbW9kZSA9IDxVRE1BX1BLVF9NT0RFPjsKPiArCQl0aSxuZWVkcy1lcGli
Owo+ICsJCXRpLHBzZC1zaXplID0gPDY0PjsKPiArCX07Cj4gKwo+ICsJdGkscHNpbC1jb25maWcx
IHsKPiArCQlsaW51eCx1ZG1hLW1vZGUgPSA8VURNQV9QS1RfTU9ERT47Cj4gKwkJdGksbmVlZHMt
ZXBpYjsKPiArCQl0aSxwc2Qtc2l6ZSA9IDw2ND47Cj4gKwl9Owo+ICsKPiArCXRpLHBzaWwtY29u
ZmlnMiB7Cj4gKwkJbGludXgsdWRtYS1tb2RlID0gPFVETUFfUEtUX01PREU+Owo+ICsJCXRpLG5l
ZWRzLWVwaWI7Cj4gKwkJdGkscHNkLXNpemUgPSA8NjQ+Owo+ICsJfTsKPiArfTsKPiAtLSAKPiAy
LjE3LjEKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
