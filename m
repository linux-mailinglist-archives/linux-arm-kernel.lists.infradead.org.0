Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC6AA2B22
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 01:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3sZ408hr31O6vcBsClp/0PNCAt2lXrO/PRp55WkKS0=; b=CJmTNJwOAzuSXy
	D7YI9KiHitvgKX5GhbMFbx17b4jLeS9D+iQtgkKiVbwkeNWtNdypIiJlGqdHxB/F0m9XdNWTOlPh8
	tyyCABeZgvA6N5qVZlx1gaR3keWlQB/C1Pmzgy7fYlDKkiRk+qpdDWXEMggSX5PreLARLlbm1hxnR
	0XYLR5C2YdAwrXpNVO0fFNV3g8Ca0xTiIATSEnG+9sV6tY8V+hYV7iqWmlcLN7RWKJNsC6rkqCPy6
	u/1wdO14IudqkDH7fpa33POBNYEKq+xGyOKlEWg5UdGyGGhMrb3kgOlJi8KG+Nqj3ZBL3QSoAIbIW
	mi9Y/4ZRLr9WoL5lT6kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3U5j-0006Am-Ic; Thu, 29 Aug 2019 23:44:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3U5U-0006AT-3f
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 23:44:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 541B7337;
 Thu, 29 Aug 2019 16:44:19 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BE22B3F718;
 Thu, 29 Aug 2019 16:44:18 -0700 (PDT)
Date: Fri, 30 Aug 2019 00:44:17 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5 08/10] arm64: lse: Make ARM64_LSE_ATOMICS depend on
 JUMP_LABEL
Message-ID: <20190829234416.GO14582@e119886-lin.cambridge.arm.com>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-9-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829154834.26547-9-will@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_164420_192012_A7F6FF8A 
X-CRM114-Status: GOOD (  20.30  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com, natechancellor@gmail.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMDQ6NDg6MzJQTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gU3VwcG9ydCBmb3IgTFNFIGF0b21pYyBpbnN0cnVjdGlvbnMgKENPTkZJR19BUk02NF9M
U0VfQVRPTUlDUykgcmVsaWVzIG9uCj4gYSBzdGF0aWMga2V5IHRvIHNlbGVjdCBiZXR3ZWVuIHRo
ZSBsZWdhY3kgTEwvU0MgaW1wbGVtZW50YXRpb24gd2hpY2ggaXMKPiBhdmFpbGFibGUgb24gYWxs
IGFybTY0IENQVXMgYW5kIHRoZSBzdXBlci1kdXBlciBMU0UgaW1wbGVtZW50YXRpb24gd2hpY2gK
PiBpcyBhdmFpbGFibGUgb24gQ1BVcyBpbXBsZW1lbnRpbmcgdjguMSBhbmQgbGF0ZXIuCj4gCj4g
VW5mb3J0dW5hdGVseSwgd2hlbiBidWlsZGluZyBhIGtlcm5lbCB3aXRoIENPTkZJR19KVU1QX0xB
QkVMIGRpc2FibGVkCj4gKGUuZy4gYmVjYXVzZSB0aGUgdG9vbGNoYWluIGRvZXNuJ3Qgc3VwcG9y
dCAnYXNtIGdvdG8nKSwgdGhlIHN0YXRpYyBrZXkKPiBpbnNpZGUgdGhlIGF0b21pY3MgY29kZSB0
cmllcyB0byB1c2UgYXRvbWljcyBpdHNlbGYuIFRoaXMgcmVzdWx0cyBpbiBhCj4gbWVzcyBvZiBj
aXJjdWxhciBpbmNsdWRlcyBhbmQgYSBidWlsZCBmYWlsdXJlOgo+IAo+IEluIGZpbGUgaW5jbHVk
ZWQgZnJvbSAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vbHNlLmg6MTEsCj4gICAgICAgICAgICAg
ICAgICBmcm9tIC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9hdG9taWMuaDoxNiwKPiAgICAgICAg
ICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2F0b21pYy5oOjcsCj4gICAgICAgICAgICAg
ICAgICBmcm9tIC4vaW5jbHVkZS9hc20tZ2VuZXJpYy9iaXRvcHMvYXRvbWljLmg6NSwKPiAgICAg
ICAgICAgICAgICAgIGZyb20gLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2JpdG9wcy5oOjI2LAo+
ICAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYml0b3BzLmg6MTksCj4gICAg
ICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9rZXJuZWwuaDoxMiwKPiAgICAgICAg
ICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2FzbS1nZW5lcmljL2J1Zy5oOjE4LAo+ICAgICAgICAg
ICAgICAgICAgZnJvbSAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vYnVnLmg6MjYsCj4gICAgICAg
ICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9idWcuaDo1LAo+ICAgICAgICAgICAgICAg
ICAgZnJvbSAuL2luY2x1ZGUvbGludXgvcGFnZS1mbGFncy5oOjEwLAo+ICAgICAgICAgICAgICAg
ICAgZnJvbSBrZXJuZWwvYm91bmRzLmM6MTA6Cj4gLi9pbmNsdWRlL2xpbnV4L2p1bXBfbGFiZWwu
aDogSW4gZnVuY3Rpb24g4oCYc3RhdGljX2tleV9jb3VudOKAmToKPiAuL2luY2x1ZGUvbGludXgv
anVtcF9sYWJlbC5oOjI1NDo5OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rp
b24g4oCYYXRvbWljX3JlYWTigJkgWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRp
b25dCj4gICByZXR1cm4gYXRvbWljX3JlYWQoJmtleS0+ZW5hYmxlZCk7Cj4gICAgICAgICAgXn5+
fn5+fn5+fn4KPiAKPiBbIC4uLiBtb3JlIG9mIHRoZSBzYW1lIC4uLiBdCj4gCj4gU2luY2UgTFNF
IGF0b21pYyBpbnN0cnVjdGlvbnMgYXJlIG5vdCBjcml0aWNhbCB0byB0aGUgb3BlcmF0aW9uIG9m
IHRoZQo+IGtlcm5lbCwgbWFrZSB0aGVtIGRlcGVuZCBvbiBKVU1QX0xBQkVMIGF0IGNvbXBpbGUg
dGltZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPgo+
IC0tLQoKUmV2aWV3ZWQtYnk6IEFuZHJldyBNdXJyYXkgPGFuZHJldy5tdXJyYXlAYXJtLmNvbT4K
Cj4gIGFyY2gvYXJtNjQvS2NvbmZpZyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9LY29uZmlnIGIvYXJjaC9hcm02NC9L
Y29uZmlnCj4gaW5kZXggM2FkY2VjMDViMWY2Li4yNzQwNWFjOTQyMjggMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm02NC9LY29uZmlnCj4gKysrIGIvYXJjaC9hcm02NC9LY29uZmlnCj4gQEAgLTEyNjMs
NiArMTI2Myw3IEBAIGNvbmZpZyBBUk02NF9QQU4KPiAgCj4gIGNvbmZpZyBBUk02NF9MU0VfQVRP
TUlDUwo+ICAJYm9vbCAiQXRvbWljIGluc3RydWN0aW9ucyIKPiArCWRlcGVuZHMgb24gSlVNUF9M
QUJFTAo+ICAJZGVmYXVsdCB5Cj4gIAloZWxwCj4gIAkgIEFzIHBhcnQgb2YgdGhlIExhcmdlIFN5
c3RlbSBFeHRlbnNpb25zLCBBUk12OC4xIGludHJvZHVjZXMgbmV3Cj4gLS0gCj4gMi4xMS4wCj4g
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
