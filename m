Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD24C1897EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 10:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdTxOoitebmA8nEiisS6CyeOqh4VNe4PWqackS0quwo=; b=l4a/k2GYQw2lkF
	FhvsLhQuYs3p1WcXWQX7HxbUUur27Hp5WFj4axIms9Q5Pd1FD7kAovGG5loNgQMsD9rrPYD1oZ+XH
	DQ4pxXLQS2im4xuCjUQemVX7GH9SnJtU2zc7Brb/4OcgaXC8kZjIjdHxdKYIaJ2dCqUiK1tfOaHLc
	aUtLzG+lnJdjFkqwCiTWTlS/5YRAD+Pf7Iaj+N1mM3IVilRoPR3dxJqGqxjlcVl3VgoEahxA99UFP
	LFe2BEfYLpzckxLk/Zks0ZLbBQbQKQKITXy+EVuWSvse9bTnZ4H5btLj2VETJAcbnYWngle3L7Zq3
	L/FQ3XeAo8RuqIKivc7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEV2O-00065S-50; Wed, 18 Mar 2020 09:30:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEV2G-00064b-14
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 09:30:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B99D31B;
 Wed, 18 Mar 2020 02:30:45 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F30B33F52E;
 Wed, 18 Mar 2020 02:30:43 -0700 (PDT)
Date: Wed, 18 Mar 2020 09:30:41 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: =?utf-8?B?546L5paH6JmO?= <wenhu.wang@vivo.com>
Subject: Re: Re: [PATCH] arm64: add blank after 'if'
Message-ID: <20200318093041.GR3005@mbp>
References: <20200317222823.GG20788@willie-the-truck>
 <AG*ACQC2CEOOiVKFwxZXw4qM.3.1584509548085.Hmail.wenhu.wang@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AG*ACQC2CEOOiVKFwxZXw4qM.3.1584509548085.Hmail.wenhu.wang@vivo.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_023048_116086_6180866E 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 kernel@vivo.com, Yunfeng Ye <yeyunfeng@huawei.com>,
 Hanjun Guo <guohanjun@huawei.com>, Zheng Wei <wei.zheng@vivo.com>,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXIgMTgsIDIwMjAgYXQgMDE6MzI6MjhQTSArMDgwMCwg546L5paH6JmOIHdyb3Rl
