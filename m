Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF911119151
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:01:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kTxDdBIUnPPeVfru6j983D84nOgv8z2MQcpjuRF3R1c=; b=kwGEwKy3iQw5hHXBxxUT0+9Ef
	/U2c8zHk1ObHDX3CHbP4oTSkeklSW9FRlQKnZ6WE+rjfUaBMTo4HK83Hze69bQvwmO55cGKzt08+0
	T5uQR0i3D1WB7kzk3698xn6zAb/Xn534397+dZAU1fyYF6Dx7fmy8eQcum2ANXBic0E4nvhzNAEfW
	L8QFHjQ2KirxNj1xs3DWwpzjPLXRwHrABcsorTb1PS9vOGbvNsNAoKH4oDzbF2ewfBPd26gl8JuHi
	YZ4jZMHunVDgYecNNYLZ8i/tC3MazKp1nS6SgtQtsHrKNdHjvSGq5GfVQby9rAF3BR0g9JhBLMccT
	+fsdYMnuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielgr-0003Y2-C3; Tue, 10 Dec 2019 20:01:01 +0000
Received: from mail-vs1-xe2d.google.com ([2607:f8b0:4864:20::e2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielgI-0003Gn-3x
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:00:37 +0000
Received: by mail-vs1-xe2d.google.com with SMTP id m5so14050171vsj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 12:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hGS0DyHs+p91cXo2Vhnqlta9bUxgKM13usegMvdNEvE=;
 b=Iqbgzy4UB2Tblpry9DNaz7zkgnBLzF/YASc2wU/LWsmvrt32+uf0rQrC/5XC6DJmOO
 EqzOz6xp5Wl1QCDzWBZ+pOWlfVRSUsHl7hgBIAeUpZiZeiHe1yPd1svkEx9E24StT2cf
 hSM2Uh1RXBOCCxjgixpv816+8lcpc5WjhGLQRvSbYxUQoTI41mz+So66w/U1F/AjVJIk
 wUyBwMojWAVU4l3kxvYQz2SGI0GGBG8X5IPSn50vIDkKIFwWdxKcQ1IlXjTqagkKbNPv
 C16NdjH/4ROCYyMmCpl++u7406wUsWOrdVJOh1kBDHlKLDhGzxID0OCKtijyGS0NBfvL
 Pe3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hGS0DyHs+p91cXo2Vhnqlta9bUxgKM13usegMvdNEvE=;
 b=hPG8e4wwgw8ZTMsZTpw2MqxBGJ/AqXEEgMdTrDU+shJqsaeFymO3BQ04UPGfjkzXu+
 s2u+nQ12Xxx4aUKjx0XUlIR8V15oBflClta6MWf3w4tYnFXahoRmdQ+ASZvRxLMI/1e2
 JZTelDGJ2otOZIcVhFS/eKWhXsoSWi/nmKSYqRRENd/OxM7g/C2JkDZMVJGXqVmiwuFu
 1Vje705ucKlcd+D3Rg7ksOzAvyHeZDAn6SCdx4ZDN9JAe97ezD2fD8XBsvLjnW0fpDhG
 I8glAUB3l4Hgi+hTFKvWI2AxPWrJf/qumJAQYhQTwonWQR6hEDg0fmN3g2j1ZGdaMDW0
 iU8A==
X-Gm-Message-State: APjAAAXlLzW3lSuyPtRpaTuaTi3H38Op4+NMaMDwSLckoNRyXDcdL/mm
 Ex98qNYvw1j+zkWQesQtJURnr0eInWQ=
X-Google-Smtp-Source: APXvYqx+qk7sUAqpaCm+NlM7pcI0WXNAoBiob+JOFkBBaXKkEne5EJ2kVjaxeTms4KifR0wyFawXfA==
X-Received: by 2002:a67:cd85:: with SMTP id r5mr7098555vsl.79.1576008022628;
 Tue, 10 Dec 2019 12:00:22 -0800 (PST)
Received: from [192.168.15.21] ([189.111.86.232])
 by smtp.gmail.com with ESMTPSA id e16sm2679840vso.32.2019.12.10.12.00.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Dec 2019 12:00:21 -0800 (PST)
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
From: Luis Machado <luis.machado@linaro.org>
To: Will Deacon <will@kernel.org>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
 <20191118131525.GA4180@willie-the-truck>
 <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
 <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
Message-ID: <82cb3dea-db82-1c71-3b08-957102b85c93@linaro.org>
Date: Tue, 10 Dec 2019 17:00:18 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_120026_488312_86000A62 
X-CRM114-Status: GOOD (  25.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2lsbCwgTWFyaywKCkRvIHlvdSBoYXZlIGFueSBpbnB1dCByZWdhcmRpbmcgdGhpcyBwYXJ0aWN1
bGFyIHNpdHVhdGlvbj8KCkl0IHdvdWxkIGJlIG5pY2UgdG8gZ2V0IHRoaXMgZml4ZWQgYmVmb3Jl
IHRoZSByZWxlYXNlIG9mIGFub3RoZXIgR0RCIAp2ZXJzaW9uLCBpZiB0aGUgZml4IGlzIHRvIGxp
dmUgaW4gR0RCIGl0c2VsZi4KCk9uIDExLzI2LzE5IDE6MzUgUE0sIEx1aXMgTWFjaGFkbyB3cm90
ZToKPiBwaW5nPwo+IAo+IE9uIDExLzE4LzE5IDExOjU0IEFNLCBMdWlzIE1hY2hhZG8gd3JvdGU6
Cj4+IEhpIFdpbGwsCj4+Cj4+IFRoYW5rcyBmb3IgdGhlIHRob3JvdWdoIGV4cGxhbmF0aW9uLgo+
Pgo+PiBPbiAxMS8xOC8xOSAxMDoxNSBBTSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+PiBIaSBMdWlz
LAo+Pj4KPj4+IFsrTWFyayBmb3IgdGhlIHZhbGlkX3VzZXJfcmVncygpIHBhcnRdCj4+Pgo+Pj4g
T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDg6MjI6MTBQTSAtMDMwMCwgTHVpcyBNYWNoYWRvIHdy
b3RlOgo+Pj4+IEkndmUgbm90aWNlZCwgdW5kZXIgdmVyeSBzcGVjaWZpYyBjb25kaXRpb25zLCB0
aGF0IGEgUFRSQUNFX1NJTkdMRVNURVAKPj4+PiByZXF1ZXN0IGJ5IEdEQiB3b24ndCBleGVjdXRl
IHRoZSB1bmRlcmx5aW5nIGluc3RydWN0aW9uLiBBcyBhIAo+Pj4+IGNvbnNlcXVlbmNlLAo+Pj4+
IHRoZSBQQyBkb2Vzbid0IG1vdmUsIGJ1dCB3ZSByZXR1cm4gYSBTSUdUUkFQIGp1c3QgbGlrZSB3
ZSB3b3VsZCBmb3IgYQo+Pj4+IHJlZ3VsYXIgc3VjY2Vzc2Z1bCBQVFJBQ0VfU0lOR0xFU1RFUCBy
ZXF1ZXN0Lgo+Pj4+Cj4+Pj4gU2luY2UgdGhlcmUgYXJlIG5vIHNvZnR3YXJlIGJyZWFrcG9pbnRz
IGluc2VydGVkIGF0IFBDICh3ZSBhcmUgYWN0dWFsbHkKPj4+PiBzdGVwcGluZyBvdmVyIGEgYnJl
YWtwb2ludCwgc28gR0RCIHJlbW92ZXMgdGhlIGJyZWFrcG9pbnQgYXQgUEMgYmVmb3JlCj4+Pj4g
aXNzdWluZyBhIFBUUkFDRV9TSU5HTEVTVEVQIHJlcXVlc3QpLCB0aGlzIGlzIGFuIG9kZCBiZWhh
dmlvci4KPj4+Pgo+Pj4+IFRob3VnaCBub3QgdG9vIGhhcm1mdWwsIGkgc2VlIHRoaXMgbWFuaWZl
c3RpbmcgaW4gdGhlIEdEQiB0ZXN0c3VpdGUKPj4+PiAoZ2RiLnJldmVyc2UvaW5zbi1yZXZlcnNl
LmV4cCksIHdoaWNoIHRocm93cyB0aGUgdGVzdCBvZmYgYnkgbWFraW5nIEdEQgo+Pj4+IHRoaW5r
IGl0IGlzIGZ1cnRoZXIgaW4gdGhlIGluc3RydWN0aW9uIHN0cmVhbSB0aGFuIGl0IHJlYWxseSBp
cy4gSW4gCj4+Pj4gZmFjdCwgd2UKPj4+PiBnZXQgbHVja3kgaGVyZSBhbmQgbm8gRkFJTCdzIHNo
b3cgdXAsIG9ubHkgbWFueSBtb3JlIHNwdXJpb3VzIFBBU1Nlcy4KPj4+Cj4+PiBJIG1hbmFnZWQg
dG8gcmVwcm9kdWNlIHRoaXMgbG9jYWxseSBhbmQgSSB0aGluayBJJ3ZlIGZpZ3VyZWQgb3V0IHdo
YXQncwo+Pj4gZ29pbmcgb24sIGFsdGhvdWdoIEknbSBub3Qgc3VyZSB0aGF0IHRoZSBrZXJuZWwg
aXMgdGhlIGJlc3QgcGxhY2UgdG8gZml4Cj4+PiBpdC4KPj4+Cj4+PiBMb29raW5nIGF0IHRoZSBz
cGVjaWZpYyByZXByb2R1Y2VyOgo+Pj4KPj4+PiBFeGVjdXRlIGdkYiBsaWtlIHNvOgo+Pj4+Cj4+
Pj4gZ2RiIC1leCAic2V0IGRpc3BsYWNlZC1zdGVwcGluZyBvZmYiIC1leCAiYiBsb2FkIiAtZXgg
InJ1biIgLWV4IAo+Pj4+ICJyZWNvcmQiIC1leAo+Pj4+ICJzaSIgLWV4ICJyc2kiIC1leCAicmVj
b3JkIHN0b3AiIGluc24tcmV2ZXJzZQo+Pj4KPj4+IFNvIHdlJ3ZlIGdvdCBhIGNvdXBsZSBvZiBp
bnN0cnVjdGlvbnMgYXMgZm9sbG93cyAoaXQgZG9lc24ndCBhY3R1YWxseSAKPj4+IG1hdHRlcgo+
Pj4gd2hhdCB0aGV5IGFyZSwgc28gSSd2ZSBjaGFuZ2VkIHRoZSBMRDEgaW4geW91ciBiaW5hcnkg
Zm9yIGEgTk9QIGluIAo+Pj4gb3JkZXIgdG8KPj4+IGF2b2lkIGNvbmZ1c2lvbiB3aXRoIHRoZSAi
bG9hZCIgbGFiZWwgbm90IGFjdHVhbGx5IHBvaW50aW5nIGF0IGEgbG9hZCk6Cj4+Pgo+Pj4gwqDC
oMKgwqAweDdiODrCoMKgwqDCoMKgwqDCoCBtb3bCoMKgwqAgLy8gImxvYWQiCj4+PiDCoMKgwqDC
oDB4N2JjOsKgwqDCoMKgwqDCoMKgIG5vcAo+Pj4KPj4+ICJiIGxvYWQiIHBsYWNlcyBhIGJyZWFr
cG9pbnQgYXQgMHg3Yjg6Cj4+Pgo+Pj4gwqDCoMKgwqBwdHJhY2UoUFRSQUNFX1BPS0VEQVRBLCA2
NjIsIDB4YWFhYWFhYWFhN2I4LCAweGQ1MDMyMDFmZDQyMDAwMDApID0gMAo+Pj4KPj4+IFdlIHJ1
biB0byBhIHNvZnR3YXJlIGJyZWFrcG9pbnQgb24gImxvYWQiICh0aGUgbW92IGluc3RydWN0aW9u
KS4gV2UgdGFrZQo+Pj4gdGhlIHRyYXAgYW5kIHRyeSB0byBleGVjdXRlIHRoZSAic2kiLCB3aGlj
aCBtZWFucyB3ZSBuZWVkIHRvIHJlbW92ZSB0aGUKPj4+IGJyZWFrcG9pbnQgd2hpbGUgd2Ugc3Rl
cCBvdmVyIGl0Ogo+Pj4KPj4+IMKgwqDCoMKgcHRyYWNlKFBUUkFDRV9QT0tFREFUQSwgNjYyLCAw
eGFhYWFhYWFhYTdiOCwgMHhkNTAzMjAxZjkxMDAwM2UwKSA9IDAKPj4+IMKgwqDCoMKgWy4uLl0K
Pj4+IMKgwqDCoMKgcHRyYWNlKFBUUkFDRV9TSU5HTEVTVEVQLCA2NjIsIDB4MSwgMCnCoCA9IDAK
Pj4+Cj4+PiBUaGlzIGNhdXNlcyB0aGUga2VybmVsIHRvIGFybSB0aGUgc2luZ2xlLXN0ZXAgc3Rh
dGUgbWFjaGluZSBzbyB0aGF0Cj4+PiBNRFNDUl9FTDEuU1MgPT0gU1BTUl9FTDEuU1MgPT0gMSAo
a25vd24gYXMgImFjdGl2ZS1ub3QtcGVuZGluZyIpLiAKPj4+IFJ1bm5pbmcKPj4+IGFuIGluc3Ry
dWN0aW9uIGluIHVzZXJzcGFjZSB3aWxsIHRyYW5zaXRpb24gdG8gTURTQ1JfRUwxLlNTID09MSBh
bmQKPj4+IFNQU1JfRUwxLlNTID09IDAgKGtub3duIGFzICJhY3RpdmUtcGVuZGluZyIpLCB3aGlj
aCB3aWxsIGNhdXNlIHRoZSAKPj4+IHRyYXAgdG8KPj4+IHRyaWdnZXIsIGF0IHdoaWNoIHBvaW50
IGdkYiBwdXRzIHRoZSBicmVha3BvaW50IGluc3RydWN0aW9uIGJhY2sgCj4+PiBzaW5jZSB0aGUK
Pj4+IHN0ZXAgaXMgY29tcGxldGU6Cj4+Cj4+IFNvLCBqdXN0IHRvIGNvbmZpcm0gbXkgdW5kZXJz
dGFuZGluZywgd2UgaGF2ZSBhIGNvdXBsZSBiaXRzIAo+PiBjb250cm9sbGluZyBzaW5nbGUtc3Rl
cHBpbmcgaW4gdGhlIGtlcm5lbCwgb25lIGluIE1EU0NSX0VMMSBhbmQgCj4+IGFub3RoZXIgaW4g
U1BTUl9FTDEuIEdEQiBkb2Vzbid0IGhhdmUgZGlyZWN0IGFjY2VzcyB0byBhbnkgb2YgdGhvc2Us
IAo+PiBjb3JyZWN0Pwo+Pgo+PiBJbnN0ZWFkLCBHREIgaGFzIGFjY2VzcyB0byBhIFNTIGJpdCBp
biB0aGUgcmVzZXJ2ZWQgMjF+MjIgcmFuZ2Ugb2YgQ1BTUi4KPj4KPj4gVGhlIHRyYW5zaXRpb24g
ZnJvbSBhY3RpdmUtbm90LXBlbmRpbmcgdG8gYWN0aXZlLXBlbmRpbmcgdGFrZXMgcGxhY2UgCj4+
IHZpYSBhIHNpbmdsZSBQVFJBQ0VfU0lOR0xFU1RFUCByZXF1ZXN0PyBJcyB0aGF0IGNvcnJlY3Q/
Cj4+Cj4+Pgo+Pj4gwqDCoMKgwqBwdHJhY2UoUFRSQUNFX1BPS0VEQVRBLCA2NjIsIDB4YWFhYWFh
YWFhN2I4LCAweGQ1MDMyMDFmZDQyMDAwMDApID0gMAo+Pj4KPj4+IFRoaXMgaXMgd2hlcmUgdGhp
bmdzIHN0YXJ0IHRvIGdvIHdyb25nLiBUaGUgInJzaSIgY29tbWFuZCBhdHRlbXB0cyB0bwo+Pj4g
cGVyZm9ybSBhIHJldmVyc2Ugc3RlcCwgd2hpY2ggbWVhbnMgcmVzdG9yaW5nIHRoZSBvbGQgc3Rh
dGUgd2hlbiB3ZSB3ZXJlCj4+PiBwcmV2aW91c2x5IGV4ZWN1dGluZyBhdCAweDdiOC4gSXQgc3Rh
cnRzIGJ5IHJlbW92aW5nIHRoZSBicmVha3BvaW50IAo+Pj4gYWdhaW4sCj4+PiBzaW5jZSB3ZSd2
ZSBhbHJlYWR5IGhpdCB0aGF0Ogo+Pj4KPj4+IMKgwqDCoMKgcHRyYWNlKFBUUkFDRV9QT0tFREFU
QSwgNjYyLCAweGFhYWFhYWFhYTdiOCwgMHhkNTAzMjAxZjkxMDAwM2UwKSA9IDAKPj4+Cj4+PiBh
bmQgdGhlbiByZXNldHMgdGhlIENQVSByZWdpc3RlcnMgdG8gdGhlaXIgb2xkIHZhbHVlczoKPj4+
Cj4+PiDCoMKgwqDCoChJIGRvbid0IGtub3cgd2h5IGl0IGRvZXMgdGhpcyB0aHJlZSB0aW1lcykK
Pj4+IMKgwqDCoMKgcHRyYWNlKFBUUkFDRV9TRVRSRUdTRVQsIDY2MiwgTlRfUFJTVEFUVVMsIAo+
Pj4gW3tpb3ZfYmFzZT0weGZmZmZmZjY0YjNjOCwgaW92X2xlbj0yNzJ9XSkgPSAwCj4+PiDCoMKg
wqDCoHB0cmFjZShQVFJBQ0VfU0VUUkVHU0VULCA2NjIsIE5UX1BSU1RBVFVTLCAKPj4+IFt7aW92
X2Jhc2U9MHhmZmZmZmY2NGIzYzgsIGlvdl9sZW49MjcyfV0pID0gMAo+Pj4gwqDCoMKgwqBwdHJh
Y2UoUFRSQUNFX1NFVFJFR1NFVCwgNjYyLCBOVF9QUlNUQVRVUywgCj4+PiBbe2lvdl9iYXNlPTB4
ZmZmZmZmNjRiM2M4LCBpb3ZfbGVuPTI3Mn1dKSA9IDAKPj4+Cj4+PiBUaGUgcHJvYmxlbSB3aXRo
IHRoaXMgaXMgdGhhdCB3ZSBoYXZlIG1vdmVkIHRoZSBQQyBiYWNrIHRvIDB4N2I4IGJ1dCAKPj4+
IHdlIGhhdmUKPj4+IGFsc28gY2xlYXJlZCBTUFNSX0VMMS5TUyB0byAwLiBJbnRlcm5hbGx5LCB0
aGUga2VybmVsIGhhc24ndCBzZWVuIAo+Pj4gc3RlcHBpbmcKPj4+IGdldCBkaXNhYmxlZCAodGhp
cyB1c3VhbGx5IGhhcHBlbnMgYnkgUFRSQUNFX0NPTlQgY2FsbGluZwo+Pj4gdXNlcl9kaXNhYmxl
X3NpbmdsZV9zdGVwKCkpIHdoaWNoIG1lYW5zIHRoYXQgTURTQ1JfRUwxLlNTIHJlbWFpbnMgc2V0
IAo+Pj4gdG8gMQo+Pj4gYW5kIHdlJ3JlIGluIHRoZSBhY3RpdmUtcGVuZGluZyBzdGF0ZSEgQ29u
c2VxdWVudGx5LCB3ZSBpbW1lZGlhdGVseSAKPj4+IHRha2UgYQo+Pj4gc3RlcCBleGNlcHRpb24g
aWYgYSBzdGVwIG9wZXJhdGlvbiBpcyBhdHRlbXB0ZWQgPgo+Pgo+PiBXaGlsZSB0cnlpbmcgdG8g
cmVwcm9kdWNlIHRoaXMsIGkgd2FzIHBheWluZyBhdHRlbnRpb24gdG8gdGhlIFNTIGJpdCAKPj4g
Y29taW5nIGFuZCBnb2luZy4gQnV0IGluIHRoZSBwYXJ0aWN1bGFyIHNlcXVlbmNlIG9mIHNpL3Jz
aSwgd2l0aGluIHRoZSAKPj4gcmVjb3JkIGJvdW5kYXJpZXMsIGkgc2VlIEdEQiBqdXN0IHJlc3Rv
cmVkIHRoZSBvcmlnaW5hbCBDUFNSIHZhbHVlIHRvIAo+PiB3aGF0IGl0IHdhcyBiZWZvcmUgd2Ug
cHJvY2Vzc2VkIHRoZSBzaSBjb21tYW5kLgo+Pgo+PiDCoEZyb20gR0RCJ3MgUE9WIGFsbCBzdGF0
ZSB3YXMgcmVzdG9yZSB0byB0aGUgd2F5IGl0IHdhcyBiZWZvcmUgYW5kIAo+PiB3ZSdyZSBnb29k
IHRvIGdvLgo+Pgo+PiBJcyB0aGlzIG5vdCBlbm91Z2ggdG8gcmVzdG9yZSBzdGF0ZSBrZXJuZWwt
d2lzZT8KPj4KPj4+IE5vdywgd2UgKmNvdWxkKiBjb25zaWRlciBoYWNraW5nIHRoZSBUSUZfU0lO
R0xFU1RFUCBjaGVjayBpbgo+Pj4gdmFsaWRfdXNlcl9yZWdzKCkgc28gdGhhdCBTUFNSX0VMMS5T
UyBpcyBwcmVzZXJ2ZWQgd2hlbiBzdGVwcGluZyBpcyAKPj4+IGFjdGl2ZQo+Pj4gYnV0IHRoaXMg
aXMgYSB1c2VyLXZpc2libGUgY2hhbmdlIGFuZCBtYXkgYnJlYWsgdGhpbmdzIGxpa2Ugc3RlcHBp
bmcgCj4+PiBvdXQgb2YKPj4+IHNpZ25hbCBoYW5kbGVycy4gSSB3b3VsZCBwcmVmZXIgdGhhdCBH
REIgbWFuYWdlcyB0aGUgU1MgYml0IAo+Pj4gZXhwbGljaXRseSBpbgo+Pj4gdGhpcyBzY2VuYXJp
bywgYnkgc2V0dGluZyBpdCB0byAxIHdoZW4gcmVzdG9yaW5nIHRoZSBvbGQgc3RhdGUgaW4gdGhl
Cj4+PiByZXZlcnNlIHN0ZXAsIGEgYml0IGxpa2Ugd2hlbiBpdCBkaXNhYmxlcyB0aGUgb2xkIGJy
ZWFrcG9pbnQuIFlvdSBjYW4KPj4+IGVtdWxhdGUgdGhpcyBieSBkb2luZzoKPj4KPj4gSSB0aGlu
ayB3ZSBjb3VsZCBsZXQgR0RCIGNvbnRyb2wgdGhpcyB3aGVuIHJlcXVpcmVkLCBidXQgSSdtIHRy
eWluZyB0byAKPj4gdW5kZXJzdGFuZCB0aGUgcmFtaWZpY2F0aW9ucyBvZiBsZXR0aW5nIEdEQiBk
byBzby4KPj4KPj4gRm9yIGV4YW1wbGUsIHdoYXQgaWYgdGhlIHVzZXIgZGVjaWRlcyB0byBhbHRl
ciB0aGUgUEMgaGVyZSBhbmQgdGhlcmUsIAo+PiBmb3IgZGVidWdnaW5nIHB1cnBvc2VzLiBUaGF0
IGlzIGEgdXNlIGNhc2UgdGhhdCBoYXBwZW5zIG9mdGVuLCBpbiAKPj4gb3JkZXIgdG8gZ28gYmFj
ayBvciBza2lwIHNvbWUgcGFydHMgb2YgdGhlIGNvZGUuCj4+Cj4+IFdvdWxkIHdlIG5lZWQgdG8g
cGF5IGF0dGVudGlvbiB0byB0aGUgU1MgYml0IGluIHRob3NlIGNhc2VzIGFzIHdlbGw/Cj4+Cj4+
Pgo+Pj4gwqDCoMKgwqAoZ2RiKSBzZXQgJGNwc3IgfD0gKDE8PDIxKQo+Pgo+PiBJbiBwYXJ0aWN1
bGFyLCB3aGF0IGRvZXMgdGhlIHN3aXRjaGluZyBvZiB0aGlzIGJpdCBhY2NvbXBsaXNoZXMgaW4g
dGhlIAo+PiBrZXJuZWw/IFdvdWxkIHdlIGJlIGJldHRlciBvZmYgZm9yY2luZyB0aGUgU1MgYml0
IGV2ZXJ5IHRpbWUgd2UgZG8gYSAKPj4gc2luZ2xlLXN0ZXAgb3BlcmF0aW9uLCBmb3IgZXhhbXBs
ZT8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
