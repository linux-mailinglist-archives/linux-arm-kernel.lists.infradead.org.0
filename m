Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A589B1B43F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTLPNQAj82SkTYnuLuPfUVtFZn1mqcJjw/ZDRs/XN9w=; b=QZVjQWGFEx2em7
	T0C5oRZfaYus6mpsLGhnyZCjQaQCDjn/ksjdWQMxPXIllZH2iNsy4Y0yO2le4AUGkuBMxPFBby0wV
	hS0OdxFMBRxWqYRW7Ekqw/LF0O+sXvT7mJEXgZ85OwCoyQAv3m10LpKSOMsFJumvzpFjQOlkV9ki/
	5bUzvugYXsqGYjWPgCwqzLmbHCiPzl2bEqcizmxVuDjayPR2awQYWwQtzBpvn5qqEkymw5RaHLssV
	kiVYtnrIcfyqUn+H0U7jmxH8lDXfMR71WJUECaInS95DJKWzkhXKUylUd308QoopJSf+LL3q2MziH
	oLKierGr9g5Ty8UxEF4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRE8E-0001Kz-Mh; Wed, 22 Apr 2020 12:05:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRE7t-0000Ln-2C
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 12:05:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4490131B;
 Wed, 22 Apr 2020 05:05:12 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 25E3E3F6CF;
 Wed, 22 Apr 2020 05:05:12 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id E5CFF682F3D; Wed, 22 Apr 2020 13:05:10 +0100 (BST)
Date: Wed, 22 Apr 2020 13:05:10 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 17/17] ARM: vexpress: Don't select VEXPRESS_CONFIG
Message-ID: <20200422120510.GB364558@e110455-lin.cambridge.arm.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-18-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-18-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_050513_207830_0E31E03B 
X-CRM114-Status: GOOD (  16.45  )
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

T24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMTI6MDg6MTBQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gQ09ORklHX1ZFWFBSRVNTX0NPTkZJRyBoYXMgJ2RlZmF1bHQgeSBpZiBBUkNIX1ZFWFBS
RVNTJywgc28gc2VsZWN0aW5nIGlzCj4gdW5uZWNlc3NhcnkuIFNlbGVjdGluZyBpdCBhbHNvIHBy
ZXZlbnRzIHNldHRpbmcgQ09ORklHX1ZFWFBSRVNTX0NPTkZJRwo+IHRvIGEgbW9kdWxlLgo+IAo+
IENjOiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4KCkFja2VkLWJ5OiBMaXZpdSBE
dWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4KCj4gQ2M6IFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhv
bGxhQGFybS5jb20+Cj4gQ2M6IExvcmVuem8gUGllcmFsaXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBh
cm0uY29tPgo+IENjOiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Cj4g
U2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiAgYXJj
aC9hcm0vbWFjaC12ZXhwcmVzcy9LY29uZmlnIHwgMSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRl
bGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtdmV4cHJlc3MvS2NvbmZp
ZyBiL2FyY2gvYXJtL21hY2gtdmV4cHJlc3MvS2NvbmZpZwo+IGluZGV4IDA2NWUxMjk5MTY2My4u
ODM5MWE1YjNjZDc4IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL21hY2gtdmV4cHJlc3MvS2NvbmZp
Zwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtdmV4cHJlc3MvS2NvbmZpZwo+IEBAIC0xOSw3ICsxOSw2
IEBAIG1lbnVjb25maWcgQVJDSF9WRVhQUkVTUwo+ICAJc2VsZWN0IFBPV0VSX1NVUFBMWQo+ICAJ
c2VsZWN0IFJFR1VMQVRPUiBpZiBNTUNfQVJNTU1DSQo+ICAJc2VsZWN0IFJFR1VMQVRPUl9GSVhF
RF9WT0xUQUdFIGlmIFJFR1VMQVRPUgo+IC0Jc2VsZWN0IFZFWFBSRVNTX0NPTkZJRwo+ICAJaGVs
cAo+ICAJICBUaGlzIG9wdGlvbiBlbmFibGVzIHN1cHBvcnQgZm9yIHN5c3RlbXMgdXNpbmcgQ29y
dGV4IHByb2Nlc3NvciBiYXNlZAo+ICAJICBBUk0gY29yZSBhbmQgbG9naWMgKEZQR0EpIHRpbGVz
IG9uIHRoZSBWZXJzYXRpbGUgRXhwcmVzcyBtb3RoZXJib2FyZCwKPiAtLSAKPiAyLjIwLjEKPiAK
Ci0tIAo9PT09PT09PT09PT09PT09PT09PQp8IEkgd291bGQgbGlrZSB0byB8CnwgZml4IHRoZSB3
b3JsZCwgIHwKfCBidXQgdGhleSdyZSBub3QgfAp8IGdpdmluZyBtZSB0aGUgICB8CiBcIHNvdXJj
ZSBjb2RlISAgLwogIC0tLS0tLS0tLS0tLS0tLQogICAgwq9cXyjjg4QpXy/CrwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
