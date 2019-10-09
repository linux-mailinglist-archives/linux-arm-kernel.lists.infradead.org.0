Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF50D0738
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 08:30:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6VNAq4HpPsEsjtuS91ZLAswayd9x6yg/r2vq4CUAEuw=; b=qiuFGTDlh/ffjlHBV/WuhkqnZ
	zfM6jER/D2GxWsWw19/mvffp2FOYpDa4sRIEmtVfDicPa6oaODX492oOexAT20Jn9lNh8rcnJyfEz
	Bz3GsCnzdeGXrOI9TJzLclvu2y+6L6gTS+75xJ0aFssGMAEBk0BHQTVcuqQ8c25eTJs/CoOUMutZf
	172+JXdFHYN2n2q072CyLC1/ZF+J4mi9L1MSTAlmJgwvRfPMi92uOqZiMloe/0l2IFivRzWtAeRNW
	WAcYkURAw5YntjgoskzLb9VEsJvn0nJDI3BxlBT/BAO8yZe/6lghEMS6bEOvlHI4eoFctGCRGFws8
	8NeorrOhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI5UG-0001pN-Cb; Wed, 09 Oct 2019 06:30:16 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI5U3-0001CI-4L
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 06:30:04 +0000
Received: by mail-pl1-x643.google.com with SMTP id t10so548879plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 23:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=w68/orlNscWNc/RUeRC/f2rPS8rnm+VfnzeAEKq1oho=;
 b=gCAsZizJ9a3a0D5hVnAfZkm/iL5uzpK6VAqTpzgEYwlxQ+3u652p3Y/VZBqO7FveWB
 Nq7EMGtdS4MC0QctnX0zHCHDvhnZYkGf941vE1ny/Ht9sX3Iq2kywSAR51MHKQWG1Ph4
 BUWNHY6OXqwubIpbWNafpxMIPZKcVg3f5OYwHMQ/rHHrjD0PmvvF6RHNsqXDzXzM65Jn
 XJP6RWKqNo0xUZDdqVVeGkLGlrfNu0pzbx68EYCiGEu6VKlp3PYFn4QdUAiBlwNFwiTM
 ULODzh/thFVYThjDakFi0rHFgulQUW7mX3lqdoGjCH98NZJdvXa/BVPCi7Cj+WAwQW3c
 6ohw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=w68/orlNscWNc/RUeRC/f2rPS8rnm+VfnzeAEKq1oho=;
 b=blBt+xyXYO9qxr3CVDMnZ/pI8eGGEJrDScb0svfLKHrii+OmHdG3mXofHYVfksO2E1
 jURg1/AdA32kzH2I8oyjJwX5O8mDRjM0RCxmd37fuDEd+cJlCAssN/BT0uYacmVs8s51
 +nwUT1UySYfkyT5ZdO2TaxXc4za1wiHaw0h2g/GK9CwM8ME75vrHKcszRdT4l/3bFsKR
 m3UAh0mnz80ceJWKNjN03ysId0iiH8ukbc9sDDkV4z4fcJsuCSV2Vn5Zvcmydzt+vVsp
 Z+m2USEvWF4Ms6iypveOr1ebGx/moxEVMP6bXHRpfGGJ2AgVu/czQb4ezeoaPwrpwqJG
 OWoQ==
X-Gm-Message-State: APjAAAUsZBZ971KU2aDJNiMnXfQ3jmVwgkiK38xVn5+/WfqEsK05E1lc
 fLs8tV+Q5EoOeA3mI4qhjso=
X-Google-Smtp-Source: APXvYqxkfVNDvqvamqZYmknXHRyR5WvVmjl5du1D4+hbKLSxzIltzJwTMLTMlINKS6fH0aPAUAiFVg==
X-Received: by 2002:a17:902:8d89:: with SMTP id
 v9mr1528070plo.247.1570602602062; 
 Tue, 08 Oct 2019 23:30:02 -0700 (PDT)
Received: from [0.0.0.0] (104.129.187.94.16clouds.com. [104.129.187.94])
 by smtp.gmail.com with ESMTPSA id f185sm1284523pfb.183.2019.10.08.23.29.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 08 Oct 2019 23:30:00 -0700 (PDT)
Subject: Re: [PATCH v10 1/3] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 "Justin He (Arm Technology China)" <Justin.He@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-2-justin.he@arm.com>
 <20191001125446.gknoofnm7az4wqf5@willie-the-truck>
 <20191001141848.762296bd@why>
 <DB7PR08MB30824EFD975EE9BACAC7FD52F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
 <e4fc5be5-8594-121a-198b-17ca7486dd3a@arm.com>
