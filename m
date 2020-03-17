Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AC8189168
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 23:29:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Jvb2A3FHyrq+hG8bpGUwkZsEChbtRXnUvJYrbUuaoE=; b=EdIXLfkC+OibE9
	VxLcJkoxwOKEcve1RqsO5gkejcaTvTFXJ56Cub7It3ZmBLi6elRuOR2oNFLKB0PKog5zoAH6fwdF6
	XaONeCW4SXI9ypf/S1dDamWhB2R4Ttp12qFjM5eGiZttmk2JHCwAOXn6kSmmUNdAi7h7qyeII67t3
	xWqvndMr8SqObjnvkSqQSdsm7NWGspFMBzAXE3JrLj9CJFLcO81rgv6rtQZxRFCIoRuV3J8qvoSlb
	KRumgkJPU74nZiVQYVYODCSrxHTWe7ZxRryvj9x4dyEza6tAu2B0YTZb7U915F/ZSh6HClXUGtxHb
	onJ7j3n6H7ceaS/YnpPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEKhz-0006d0-7K; Tue, 17 Mar 2020 22:29:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEKhg-0006VV-I7
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 22:28:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81733206EC;
 Tue, 17 Mar 2020 22:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584484132;
 bh=in+uEnnBEamuibMWNP0r+YUcEQtvIxVwoH3U6yBNP6Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Gi2J3WnXgD8B4p2Kyem8oTOZItr0QLzI9kbT+N65BetNa6uVg/24vYUtKEXcpFsG/
 IzRddKiKI8RgtGh1fZdl2MZL0RmKRRm7H5+eM5aKDhBgWEAoz8HEC24r8daJFM+lFj
 Hak5A/tkoSY7q3pw8u3maFQ8gtgZPvaw5ACgfCpk=
Date: Tue, 17 Mar 2020 22:28:47 +0000
From: Will Deacon <will@kernel.org>
To: =?utf-8?B?6Z+p56eR5omN?= <hankecai@vivo.com>
Subject: Re: [PATCH] arm64: fix spelling mistake "ca not" -> "cannot"
Message-ID: <20200317222846.GI20788@willie-the-truck>
References: <AOoADQCXCJCLyVN7qh-tYqrl.1.1584244879067.Hmail.hankecai@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AOoADQCXCJCLyVN7qh-tYqrl.1.1584244879067.Hmail.hankecai@vivo.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_152852_624599_6FCE7214 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: trivial@kernel.org, kernel@vivo.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, alexios.zavras@intel.com, broonie@kernel.org,
 allison@lohutok.net, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBNYXIgMTUsIDIwMjAgYXQgMTI6MDE6MTlQTSArMDgwMCwg6Z+p56eR5omNIHdyb3Rl
Ogo+IFRoZXJlIGlzIGEgc3BlbGxpbmcgbWlzdGFrZSBpbiB0aGUgY29tbWVudCwgRml4IGl0Lgo+
IAo+IFNpZ25lZC1vZmYtYnk6IGhhbmtlY2FpIDxoYW5rZWNhaUBiYmt0ZWwuY29tPgo+IC0tLQo+
ICBhcmNoL2FybTY0L2xpYi9zdHJjbXAuUyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvbGli
L3N0cmNtcC5TIGIvYXJjaC9hcm02NC9saWIvc3RyY21wLlMKPiBpbmRleCA0NzY3NTQwZDFiOTQu
LjRlNzk1NjY3MjZjOCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2xpYi9zdHJjbXAuUwo+ICsr
KyBiL2FyY2gvYXJtNjQvbGliL3N0cmNtcC5TCj4gQEAgLTE4Niw3ICsxODYsNyBAQCBDUFVfTEUo
IHJldglkYXRhMiwgZGF0YTIgKQo+ICAJKiBhcyBjYXJyeS1wcm9wYWdhdGlvbiBjYW4gY29ycnVw
dCB0aGUgdXBwZXIgYml0cyBpZiB0aGUgdHJhaWxpbmcKPiAgCSogYnl0ZXMgaW4gdGhlIHN0cmlu
ZyBjb250YWluIDB4MDEuCj4gIAkqIEhvd2V2ZXIsIGlmIHRoZXJlIGlzIG5vIE5VTCBieXRlIGlu
IHRoZSBkd29yZCwgd2UgY2FuIGdlbmVyYXRlCj4gLQkqIHRoZSByZXN1bHQgZGlyZWN0bHkuICBX
ZSBjYSBub3QganVzdCBzdWJ0cmFjdCB0aGUgYnl0ZXMgYXMgdGhlCj4gKwkqIHRoZSByZXN1bHQg
ZGlyZWN0bHkuICBXZSBjYW5ub3QganVzdCBzdWJ0cmFjdCB0aGUgYnl0ZXMgYXMgdGhlCj4gIAkq
IE1TQiBtaWdodCBiZSBzaWduaWZpY2FudC4KPiAgCSovCj4gIENQVV9CRSggY2JuegloYXNfbnVs
LCAxZiApCgpBY2tlZC1ieTogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KCldpbGwKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
