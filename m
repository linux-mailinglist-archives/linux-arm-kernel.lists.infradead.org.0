Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD9F1EA7AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 18:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFKlDzi/mGmCySoqhpTRcYG9eXY89EfDT7CqPCuqEY8=; b=tDK0oDU9m7uMsQ
	c9S7X9bxsFV4alSfGktV5buZ8h4Ep81UExr7XK1zQwy4rzOwcBkXtFtFIBEZh6tSlI90YRnWp7Rx9
	O0QSmuG5doA3i0S/VYmciKS534ICTjeueJPNNE1Wa0azVgdAb18mVSwAwxpNonEfMm7+xNZxDFOUt
	0RDE8ke62sWPTkGtgzSjAt1gh0TEasBn7wjPOX+yEs3ZmwhFpvha+Y+MjVEtRhJaxx03R4otKdH5C
	ATqITW7AmCmcXdfeQu6wMXRXAoMWDZQ3cfQCP2eh/csIf7/UUxRdQxGfMpPD/lHFZ+1sx/HNEoNW2
	KGl2q8XMG3Gh3rgIKA3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfn9V-0008N2-CK; Mon, 01 Jun 2020 16:19:05 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfn9O-0008MO-Uw
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 16:19:00 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 36C6F804F;
 Mon,  1 Jun 2020 16:19:45 +0000 (UTC)
Date: Mon, 1 Jun 2020 09:18:51 -0700
From: Tony Lindgren <tony@atomide.com>
To: Drew Fustini <drew@beagleboard.org>
Subject: Re: [PATCH] pinctrl-single: fix pcs_parse_pinconf() return val
Message-ID: <20200601161851.GC37466@atomide.com>
References: <20200531204147.GA664833@x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200531204147.GA664833@x1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_091859_035197_CE2EDDD1 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Robert Nelson <robertcnelson@beagleboard.org>, linux-gpio@vger.kernel.org,
 Jason Kridner <jkridner@beagleboard.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Drew Fustini <drew@beagleboard.org> [200531 20:42]:
> This patch causes pcs_parse_pinconf() to return an error when no
> pinctrl_map is added.  The current behavior is to return 0 when
> !PCS_HAS_PINCONF or !nconfs.  Thus pcs_parse_one_pinctrl_entry()
> incorrectly assumes that a map was added and sets num_maps = 2.

Looks OK to me, would be good to wait for Haojian to test this one.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
