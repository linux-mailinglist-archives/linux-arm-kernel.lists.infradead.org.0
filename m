Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F9E2759D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 07:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b2pW3+NWLK0NdJJa/Gn1EnsPnqMhIrz6aMIRlAQ32cA=; b=sVhwGKCYeqbczn
	ySxUAARG9fkUxuIiw/HstzJ0uAeNAByK+EDTnm8OEyekkxxIInuletDjL4haQRqTRxqmCrVNuquuI
	4FB6O4hEdk9kXP51WgZXMoAmcFQEjTWZbrMuN5yk9gKbyl6Na4mKNYfx0uxLFRgV5YkxcEUM0hyPV
	F7S2sbHBsYimGw6gCqyWRmq9OfZAVePFg228x3Lbk4MGwP6DEqt+cbGQmkSX3MQtJ8YOGGO+sCMIp
	oNfmBSb7JSHG9p3BY91nylOrITQiqkS9DP8AUmuqLW1vkHVk9XQaahsKZ6w1A2FKDcJOMqfUYEK52
	cG+nLtZnGXVnVL1KCsKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTgRb-0002qI-7a; Thu, 23 May 2019 05:39:11 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTgRU-0002py-G9
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 05:39:06 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hTgRL-0000hH-M2; Thu, 23 May 2019 13:38:55 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hTgRF-0006oF-Lf; Thu, 23 May 2019 13:38:49 +0800
Date: Thu, 23 May 2019 13:38:49 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: Re: [PATCH] crypto: arm/sha512 - make function static
Message-ID: <20190523053849.u2rpdk5ddafrkcnx@gondor.apana.org.au>
References: <VI1PR07MB44324EFEF57062FCCA758358FD000@VI1PR07MB4432.eurprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR07MB44324EFEF57062FCCA758358FD000@VI1PR07MB4432.eurprd07.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_223904_681337_E35A86A6 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "open list:CRYPTO API" <linux-crypto@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMjIsIDIwMTkgYXQgMTA6MDc6MTRBTSArMDAwMCwgUGhpbGlwcGUgTWF6ZW5h
dWVyIHdyb3RlOgo+IEZ1bmN0aW9uIHNoYTUxMl9hcm1fZmluYWwoKSBpcyBvbmx5IHVzZWQgaW4g
dGhpcyBmaWxlLCB0aGVyZWZvcmUgc2hvdWxkCj4gYmUgc3RhdGljCj4gCj4gLi4vYXJjaC9hcm0v
Y3J5cHRvL3NoYTUxMi1nbHVlLmM6NDA6NTogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBl
IGZvciDigJhzaGE1MTJfYXJtX2ZpbmFs4oCZIFstV21pc3NpbmctcHJvdG90eXBlc10KPiAgaW50
IHNoYTUxMl9hcm1fZmluYWwoc3RydWN0IHNoYXNoX2Rlc2MgKmRlc2MsIHU4ICpvdXQpCj4gICAg
ICBefn5+fn5+fn5+fn5+fn5+Cj4gCj4gU2lnbmVkLW9mZi1ieTogUGhpbGlwcGUgTWF6ZW5hdWVy
IDxwaGlsaXBwZS5tYXplbmF1ZXJAb3V0bG9vay5kZT4KCkFuIGlkZW50aWNhbCBwYXRjaCBpcyBh
bHJlYWR5IGluIHRoZSBwYXRjaHdvcmsgcXVldWUuCgpUaGFua3MsCi0tIApFbWFpbDogSGVyYmVy
dCBYdSA8aGVyYmVydEBnb25kb3IuYXBhbmEub3JnLmF1PgpIb21lIFBhZ2U6IGh0dHA6Ly9nb25k
b3IuYXBhbmEub3JnLmF1L35oZXJiZXJ0LwpQR1AgS2V5OiBodHRwOi8vZ29uZG9yLmFwYW5hLm9y
Zy5hdS9+aGVyYmVydC9wdWJrZXkudHh0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
