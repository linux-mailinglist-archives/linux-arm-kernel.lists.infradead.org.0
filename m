Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F861C984B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZWsFngdUtulBnr+qBtiWf3c8nMg/RkSYNcE33GgNko=; b=TRMMai9TH8ZDOk
	xXOwQmMJGSS5kOrgiv17SeGtnU0duzk9obwCFpmQAN9fBhYgzZVXSmjAdDVlMp21ughESVde3Zeaj
	0Ihn8ajc/886Ul4qe/D0pqvvrQw5KHAEhxO1QUO6XbXesPa+QBy/FsRhHnQNmfnqFFlQ7ooA/5bnH
	3uUixhMTCmuoVKYQRfnSEUOx+gFxQIOKVio0GejMZ4F3CSc7y7PCSVygy2BnWNBMtTf+zsIglD2G7
	pbFfhgLYo+8itHAt/n1lKZ62Ue/FKubYku0t7OmHp0V0A5SnVd0WBKQrmAXFMT7TUkUR7tmLOOrN8
	EShl10AsS91Syl23Izkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkeF-0000mm-I1; Thu, 07 May 2020 17:49:27 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWke6-0000mG-SL
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:49:20 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 0AC7080CD;
 Thu,  7 May 2020 17:50:06 +0000 (UTC)
Date: Thu, 7 May 2020 10:49:15 -0700
From: Tony Lindgren <tony@atomide.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 12/15] ARM: omap2plus: Drop unneeded select of
 MIGHT_HAVE_CACHE_L2X0
Message-ID: <20200507174915.GV37466@atomide.com>
References: <20200505150722.1575-1-geert+renesas@glider.be>
 <20200505150722.1575-13-geert+renesas@glider.be>
 <20200505182618.GQ37466@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505182618.GQ37466@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_104918_958389_3EE663C1 
X-CRM114-Status: UNSURE (   9.57  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 linux-kernel@vger.kernel.org, soc@kernel.org, Olof Johansson <olof@lixom.net>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tony Lindgren <tony@atomide.com> [200505 18:27]:
> * Geert Uytterhoeven <geert+renesas@glider.be> [200505 08:08]:
> > Support for TI AM43x SoCs depends on ARCH_MULTI_V7, which selects
> > ARCH_MULTI_V6_V7.
> > As the latter selects MIGHT_HAVE_CACHE_L2X0, there is no need for
> > SOC_AM43XX to select MIGHT_HAVE_CACHE_L2X0.
> > 
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Cc: Tony Lindgren <tony@atomide.com>
> > Cc: linux-omap@vger.kernel.org
> > Acked-by: Arnd Bergmann <arnd@arndb.de>
> > Acked-by: Tony Lindgren <tony@atomide.com>
> > ---
> > v2:
> >   - Add Acked-by.
> 
> I'll queue this into omap-for-v5.8/soc tomorrow assuming nobody else
> has it already applied.

OK applying int omap-for-v5.8/soc thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
