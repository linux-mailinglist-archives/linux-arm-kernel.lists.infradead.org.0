Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 498CB21E5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 21:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yf5qp2HDNCfhUnNXPAmBKXsypwhMpanAw9m7rlTCUfw=; b=g3kL7ap+L7qLlHHKq5lL3E/Ja
	nzUWtwSbM+/a3VvMD1W53hG3ct4GlIyW5ib3WU5cPCAupZ7VDoA3Nte8yTeevplbRuNyD6+D41jxP
	kfAtn/np+9p3OuQx/8wAyagSmZKuX9WX+YSFcekAFQEgmDo1I9udqq+FZe8c0ZVT1/KGvu3EBUlMX
	JwYrBD5cRvI7cv8gWj6SFTeTcWiesnHrKhhLKD6ixhY1KAhIbRXMFY6PyaVzVbqvUQUR30IWKYRXl
	ZJF+4tuJSh/S4Zvj2i0MUg90CJbyd72skWxp/DtteMt561ZLnPuJ+hU+5N8CpCRAOSpybhloRlVss
	gARUoT/QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRicj-0005a1-To; Fri, 17 May 2019 19:34:33 +0000
Received: from office2.cesnet.cz ([2001:718:1:101::144:244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRicc-0005Zh-Ft
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 19:34:28 +0000
Received: from localhost (unknown [IPv6:2001:718:1:2c:b857:3b01:efce:a0f4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by office2.cesnet.cz (Postfix) with ESMTPSA id A7211400052;
 Fri, 17 May 2019 21:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cesnet.cz;
 s=office2; t=1558121661;
 bh=mkFBMc7bmJqTH9f4fYAxIQNQAmDthOkHloghOxsINo8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Al8cTK1KXZ4aC36Jsfbx/xLH/ekErU0+DN2uILKalNWov25tOFLiv7sd607r03djj
 CUvRpsCzAZ4RDZA4+O6K4JRgQ2w+xQ0c7wzyEFpy9Uf3iXD5vMRkXkS4Yjw4zCtH78
 UD5cAF2hH9Or29i2wlXSaf5aPJ6YQolM+f//oITk=
From: =?iso-8859-1?Q?Jan_Kundr=E1t?= <jan.kundrat@cesnet.cz>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH] ARM:
 =?iso-8859-1?Q?mvebu=5Fv7=5Fdefconfig:_fix_Ethernet_on_Clearfog?=
Date: Fri, 17 May 2019 21:34:20 +0200
MIME-Version: 1.0
Message-ID: <871fc85b-5f0a-40a4-ade2-0701796bcd9a@cesnet.cz>
In-Reply-To: <87pnogzxmy.fsf@FE-laptop>
References: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
 <87pnogzxmy.fsf@FE-laptop>
Organization: CESNET
User-Agent: Trojita/v0.7-390-g3d4b67ec-dirty; Qt/5.13.0; xcb; Linux;
 Gentoo Base System release 2.4.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_123426_828601_E07A5E40 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:718:1:101:0:0:144:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76
 chars
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Baruch Siach <baruch@tkos.co.il>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Applied on mvebu/arm-5.3

To me this looks like a 5.2 material because it fixes a regression that got 
introduced within the 5.2 cycle. Or did I get the process wrong and this is 
perhaps just a first step?

Cheers,
Jan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
