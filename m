Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315964B07D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 05:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijxqW7+J7Bih6bx8qlyuChWFmFHOPQxrYLw5ba7cD4Q=; b=X8GK9rkmroQ90H
	F9Xq0qOxf9m8pL4WxMtzZaM0uGnC4ZXpPcL/6OasET6DIXjCVAGNlY5/QOYNsEe6lMdlqV2n4VKZ8
	f4QhJrcZuqrQzs/ZFZJLaejoo8kotkO+CyZ+LDW/7Dacpe1yEKDDnaD120foZ4n1Yotscn6xEATJB
	hiYEnoz4C4CRdDlDAgWTqB31Bd7XtugOmIKmzwztMocBBykSmbG7HSEosMExLAThvd4pfHb3PSSLT
	cgmdVyh0J/KCtxp3aqt/IGcEZkbOPmLfxNgvlHFbMDSwUWELjFuGR7FbSi/6JujeihHmZP0l4CFqL
	c/ZMboE/H4XWX7DyDCXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdRWW-0008Cd-Ky; Wed, 19 Jun 2019 03:44:36 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdRWL-0008Bk-3P
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 03:44:26 +0000
Received: by mail-pg1-x543.google.com with SMTP id 83so8821065pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 20:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=EGHEaYjfXjUJTdauQ4fG3Qy+hvFG8OA2oIP4ZHxwa88=;
 b=W+j0kD9yojaW+hMlyk96Hha2xluF+17N7BX9ERK2TgvEPC51BC4u2dq+nw03r1DWnx
 qvEJnZfOncY8GNkfHLYyFd1gUqK/DmwkvbMMbTo2XYoe4knHRkooq2LDS7hxglixe+lt
 HsY3uvWPW/XZKJ44ul+TFBuD0gLNwY9RuVBPX1VgqzRWsFUjTBvVUaOh+u4eFiw+CObP
 Jp83FXUzxjExnl4Uyx+Nr2FrIZkfzQjY4+aPzkAcfTPALITve38+sCyAndT+LyNUeJU7
 T/GcE419O6pmuHckNP5CbqtcPwnuADo1M5bulo/e0geUj9rCOlWLnno8sobB9iPLWqlm
 gz1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=EGHEaYjfXjUJTdauQ4fG3Qy+hvFG8OA2oIP4ZHxwa88=;
 b=tLU33s/QoFiMi5jgUKMLT3a07OvWWTJ28hRxl+WpEIo/8DluWcp5OoGbaDGFmrz4ng
 mrwQvAierczvCiVE/XjxHoNDsFAt91Kqfgt8nO5zkfE0dGkcXUvcXbCumGKXB2+o49jc
 JY2Mo6qZFL+wPGpcTEMQw58t5i5Fijovj8whtnWm19fS29U7AwJAwYQ0k5nQPRs2tzD2
 L0bVKaFIGfdkBFV6I+eTXfATG5vL59Yo6bH5N2ds8oji2hHbpdVzJMAWvL4XYN8Kjx0u
 /T02MVOudHQRtIPktDIppV8RQeJ4HvdubAm2AuNhBcBxBpaO4oBlsKPAfGPjPWbPt7uE
 o1yg==
X-Gm-Message-State: APjAAAV3b689JkTt0Pdsv7KCFxcjagpF7lQpYsNx73nvDd+owEJaTdiF
 N7rcWmTSa1MXkhhq6jtoH6g=
X-Google-Smtp-Source: APXvYqwB7lHrI569djdy3eQ/PTdJiIHmfUvLO5bVVwFEwAzySywuMBRsshv/4G+mG7op0lLRUOHdYQ==
X-Received: by 2002:a62:68c4:: with SMTP id
 d187mr126870371pfc.245.1560915864395; 
 Tue, 18 Jun 2019 20:44:24 -0700 (PDT)
Received: from localhost (193-116-92-108.tpgi.com.au. [193.116.92.108])
 by smtp.gmail.com with ESMTPSA id r1sm11612280pfq.100.2019.06.18.20.44.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 20:44:23 -0700 (PDT)
Date: Wed, 19 Jun 2019 13:39:19 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 4/4] mm/vmalloc: Hugepage vmalloc mappings
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-mm@kvack.org,
 Russell Currey <ruscur@russell.cc>
References: <20190610043838.27916-1-npiggin@gmail.com>
 <20190610043838.27916-4-npiggin@gmail.com>
 <b79bf11d-43c7-88c9-8395-239625a1bdcf@c-s.fr>
