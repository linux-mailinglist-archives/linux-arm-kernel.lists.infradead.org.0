Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A321A17E56B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 18:10:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1s1k3vDTk9XNohufLIkebWG3M6oB/DVcnufzns5D3pk=; b=M5rEE7RNggMDYY
	aFGxpAhtxGhy0s1wqMAbGRF2FSXIe+mdTddvR5bYlUPOWeJknuCDsy4ATRl9PhrZErWOuNNQgEKCc
	tisviuGTr8TFUIVYk5UShmMdVNDWM7YVKxCDy5TijnLSYLE7XEr1HE6FGEeboy/n8Spm423EPk1SI
	VpoD96TYWp0nccUBH26GRijWmPkz3PlcpjYpKWa1aaZJKOmFrTyNJOIwfe7zDOzp6X0VgnKcLh4fY
	2a56ZPHhOASa3UtzSkCWiLZzeBuhRRbgH6+tJ1rhxuzLdwWq1RVh4mRLQRev4FMZUi+H7fLG3Db0n
	4UUkzv4dgstAYCSZl57Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLuy-0000Oi-1z; Mon, 09 Mar 2020 17:10:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLup-0008TV-4e
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 17:10:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73BE11FB;
 Mon,  9 Mar 2020 10:10:06 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B598E3F534; Mon,  9 Mar 2020 10:10:04 -0700 (PDT)
Date: Mon, 9 Mar 2020 17:10:02 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: =?utf-8?B?546L56iL5Yia?= <wangchenggang@vivo.com>
Subject: Re: [PATCH] arch/arm64: fix typo in a comment
Message-ID: <20200309171002.GD4124965@arrakis.emea.arm.com>
References: <000401d5f5e3$622aefa0$2680cee0$@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000401d5f5e3$622aefa0$2680cee0$@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_101007_250379_1EBE798D 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: 'Mark Rutland' <mark.rutland@arm.com>, trivial@kernel.org,
 'Marc Zyngier' <maz@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 'Thomas Gleixner' <tglx@linutronix.de>, 'Will Deacon' <will@kernel.org>,
 wenhu.wang@vivo.com, 'Allison Randal' <allison@lohutok.net>,
 'Andrew Murray' <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXIgMDksIDIwMjAgYXQgMDM6MjE6NDJQTSArMDgwMCwg546L56iL5YiaIHdyb3Rl
Ogo+IEZpeCB0eXBvIGluIGEgY29tbWVudCBpbiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2Vzci5o
Cj4gCj4gIlVuYWxsb2N0ZWQiIC0+ICJVbmFsbG9jYXRlZCIKPiAKPiBTaWduZWQtb2ZmLWJ5OiBD
aGVuZ2dhbmcgV2FuZyA8d2FuZ2NoZW5nZ2FuZ0B2aXZvLmNvbT4KClF1ZXVlZCBmb3IgNS43LiBU
aGFua3MuCgotLSAKQ2F0YWxpbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
