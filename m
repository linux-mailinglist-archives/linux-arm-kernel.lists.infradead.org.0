Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331B1158340
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:06:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrG5bkC5t74uQysDGtmruOL3pLYCmU1+aQXpEL8AhQo=; b=Jts0W9nwf/llrN
	IHiv4qB9KgmOBYGEvCmwQ3fDO+Xg/pI5ROV5CO2aaWbS3FM8VZfUnye1Rshbu93WKxiCQZ6FQ+san
	WVPjMOi9oK/pMalrGMEQ/2T98l1kJ7bIpqDeN/F1VyQYC9jFvL/xVXdN9dw6xWTR1Cm7jWO5G5JNf
	oN2JvQdDz3OjJQWuw0Xrwe++1R7je0cFjQkUk3gDpS7N7+GBm8tFiBOjlr6UDWeroMOHpsW0iVwrM
	e+gqNKl3skJGX6hvHsZUwJ2tXjjHJRlx72RHpHYZ1hXyeYZNCjijDSwDdBw2X9GL7pOF2S3alHpJv
	pc1I3q5Tpszd3nXoMNMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1EOK-0003w3-6d; Mon, 10 Feb 2020 19:06:44 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1EOD-0003vE-2S
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:06:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D6936ACCA;
 Mon, 10 Feb 2020 19:06:34 +0000 (UTC)
Subject: Re: [PATCH 1/3] hwspinlock: sunxi: Implement support for Allwinner's
 A64 SoC
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20200210170143.20007-1-nborisov@suse.com>
 <20200210170143.20007-2-nborisov@suse.com> <20200210185730.GL955802@ripper>
