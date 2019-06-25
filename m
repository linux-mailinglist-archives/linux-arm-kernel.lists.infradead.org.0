Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D567E5513B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGf+e5Nah9Xol6iUhj7L4sGudfUxqydlbNlyBgej8kU=; b=sr+MSW6V9xcluF
	z4n5agtrd0AAAKf3S+jqKSiTbMU4kXbLT5R7SkFPuTJnseCrfa8FMC9pkVFqiXvmQK9rEV41LHm9T
	Jm5J0PFUz4F5GvAWikYOrHA5ublpXh5uX5zw7DQg3YEz45tJMpxOxvQoCNPR/TQogrsn9I26rDKgX
	spzQTb/KdFKjkWwpoNMfaAuoXBQHEXSvlWcpM2Dl5RHkYPkaYUTtUAN8g8c8sAtqaD+GefZAYQ5nv
	YHJvT4PWrLRn0wZMFoNnWU3uEn9cpQ3r343vu6eIkLJGO8rWjQfRi2/6Seb/Gc/Ctq4xMcQ7XBBYu
	0iEokOZdaiEQptrPxaTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmAZ-0002u9-Hw; Tue, 25 Jun 2019 14:11:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmAO-0002tL-QS
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:11:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1B73F2B;
 Tue, 25 Jun 2019 07:11:24 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD24D3F718;
 Tue, 25 Jun 2019 07:11:22 -0700 (PDT)
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
To: Qian Cai <cai@lca.pw>
References: <1561464964.5154.63.camel@lca.pw>
 <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
 <1561467369.5154.67.camel@lca.pw>
 <00a78980-6b9c-5d5b-ed01-b28bb34be022@arm.com>
 <1561470705.5154.68.camel@lca.pw>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <5113362e-1256-6712-6ce8-9599b1806cf1@arm.com>
