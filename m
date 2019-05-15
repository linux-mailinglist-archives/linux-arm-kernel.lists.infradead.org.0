Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F14891F65B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 16:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BO+Az57PY023Lp/GKszKLuTXcW2X+alok22gK5FXAFQ=; b=RFyZAUU8FARYWo
	McQKGyvtw1MlFJjE1NpBI4cm0+3aG8J14phF8ik9LKky1h4uZQzBLT/0UpPYKOjWOG6N91iiTGsf8
	e2f994K923rj+kh/etf6NKlIwP4RhhS1Rzqvjr5gpKVLFXhQvMD8J+yrqujsKVdUbWbdFV5lKxpfx
	b1hw6v7kqOaGN7q9nDig2UxPlUdZ7EOMTLDP+62lROrG3ZrmlSKqEUrhEhlqr98RxIJoJW7sxrK48
	dpcHeioxojH8skvvPib2LJHRyepyL7YC/h4wljCc0wX62iDpuCvr40jTQf4h+DCuJKqUWBR/O+WEd
	TeQpHVfQLieuYHFj01QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQui6-0004Pd-FC; Wed, 15 May 2019 14:16:46 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQuhz-0004PB-Fc
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 14:16:41 +0000
Received: by mail-ed1-x542.google.com with SMTP id p26so85161edr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 07:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=5teuJo4XSRrnL6XxnC+QODipuz2WCzByYGo45sEdpQE=;
 b=gAJyzptkeah2CnPVHf8ki6Ey+Aje7kt4hiLFQY/UoXftAeb5KMt9kDcge1dL70700f
 v4lzCF24qKMgoDDJqK48PCIsuOAEIEWh56QloYL0Zx1Ytcl8wEHGZj2FHlHTDjeh1xHN
 qgtG9Lh2tYpVWiUdw1UsD0iGHta3lP4Ta8QIkzIE14Ud+jGfSqHpCDEAvWIr2Z7unvQT
 7zkggOJrHmZj/c4eERJMnDK2ju7392d0B+Atitgv36pLJz4hMjFGB1lnPt+6SoqUGyah
 IPYOEdYPIgWXRHQq6puWtz6SFEJeqqmkoJuWNHfimIVIYgR96+2ydELKuFEvw/jF51Hq
 +B1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=5teuJo4XSRrnL6XxnC+QODipuz2WCzByYGo45sEdpQE=;
 b=dLm3DjpGifvCyzOq/fmfYln8r+g7icicBl4YYXp0/NKv2l1Q4Y2Alcn2nYU1pV6pyu
 1NbYNytNR7tE2NgYkOPRUCJDKlSPpMM1U6i4uzFZkyOnX/DdJE5tnNjKWYNAKMaMDEfA
 zokiwTxpDlt5pjFd35/3jX+pH18etfE72/2cZqaMRag8mv60yGDHB1VkbWVVddXXJAoa
 PjiEKc0B3lyhNg3b7oOY/JYzH4LH5HDhl6sFrCYlZ9S8PLbHSR8UULFylmsbnSENXgiC
 1geXT4i7EGDmoIwTwMk3Qj2zOMK1d7Fk+zW6ZXIRrArEijEqkXmX1gdDc1HbRXOvmpaG
 kKaw==
X-Gm-Message-State: APjAAAXBUP3expQYj1A3UBiAj5UYeZXoqioO4DTKLqWGQij7IxkueQTJ
 UJVyRsl0KZ128OCRCVItgxwSRQ==
X-Google-Smtp-Source: APXvYqz/5w9Bko49z66nfUW8rJGtWbKGmV1irTYSDrNlaxrZSh+Ve4PPN0bCyixGXoTczpolwiOJ2g==
X-Received: by 2002:a50:8bbb:: with SMTP id m56mr44288042edm.230.1557929797459; 
 Wed, 15 May 2019 07:16:37 -0700 (PDT)
Received: from brauner.io ([178.19.218.101])
 by smtp.gmail.com with ESMTPSA id h13sm493114ejs.3.2019.05.15.07.16.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 15 May 2019 07:16:36 -0700 (PDT)
Date: Wed, 15 May 2019 16:16:35 +0200
From: Christian Brauner <christian@brauner.io>
To: Yann Droneaud <ydroneaud@opteya.com>
Subject: Re: [PATCH 1/2] pid: add pidfd_open()
Message-ID: <20190515141634.lrc5ynllcmjr64mn@brauner.io>
References: <20190515100400.3450-1-christian@brauner.io>
 <4c5ae46657e1931a832def5645db61eb0bf1accd.camel@opteya.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c5ae46657e1931a832def5645db61eb0bf1accd.camel@opteya.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_071639_663341_36CC0FFF 
