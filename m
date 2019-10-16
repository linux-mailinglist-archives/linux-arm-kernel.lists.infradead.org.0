Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 412D6D8C96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 11:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oq/MPc2hFkaCjaMEvZHxQYQgTvu8ZoX61h76lkwNo5o=; b=IYz9omSp3bKX8B
	mcxxr34zHybg78gTVyjAv4dsUaYkzpPok9hZ72MZ4eB7PQceon1Ffba8w88D4D0DRGMaRe5HjSLDn
	czMulnVIuelh6ioPqkYK7lwcwSlXF5ISS3K7/TeeRLPrFdyGt8ixPtDRvqbrncBc7nzLL8d9G0dN1
	aJmXrZj6+LDgxbeaWCfjG8O9bgJKbJlIbWFkbNOoN4TTdGAbjOLr/bwr+DFED05SSBFVeEPoe2Kwv
	NO844YyM1qjDB//JA4O2Mjdi9w7IojLnnIMw0oKJVYxcrUj5rb+mkgGLhs8f7h24yE604i8TnhOkZ
	pM2kE570yrLdfSzgS77A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKfiK-0007Y5-QC; Wed, 16 Oct 2019 09:35:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKfiB-0007XN-LD
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 09:35:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9CFA142F;
 Wed, 16 Oct 2019 02:35:17 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E8E053F6C4;
 Wed, 16 Oct 2019 02:35:14 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: entry.S: Do not preempt from IRQ before all
 cpufeatures are enabled
To: Will Deacon <will@kernel.org>
References: <20191015172544.186627-1-james.morse@arm.com>
 <20191015200755.aavtyhq56lewazah@willie-the-truck>
