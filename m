Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6E414CC50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 15:22:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UyIFQFoBL53qo8C+Y5IQRfjLGvKYdZjKT1BQcc/txPs=; b=WXs1LQjGfANK0M
	CLdpQFIvS8kbhqeaALp6YtR1ybDvxtJT20waq7QE3sxgegJjGUhOTsD+8ndrsxU+qlNcew5Cc3jse
	erAXlUjsvunyI+YdgCQyZZixmEriZpBCFT+aQrzM3ZSgZRzCOqEIpfxqrLsy+I8i3tRCm8prQE6jn
	J/mVoy7QYDHAsrnVaa/BHPCpOYErhe4oZkIUPE6QWYnbuleHxuUcSJSZr5u3LX046A1LhXPiw4kst
	eP9M+DfQ2LgT0dO7daiCtibe02SYWTyb1liLmgkHVOSeDhdAbgId+rHxokXe4HPARRe5Gx1PrZkV5
	cO2lxAeMmPRtSEaUymjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwoEQ-0003Ch-UC; Wed, 29 Jan 2020 14:22:14 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwoEH-0003Bz-6k
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 14:22:06 +0000
Received: by mail-lf1-x141.google.com with SMTP id y19so11979793lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Jan 2020 06:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ngpKtKkRqA4bLgz9hqEAUDGl9vfshEKzWUpmN7kSf5I=;
 b=T97g40JJkCpTxOs4RtOf8TMHdkcMmZpyDUyvKE+M1iCiredbwhZo9f47sRYycRIOaK
 WyRyhVj0F9rXnlB6WwfXq8UStjlYgLbzIx32++G2z5paGl/dAsz2EtaxCr3Y5ZZK8HSw
 V6LFhztzhwtgeFU8H5F7qi5OTfhHx56KqIJlwD38+TRWLoR7E3wSvR2b3KBUsTlREpN1
 y6qnV/iY2W3/UwC4lELDiA8sSWsh81hoVkm/7MgRcBLLKmxtHZS1BMSVzJ3Yz8ECIyS8
 wrymSuYT9ddaYnMPBkLl/4Dx6SEHyjtfp5oxSN2GbwMxMJ7AMvnd30yLnpJ8oaO3x17Z
 AGVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ngpKtKkRqA4bLgz9hqEAUDGl9vfshEKzWUpmN7kSf5I=;
 b=kvTcXhQSime/HWvkp9IW2s2WsJ7ZdhhFnsb5JoXxfKjMFVj6jOdYE4C3qa6CKiKPXq
 VpBjfj3h7YEeg8hQmV8c2+zxm4ntCrMpep/H77LLGbs0t3CV0L2tnVp8qSqkMeHmz82f
 ws7cH+/DZcG7E9u1uEAJuo42xjP5xS71IVKgh25E8RCnMT5EMVmto4LIUUY6ezj6zzFn
 jaLJLRcSIzWsRvW6AD4n3zwsKkJruky6olD210rW4B6/4waEg+AP2wP9+oL/evtSAPYX
 3InFw/n75GGFwDnaHY3fYr5us0e8JtJcDfizASBZYDt1pK+b81oK3ZjdYn/GwrYuavOr
 LWVw==
X-Gm-Message-State: APjAAAXDli9qcIxNCniaApf77LrTfKTsPM9etP1nWF5mSL2Bosae0vTu
 KLoXoN2flFWUfXvDZ0HfSTN3YDTO
X-Google-Smtp-Source: APXvYqzYvUkcSlNuXDwv7XdX0nVLb/c5ZJ/5O8HRyToU75dsf2h82fIfm+1f6ytmKF9sY990bRaQeg==
X-Received: by 2002:a19:cb95:: with SMTP id b143mr5622613lfg.158.1580307719408; 
 Wed, 29 Jan 2020 06:21:59 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id 21sm1055977ljv.19.2020.01.29.06.21.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jan 2020 06:21:58 -0800 (PST)
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
 <20200129094738.GE25745@shell.armlinux.org.uk>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <2791a187-ec3e-6b78-515f-25e7559a3749@gmail.com>
Date: Wed, 29 Jan 2020 17:21:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200129094738.GE25745@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_062205_247516_EE44BF03 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: thellstrom@vmware.com, yang.shi@linux.alibaba.com,
 aneesh.kumar@linux.ibm.com, linux-kernel@vger.kernel.org,
 Jon Hunter <jonathanh@nvidia.com>, linux-mm@kvack.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Wei Yang <richardw.yang@linux.intel.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, akpm@linux-foundation.org, dan.j.williams@intel.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjkuMDEuMjAyMCAxMjo0NywgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluINC/0LjRiNC1
