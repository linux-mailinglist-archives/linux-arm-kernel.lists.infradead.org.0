Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCE245A04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S/ZkUMS/UP6744BcIqYtt0ZNphtxaS2BUtxAVlC/kgk=; b=IfU1OV1FIAIEZBhv5vxvhk2pt
	Di8ikx13uaCZjB/Z02megkV1r70mHLTM+T2TDOiwttCj5cG20pnrNhBvCLUAC8ge61vJO22lsaptw
	ERcGlaXzNupqQ6FtnZ4tIv9JaX5je1zWAcaUULyrvBCS775Djw2m5Q1RhBx0ccdOIKsHLBimtfDNz
	yIILHJFKs59t5H8QXtuS4p2iw45Q9eriTL/WtSyOlgb62hHFu6L3nZHk5iJbkJP7d+YG1FVgOZXaI
	AaBSzAPQdmQegyZ1U/WbW6DSvUtOF7YUM1LjrBIxOKwTdrSDTSvJucQrOEFNez6t8fEXDlb5lCm20
	oRujIDPew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbj9R-0007ny-Ka; Fri, 14 Jun 2019 10:09:41 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbj97-0007mx-QI
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:09:23 +0000
Received: by mail-lj1-x241.google.com with SMTP id a21so1790125ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 03:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gBUTP/9d4eNCeN/EaijNMsMRPRF11lY2kYs29fPMWho=;
 b=lA8ItZsv8zU0scjXM+Gj9HSHf1FNgIylWpMp1BDQ2+swnb/puvmoO0tt7yIz8Ct65B
 yryJj2b91cQeFuHbbj3J1V2y5AdJ1zqt9l7vj0KVyzVPJ0lB8JrGnKMPqY6W++L4rEaT
 utqFMYNHUZJnOxDWKajoNntqoJ89FnwFHAcOs5ZALev9OrOqSrVSTQwUw9h+ljI9J3Qc
 Tv5D1KieK5GTif5P1OCM5uI9stIbPamnYxGerNqUPzQhavSBeZ056rVim0MkRjapEgc2
 3WiM8fI/R2z2+TJEb8aN3C4sU6RnJgjnlmgTsB7omYQ79golinlsrb2sarF83rk/Jtdu
 0UIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gBUTP/9d4eNCeN/EaijNMsMRPRF11lY2kYs29fPMWho=;
 b=fAWD7CNIKJt2M9q1eA+oDBO7eayV3KZN6dKnp45ZEGxONpaDZ7nQHilGIOFMQ5qPHj
 6GazXnAgy2q/XtEOFV/BNfzWRcNfSSlBhLW56gBtnJTstinmIeDhBbeEQ8aj0D2ktuX5
 A47j01p4pNEvzvhmtxqcxFBZBMEqnycuN4s8SCvJEtL60I1ksV+5r1OgrE1QOceumtgH
 toLNhd3B2+4BtsBRjIrXbMEUzo/d8VilY8CDmLLHwm47NneZI+9f2nt9+D2jrnGdmmOC
 iOWafTYAbxSt+VAk3SMRdK4k3OXD5tv/+DuZIr7ksrCmvy1AaTSdLJHSV6cNkmHD+aop
 82pA==
X-Gm-Message-State: APjAAAUsSBnUJ2M0pW3FR8qDXwWAL8YV8ESF8/+ji28XKy7g7RXutSWh
 Sj8sqF9j2yUvifIRjbOB4H8Wrg==
X-Google-Smtp-Source: APXvYqzFjvfaIr7hZ0uqPHIOyBaOi/9LfmBYdWpPBUZqqTBN80jiQMuCXJUTUISCyY1oJPiCgUMkOg==
X-Received: by 2002:a2e:6348:: with SMTP id x69mr39647043ljb.186.1560506959356; 
 Fri, 14 Jun 2019 03:09:19 -0700 (PDT)
Received: from [192.168.1.102] ([83.68.95.66])
 by smtp.googlemail.com with ESMTPSA id o11sm406073lfl.15.2019.06.14.03.09.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 03:09:18 -0700 (PDT)
Subject: Re: [bug report] ACPI: Add new IORT functions to support MSI domain
 handling
To: Hanjun Guo <guohanjun@huawei.com>, Robin Murphy <robin.murphy@arm.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
References: <20190613065410.GB16334@mwanda>
 <425b5d78-b38f-270b-94e2-7ece1e5498e5@arm.com>
 <5f9fecb1-66de-b550-3f8e-097795a08efe@huawei.com>
