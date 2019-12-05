Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D01114312
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:54:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zope/8O4ocoVoJiNcLA8VfzovzMqzyiwHH11JHpYBFQ=; b=T0+bHTuaDFb6UB
	W6107y+axeNZ98WhGFfh/VCcq2TXkwMfp4dBRufZ6eGXsgTEwPV84ao4pw9CtBrJrLfGkccUePY3n
	ARKRAidOlWYits/pRnxU7qoVCm5e+wsqjYkh7oOuZdJWquh7ulnejMIXgdYrMRb7AP0Pz+khtd23Y
	xPDgGf8sWI3wKrPMETCvpXJFf3YTKSvpR+C/mTs3gn99Ngj/82VAVUYJgODogq40j94spoS0xDSO/
	qWW6Sma4/yQONArbBwOTxiz3PCmakrireKmhf6HcvA5CDXeW4qXceZ3aKM4FxAov4nMXqDYvfMBc0
	NNMT/d40E+FRlzaIeGWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icsWP-0006de-Iz; Thu, 05 Dec 2019 14:54:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icsWE-0006d1-6G
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 14:54:15 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so4015615wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 06:54:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=forissier-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yaaxXMsupOVbvvZKGq1cvG+xyAVUwReDTEesUtR9waM=;
 b=1K1BJpHrnAvKU1j4PIXGKaBHSKFKRE7aStcj19ydnr48hHre8B0Wke0SwvaHzo+gKs
 MMBu/CFTCQbXFMJI5hAe/gUKhEmU77MFmqlqMxkWo5gnpJOuxB/WV/YOcnTVX1dIYyDL
 561ktCbV41mOC0ANYrDted3IwidFTTDVXXNbM8zDJowxH0oqcrenObb9GMONubobXHMJ
 JZWmIW+BFcozm7be4MmNDDNEV+6fAhsFt1L2LgGHfRLOdB9mCSsLfGwE5Pw6rDMdxSM+
 GR3NU9hUu5RNO6tKMWqJd1UXcMnIim/8UuVObRZJwAeUzQ8TRDwBGDSaieUAoWHeo1SG
 23GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yaaxXMsupOVbvvZKGq1cvG+xyAVUwReDTEesUtR9waM=;
 b=p5g8iGgQAQMsCaJKvDE3cwEyATvJYGM0xTZ+cVqMtutK5ZZR8ndEyBC+I2ZSczqY+7
 gwpicg1O0N/uPWFKjQsZDHOWYMzKY2cYbeNCk6lmec97XEf2eiSSk/Kcvh2fJC+vlrBW
 +adCFvlPJB9NeqMrKT+S5LRXb5r82j3ThbzVhxRXYU85ZdF6dXUQDyMYZzQsPSTnGp5g
 JnXNHOhDzOcdY1nzHCldk+/EoEzIRqi9xf9Im53pWFHehYwUxhJgEF2fq84YskrsEWUh
 C+Gq1bLavAU+f8zfGy5GVOVaUs+w8mOPFix9KqqYXPr2dWz9EkYDET15pUIOqVjEq7TS
 4ztg==
X-Gm-Message-State: APjAAAUncZk95Vcu8FRqD6MpfZ+PE+BmoL6QUtcnQtJ9vGMSTUb6XSu7
 vhIL71fwOrNef1TJYeYOBdVOng==
X-Google-Smtp-Source: APXvYqzTbADPyya53iJOCwM/yTLcBN/X2adBMkAmPsTystETLRiPnm02gyeoghZ9bXpOl8OtMSn2QA==
X-Received: by 2002:a5d:6b88:: with SMTP id n8mr11120004wrx.288.1575557652204; 
 Thu, 05 Dec 2019 06:54:12 -0800 (PST)
Received: from [192.168.1.7] ([5.50.11.226])
 by smtp.gmail.com with ESMTPSA id w8sm112277wmm.0.2019.12.05.06.54.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 06:54:11 -0800 (PST)
Subject: Re: Kernel v5.2+ on HiKey960?
To: Will Deacon <will@kernel.org>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <20191204101851.GC13081@arrakis.emea.arm.com>
 <1c5e497f-4be0-e1f3-4d6d-fed9470d0406@forissier.org>
 <20191204142824.GB26730@arrakis.emea.arm.com>
 <226a53f8-9404-1aa0-ed44-22e2157e4521@forissier.org>
 <20191204175726.GA28736@willie-the-truck>
 <d7481911-9f5f-7f52-0731-0b123c384b08@forissier.org>
 <20191205085709.GB8606@willie-the-truck>
