Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E98BBB3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 20:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L84wqU697v3J6HwFIn3A2vBphKr8+kgj/42miqRPI3o=; b=XEQhJNOWWxwgw5
	1zTsI2SWtq1mTPqIoAJE14w6BOdWE9rmivxMi+xQnTm8jQ9LUir9ukTnhaDD8rfXqXuujVLvI3Bdi
	UZPgyuweKtPfSuGYTVDGsNKXO3P1WTpBiULRGFkWgUxIMn+Hhf9SorZmyheeOUe8H8KTk+onO83mD
	oyLw1XjDdD9TwXpyI1XGmSUvdW8ufYfJhDzOKHhgJVjk4aedNpAYgfVewdymr9EH4orkSqCrvqxTz
	cKYDEvlHbicXPgkeAVzpwTqpLmAum4ezdXrO7gQJ755eedMCdWWn6meupcZdgTiQh7m0v2d9qZMYw
	LYfUg9r1VAYBp+d+M1Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCT03-0000RU-JT; Mon, 23 Sep 2019 18:23:51 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCSzd-0000Ky-Hz
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 18:23:27 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 76DB0809F;
 Mon, 23 Sep 2019 18:23:55 +0000 (UTC)
Date: Mon, 23 Sep 2019 11:23:20 -0700
From: Tony Lindgren <tony@atomide.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] ARM: omap2plus_defconfig: Enable DRM_TI_TFP410
Message-ID: <20190923182320.GB5610@atomide.com>
References: <20190911174647.29721-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911174647.29721-1-aford173@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_112325_628625_BB472726 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, sre@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-omap@vger.kernel.org,
 adam.ford@logicpd.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Adam Ford <aford173@gmail.com> [190911 10:47]:
> The TFP410 driver was removed but the replacement driver was
> never enabled.  This patch enableds the DRM_TI_TFP410
> 
> Fixes: be3143d8b27f ("drm/omap: Remove TFP410 and DVI connector drivers")

Applying into fixes thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
