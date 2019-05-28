Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81AA2BF26
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 08:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHS0yQnwvwYc5O3nwD6EEUMcJW1PbHeKUuybWTlFsXA=; b=pzgIuSd8cSb4iu
	jz/hhFqia/MxsTdFFcawvYEt9z57CirIIbQhRtakId7f+WYFBt/OlwcoK1+d9HLatoZARyZ1UAsCK
	7CVKCljKrw24FPJZDiWk/EZ3GbOysL6RF3eeFIwzpybSu+rzDPB3HpPykwGcg9wWl9V4VA1lC3oGN
	muMWmeumbev8et9VePdI7H/4uLTQ2S0vNNtYCUa2qalrsbdlRSy3AtPApkAt9nTOEpxRam9HWkhQt
	tLfLH9XC/TVIJ9DqPlgSIcnscR1QyOkUAkrvUC06U7+zRmj7bLT5Fg8FeXGUkOl+64RCZxObgzzvI
	ID+FQsp9A5frNicyxqwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVVPO-0003Gk-Lg; Tue, 28 May 2019 06:16:26 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVPH-0003Fn-Lt
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 06:16:20 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 49DC380F3;
 Tue, 28 May 2019 06:16:37 +0000 (UTC)
Date: Mon, 27 May 2019 23:16:14 -0700
From: Tony Lindgren <tony@atomide.com>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH 00/12] ti-sysc driver changes to drop custom hwmods
 property
Message-ID: <20190528061614.GL5447@atomide.com>
References: <20190527121348.45251-1-tony@atomide.com>
 <380809b1-7152-faa5-9f43-2243fb4dad19@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <380809b1-7152-faa5-9f43-2243fb4dad19@ti.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_231619_750909_285D4062 
X-CRM114-Status: GOOD (  11.91  )
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Suman Anna <s-anna@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, devicetree@vger.kernel.org,
 Faiz Abbas <faiz_abbas@ti.com>, linux-omap@vger.kernel.org,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Keerthy <j-keerthy@ti.com> [190528 00:58]:
> 
> 
> On 27/05/19 5:43 PM, Tony Lindgren wrote:
> > Hi all,
> > 
> > Here are changes to improve ti-sysc driver to the point where we can
> > finally drop the custom hwmods property for most cases. This series
> > drops hwmods property only for omap4 UART and MMC as those can be
> > tested with core retention idle.
> > 
> > I'll be posting more patches for dropping hwmods properties as they
> > get tested.
> 
> Tony,
> 
> What is the base of this series? It does not apply cleanly neither on
> linux-next nor on top of 5.2->rc1. If there are dependencies do you have a
> branch?

Oh thanks for letting me know. It's against v5.2-rc1 but the first
patch of the series got accidentally left out. Looks like I used -n
option with git format-patch with -n 12 instead of -n13. I will
repost the series.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
