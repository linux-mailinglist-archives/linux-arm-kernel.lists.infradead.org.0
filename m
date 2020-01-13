Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0ECD13927C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:48:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VRFViAfjen2Ot+1qdiHfluDgVzLbaerZ9VaQZPS8xMo=; b=kGNyVMAbeHwgjH
	PA1leFEht1Yh2/zh7awlkJFh3xWUVifMgqZlQULWFUdCbunUxxukrOnQbFk/uGZUIosQ4i2/S6k0Y
	Dr2fLnclBejcSv0hFVXKdalvI9ztUqkhQW6JqwDJr91ioY+NyQ5/Qwl8F77tlvvwHzC4A1WUee0cd
	y+HSMkx1zMFx0+pcRx7gDy3WRQYof0+/CPmcZK9FVjM8b7fX0KhkbWi9grY5CfzcVh4+uYciRCcqO
	Wp2IGIIlXT1005sCmNb5PHxiRTRXRhBbjVVPJcv0FhUDiBaFKAZ9XZvWO3p5yxh0cV1c5soXY4sOR
	itKs1pmfPhBd6om27A5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir05G-000771-Lg; Mon, 13 Jan 2020 13:48:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir057-00076A-LH
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 13:48:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 34BF813D5;
 Mon, 13 Jan 2020 05:48:35 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 622663F68E;
 Mon, 13 Jan 2020 05:48:34 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH] arm: expand the timer tests
