Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761B21B43E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7CdQ4OciJoDC99GMc16KOQj3WUiXJOP5dgqCtY2xf8=; b=nwwPf3fqMTWyWj
	gP/miL1yhgiAfco2LhjFVekxCGnaghN1oVoBAcJP2yksb7MYY9fEMJg5RZQ9YwewQN4vqHovwN8vt
	vTgC6IqRfc5XQ1fwtq6HnD6P0Iv3SK0gaGXdciDzNvdlMYEmNCECgISyrhlGXYrLeEuAEItiCU0mp
	T0I71CUiFBEbRIZzRvl6BJXaLab1+oHQSTusrIf0OtJxXzgnC2AOowAi5I0b9LIbAAs85psCX5w5D
	bHKjNS/0B/EEly4tvKTDKro5f8znw+FszlncgfIFLfq+ntQQTrsPi4fgsLFkc/uLNh8sKgNhNyrHC
	/yHG3dR4XXVSRgYpPpvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRE7S-0006qQ-FL; Wed, 22 Apr 2020 12:04:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRE62-0005mR-02
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 12:03:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8746931B;
 Wed, 22 Apr 2020 05:03:17 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 685A03F6CF;
 Wed, 22 Apr 2020 05:03:17 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 22348682F37; Wed, 22 Apr 2020 13:03:16 +0100 (BST)
Date: Wed, 22 Apr 2020 13:03:16 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 15/17] vexpress: Move site master init to vexpress-config
 bus
Message-ID: <20200422120316.GZ364558@e110455-lin.cambridge.arm.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-16-robh@kernel.org>
 <158754906803.132238.5380277174069330915@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158754906803.132238.5380277174069330915@swboyd.mtv.corp.google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_050318_124003_3B7AF360 
X-CRM114-Status: GOOD (  12.07  )
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-pm@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBcHIgMjIsIDIwMjAgYXQgMDI6NTE6MDhBTSAtMDcwMCwgU3RlcGhlbiBCb3lkIHdy
b3RlOgo+IElzIHRoZSBzdWJqZWN0IHN1cHBvc2VkIHRvIHNheSAnc2V0IG1hc3RlcicgdnMuICdz
aXRlIG1hc3Rlcic/CgpGdW5uaWx5IGVub3VnaCwgdGhlIFZFeHByZXNzIGhhcyB0d28gInNpdGVz
IiAoZGF1Z2h0ZXJib2FyZCBzb2NrZXRzKSBhbmQgdGhpcyB3YXMKdXNlZCB0byBzZXQgd2hpY2gg
b25lIHdhcyB0aGUgbWFzdGVyLiBEaWRuJ3QgcmVhbGlzZWQgdGhlIHN1YmplY3QgbWlzbWF0Y2gg
dW50aWwKeW91IHBvaW50ZWQgb3V0LiA6KQoKQWNrZWQtYnk6IExpdml1IER1ZGF1IDxsaXZpdS5k
dWRhdUBhcm0uY29tPgoKCj4gCj4gUXVvdGluZyBSb2IgSGVycmluZyAoMjAyMC0wNC0xOSAxMDow
ODowOCkKPiA+IFRoZXJlJ3Mgb25seSBhIHNpbmdsZSBjYWxsZXIgb2YgdmV4cHJlc3NfY29uZmln
X3NldF9tYXN0ZXIoKSBmcm9tCj4gPiB2ZXhwcmVzcy1zeXNyZWcuYy4gTGV0J3MganVzdCBtYWtl
IHRoZSByZWdpc3RlcnMgbmVlZGVkIGF2YWlsYWJsZSB0bwo+ID4gdmV4cHJlc3MtY29uZmlnIGFu
ZCBtb3ZlIGFsbCB0aGUgY29kZSB0aGVyZS4gVGhlIHJlZ2lzdGVycyBuZWVkZWQgYXJlbid0Cj4g
PiB1c2VkIGFueXdoZXJlIGVsc2UgZWl0aGVyLiBXaXRoIHRoaXMsIHdlIGNhbiBnZXQgcmlkIG9m
IHRoZSBwcml2YXRlIEFQSQo+ID4gYmV0d2VlbiB0aGVzZSAyIGRyaXZlcnMuCj4gPiAKPiA+IENj
OiBMaXZpdSBEdWRhdSA8bGl2aXUuZHVkYXVAYXJtLmNvbT4KPiA+IENjOiBTdWRlZXAgSG9sbGEg
PHN1ZGVlcC5ob2xsYUBhcm0uY29tPgo+ID4gQ2M6IExvcmVuem8gUGllcmFsaXNpIDxsb3Jlbnpv
LnBpZXJhbGlzaUBhcm0uY29tPgo+ID4gQ2M6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpA
bGluYXJvLm9yZz4KPiA+IENjOiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+ID4g
Q2M6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgoKLS0gCj09PT09PT09
PT09PT09PT09PT09CnwgSSB3b3VsZCBsaWtlIHRvIHwKfCBmaXggdGhlIHdvcmxkLCAgfAp8IGJ1
dCB0aGV5J3JlIG5vdCB8CnwgZ2l2aW5nIG1lIHRoZSAgIHwKIFwgc291cmNlIGNvZGUhICAvCiAg
LS0tLS0tLS0tLS0tLS0tCiAgICDCr1xfKOODhClfL8KvCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
