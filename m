Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B80DF10B81
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 18:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFl+sTtE8uDt+T2N9awn4o5hf0SFN5sQzDMy3WaMrsI=; b=jcfUktgeQoZMQm
	fyqqPmvt6KsIBFK328W3EFQ4HePL2GJl8sOG/kyXpUBOhyeJ/u3/E6Sm5IHLg1yg4OnFJgUGpu5tT
	4MEBDtRF1Ft8K3UVD507ejpc2g5qz5k8AsDlrreJMWrUq/b+5BhauNOIHLuCBGAkQnTb4TcciGXha
	PWTPWjjObQR7G7nnh9ac+OJ5mom4sIrk/jMCD+ivfBQz5CPAhrubI5b1eAhrvaSGTDuAdwXbfJBxE
	6ieM2rwIOVs43XevMv5wZrueorG0YpRC/Ov/1pfjIlWVSng0ggJcH9S1MyEQPpjTxw/7n87d/87Ai
	ezl0xMiqqimcczmFsvWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLsL0-0008Cx-T8; Wed, 01 May 2019 16:44:06 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLsKu-0008Cc-03
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 16:44:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id e9so664037wrc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 09:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ja32Gyq70+OBBkHaIRUUmyD6+MuN36kZtNVGyzR7Kds=;
 b=QJyowOmmTnmNnf6AH+FAsnGcUOr0ytafxT9RK+CxEOHwC8ap6vZ1zWX6O2Kk17ZriZ
 XGH30PYRWbToBQfGlunFmVkU0RBqbNPiOMxRycGvT1O5nYiFPXxBa0lMhTobDaEYw6Vw
 z39iPKjdnkYVMhilXAkAr+4yLUaSdZyWJ2/XmkwFi+srx9lWJt1VA/inNBl3b5ZL4dNS
 igK1MQ96s39JGKc//FzFelocBPmJFgOdPC+k4CnxTT4BqtzjhokDS/dkgWza9fq2Hslr
 oiQBecKo+PgXcdgfXsb/xIfSrJJCdzWR4v6LN03qylgMdeD7InfHppIwXbLoyHu5rNN9
 kGDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ja32Gyq70+OBBkHaIRUUmyD6+MuN36kZtNVGyzR7Kds=;
 b=SrBadyQIEgAw50xiDgof9XTFsmBU8FUVRn4qpYtmYmK6LtRSE0xuhI5hlStFpohS7W
 QNavnyM9VFx9c2mTF2gpJuhMIM5gfk81v9mNE4c4c02CdnWc26/Gbwo6/+dF8xwHHw4/
 QBNDkPnIYGktNgDKZoldpplCXUkvU/ki6K2GDY1wXWRmc5bqjCrF47pMQW/v4QWhNuyG
 5InUrUkHTOwqIQQJe6pVQ5xaCXFL850ogUc5/XWFGBwf/m3cnAHp/IfSBgH8Py85KqFJ
 F1ANZJgAKKTzjTBJFQEh+Ty0qPtPWzDFCeGvnrud5Suqu5IZG7KJXUUGe/oK7Kk3SSxX
 0cAQ==
X-Gm-Message-State: APjAAAXN6ykVeY6vERqu+dza9N2EPgflulKsS2bQWqPAiQCbvPzV95HR
 Cngu6xKQmnaZvC32xKxPq+c=
X-Google-Smtp-Source: APXvYqyGKXUa+HsFCcDWAa+oHzRiEjPOGUKi3uVOgfUUfdd9cbxpa6W7tPnpufDQcC3/nMAKB8QO8g==
X-Received: by 2002:a5d:6904:: with SMTP id t4mr1738675wru.202.1556729037901; 
 Wed, 01 May 2019 09:43:57 -0700 (PDT)
Received: from [10.67.50.73] ([192.19.223.250])
 by smtp.googlemail.com with ESMTPSA id v2sm21710353wrq.12.2019.05.01.09.43.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 09:43:56 -0700 (PDT)
Subject: Re: [PATCH] arm64: Demote boot and shutdown messages to pr_debug
To: Robin Murphy <robin.murphy@arm.com>, Mark Rutland <mark.rutland@arm.com>
References: <20190430223835.23513-1-f.fainelli@gmail.com>
 <20190501104733.GB11740@lakrids.cambridge.arm.com>
 <61e61f14-c991-179f-66a9-a98dcee6c10b@arm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <f99ffea3-598a-4ac9-52ff-b1501a6cfc04@gmail.com>
