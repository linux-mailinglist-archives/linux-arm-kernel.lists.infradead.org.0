Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF2B8238E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYHClcOlwxH7gKM7GEliv+uo9z/xYPxWKgNBwFfaPtM=; b=pVm+/2hu4zyFWQ
	j7P2TTDcZTAh4rF7THGSwtZdusT/QGmRKisckK3gVg8ATe3nm2CiO31cgdSInDGOQZkumYUxlDcMd
	6dU2p12fxp1vw31AFOHGr3KHaQ0R8PYdSJlTvauh0IM05Ll0vHjBzmwRxf6hsaFzliJQG6A85LohW
	1AS8sWxciTv2jt0VevDvI4zmnZW/Ppt0gr9QVaVVJYRaTa9uLo00CAma3ZPshl2xSyhV+/6wj4/ID
	cFOL0n4St0NTXMUC7xB1TQ6jEmCiEh182srR2pxt3l9AGGFRnbEQYKYuNMGuJS6j0rsfOXX4Geagg
	LlDZs6J30nAzJmm2a7HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugPm-0007fA-5Z; Mon, 05 Aug 2019 17:04:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hugO4-0006Gl-NV
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 17:03:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D2C82075B;
 Mon,  5 Aug 2019 17:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565024588;
 bh=B48eiohTRXUqp1vgix0BJUhceLmylIAqW3xSQiyok/o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eIg8/ZChC1P4N9v5Ec4ea93COQQM0oQwMI7vQmKok2rouMgnU6TnmPZDvv+dGcQQ1
 qW+9jFVq7n1X1TVgFXKb1vjKFDo/cKLupz+8RAvmblBKj9BYI5TJDS6X+vsHq/knO0
 w5B1vYoyCDGelHVVgZZPaoOBSh+vOInggeXmQM/4=
Date: Mon, 5 Aug 2019 18:03:03 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH v2] arm64/prefetch: fix a -Wtype-limits warning
Message-ID: <20190805170303.brqcusgmtx6j3el3@willie-the-truck>
References: <20190803003358.992-1-cai@lca.pw>
 <20190805100059.4gml6c4kclz2iin3@willie-the-truck>
 <BDD11CC0-DC23-4D3A-B9EB-9A985EC53A30@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BDD11CC0-DC23-4D3A-B9EB-9A985EC53A30@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_100308_825423_A2720C8D 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: rrichter@cavium.com, Catalin Marinas <catalin.marinas@arm.com>,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMDg6MDM6MTBBTSAtMDQwMCwgUWlhbiBDYWkgd3JvdGU6