X-CRM114-Status: GOOD (  25.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-api@vger.kernel.org, elena.reshetova@intel.com,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 luto@kernel.org, oleg@redhat.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 cyphar@cyphar.com, torvalds@linux-foundation.org, linux-mips@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, linux-alpha@vger.kernel.org,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMDQ6MDA6MjBQTSArMDIwMCwgWWFubiBEcm9uZWF1ZCB3
cm90ZToKPiBIaSwKPiAKPiBMZSBtZXJjcmVkaSAxNSBtYWkgMjAxOSDDoCAxMjowMyArMDIwMCwg
Q2hyaXN0aWFuIEJyYXVuZXIgYSDDqWNyaXQgOgo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEva2VybmVs
L3BpZC5jIGIva2VybmVsL3BpZC5jCj4gPiBpbmRleCAyMDg4MTU5OGJkZmEuLjIzN2QxOGQ2ZWNi
OCAxMDA2NDQKPiA+IC0tLSBhL2tlcm5lbC9waWQuYwo+ID4gKysrIGIva2VybmVsL3BpZC5jCj4g
PiBAQCAtNDUxLDYgKzQ1Miw1MyBAQCBzdHJ1Y3QgcGlkICpmaW5kX2dlX3BpZChpbnQgbnIsIHN0
cnVjdAo+ID4gcGlkX25hbWVzcGFjZSAqbnMpCj4gPiAgCXJldHVybiBpZHJfZ2V0X25leHQoJm5z
LT5pZHIsICZucik7Cj4gPiAgfQo+ID4gIAo+ID4gKy8qKgo+ID4gKyAqIHBpZGZkX29wZW4oKSAt
IE9wZW4gbmV3IHBpZCBmaWxlIGRlc2NyaXB0b3IuCj4gPiArICoKPiA+ICsgKiBAcGlkOiAgIHBp
ZCBmb3Igd2hpY2ggdG8gcmV0cmlldmUgYSBwaWRmZAo+ID4gKyAqIEBmbGFnczogZmxhZ3MgdG8g
cGFzcwo+ID4gKyAqCj4gPiArICogVGhpcyBjcmVhdGVzIGEgbmV3IHBpZCBmaWxlIGRlc2NyaXB0
b3Igd2l0aCB0aGUgT19DTE9FWEVDIGZsYWcgc2V0IGZvcgo+ID4gKyAqIHRoZSBwcm9jZXNzIGlk
ZW50aWZpZWQgYnkgQHBpZC4gQ3VycmVudGx5LCB0aGUgcHJvY2VzcyBpZGVudGlmaWVkIGJ5Cj4g
PiArICogQHBpZCBtdXN0IGJlIGEgdGhyZWFkLWdyb3VwIGxlYWRlci4gVGhpcyByZXN0cmljdGlv
biBjdXJyZW50bHkgZXhpc3RzCj4gPiArICogZm9yIGFsbCBhc3BlY3RzIG9mIHBpZGZkcyBpbmNs
dWRpbmcgcGlkZmQgY3JlYXRpb24gKENMT05FX1BJREZEIGNhbm5vdAo+ID4gKyAqIGJlIHVzZWQg
d2l0aCBDTE9ORV9USFJFQUQpIGFuZCBwaWRmZCBwb2xsaW5nIChvbmx5IHN1cHBvcnRzIHRocmVh
ZCBncm91cAo+ID4gKyAqIGxlYWRlcnMpLgo+ID4gKyAqCj4gCj4gV291bGQgaXQgYmUgcG9zc2li
bGUgdG8gY3JlYXRlIGZpbGUgZGVzY3JpcHRvciB3aXRoICJyZXN0cmljdGVkIgo+IG9wZXJhdGlv
biA/Cj4gCj4gLSBPX1JET05MWTogd2FpdGluZyBmb3IgcHJvY2VzcyBjb21wbGV0aW9uIGFsbG93
ZWQgKGZvciBleGFtcGxlKQo+IC0gT19XUk9OTFk6IHNlbmRpbmcgcHJvY2VzcyBzaWduYWwgYWxs
b3dlZAoKWWVzLCBzb21ldGhpbmcgbGlrZSB0aGlzIGlzIGxpa2VseSBnb2luZyB0byBiZSBwb3Nz
aWJsZSBpbiB0aGUgZnV0dXJlLgpXZSBoYWQgZGlzY3Vzc2lvbiBhcm91bmQgdGhpcy4gQnV0IG1h
cHBpbmcgdGhpcyB0byBPX1JET05MWSBhbmQgT19XUk9OTFkKaXMgbm90IHRoZSByaWdodCBtb2Rl
bC4gSXQgbWFrZXMgbW9yZSBzZW5zZSB0byBoYXZlIHNwZWNpYWxpemVkIGZsYWdzCnRoYXQgcmVz
dHJpY3QgYWN0aW9ucy4KCj4gCj4gRm9yIGV4YW1wbGUsIGEgcHJvY2VzcyBjb3VsZCBzZW5kIG92
ZXIgYSBVbml4IHNvY2tldCBhIHByb2Nlc3MgYSBwaWRmZCwKPiBhbGxvd2luZyB0aGlzIHRvIG9u
bHkgd2FpdCBmb3IgY29tcGxldGlvbiwgYnV0IG5vdCBzZW5kaW5nIHNpZ25hbCA/Cj4gCj4gSSBz
ZWUgdGhlIHBlcm1pc3Npb24gY2hlY2sgaXMgbm90IGRvbmUgaW4gcGlkZmRfb3BlbigpLCBzbyB3
aGF0IHByZXZlbnQKPiBhIHVzZXIgZnJvbSBzZW5kaW5nIGEgc2lnbmFsIHRvIGFub3RoZXIgdXNl
ciBvd25lZCBwcm9jZXNzID8KClRoYXQncyBzdXBwb3NlZCB0byBiZSBwb3NzaWJsZS4gWW91IGNh
biBkbyB0aGUgc2FtZSByaWdodCBub3cgYWxyZWFkeQp3aXRoIHBpZHMuIFRvb2xzIGxpa2UgTE1L
IG5lZWQgdGhpcyBwcm9iYWJseSB2ZXJ5IG11Y2guClBlcm1pc3Npb24gY2hlY2tpbmcgZm9yIHNp
Z25hbHMgaXMgZG9uZSBhdCBzZW5kIHRpbWUgcmlnaHQgbm93LgpBbmQgaWYgeW91IGNhbid0IHNp
Z25hbCB2aWEgYSBwaWQgeW91IGNhbid0IHNpZ25hbCB2aWEgYSBwaWRmZCBhcwp0aGV5J3JlIGJv
dGggc3ViamVjdCB0byB0aGUgc2FtZSBwZXJtaXNzaW9ucyBjaGVja3MuCgo+IAo+IElmIGl0J3Mg
aW4gcGlkZmRfc2VuZF9zaWduYWwoKSwgdGhlbiwgcGFzc2luZyB0aGUgc29ja2V0IHRocm91Z2gK
PiBTQ01fUklHSFQgd29uJ3QgYmUgdXNlZnVsIGlmIHRoZSB0YXJnZXQgcHJvY2VzcyBpcyBub3Qg
b3duZWQgYnkgdGhlCj4gc2FtZSB1c2VyLCBvciByb290Lgo+IAo+ID4gKyAqIFJldHVybjogT24g
c3VjY2VzcywgYSBjbG9leGVjIHBpZGZkIGlzIHJldHVybmVkLgo+ID4gKyAqICAgICAgICAgT24g
ZXJyb3IsIGEgbmVnYXRpdmUgZXJybm8gbnVtYmVyIHdpbGwgYmUgcmV0dXJuZWQuCj4gPiArICov
Cj4gPiArU1lTQ0FMTF9ERUZJTkUyKHBpZGZkX29wZW4sIHBpZF90LCBwaWQsIHVuc2lnbmVkIGlu
dCwgZmxhZ3MpCj4gPiArewo+ID4gKwlpbnQgZmQsIHJldDsKPiA+ICsJc3RydWN0IHBpZCAqcDsK
PiA+ICsJc3RydWN0IHRhc2tfc3RydWN0ICp0c2s7Cj4gPiArCj4gPiArCWlmIChmbGFncykKPiA+
ICsJCXJldHVybiAtRUlOVkFMOwo+ID4gKwo+ID4gKwlpZiAocGlkIDw9IDApCj4gPiArCQlyZXR1
cm4gLUVJTlZBTDsKPiA+ICsKPiA+ICsJcCA9IGZpbmRfZ2V0X3BpZChwaWQpOwo+ID4gKwlpZiAo
IXApCj4gPiArCQlyZXR1cm4gLUVTUkNIOwo+ID4gKwo+ID4gKwlyY3VfcmVhZF9sb2NrKCk7Cj4g
PiArCXRzayA9IHBpZF90YXNrKHAsIFBJRFRZUEVfUElEKTsKPiA+ICsJaWYgKCF0c2spCj4gPiAr
CQlyZXQgPSAtRVNSQ0g7Cj4gPiArCWVsc2UgaWYgKHVubGlrZWx5KCF0aHJlYWRfZ3JvdXBfbGVh
ZGVyKHRzaykpKQo+ID4gKwkJcmV0ID0gLUVJTlZBTDsKPiA+ICsJZWxzZQo+ID4gKwkJcmV0ID0g
MDsKPiA+ICsJcmN1X3JlYWRfdW5sb2NrKCk7Cj4gPiArCj4gPiArCWZkID0gcmV0ID86IHBpZGZk
X2NyZWF0ZShwKTsKPiA+ICsJcHV0X3BpZChwKTsKPiA+ICsJcmV0dXJuIGZkOwo+ID4gK30KPiA+
ICsKPiA+ICB2b2lkIF9faW5pdCBwaWRfaWRyX2luaXQodm9pZCkKPiA+ICB7Cj4gPiAgCS8qIFZl
cmlmeSBubyBvbmUgaGFzIGRvbmUgYW55dGhpbmcgc2lsbHk6ICovCj4gCj4gUmVnYXJkcy4KPiAK
PiAtLSAKPiBZYW5uIERyb25lYXVkCj4gT1BURVlBCj4gCj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