Date: Wed, 1 May 2019 09:43:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <61e61f14-c991-179f-66a9-a98dcee6c10b@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_094400_044445_F77A86EA 
X-CRM114-Status: GOOD (  29.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>, rmk+kernel@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, Sudeep Holla <sudeep.holla@arm.com>,
 Suzuki K Poulose <Suzuki.Poulose@arm.com>, Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8xLzE5IDQ6MDIgQU0sIFJvYmluIE11cnBoeSB3cm90ZToKPiBPbiAwMS8wNS8yMDE5IDEx
OjQ3LCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4+IE9uIFR1ZSwgQXByIDMwLCAyMDE5IGF0IDAzOjM4
OjMxUE0gLTA3MDAsIEZsb3JpYW4gRmFpbmVsbGkgd3JvdGU6Cj4+PiBTaW1pbGFyIHRvIGNvbW1p
dHMgYzY4YjAyNzRmYjNjZiAoIkFSTTogcmVkdWNlICJCb290ZWQgc2Vjb25kYXJ5Cj4+PiBwcm9j
ZXNzb3IiIG1lc3NhZ2UgdG8gZGVidWcgbGV2ZWwiKSBhbmQgMDM1ZTc4NzU0M2RlNyAoIkFSTTog
ODY0NC8xOgo+Pj4gUmVkdWNlICJDUFU6Cj4+PiBzaHV0ZG93biIgbWVzc2FnZSB0byBkZWJ1ZyBs
ZXZlbCIpLCBkZW1vdGUgdGhlIHNlY29uZGFyeV9zdGFydF9rZXJuZWwoKQo+Pj4gYW5kIF9fY3B1
X2RpZSgpIG1lc3NhZ2VzIGZyb20gaW5mbywgcmVzcGVjdGl2ZWx5IG5vdGljZSB0byBkZWJ1Zy4g
V2hpbGUKPj4+IHdlIGFyZSBhdCBpdCwgYWxzbyBkbyB0aGlzIGZvciBjcHVfcHNjaV9jcHVfa2ls
bCgpIHdoaWNoIGlzIHJlZHVuZGFudAo+Pj4gd2l0aCBfX2NwdV9kaWUoKS4KPj4+Cj4+PiBUaGlz
IGhlbHBzIGltcHJvdmUgdGhlIGFtb3VudCBvZiBwb3NzaWJsZSBob3RwbHVnIGN5Y2xlcyBieSBh
cm91bmQgKzUwJQo+Pj4gb24gQVJDSF9CUkNNU1RCLgo+Pgo+PiBDb3VsZCB5b3UgZWxhYm9yYXRl
IG9uIHdoeSB0aGF0IG1hdHRlcnM/Cj4gCj4gWWVhaCwgaW4gZ2VuZXJhbCBpZiB5b3UgaGF2ZSBh
IHNsb3cgc2VyaWFsIGNvbnNvbGUgdGhlbiByZW1vdmluZyBhbGwgdGhlCj4gcHJpbnRzIGZyb20g
dGhlIGtlcm5lbCBtYWtlcyBsb3RzIG9mIHRoaW5ncyBtdWNoIGZhc3RlciwgYnV0IHRoYXQncyBu
b3QKPiBuZWNlc3NhcmlseSBhIGdvb2QgYXJndW1lbnQgZm9yIGRvaW5nIHNvLiBJZiB0aGF0J3Mg
YSBwcm9ibGVtIHRoYXQKPiByZWFsbHkgY29uY2VybnMgdXNlcnMgdGhlbiBJJ2QgaGF2ZSB0byBh
c2sgd2h5IHRoZXkgYXJlbid0IHVzaW5nIGEKPiBzdHJpY3RlciBsb2dsZXZlbCBvciBhIGRpZmZl
cmVudCBjb25zb2xlIHRvIGJlZ2luIHdpdGguCgpTZWUgbXkgcmVzcG9uc2UgdG8gTWFyayBmb3Ig
c3BlY2lmaWMgdXNlIGNhc2VzLiBUZWFjaGluZyB1c2VycyBhYm91dApjaGFuZ2luZyB0aGVpciBk
ZWZhdWx0IHByaW50IGxldmVscyBpcyBjZXJ0YWlubHkgYW4gb3B0aW9uLCBhbHRob3VnaAp0aGV5
IHdpbGwgbGlrZWx5IHN0YXJ0IHdvbmRlcmluZyB3aHkgb3RoZXIgbWVzc2FnZXMgYXJlIG5vdyBn
b25lIGFzCndlbGwuIFRoZXJlIGlzIG5vdCB1bmZvcnR1bmF0ZWx5IGEgY2hvaWNlIG9mIGEgZmFz
dGVyIGNvbnNvbGUgb24gdGhvc2UKcGxhdGZvcm1zLgoKVGhlIHByaW50IGxldmVscyBhcmUgbm90
IG5lY2Vzc2FyaWx5IGNvbnNpc3RlbnQgKGluZm8gdnMuIG5vdGljZSkgYW5kIHdlCmhhdmUgcGxl
bnR5IG9mIG1lc3NhZ2VzIGZvciB3aGVuIHRoZSBDUFUgZG9lcyBub3QgY29tZSBvbmxpbmUgc28g
dGVsbGluZwp1cyB3aGVuIGl0IGRvZXMgaXMgY29tcGxldGVseSBzdXBlcmZsdW91cyBhbmQgZG9l
cyBub3QgYnJpbmcgbXVjaCB2YWx1ZQphbmQganVzdCBnZXRzIGluIHRoZSB3YXkgb2YgYmVpbmcg
YWJsZSB0byBkbyB0aGF0IG1vcmUgb2Z0ZW4uCgo+IAo+PiBlLmcuIGlzIHRoaXMganVzdCBmb3Ig
dGVzdGluZywgb3IgZG9lcyB0aGlzIG1hdHRlciBpbiBzb21lIHNodXRkb3duIG9yCj4+IGhpYmVy
bmF0ZSBzY2VuYXJpbz8KPj4KPj4+IFNpZ25lZC1vZmYtYnk6IEZsb3JpYW4gRmFpbmVsbGkgPGYu
ZmFpbmVsbGlAZ21haWwuY29tPgo+Pj4gLS0tCj4+PiDCoCBhcmNoL2FybTY0L2tlcm5lbC9wc2Np
LmMgfCAyICstCj4+PiDCoCBhcmNoL2FybTY0L2tlcm5lbC9zbXAuY8KgIHwgNCArKy0tCj4+PiDC
oCAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4+Cj4+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvcHNjaS5jIGIvYXJjaC9hcm02NC9rZXJu
ZWwvcHNjaS5jCj4+PiBpbmRleCA4Y2RhZjI1ZTk5Y2QuLmE3ODU4MTA0NmM4MCAxMDA2NDQKPj4+
IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL3BzY2kuYwo+Pj4gKysrIGIvYXJjaC9hcm02NC9rZXJu
ZWwvcHNjaS5jCj4+PiBAQCAtOTYsNyArOTYsNyBAQCBzdGF0aWMgaW50IGNwdV9wc2NpX2NwdV9r
aWxsKHVuc2lnbmVkIGludCBjcHUpCj4+PiDCoMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCAxMDsg
aSsrKSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZXJyID0gcHNjaV9vcHMuYWZmaW5pdHlfaW5m
byhjcHVfbG9naWNhbF9tYXAoY3B1KSwgMCk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGVy
ciA9PSBQU0NJXzBfMl9BRkZJTklUWV9MRVZFTF9PRkYpIHsKPj4+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHByX2luZm8oIkNQVSVkIGtpbGxlZC5cbiIsIGNwdSk7Cj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBwcl9kZWJ1ZygiQ1BVJWQga2lsbGVkLlxuIiwgY3B1KTsKPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+
IMKgIGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9zbXAuYyBiL2FyY2gvYXJtNjQva2Vy
bmVsL3NtcC5jCj4+PiBpbmRleCA4MjRkZTcwMzg5NjcuLjcxZmQyYjVhM2YwZSAxMDA2NDQKPj4+
IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL3NtcC5jCj4+PiArKysgYi9hcmNoL2FybTY0L2tlcm5l
bC9zbXAuYwo+Pj4gQEAgLTI1OSw3ICsyNTksNyBAQCBhc21saW5rYWdlIG5vdHJhY2Ugdm9pZCBz
ZWNvbmRhcnlfc3RhcnRfa2VybmVsKHZvaWQpCj4+PiDCoMKgwqDCoMKgwqAgKiB0aGUgQ1BVIG1p
Z3JhdGlvbiBjb2RlIHRvIG5vdGljZSB0aGF0IHRoZSBDUFUgaXMgb25saW5lCj4+PiDCoMKgwqDC
oMKgwqAgKiBiZWZvcmUgd2UgY29udGludWUuCj4+PiDCoMKgwqDCoMKgwqAgKi8KPj4+IC3CoMKg
wqAgcHJfaW5mbygiQ1BVJXU6IEJvb3RlZCBzZWNvbmRhcnkgcHJvY2Vzc29yIDB4JTAxMGx4IFsw
eCUwOHhdXG4iLAo+Pj4gK8KgwqDCoCBwcl9kZWJ1ZygiQ1BVJXU6IEJvb3RlZCBzZWNvbmRhcnkg
cHJvY2Vzc29yIDB4JTAxMGx4IFsweCUwOHhdXG4iLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3B1LCAodW5zaWduZWQgbG9uZyltcGlkciwKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlYWRfY3B1aWRfaWQo
KSk7Cj4+Cj4+IEkgZ2VuZXJhbGx5IGFncmVlIHRoYXQgd2UgZG9uJ3QgbmVlZCB0byBiZSB2ZXJi
b3NlLCBhbmQgZGVtb3RpbmcgdGhlc2UKPj4gdG8gZGVidWcgaXMgZmluZSwgYnV0IGl0J3MgYSBz
aGFtZSB0aGF0IHRoZXNlIHdvbid0IGJlIGFjY2Vzc2libGUgaW4KPj4gZGVmY29uZmlnLgo+Pgo+
PiBJIHdvbmRlciBpZiB3ZSBzaG91bGQgZW5hYmxlIERZTkFNSUNfREVCVUcgc28gdGhhdCB3ZSBj
YW4gdHVybiB0aGVzZSBvbgo+PiBmcm9tIHRoZSBrZXJuZWwgY29tbWFuZCBsaW5lLCBvciBpZiB3
ZSBzaG91bGQgaGF2ZSBzb21ldGhpbmcgbGlrZSBhCj4+IHZlcmJvc2VfaG90cGx1ZyBvcHRpb24g
c3BlY2lmaWNhbGx5IGZvciB0aGVzZSBtZXNzYWdlcy4KPiAKPiBXZSd2ZSBoYWQgRFlOQU1JQ19E
RUJVRz15IGluIGRlZmNvbmZpZyBmb3IgYSB3aGlsZSBhbHJlYWR5IDovCj4gCj4gUm9iaW4uCj4g
Cj4+Cj4+IFRoYW5rcywKPj4gTWFyay4KPj4KPj4+IMKgwqDCoMKgwqAgdXBkYXRlX2NwdV9ib290
X3N0YXR1cyhDUFVfQk9PVF9TVUNDRVNTKTsKPj4+IEBAIC0zNDgsNyArMzQ4LDcgQEAgdm9pZCBf
X2NwdV9kaWUodW5zaWduZWQgaW50IGNwdSkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBwcl9jcml0
KCJDUFUldTogY3B1IGRpZG4ndCBkaWVcbiIsIGNwdSk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0dXJuOwo+Pj4gwqDCoMKgwqDCoCB9Cj4+PiAtwqDCoMKgIHByX25vdGljZSgiQ1BVJXU6IHNo
dXRkb3duXG4iLCBjcHUpOwo+Pj4gK8KgwqDCoCBwcl9kZWJ1ZygiQ1BVJXU6IHNodXRkb3duXG4i
LCBjcHUpOwo+Pj4gwqAgwqDCoMKgwqDCoCAvKgo+Pj4gwqDCoMKgwqDCoMKgICogTm93IHRoYXQg
dGhlIGR5aW5nIENQVSBpcyBiZXlvbmQgdGhlIHBvaW50IG9mIG5vIHJldHVybiB3LnIudC4KPj4+
IC0twqAKPj4+IDIuMTcuMQo+Pj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPj4gbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo+PgoKCi0tIApGbG9yaWFu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