To: =?UTF-8?Q?Alex_Benn=c3=a9e?= <alex.bennee@linaro.org>, pbonzini@redhat.com
References: <20200110160511.17821-1-alex.bennee@linaro.org>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <8455cdf6-e5c3-bd84-5b85-33ffad581d0e@arm.com>
Date: Mon, 13 Jan 2020 13:48:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200110160511.17821-1-alex.bennee@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_054837_789268_A885C9F8 
X-CRM114-Status: GOOD (  21.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAxLzEwLzIwIDQ6MDUgUE0sIEFsZXggQmVubsOpZSB3cm90ZToKPiBUaGlzIHdhcyBh
biBhdHRlbXB0IHRvIHJlcGxpY2F0ZSBhIFFFTVUgYnVnLiBIb3dldmVyIHRvIHRyaWdnZXIgdGhl
Cj4gYnVnIHlvdSBuZWVkIHRvIGhhdmUgYW4gb2Zmc2V0IHNldCBpbiBFTDIgd2hpY2gga3ZtLXVu
aXQtdGVzdHMgaXMKPiB1bmFibGUgdG8gZG8uIEhvd2V2ZXIgaXQgZG9lcyBleGVyY2lzZSBzb21l
IG1vcmUgY29ybmVyIGNhc2VzLgo+Cj4gQnVnOiBodHRwczovL2J1Z3MubGF1bmNocGFkLm5ldC9i
dWdzLzE4NTkwMjEKCkknbSBub3QgYXdhcmUgb2YgYW55IEJ1ZzogdGFncyBpbiB0aGUgTGludXgg
a2VybmVsLiBJZiB5b3Ugd2FudCBwZW9wbGUgdG8gZm9sbG93CnRoZSBsaW5rIHRvIHRoZSBidWcs
IGhvdyBhYm91dCByZWZlcmVuY2luZyBzb21ldGhpbmcgbGlrZSB0aGlzOgoKIlRoaXMgd2FzIGFu
IGF0dGVtcHQgdG8gcmVwbGljYXRlIGEgUUVNVSBidWcgWzFdLiBbLi5dCgpbMV0gaHR0cHM6Ly9i
dWdzLmxhdW5jaHBhZC5uZXQvcWVtdS8rYnVnLzE4NTkwMjEiCgpBbHNvLCBhcmUgbGF1bmNocGFk
IGJ1ZyByZXBvcnRzIHBlcm1hbmVudD8gV2lsbCB0aGUgbGluayBzdGlsbCB3b3JrIGluIGEgeWVh
cnMnIHRpbWU/Cgo+IFNpZ25lZC1vZmYtYnk6IEFsZXggQmVubsOpZSA8YWxleC5iZW5uZWVAbGlu
YXJvLm9yZz4KPiAtLS0KPiAgYXJtL3RpbWVyLmMgfCAyNyArKysrKysrKysrKysrKysrKysrKysr
KysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
Pgo+IGRpZmYgLS1naXQgYS9hcm0vdGltZXIuYyBiL2FybS90aW1lci5jCj4gaW5kZXggZjM5MGU4
ZS4uYWUxZDI5OSAxMDA2NDQKPiAtLS0gYS9hcm0vdGltZXIuYwo+ICsrKyBiL2FybS90aW1lci5j
Cj4gQEAgLTIxNCwyMSArMjE0LDQ2IEBAIHN0YXRpYyB2b2lkIHRlc3RfdGltZXIoc3RydWN0IHRp
bWVyX2luZm8gKmluZm8pCj4gIAkgKiBzdGlsbCByZWFkIHRoZSBwZW5kaW5nIHN0YXRlIGV2ZW4g
aWYgaXQncyBkaXNhYmxlZC4gKi8KPiAgCXNldF90aW1lcl9pcnFfZW5hYmxlZChpbmZvLCBmYWxz
ZSk7Cj4gIAo+ICsJLyogVmVyaWZ5IGNvdW50IGdvZXMgdXAgKi8KPiArCXJlcG9ydChpbmZvLT5y
ZWFkX2NvdW50ZXIoKSA+PSBub3csICJjb3VudGVyIGluY3JlbWVudHMiKTsKPiArCj4gIAkvKiBF
bmFibGUgdGhlIHRpbWVyLCBidXQgc2NoZWR1bGUgaXQgZm9yIG11Y2ggbGF0ZXIgKi8KPiAgCWlu
Zm8tPndyaXRlX2N2YWwobGF0ZXIpOwo+ICAJaW5mby0+d3JpdGVfY3RsKEFSQ0hfVElNRVJfQ1RM
X0VOQUJMRSk7Cj4gIAlpc2IoKTsKPiAtCXJlcG9ydCghZ2ljX3RpbWVyX3BlbmRpbmcoaW5mbyks
ICJub3QgcGVuZGluZyBiZWZvcmUiKTsKPiArCXJlcG9ydCghZ2ljX3RpbWVyX3BlbmRpbmcoaW5m
byksICJub3QgcGVuZGluZyBiZWZvcmUgMTBzIik7Cj4gKwo+ICsJLyogQ2hlY2sgd2l0aCBhIG1h
eGltdW0gcG9zc2libGUgY3ZhbCAqLwo+ICsJaW5mby0+d3JpdGVfY3ZhbChVSU5UNjRfTUFYKTsK
PiArCWlzYigpOwo+ICsJcmVwb3J0KCFnaWNfdGltZXJfcGVuZGluZyhpbmZvKSwgIm5vdCBwZW5k
aW5nIGJlZm9yZSBVSU5UNjRfTUFYIik7Cj4gKwo+ICsJLyogYWxzbyBieSBzZXR0aW5nIHR2YWwg
Ki8KCkFsbCB0aGUgY29tbWVudHMgaW4gdGhpcyBmaWxlIHNlZW0gdG8gc3RhcnQgd2l0aCBhIGNh
cGl0YWwgbGV0dGVyLgoKPiArCWluZm8tPndyaXRlX3R2YWwodGltZV8xMHMpOwo+ICsJaXNiKCk7
Cj4gKwlyZXBvcnQoIWdpY190aW1lcl9wZW5kaW5nKGluZm8pLCAibm90IHBlbmRpbmcgYmVmb3Jl
IDEwcyAodmlhIHR2YWwpIik7CgpZb3UgY2FuIHJlbW92ZSB0aGUgIih2aWEgdHZhbCkiIHBhcnQg
LSB0aGUgbWVzc2FnZSBpcyB1bmlxdWUgZW5vdWdoIHRvIGZpZ3VyZSBvdXQKd2hpY2ggcGFydCBv
ZiB0aGUgdGVzdCBpdCByZWZlcnMgdG8uCgo+ICsJcmVwb3J0X2luZm8oIlRWQUwgaXMgJWQgKGRl
bHRhIENWQUwgJWxkKSB0aWNrcyIsCj4gKwkJICAgIGluZm8tPnJlYWRfdHZhbCgpLCBpbmZvLT5y
ZWFkX2N2YWwoKSAtIGluZm8tPnJlYWRfY291bnRlcigpKTsKCkknbSBub3Qgc3VyZSB3aGF0IHlv
dSBhcmUgdHJ5aW5nIHRvIGFjaGlldmUgd2l0aCB0aGlzLiBZb3UgY2FuIHRyYW5zZm9ybSBpdCB0
bwpjaGVjayB0aGF0IFRWQUwgaXMgaW5kZWVkIHBvc2l0aXZlIGFuZCAoYWxtb3N0KSBlcXVhbCB0
byBjdmFsIC0gY250cGN0LCBzb21ldGhpbmcKbGlrZSB0aGlzOgoKKwlzMzIgdHZhbCA9IGluZm8t
PnJlYWRfdHZhbCgpOworCXJlcG9ydCh0dmFsID4gMCAmJiB0dmFsIDw9IGluZm8tPnJlYWRfY3Zh
bCgpIC0gaW5mby0+cmVhZF9jb3VudGVyKCksICJUVkFMIG1lYXN1cmVzIHRpbWUgdG8gbmV4dCBp
bnRlcnJ1cHQiKTsKCj4gIAo+ICsgICAgICAgIC8qIGNoZWNrIHBlbmRpbmcgb25jZSBjdmFsIGlz
IGJlZm9yZSBub3cgKi8KClRoaXMgY29tbWVudCBhZGRzIG5vdGhpbmcgdG8gdGhlIHRlc3QuCgo+
ICAJaW5mby0+d3JpdGVfY3ZhbChub3cgLSAxKTsKPiAgCWlzYigpOwo+ICAJcmVwb3J0KGdpY190
aW1lcl9wZW5kaW5nKGluZm8pLCAiaW50ZXJydXB0IHNpZ25hbCBwZW5kaW5nIik7Cj4gKwlyZXBv
cnRfaW5mbygiVFZBTCBpcyAlZCB0aWNrcyIsIGluZm8tPnJlYWRfdHZhbCgpKTsKCllvdSBjYW4g
dGVzdCB0aGF0IFRWQUwgaXMgbmVnYXRpdmUgaGVyZSBpbnN0ZWFkIG9mIHByaW50aW5nIHRoZSB2
YWx1ZS4KCj4gIAo+ICAJLyogRGlzYWJsZSB0aGUgdGltZXIgYWdhaW4gYW5kIHByZXBhcmUgdG8g
dGFrZSBpbnRlcnJ1cHRzICovCj4gIAlpbmZvLT53cml0ZV9jdGwoMCk7Cj4gIAlzZXRfdGltZXJf
aXJxX2VuYWJsZWQoaW5mbywgdHJ1ZSk7Cj4gIAlyZXBvcnQoIWdpY190aW1lcl9wZW5kaW5nKGlu
Zm8pLCAiaW50ZXJydXB0IHNpZ25hbCBubyBsb25nZXIgcGVuZGluZyIpOwo+ICAKPiArCS8qIFFF
TVUgYnVnIHdoZW4gY250dm9mZl9lbDIgPiAwCj4gKwkgKiBodHRwczovL2J1Z3MubGF1bmNocGFk
Lm5ldC9idWdzLzE4NTkwMjEgKi8KClRoaXMgbG9va3MgY29uZnVzaW5nIHRvIG1lLiBGcm9tIHRo
ZSBjb21taXQgbWVzc2FnZSwgSSBnb3QgdGhhdCBrdm0tdW5pdC10ZXN0cwpuZWVkcyBxZW11IHRv
IHNldCBhIHNwZWNpYWwgdmFsdWUgZm9yIENOVFZPRkZfRUwyLiBCdXQgdGhlIGNvbW1lbnRzIHNl
ZW1zIHRvCnN1Z2dlc3QgdGhhdCBrdm0tdW5pdC10ZXN0cyBjYW4gdHJpZ2dlciB0aGUgYnVnIHdp
dGhvdXQgcWVtdSBkb2luZyBhbnl0aGluZwpzcGVjaWFsLiBDYW4geW91IGVsYWJvcmF0ZSB1bmRl
ciB3aGljaCBjb25kaXRpb24ga3ZtLXVuaXQtdGVzdHMgY2FuIHRyaWdnZXIgdGhlIGJ1Zz8KCj4g
KwlpbmZvLT53cml0ZV9jdGwoQVJDSF9USU1FUl9DVExfRU5BQkxFKTsKPiArCWluZm8tPndyaXRl
X2N2YWwoVUlOVDY0X01BWCk7CgpUaGUgb3JkZXIgaXMgd3JvbmcgLSB5b3Ugd3JpdGUgQ1ZBTCBm
aXJzdCwgKnRoZW4qIGVuYWJsZSB0byB0aW1lci4gT3RoZXJ3aXNlIHlvdQptaWdodCBnZXQgYW4g
aW50ZXJydXB0IGJlY2F1c2Ugb2YgdGhlIHByZXZpb3VzIENWQUwgdmFsdWUuCgpUaGUgcHJldmlv
dXMgdmFsdWUgZm9yIENWQUwgd2FzIG5vdyAtMSwgc28geW91ciBjaGFuZ2UgdHJpZ2dlcnMgYW4g
dW53YW50ZWQKaW50ZXJydXB0IGFmdGVyIGVuYWJsaW5nIHRoZSB0aW1lci4gVGhlIGludGVycnVw
dCBoYW5kbGVyIG1hc2tzIHRoZSB0aW1lcgppbnRlcnJ1cHQgYXQgdGhlIHRpbWVyIGxldmVsLCB3
aGljaCBtZWFucyB0aGF0IGFzIGZhciBhcyB0aGUgZ2ljIGlzIGNvbmNlcm5lZCB0aGUKaW50ZXJy
dXB0IGlzIG5vdCBwZW5kaW5nLCBtYWtpbmcgdGhlIHJlcG9ydCBjYWxsIGFmdGVyd2FyZHMgdXNl
bGVzcy4KCj4gKwlpc2IoKTsKPiArCXJlcG9ydCghZ2ljX3RpbWVyX3BlbmRpbmcoaW5mbyksICJu
b3QgcGVuZGluZyBiZWZvcmUgVUlOVDY0X01BWCAoaXJxcyBvbikiKTsKClRoaXMgY2hlY2sgY2Fu
IGJlIGltcHJvdmVkLiBZb3Ugd2FudCB0byBjaGVjayB0aGUgdGltZXIgQ1RMLklTVEFUVVMgaGVy
ZSwgbm90IHRoZQpnaWMuIEEgZGV2aWNlIChpbiB0aGlzIGNhc2UsIHRoZSB0aW1lcikgY2FuIGFz
c2VydCB0aGUgaW50ZXJydXB0LCBidXQgdGhlIGdpYyBkb2VzCm5vdCBzYW1wbGUgaXQgaW1tZWRp
YXRlbHkuIENvbWUgdG8gdGhpbmsgb2YgaXQsIHRoZSBlbnRpcmUgdGltZXIgdGVzdCBpcyB3cm9u
ZwpiZWNhdXNlIG9mIHRoaXMuCgpUaGFua3MsCkFsZXgKPiArCWluZm8tPndyaXRlX2N0bCgwKTsK
PiArCj4gIAlyZXBvcnQodGVzdF9jdmFsXzEwbXNlYyhpbmZvKSwgImxhdGVuY3kgd2l0aGluIDEw
IG1zIik7Cj4gIAlyZXBvcnQoaW5mby0+aXJxX3JlY2VpdmVkLCAiaW50ZXJydXB0IHJlY2VpdmVk
Iik7Cj4gIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
