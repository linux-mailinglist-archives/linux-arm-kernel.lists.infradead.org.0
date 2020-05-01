Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B43C61C1B50
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 19:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2f3VtT4Ki8tr6cBW27sWLNkoLoa/N5JvQg+HejtKMxs=; b=HVPZl9bcqF/KyS
	QKKEZn7etLAswRapzFsFrIhfA5NKl0fzTfnCUXHbv17QQd8ILobgxNri55qhunmlkZMWzMDDo/rUz
	65whoMuWCOBEZexx0mLqPq508j0da2P94UA3EdhIlwprtunzidqTnkZAwV2SCs9bizFACWyhenlq+
	nXyXxyJIYA0FxKPmm6y5VNafoeMA1zSSL2k6UdtHVZGtXguRXvDXypQ6EWXJulGbNp6Ejun4xt58V
	vH5Iw10sbd3bm/FBM7tk1bPlG3BWdr2I/tew7BKuDlf+wWE5C5Hpd9eUOlksLxqvDjaQAW3UNezaU
	17RoXVfV36tTfmG368nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUZBi-00050c-AO; Fri, 01 May 2020 17:10:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUZBb-0004zw-BS
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 17:10:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E3C930E;
 Fri,  1 May 2020 10:10:50 -0700 (PDT)
Received: from bogus (unknown [10.37.12.80])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AF703F305;
 Fri,  1 May 2020 10:10:46 -0700 (PDT)
Date: Fri, 1 May 2020 18:10:43 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 13/16] bus: vexpress-config: simplify config bus probing
Message-ID: <20200501171043.GK14018@bogus>
References: <20200429205825.10604-1-robh@kernel.org>
 <20200429205825.10604-14-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429205825.10604-14-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_101051_429867_9544BB79 
X-CRM114-Status: GOOD (  12.32  )
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
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBcHIgMjksIDIwMjAgYXQgMDM6NTg6MjJQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gVGhlIHZleHByZXNzLWNvbmZpZyBpbml0aWFsaXphdGlvbiBpcyBkZXBlbmRlbnQgb24g
dGhlIHZleHByZXNzLXN5c2NmZwo+IGRyaXZlciBwcm9iaW5nLiBBcyB2ZXhwcmVzcy1jb25maWcg
d2FzIG5vdCBhIGRyaXZlciwgZGVmZXJyZWQgcHJvYmUKPiBjb3VsZCBub3QgYmUgdXNlZCBhbmQg
aW5zdGVhZCBpbml0Y2FsbCBvcmRlcmluZyB3YXMgcmVsaWVkIHVwb24uIFRoaXMgaXMKPiBmcmFn
aWxlIGFuZCBkb2Vzbid0IHdvcmsgZm9yIG1vZHVsZXMuCj4gCj4gTGV0J3MgbW92ZSB0aGUgY29u
ZmlnIGJ1cyBpbml0IGludG8gdGhlIHZleHByZXNzLXN5c2NmZyBwcm9iZS4gVGhpcwo+IGVsaW1p
bmF0ZXMgdGhlIGluaXRjYWxsIG9yZGVyaW5nIHJlcXVpcmVtZW50IGFuZCB0aGUgbmVlZCB0byBj
cmVhdGUgYQo+IHN0cnVjdCBkZXZpY2UgYW5kIHRoZSAidmV4cHJlc3MtY29uZmlnIiBjbGFzcy4K
PiAKPiBDYzogU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJtLmNvbT4KClJldmlld2VkLWJ5
OiBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5ob2xsYUBhcm0uY29tPgoKVGhhbmtzIGEgbG90IGZvciBh
bGwgdGhlc2UgY2xlYW4gdXAuIEl0IHdhcyBhbHdheXMgY29uZnVzaW5nIHRvIHJlbWVtYmVyCnRo
ZXNlIG9yZGVyaW5nIGV2ZXJ5IHRpbWUgSSBsb29rZWQgYXQgdGhlIGNvZGUgYWZ0ZXIgZmV3IG1v
bnRocyBhcmUgeWVhcnMsCmJ1dCBuZXZlciBib3RoZXJlZCB0byBjbGVhbnVwIGFzIGl0IHdhcyAq
d29ya2luZyog8J+YgS4KCi0tIApSZWdhcmRzLApTdWRlZXAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