From: Nikolay Borisov <nborisov@suse.com>
Autocrypt: addr=nborisov@suse.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <45d491fa-716a-eb6a-f1a3-621363675a17@suse.com>
Date: Mon, 10 Feb 2020 21:06:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200210185730.GL955802@ripper>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_110637_407804_91B79CB0 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, mripard@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMC4wMi4yMCDQsy4gMjA6NTcg0YcuLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4gT24g
TW9uIDEwIEZlYiAwOTowMSBQU1QgMjAyMCwgTmlrb2xheSBCb3Jpc292IHdyb3RlOgo+IFsuLl0K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaHdzcGlubG9jay9zdW54aV9od3NwaW5sb2NrLmMgYi9k
cml2ZXJzL2h3c3BpbmxvY2svc3VueGlfaHdzcGlubG9jay5jCj4+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uOGU1Njg1MzU3ZmJmCj4+IC0tLSAvZGV2L251bGwK
Pj4gKysrIGIvZHJpdmVycy9od3NwaW5sb2NrL3N1bnhpX2h3c3BpbmxvY2suYwo+PiBAQCAtMCww
ICsxLDE4MSBAQAo+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPj4gKy8q
IEF1dGhvcjogTmlrb2xheSBCb3Jpc292IDxuYm9yaXNvdkBzdXNlLmNvbT4gKi8KPj4gKwo+PiAr
I2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+Cj4+ICsj
aW5jbHVkZSA8bGludXgvaHdzcGlubG9jay5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L2lvLmg+Cj4+
ICsjaW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+
Cj4+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9k
ZXZpY2UuaD4KPiAKPiBQbGVhc2Ugc29ydCB0aGVzZS4KCmFscGhhYmV0aWNhbGx5IG9yIHJldmVy
c2UgY2hyaXN0bWFzIHRyZWU/Cgo+IAo+PiArCgo8c25pcD4KPj4gKwlody0+Y2xrID0gY2xrOwo+
PiArCWh3LT5yZXNldCA9IHJlc2V0Owo+PiArCj4+ICsJaW9fYmFzZSArPSBMT0NLX0JBU0VfT0ZG
U0VUOwo+PiArCWZvciAoaSA9IDA7IGkgPCBudW1fbG9ja3M7IGkrKykKPj4gKwkJaHctPmJhbmsu
bG9ja1tpXS5wcml2ID0gaW9fYmFzZSArIGkgKiBzaXplb2YodTMyKTsKPj4gKwo+PiArCXBsYXRm
b3JtX3NldF9kcnZkYXRhKHBkZXYsIGh3KTsKPj4gKwo+PiArCXJldCA9IGh3c3Bpbl9sb2NrX3Jl
Z2lzdGVyKCZody0+YmFuaywgJnBkZXYtPmRldiwgJnN1bnhpX2h3c3BpbmxvY2tfb3BzLAo+PiAr
CQkJCSAgIDAsIG51bV9sb2Nrcyk7Cj4gCj4gUGVvcGxlIHdpbGwgbGlrZWx5IHNlbmQgcGF0Y2hl
cyB0byByZXBsYWNlIHRoaXMgd2l0aAo+IGRldm1faHdzcGluX2xvY2tfcmVnaXN0ZXIoKSwgYnV0
IHRoYXQgd2lsbCBjcmVhdGUgYW4gaW52YWxpZCBvcmRlcmluZwo+IGJldHdlZW4gdGhlIGNsb2Nr
IGRpc2FibGUsIHJlc2V0IGFzc2VydCBhbmQgdGhlIGh3c3BpbmxvY2sKPiB1bnJlZ2lzdHJhdGlv
bi4KPiAKPiBZb3UgY291bGQgZGVhbCB3aXRoIHRoaXMgdXNpbmcgZGV2bV9hZGRfYWN0aW9uKCkg
YW5kCj4gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KCkgZm9yIHRoZSBjbG9jayBhbmQgcmVzZXQg
YWJvdmUuIFRoYXQgd2lsbCBzYXZlCj4gdXMgZnV0dXJlIGNodXJuLCB3b3VsZCBjbGVhbiB1cCB5
b3VyIGVycm9yIGhhbmRsaW5nIGFuZCB5b3UgY291bGQgZHJvcAo+IHRoZSByZW1vdmUgZnVuY3Rp
b24gY29tcGxldGVseS4KClRoaXMgaXMgbXkgZmlyc3Qgcm9kZW8gaW4gZGV2aWNlIGRyaXZlciBs
YW5kIHNvIEknbSBsZWFybmluZy4gSXQgbG9va3MKbGlrZSB3aGF0IHlvdSB3YW50IGhlcmUgaXMg
c2ltaWxhciB0byB3aGF0IHRoZXJlIGlzIGluCnNwcmRfaHdzcGlubG9jay5jLiBXaWxsIHJld29y
ayBpdC4KCj4gCj4+ICsKPj4gKwlpZiAoIXJldCkKPj4gKwkJcmV0dXJuIHJldDsKPj4gK291dF9y
ZXNldDoKPj4gKwlyZXNldF9jb250cm9sX2Fzc2VydChyZXNldCk7Cj4+ICtvdXRfZGVjbG9jazoK
Pj4gKwljbGtfZGlzYWJsZV91bnByZXBhcmUoY2xrKTsKPj4gKwlyZXR1cm4gcmV0Owo+PiArfQo+
PiArCj4+ICtzdGF0aWMgaW50IHN1bnhpX2h3c3BpbmxvY2tfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4+ICt7Cj4+ICsJc3RydWN0IHN1bnhpX2h3c3BpbmxvY2sgKmh3ID0g
cGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4+ICsJaW50IHJldDsKPj4gKwo+PiArCXJldCA9
IGh3c3Bpbl9sb2NrX3VucmVnaXN0ZXIoJmh3LT5iYW5rKTsKPj4gKwlpZiAocmV0KQo+PiArCQlk
ZXZfZXJyKCZwZGV2LT5kZXYsICIlcyBmYWlsZWQ6ICVkXG4iLCBfX2Z1bmNfXywgcmV0KTsKPj4g
Kwo+PiArCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGh3LT5yZXNldCk7Cj4+ICsJY2xrX2Rpc2FibGVf
dW5wcmVwYXJlKGh3LT5jbGspOwo+PiArCj4+ICsJcmV0dXJuIDA7Cj4+ICt9Cj4+ICsKPiAKPiBS
ZWdhcmRzLAo+IEJqb3JuCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