From: Jerome Forissier <jerome@forissier.org>
Message-ID: <e3ac6a90-c6e7-460e-087a-880e3735051e@forissier.org>
Date: Thu, 5 Dec 2019 15:54:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191205085709.GB8606@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_065414_233228_23CE2F2E 
X-CRM114-Status: GOOD (  26.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 maz@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi81LzE5IDk6NTcgQU0sIFdpbGwgRGVhY29uIHdyb3RlOgo+IE9uIFRodSwgRGVjIDA1
LCAyMDE5IGF0IDA4OjI2OjQ4QU0gKzAxMDAsIEplcm9tZSBGb3Jpc3NpZXIgd3JvdGU6Cj4+IE9u
IDEyLzQvMTkgNjo1NyBQTSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+PiBPbiBXZWQsIERlYyAwNCwg
MjAxOSBhdCAwMzo1ODo1N1BNICswMTAwLCBKZXJvbWUgRm9yaXNzaWVyIHdyb3RlOgo+Pj4+IE9u
IDEyLzQvMTkgMzoyOCBQTSwgQ2F0YWxpbiBNYXJpbmFzIHdyb3RlOgo+Pj4+PiBPbiBXZWQsIERl
YyAwNCwgMjAxOSBhdCAwMjoxNTo0OFBNICswMTAwLCBKZXJvbWUgRm9yaXNzaWVyIHdyb3RlOgo+
Pj4+Pj4gT24gMTIvNC8xOSAxMToxOCBBTSwgQ2F0YWxpbiBNYXJpbmFzIHdyb3RlOgo+Pj4+Pj4+
IE9uIFR1ZSwgRGVjIDAzLCAyMDE5IGF0IDA0OjQzOjIyUE0gKzAxMDAsIEplcm9tZSBGb3Jpc3Np
ZXIgd3JvdGU6Cj4+Pj4+Pj4+IEhhcyBhbnlvbmUgc3VjY2Vzc2Z1bGx5IHJ1biBrZXJuZWwgdjUu
MiBvciBsYXRlciBvbiBhIEhpS2V5OTYwIGJvYXJkPwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBGb3Igc29t
ZSByZWFzb24sIGFueXRoaW5nIHBhc3QgdjUuMSBkb2Vzbid0IHdvcmsgZm9yIG1lIGFuZCBJIGNv
dWxkIG5vdAo+Pj4+Pj4+PiBmaWd1cmUgb3V0IHdoeS4gVGhlIHN5bXB0b20gaXMgaXQgbmV2ZXIg
Z2V0cyB0byB0aGUgbG9naW4gcHJvbXB0LiBUaGUKPj4+Pj4+Pj4gcm9vdCBGUyBpcyBhIEJ1aWxk
cm9vdC1nZW5lcmF0ZWQgb25lLCBhbmQgcHJpb3IgdG8gcmVhY2hpbmcgdGhlIGtlcm5lbAo+Pj4+
Pj4+PiB0aGUgYm9hcmQgcnVucyBURi1BLCBPUC1URUUsIFVFRkkgKGVkazIpIGFuZCBHcnViLgo+
Pj4+Pj4+Pgo+Pj4+Pj4+PiBJIHRyaWVkIHJlcGxhY2luZyAvaW5pdCB3aXRoIGEgc2hlbGwsIGlu
IHdoaWNoIGNhc2UgSSBjYW4gdHlwZSBhIGNvbW1hbmQKPj4+Pj4+Pj4gYnV0IHdoYXRldmVyIGl0
IGlzIChldmVuIGEgc2ltcGxlICJscyIpLCB0aGUgY29tbWFuZCBoYW5ncyBvbiBleGl0IGFuZCBJ
Cj4+Pj4+Pj4+IG5ldmVyIGdldCBiYWNrIHRvIHRoZSBwcm9tcHQuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+
IFRoZW4gSSBzdGFydGVkIGJpc2VjdGluZywgdGhhdCB3YXMgcXVpdGUgcGFpbmZ1bCBidXQgSSBm
b3VuZCBzZXZlcmFsCj4+Pj4+Pj4+IHByb2JsZW1hdGljIGNvbW1pdHMuIEkgZW5kZWQgdXAgcmV2
ZXJ0aW5nIHRoZSBmb2xsb3dpbmcgKGluIHRoaXMgb3JkZXIpCj4+Pj4+Pj4+IHRvIGJlIGFibGUg
dG8gYm9vdCB2NS40Ogo+Pj4+PiBbLi4uXQo+Pj4+Pj4gNzVhMTlhMDIwMmRiIGlzIHRoZSBmaXJz
dCBiYWQgY29tbWl0LiBJdHMgcGFyZW50OiBjb21taXQgMmYxZDRlMjRkOTFiCj4+Pj4+PiAoImZp
cm13YXJlOiBhcm1fc2RlaTogUHJvaGliaXQgcHJvYmluZyBpbiAnX3NkZWlfaGFuZGxlciciKSBi
b290cyBmaW5lCj4+Pj4+PiBbMl0uIFNpbmNlIHJldmVydGluZyA3NWExOWEwMjAyZGIgaW4gdjUu
MiBkb2VzIG5vdCB3b3JrLCBJIHN1c3BlY3Qgd2UncmUKPj4+Pj4+IGRlYWxpbmcgd2l0aCBtdWx0
aXBsZSBwcm9ibGVtcy4gQXMgSSBzYWlkLCB0aGUgc2V0IG9mIHJldmVydHMgYWJvdmUgaXMKPj4+
Pj4+IHRoZSBiZXN0IEkgY291bGQgZmlndXJlIG91dCwgYW5kIGJlbGlldmUgbWUgSSBzcGVudCBz
ZXZlcmFsIGRheXMgdHJ5aW5nCj4+Pj4+PiB0byB0cm91Ymxlc2hvb3QgdGhpcyA6LS8gKHRoYXQg
YmVpbmcgc2FpZCwgSSBrbm93IG5vdGhpbmcgYWJvdXQgdGhlIFZEU08KPj4+Pj4+IG9yIHRoZSBh
cmNoIHRpbWVyIHNvIEkgY291bGQgbm90IHRyeSBhbnl0aGluZyBtZWFuaW5nZnVsIG90aGVyIHRo
YW4KPj4+Pj4+IHJldmVydGluZyBzb21lIGNvbW1pdHMpLgo+Pj4+Pgo+Pj4+PiBUaGFua3MuIFRo
ZXJlIGNvdWxkIGFzIHdlbGwgYmUgbXVsdGlwbGUgaXNzdWVzLiBTaW5jZSBjb21taXQKPj4+Pj4g
NzVhMTlhMDIwMmRiIGlzIGNjIHN0YWJsZSwgY291bGQgeW91IHBsZWFzZSBhcHBseSBpdCBvbiB0
b3Agb2YgNS4xIGFuZAo+Pj4+PiBzZWUgaWYgaXQgZmFpbHM/IEkgZG9uJ3QgaGF2ZSBhIEhpS2V5
OTYwIGF0IGhhbmQgdG8gdHJ5IHRoaXMuCj4+Pj4+Cj4+Pj4KPj4+PiBGYWlscyBpbmRlZWQgKHBh
bmljKTogaHR0cHM6Ly9wYXN0ZWJpbi5jb20vRjBqcGt0aWkKPj4+Cj4+PiBJbnRlcmVzdGluZy4g
SSBmb2xsb3dlZCB5b3VyIGluc3RydWN0aW9ucyBhbmQgbXkgYm9hcmQgYm9vdHMgZmluZSBldmVu
Cj4+PiBhZnRlciBhcHBseWluZyB0aGF0IHBhdGNoLCBidXQgdGhlbiBJIHNlZSB0aGUgZm9sbG93
aW5nIG9uIHNodXRkb3duOgo+Pj4KPj4+IFsgICA4My4wMjI5NTVdIFdBUk5JTkc6IENQVTogMCBQ
SUQ6IDE5OTUgYXQga2VybmVsL3RpbWUvdGljay1icm9hZGNhc3QuYzo2NDcgdGlja19oYW5kbGVf
b25lc2hvdF9icm9hZGNhc3QrMHgxYzgvMHgxZTgKPj4+IFsgICA4My4wMzMzOTJdIE1vZHVsZXMg
bGlua2VkIGluOgo+Pj4gWyAgIDgzLjAzNjQ0N10gQ1BVOiAwIFBJRDogMTk5NSBDb21tOiBpbml0
IFRhaW50ZWQ6IEcgUyAgICAgICAgICAgICAgICA1LjEuMC0yNTMxMDUtZzJiNDFmNjU4NGQ1OSAj
Mwo+Pgo+PiBUaGF0IGlzIG5vdCB2NS4xIHBsdXMgb25lIGNvbW1pdCwgaXMgaXQ/Cj4gCj4gTm8s
IGFuZCBJIHdhc24ndCBjbGFpbWluZyB0aGF0IGl0IHdhcy4gCgo7LSkgTXkgYXBvbG9naWVzLCBJ
IHdhcyBjb25mdXNlZC4KCj4gSSBmb2xsb3dlZCB0aGUgaW5zdHJ1Y3Rpb25zIHlvdSBwb2ludGVk
IHVzIHRvIFsxXSBhbmQgY2hlcnJ5LXBpY2tlZCA3NWExOWEwMjAyZGI+IG9uIHRvcC4gSWYgdGhl
cmUncyBzb21ldGhpbmcgZGlmZmVyZW50IHRoYXQgSSBuZWVkIHRvIGRvIGluIG9yZGVyIHRvCnJl
cHJvZHVjZT4gdGhlIHByb2JsZW0sIHRoZW4gcGxlYXNlIGhvbGxlci4KPiBNeSBleHBlcmllbmNl
IHdpdGggSGlrZXk5NjAgaGFzIGJlZW4gMTAwJSAiYmxvb2R5IGF3ZnVsIgo+IHNvIEkgZG9uJ3Qg
aGF2ZSBhIGdvb2Qgc2V0dXAgZm9yIHNpbXBseSBidWlsZGluZyBhbmQgcnVubmluZyBhIGtlcm5l
bCBvbiBpdC4KPiAKPiBJIGFsc28gaGFkIHRvIGhhY2sgc29tZSBvZiB0aGUgRURLMiBjb2RlIGlu
IHRoZXJlIHRvIGdldCBpdCB0byBjb21waWxlLCBzbwo+IGl0IGNvbnRpbnVlcyB0byBsaXZlIHVw
IHRvIGV4cGVjdGF0aW9ucy4KCldoYXQgZXJyb3IgZGlkIHlvdSBlbmNvdW50ZXI/IElzIGl0IHRo
aXMgb25lIGJ5IGNoYW5jZT8KCiBlcnJvcjog4oCYX19idWlsdGluX3N0cm5jcHnigJkgb3V0cHV0
IHRydW5jYXRlZCBbLi4uXQoKSSBqdXN0IG5vdGljZWQgR0NDIDkueCBzaG93cyB0aGlzLCB3aGls
ZSBHQ0MgOC54IGRvZXNuJ3QuIFNvIGl0IGRlcGVuZHMKb24gd2hhdCBkaXN0cmlidXRpb24geW91
IGFyZSB1c2luZy4gSSB3aWxsIG5lZWQgdG8gZG8gc29tZXRoaW5nIHRvCmFkZHJlc3MgdGhpcyBw
cm9ibGVtLgoKVGhhbmtzLAotLSAKSmVyb21lCgo+IAo+IE15IGh1bmNoIGlzIHRoYXQgd2UncmUg
c29tZWhvdyBlbmRpbmcgdXAgaW4gdGhlIHZEU08gY29kZSBidXQgd2l0aCB0aGUgQTczCj4gd29y
a2Fyb3VuZCBmb3IgZXJyYXR1bSA4NTg5MjEgZW5hYmxlZC4gVGhpcyBzaG91bGRuJ3QgZXZlciBo
YXBwZW4gYmVjYXVzZQo+IHRoZSBzeXNjYWxsIGZhbGxiYWNrIHdpbGwgYmUgZW5hYmxlZCBpbiB0
aGlzIGNhc2UsIHNvIEknbSBhbHNvIHRoaW5raW5nIHRoYXQKPiB0aGUgU1A4MDQgY2xvY2tzb3Vy
Y2UgaXMgY29uZnVzaW5nIHRoaW5ncyBzb21laG93LiBJZiB3ZSBlbmQgdXAgdHJhcHBpbmcgdG8K
PiB0aGUga2VybmVsIHdpdGggdGhlIHNlcWxvY2sgaGVsZCB0aGVuIEkgY291bGQgc2VlIHVzZXJz
cGFjZSBnZXR0aW5nIHN0dWNrIGluCj4gYW4gaW5maW5pdGUgbG9vcC4gU2luY2UgSSd2ZSBiZWVu
IHVuYWJsZSB0byByZXByb2R1Y2UgdGhlIGZhaWx1cmUsIGNvdWxkIHlvdQo+IHNlZSBpZiBpdCBw
ZXJzaXN0cyBldmVuIHdpdGggQ09ORklHX0FSTTY0X0VSUkFUVU1fODU4OTIxPW4/Cj4gCj4gV2ls
bAo+IAo+IFsxXSBodHRwczovL29wdGVlLnJlYWR0aGVkb2NzLmlvL2VuL2xhdGVzdC9idWlsZGlu
Zy9naXRzL2J1aWxkLmh0bWwjZ2V0LWFuZC1idWlsZC10aGUtc29sdXRpb24KPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
