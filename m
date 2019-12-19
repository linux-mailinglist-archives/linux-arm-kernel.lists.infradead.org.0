Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24401125A51
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 05:31:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCcG8URZOVbQWAn3Lm6SDAciG5RNoKDvyzExObF/GNo=; b=lLJ8l5nb7hfZGD
	WtPv08bQz1uL/fxJcz9ake25XVIENF+mbw/H0+dHoT0a4BFAclCGWexLzKlp1N/1zN+vCeCR8pP2J
	oB9smdHRzc2xkKN1DsHtDn/H/cvdfgPOSwjbLdOgPZHdAIbjBy4LhKs4Qtgrqh5rQNH9hBphIlHjg
	l//9nzLNc5B9pKw9EmdkM0YRx5MDQau7xL6BXVIF9luhiFv3a5KdbI8bTYRAfD25Mofcm4JUXvK/q
	IrrprjZJJg964YPjoOlN3f5Vi08wFzU0PURU1hCvjJRhPd8gguwI1PEq1NiqxlNIV+zokSCZfY/rz
	pXBV6em3S/2Hh4yc0n4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihnT0-0007UT-Cj; Thu, 19 Dec 2019 04:31:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihnSs-0007Tj-VN
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 04:31:09 +0000
Received: from rorschach.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A11B2082E;
 Thu, 19 Dec 2019 04:31:04 +0000 (UTC)