0YI6Cj4gT24gU3VuLCBKYW4gMjYsIDIwMjAgYXQgMDU6NDc6NTdQTSArMDMwMCwgRG1pdHJ5IE9z
aXBlbmtvIHdyb3RlOgo+PiAxOC4wMS4yMDIwIDAyOjIyLCBXZWkgWWFuZyDQv9C40YjQtdGCOgo+
Pj4gVXNlIHRoZSBnZW5lcmFsIGhlbHBlciBpbnN0ZWFkIG9mIGRvIGl0IGJ5IGhhbmQuCj4+Pgo+
Pj4gU2lnbmVkLW9mZi1ieTogV2VpIFlhbmcgPHJpY2hhcmR3LnlhbmdAbGludXguaW50ZWwuY29t
Pgo+Pj4gLS0tCj4+PiAgbW0vbXJlbWFwLmMgfCA3ICsrLS0tLS0KPj4+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9t
bS9tcmVtYXAuYyBiL21tL21yZW1hcC5jCj4+PiBpbmRleCBjMmFmOGJhNGJhNDMuLmEyNTg5MTRm
M2VlMSAxMDA2NDQKPj4+IC0tLSBhL21tL21yZW1hcC5jCj4+PiArKysgYi9tbS9tcmVtYXAuYwo+
Pj4gQEAgLTI1MywxMSArMjUzLDggQEAgdW5zaWduZWQgbG9uZyBtb3ZlX3BhZ2VfdGFibGVzKHN0
cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLAo+Pj4gIAo+Pj4gIAlmb3IgKDsgb2xkX2FkZHIgPCBv
bGRfZW5kOyBvbGRfYWRkciArPSBleHRlbnQsIG5ld19hZGRyICs9IGV4dGVudCkgewo+Pj4gIAkJ
Y29uZF9yZXNjaGVkKCk7Cj4+PiAtCQluZXh0ID0gKG9sZF9hZGRyICsgUE1EX1NJWkUpICYgUE1E
X01BU0s7Cj4+PiAtCQkvKiBldmVuIGlmIG5leHQgb3ZlcmZsb3dlZCwgZXh0ZW50IGJlbG93IHdp
bGwgYmUgb2sgKi8KPj4+ICsJCW5leHQgPSBwbWRfYWRkcl9lbmQob2xkX2FkZHIsIG9sZF9lbmQp
Owo+Pj4gIAkJZXh0ZW50ID0gbmV4dCAtIG9sZF9hZGRyOwo+Pj4gLQkJaWYgKGV4dGVudCA+IG9s
ZF9lbmQgLSBvbGRfYWRkcikKPj4+IC0JCQlleHRlbnQgPSBvbGRfZW5kIC0gb2xkX2FkZHI7Cj4+
PiAgCQlvbGRfcG1kID0gZ2V0X29sZF9wbWQodm1hLT52bV9tbSwgb2xkX2FkZHIpOwo+Pj4gIAkJ
aWYgKCFvbGRfcG1kKQo+Pj4gIAkJCWNvbnRpbnVlOwo+Pj4gQEAgLTMwMSw3ICsyOTgsNyBAQCB1
bnNpZ25lZCBsb25nIG1vdmVfcGFnZV90YWJsZXMoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEs
Cj4+PiAgCj4+PiAgCQlpZiAocHRlX2FsbG9jKG5ld192bWEtPnZtX21tLCBuZXdfcG1kKSkKPj4+
ICAJCQlicmVhazsKPj4+IC0JCW5leHQgPSAobmV3X2FkZHIgKyBQTURfU0laRSkgJiBQTURfTUFT
SzsKPj4+ICsJCW5leHQgPSBwbWRfYWRkcl9lbmQobmV3X2FkZHIsIG5ld19hZGRyICsgbGVuKTsK
Pj4+ICAJCWlmIChleHRlbnQgPiBuZXh0IC0gbmV3X2FkZHIpCj4+PiAgCQkJZXh0ZW50ID0gbmV4
dCAtIG5ld19hZGRyOwo+Pj4gIAkJbW92ZV9wdGVzKHZtYSwgb2xkX3BtZCwgb2xkX2FkZHIsIG9s
ZF9hZGRyICsgZXh0ZW50LCBuZXdfdm1hLAo+Pj4KPj4KPj4gSGVsbG8gV2VpLAo+Pgo+PiBTdGFy
dGluZyB3aXRoIG5leHQtMjAyMDAxMjIsIEknbSBzZWVpbmcgdGhlIGZvbGxvd2luZyBpbiBLTVNH
IG9uIE5WSURJQQo+PiBUZWdyYSAoQVJNMzIpOgo+Pgo+PiAgIEJVRzogQmFkIHJzcy1jb3VudGVy
IHN0YXRlIG1tOihwdHJ2YWwpIHR5cGU6TU1fQU5PTlBBR0VTIHZhbDoxOTAKPj4KPj4gYW5kIGV2
ZW50dWFsbHkga2VybmVsIGhhbmdzLgo+Pgo+PiBHaXQncyBiaXNlY3Rpb24gcG9pbnRzIHRvIHRo
aXMgcGF0Y2ggYW5kIHJldmVydGluZyBpdCBoZWxwcy4gUGxlYXNlIGZpeCwKPj4gdGhhbmtzIGlu
IGFkdmFuY2UuCj4gCj4gVGhlIGFib3ZlIGlzIGRlZmluaXRlbHkgd3JvbmcgLSBwWFhfYWRkcl9l
bmQoKSBhcmUgZGVzaWduZWQgdG8gYmUgdXNlZAo+IHdpdGggYW4gYWRkcmVzcyBpbmRleCB3aXRo
aW4gdGhlIHBYWCB0YWJsZSB0YWJsZSBhbmQgdGhlIGFkZHJlc3MgaW5kZXgKPiBvZiBlaXRoZXIg
dGhlIGxhc3QgZW50cnkgaW4gdGhlIHNhbWUgcFhYIHRhYmxlIG9yIHRoZSBiZWdpbm5pbmcgb2Yg
dGhlCj4gX25leHRfIHBYWCB0YWJsZS4gIEFyYml0YXJ5IGVuZCBhZGRyZXNzIGluZGljaWVzIGFy
ZSBub3QgYWxsb3dlZC4KPiAKPiBXaGVuIHBhZ2UgdGFibGVzIGFyZSAicm9sbGVkIHVwIiB3aGVu
IGxldmVscyBkb24ndCBleGlzdCwgaXQgaXMgY29tbW9uCj4gcHJhY3RpY2UgZm9yIHRoZXNlIG1h
Y3JvcyB0byBqdXN0IHJldHVybiB0aGVpciBlbmQgYWRkcmVzcyBpbmRleC4KPiBIZW5jZSwgaWYg
dGhleSBhcmUgdXNlZCB3aXRoIGFyYml0YXJ5IGVuZCBhZGRyZXNzIGluZGljaWVzLCB0aGVuIHRo
ZQo+IGl0ZXJhdGlvbiB3aWxsIGZhaWwuCj4gCj4gVGhlIG9ubHkgd2F5IHRvIGRvIHRoaXMgaXM6
Cj4gCj4gCW5leHQgPSBwbWRfYWRkcl9lbmQob2xkX2FkZHIsCj4gCQkJcHVkX2FkZHJfZW5kKG9s
ZF9hZGRyLAo+IAkJCQlwNGRfYWRkcl9lbmQob2xkX2FkZHIsCj4gCQkJCQlwZ2RfYWRkcl9lbmQo
b2xkX2FkZHIsIG9sZF9lbmQpKSkpOwo+IAo+IHdoaWNoIGdpdmVzIHBtZF9hZGRyX2VuZCgpIChh
bmQgZWFjaCBvZiB0aGUgaW50ZXJtZWRpYXRlIHBYWF9hZGRyX2VuZCgpKQo+IHRoZSBjb3JyZWN0
IGVuZCBhcmd1bWVudC4gIEhvd2V2ZXIsIHRoYXQncyBhIG1vcmUgY29tcGxleCBhbmQgdmVyYm9z
ZSwKPiBhbmQgbGlrZWx5IGxlc3MgZWZmaWNpZW50IHRoYW4gdGhlIGN1cnJlbnQgY29kZS4KPiAK
PiBJJ2Qgc3VnZ2VzdCB0aGF0IHRoZXJlJ3Mgbm90aGluZyB0byAiZml4IiBpbiB0aGUgdjUuNSBj
b2RlIHdydCB0aGlzLAo+IGFuZCB0cnlpbmcgdG8gImNsZWFuIGl0IHVwIiB3aWxsIGp1c3QgcmVz
dWx0IGluIGxlc3MgZWZmaWNpZW50IG9yCj4gYnJva2VuIGNvZGUuCj4gCgpIZWxsbyBSdXNzZWxs
LAoKVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgdGhlIGV4dHJhIGNsYXJpZmljYXRpb24hCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