Ogo+IEZyb206IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4gRGF0ZTogMjAyMC0wMy0x
OCAwNjoyODoyNAo+IFRvOiAgWmhlbmcgV2VpIDx3ZWkuemhlbmdAdml2by5jb20+Cj4gQ2M6ICBD
YXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPixIYW5qdW4gR3VvIDxndW9o
YW5qdW5AaHVhd2VpLmNvbT4sRW5yaWNvIFdlaWdlbHQgPGluZm9AbWV0dXgubmV0PixBbGxpc29u
IFJhbmRhbCA8YWxsaXNvbkBsb2h1dG9rLm5ldD4sR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hA
bGludXhmb3VuZGF0aW9uLm9yZz4sVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+
LFl1bmZlbmcgWWUgPHlleXVuZmVuZ0BodWF3ZWkuY29tPixsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcsbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZyxrZXJuZWxAdml2by5j
b20sd2VuaHUud2FuZ0B2aXZvLmNvbQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGFybTY0OiBhZGQg
YmxhbmsgYWZ0ZXIgJ2lmJz5PbiBGcmksIE1hciAxMywgMjAyMCBhdCAxMDo1NDowMlBNICswODAw
LCBaaGVuZyBXZWkgd3JvdGU6Cj4gPj4gYWRkIGJsYW5rIGFmdGVyICdpZicgZm9yIGFybXY4X2Rl
cHJlY2F0ZWRfaW5pdCgpCj4gPj4gdG8gbWFrZSBpdCBjb21wbHkgd2l0aCBrZXJuZWwgY29kaW5n
IHN0eWxlLgo+ID4+IAo+ID4+IFNpZ25lZC1vZmYtYnk6IFpoZW5nIFdlaSA8d2VpLnpoZW5nQHZp
dm8uY29tPgo+ID4+IC0tLQo+ID4+ICBhcmNoL2FybTY0L2tlcm5lbC9hcm12OF9kZXByZWNhdGVk
LmMgfCAyICstCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+ID4+IAo+ID4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9hcm12OF9kZXBy
ZWNhdGVkLmMgYi9hcmNoL2FybTY0L2tlcm5lbC9hcm12OF9kZXByZWNhdGVkLmMKPiA+PiBpbmRl
eCA3ODMyYjMyMTYzNzAuLjRjYzU4MWFmMmQ5NiAxMDA2NDQKPiA+PiAtLS0gYS9hcmNoL2FybTY0
L2tlcm5lbC9hcm12OF9kZXByZWNhdGVkLmMKPiA+PiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9h
cm12OF9kZXByZWNhdGVkLmMKPiA+PiBAQCAtNjMwLDcgKzYzMCw3IEBAIHN0YXRpYyBpbnQgX19p
bml0IGFybXY4X2RlcHJlY2F0ZWRfaW5pdCh2b2lkKQo+ID4+ICAJCXJlZ2lzdGVyX2luc25fZW11
bGF0aW9uKCZjcDE1X2JhcnJpZXJfb3BzKTsKPiA+PiAgCj4gPj4gIAlpZiAoSVNfRU5BQkxFRChD
T05GSUdfU0VURU5EX0VNVUxBVElPTikpIHsKPiA+PiAtCQlpZihzeXN0ZW1fc3VwcG9ydHNfbWl4
ZWRfZW5kaWFuX2VsMCgpKQo+ID4+ICsJCWlmIChzeXN0ZW1fc3VwcG9ydHNfbWl4ZWRfZW5kaWFu
X2VsMCgpKQo+ID4+ICAJCQlyZWdpc3Rlcl9pbnNuX2VtdWxhdGlvbigmc2V0ZW5kX29wcyk7Cj4g
Pj4gIAkJZWxzZQo+ID4+ICAJCQlwcl9pbmZvKCJzZXRlbmQgaW5zdHJ1Y3Rpb24gZW11bGF0aW9u
IGlzIG5vdCBzdXBwb3J0ZWQgb24gdGhpcyBzeXN0ZW1cbiIpOwo+ID4KPiA+KENhdGFsaW46IEkn
bSBqdXN0IGFja2luZyB0aGVzZSB0cml2aWFsIHR5cG8vc3R5bGUgZml4ZXMgdG8gZ2V0IHRoZW0g
b3V0Cj4gPm9mIG15IGluYm94OyBkbyB3aGF0ZXZlciB5b3UgbGlrZSB3aXRoIHRoZW0gOykKPiA+
Cj4gPkFja2VkLWJ5OiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPgo+ID4KPiA+V2lsbAo+
IAo+IFNob3VsZG4ndCB5b3UgaGF2ZSBDYyB0cml2aWFsPHRyaXZpYWxAa2VybmVsLm9yZz4/Cj4g
QXNrZWQtYnk6IFdhbmcgV2VuaHUgPHdlbmh1LndhbmdAdml2by5jb20+CgpJIHF1ZXVlZCB0aGVt
IGFscmVhZHksIHRoZXkgYXJlIGluIGFybTY0IGZvci1uZXh0L2NvcmUuIEluIHRoZSBmdXR1cmUs
Cml0IHRoZXkgY291bGQgYXMgd2VsbCBnbyBpbiB2aWEgdHJpdmlhbEBrZXJuZWwub3JnIChhcyBs
b25nIGFzIHRoZXJlIGFyZQpubyBzZXJpb3VzIGNvbmZsaWN0cykuCgotLSAKQ2F0YWxpbgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
