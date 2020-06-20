Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19441201EF1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 02:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/a//P/KvbGZ6b30OKSIrG0TTTl3dC57I4e0e4LSmSo=; b=YhNJfOlA6zWVN/
	i94xQyuF++LndQ0UVfauCnwt6Wp1Atllx49micw+rEXgiJIEPQSv3C3o2lklZ41CGW3W/93Af8/ju
	GqNP9eojVXT6D/NHwbpHwAxXKW19uTLEkuwGWO9lFL2FF6KZb3JAFKtjynDDwk8m4QO7MqnLho42k
	jEyqnJz5/hdGG+yZEOw2dlknCTGB+ynAUoaet16QN4yRlpUe1/e4A4O/ok4vP42HTwlqyhMDzQpUo
	bMYQWlLfGYK3+wFpR3zcN2t1c1yLflOVK9+6zXZGPo1O+kJDH4iX/AOiPAEjLI9fm3QmaSpevFIcc
	r5slnQgUOOX3IWn3AwSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmR27-0002iB-2u; Sat, 20 Jun 2020 00:06:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmR0S-0000Lp-2p
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 00:05:17 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D8CF22518;
 Sat, 20 Jun 2020 00:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592611511;
 bh=GI8fV3ck6UbHh7HbVvZOi0a6s6q6ZwAm099dVs0jquY=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=fKHtLF3eeSTCdVc+993SIaXt3We6MAs09e7HZsTtZ9nU7b4jBOF6sV8VH0pFiCmqt
 VEyeVricIbsix244QGNW1PjIfe2vdooSbN5N5w03JD+f00YGGFKnPx51TNjqrZ9BOO
 5w1M6hOlvdVcD0WX4q21gkhi0+hZKryg/FUvau1Q=
MIME-Version: 1.0
In-Reply-To: <20200615090231.2932696-7-noltari@gmail.com>
References: <20200615090231.2932696-1-noltari@gmail.com>
 <20200615090231.2932696-7-noltari@gmail.com>
Subject: Re: [PATCH 6/8] mips: bmips: add BCM6368 clock definitions
From: Stephen Boyd <sboyd@kernel.org>
To: bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com, julia.lawall@lip6.fr, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, lkp@intel.com, mturquette@baylibre.com, robh+dt@kernel.org, Álvaro Fernández Rojas <noltari@gmail.com>
Date: Fri, 19 Jun 2020 17:05:10 -0700
Message-ID: <159261151057.62212.7158601333584404318@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_170512_191578_CB22BBD1 
X-CRM114-Status: UNSURE (   5.22  )
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

UXVvdGluZyDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgKDIwMjAtMDYtMTUgMDI6MDI6MjkpCj4g
QWRkIGhlYWRlciB3aXRoIEJDTTYzNjggZGVmaW5pdGlvbnMgaW4gb3JkZXIgdG8gYmUgYWJsZSB0
byBpbmNsdWRlIGl0IGZyb20KPiBkZXZpY2UgdHJlZSBmaWxlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgo+IC0tLQoKQXBw
bGllZCB0byBjbGstbmV4dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
