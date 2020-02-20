Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629DF166073
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 16:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6SaoTEXwAF/yYzgzazEZ0rhlfsHRI/NcgNZZj1CfB0=; b=Sr03LCNI2GxGFz
	kDqTC0VPLmLfx8ENwtOt3I1WnIuOo2C+haY4dzSKNM1bAME1uzGELn8ju9xYRhJX+Y+Zyx5nujhUD
	G1Rc+zQircPGJlx7AhBoslY5Z/6/M+wePkv9RVVBqy2v8H5GGjX22tT/3cKklE6c9S/xTxwt3ZLFk
	2ChzumEB0LpaKzBSpuF9c5KBpEGuLRX7QFcnHK//ogp4WayxiPP5RFH0oVCw1HiKAXiXh0ZG/CRPP
	HHiqt5/neJDkzK8GY/BrOZGsHgECWKvbehGx/0yHJg9Skg08dJn8K01udJwWBrNs1AXM78K7C3O8u
	VBAye6AF29qrA6gD+FQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4nQR-0006Cm-Vd; Thu, 20 Feb 2020 15:07:39 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nQJ-00067B-TA
 for linux-arm-kernel@bombadil.infradead.org; Thu, 20 Feb 2020 15:07:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=gwmchLuX7iIS8w/e/uxxBhFIeZImB2/YGRwH26ma8R8=; b=I+jA37WJJk1vGD62h8ERgVZlKk
 HTt4x83S/aOvaWZuCdyglIz5GSaoHivPuM/cPAw0UC4KLb068ThTB8bXvZlyP4Op4OyD5UH7G5y1s
 F169/E6IsKiFhE/ILYjuHTQcFUsMz9Zx/DZrQedICkGsB2Cn0zm5dlBwflfY1g6n7QjeQOKgiTVtW
 1T68huCDadI+PeD0FOgrmJ3cBBHRjPVw8dRGLl+Vxzk7VIO/QqmjfZW3bLBcBsSzPTs0WDC66zB1b
 TvXFslYoduR+IbkFNgt4jm0a1MEdA/9I6+1QLRqdbcmn7JU+dqKORlQ6j1DIqlhniO5LJTBSRGziJ
 +M7qb5Xw==;
Received: from muru.com ([72.249.23.125])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nEF-0006FO-C4
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 14:55:04 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 183C18080;
 Thu, 20 Feb 2020 14:55:28 +0000 (UTC)
Date: Thu, 20 Feb 2020 06:54:41 -0800
From: Tony Lindgren <tony@atomide.com>
To: Sebastian Reichel <sre@kernel.org>
Subject: Re: [PATCH] backlight: add led-backlight driver
Message-ID: <20200220145441.GF37466@atomide.com>
References: <20200219191412.GA15905@amd> <20200219194540.GD37466@atomide.com>
 <20200219234437.l6ac7usebu7rnzsy@earth.universe>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219234437.l6ac7usebu7rnzsy@earth.universe>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: daniel.thompson@linaro.org, mpartap@gmx.net, jingoohan1@gmail.com,
 merlijn@wizzup.org, kernel list <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, martin_rysavy@centrum.cz, nekit1000@gmail.com,
 tomi.valkeinen@ti.com, Pavel Machek <pavel@ucw.cz>, jjhiblot@ti.com,
 linux-omap@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, agx@sigxcpu.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Sebastian Reichel <sre@kernel.org> [200219 23:45]:
> Finally :)
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Yeah thanks for your persistent effort on getting this working :)

Regards,

Tony



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