Cj4gCj4gCj4gPiBPbiBBdWcgNSwgMjAxOSwgYXQgNjowMCBBTSwgV2lsbCBEZWFjb24gPHdpbGxA
a2VybmVsLm9yZz4gd3JvdGU6Cj4gPiAKPiA+IE9uIEZyaSwgQXVnIDAyLCAyMDE5IGF0IDA4OjMz
OjU4UE0gLTA0MDAsIFFpYW4gQ2FpIHdyb3RlOgo+ID4+IFRoZSBjb21taXQgZDUzNzBmNzU0ODc1
ICgiYXJtNjQ6IHByZWZldGNoOiBhZGQgYWx0ZXJuYXRpdmUgcGF0dGVybiBmb3IKPiA+PiBDUFVz
IHdpdGhvdXQgYSBwcmVmZXRjaGVyIikgaW50cm9kdWNlZCBNSURSX0lTX0NQVV9NT0RFTF9SQU5H
RSgpIHRvIGJlCj4gPj4gdXNlZCBpbiBoYXNfbm9faHdfcHJlZmV0Y2goKSB3aXRoIHJ2X21pbj0w
IHdoaWNoIGdlbmVyYXRlcyBhIGNvbXBpbGF0aW9uCj4gPj4gd2FybmluZyBmcm9tIEdDQywKPiA+
PiAKPiA+PiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2Nh
Y2hlLmg6OCwKPiA+PiAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9jYWNoZS5o
OjYsCj4gPj4gICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvcHJpbnRrLmg6OSwK
PiA+PiAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9rZXJuZWwuaDoxNSwKPiA+
PiAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9jcHVtYXNrLmg6MTAsCj4gPj4g
ICAgICAgICAgICAgICAgZnJvbSBhcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmM6MTE6Cj4g
Pj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jOiBJbiBmdW5jdGlvbiAnaGFzX25vX2h3
X3ByZWZldGNoJzoKPiA+PiAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1dHlwZS5oOjU5OjI2
OiB3YXJuaW5nOiBjb21wYXJpc29uIG9mCj4gPj4gdW5zaWduZWQgZXhwcmVzc2lvbiA+PSAwIGlz
IGFsd2F5cyB0cnVlIFstV3R5cGUtbGltaXRzXQo+ID4+IF9tb2RlbCA9PSAobW9kZWwpICYmIHJ2
ID49IChydl9taW4pICYmIHJ2IDw9IChydl9tYXgpOyAgXAo+ID4+ICAgICAgICAgICAgICAgICAg
ICAgICAgIF5+Cj4gPj4gYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jOjg4OTo5OiBub3Rl
OiBpbiBleHBhbnNpb24gb2YgbWFjcm8KPiA+PiAnTUlEUl9JU19DUFVfTU9ERUxfUkFOR0UnCj4g
Pj4gcmV0dXJuIE1JRFJfSVNfQ1BVX01PREVMX1JBTkdFKG1pZHIsIE1JRFJfVEhVTkRFUlgsCj4g
Pj4gICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gPj4gCj4gPj4gRml4IGl0IGJ5IG1h
a2luZyAicnYiIGEgInMzMiIuCj4gPj4gCj4gPj4gU2lnbmVkLW9mZi1ieTogUWlhbiBDYWkgPGNh
aUBsY2EucHc+Cj4gPj4gLS0tCj4gPj4gCj4gPj4gdjI6IFVzZSAiczMyIiBmb3IgInJ2Iiwgc28g
InZhcmlhbnQgMC9yZXZpc2lvbiAwIiBjYW4gYmUgY292ZXJlZC4KPiA+PiAKPiA+PiBhcmNoL2Fy
bTY0L2luY2x1ZGUvYXNtL2NwdXR5cGUuaCB8IDIgKy0KPiA+PiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+PiAKPiA+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9pbmNsdWRlL2FzbS9jcHV0eXBlLmggYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2NwdXR5
cGUuaAo+ID4+IGluZGV4IGU3ZDQ2NjMxY2M0Mi4uZDUyZmU4NjUxYzJkIDEwMDY0NAo+ID4+IC0t
LSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1dHlwZS5oCj4gPj4gKysrIGIvYXJjaC9hcm02
NC9pbmNsdWRlL2FzbS9jcHV0eXBlLmgKPiA+PiBAQCAtNTQsNyArNTQsNyBAQAo+ID4+ICNkZWZp
bmUgTUlEUl9JU19DUFVfTU9ERUxfUkFOR0UobWlkciwgbW9kZWwsIHJ2X21pbiwgcnZfbWF4KQkJ
XAo+ID4+ICh7CQkJCQkJCQkJXAo+ID4+IAl1MzIgX21vZGVsID0gKG1pZHIpICYgTUlEUl9DUFVf
TU9ERUxfTUFTSzsJCQlcCj4gPj4gLQl1MzIgcnYgPSAobWlkcikgJiAoTUlEUl9SRVZJU0lPTl9N
QVNLIHwgTUlEUl9WQVJJQU5UX01BU0spOwlcCj4gPj4gKwlzMzIgcnYgPSAobWlkcikgJiAoTUlE
Ul9SRVZJU0lPTl9NQVNLIHwgTUlEUl9WQVJJQU5UX01BU0spOwlcCj4gPiAKPiA+IEhtbSwgYnV0
IHRoaXMgcmVhbGx5IGlzbid0IGEgc2lnbmVkIHF1YW50aXR5OiBpdCdzIHR3byBmaWVsZHMgZXh0
cmFjdGVkCj4gPiBmcm9tIGFuIElEIHJlZ2lzdGVyLiBJIHRoaW5rIHRoZSBjb2RlIGlzIGZpbmUu
IEFyZSB5b3UgZXhwbGljaXRseSBlbmFibGluZwo+ID4gLVd0eXBlLWxpbWl0cyBzb21laG93Pwo+
IAo+IFllcywgaXQgaXMgdXNlZnVsIHRvIGNhdGNoIHVuaW50ZW5kZWQgZGV2ZWxvcGVyIG1pc3Rh
a2VzIG9yIHNpbXBseSBvcHRpbWl6ZSB3YXN0ZWQgaW5zdHJ1Y3Rpb25zIG9mCj4gY2hlY2tpbmcg
bGlrZSBpbiwKPiAKPiA5MTlhZWY0NGQ3M2QgKOKAnHg4Ni9lZmk6IGZpeCBhIC1XdHlwZS1saW1p
dHMgY29tcGlsYXRpb24gd2FybmluZ+KAnSkKPiAKPiA1YTgyYmRiNDhmMDQgKOKAnHg4Ni9jYWNo
ZWluZm86IEZpeCBhIC1XdHlwZS1saW1pdHMgd2FybmluZ+KAnSkKPiAKPiBJdCBpcyBub3JtYWwg
dG8gZml4IGEgZmFsc2UgcG9zaXRpdmUgdGhpcyB3YXkgYXMgaW4gb3RoZXIgbWFpbmxpbmUgY29t
bWl0cywKPiAKPiBlYzYzMzU1ODY5NTMgKOKAnHg4Ni9hcGljOiBTaWxlbmNlIC1XdHlwZS1saW1p
dHMgY29tcGlsZXIgd2FybmluZ3PigJ0pCj4gCj4gT25jZSB0aG9zZSBmYWxzZS1wb3NpdGl2ZXMg
YXJlIHVuZGVyIGNvbnRyb2wsIHRoZSB3YXJuaW5nIGZsYWcgY291bGQgYmUgdGhlbiBlbmFibGVk
IGJ5IGRlZmF1bHQgaW4KPiB0aGUgZnV0dXJlLgoKSWYgdGhlcmUncyBhIHdheSB0byBmaXggdGhl
IGNvZGUgd2l0aG91dCBtYWtpbmcgaXQgbW9yZSBjb25mdXNpbmcsIHN1cmUsCmJ1dCB5b3VyIHBy
b3Bvc2FsIG9mIG1ha2luZyB0aGUgZmllbGQgc2lnbmVkIGRvZXMgbm90IGFjaGlldmUgdGhhdCBn
b2FsLgoKV2lsbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
