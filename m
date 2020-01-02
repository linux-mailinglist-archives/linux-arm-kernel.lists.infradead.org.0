Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0FC12EB21
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 22:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HywJMi5/mmKhCe1k/MEaPOGyPZFFJZvqBrUe3jQhzQM=; b=eQh/jK9hxP3dIh
	tSWM4dXnIzrz9XufWlqdqgnPwT1b8k45dRgHOhgEe3ss5dRo1ZxYt3i496pI9DSvcasdDEBXncyq/
	gsaxFizNu5H1MJLMlD9R1CatcQBYJVmUs8eaa7/SdS4zw38K60TlljHaa397PP60Z4XIasYKUv0Gs
	9+EGVM2Yylq+ccrAKnsFrAZJhyNeMRgtUTOqP6DgrA6u9D1QuOOTAQ6gZImChjoax+hOjCXnU3gGg
	3rOclLssJ6QYX0ADvehW/DnMhejSY8lxLvOA5d6o0rPge95xxYPSh5HyB+GSTI3FstOyU95q66oPP
	19D4+h0RcICigIiUElSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in7pJ-00076y-Fa; Thu, 02 Jan 2020 21:16:17 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in7ok-0006kX-Q9
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 21:15:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1577999738;
 s=strato-dkim-0002; d=dawncrow.de;
 h=In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=/RFRtxHgJLOW/mYZm857emXRQ5DE6ixRmmVFe1r78O0=;
 b=PsCycSk1gTNzwRf+cmJoM2QI4Mavobacy456EkVvLTi+HErlcnzTt2vTV/5iHn2+N4
 uc0Nk/Jr1UKFZgZciLFOiOMT6wz9ZnK3nnikXvrJ5jZ5E4gZ3KhRw7Pg13hGCBa89pRB
 gBSmpC9t1A7vJ09B8kPo7vMBuPSDKZt2YkN/Kvi9o6nVsdnPhL7yZHuPyv1AyHo3qE2S
 ckBhg+axMKsNutlK6SroZlMTx0P/InMY7fdkNdnfy8xMXId1s8PfWke2jtOQ/ru8CAuZ
 9sM3lcFyN1pemKdy/FqQYs4fEdFRsy6etenlkAqizM+1ALOmhZ+SM8tDs+1/smGb0k7w
 KR9w==
X-RZG-AUTH: ":ImkWY2CseuihIZy6ZWWciR6unPhpN+aXzZ6bi4rK0b8tGDimOzIxQbIOZSqtgWHzDs8="
X-RZG-CLASS-ID: mo00
Received: from [192.168.178.40] by smtp.strato.de (RZmta 46.1.3 DYNA|AUTH)
 with ESMTPSA id I099d1w02LFDLMy
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 2 Jan 2020 22:15:13 +0100 (CET)
Subject: Re: [PATCH v2 1/2] ARM: dts: Move interconnect target module for
 omap3 sgx to separate dtsi files
To: Tony Lindgren <tony@atomide.com>
References: <20191230202037.28836-1-nerv@dawncrow.de>
 <20200102193359.GE16702@atomide.com>
From: =?UTF-8?Q?Andr=c3=a9_Hentschel?= <nerv@dawncrow.de>
Autocrypt: addr=nerv@dawncrow.de; prefer-encrypt=mutual; keydata=
 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
 BZtrxq8dmex7tFXvQoJV4PIa20fGXq6S
Message-ID: <9e39831c-bfa8-d497-7d3e-ff6ec04b8e52@dawncrow.de>
Date: Thu, 2 Jan 2020 22:15:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200102193359.GE16702@atomide.com>
Content-Language: de-LU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_131543_021848_5ECD0D4D 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:3 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux@arm.linux.org.uk,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bcousson@baylibre.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDIuMDEuMjAgdW0gMjA6MzMgc2NocmllYiBUb255IExpbmRncmVuOgo+ICogQW5kcsOpIEhl
bnRzY2hlbCA8bmVydkBkYXduY3Jvdy5kZT4gWzE5MTIzMCAyMDoyMl06Cj4+IE9ubHkgZG0zNzMw
IGFuZCBhbTM3MTUgY29tZSB3aXRoIFNHWCBzdXBwb3J0Cj4gCj4gQUZBSUsgZG0zNzMwIGlzIGp1
c3QgYSBtYXJrZXRpbmcgbmFtZSBmb3IgYSBjYXRhbG9nIHZlcnNpb24gb2YKPiBvbWFwMzYzMC4g
U28gdXNpbmcgb21hcDM2eHguZHRzaSBpcyBjb3JyZWN0IGFuZCB3ZSBzaG91bGQgbm90Cj4gY2hh
bmdlIHRoYXQuCj4gCj4gQ2FuIHlvdSBwbGVhc2UganVzdCBhZGQgYSBtaW5pbWFsIGRtMzcyNS5k
dHNpIHRoYXQgeW91ciBib2FyZCBkdHMKPiBjYW4gaW5jbHVkZSBhbmQgYXZvaWQgZGlzYWJsaW5n
IHNneCBpbiB0aGUgYm9hcmQgc3BlY2lmaWMgZmlsZT8KPiBUaGF0IGlzIGFzc3VtaW5nIHlvdSBo
YXZlIGRtMzcyNSB3aXRoIGRzcCBhbmQgaXNwIGJ1dCBubyBzZ3guCgpJIHJlbW92ZWQgdGhlIHNn
eCBkaXNhYmxlIHBhcnQgYWxyZWFkeSBpbiAyLzIuCkNvbnN1bHRpbmcgbXkgdGFibGU6CiAgICAg
RE0zNzMwIHwgRE0zNzI1IHwgQU0zNzE1IHwgQU0zNzAzCkRTUCAgICBYICAgIHwgICBYICAgIHwg
ICAgICAgIHwgICAgClNHWCAgICBYICAgIHwgICAgICAgIHwgICBYICAgIHwgICAgCldoZXJlIFgg
aXMgInN1cHBvcnRlZCIKClNvIGluY2x1ZGluZyBvbWFwNjN4eC5kdHNpIHNlZW1zIHJpZ2h0IGFm
dGVyIHRoaXMgcGF0Y2ggbW92ZXMgdGhlCnNneCBwYXJ0IHRvIHNlcGFyYXRlIGR0c2kuIE9yIGRv
IHlvdSB3YW50IHRvIGhhdmUgdGhlIHN4ZwpkaXNhYmxpbmcgaW4gdGhlIGRtMzcyNS5kdHNpPwoK
PiBZb3UgY2FuIHJlYWQgdGhlIGRldGVjdGVkIFNvQyB3aXRoOgo+IAo+ICMgY2F0IC9zeXMvYnVz
L3NvYy9kZXZpY2VzL3NvYzAvbWFjaGluZQoKIyBjYXQgL3N5cy9idXMvc29jL2RldmljZXMvc29j
MC9tYWNoaW5lCkRNMzcyNQojIGNhdCAvc3lzL2J1cy9zb2MvZGV2aWNlcy9zb2MwL3JldmlzaW9u
IApFUzEuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
