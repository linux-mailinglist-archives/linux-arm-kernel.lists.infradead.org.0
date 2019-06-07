Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C1538EA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FwfOlTXbt0WI7hMfwc65UE4A9k6vLBruVN48diFDBbw=; b=UT+AnJRzajkMTz
	YBayoyO1SWoD9hCQAn89uXHHGga8Sn4C5mX6pjJkZ1t620DXqFxs4bqK5/cqZq0+vANi6V3AXQx/Q
	6aaeEVZzLjMt/2WJiTVSZlYgSOn9gh2Aumq+KyhJsJXorBsrektfZKNkOsWbzMJzWAEIXdUO9jzXt
	89azkYAxKte7SiBv0Td0hUMPvY/+3olDA9H88LoESSSm68CDOqaFeaI53a8LzPEt5Gzx7ERxfcMSY
	rt4zoN3qpNT/bn9SdoWJemZrnPJ1bDW4OoTkRN8SdckHSQ+gTnAqK1ujfqbPyPtkLQ1+LJmATiKRp
	0Ljx7sZJvYgDiPPkr7/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGX8-0008GB-W6; Fri, 07 Jun 2019 15:11:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGWy-0008En-89; Fri, 07 Jun 2019 15:11:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE300B16;
 Fri,  7 Jun 2019 08:11:45 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8A97A3F802;
 Fri,  7 Jun 2019 08:11:44 -0700 (PDT)
Subject: Re: [PATCH v3 1/3] arm64, vmcoreinfo : Append 'PTRS_PER_PGD' to
 vmcoreinfo
To: Bhupesh Sharma <bhsharma@redhat.com>
References: <1553058574-18606-1-git-send-email-bhsharma@redhat.com>
 <1553058574-18606-2-git-send-email-bhsharma@redhat.com>
 <2757805b-61cb-8f4a-1917-0c57012f09df@arm.com>
 <58c6cda9-9fd4-3b3e-740a-7b9b80b1f634@redhat.com>
 <a48bb02c-8f93-4e3b-085d-a6f0e5a1f3a0@arm.com>
 <66da4098-b221-408b-50ca-f3790b943965@redhat.com>
 <380b137b-a611-5c8d-3890-8021084f87fe@redhat.com>
