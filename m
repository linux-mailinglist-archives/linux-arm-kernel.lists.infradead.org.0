Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B79135453
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 09:30:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k4jPdgjvaUkLvaF0mZnRsTGXQ9oH8NZk0q9OXAYss7I=; b=S12TFkBgBeLECdFTinpuTNnX3
	GXM9BEQWRibsSstLj+ZY6LJxYwbmtqGyzUGZ0q8Bbvqlaox6jE4VNiG7o05vuqQOmbGuxBhjn6UIl
	SYtzZmhp1n2TN6QVrn6UxGZMCR7B52i0WW7C9tSP1qPO4WfuOjPIlFwaeKA/+MlLeqb07Squ3s0Cl
	BV74Y6OEFXjEUvyptaRNJIkmBsKaCH/8ZrFrKHmSFz/d2GW86RFvhbL9DtdDxxbJ/UsMdSB8y1uLy
	wwYqDDpDXWR/WZh1u2VwM8r71MKq5IN19u1K3bfEgnzs5h5NyeWlvP+E2igTGR+AYVICKBdr+6fXu
	pZRajYBgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTD4-0003Yt-G3; Thu, 09 Jan 2020 08:30:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTCw-0003YC-VK
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 08:30:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CFA951FB;
 Thu,  9 Jan 2020 00:30:20 -0800 (PST)