From: Jia He <hejianet@gmail.com>
Message-ID: <1b28b20c-bc10-dbf6-aa78-afd985cf8920@gmail.com>
Date: Wed, 9 Oct 2019 14:29:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <e4fc5be5-8594-121a-198b-17ca7486dd3a@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_233003_183604_D3FC47B5 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hejianet[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 James Morse <James.Morse@arm.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Punit Agrawal <punitagrawal@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpCgpPbiAyMDE5LzEwLzggMjM6MzIsIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6Cj4K
Pgo+IE9uIDA4LzEwLzIwMTkgMDI6MTIsIEp1c3RpbiBIZSAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEp
IHdyb3RlOgo+PiBIaSBXaWxsIGFuZCBNYXJjCj4+IFNvcnJ5IGZvciB0aGUgbGF0ZSByZXNwb25z
ZSwganVzdCBjYW1lIGJhY2sgZnJvbSBhIHZhY2F0aW9uLgo+Pgo+Pj4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0KPj4+IEZyb206IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+Cj4+PiBT
ZW50OiAyMDE55bm0MTDmnIgx5pelIDIxOjE5Cj4+PiBUbzogV2lsbCBEZWFjb24gPHdpbGxAa2Vy
bmVsLm9yZz4KPj4+IENjOiBKdXN0aW4gSGUgKEFybSBUZWNobm9sb2d5IENoaW5hKSA8SnVzdGlu
LkhlQGFybS5jb20+OyBDYXRhbGluCj4+PiBNYXJpbmFzIDxDYXRhbGluLk1hcmluYXNAYXJtLmNv
bT47IE1hcmsgUnV0bGFuZAo+Pj4gPE1hcmsuUnV0bGFuZEBhcm0uY29tPjsgSmFtZXMgTW9yc2Ug
PEphbWVzLk1vcnNlQGFybS5jb20+Owo+Pj4gTWF0dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVh
ZC5vcmc+OyBLaXJpbGwgQS4gU2h1dGVtb3YKPj4+IDxraXJpbGwuc2h1dGVtb3ZAbGludXguaW50
ZWwuY29tPjsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOwo+Pj4gbGludXgt
a2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtbW1Aa3ZhY2sub3JnOyBQdW5pdCBBZ3Jhd2Fs
Cj4+PiA8cHVuaXRhZ3Jhd2FsQGdtYWlsLmNvbT47IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51
dHJvbml4LmRlPjsKPj4+IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+
OyBoZWppYW5ldEBnbWFpbC5jb207IEthbHkKPj4+IFhpbiAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEp
IDxLYWx5LlhpbkBhcm0uY29tPgo+Pj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MTAgMS8zXSBhcm02
NDogY3B1ZmVhdHVyZTogaW50cm9kdWNlIGhlbHBlcgo+Pj4gY3B1X2hhc19od19hZigpCj4+Pgo+
Pj4gT24gVHVlLCAxIE9jdCAyMDE5IDEzOjU0OjQ3ICswMTAwCj4+PiBXaWxsIERlYWNvbiA8d2ls
bEBrZXJuZWwub3JnPiB3cm90ZToKPj4+Cj4+Pj4gT24gTW9uLCBTZXAgMzAsIDIwMTkgYXQgMDk6
NTc6MzhBTSArMDgwMCwgSmlhIEhlIHdyb3RlOgo+Pj4+PiBXZSB1bmNvbmRpdGlvbmFsbHkgc2V0
IHRoZSBIV19BRkRCTSBjYXBhYmlsaXR5IGFuZCBvbmx5IGVuYWJsZSBpdCBvbgo+Pj4+PiBDUFVz
IHdoaWNoIHJlYWxseSBoYXZlIHRoZSBmZWF0dXJlLiBCdXQgc29tZXRpbWVzIHdlIG5lZWQgdG8g
a25vdwo+Pj4+PiB3aGV0aGVyIHRoaXMgY3B1IGhhcyB0aGUgY2FwYWJpbGl0eSBvZiBIVyBBRi4g
U28gZGVjb3VwbGUgQUYgZnJvbQo+Pj4+PiBEQk0gYnkgbmV3IGhlbHBlciBjcHVfaGFzX2h3X2Fm
KCkuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEppYSBIZSA8anVzdGluLmhlQGFybS5jb20+
Cj4+Pj4+IFN1Z2dlc3RlZC1ieTogU3V6dWtpIFBvdWxvc2UgPFN1enVraS5Qb3Vsb3NlQGFybS5j
b20+Cj4+Pj4+IFJldmlld2VkLWJ5OiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bh
cm0uY29tPgo+Pj4+PiAtLS0KPj4+Pj4gwqAgYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9jcHVmZWF0
dXJlLmggfCAxMCArKysrKysrKysrCj4+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRp
b25zKCspCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2Nw
dWZlYXR1cmUuaAo+Pj4gYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2NwdWZlYXR1cmUuaAo+Pj4+
PiBpbmRleCA5Y2RlNWQyZTc2OGYuLjk0OWJjN2M4NTAzMCAxMDA2NDQKPj4+Pj4gLS0tIGEvYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS9jcHVmZWF0dXJlLmgKPj4+Pj4gKysrIGIvYXJjaC9hcm02NC9p
bmNsdWRlL2FzbS9jcHVmZWF0dXJlLmgKPj4+Pj4gQEAgLTY1OSw2ICs2NTksMTYgQEAgc3RhdGlj
IGlubGluZSB1MzIKPj4+IGlkX2FhNjRtbWZyMF9wYXJhbmdlX3RvX3BoeXNfc2hpZnQoaW50IHBh
cmFuZ2UpCj4+Pj4+IMKgwqAgZGVmYXVsdDogcmV0dXJuIENPTkZJR19BUk02NF9QQV9CSVRTOwo+
Pj4+PiDCoMKgIH0KPj4+Pj4gwqAgfQo+Pj4+PiArCj4+Pj4+ICsvKiBDaGVjayB3aGV0aGVyIGhh
cmR3YXJlIHVwZGF0ZSBvZiB0aGUgQWNjZXNzIGZsYWcgaXMgc3VwcG9ydGVkICovCj4+Pj4+ICtz
dGF0aWMgaW5saW5lIGJvb2wgY3B1X2hhc19od19hZih2b2lkKQo+Pj4+PiArewo+Pj4+PiArIGlm
IChJU19FTkFCTEVEKENPTkZJR19BUk02NF9IV19BRkRCTSkpCj4+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgIHJldHVybiByZWFkX2NwdWlkKElEX0FBNjRNTUZSMV9FTDEpICYgMHhmOwo+Pj4+Cj4+Pj4g
MHhmPyBJIHRoaW5rIHdlIHNob3VsZCBoYXZlIGEgbWFzayBpbiBzeXNyZWcuaCBmb3IgdGhpcyBj
b25zdGFudC4KPj4+Cj4+PiBXZSBkb24ndCBoYXZlIHRoZSBtYXNrLCBidXQgd2UgY2VydGFpbmx5
IGhhdmUgdGhlIHNoaWZ0Lgo+Pj4KPj4+IEdFTk1BU0soSURfQUE2NE1NRlIxX0hBREJTX1NISUZU
ICsgMywKPj4+IElEX0FBNjRNTUZSMV9IQURCU19TSElGVCkgaXMgYSBiaXQKPj4+IG9mIGEgbW91
dGhmdWwgdGhvdWdoLiBJZGVhbGx5LCB3ZSdkIGhhdmUgYSBoZWxwZXIgZm9yIHRoYXQuCj4+Pgo+
PiBPaywgSSB3aWxsIGltcGxlbWVudCB0aGUgaGVscGVyIGlmIHRoZXJlIGlzbid0IHNvIGZhci4K
Pj4gQW5kIHRoZW4gcmVwbGFjZSB0aGUgMHhmIHdpdGggaXQuCj4KPiBPciBjb3VsZCB3ZSBzaW1w
bCByZXVzZSBleGlzdGluZyBjcHVpZF9mZWF0dXJlX2V4dHJhY3RfdW5zaWduZWRfZmllbGQoKSA/
Cj4KPiB1NjQgbW1mcjEgPSByZWFkX2NwdWlkKElEX0FBNjRNTUZSMV9FTDEpOwo+Cj4gcmV0dXJu
IGNwdWlkX2ZlYXR1cmVfZXh0cmFjdF91bnNpZ25lZF9maWVsZChtbWZyMSwgSURfQUE2NE1NRlIx
X0hBREJTX1NISUZUKSA/Cj4KWWVzLCB3ZSBjYW4sIEkgd2lsbCBzZW5kIHRoZSBuZXcgdmVyc2lv
bgoKLS0tCkNoZWVycywKSnVzdGluIChKaWEgSGUpCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