From: Tomasz Nowicki <tn@semihalf.com>
Message-ID: <40cc7b22-d5e6-ffcf-d6ec-a74f3fbe906c@semihalf.com>
Date: Fri, 14 Jun 2019 12:09:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5f9fecb1-66de-b550-3f8e-097795a08efe@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_030921_890956_8DDECCB1 
X-CRM114-Status: GOOD (  19.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-acpi@vger.kernel.org, Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQuMDYuMjAxOSAwMzowMywgSGFuanVuIEd1byB3cm90ZToKPiBPbiAyMDE5LzYvMTMgMTc6
MzAsIFJvYmluIE11cnBoeSB3cm90ZToKPj4gT24gMTMvMDYvMjAxOSAwNzo1NCwgRGFuIENhcnBl
bnRlciB3cm90ZToKPj4+IEhlbGxvIFRvbWFzeiBOb3dpY2tpLAo+Pj4KPj4+IFRoZSBwYXRjaCA0
YmYyZWZkMjZkNzY6ICJBQ1BJOiBBZGQgbmV3IElPUlQgZnVuY3Rpb25zIHRvIHN1cHBvcnQgTVNJ
Cj4+PiBkb21haW4gaGFuZGxpbmciIGZyb20gU2VwIDEyLCAyMDE2LCBsZWFkcyB0byB0aGUgZm9s
bG93aW5nIHN0YXRpYwo+Pj4gY2hlY2tlciB3YXJuaW5nOgo+Pj4KPj4+ICDCoMKgwqDCoGRyaXZl
cnMvYWNwaS9hcm02NC9pb3J0LmM6NjI4IGlvcnRfZGV2X2ZpbmRfaXRzX2lkKCkKPj4+ICDCoMKg
wqDCoHdhcm46IGFycmF5IG9mZiBieSBvbmU/ICdpdHMtPmlkZW50aWZpZXJzW2lkeF0nCj4+Pgo+
Pj4gZHJpdmVycy9hY3BpL2FybTY0L2lvcnQuYwo+Pj4gIMKgwqDCoCA1ODnCoCAvKioKPj4+ICDC
oMKgwqAgNTkwwqDCoCAqIGlvcnRfZGV2X2ZpbmRfaXRzX2lkKCkgLSBGaW5kIHRoZSBJVFMgaWRl
bnRpZmllciBmb3IgYSBkZXZpY2UKPj4+ICDCoMKgwqAgNTkxwqDCoCAqIEBkZXY6IFRoZSBkZXZp
Y2UuCj4+PiAgwqDCoMKgIDU5MsKgwqAgKiBAcmVxX2lkOiBEZXZpY2UncyByZXF1ZXN0ZXIgSUQK
Pj4+ICDCoMKgwqAgNTkzwqDCoCAqIEBpZHg6IEluZGV4IG9mIHRoZSBJVFMgaWRlbnRpZmllciBs
aXN0Lgo+Pj4gIMKgwqDCoCA1OTTCoMKgICogQGl0c19pZDogSVRTIGlkZW50aWZpZXIuCj4+PiAg
wqDCoMKgIDU5NcKgwqAgKgo+Pj4gIMKgwqDCoCA1OTbCoMKgICogUmV0dXJuczogMCBvbiBzdWNj
ZXNzLCBhcHByb3ByaWF0ZSBlcnJvciB2YWx1ZSBvdGhlcndpc2UKPj4+ICDCoMKgwqAgNTk3wqDC
oCAqLwo+Pj4gIMKgwqDCoCA1OTjCoCBzdGF0aWMgaW50IGlvcnRfZGV2X2ZpbmRfaXRzX2lkKHN0
cnVjdCBkZXZpY2UgKmRldiwgdTMyIHJlcV9pZCwKPj4+ICDCoMKgwqAgNTk5wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVu
c2lnbmVkIGludCBpZHgsIGludCAqaXRzX2lkKQo+Pj4gIMKgwqDCoCA2MDDCoCB7Cj4+PiAgwqDC
oMKgIDYwMcKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgYWNwaV9pb3J0X2l0c19ncm91cCAqaXRz
Owo+Pj4gIMKgwqDCoCA2MDLCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGFjcGlfaW9ydF9ub2Rl
ICpub2RlOwo+Pj4gIMKgwqDCoCA2MDMKPj4+ICDCoMKgwqAgNjA0wqDCoMKgwqDCoMKgwqDCoMKg
IG5vZGUgPSBpb3J0X2ZpbmRfZGV2X25vZGUoZGV2KTsKPj4+ICDCoMKgwqAgNjA1wqDCoMKgwqDC
oMKgwqDCoMKgIGlmICghbm9kZSkKPj4+ICDCoMKgwqAgNjA2wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOWElPOwo+Pj4gIMKgwqDCoCA2MDcKPj4+ICDCoMKgwqAg
NjA4wqDCoMKgwqDCoMKgwqDCoMKgIG5vZGUgPSBpb3J0X25vZGVfbWFwX2lkKG5vZGUsIHJlcV9p
ZCwgTlVMTCwgSU9SVF9NU0lfVFlQRSk7Cj4+PiAgwqDCoMKgIDYwOcKgwqDCoMKgwqDCoMKgwqDC
oCBpZiAoIW5vZGUpCj4+PiAgwqDCoMKgIDYxMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIC1FTlhJTzsKPj4+ICDCoMKgwqAgNjExCj4+PiAgwqDCoMKgIDYxMsKgwqDC
oMKgwqDCoMKgwqDCoCAvKiBNb3ZlIHRvIElUUyBzcGVjaWZpYyBkYXRhICovCj4+PiAgwqDCoMKg
IDYxM8KgwqDCoMKgwqDCoMKgwqDCoCBpdHMgPSAoc3RydWN0IGFjcGlfaW9ydF9pdHNfZ3JvdXAg
Kilub2RlLT5ub2RlX2RhdGE7Cj4+PiAgwqDCoMKgIDYxNMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAo
aWR4ID4gaXRzLT5pdHNfY291bnQpIHsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIF5eXl5eXl5eXl5eXl5eXl5eXl5eCj4+PiBJIHdhc24ndCBhYmxlIHRvIGZp
bmQgYW55IGluZm9ybWF0aW9uIGFib3V0IGhvdyBpdHMtPml0c19jb3VudCBpcyBzZXQKPj4+IGJ1
dCBpdCBsb29rcyB0byBtZSB0aGF0IGlzIG9mZiBieSBvbmUuCj4+Cj4+IGl0cy0+Y291bnQgaXMg
cmVhZCBkaXJlY3RseSBmcm9tIHRoZSBmaXJtd2FyZSB0YWJsZS4gQ3VycmVudGx5IGl0IHNlZW1z
IHRoaXMgY29uZGl0aW9uIGNhbiBuZXZlciBiZSBoaXQgYW55d2F5LCBzaW5jZSB0aGlzIGlzIG9u
bHkgZXZlciBjYWxsZWQgd2l0aCBpZHggPT0gMC4gVEJIIEkgY2FuJ3QgcmVhbGx5IHNlZSBob3cg
dGhlIGNvZGUgY291bGQgZXZvbHZlIHN1Y2ggdGhhdCB0aGlzIGNoZWNrIHNob3VsZCBldmVyIGJl
IG5lY2Vzc2FyeSAoaS5lLiBpdCBtYWtlcyBubyBzZW5zZSBmb3IgY2FsbGVycyB0byBwdWxsIGlk
eCB2YWx1ZXMgb3V0IGlmIHRoaW4gYWlyLCBzbyB0aGV5J2QgcHJlc3VtYWJseSBlbmQgdXAgYmVp
bmcgZGVyaXZlZCBmcm9tIGl0cy0+Y291bnQgaW4gdGhlIGZpcnN0IHBsYWNlKSwgYnV0IGlmIHdl
IGFyZSBnb2luZyB0byBoYXZlIGl0IHRoZW4gSSBhZ3JlZSBpdCBzaG91bGQgYmUgIj49Ii4KPiAK
PiBGb3Igbm93IHNlZW1zIHdlIG9ubHkgZ290IHN5c3RlbXMgd2hpY2ggbWFwIGEgZGV2aWNlIHRv
IGEgc2luZ2xlCj4gSVRTLCBidXQgaW4gdGhlIElPUlQgc3BlYywgaXQgYXNzdW1lcyB0aGF0IG1h
eWJlIHRoZXJlIGlzIGEgSVRTIGdyb3VwCj4gZm9yIG1hcHBpbmcsIHNvIEkgdGhpbmsgd2UgY2Fu
IGp1c3QgdXNlICI+PSIgYXMgeW91IHN1Z2dlc3RlZCB0bwo+IGFsaWduIHdpdGggdGhlIHNwZWMu
Cj4gCgpZZXMsIHNob3VsZCBiZSAiPj0iIGFuZCB0aGUgZXJyb3IgbWFzc2FnZSBzaG91bGQgYmUg
Zml4ZWQgYXMgd2VsbDoKCi8qIE1vdmUgdG8gSVRTIHNwZWNpZmljIGRhdGEgKi8KaXRzID0gKHN0
cnVjdCBhY3BpX2lvcnRfaXRzX2dyb3VwICopbm9kZS0+bm9kZV9kYXRhOwppZiAoaWR4ID49IGl0
cy0+aXRzX2NvdW50KSB7CiAgICAgICAgIGRldl9lcnIoZGV2LCAicmVxdWVzdGVkIElUUyBJRCBp
bmRleCBbJWRdIGV4Y2VlZHMgbWF4IHBlcm1pdHRlZCAKWyVkXSBpbmRleFxuIiwKICAgICAgICAg
ICAgICAgICBpZHgsIGl0cy0+aXRzX2NvdW50IC0gMSk7CiAgICAgICAgIHJldHVybiAtRU5YSU87
Cn0KClRoYW5rcywKVG9tYXN6CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
