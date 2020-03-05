Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B1117AB80
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 18:15:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9ei6HFWLL09lC82t/e+O6PIeyReqGtmWfjwiR5o7LWo=; b=K4hV7NOotc/lqTjPwRfli4bAZ
	EOTg9jeaCw4hZJUdgSGYXdueVATSHmYJ+uBROJTSc0cJn7pXJkvLvOo2/GYus17wk0aq+yguUqAxf
	0jrq8iu9VyufmCgg6e7NfT4TOzdTA8SvV+jhxlb+cpiXaVf83QFdRyPNjyW/GE2hQYbOTyyrYJo1s
	KYhyGFjStWD0HbKeEYQ1yZiNeZTjchuWBHeqpIrJTb7285CftalYGWXUk8TVIjr8Ua22umibRiHQb
	ocJ/G17Md0CkTzWgkcEquvdKYOgUJdsTWYdI8UcVeRMdcKDydMepH+et/g32DfIwi5Krgrk+xBVh6
	rjBmBtXPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9u5o-0004b8-15; Thu, 05 Mar 2020 17:15:28 +0000
Received: from smtp-fw-6002.amazon.com ([52.95.49.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9u56-0002uQ-Bx
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 17:14:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1583428484; x=1614964484;
 h=from:subject:to:cc:references:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=5fApbeaqTcP0p/hHQ0KDa3FOcjpecfzaTtmdMnU8Cg4=;
 b=Tx9rGK4936YDpHkazEkfMOy6ksEXAw0RcKO/u+rGqf+e0FTpT7Pxf/A2
 nkohOtHVfqDQeAHOypQgeUIkuHo+gRkmZVlTTfwfH1bLjy4tAWOOEuRhk
 QG9Ssbg/HRW6XTpp/2gXL3tfwlBWbd2vVKoM6IaYARLhcfvFplqAQmQ/O E=;
IronPort-SDR: EtTtVXXh4nhSPq0l+1rlC6IjpDmotIhfWTqDYxh6jbBOZoG+jtgmHMuPXMXz4dXEWL2ImWfocY
 4HYs/ioX7lAg==
X-IronPort-AV: E=Sophos;i="5.70,518,1574121600"; d="scan'208";a="19767269"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1e-97fdccfd.us-east-1.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 05 Mar 2020 17:14:18 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1e-97fdccfd.us-east-1.amazon.com (Postfix) with ESMTPS
 id A5A5CA2090; Thu,  5 Mar 2020 17:14:14 +0000 (UTC)
Received: from EX13D13UWB001.ant.amazon.com (10.43.161.156) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Thu, 5 Mar 2020 17:14:13 +0000
Received: from EX13MTAUWB001.ant.amazon.com (10.43.161.207) by
 EX13D13UWB001.ant.amazon.com (10.43.161.156) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 5 Mar 2020 17:14:13 +0000
Received: from [10.107.3.22] (10.107.3.22) by mail-relay.amazon.com
 (10.43.161.249) with Microsoft SMTP Server (TLS) id 15.0.1367.3 via Frontend
 Transport; Thu, 5 Mar 2020 17:14:08 +0000
From: "Hawa, Hanna" <hhhawa@amazon.com>
Subject: Re: [EXTERNAL][PATCH v4 6/6] arm64: dts: amazon: add Amazon's
 Annapurna Labs Alpine v3 support
To: Antoine Tenart <antoine.tenart@bootlin.com>
References: <20200225112926.16518-1-hhhawa@amazon.com>
 <20200225112926.16518-7-hhhawa@amazon.com> <20200304212737.GN3179@kwain>
Message-ID: <7a1c1b59-f12d-5839-beea-6af5e7998640@amazon.com>
Date: Thu, 5 Mar 2020 19:14:06 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200304212737.GN3179@kwain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_091444_570973_2572C5B0 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.49.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, benh@amazon.com,
 gregkh@linuxfoundation.org, jonnyc@amazon.com, linux-kernel@vger.kernel.org,
 hanochu@amazon.com, talel@amazon.com, robh+dt@kernel.org, dwmw@amazon.co.uk,
 Jonathan.Cameron@huawei.com, mchehab+samsung@kernel.org, ronenk@amazon.com,
 tglx@linutronix.de, eitan@amazon.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, tsahee@annapurnalabs.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW50b25pZSwKClRoYW5rcyBmb3IgcmV2aWV3aW5nLAoKT24gMy80LzIwMjAgMTE6MjcgUE0s
IEFudG9pbmUgVGVuYXJ0IHdyb3RlOgo+IENBVVRJT046IFRoaXMgZW1haWwgb3JpZ2luYXRlZCBm
cm9tIG91dHNpZGUgb2YgdGhlIG9yZ2FuaXphdGlvbi4gRG8gbm90IGNsaWNrIGxpbmtzIG9yIG9w
ZW4gYXR0YWNobWVudHMgdW5sZXNzIHlvdSBjYW4gY29uZmlybSB0aGUgc2VuZGVyIGFuZCBrbm93
IHRoZSBjb250ZW50IGlzIHNhZmUuCj4gCj4gCj4gCj4gSGVsbG8sCj4gCj4gU29ycnksIEknbSBh
IGJpdCBsYXRlIHRvIHRoZSBwYXJ0eS4uLgo+IAo+IE9uIFR1ZSwgRmViIDI1LCAyMDIwIGF0IDAx
OjI5OjI2UE0gKzAyMDAsIEhhbm5hIEhhd2Egd3JvdGU6Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FtYXpvbi9hbHBpbmUtdjMuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YW1hem9uL2FscGluZS12My5kdHNpCj4+ICsgICAgIGFyY2gtdGltZXIgewo+IAo+IFBsZWFzZSB1
c2UgJ3RpbWVyJyBpbnN0ZWFkLgoKV2lsbCBiZSBmaXhlZAoKPiAKPj4gKyAgICAgICAgICAgICBj
b21wYXRpYmxlID0gImFybSxhcm12OC10aW1lciI7Cj4+ICsgICAgICAgICAgICAgaW50ZXJydXB0
cyA9IDxHSUNfUFBJIDB4ZCBJUlFfVFlQRV9MRVZFTF9MT1c+LAo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICA8R0lDX1BQSSAweGUgSVJRX1RZUEVfTEVWRUxfTE9XPiwKPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgPEdJQ19QUEkgMHhiIElSUV9UWVBFX0xFVkVMX0xPVz4sCj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgIDxHSUNfUFBJIDB4YSBJUlFfVFlQRV9MRVZFTF9MT1c+
Owo+PiArICAgICB9Owo+IAo+PiArICAgICAgICAgICAgIGdpYzogaW50ZXJydXB0LWNvbnRyb2xs
ZXJAZjAwMDAwMDAgewo+PiArICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhcm0s
Z2ljLXYzIjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICNpbnRlcnJ1cHQtY2VsbHMgPSA8Mz47
Cj4+ICsgICAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwwPjsKPiAKPiBObyBu
ZWVkIGZvciB0aGlzLgoKV2lsbCBiZSByZW1vdmVkCgo+IAo+PiArICAgICAgICAgICAgICAgICAg
ICAgaW50ZXJydXB0LWNvbnRyb2xsZXI7Cj4+ICsgICAgICAgICAgICAgICAgICAgICByZWcgPSA8
MHgwIDB4ZjA4MDAwMDAgMCAweDEwMDAwPiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
IDwweDAgMHhmMGEwMDAwMCAwIDB4MjAwMDAwPiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDwweDAgMHhmMDAwMDAwMCAwIDB4MjAwMD4sCj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICA8MHgwIDB4ZjAwMTAwMDAgMCAweDEwMDA+LAo+PiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgPDB4MCAweGYwMDIwMDAwIDAgMHgyMDAwPjsKPiAKPiBQbGVhc2UgYWRkIGNvbW1lbnRz
IGhlcmUsIHNlZSBhbHBpbmUtdjIuZHRzaSAob3Igb3RoZXIgZHRzaSBpbgo+IGFyY2gvYXJtNjQp
LgoKV2lsbCBiZSBhZGRlZC4KCj4gCj4+ICsgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRz
ID0gPEdJQ19QUEkgOSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gKyAgICAgICAgICAgICB9Owo+
PiArCj4+ICsgICAgICAgICAgICAgbXNpeDogbXNpeEBmYmUwMDAwMCB7Cj4+ICsgICAgICAgICAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gImFsLGFscGluZS1tc2l4IjsKPj4gKyAgICAgICAgICAg
ICAgICAgICAgIHJlZyA9IDwweDAgMHhmYmUwMDAwMCAweDAgMHgxMDAwMDA+Owo+PiArICAgICAg
ICAgICAgICAgICAgICAgaW50ZXJydXB0LWNvbnRyb2xsZXI7Cj4+ICsgICAgICAgICAgICAgICAg
ICAgICBtc2ktY29udHJvbGxlcjsKPj4gKyAgICAgICAgICAgICAgICAgICAgIGFsLG1zaS1iYXNl
LXNwaSA9IDwxNjA+Owo+PiArICAgICAgICAgICAgICAgICAgICAgYWwsbXNpLW51bS1zcGlzID0g
PDgwMD47Cj4+ICsgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+
Owo+PiArICAgICAgICAgICAgIH07Cj4+ICsKPj4gKyAgICAgICAgICAgICB1YXJ0MDogc2VyaWFs
QGZkODgzMDAwIHsKPiAKPiBMb29raW5nIGF0IHRoZSBBbHBpbmUgdjIgZHRzaSwgdGhpcyBub2Rl
IHdhcyBwdXQgaW4gYW4gaW8tZmFicmljIGJ1cy4gSXQKPiBzZWVtcyB0byBtZSB0aGUgQWxwaW5l
IHYzIGR0c2kgaXMgdmVyeSBzaW1pbGFyLiBXb3VsZCBpdCBhcHBseSBhcyB3ZWxsPwoKVjMgdmVy
eSBzaW1pbGFyIHRvIFYyLCB3aWxsIGFkZCB0byBpby1mYWJyaWMgYnVzIGFuZCB3aWxsIGFkZCBt
aXNzaW5nIAp1YXJ0IGRldmljZXMuCgo+IAo+PiArICAgICAgICAgICAgICAgICAgICAgY29tcGF0
aWJsZSA9ICJuczE2NTUwYSI7Cj4+ICsgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4
ZmQ4ODMwMDAgMHgwIDB4MTAwMD47Cj4+ICsgICAgICAgICAgICAgICAgICAgICBjbG9jay1mcmVx
dWVuY3kgPSA8MD47Cj4gCj4gSXMgdGhlIGZyZXF1ZW5jeSBzZXQgdG8gMCBvbiBwdXJwb3NlPyBP
ciBpcyBpdCBzZXQgYnkgYSBmaXJtd2FyZSBhdCBib290Cj4gdGltZSAoaWYgc28gcGxlYXNlIGFk
ZCBhIGNvbW1lbnQpPwoKSXQncyB1cGRhdGVkIGJ5IGZpcm13YXJlLCB3aWxsIGFkZCBhIGNvbW1l
bnQuCgo+IAo+PiArICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDE3
IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiArICAgICAgICAgICAgICAgICAgICAgcmVnLXNoaWZ0
ID0gPDI+Owo+PiArICAgICAgICAgICAgICAgICAgICAgcmVnLWlvLXdpZHRoID0gPDQ+Owo+IAo+
IFNpbmNlIHlvdSdyZSBlbmFibGluZyB0aGlzIG5vZGUgZXhwbGljaXRseSBpbiB0aGUgZHRzLCB5
b3UgY2FuIHNldCBpdCB0bwo+IGRpc2FibGVkIGJ5IGRlZmF1bHQuCgpBY2sKCj4gCj4+ICsgICAg
ICAgICAgICAgfTsKPj4gKwo+PiArICAgICAgICAgICAgIHBjaWVAZmJkMDAwMDAgewo+IAo+IFBs
ZWFzZSBvcmRlciB0aGUgbm9kZXMgaW4gaW5jcmVhc2luZyBvcmRlci4KCkFjawoKPiAKPj4gKyAg
ICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicGNpLWhvc3QtZWNhbS1nZW5lcmljIjsK
Pj4gKyAgICAgICAgICAgICAgICAgICAgIGRldmljZV90eXBlID0gInBjaSI7Cj4+ICsgICAgICAg
ICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwyPjsKPj4gKyAgICAgICAgICAgICAgICAgICAg
ICNhZGRyZXNzLWNlbGxzID0gPDM+Owo+PiArICAgICAgICAgICAgICAgICAgICAgI2ludGVycnVw
dC1jZWxscyA9IDwxPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDAgMHhmYmQw
MDAwMCAweDAgMHgxMDAwMDA+Owo+PiArICAgICAgICAgICAgICAgICAgICAgaW50ZXJydXB0LW1h
cC1tYXNrID0gPDB4ZjgwMCAwIDAgNz47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAvKiA4IHgg
bGVnYWN5IGludGVycnVwdHMgZm9yIFNBVEEgb25seSAqLwo+PiArICAgICAgICAgICAgICAgICAg
ICAgaW50ZXJydXB0LW1hcCA9IDwweDQwMDAgMCAwIDEgJmdpYyAwIDU3IElSUV9UWVBFX0xFVkVM
X0hJR0g+LAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwweDQ4MDAg
MCAwIDEgJmdpYyAwIDU4IElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDwweDUwMDAgMCAwIDEgJmdpYyAwIDU5IElSUV9UWVBFX0xF
VkVMX0hJR0g+LAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwweDU4
MDAgMCAwIDEgJmdpYyAwIDYwIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+PiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDwweDYwMDAgMCAwIDEgJmdpYyAwIDYxIElSUV9UWVBF
X0xFVkVMX0hJR0g+LAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDww
eDY4MDAgMCAwIDEgJmdpYyAwIDYyIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwweDcwMDAgMCAwIDEgJmdpYyAwIDYzIElSUV9U
WVBFX0xFVkVMX0hJR0g+LAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDwweDc4MDAgMCAwIDEgJmdpYyAwIDY0IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiArICAgICAg
ICAgICAgICAgICAgICAgcmFuZ2VzID0gPDB4MDIwMDAwMDAgMHgwIDB4ZmUwMDAwMDAgMHgwIDB4
ZmUwMDAwMDAgMHgwIDB4MTAwMDAwMD47Cj4+ICsgICAgICAgICAgICAgICAgICAgICBidXMtcmFu
Z2UgPSA8MHgwMCAweDAwPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgIG1zaS1wYXJlbnQgPSA8
Jm1zaXg+Owo+PiArICAgICAgICAgICAgIH07Cj4+ICsgICAgIH07Cj4+ICt9Owo+IAo+IFRoZSBy
ZXN0IG9mIHRoZSBzZXJpZXMgbG9va3MgZ29vZC4KVGhhbmtzCgpSZWdhcmRzLApIYW5uYQoKPiAK
PiBUaGFua3MhCj4gQW50b2luZQo+IAo+IC0tCj4gQW50b2luZSBUw6luYXJ0LCBCb290bGluCj4g
RW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwo+IGh0dHBzOi8vYm9vdGxpbi5j
b20KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
