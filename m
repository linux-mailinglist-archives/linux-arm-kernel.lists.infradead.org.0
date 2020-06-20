Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F149A201EE9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 02:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=The0lj3y7oZycOTyPklGbTsRlY8EWXUngk/W4H2dFIs=; b=ob7UASnOHmRrht
	k0iVCXrzx56M/uPfCSoaqKXz5OFWdRntMLJ0IzQVjP2C00tKBx7WkW90aD14QoW7GhcEhGkWbhOQn
	255wum/mtFwkOdp1P6+Qtsdd2cXt1XbF00Ej+g1EskiN172rmKyPmOEP10BAt/EJj/aEFEplhKkjj
	6fULERkzeqp+uFdQ0yI28/LHXEYOr70PWH5rnvyvUxQ5RiRWxSHgQZ05LPuYow7O64i73hJ5iUbyc
	w5IIQVVJTJF8qr2KrIakaLaDvB1tO4nYn2A2aM3ef4D8cESyC9LSxLvBNsMBC7qOg3OYIlb/ZSrAz
	r6xHEudQjVqfCfvBZMKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmQyl-0006yg-3e; Sat, 20 Jun 2020 00:03:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmQxm-0006a0-Be
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 00:02:27 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF33E22515;
 Sat, 20 Jun 2020 00:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592611346;
 bh=XyZ2oIBnqnsQYKhXG2SHn0zv+XQAZoBZJhzU+SkjXqA=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=CCmp6OPvlxv22owruWredq6fYLtYhfIQkcH7q//ULM64MChAVjXQTpTbta/4jBVob
 fuaWvKLs6y4c9XFPm+b2cOOhVNge4Sl4IHpe2sARThFbaOyj2d7lKPr1YVqLTxbWdI
 Vmeu8ygEB/NbqgBVoK+10UsU2501PWBE30r86r7k=
MIME-Version: 1.0
In-Reply-To: <20200610140858.207329-3-noltari@gmail.com>
References: <20200609113049.4035426-1-noltari@gmail.com>
 <20200610140858.207329-1-noltari@gmail.com>
 <20200610140858.207329-3-noltari@gmail.com>
Subject: Re: [PATCH v2 2/2] clk: bcm63xx-gate: add BCM6318 support
From: Stephen Boyd <sboyd@kernel.org>
To: bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org, f.fainelli@gmail.com, f4bug@amsat.org, jonas.gorski@gmail.com, julia.lawall@lip6.fr, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, lkp@intel.com, mturquette@baylibre.com, robh+dt@kernel.org, Álvaro Fernández Rojas <noltari@gmail.com>
Date: Fri, 19 Jun 2020 17:02:25 -0700
Message-ID: <159261134524.62212.13381820088145576740@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_170226_421101_D4CD0056 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Álvaro Fernández Rojas <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgKDIwMjAtMDYtMTAgMDc6MDg6NTgpCj4g
QWRkIHN1cHBvcnQgZm9yIHRoZSBnYXRlZCBjbG9jayBjb250cm9sbGVycyBmb3VuZCBvbiB0aGUg
QkNNNjMxOC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5v
bHRhcmlAZ21haWwuY29tPgo+IFJldmlld2VkLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5l
bGxpQGdtYWlsLmNvbT4KPiAtLS0KCkFwcGxpZWQgdG8gY2xrLW5leHQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
