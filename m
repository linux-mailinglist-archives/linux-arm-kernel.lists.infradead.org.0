Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9947C1D7A4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8nW+BFa5jVfaSwb96YeQz2yQgDgeLs6mIYF12dsifPY=; b=lSLOVuBICkKLou
	U6X7vagIis8r4lxsCa1NKGTlz8QO8/NpK2KKQP7Hj24EbEpe23JzRSEjryFs8VTp7ncbcdLzJ0eKT
	dggt0GCjp4N7znoKn8u11Xz63W7nyXp39lzg6ySpXJUUZep1FSXofFKjxE/jgA2wNa7/EfntacBku
	t9kAqoOYwzv1f7wz99YWEwb3ecYQDpux81rBdcNwfBs9FYt3ZWt1Z9keQ9+pOM7sZWI5ptv8fWk9N
	2lkozSSBCa9UPGoe45Ta2dFNR0nnZZ0fDY6i5fN6khUCXDXJzPTWbg8D6D0aaoKi9kQ+paFoVvJWE
	0Z0jB/bIyAsHhkIkjXKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jag7Y-0001h3-GT; Mon, 18 May 2020 13:47:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jag7P-0001gR-Hk
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 13:47:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4249220657;
 Mon, 18 May 2020 13:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589809667;
 bh=OWTjpnAZkv7sUXgqDZ9dbdDlTjjTUSLdc+5YI8H9+UE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sf1QAiTFSvJXJkMn5jRwradWooQaW1xX69MhjeMoAyGi/OaRVGC511vMbFHgmeTuw
 F1bu8RCpTz/H2b+ugOc/MlFVZ8XJ/Tubkt3ccgsnPoG1bUU2Qa5aJQDrGzn4dj4Oh6
 qQYG9kbTE01nA0am8NMbYygdIry9SQzDoXJqfYbo=
Date: Mon, 18 May 2020 14:47:43 +0100
From: Will Deacon <will@kernel.org>
To: =?utf-8?B?546L56iL5Yia?= <wangchenggang@vivo.com>
Subject: Re: [PATCH] arch/arm64: Enlarge arm64 command line length to 4096
 bytes
Message-ID: <20200518134742.GH32394@willie-the-truck>
References: <00fc01d62d1a$35445a80$9fcd0f80$@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00fc01d62d1a$35445a80$9fcd0f80$@vivo.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_064747_607992_C8AC561F 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: 'Catalin Marinas' <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@vivo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMTgsIDIwMjAgYXQgMDk6NDI6NDNQTSArMDgwMCwg546L56iL5YiaIHdyb3Rl
Ogo+IE5vdyBhbmRyb2lkIHVzZSBtYW55IGxvbmcgY29tbWFuZCBsaW5lLCBhbmQgb2VtIG5lZWQg
YXBwZW5kIHNvbWUgY29tbWFuZAo+IGxpbmUgdG8gZGVidWcgYm9vdCwgc28gMjA0OCBieXRlcyBj
YW5ub3QgYWJsZSB0byBtZWV0IHRoZSByZXF1aXJlbWVudC4KPiBFbmxhcmdlIGFybTY0J3MgY29t
bWFuZCBsaW5lIGxlbmd0aCB0byA0MDk2IGJ5dGVzLgoKSSB0aG91Z2h0IGJvb3Rjb25maWcgd2Fz
IHN1cHBvc2VkIHRvIGZpeCB0aGlzIHNvcnQgb2YgdGhpbmc/CgpXaWxsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
