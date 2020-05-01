Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811751C1B83
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 19:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEyprrcezWs6h5RXnlB6hyJh+TtK2/WVsykOVmWjZzg=; b=Sxvvr7KkSqayOi
	CXeO/maUgmtEIehAV5Hb7A5GK2jRSdiUAbrb8Ci8QW0BDww4bG6uWNt6PJz+cFceNHcKh6fXCLoBF
	2dHF/RCDjSSf8UU7VdmgXnha0R9tD4yK7nmjycAH5aw1q/EAH0zYqICHqLYAqtYNgdOd0DjHP8J/j
	nyhU8akxJf3EmZF7yIhs+xBYR+3RZ/7FdijV+5DLHx4+tzgioS9c8sHvpMm38z9vQt+BSbYejHcOG
	QGSOJ0iSst7EVAa7Ax6o/DFPfFaqw9SOFE1wKdFmDtX8Sem25KztID+18dYC4N9y59c2thwrcWmPR
	KBAJQXSW4flCX52cS+9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUZJb-00013n-19; Fri, 01 May 2020 17:19:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUZJC-0000uJ-Re
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 17:18:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D0F130E;
 Fri,  1 May 2020 10:18:42 -0700 (PDT)
Received: from bogus (unknown [10.37.12.80])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D60D43F305;
 Fri,  1 May 2020 10:18:38 -0700 (PDT)
Date: Fri, 1 May 2020 18:18:35 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 14/16] vexpress: Move setting master site to
 vexpress-config bus
Message-ID: <20200501171835.GL14018@bogus>
References: <20200429205825.10604-1-robh@kernel.org>
 <20200429205825.10604-15-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429205825.10604-15-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_101842_951205_8064DA51 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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

T24gV2VkLCBBcHIgMjksIDIwMjAgYXQgMDM6NTg6MjNQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gVGhlcmUncyBvbmx5IGEgc2luZ2xlIGNhbGxlciBvZiB2ZXhwcmVzc19jb25maWdfc2V0
X21hc3RlcigpIGZyb20KPiB2ZXhwcmVzcy1zeXNyZWcuYy4gTGV0J3MganVzdCBtYWtlIHRoZSBy
ZWdpc3RlcnMgbmVlZGVkIGF2YWlsYWJsZSB0bwo+IHZleHByZXNzLWNvbmZpZyBhbmQgbW92ZSBh
bGwgdGhlIGNvZGUgdGhlcmUuIFRoZSByZWdpc3RlcnMgbmVlZGVkIGFyZW4ndAo+IHVzZWQgYW55
d2hlcmUgZWxzZSBlaXRoZXIuIFdpdGggdGhpcywgd2UgY2FuIGdldCByaWQgb2YgdGhlIHByaXZh
dGUgQVBJCj4gYmV0d2VlbiB0aGVzZSAyIGRyaXZlcnMuCj4KPiBDYzogU3VkZWVwIEhvbGxhIDxz
dWRlZXAuaG9sbGFAYXJtLmNvbT4KClNvbWUgb2YgdGhlIG1hY3JvIGNoYW5nZXMgYmVsb3cgYXJl
IG5vdCBzbyBlYXN5IHRvIGZvbGxvdy9yZXZpZXcuClNpbmNlIG5vdGhpbmcgaXMgYnJva2VuLAoK
QWNrZWQtYnk6IFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhvbGxhQGFybS5jb20+Cgpmb3IgdGhpcyBh
bG9uZSDwn5iBLgoKLS0KUmVnYXJkcywKU3VkZWVwCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