From: James Morse <james.morse@arm.com>
Message-ID: <e6d58ed6-2d5e-8c78-c824-d0d5abff8394@arm.com>
Date: Wed, 16 Oct 2019 10:35:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191015200755.aavtyhq56lewazah@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_023519_737607_89A4AE47 
X-CRM114-Status: GOOD (  16.67  )
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Julien Thierry <julien.thierry.kdev@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgV2lsbCwKCk9uIDE1LzEwLzIwMTkgMjE6MDcsIFdpbGwgRGVhY29uIHdyb3RlOgo+IFBhdGNo
IGxvb2tzIGdvb2QgYXBhcnQgZnJvbSBvbmUgdGhpbmcuLi4KPiAKPiBPbiBUdWUsIE9jdCAxNSwg
MjAxOSBhdCAwNjoyNTo0NFBNICswMTAwLCBKYW1lcyBNb3JzZSB3cm90ZToKPj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvbGludXgvc2NoZWQuaCBiL2luY2x1ZGUvbGludXgvc2NoZWQuaAo+PiBpbmRl
eCAyYzJlNTZiZDg5MTMuLjY3YTFkODY5ODFhOSAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9saW51
eC9zY2hlZC5oCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvc2NoZWQuaAo+PiBAQCAtMjIzLDYgKzIy
Myw3IEBAIGV4dGVybiBsb25nIHNjaGVkdWxlX3RpbWVvdXRfdW5pbnRlcnJ1cHRpYmxlKGxvbmcg
dGltZW91dCk7Cj4+ICBleHRlcm4gbG9uZyBzY2hlZHVsZV90aW1lb3V0X2lkbGUobG9uZyB0aW1l
b3V0KTsKPj4gIGFzbWxpbmthZ2Ugdm9pZCBzY2hlZHVsZSh2b2lkKTsKPj4gIGV4dGVybiB2b2lk
IHNjaGVkdWxlX3ByZWVtcHRfZGlzYWJsZWQodm9pZCk7Cj4+ICthc21saW5rYWdlIHZvaWQgcHJl
ZW1wdF9zY2hlZHVsZV9pcnEodm9pZCk7Cj4gCj4gSSBkb24ndCB1bmRlcnN0YW5kIHRoZSBuZWVk
IGZvciB0aGlzIGh1bmssIHNpbmNlIHdlJ3JlIG9ubHkgY2FsbGluZyB0aGUKPiBmdW5jdGlvbiBm
cm9tIEMgbm93LiBQbGVhc2UgY291bGQgeW91IGV4cGxhaW4/CgooQSBwcm90b3R5cGUgaXMgbmVl
ZGVkIHRvIG1ha2UgdGhlIHRoaW5nIGJ1aWxkWzBdLCBidXQpCgp5b3UgbWVhbiB0aGUgYXNtbGlu
a2FnZT8KClRoZSBkZWZpbml0aW9uIGluIGtlcm5lbC9zY2hlZC9jb3JlLmMgaGFzIGFzbWxpbmth
Z2UuIEl0IGRvZXMgbm90aGluZyBvbiBhcm02NCwgYnV0IGlmCmFub3RoZXIgYXJjaGl0ZWN0dXJl
IGRvZXMgYWRkIGEgQyBjYWxsLCBhbmQgdXNlcyBhc21saW5rYWdlIHRvIHRpbmtlciB3aXRoIHRo
ZSBjYWxsaW5nCmNvbnZlbnRpb24sIGl0IHdvdWxkIG5lZWQgdG8gYmUgaGVyZSBzbyBjYWxsZXJz
IHVzZSB0aGUgY29ycmVjdCBjb252ZW50aW9uLgoKZS5nLiBmb3IgWDg2XzMyIGRlZmluZXMgYXNt
bGlua2FnZSBpbiBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9saW5rYWdlLmg6CnwgI2RlZmluZSBhc21s
aW5rYWdlIENQUF9BU01MSU5LQUdFIF9fYXR0cmlidXRlX18oKHJlZ3Bhcm0oMCkpKQoKVGhpcyBm
b3JjZXMgYWxsIGFyZ3VtZW50cyBvdXQgb2YgcmVnaXN0ZXJzIGFuZCBvbnRvIHRoZSBzdGFjayBb
MV0uCgpXaXRob3V0IHRoaXMgYW5ub3RhdGlvbiwgYXNtLT5wcmVlbXB0X3NjaGVkdWxlX2lycSgp
IGNhbGxlcnMgd291bGQgcHV0IGFyZ3VtZW50cyBvbiB0aGUKc3RhY2ssIGJ1dCBDLT5wcmVlbXB0
X3NjaGVkdWxlX2lycSgpIGNhbGxlcnMgd291bGQgdXNlIHdoYXRldmVyIHRoZSBDLT5DIGNhbGxp
bmcKY29udmVudGlvbiBpcywgd2hpY2ggbWlnaHQgbm90IG1hdGNoLgoKc2NoZWR1bGUoKSBmdXJ0
aGVyIHVwIHRoZSBodW5rIGRvZXMgdGhlIHNhbWUuCgpJIGFncmVlIGl0IGRvZXNuJ3QgbWF0dGVy
IHRvZGF5LCBidXQgb21pdHRpbmcgaXQgd291bGQgYmUgYSBidWcgZm9yIHRoZSBuZXh0IHVzZXIg
dG8gZGVidWchCgoKVGhhbmtzLAoKSmFtZXMKClswXSBXaXRob3V0IHRoYXQgaHVuaywKLi4vYXJj
aC9hcm02NC9rZXJuZWwvcHJvY2Vzcy5jOiBJbiBmdW5jdGlvbiDigJhhcm02NF9wcmVlbXB0X3Nj
aGVkdWxlX2lyceKAmToKLi4vYXJjaC9hcm02NC9rZXJuZWwvcHJvY2Vzcy5jOjY1MDozOiBlcnJv
cjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24K4oCYcHJlZW1wdF9zY2hlZHVsZV9p
cnHigJk7IGRpZCB5b3UgbWVhbiDigJhwcmVlbXB0X3NjaGVkdWxl4oCZPwpbLVdlcnJvcj1pbXBs
aWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KICAgcHJlZW1wdF9zY2hlZHVsZV9pcnEoKTsKICAg
Xn5+fn5+fn5+fn5+fn5+fn5+fn4KICAgcHJlZW1wdF9zY2hlZHVsZQpjYzE6IHNvbWUgd2Fybmlu
Z3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKbWFrZVszXTogKioqIFsuLi9zY3JpcHRzL01ha2Vm
aWxlLmJ1aWxkOjI2NjogYXJjaC9hcm02NC9rZXJuZWwvcHJvY2Vzcy5vXSBFcnJvciAxCm1ha2Vb
M106ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlzaGVkIGpvYnMuLi4uCm1ha2VbMl06ICoqKiBbLi4v
c2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDk6IGFyY2gvYXJtNjQva2VybmVsXSBFcnJvciAyCm1h
a2VbMl06ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlzaGVkIGpvYnMuLi4uCm1ha2VbMV06ICoqKiBb
L2hvbWUvbW9yc2Uva2VybmVsL2xpbnV4L01ha2VmaWxlOjE2NDk6IGFyY2gvYXJtNjRdIEVycm9y
IDIKbWFrZVsxXTogKioqIFdhaXRpbmcgZm9yIHVuZmluaXNoZWQgam9icy4uLi4KbWFrZTogKioq
IFsuLi9NYWtlZmlsZToxNzk6IHN1Yi1tYWtlXSBFcnJvciAyCgpbMV0gaHR0cHM6Ly9nY2MuZ251
Lm9yZy9vbmxpbmVkb2NzL2djYy94ODYtRnVuY3Rpb24tQXR0cmlidXRlcy5odG1sCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