From: James Morse <james.morse@arm.com>
Message-ID: <2a4af3a0-1342-fdd2-1cfd-e37abb99d8bd@arm.com>
Date: Fri, 7 Jun 2019 16:11:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <380b137b-a611-5c8d-3890-8021084f87fe@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_081148_382304_A9ED8927 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Steve Capper <Steve.Capper@arm.com>, kexec@lists.infradead.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Dave Anderson <anderson@redhat.com>, bhupesh.linux@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmh1cGVzaCwKCihzb3JyeSBmb3IgdGhlIGRlbGF5IG9uIHRoaXMpCgpPbiAwNC8wNS8yMDE5
IDEzOjUzLCBCaHVwZXNoIFNoYXJtYSB3cm90ZToKPiBPbiAwNC8wMy8yMDE5IDExOjI0IFBNLCBC
aHVwZXNoIFNoYXJtYSB3cm90ZToKPj4gT24gMDQvMDIvMjAxOSAxMDo1NiBQTSwgSmFtZXMgTW9y
c2Ugd3JvdGU6Cj4+PiBZZXMgdGhlIGtlcm5lbCBjb2RlIGlzIGdvaW5nIHRvIG1vdmUgYXJvdW5k
LCB0aGlzIGlzIHdoeSB0aGUgaW5mb3JtYXRpb24gd2UgZXhwb3NlIHZpYQo+Pj4gdm1jb3JlaW5m
byBuZWVkcyB0byBiZSB0aG91Z2h0IHRocm91Z2g6IHNvbWV0aGluZyB3ZSB3b3VsZCBhbHdheXMg
bmVlZCwgcmVnYXJkbGVzcyBvZiBob3cKPj4+IHRoZSBrZXJuZWwgaW1wbGVtZW50cyBpdC4KPj4+
Cgo+Pj4gUG9pbnRlci1hdXRoIGNoYW5nZXMgYWxsIHRoaXMgYWdhaW4sIGFzIHdlIG1heSBwcmVm
ZXIgdG8gdXNlIHRoZSBiaXRzIGZvciBwb2ludGVyLWF1dGggaW4KPj4+IG9uZSBUVEIgb3IgdGhl
IG90aGVyLiBQVFJTX1BFUl9QR0QgbWF5IHNob3cgdGhlIDUyYml0IHZhbHVlIGluIHRoaXMgY2Fz
ZSwgYnV0IG5laXRoZXIgVFRCUgo+Pj4gaXMgbWFwcGluZyA1MmJpdHMgb2YgVkEuCj4+Pgo+Pj4K
Pj4+PiBTbyBmYXIsIEkgaGF2ZSBnZW5lcmFsbHkgY29tZSBhY3Jvc3MgZGlzY3Vzc2lvbnMgd2hl
cmUgdGhlIGZvbGxvd2luZyB2YXJpYXRpb25zIG9mIHRoZQo+Pj4+IGFkZHJlc3Mgc3BhY2VzIGhh
dmUgYmVlbiBwcm9wb3NlZC9yZXF1ZXN0ZWQ6Cj4+Pj4gLSA0OGJpdCBrZXJuZWwgVkEgKyA0OC1i
aXQgVXNlciBWQSwKPj4+PiAtIDQ4LWJpdCBrZXJuZWwgVkEgKyA1Mi1iaXQgVXNlciBWQSwKPj4+
Cj4+PiArIDUyYml0IGtlcm5lbCwgYmVjYXVzZSB0aGVyZSBpcyBleGNlc3NpdmUgcXVhbnRpdGll
cyBvZiBtZW1vcnksIGFuZCB0aGUga2VybmVsIG1hcHMgaXQKPj4+IGFsbCwgYnV0IDQ4LWJpdCB1
c2VyLCBiZWNhdXNlIGl0IG5ldmVyIG1hcHMgYWxsIHRoZSBtZW1vcnksIGFuZCB3ZSBwcmVmZXIg
dGhlIGJpdHMgZm9yCj4+PiBwb2ludGVyLWF1dGguCj4+Pgo+Pj4+IC0gNTItYml0IGtlcm5lbCBW
QSArIDUyLWJpdCBVc2VyIFZBLgo+Pj4KPj4+IEFuZC4uLsKgIGFsbCBmb3VyIG1heSBoYXBwZW4g
d2l0aCB0aGUgc2FtZSBidWlsdCBpbWFnZS4gSSBkb24ndCBzZWUgaG93IHlvdSBjYW4gdGVsbCB0
aGVzZQo+Pj4gY2FzZXMgYXBhcnQgd2l0aCB0aGUgb25lIChidWlsZC10aW1lLWNvbnN0YW50ISkg
UFRSU19QRVJfUEdEIHZhbHVlLgo+Pj4KPj4+IEknbSBzdXJlIHNvbWUgb2YgdGhlc2UgY2FzZXMg
YXJlIGh5cG90aGV0aWNhbCwgYnV0IGJ5IGNvbnNpZGVyaW5nIGl0IGFsbCBub3csIHdlIGNhbiBh
dm9pZAo+Pj4gdGhyZWUgbW9yZSBrZXJuZWw6dm1jb3JlaW5mbyB1cGRhdGVzLCBhbmQgdGhyZWUg
bW9yZSBmaXgtdXNlci1zcGFjZS10by11c2UtdGhlLW5ldy12YWx1ZS4KPj4KPj4gQWdyZWUuCj4+
Cj4+PiBJIHRoaW5rIHlvdSBwcm9iYWJseSBkbyBuZWVkIFBUUlNfUEVSX1BHRCwgYXMgdGhpcyBp
cyB0aGUgb25lIHZhbHVlIHRoZSBtbSBpcyB1c2luZyB0bwo+Pj4gZ2VuZXJhdGUgcGFnZSB0YWJs
ZXMuIEknbSBwcmV0dHkgc3VyZSB5b3UgYWxzbyBuZWVkIFQwU1ogYW5kIFQxU1ogdG8ga25vdyBp
ZiB0aGF0J3MKPj4+IGFjdHVhbGx5IGluIHVzZSwgb3IgdGhlIGtlcm5lbCBpcyBib2RnaW5nIHJv
dW5kIGl0IHdpdGggYW4gb2Zmc2V0Lgo+Pgo+PiBTdXJlLCBJIGFtIG9wZW4gdG8gc3VnZ2VzdGlv
bnMgKGFzIEkgcmVhbGl6ZSB0aGF0IHdlIG5lZWQgYW4gYWRkaXRpb25hbCBWQV9CSVRTX0FDVFVB
TAo+PiB2YXJpYWJsZSBleHBvcnQnZWQgZm9yIDUyLWJpdCBrZXJuZWwgVkEgY2hhbmdlcykuCgoo
c3RlcHBpbmcgYmFjayBhIGJpdDopCgpJJ20gYWdhaW5zdCBleHBvc2luZyBhcmNoLXNwZWNpZmlj
ICNpZmRlZnMgdGhhdCBjb3JyZXNwb25kIHRvIGhvdyB3ZSd2ZSBjb25maWd1cmVkIHRoZQphcmNo
IGNvZGUncyBpbnRlcmFjdGlvbnMgd2l0aCBtbS4gVGhlc2UgYXJlIGFsbCBtb3ZpbmcgdGFyZ2V0
cywgd2UgY2FuJ3QgaGF2ZSBhbnkgb2YgaXQKYmVjb21lIEFCSS4KCkkgaGF2ZSBhIHN0cmF3LW1h
biBmb3IgdGhpczogV2hhdCBpcyB0aGUgdmFsdWUgb2YgUFRFX0ZJTEVfTUFYX0JJVFMgb24geW91
ciBzeXN0ZW0/CkkgaGF2ZSBubyBpZGVhIHdoYXQgdGhpcyB2YWx1ZSBpcyBvciBtZWFucywgYW4g
YWZ0ZXJub29uJ3MgYXJjaGFlb2xvZ3kgd291bGQgYmUgbmVlZGVkKCEpLgpUaGlzIGlzIHNvbWV0
aGluZyB0aGF0IG1hZGUgc2Vuc2UgZm9yIG9uZSBrZXJuZWwgdmVyc2lvbiwgYSBiZXR0ZXIgaWRl
YSBjYW1lIGFsb25nLCBhbmQgaXQKd2FzIHJlcGxhY2VkLiBJZiB3ZSdkIGV4cG9zZWQgdGhpcyB0
byB1c2VyLXNwYWNlLCB3ZSdkIGhhdmUgdG8gZ2VuZXJhdGUgYSB2YWx1ZSwgZXZlbiBpZgppdCBk
b2Vzbid0IG1lYW4gYW55dGhpbmcuIEV4cG9zaW5nIFZBX0JJVFNfQUNUVUFMIGlzIHRoZSBzYW1l
LgoKKEtlZXAgYW4gZXllIG91dCBmb3Igd2hlbiB3ZSBjaGFuZ2UgdGhlIGtlcm5lbCBtZW1vcnkg
bWFwLCBhbmQgYW55IHNlY29uZC1ndWVzc2luZyBiYXNlZApvbiBWQV9CSVRTIHR1cm5zIG91dCB0
byBiZSB3cm9uZykKCgpXaGF0IHdlIGRvIGhhdmUgYXJlIHRoZSBoYXJkd2FyZSBwcm9wZXJ0aWVz
LiBUaGUga2VybmVsIGNhbid0IGNoYW5nZSB0aGVzZS4KCgo+PiBBbHNvIGhvdyBkbyB3ZSBzdGFu
ZGFyZGl6ZSByZWFkaW5nIFQwU1ogYW5kIFQxU1ogaW4gdXNlci1zcGFjZS4gRG8geW91IHByb3Bv
c2UgSSBtYWtlIGFuCj4+IGVuaGFuY2VtZW50IGluIHRoZSBjcHUtZmVhdHVyZS1yZWdpc3RlcnMg
aW50ZXJmYWNlIChzZWUgWzFdKSBvciB0aGUgSFdDQVBTIGludGVyZmFjZQo+PiAoc2VlIFsyXSkg
Zm9yIHRoZSBzYW1lPwoKY3B1ZmVhdHVyZSB3b24ndCBoZWxwIHlvdSBpZiB5b3UndmUgYWxyZWFk
eSBwYW5pYygpZCBhbmQgb25seSBoYXZlIHRoZSB2bWNvcmUgZmlsZS4gVGhpcwpzdHVmZiBuZWVk
cyB0byBnbyBpbiB2bWNvcmVpbmZvLgoKQXMgbG9uZyBhcyB0aGVyZSBpcyBhIGRlc2NyaXB0aW9u
IG9mIGhvdyB1c2Vyc3BhY2UgdXNlcyB0aGVzZSB2YWx1ZXMsIEkgdGhpbmsgYWRkaW5nCmtleS92
YWx1ZXMgZm9yIFRDUl9FTDEuVHhTWiB0byB0aGUgdm1jb3JlaW5mbyBpcyBhIHNlbnNpYmxlIHdh
eSBvdXQgb2YgdGhpcy4gWW91IHByb2JhYmx5Cm5lZWQgVFRCUjFfRUwxLkJBRERSIHRvby4gKGl0
IHNob3VsZCBiZSBzcGVjaWZpYyBmaWVsZHMsIHRvIHByZXZlbnQgJ25ldyB1c2VzJyBiZWNvbWlu
ZyBBQkkpCgpUaGlzIHRlbGxzIHlvdSBob3cgdGhlIGhhcmR3YXJlIHdhcyBjb25maWd1cmVkLCBh
bmQgY292ZXJzIGFueSBjb21iaW5hdGlvbiBvZiBUeFNaIHRyaWNrcwp3ZSBwbGF5LCBhbmQgd2hl
dGhlciB0aG9zZSBhZGRyZXNzIGJpdHMgYXJlIHVzZWQgZm9yIFZBLCBvciBwdHJhdXRoIGZvciBU
VEJSMCBvciBUVFJCMS4KCgo+IEFueSBjb21tZW50cyBvbiB0aGUgYWJvdmUgcG9pbnRzPyBBdCB0
aGUgbW9tZW50IHdlIGhhdmUgdG8gY2FycnkgdGhlc2UgZml4ZXMgaW4gdGhlCj4gZGlzdHJpYnV0
aW9uIGtlcm5lbHMgYW5kIEkgd291bGQgbGlrZSB0byBoYXZlIHRoZXNlIGZpeGVkIGluIHVwc3Ry
ZWFtIGtlcm5lbCBpdHNlbGYuCgoKVGhhbmtzLAoKSmFtZXMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
