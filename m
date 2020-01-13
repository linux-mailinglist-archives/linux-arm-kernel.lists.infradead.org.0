Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A89D139872
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:13:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	From:Subject:Reply-To:To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B+hBKaXscnmWKVUzpLBKq3LIr17Eu0/pVwBvN96SOPw=; b=S+IdBACV9VOU5jetG6OQd1r2p
	PLjmeN1G/kzZRWjQwpSs0vUqVkFkze5DepodXi+0l9+SPLkLlJwB3ib3TnExwEV7P4STHdCDctcgO
	J2CCLGvL4YOqbVBVGnh0MeOMh4GkTFufTKrjm3iZIFCmBmC7LJXPNcm+nVrFQYlFbViIjRUlBwHc3
	5OVNr2ETyd0mIWTzMXOk1FzsymKMLL882oIVzXfKMH9LktXpxrF8zZSlklAzgaxu91WBqUdMU6QOm
	IHLHJOVjXK6Bfof20LKTOwJV+0Ud/5tBb8FActcKus4JRClgWc/zwmYdCslTjw35W/pKStxSaxEiL
	kZn+UqfWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4Db-0005hW-7z; Mon, 13 Jan 2020 18:13:39 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4DM-0005g9-Ce
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:13:26 +0000
Received: by mail-qk1-x732.google.com with SMTP id w127so9356203qkb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 10:13:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:cc:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=S+ACgwTVxzOn56M2yyVlt9X0vqKJRC60Vzzm2taj8p4=;
 b=fIqL9GJJuJOwrtEsTj7NBHrv3GpylO9/vU0VcmI41smCTXSKpNKbKaeUA4UPQEFJQD
 IOZKJkB8K9YJS3wd6TEPmqkDuEBLwMZd91pCVlGl90jyjFwsgP3qi/5U4yxPCJrI2sNB
 aaRLbcVGqpc+iDC1g9+4UXaiB9O115LbKX3CX2bhDI/o/7TNUqqCp/oANgAVtkiRF70c
 5Mv3hPFnhI6zf/It1jXkS+qXIjRkSHLqUoM8RMo7wnl+lkBRi+Oal4dF68J7nkmByPIZ
 0hBFWVw6/YQfD/of33FcJTxyV1jEJBo0+zK68mic3LQ4hFLjUP8Yabn0Yi+LylW/wgQs
 aePA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=S+ACgwTVxzOn56M2yyVlt9X0vqKJRC60Vzzm2taj8p4=;
 b=ZD5i/3ifO7W/DNKMK5ubRCJY4NXXtxvHiyGfiOrDl3B6aUtFt2L21msGWAZHSagS91
 nZyIt/wVMT9szvvzCkI/SIj4RD41nHM4Fc7PlUXOsTBiZqPvPrqD/KO3gxYUfiFdXotp
 Ruh3XsAbYV89yluaN2Gh7T0akulJLTEDOIeDcZc4HLRmuCf3cA2xOx20BilIVOYkpjtE
 Z4yVsguNBqEUMnd9JdH1BG2YXwAEWBEikTgU0D3A9X8Q75ROlXuglrH+TOZWBBKVMgdg
 zyQ8Ea9b9jidgvShZkns4jmb+TQlZv0hq/wi36L8Yk9s21JATuJNJVUStWH+pxuca9wI
 Ljvg==
X-Gm-Message-State: APjAAAUgFr9rVjiGBVbOiLrtmc16SByARfhatEVrRk7qVHv7Ry4LCOJc
 jVUtIRaM3Z4SXHqgLZJlC9ixa/M4ApU=
X-Google-Smtp-Source: APXvYqzyiL2+wQrZPmh9OVxKIZUv/GQZmjZCcLWg8uxXg4mTAQVFlYwXlXMx73UPUt/PsMfADYDtrA==
X-Received: by 2002:a05:620a:15b1:: with SMTP id
 f17mr17857902qkk.45.1578939202637; 
 Mon, 13 Jan 2020 10:13:22 -0800 (PST)
Received: from [192.168.0.185] ([179.183.9.215])
 by smtp.gmail.com with ESMTPSA id u5sm5344753qkj.127.2020.01.13.10.13.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jan 2020 10:13:21 -0800 (PST)
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
From: Luis Machado <luis.machado@linaro.org>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
 <20191118131525.GA4180@willie-the-truck>
 <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
 <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
