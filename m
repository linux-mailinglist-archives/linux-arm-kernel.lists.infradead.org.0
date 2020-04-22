Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F201B3DC1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGoDtbFLXckD7NECnQGXepJcjK82RwsF4UY6XOFCIVI=; b=ac1NhXmGa1a0PL
	TALycKpf0VyRc/qQTq+nRTpcXbVsqkhq02EKsjM+VhfRsnPEss1OsJg7pxDNbhZvU0ynHIBHmK75T
	LjVQAQm2hQq9I1jhXlSzdR6qtI7T/yC1nTSqGVIPaVGqDDKas5A6jDZeom8NuPKZtIccqH6Hl9Nel
	GrzaO7QxrpkMP9AZfCHUVuUjYsVp4ehOgDVfpXdTHMCFey+BoxmenI1MXX1DYfMJEgibv6YigGok/
	IUWuLkDhj0e9UDaTD6VimI+PJobNelPuS8RA34isuKSAypDtj6EP/c0R1tw0HogSP2qIwigHtTU/7
	PAJB2Hg+em7099RXfzaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCSb-0000qj-81; Wed, 22 Apr 2020 10:18:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCQy-00006F-A5
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:16:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F10431B;
 Wed, 22 Apr 2020 03:16:46 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1EE0F3F68F;
 Wed, 22 Apr 2020 03:16:46 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id CDEDF682F3E; Wed, 22 Apr 2020 11:16:44 +0100 (BST)
Date: Wed, 22 Apr 2020 11:16:44 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 02/17] arm64: vexpress: Don't select
 CONFIG_POWER_RESET_VEXPRESS
Message-ID: <20200422101644.GQ364558@e110455-lin.cambridge.arm.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-3-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-3-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_031648_409906_DB5AFDC5 
X-CRM114-Status: GOOD (  17.23  )
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

T24gU3VuLCBBcHIgMTksIDIwMjAgYXQgMTI6MDc6NTVQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gVGhlIFZFeHByZXNzIHBvd2VyLW9mZi9yZXNldCBkcml2ZXIgaXMgbm90IG5lZWRlZCBv
biA2NC1iaXQgcGxhdGZvcm1zIGFzCj4gUFNDSSBwb3dlci1vZmYgYW5kIHJlc2V0IGNhbiBiZSB1
c2VkIGluc3RlYWQuIFN0b3Agc2VsZWN0aW5nIGl0IHNvIGl0Cj4gY2FuIGJlIGRpc2FibGVkIGFu
ZCBub3QgYWx3YXlzIGJ1aWx0LWluLgo+IAo+IENjOiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4u
bWFyaW5hc0Bhcm0uY29tPgo+IENjOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPgo+IENj
OiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4KCkFja2VkLWJ5OiBMaXZpdSBEdWRh
dSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4KCj4gQ2M6IFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxh
QGFybS5jb20+Cj4gQ2M6IExvcmVuem8gUGllcmFsaXNpIDxsb3JlbnpvLnBpZXJhbGlzaUBhcm0u
Y29tPgo+IENjOiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Cj4gU2ln
bmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KPiAgYXJjaC9h
cm02NC9LY29uZmlnLnBsYXRmb3JtcyB8IDEgLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlv
bigtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L0tjb25maWcucGxhdGZvcm1zIGIvYXJj
aC9hcm02NC9LY29uZmlnLnBsYXRmb3Jtcwo+IGluZGV4IDU1ZDcwY2ZlMGY5ZS4uOWMwODRmOTk1
ZTBmIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvS2NvbmZpZy5wbGF0Zm9ybXMKPiArKysgYi9h
cmNoL2FybTY0L0tjb25maWcucGxhdGZvcm1zCj4gQEAgLTI3OCw3ICsyNzgsNiBAQCBjb25maWcg
QVJDSF9WRVhQUkVTUwo+ICAJc2VsZWN0IEdQSU9MSUIKPiAgCXNlbGVjdCBQTQo+ICAJc2VsZWN0
IFBNX0dFTkVSSUNfRE9NQUlOUwo+IC0Jc2VsZWN0IFBPV0VSX1JFU0VUX1ZFWFBSRVNTCj4gIAlz
ZWxlY3QgVkVYUFJFU1NfQ09ORklHCj4gIAloZWxwCj4gIAkgIFRoaXMgZW5hYmxlcyBzdXBwb3J0
IGZvciB0aGUgQVJNdjggc29mdHdhcmUgbW9kZWwgKFZlcnNhdGlsZQo+IC0tIAo+IDIuMjAuMQo+
IAoKLS0gCj09PT09PT09PT09PT09PT09PT09CnwgSSB3b3VsZCBsaWtlIHRvIHwKfCBmaXggdGhl
IHdvcmxkLCAgfAp8IGJ1dCB0aGV5J3JlIG5vdCB8CnwgZ2l2aW5nIG1lIHRoZSAgIHwKIFwgc291
cmNlIGNvZGUhICAvCiAgLS0tLS0tLS0tLS0tLS0tCiAgICDCr1xfKOODhClfL8KvCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