In-Reply-To: <b79bf11d-43c7-88c9-8395-239625a1bdcf@c-s.fr>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1560915223.if2qg1yc7k.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_204425_168978_2BEECD94 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hyaXN0b3BoZSBMZXJveSdzIG9uIEp1bmUgMTEsIDIwMTkgMzozOSBwbToKPiAKPiAKPiBMZSAx
MC8wNi8yMDE5IMOgIDA2OjM4LCBOaWNob2xhcyBQaWdnaW4gYSDDqWNyaXTCoDoKPj4gRm9yIHBs
YXRmb3JtcyB0aGF0IGRlZmluZSBIQVZFX0FSQ0hfSFVHRV9WTUFQLCBoYXZlIHZtYXAgYWxsb3cg
dm1hbGxvYyB0bwo+PiBhbGxvY2F0ZSBodWdlIHBhZ2VzIGFuZCBtYXAgdGhlbQo+IAo+IFdpbGwg
dGhpcyBiZSBjb21wYXRpYmxlIHdpdGggUnVzc2VsbCdzIHNlcmllcyAKPiBodHRwczovL3BhdGNo
d29yay5vemxhYnMub3JnL3BhdGNoLzEwOTk4NTcvIGZvciB0aGUgaW1wbGVtZW50YXRpb24gb2Yg
Cj4gU1RSSUNUX01PRFVMRV9SV1ggPwo+IEkgc2VlIHRoYXQgYXBwbHlfdG9fcGFnZV9yYW5nZSgp
IGhhdmUgdGhpbmdzIGxpa2UgQlVHX09OKHB1ZF9odWdlKCpwdWQpKTsKPiAKPiBNaWdodCBhbHNv
IGJlIGFuIGlzc3VlIGZvciBhcm02NCBhcyBJIHRoaW5rIFJ1c3NlbGwncyBpbXBsZW1lbnRhdGlv
biAKPiBjb21lcyBmcm9tIHRoZXJlLgoKWWVhaCB5b3UncmUgcmlnaHQgKGFuZCBjb3JyZWN0IGFi
b3V0IGFybTY0IHByb2JsZW0pLiBJJ2xsIGZpeCB0aGF0IHVwLgoKPj4gK3N0YXRpYyBpbnQgdm1h
cF9ocGFnZXNfcmFuZ2UodW5zaWduZWQgbG9uZyBzdGFydCwgdW5zaWduZWQgbG9uZyBlbmQsCj4+
ICsJCQkgICBwZ3Byb3RfdCBwcm90LCBzdHJ1Y3QgcGFnZSAqKnBhZ2VzLAo+PiArCQkJICAgdW5z
aWduZWQgaW50IHBhZ2Vfc2hpZnQpCj4+ICt7Cj4+ICsJQlVHX09OKHBhZ2Vfc2hpZnQgIT0gUEFH
RV9TSVpFKTsKPiAKPiBEbyB3ZSByZWFsbHkgbmVlZCBhIEJVR19PTigpIHRoZXJlID8gV2hhdCBo
YXBwZW5zIGlmIHRoaXMgY29uZGl0aW9uIGlzIAo+IHRydWUgPwoKSWYgaXQncyB0cnVlIHRoZW4g
dm1hcF9wYWdlc19yYW5nZSB3b3VsZCBkaWUgaG9ycmlibHkgcmVhZGluZyBvZmYgdGhlCmVuZCBv
ZiB0aGUgcGFnZXMgYXJyYXkgdGhpbmtpbmcgdGhleSBhcmUgc3RydWN0IHBhZ2UgcG9pbnRlcnMu
CgpJIGd1ZXNzIGl0IGNvdWxkIHJldHVybiBmYWlsdXJlLgoKPj4gKwlyZXR1cm4gdm1hcF9wYWdl
c19yYW5nZShzdGFydCwgZW5kLCBwcm90LCBwYWdlcyk7Cj4+ICt9Cj4+ICsjZW5kaWYKPj4gKwo+
PiArCj4+ICAgaW50IGlzX3ZtYWxsb2Nfb3JfbW9kdWxlX2FkZHIoY29uc3Qgdm9pZCAqeCkKPj4g
ICB7Cj4+ICAgCS8qCj4+IEBAIC00NjIsNyArNDk4LDcgQEAgc3RydWN0IHBhZ2UgKnZtYWxsb2Nf
dG9fcGFnZShjb25zdCB2b2lkICp2bWFsbG9jX2FkZHIpCj4+ICAgewo+PiAgIAl1bnNpZ25lZCBs
b25nIGFkZHIgPSAodW5zaWduZWQgbG9uZykgdm1hbGxvY19hZGRyOwo+PiAgIAlzdHJ1Y3QgcGFn
ZSAqcGFnZSA9IE5VTEw7Cj4+IC0JcGdkX3QgKnBnZCA9IHBnZF9vZmZzZXRfayhhZGRyKTsKPj4g
KwlwZ2RfdCAqcGdkOwo+PiAgIAlwNGRfdCAqcDRkOwo+PiAgIAlwdWRfdCAqcHVkOwo+PiAgIAlw
bWRfdCAqcG1kOwo+PiBAQCAtNDc0LDI3ICs1MTAsMzggQEAgc3RydWN0IHBhZ2UgKnZtYWxsb2Nf
dG9fcGFnZShjb25zdCB2b2lkICp2bWFsbG9jX2FkZHIpCj4+ICAgCSAqLwo+PiAgIAlWSVJUVUFM
X0JVR19PTighaXNfdm1hbGxvY19vcl9tb2R1bGVfYWRkcih2bWFsbG9jX2FkZHIpKTsKPj4gICAK
Pj4gKwlwZ2QgPSBwZ2Rfb2Zmc2V0X2soYWRkcik7Cj4+ICAgCWlmIChwZ2Rfbm9uZSgqcGdkKSkK
Pj4gICAJCXJldHVybiBOVUxMOwo+PiArCj4+ICAgCXA0ZCA9IHA0ZF9vZmZzZXQocGdkLCBhZGRy
KTsKPj4gICAJaWYgKHA0ZF9ub25lKCpwNGQpKQo+PiAgIAkJcmV0dXJuIE5VTEw7Cj4+IC0JcHVk
ID0gcHVkX29mZnNldChwNGQsIGFkZHIpOwo+PiArI2lmZGVmIENPTkZJR19IQVZFX0FSQ0hfSFVH
RV9WTUFQCj4gCj4gRG8gd2UgcmVhbGx5IG5lZWQgdGhhdCBpZmRlZiA/IFdvbid0IHA0ZF9sYXJn
ZSgpIGFsd2F5cyByZXR1cm4gMCB3aGVuIGlzIAo+IG5vdCBzZXQgPwo+IE90aGVyd2lzZSwgY291
bGQgd2UgdXNlIElTX0VOQUJMRUQoQ09ORklHX0hBVkVfQVJDSF9IVUdFX1ZNQVApIGluc3RlYWQg
Pwo+IAo+IFNhbWUgc2V2ZXJhbCBwbGFjZXMgYmVsb3cuCgpQb3NzaWJseSBzb21lIG9mIHRoZW0g
YXJlIG5vdCBkZWZpbmVkIHdpdGhvdXQgSEFWRV9BUkNIX0hVR0VfVk1BUApJIHRoaW5rLiBJJ2xs
IHRyeSB0byBhcHBseSB0aGlzIHBhdHRlcm4gYXMgbXVjaCBhcyBwb3NzaWJsZS4KCj4+IEBAIC0y
NTQxLDE0ICsyNTkwLDE3IEBAIHN0YXRpYyB2b2lkICpfX3ZtYWxsb2NfYXJlYV9ub2RlKHN0cnVj
dCB2bV9zdHJ1Y3QgKmFyZWEsIGdmcF90IGdmcF9tYXNrLAo+PiAgIAkJCQkgcGdwcm90X3QgcHJv
dCwgaW50IG5vZGUpCj4+ICAgewo+PiAgIAlzdHJ1Y3QgcGFnZSAqKnBhZ2VzOwo+PiArCXVuc2ln
bmVkIGxvbmcgYWRkciA9ICh1bnNpZ25lZCBsb25nKWFyZWEtPmFkZHI7Cj4+ICsJdW5zaWduZWQg
bG9uZyBzaXplID0gZ2V0X3ZtX2FyZWFfc2l6ZShhcmVhKTsKPj4gKwl1bnNpZ25lZCBpbnQgcGFn
ZV9zaGlmdCA9IGFyZWEtPnBhZ2Vfc2hpZnQ7Cj4+ICsJdW5zaWduZWQgaW50IHNoaWZ0ID0gcGFn
ZV9zaGlmdCArIFBBR0VfU0hJRlQ7Cj4+ICAgCXVuc2lnbmVkIGludCBucl9wYWdlcywgYXJyYXlf
c2l6ZSwgaTsKPj4gICAJY29uc3QgZ2ZwX3QgbmVzdGVkX2dmcCA9IChnZnBfbWFzayAmIEdGUF9S
RUNMQUlNX01BU0spIHwgX19HRlBfWkVSTzsKPj4gICAJY29uc3QgZ2ZwX3QgYWxsb2NfbWFzayA9
IGdmcF9tYXNrIHwgX19HRlBfTk9XQVJOOwo+PiAgIAljb25zdCBnZnBfdCBoaWdobWVtX21hc2sg
PSAoZ2ZwX21hc2sgJiAoR0ZQX0RNQSB8IEdGUF9ETUEzMikpID8KPj4gLQkJCQkJMCA6Cj4+IC0J
CQkJCV9fR0ZQX0hJR0hNRU07Cj4+ICsJCQkJCTAgOiBfX0dGUF9ISUdITUVNOwo+IAo+IFRoaXMg
cGF0Y2ggaXMgYWxyZWFkeSBxdWl0ZSBiaWcsIHNob3VsZG4ndCB0aGlzIGtpbmQgb2YgdW5yZWxh
dGVkIAo+IGNsZWFudXBzIGJlIGluIGFub3RoZXIgcGF0Y2ggPwoKT2theSwgMiBhZ2FpbnN0IDEu
IEknbGwgbWluaW1pc2UgY2hhbmdlcyBsaWtlIHRoaXMuCgpUaGFua3MsCk5pY2sKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
