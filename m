Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791431B43ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/TaDY3HIvxPALm4+atOD0bDK9G5qGwOaFAoW4wBe2s=; b=WlvDGLQEAvddjN
	viY21Iv0+cAvX3qDQg2NBdBtXIph74a3vNFJ/cwxtD6n/M1Q6dIDdHFlp92IXZEAkjMXodIjv1gab
	kM/Qoml/yxGrjSfB4SSm6Dg4jvINzX+scTYHi0lf/urVSRs5QcoxvHZ+cnaQAupFZumh6VU1Ky8MO
	Lo61E2XzjeEFRfV0RCTU5ed2mWSxnLuvLgOkaE+TF5MMwUELu+4LkZxfDwHQ60XPTf0gK52wIOtDC
	nCLdNL51woEso/I3Jvayi0+GQUA4B1HglrsiJGoD9kXkQU1vI5obfFXipXPWsQ94EpATvyTkV44ec
	5PGtt2HY/NJGOgSsP2ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRE7v-00074a-Oa; Wed, 22 Apr 2020 12:05:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRE7L-0006x5-47
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 12:04:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B20331B;
 Wed, 22 Apr 2020 05:04:38 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 606A53F6CF;
 Wed, 22 Apr 2020 05:04:38 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 048DD682F37; Wed, 22 Apr 2020 13:04:37 +0100 (BST)
Date: Wed, 22 Apr 2020 13:04:36 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 16/17] bus: vexpress-config: Support building as module
Message-ID: <20200422120436.GA364558@e110455-lin.cambridge.arm.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-17-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-17-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_050439_214705_5546DB8A 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMTI6MDg6MDlQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gRW5hYmxlIGJ1aWxkaW5nIHZleHByZXNzLWNvbmZpZyBkcml2ZXIgYXMgYSBtb2R1bGUu
Cj4gCj4gQ2M6IExpdml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgoKQWNrZWQtYnk6IExp
dml1IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgoKPiBDYzogU3VkZWVwIEhvbGxhIDxzdWRl
ZXAuaG9sbGFAYXJtLmNvbT4KPiBDYzogTG9yZW56byBQaWVyYWxpc2kgPGxvcmVuem8ucGllcmFs
aXNpQGFybS5jb20+Cj4gQ2M6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9y
Zz4KPiBDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4K
PiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IC0tLQo+ICBk
cml2ZXJzL2J1cy9LY29uZmlnICAgICAgICAgICB8ICAyICstCj4gIGRyaXZlcnMvYnVzL3ZleHBy
ZXNzLWNvbmZpZy5jIHwgMTAgKysrKy0tLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9idXMvS2Nv
bmZpZyBiL2RyaXZlcnMvYnVzL0tjb25maWcKPiBpbmRleCA2ZDRlNDQ5N2I1OWIuLmMxNjI2OGM1
MzgzMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2J1cy9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9i
dXMvS2NvbmZpZwo+IEBAIC0xODMsNyArMTgzLDcgQEAgY29uZmlnIFVOSVBISUVSX1NZU1RFTV9C
VVMKPiAgCSAgbmVlZGVkIHRvIHVzZSBvbi1ib2FyZCBkZXZpY2VzIGNvbm5lY3RlZCB0byBVbmlQ
aGllciBTb0NzLgo+ICAKPiAgY29uZmlnIFZFWFBSRVNTX0NPTkZJRwo+IC0JYm9vbCAiVmVyc2F0
aWxlIEV4cHJlc3MgY29uZmlndXJhdGlvbiBidXMiCj4gKwl0cmlzdGF0ZSAiVmVyc2F0aWxlIEV4
cHJlc3MgY29uZmlndXJhdGlvbiBidXMiCj4gIAlkZWZhdWx0IHkgaWYgQVJDSF9WRVhQUkVTUwo+
ICAJZGVwZW5kcyBvbiBBUk0gfHwgQVJNNjQKPiAgCWRlcGVuZHMgb24gT0YKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9idXMvdmV4cHJlc3MtY29uZmlnLmMgYi9kcml2ZXJzL2J1cy92ZXhwcmVzcy1j
b25maWcuYwo+IGluZGV4IGNhYTM1YTRjYjM0ZC4uYTU4YWMwYzhlMjgyIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvYnVzL3ZleHByZXNzLWNvbmZpZy5jCj4gKysrIGIvZHJpdmVycy9idXMvdmV4cHJl
c3MtY29uZmlnLmMKPiBAQCAtNyw2ICs3LDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2Vyci5oPgo+
ICAjaW5jbHVkZSA8bGludXgvaW5pdC5oPgo+ICAjaW5jbHVkZSA8bGludXgvaW8uaD4KPiArI2lu
Y2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvb2YuaD4KPiAgI2luY2x1
ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNl
Lmg+Cj4gQEAgLTQwNywxNSArNDA4LDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlX2lkIHZleHByZXNzX3N5c2NmZ19pZF90YWJsZVtdID0gewo+ICAJeyAidmV4cHJlc3Mt
c3lzY2ZnIiwgfSwKPiAgCXt9LAo+ICB9Owo+ICtNT0RVTEVfREVWSUNFX1RBQkxFKHBsYXRmb3Jt
LCB2ZXhwcmVzc19zeXNjZmdfaWRfdGFibGUpOwo+ICAKPiAgc3RhdGljIHN0cnVjdCBwbGF0Zm9y
bV9kcml2ZXIgdmV4cHJlc3Nfc3lzY2ZnX2RyaXZlciA9IHsKPiAgCS5kcml2ZXIubmFtZSA9ICJ2
ZXhwcmVzcy1zeXNjZmciLAo+ICAJLmlkX3RhYmxlID0gdmV4cHJlc3Nfc3lzY2ZnX2lkX3RhYmxl
LAo+ICAJLnByb2JlID0gdmV4cHJlc3Nfc3lzY2ZnX3Byb2JlLAo+ICB9Owo+IC0KPiAtc3RhdGlj
IGludCBfX2luaXQgdmV4cHJlc3Nfc3lzY2ZnX2luaXQodm9pZCkKPiAtewo+IC0JcmV0dXJuIHBs
YXRmb3JtX2RyaXZlcl9yZWdpc3RlcigmdmV4cHJlc3Nfc3lzY2ZnX2RyaXZlcik7Cj4gLX0KPiAt
Y29yZV9pbml0Y2FsbCh2ZXhwcmVzc19zeXNjZmdfaW5pdCk7Cj4gK21vZHVsZV9wbGF0Zm9ybV9k
cml2ZXIodmV4cHJlc3Nfc3lzY2ZnX2RyaXZlcik7Cj4gK01PRFVMRV9MSUNFTlNFKCJHUEwgdjIi
KTsKPiAtLSAKPiAyLjIwLjEKPiAKCi0tIAo9PT09PT09PT09PT09PT09PT09PQp8IEkgd291bGQg
bGlrZSB0byB8CnwgZml4IHRoZSB3b3JsZCwgIHwKfCBidXQgdGhleSdyZSBub3QgfAp8IGdpdmlu
ZyBtZSB0aGUgICB8CiBcIHNvdXJjZSBjb2RlISAgLwogIC0tLS0tLS0tLS0tLS0tLQogICAgwq9c
Xyjjg4QpXy/CrwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
