Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738AB1235D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 22:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fqyeemRdcd22FV8BWRMBPsZThYo/87OrPKaQg2dL9zo=; b=G1hax0B4mcTXjW+wnzs8Ur2M+h
	vdObZ3UWvYbyPHx41gtlhzV1GLsuk9j5eOMpevIgZJvrrypZZWrWg0GCAnJAW50KLArMravj6Jr5Q
	V7HX3/LxFUTlVOo+k+XVFTV4mDTdvRPS5P7t6dP5Zc4UWZZoIrgAskE0x+UVwRgEsNr4DmFmktuh6
	TWrodO6lyWEzHSJNcXN4C+th1mRrK0VpWAmC5lYneRotNB5cWykm10fcVpeK28+JttgEyaqHpKI77
	pJDffAnDIatmnTA4zR5npGfRq4/M/zE6IHvhoix4Bb7FkBQkXWixLeKmHKanGj/mkpYgH1nJbKKQ7
	YaqoKanA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMIID-0005ts-RE; Thu, 02 May 2019 20:26:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMII6-0005tX-3L
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 20:26:51 +0000
Received: from localhost (unknown [104.132.0.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70D972087F;
 Thu,  2 May 2019 20:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556828809;
 bh=0XnqcGwJBCg41dURZJKTOPMAcp4I6JKxQgO0Rv9wjkk=;
 h=In-Reply-To:References:To:From:Subject:Date:From;
 b=nWjc87dWSpxYDu2Fm7lKKR4Astf19iZZrAHR+aJmF1nvCJyS9HCFTJ4XYm7Y+UGCm
 81gd0DICb4DpOnEaLTM3We1QKgehqNYLpPx20+g7HSzpoSgMu9xajsgDD/33rKRqRa
 m4l0P1INMswB2Ii+u4zRPgNddaUcuwcgqYFwPO4s=
MIME-Version: 1.0
In-Reply-To: <55a0abac1c2efc4921588ee87986da43af1eb35a.1556802190.git.agx@sigxcpu.org>
References: <55a0abac1c2efc4921588ee87986da43af1eb35a.1556802190.git.agx@sigxcpu.org>
To: Guido Günther <agx@sigxcpu.org>, Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>, Fabio Estevam <festevam@gmail.com>, Lucas Stach <l.stach@pengutronix.de>, Michael Turquette <mturquette@baylibre.com>, NXP Linux Team <linux-imx@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2] clk: imx8mq: Add dsi_ipg_div
Message-ID: <155682880863.200842.12323767949946866831@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Thu, 02 May 2019 13:26:48 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_132650_152298_463BB759 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyBHdWlkbyBHw7xudGhlciAoMjAxOS0wNS0wMiAwNjowNzozOCkKPiBJdCdzIGRlZmlu
ZWQgaW4gaW14OG1xLWNsb2NrLmggYnV0IHdhc24ndCBhc3NpZ25lZCB5ZXQuIEl0J3MgdXNlZCBh
cwo+IGNsa190eF9lc2MgaW4gdGhlIG53bCBkc2kgaG9zdCBjb250cm9sbGVyIChpLk1YOE1RIFJN
LCBSZXYuIDAsIDAxLzIwMTgKPiBTZWN0LiAxMy41LjMuNy40KS4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgo+IC0tLQoKQXBwbGllZCB0byBjbGst
bmV4dAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