Message-ID: <f39f3da6-e703-8ee3-3651-953e915e822b@linaro.org>
Date: Mon, 13 Jan 2020 15:13:19 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_101324_431036_91796443 
X-CRM114-Status: GOOD (  23.39  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:732 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 MISSING_HEADERS        Missing To: header
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

UGluZz8KCk9uIDExLzI2LzE5IDE6MzUgUE0sIEx1aXMgTWFjaGFkbyB3cm90ZToKPiBwaW5nPwo+
IAo+IE9uIDExLzE4LzE5IDExOjU0IEFNLCBMdWlzIE1hY2hhZG8gd3JvdGU6Cj4+IEhpIFdpbGws
Cj4+Cj4+IFRoYW5rcyBmb3IgdGhlIHRob3JvdWdoIGV4cGxhbmF0aW9uLgo+Pgo+PiBPbiAxMS8x
OC8xOSAxMDoxNSBBTSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+PiBIaSBMdWlzLAo+Pj4KPj4+IFsr
TWFyayBmb3IgdGhlIHZhbGlkX3VzZXJfcmVncygpIHBhcnRdCj4+Pgo+Pj4gT24gVHVlLCBOb3Yg
MTIsIDIwMTkgYXQgMDg6MjI6MTBQTSAtMDMwMCwgTHVpcyBNYWNoYWRvIHdyb3RlOgo+Pj4+IEkn
dmUgbm90aWNlZCwgdW5kZXIgdmVyeSBzcGVjaWZpYyBjb25kaXRpb25zLCB0aGF0IGEgUFRSQUNF
X1NJTkdMRVNURVAKPj4+PiByZXF1ZXN0IGJ5IEdEQiB3b24ndCBleGVjdXRlIHRoZSB1bmRlcmx5
aW5nIGluc3RydWN0aW9uLiBBcyBhIAo+Pj4+IGNvbnNlcXVlbmNlLAo+Pj4+IHRoZSBQQyBkb2Vz
bid0IG1vdmUsIGJ1dCB3ZSByZXR1cm4gYSBTSUdUUkFQIGp1c3QgbGlrZSB3ZSB3b3VsZCBmb3Ig
YQo+Pj4+IHJlZ3VsYXIgc3VjY2Vzc2Z1bCBQVFJBQ0VfU0lOR0xFU1RFUCByZXF1ZXN0Lgo+Pj4+
Cj4+Pj4gU2luY2UgdGhlcmUgYXJlIG5vIHNvZnR3YXJlIGJyZWFrcG9pbnRzIGluc2VydGVkIGF0
IFBDICh3ZSBhcmUgYWN0dWFsbHkKPj4+PiBzdGVwcGluZyBvdmVyIGEgYnJlYWtwb2ludCwgc28g
R0RCIHJlbW92ZXMgdGhlIGJyZWFrcG9pbnQgYXQgUEMgYmVmb3JlCj4+Pj4gaXNzdWluZyBhIFBU
UkFDRV9TSU5HTEVTVEVQIHJlcXVlc3QpLCB0aGlzIGlzIGFuIG9kZCBiZWhhdmlvci4KPj4+Pgo+
Pj4+IFRob3VnaCBub3QgdG9vIGhhcm1mdWwsIGkgc2VlIHRoaXMgbWFuaWZlc3RpbmcgaW4gdGhl
IEdEQiB0ZXN0c3VpdGUKPj4+PiAoZ2RiLnJldmVyc2UvaW5zbi1yZXZlcnNlLmV4cCksIHdoaWNo
IHRocm93cyB0aGUgdGVzdCBvZmYgYnkgbWFraW5nIEdEQgo+Pj4+IHRoaW5rIGl0IGlzIGZ1cnRo
ZXIgaW4gdGhlIGluc3RydWN0aW9uIHN0cmVhbSB0aGFuIGl0IHJlYWxseSBpcy4gSW4gCj4+Pj4g
ZmFjdCwgd2UKPj4+PiBnZXQgbHVja3kgaGVyZSBhbmQgbm8gRkFJTCdzIHNob3cgdXAsIG9ubHkg
bWFueSBtb3JlIHNwdXJpb3VzIFBBU1Nlcy4KPj4+Cj4+PiBJIG1hbmFnZWQgdG8gcmVwcm9kdWNl
IHRoaXMgbG9jYWxseSBhbmQgSSB0aGluayBJJ3ZlIGZpZ3VyZWQgb3V0IHdoYXQncwo+Pj4gZ29p
bmcgb24sIGFsdGhvdWdoIEknbSBub3Qgc3VyZSB0aGF0IHRoZSBrZXJuZWwgaXMgdGhlIGJlc3Qg
cGxhY2UgdG8gZml4Cj4+PiBpdC4KPj4+Cj4+PiBMb29raW5nIGF0IHRoZSBzcGVjaWZpYyByZXBy
b2R1Y2VyOgo+Pj4KPj4+PiBFeGVjdXRlIGdkYiBsaWtlIHNvOgo+Pj4+Cj4+Pj4gZ2RiIC1leCAi
c2V0IGRpc3BsYWNlZC1zdGVwcGluZyBvZmYiIC1leCAiYiBsb2FkIiAtZXggInJ1biIgLWV4IAo+
Pj4+ICJyZWNvcmQiIC1leAo+Pj4+ICJzaSIgLWV4ICJyc2kiIC1leCAicmVjb3JkIHN0b3AiIGlu
c24tcmV2ZXJzZQo+Pj4KPj4+IFNvIHdlJ3ZlIGdvdCBhIGNvdXBsZSBvZiBpbnN0cnVjdGlvbnMg
YXMgZm9sbG93cyAoaXQgZG9lc24ndCBhY3R1YWxseSAKPj4+IG1hdHRlcgo+Pj4gd2hhdCB0aGV5
IGFyZSwgc28gSSd2ZSBjaGFuZ2VkIHRoZSBMRDEgaW4geW91ciBiaW5hcnkgZm9yIGEgTk9QIGlu
IAo+Pj4gb3JkZXIgdG8KPj4+IGF2b2lkIGNvbmZ1c2lvbiB3aXRoIHRoZSAibG9hZCIgbGFiZWwg
bm90IGFjdHVhbGx5IHBvaW50aW5nIGF0IGEgbG9hZCk6Cj4+Pgo+Pj4gwqDCoMKgwqAweDdiODrC
oMKgwqDCoMKgwqDCoCBtb3bCoMKgwqAgLy8gImxvYWQiCj4+PiDCoMKgwqDCoDB4N2JjOsKgwqDC
oMKgwqDCoMKgIG5vcAo+Pj4KPj4+ICJiIGxvYWQiIHBsYWNlcyBhIGJyZWFrcG9pbnQgYXQgMHg3
Yjg6Cj4+Pgo+Pj4gwqDCoMKgwqBwdHJhY2UoUFRSQUNFX1BPS0VEQVRBLCA2NjIsIDB4YWFhYWFh
YWFhN2I4LCAweGQ1MDMyMDFmZDQyMDAwMDApID0gMAo+Pj4KPj4+IFdlIHJ1biB0byBhIHNvZnR3
YXJlIGJyZWFrcG9pbnQgb24gImxvYWQiICh0aGUgbW92IGluc3RydWN0aW9uKS4gV2UgdGFrZQo+
Pj4gdGhlIHRyYXAgYW5kIHRyeSB0byBleGVjdXRlIHRoZSAic2kiLCB3aGljaCBtZWFucyB3ZSBu
ZWVkIHRvIHJlbW92ZSB0aGUKPj4+IGJyZWFrcG9pbnQgd2hpbGUgd2Ugc3RlcCBvdmVyIGl0Ogo+
Pj4KPj4+IMKgwqDCoMKgcHRyYWNlKFBUUkFDRV9QT0tFREFUQSwgNjYyLCAweGFhYWFhYWFhYTdi
OCwgMHhkNTAzMjAxZjkxMDAwM2UwKSA9IDAKPj4+IMKgwqDCoMKgWy4uLl0KPj4+IMKgwqDCoMKg
cHRyYWNlKFBUUkFDRV9TSU5HTEVTVEVQLCA2NjIsIDB4MSwgMCnCoCA9IDAKPj4+Cj4+PiBUaGlz
IGNhdXNlcyB0aGUga2VybmVsIHRvIGFybSB0aGUgc2luZ2xlLXN0ZXAgc3RhdGUgbWFjaGluZSBz
byB0aGF0Cj4+PiBNRFNDUl9FTDEuU1MgPT0gU1BTUl9FTDEuU1MgPT0gMSAoa25vd24gYXMgImFj
dGl2ZS1ub3QtcGVuZGluZyIpLiAKPj4+IFJ1bm5pbmcKPj4+IGFuIGluc3RydWN0aW9uIGluIHVz
ZXJzcGFjZSB3aWxsIHRyYW5zaXRpb24gdG8gTURTQ1JfRUwxLlNTID09MSBhbmQKPj4+IFNQU1Jf
RUwxLlNTID09IDAgKGtub3duIGFzICJhY3RpdmUtcGVuZGluZyIpLCB3aGljaCB3aWxsIGNhdXNl
IHRoZSAKPj4+IHRyYXAgdG8KPj4+IHRyaWdnZXIsIGF0IHdoaWNoIHBvaW50IGdkYiBwdXRzIHRo
ZSBicmVha3BvaW50IGluc3RydWN0aW9uIGJhY2sgCj4+PiBzaW5jZSB0aGUKPj4+IHN0ZXAgaXMg
Y29tcGxldGU6Cj4+Cj4+IFNvLCBqdXN0IHRvIGNvbmZpcm0gbXkgdW5kZXJzdGFuZGluZywgd2Ug
aGF2ZSBhIGNvdXBsZSBiaXRzIAo+PiBjb250cm9sbGluZyBzaW5nbGUtc3RlcHBpbmcgaW4gdGhl
IGtlcm5lbCwgb25lIGluIE1EU0NSX0VMMSBhbmQgCj4+IGFub3RoZXIgaW4gU1BTUl9FTDEuIEdE
QiBkb2Vzbid0IGhhdmUgZGlyZWN0IGFjY2VzcyB0byBhbnkgb2YgdGhvc2UsIAo+PiBjb3JyZWN0
Pwo+Pgo+PiBJbnN0ZWFkLCBHREIgaGFzIGFjY2VzcyB0byBhIFNTIGJpdCBpbiB0aGUgcmVzZXJ2
ZWQgMjF+MjIgcmFuZ2Ugb2YgQ1BTUi4KPj4KPj4gVGhlIHRyYW5zaXRpb24gZnJvbSBhY3RpdmUt
bm90LXBlbmRpbmcgdG8gYWN0aXZlLXBlbmRpbmcgdGFrZXMgcGxhY2UgCj4+IHZpYSBhIHNpbmds
ZSBQVFJBQ0VfU0lOR0xFU1RFUCByZXF1ZXN0PyBJcyB0aGF0IGNvcnJlY3Q/Cj4+Cj4+Pgo+Pj4g
wqDCoMKgwqBwdHJhY2UoUFRSQUNFX1BPS0VEQVRBLCA2NjIsIDB4YWFhYWFhYWFhN2I4LCAweGQ1
MDMyMDFmZDQyMDAwMDApID0gMAo+Pj4KPj4+IFRoaXMgaXMgd2hlcmUgdGhpbmdzIHN0YXJ0IHRv
IGdvIHdyb25nLiBUaGUgInJzaSIgY29tbWFuZCBhdHRlbXB0cyB0bwo+Pj4gcGVyZm9ybSBhIHJl
dmVyc2Ugc3RlcCwgd2hpY2ggbWVhbnMgcmVzdG9yaW5nIHRoZSBvbGQgc3RhdGUgd2hlbiB3ZSB3
ZXJlCj4+PiBwcmV2aW91c2x5IGV4ZWN1dGluZyBhdCAweDdiOC4gSXQgc3RhcnRzIGJ5IHJlbW92
aW5nIHRoZSBicmVha3BvaW50IAo+Pj4gYWdhaW4sCj4+PiBzaW5jZSB3ZSd2ZSBhbHJlYWR5IGhp
dCB0aGF0Ogo+Pj4KPj4+IMKgwqDCoMKgcHRyYWNlKFBUUkFDRV9QT0tFREFUQSwgNjYyLCAweGFh
YWFhYWFhYTdiOCwgMHhkNTAzMjAxZjkxMDAwM2UwKSA9IDAKPj4+Cj4+PiBhbmQgdGhlbiByZXNl
dHMgdGhlIENQVSByZWdpc3RlcnMgdG8gdGhlaXIgb2xkIHZhbHVlczoKPj4+Cj4+PiDCoMKgwqDC
oChJIGRvbid0IGtub3cgd2h5IGl0IGRvZXMgdGhpcyB0aHJlZSB0aW1lcykKPj4+IMKgwqDCoMKg
cHRyYWNlKFBUUkFDRV9TRVRSRUdTRVQsIDY2MiwgTlRfUFJTVEFUVVMsIAo+Pj4gW3tpb3ZfYmFz
ZT0weGZmZmZmZjY0YjNjOCwgaW92X2xlbj0yNzJ9XSkgPSAwCj4+PiDCoMKgwqDCoHB0cmFjZShQ
VFJBQ0VfU0VUUkVHU0VULCA2NjIsIE5UX1BSU1RBVFVTLCAKPj4+IFt7aW92X2Jhc2U9MHhmZmZm
ZmY2NGIzYzgsIGlvdl9sZW49MjcyfV0pID0gMAo+Pj4gwqDCoMKgwqBwdHJhY2UoUFRSQUNFX1NF
VFJFR1NFVCwgNjYyLCBOVF9QUlNUQVRVUywgCj4+PiBbe2lvdl9iYXNlPTB4ZmZmZmZmNjRiM2M4
LCBpb3ZfbGVuPTI3Mn1dKSA9IDAKPj4+Cj4+PiBUaGUgcHJvYmxlbSB3aXRoIHRoaXMgaXMgdGhh
dCB3ZSBoYXZlIG1vdmVkIHRoZSBQQyBiYWNrIHRvIDB4N2I4IGJ1dCAKPj4+IHdlIGhhdmUKPj4+
IGFsc28gY2xlYXJlZCBTUFNSX0VMMS5TUyB0byAwLiBJbnRlcm5hbGx5LCB0aGUga2VybmVsIGhh
c24ndCBzZWVuIAo+Pj4gc3RlcHBpbmcKPj4+IGdldCBkaXNhYmxlZCAodGhpcyB1c3VhbGx5IGhh
cHBlbnMgYnkgUFRSQUNFX0NPTlQgY2FsbGluZwo+Pj4gdXNlcl9kaXNhYmxlX3NpbmdsZV9zdGVw
KCkpIHdoaWNoIG1lYW5zIHRoYXQgTURTQ1JfRUwxLlNTIHJlbWFpbnMgc2V0IAo+Pj4gdG8gMQo+
Pj4gYW5kIHdlJ3JlIGluIHRoZSBhY3RpdmUtcGVuZGluZyBzdGF0ZSEgQ29uc2VxdWVudGx5LCB3
ZSBpbW1lZGlhdGVseSAKPj4+IHRha2UgYQo+Pj4gc3RlcCBleGNlcHRpb24gaWYgYSBzdGVwIG9w
ZXJhdGlvbiBpcyBhdHRlbXB0ZWQgPgo+Pgo+PiBXaGlsZSB0cnlpbmcgdG8gcmVwcm9kdWNlIHRo
aXMsIGkgd2FzIHBheWluZyBhdHRlbnRpb24gdG8gdGhlIFNTIGJpdCAKPj4gY29taW5nIGFuZCBn
b2luZy4gQnV0IGluIHRoZSBwYXJ0aWN1bGFyIHNlcXVlbmNlIG9mIHNpL3JzaSwgd2l0aGluIHRo
ZSAKPj4gcmVjb3JkIGJvdW5kYXJpZXMsIGkgc2VlIEdEQiBqdXN0IHJlc3RvcmVkIHRoZSBvcmln
aW5hbCBDUFNSIHZhbHVlIHRvIAo+PiB3aGF0IGl0IHdhcyBiZWZvcmUgd2UgcHJvY2Vzc2VkIHRo
ZSBzaSBjb21tYW5kLgo+Pgo+PiDCoEZyb20gR0RCJ3MgUE9WIGFsbCBzdGF0ZSB3YXMgcmVzdG9y
ZSB0byB0aGUgd2F5IGl0IHdhcyBiZWZvcmUgYW5kIAo+PiB3ZSdyZSBnb29kIHRvIGdvLgo+Pgo+
PiBJcyB0aGlzIG5vdCBlbm91Z2ggdG8gcmVzdG9yZSBzdGF0ZSBrZXJuZWwtd2lzZT8KPj4KPj4+
IE5vdywgd2UgKmNvdWxkKiBjb25zaWRlciBoYWNraW5nIHRoZSBUSUZfU0lOR0xFU1RFUCBjaGVj
ayBpbgo+Pj4gdmFsaWRfdXNlcl9yZWdzKCkgc28gdGhhdCBTUFNSX0VMMS5TUyBpcyBwcmVzZXJ2
ZWQgd2hlbiBzdGVwcGluZyBpcyAKPj4+IGFjdGl2ZQo+Pj4gYnV0IHRoaXMgaXMgYSB1c2VyLXZp
c2libGUgY2hhbmdlIGFuZCBtYXkgYnJlYWsgdGhpbmdzIGxpa2Ugc3RlcHBpbmcgCj4+PiBvdXQg
b2YKPj4+IHNpZ25hbCBoYW5kbGVycy4gSSB3b3VsZCBwcmVmZXIgdGhhdCBHREIgbWFuYWdlcyB0
aGUgU1MgYml0IAo+Pj4gZXhwbGljaXRseSBpbgo+Pj4gdGhpcyBzY2VuYXJpbywgYnkgc2V0dGlu
ZyBpdCB0byAxIHdoZW4gcmVzdG9yaW5nIHRoZSBvbGQgc3RhdGUgaW4gdGhlCj4+PiByZXZlcnNl
IHN0ZXAsIGEgYml0IGxpa2Ugd2hlbiBpdCBkaXNhYmxlcyB0aGUgb2xkIGJyZWFrcG9pbnQuIFlv
dSBjYW4KPj4+IGVtdWxhdGUgdGhpcyBieSBkb2luZzoKPj4KPj4gSSB0aGluayB3ZSBjb3VsZCBs
ZXQgR0RCIGNvbnRyb2wgdGhpcyB3aGVuIHJlcXVpcmVkLCBidXQgSSdtIHRyeWluZyB0byAKPj4g
dW5kZXJzdGFuZCB0aGUgcmFtaWZpY2F0aW9ucyBvZiBsZXR0aW5nIEdEQiBkbyBzby4KPj4KPj4g
Rm9yIGV4YW1wbGUsIHdoYXQgaWYgdGhlIHVzZXIgZGVjaWRlcyB0byBhbHRlciB0aGUgUEMgaGVy
ZSBhbmQgdGhlcmUsIAo+PiBmb3IgZGVidWdnaW5nIHB1cnBvc2VzLiBUaGF0IGlzIGEgdXNlIGNh
c2UgdGhhdCBoYXBwZW5zIG9mdGVuLCBpbiAKPj4gb3JkZXIgdG8gZ28gYmFjayBvciBza2lwIHNv
bWUgcGFydHMgb2YgdGhlIGNvZGUuCj4+Cj4+IFdvdWxkIHdlIG5lZWQgdG8gcGF5IGF0dGVudGlv
biB0byB0aGUgU1MgYml0IGluIHRob3NlIGNhc2VzIGFzIHdlbGw/Cj4+Cj4+Pgo+Pj4gwqDCoMKg
wqAoZ2RiKSBzZXQgJGNwc3IgfD0gKDE8PDIxKQo+Pgo+PiBJbiBwYXJ0aWN1bGFyLCB3aGF0IGRv
ZXMgdGhlIHN3aXRjaGluZyBvZiB0aGlzIGJpdCBhY2NvbXBsaXNoZXMgaW4gdGhlIAo+PiBrZXJu
ZWw/IFdvdWxkIHdlIGJlIGJldHRlciBvZmYgZm9yY2luZyB0aGUgU1MgYml0IGV2ZXJ5IHRpbWUg
d2UgZG8gYSAKPj4gc2luZ2xlLXN0ZXAgb3BlcmF0aW9uLCBmb3IgZXhhbXBsZT8KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