Date: Wed, 18 Dec 2019 23:31:01 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: "ftrace: Rework event_create_dir()" triggers boot error messages
Message-ID: <20191218233101.73044ce3@rorschach.local.home>
In-Reply-To: <0FA8C6E3-D9F5-416D-A1B0-5E4CD583A101@lca.pw>
References: <0FA8C6E3-D9F5-416D-A1B0-5E4CD583A101@lca.pw>
X-Mailer: Claws Mail 3.17.4git76 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_203107_048735_6867A6DC 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux@googlegroups.com, Catalin Marinas <catalin.marinas@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxOCBEZWMgMjAxOSAyMjo1ODoyMyAtMDUwMApRaWFuIENhaSA8Y2FpQGxjYS5wdz4g
d3JvdGU6Cgo+IFRoZSBsaW51eC1uZXh0IGNvbW1pdCAiZnRyYWNlOiBSZXdvcmsgZXZlbnRfY3Jl
YXRlX2Rpcigp4oCdIFsxXSB0cmlnZ2VycyBib290IHdhcm5pbmdzCj4gZm9yIENsYW5nLWJ1aWxk
IChDbGFuZyB2ZXJzaW9uIDguMC4xKSBrZXJuZWxzIChyZXByb2R1Y2VkIG9uIGJvdGggYXJtNjQg
YW5kIHBvd2VycGMpLgo+IFJldmVydGVkIGl0ICh3aXRoIHRyaXZpYWwgY29uZmxpY3QgZml4ZXMp
IG9uIHRoZSB0b3Agb2YgdG9kYXnigJlzIGxpbnV4LW5leHQgZml4ZWQgdGhlIGlzc3VlLgo+IAo+
IGNvbmZpZ3M6Cj4gaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2NhaWxjYS9saW51
eC1tbS9tYXN0ZXIvYXJtNjQuY29uZmlnCj4gaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQu
Y29tL2NhaWxjYS9saW51eC1tbS9tYXN0ZXIvcG93ZXJwYy5jb25maWcKPiAKPiBbMV0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDE5MTExMTEzMjQ1OC4zNDI5Nzk5MTRAaW5mcmFkZWFk
Lm9yZy8KPiAKPiBbICAxMTUuNzk5MzI3XVsgICAgVDFdIFJlZ2lzdGVyZWQgZWZpdmFycyBvcGVy
YXRpb25zCj4gWyAgMTE1Ljg0OTc3MF1bICAgIFQxXSBjbG9ja3NvdXJjZTogU3dpdGNoZWQgdG8g
Y2xvY2tzb3VyY2UgYXJjaF9zeXNfY291bnRlcgo+IFsgIDExNS45MDExNDVdWyAgICBUMV0gQ291
bGQgbm90IGluaXRpYWxpemUgdHJhY2UgcG9pbnQgZXZlbnRzL3N5c19lbnRlcl9ydF9zaWdyZXR1
cm4KPiBbICAxMTUuOTA4ODU0XVsgICAgVDFdIENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZv
ciBldmVudCBzeXNfZW50ZXJfcnRfc2lncmV0dXJuCj4gWyAgMTE1Ljk5ODk0OV1bICAgIFQxXSBD
b3VsZCBub3QgaW5pdGlhbGl6ZSB0cmFjZSBwb2ludCBldmVudHMvc3lzX2VudGVyX3Jlc3RhcnRf
c3lzY2FsbAo+IFsgIDExNi4wMDY4MDJdWyAgICBUMV0gQ291bGQgbm90IGNyZWF0ZSBkaXJlY3Rv
cnkgZm9yIGV2ZW50IHN5c19lbnRlcl9yZXN0YXJ0X3N5c2NhbGwKPiBbICAxMTYuMDYyNzAyXVsg
ICAgVDFdIENvdWxkIG5vdCBpbml0aWFsaXplIHRyYWNlIHBvaW50IGV2ZW50cy9zeXNfZW50ZXJf
Z2V0cGlkCj4gWyAgMTE2LjA2OTgyOF1bICAgIFQxXSBDb3VsZCBub3QgY3JlYXRlIGRpcmVjdG9y
eSBmb3IgZXZlbnQgc3lzX2VudGVyX2dldHBpZAo+IFsgIDExNi4wNzgwNThdWyAgICBUMV0gQ291
bGQgbm90IGluaXRpYWxpemUgdHJhY2UgcG9pbnQgZXZlbnRzL3N5c19lbnRlcl9nZXR0aWQKPiBb
ICAxMTYuMDg1MTgxXVsgICAgVDFdIENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZvciBldmVu
dCBzeXNfZW50ZXJfZ2V0dGlkCj4gWyAgMTE2LjA5MzQwNV1bICAgIFQxXSBDb3VsZCBub3QgaW5p
dGlhbGl6ZSB0cmFjZSBwb2ludCBldmVudHMvc3lzX2VudGVyX2dldHBwaWQKPiBbICAxMTYuMTAw
NjEyXVsgICAgVDFdIENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZvciBldmVudCBzeXNfZW50
ZXJfZ2V0cHBpZAo+IFsgIDExNi4xMDg5ODldWyAgICBUMV0gQ291bGQgbm90IGluaXRpYWxpemUg
dHJhY2UgcG9pbnQgZXZlbnRzL3N5c19lbnRlcl9nZXR1aWQKPiBbICAxMTYuMTE2MDU4XVsgICAg
VDFdIENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZvciBldmVudCBzeXNfZW50ZXJfZ2V0dWlk
Cj4gWyAgMTE2LjEyNDI1MF1bICAgIFQxXSBDb3VsZCBub3QgaW5pdGlhbGl6ZSB0cmFjZSBwb2lu
dCBldmVudHMvc3lzX2VudGVyX2dldGV1aWQKPiBbICAxMTYuMTMxNDU3XVsgICAgVDFdIENvdWxk
IG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZvciBldmVudCBzeXNfZW50ZXJfZ2V0ZXVpZAo+IFsgIDEx
Ni4xMzk4NDBdWyAgICBUMV0gQ291bGQgbm90IGluaXRpYWxpemUgdHJhY2UgcG9pbnQgZXZlbnRz
L3N5c19lbnRlcl9nZXRnaWQKPiBbICAxMTYuMTQ2OTA4XVsgICAgVDFdIENvdWxkIG5vdCBjcmVh
dGUgZGlyZWN0b3J5IGZvciBldmVudCBzeXNfZW50ZXJfZ2V0Z2lkCj4gWyAgMTE2LjE1NTE2M11b
ICAgIFQxXSBDb3VsZCBub3QgaW5pdGlhbGl6ZSB0cmFjZSBwb2ludCBldmVudHMvc3lzX2VudGVy
X2dldGVnaWQKPiBbICAxMTYuMTYyMzcwXVsgICAgVDFdIENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0
b3J5IGZvciBldmVudCBzeXNfZW50ZXJfZ2V0ZWdpZAo+IFsgIDExNi4xNzgwMTVdWyAgICBUMV0g
Q291bGQgbm90IGluaXRpYWxpemUgdHJhY2UgcG9pbnQgZXZlbnRzL3N5c19lbnRlcl9zZXRzaWQK
PiBbICAxMTYuMTg1MTM4XVsgICAgVDFdIENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZvciBl
dmVudCBzeXNfZW50ZXJfc2V0c2lkCj4gWyAgMTE2LjI2OTMwN11bICAgIFQxXSBDb3VsZCBub3Qg
aW5pdGlhbGl6ZSB0cmFjZSBwb2ludCBldmVudHMvc3lzX2VudGVyX3NjaGVkX3lpZWxkCj4gWyAg
MTE2LjI3NjgxMV1bICAgIFQxXSBDb3VsZCBub3QgY3JlYXRlIGRpcmVjdG9yeSBmb3IgZXZlbnQg
c3lzX2VudGVyX3NjaGVkX3lpZWxkCj4gWyAgMTE2LjUyNzY1Ml1bICAgIFQxXSBDb3VsZCBub3Qg
aW5pdGlhbGl6ZSB0cmFjZSBwb2ludCBldmVudHMvc3lzX2VudGVyX211bmxvY2thbGwKPiBbICAx
MTYuNTM1MTI2XVsgICAgVDFdIENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZvciBldmVudCBz
eXNfZW50ZXJfbXVubG9ja2FsbAo+IFsgIDExNi42MjIwOTZdWyAgICBUMV0gQ291bGQgbm90IGlu
aXRpYWxpemUgdHJhY2UgcG9pbnQgZXZlbnRzL3N5c19lbnRlcl92aGFuZ3VwCj4gWyAgMTE2LjYy
OTMwN11bICAgIFQxXSBDb3VsZCBub3QgY3JlYXRlIGRpcmVjdG9yeSBmb3IgZXZlbnQgc3lzX2Vu
dGVyX3ZoYW5ndXAKPiBbICAxMTYuNzgzODY3XVsgICAgVDFdIENvdWxkIG5vdCBpbml0aWFsaXpl
IHRyYWNlIHBvaW50IGV2ZW50cy9zeXNfZW50ZXJfc3luYwo+IFsgIDExNi43OTA4MTldWyAgICBU
MV0gQ291bGQgbm90IGNyZWF0ZSBkaXJlY3RvcnkgZm9yIGV2ZW50IHN5c19lbnRlcl9zeW5jCj4g
WyAgMTE3LjcyMzQwMl1bICAgIFQxXSBwbnA6IFBuUCBBQ1BJIGluaXQKCkkgbm90aWNlZCB0aGF0
IGFsbCBvZiB0aGUgYWJvdmUgaGF2ZSB6ZXJvIHBhcmFtZXRlcnMuIERvZXMgdGhlCmZvbGxvd2lu
ZyBwYXRjaCBmaXggaXQ/Cgoobm90ZSwgSSBwcmVmZXIgInJldCIgYW5kICJpIiBvbiBkaWZmZXJl
bnQgbGluZXMgYW55d2F5KQoKLS0gU3RldmUKCmRpZmYgLS1naXQgYS9rZXJuZWwvdHJhY2UvdHJh
Y2Vfc3lzY2FsbHMuYyBiL2tlcm5lbC90cmFjZS90cmFjZV9zeXNjYWxscy5jCmluZGV4IDUzOTM1
MjU5ZjcwMS4uYWJiNzBjNzFmZTYwIDEwMDY0NAotLS0gYS9rZXJuZWwvdHJhY2UvdHJhY2Vfc3lz
Y2FsbHMuYworKysgYi9rZXJuZWwvdHJhY2UvdHJhY2Vfc3lzY2FsbHMuYwpAQCAtMjY5LDcgKzI2
OSw4IEBAIHN0YXRpYyBpbnQgX19pbml0IHN5c2NhbGxfZW50ZXJfZGVmaW5lX2ZpZWxkcyhzdHJ1
Y3QgdHJhY2VfZXZlbnRfY2FsbCAqY2FsbCkKIAlzdHJ1Y3Qgc3lzY2FsbF90cmFjZV9lbnRlciB0
cmFjZTsKIAlzdHJ1Y3Qgc3lzY2FsbF9tZXRhZGF0YSAqbWV0YSA9IGNhbGwtPmRhdGE7CiAJaW50
IG9mZnNldCA9IG9mZnNldG9mKHR5cGVvZih0cmFjZSksIGFyZ3MpOwotCWludCByZXQsIGk7CisJ
aW50IHJldCA9IDA7CisJaW50IGk7CiAKIAlmb3IgKGkgPSAwOyBpIDwgbWV0YS0+bmJfYXJnczsg
aSsrKSB7CiAJCXJldCA9IHRyYWNlX2RlZmluZV9maWVsZChjYWxsLCBtZXRhLT50eXBlc1tpXSwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