Received: from [10.163.1.42] (unknown [10.163.1.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC1993F6C4;
 Thu,  9 Jan 2020 00:32:56 -0800 (PST)
Subject: Re: [PATCH v3 06/16] arm64: enable ptrauth earlier
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-7-git-send-email-amit.kachhap@arm.com>
 <e49002f2-53fb-b997-8bd6-363e22153da3@arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <0c93c40c-e691-d768-da25-7f191624e56c@arm.com>
Date: Thu, 9 Jan 2020 13:59:06 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e49002f2-53fb-b997-8bd6-363e22153da3@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_003023_098379_E5D132B1 
X-CRM114-Status: GOOD (  21.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLAoKT24gMS83LzIwIDU6MDUgUE0sIFN1enVraSBLdXJ1cHBhc3NlcnkgUG91bG9z
ZSB3cm90ZToKPiBPbiAxNi8xMi8yMDE5IDA4OjQ3LCBBbWl0IERhbmllbCBLYWNoaGFwIHdyb3Rl
Ogo+PiBGcm9tOiBLcmlzdGluYSBNYXJ0c2Vua28gPGtyaXN0aW5hLm1hcnRzZW5rb0Bhcm0uY29t
Pgo+Pgo+PiBXaGVuIHRoZSBrZXJuZWwgaXMgY29tcGlsZWQgd2l0aCBwb2ludGVyIGF1dGggaW5z
dHJ1Y3Rpb25zLCB0aGUgYm9vdCBDUFUKPj4gbmVlZHMgdG8gc3RhcnQgdXNpbmcgYWRkcmVzcyBh
dXRoIHZlcnkgZWFybHksIHNvIGNoYW5nZSB0aGUgY3B1Y2FwIHRvCj4+IGFjY291bnQgZm9yIHRo
aXMuCj4+Cj4+IFBvaW50ZXIgYXV0aCBtdXN0IGJlIGVuYWJsZWQgYmVmb3JlIHdlIGNhbGwgQyBm
dW5jdGlvbnMsIGJlY2F1c2UgaXQgaXMKPj4gbm90IHBvc3NpYmxlIHRvIGVudGVyIGEgZnVuY3Rp
b24gd2l0aCBwb2ludGVyIGF1dGggZGlzYWJsZWQgYW5kIGV4aXQgaXQKPj4gd2l0aCBwb2ludGVy
IGF1dGggZW5hYmxlZC4gTm90ZSwgbWlzbWF0Y2hlcyBiZXR3ZWVuIGFyY2hpdGVjdGVkIGFuZAo+
PiBJTVBERUYgYWxnb3JpdGhtcyB3aWxsIHN0aWxsIGJlIGNhdWdodCBieSB0aGUgY3B1ZmVhdHVy
ZSBmcmFtZXdvcmsgKHRoZQo+PiBzZXBhcmF0ZSAqX0FSQ0ggYW5kICpfSU1QX0RFRiBjcHVjYXBz
KS4KPj4KPj4gTm90ZSB0aGUgY2hhbmdlIGluIGJlaGF2aW9yOiBpZiB0aGUgYm9vdCBDUFUgaGFz
IGFkZHJlc3MgYXV0aCBhbmQgYSBsYXRlCj4+IENQVSBkb2VzIG5vdCwgdGhlbiB3ZSBwYXJrIHRo
ZSBsYXRlIENQVSB2ZXJ5IGVhcmx5IGluIGJvb3RpbmcuIEFsc28sIGlmCj4+IHRoZSBib290IENQ
VSBkb2VzIG5vdCBoYXZlIGFkZHJlc3MgYXV0aCBhbmQgdGhlIGxhdGUgQ1BVIGhhcyB0aGVuIHN5
c3RlbQo+PiBwYW5pYyB3aWxsIG9jY3VyIGxpdHRsZSBsYXRlciBmcm9tIGluc2lkZSB0aGUgQyBj
b2RlLiBVbnRpbCBub3cgd2Ugd291bGQKPj4gaGF2ZSBqdXN0IGRpc2FibGVkIGFkZHJlc3MgYXV0
aCBpbiB0aGlzIGNhc2UuCj4+Cj4+IExlYXZlIGdlbmVyaWMgYXV0aGVudGljYXRpb24gYXMgYSAi
c3lzdGVtIHNjb3BlIiBjcHVjYXAgZm9yIG5vdywgc2luY2UKPj4gaW5pdGlhbGx5IHRoZSBrZXJu
ZWwgd2lsbCBvbmx5IHVzZSBhZGRyZXNzIGF1dGhlbnRpY2F0aW9uLgo+Pgo+PiBSZXZpZXdlZC1i
eTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+Cj4+IFNpZ25lZC1vZmYtYnk6IEty
aXN0aW5hIE1hcnRzZW5rbyA8a3Jpc3RpbmEubWFydHNlbmtvQGFybS5jb20+Cj4+IFtBbWl0OiBS
ZS13b3JrZWQgcHRyYXV0aCBzZXR1cCBsb2dpYywgY29tbWVudHNdCj4+IFNpZ25lZC1vZmYtYnk6
IEFtaXQgRGFuaWVsIEthY2hoYXAgPGFtaXQua2FjaGhhcEBhcm0uY29tPgo+PiAtLS0KPj4gQ2hh
bmdlcyBzaW5jZSBsYXN0IHZlcnNpb246Cj4+ICogTm9uZS4KPj4KPj4gwqAgYXJjaC9hcm02NC9L
Y29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA1ICsrKysrCj4+IMKgIGFyY2gvYXJt
NjQvaW5jbHVkZS9hc20vc21wLmjCoMKgIHzCoCAxICsKPj4gwqAgYXJjaC9hcm02NC9rZXJuZWwv
Y3B1ZmVhdHVyZS5jIHwgMTMgKysrLS0tLS0tLS0tLQo+PiDCoCBhcmNoL2FybTY0L2tlcm5lbC9o
ZWFkLlPCoMKgwqDCoMKgwqAgfCAyMCArKysrKysrKysrKysrKysrKysrKwo+PiDCoCBhcmNoL2Fy
bTY0L2tlcm5lbC9zbXAuY8KgwqDCoMKgwqDCoMKgIHzCoCAyICsrCj4+IMKgIGFyY2gvYXJtNjQv
bW0vcHJvYy5TwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAzMSArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrCj4+IMKgIDYgZmlsZXMgY2hhbmdlZCwgNjIgaW5zZXJ0aW9ucygrKSwgMTAgZGVs
ZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L0tjb25maWcgYi9hcmNoL2Fy
bTY0L0tjb25maWcKPj4gaW5kZXggYjFiNDQ3Ni4uNWFhYmU4YSAxMDA2NDQKPj4gLS0tIGEvYXJj
aC9hcm02NC9LY29uZmlnCj4+ICsrKyBiL2FyY2gvYXJtNjQvS2NvbmZpZwo+PiBAQCAtMTQ4Miw2
ICsxNDgyLDExIEBAIGNvbmZpZyBBUk02NF9QVFJfQVVUSAo+PiDCoMKgwqDCoMKgwqDCoCBiZSBl
bmFibGVkLiBIb3dldmVyLCBLVk0gZ3Vlc3QgYWxzbyByZXF1aXJlIFZIRSBtb2RlIGFuZCBoZW5j
ZQo+PiDCoMKgwqDCoMKgwqDCoCBDT05GSUdfQVJNNjRfVkhFPXkgb3B0aW9uIHRvIHVzZSB0aGlz
IGZlYXR1cmUuCj4+ICvCoMKgwqDCoMKgIElmIHRoZSBmZWF0dXJlIGlzIHByZXNlbnQgb24gdGhl
IHByaW1hcnkgQ1BVIGJ1dCBub3QgYSAKPj4gc2Vjb25kYXJ5IENQVSwKPj4gK8KgwqDCoMKgwqAg
dGhlbiB0aGUgc2Vjb25kYXJ5IENQVSB3aWxsIGJlIHBhcmtlZC4KPiAKPiAtLS0KPiAKPj4gwqDC
oCBBbHNvLCBpZiB0aGUgYm9vdCBDUFUgZG9lcyBub3QKPj4gK8KgwqDCoMKgwqAgaGF2ZSBhZGRy
ZXNzIGF1dGggYW5kIHRoZSBsYXRlIENQVSBoYXMgdGhlbiBzeXN0ZW0gcGFuaWMgd2lsbCAKPj4g
b2NjdXIuCj4+ICvCoMKgwqDCoMKgIE9uIHN1Y2ggYSBzeXN0ZW0sIHRoaXMgb3B0aW9uIHNob3Vs
ZCBub3QgYmUgc2VsZWN0ZWQuCj4gCj4gSXMgdGhpcyBwYXJ0IG9mIHRoZSB0ZXh0IHRydWUgPyBX
ZSBkbyBub3QgZW5hYmxlIHB0ci1hdXRoIG9uIHRoZSBDUFVzIGlmCj4gd2UgYXJlIG1pc3Npbmcg
dGhlIHN1cHBvcnQgb24gcHJpbWFyeS4gU28sIGdpdmVuIHdlIGRpc2FibGUgU0NUTFIgYml0cywK
PiB0aGUgcHRyLWF1dGggaW5zdHJ1Y3Rpb25zIHNob3VsZCBiZSBhIE5PUCBhbmQgaXMgdGh1cyBz
YWZlLgoKSSBnb3QgbGl0dGxlIGNvbmZ1c2VkIHdpdGggeW91ciBlYXJsaWVyIGNvbW1lbnRzIFsx
XSBhbmQgbWFkZSB0aGUgCnNlY29uZGFyeSBjcHUncyBwYW5pYyBpbiBjYXNlIHRoZXkgaGF2ZSBw
dHJhdXRoIGFuZCBwcmltYXJ5IGRvbid0LiBJbiAKdGhpcyBjYXNlIEFSTTY0X0NQVUNBUF9QRVJN
SVRURURfRk9SX0xBVEVfQ1BVIHdpbGwgbGVhdmUgaXQgcnVubmluZyBhbmQgCm5vdCBwYW5pYyBh
cyB5b3UgbWVudGlvbmVkLgoKSSB3aWxsIGFwcGVuZCBBUk02NF9DUFVDQVBfUEVSTUlUVEVEX0ZP
Ul9MQVRFX0NQVSBmZWF0dXJlIGFuZCB1cGRhdGUgdGhlIApjb21tZW50cyBvdmVyIGhlcmUgYWNj
b3JkaW5nbHkgaW4gbXkgbmV4dCBpdGVyYXRpb24uCgpbMV06IGh0dHBzOi8vcGF0Y2h3b3JrLmtl
cm5lbC5vcmcvcGF0Y2gvMTExOTUwODcvCgo+IAo+IFRoZSByZXN0IGxvb2tzIGdvb2QgdG8gbWUu
IFdpdGggdGhlIGFib3ZlIHRleHQgcmVtb3ZlZCwKPiAKPiBSZXZpZXdlZC1ieTogU3V6dWtpIEsg
UG91bG9zZSA8c3V6dWtpLnBvdWxvc2VAYXJtLmNvbT4KClRoYW5rcyBmb3IgcmV2aWV3aW5nLgo+
IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