Date: Tue, 25 Jun 2019 15:11:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1561470705.5154.68.camel@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_071124_904537_9A9DFE3B 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: ndesaulniers@google.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 natechancellor@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUWlhbiwKCk9uIDI1LzA2LzIwMTkgMTQ6NTEsIFFpYW4gQ2FpIHdyb3RlOgo+IE9uIFR1ZSwg
MjAxOS0wNi0yNSBhdCAxNDo0MCArMDEwMCwgVmluY2Vuem8gRnJhc2Npbm8gd3JvdGU6Cj4+IE9u
IDI1LzA2LzIwMTkgMTM6NTYsIFFpYW4gQ2FpIHdyb3RlOgo+Pj4gT24gVHVlLCAyMDE5LTA2LTI1
IGF0IDEzOjQ3ICswMTAwLCBWaW5jZW56byBGcmFzY2lubyB3cm90ZToKPj4+PiBIaSBRaWFuLAo+
Pj4+Cj4+Pj4gT24gMjUvMDYvMjAxOSAxMzoxNiwgUWlhbiBDYWkgd3JvdGU6Cj4+Pj4+IFRoZSBs
aW51eC1uZXh0IGNvbW1pdCAiYXJtNjQ6IHZkc286IFN1YnN0aXR1dGUgZ2V0dGltZW9mZGF5KCkg
d2l0aCBDCj4+Pj4+IGltcGxlbWVudGF0aW9uIiBbMV0gYnJlYWtzIGNsYW5nIGJ1aWxkLgo+Pj4+
Pgo+Pj4+PiBlcnJvcjogaW52YWxpZCB2YWx1ZSAndGlueScgaW4gJy1tY29kZS1tb2RlbCB0aW55
Jwo+Pj4+PiBtYWtlWzFdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6Mjc5Ogo+Pj4+PiBh
cmNoL2FybTY0L2tlcm5lbC92ZHNvL3ZnZXR0aW1lb2ZkYXkub10gRXJyb3IgMQo+Pj4+PiBtYWtl
WzFdOiAqKiogV2FpdGluZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgo+Pj4+PiBtYWtlOiAqKiog
W2FyY2gvYXJtNjQvTWFrZWZpbGU6MTgwOiB2ZHNvX3ByZXBhcmVdIEVycm9yIDIKPj4+Pj4KPj4+
Pj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTEwMDk2NjMvCj4+Pj4+
Cj4+Pj4KPj4+PiBJIGFtIG5vdCBzdXJlIHdoYXQgZG9lcyBleGFjdGx5IGJyZWFrIGZyb20geW91
ciByZXBvcnQuIENvdWxkIHlvdSBwbGVhc2UKPj4+PiBwcm92aWRlCj4+Pj4gbW9yZSBkZXRhaWxz
Pwo+Pj4KPj4+IEhlcmUgaXMgdGhlIGNvbmZpZyB0byByZXByb2R1Y2UuCj4+Pgo+Pj4gaHR0cHM6
Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2NhaWxjYS9saW51eC1tbS9tYXN0ZXIvYXJtNjQu
Y29uZmlnCj4+Pgo+Pj4gIyBtYWtlIENDPWNsYW5nIC1qICQobnJfY3B1cykKPj4+Cj4+PiBJIGNh
biBnZXQgaXQgd29ya2luZyBhZ2FpbiBieSByZW1vdmluZyAiLW1jbW9kZWw9dGlueSIgaW4KPj4+
IGFyY2gvYXJtNjQva2VybmVsL3Zkc28vTWFrZWZpbGUKPj4+Cj4+Cj4+IFdpdGggeW91ciBkZWZj
b25maWcgSSBjYW4ndCBzdGlsbCByZXByb2R1Y2UgdGhlIHByb2JsZW0uIFdoaWNoIHZlcnNpb24g
b2YKPj4gY2xhbmcKPj4gYXJlIHlvdSB1c2luZz8KPiAKPiBDb21waWxlcjogY2xhbmcgdmVyc2lv
biA3LjAuMSAodGFncy9SRUxFQVNFXzcwMS9maW5hbCkKPiAKCkkgYW0gdXNpbmcgY2xhbmcgOC4w
LjAuIENvdWxkIHlvdSBwbGVhc2UgdHJ5IHdpdGggaXQgYW5kIHNlZSBpZiB0aGUgaXNzdWUgZ29l
cyBhd2F5PwoKVGhhbmtzLApWaW5jZW56bwoKPj4KPj4+Pgo+Pj4+IE9uIG15IGVudjoKPj4+Pgo+
Pj4+ICQgbWFrZSBtcnByb3BlciAmJiBtYWtlIGRlZmNvbmZpZyAmJiBtYWtlIENDPWNsYW5nIEhP
U1RDQz1jbGFuZyAtaiQobnByb2MpCj4+Pj4KPj4+PiAuLi4KPj4+Pgo+Pj4+IGFyY2gvYXJtNjQv
TWFrZWZpbGU6NTY6IENST1NTX0NPTVBJTEVfQ09NUEFUIGlzIGNsYW5nLCB0aGUgY29tcGF0IHZE
U08KPj4+PiB3aWxsCj4+Pj4gbm90Cj4+Pj4gYmUgYnVpbHQKPj4+Pgo+Pj4+IC4uLgo+Pj4+Cj4+
Pj4gwqAgTERTwqDCoMKgwqDCoGFyY2gvYXJtNjQva2VybmVsL3Zkc28vdmRzby5sZHMKPj4+PiDC
oCBBU8KgwqDCoMKgwqDCoGFyY2gvYXJtNjQva2VybmVsL3Zkc28vbm90ZS5vCj4+Pj4gwqAgQVPC
oMKgwqDCoMKgwqBhcmNoL2FybTY0L2tlcm5lbC92ZHNvL3NpZ3JldHVybi5vCj4+Pj4gwqAgQ0PC
oMKgwqDCoMKgwqBhcmNoL2FybTY0L2tlcm5lbC92ZHNvL3ZnZXR0aW1lb2ZkYXkubwo+Pj4+IMKg
IExEwqDCoMKgwqDCoMKgYXJjaC9hcm02NC9rZXJuZWwvdmRzby92ZHNvLnNvLmRiZwo+Pj4+IMKg
IFZEU09DSEsgYXJjaC9hcm02NC9rZXJuZWwvdmRzby92ZHNvLnNvLmRiZwo+Pj4+IMKgIFZEU09T
WU0gaW5jbHVkZS9nZW5lcmF0ZWQvdmRzby1vZmZzZXRzLmgKPj4+Pgo+Pj4+IC4uLgo+Pj4+Cj4+
Pj4gwqAgTETCoMKgwqDCoMKgwqB2bWxpbnV4Lm8KPj4+PiDCoCBNT0RQT1NUIHZtbGludXgubwo+
Pj4+IMKgIE1PRElORk8gbW9kdWxlcy5idWlsdGluLm1vZGluZm8KPj4+PiDCoCBLU1lNwqDCoMKg
wqAudG1wX2thbGxzeW1zMS5vCj4+Pj4gwqAgS1NZTcKgwqDCoMKgLnRtcF9rYWxsc3ltczIubwo+
Pj4+IMKgIExEwqDCoMKgwqDCoMKgdm1saW51eAo+Pj4+IMKgIFNPUlRFWMKgwqB2bWxpbnV4Cj4+
Pj4gwqAgU1lTTUFQwqDCoFN5c3RlbS5tYXAKPj4+PiDCoCBCdWlsZGluZyBtb2R1bGVzLCBzdGFn
ZSAyLgo+Pj4+IMKgIE9CSkNPUFkgYXJjaC9hcm02NC9ib290L0ltYWdlCj4+Pj4gwqAgTU9EUE9T
VCA0ODMgbW9kdWxlcwo+Pj4+Cj4+Cj4+CgotLSAKUmVnYXJkcywKVmluY2Vuem8KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
