Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73616201EE2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 02:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NeIkcVUoILeIbzusa7Gz5Mi5dmCgfh383ZEzg6DHjzs=; b=FmcVPVoOeYTTfm
	gj7kSwDKYjoPey998QKSKDPdznJX5odkh/T37+CcQcBXormlC7yjS/AzHXGa6dOiHUh+8B0I3OMI/
	tdo8ZuKHfX5g14hhdSI0YYAmq9SO/F146v20aMD5OhASN4wx0dhGahwzKRCA+bS87teY62RcRZHrb
	I9klPFin1HwjIyvmvTng7/NsFpOvKtsyC9XUpcFv+ycqXYSmm2kDrtyevvVcbpH4LJpXyY9JMgWh9
	OKAXMjCwjQe+kiALnJuDE5vQcnz8qK2JqX7ivlP7lWX3Eb8hkgWYHC6BLkjCLeSx6fa8LmhPkgxjn
	GthvtZ+4i+P8KiKJbl/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmQxQ-00065J-IJ; Sat, 20 Jun 2020 00:02:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmQxD-000650-Cl
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 00:01:52 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0269B22515;
 Sat, 20 Jun 2020 00:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592611311;
 bh=TcMQtlZjPSuvOU0cfr6GunB/AKmi7HFKExDGZTnbEhw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=1xIXON3IRWzlQdDQQJhaIxMwrmn5ryUl63qg416rGlHxhVznNvLQpPju3zrAGHbSH
 qHbj/0Rx9OAL+fZ22hxNCdqDx0bQkeFcEfiHOkSU67f7Z4zHNs2g/AFiGsnK5Gy5qm
 BT2noSCHI1iMstlJO+UVRJSm83S1vtoca1Xse77s=
MIME-Version: 1.0
In-Reply-To: <20200609110846.4029620-1-noltari@gmail.com>
References: <20200609110846.4029620-1-noltari@gmail.com>
Subject: Re: [PATCH] clk: bcm63xx-gate: fix last clock availability
From: Stephen Boyd <sboyd@kernel.org>
To: bcm-kernel-feedback-list@broadcom.com, f.fainelli@gmail.com, f4bug@amsat.org, jonas.gorski@gmail.com, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, lkp@intel.com, mturquette@baylibre.com, Álvaro Fernández Rojas <noltari@gmail.com>
Date: Fri, 19 Jun 2020 17:01:50 -0700
Message-ID: <159261131029.62212.17649482908889165627@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_170151_446151_4CA275A1 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
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

UXVvdGluZyDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgKDIwMjAtMDYtMDkgMDQ6MDg6NDYpCj4g
SW4gb3JkZXIgdG8gbWFrZSB0aGUgbGFzdCBjbG9jayBhdmFpbGFibGUsIG1heGJpdCBoYXMgdG8g
YmUgc2V0IHRvIHRoZQo+IGhpZ2hlc3QgYml0IHZhbHVlIHBsdXMgMS4KPiAKPiBGaXhlczogMWMw
OTk3NzljMWUyICgiY2xrOiBhZGQgQkNNNjNYWCBnYXRlZCBjbG9jayBjb250cm9sbGVyIGRyaXZl
ciIpCj4gU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdt
YWlsLmNvbT4KPiAtLS0KCkFwcGxpZWQgdG8gY2xrLW5leHQKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
