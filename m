Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90411189EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:35:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFAvXQHulhuyrRcUEZSo8c7qn/a8Ei7ODpkcUN9nQlQ=; b=m39+YAOl2AKrpl
	AlQ9iLya56GAIhPY+QwlreZFQTKNSLvDRqeq2NAYW57RPLWo4zudNjl4gcxRz66H+2cMkt25nJvNY
	I0yqjlKh3imkZWCEwYwa7tgX7oMwn8YP1ECUXy/HeQoe4JxBUvui9ODzoLT5Mg3+0E/3U0J+cP/EV
	6w7GM+x797UJ5lOmcUPKgVsQKZnL33hrJamJ21++m4osmLVLFp13+s/BIrMcNC3Ll+1YB1T6f57k+
	bQtf9oWs0IAMh2Tz+0OTx/K1t/GOzOV7iCkGNNV8M+2WfIAqqbesMtH75wtQa9FEh0EuaR0OoCK2n
	WgJxVjrtpvQ3JOisEQsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieffF-0001yg-Qx; Tue, 10 Dec 2019 13:34:57 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieff6-0001yW-RZ
 for linux-arm-kernel@bombadil.infradead.org; Tue, 10 Dec 2019 13:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CJ4AMgwkGIQ6qNw6NDldRYLzYHpT04EAtpzp6e1VpJQ=; b=FZSFUkaDOwVlTnrbUw9xB9zje
 EZqeMjIfTPxhSypVmaFmbRp+FS+eY7WdcBOj9D/y4NtD9nw2DM7vrZjInBzy3X5B9OM9+sJFM6Sds
 kubIAkYEl2z1OH1oxW8YU8R/6pBHk1c8sAfg/Jcg2nr6C3qaxK0hnih3PGl0T55wBShBTVb3xppgH
 JoJb0NbvRfiiV/rhD7cLstq5lCirwZ5Y/bqgPQRqxjL2GTYyFDHWb2JypuiUdPI04+tQWedCp7n8l
 PqlJEiycZf378Lo4TOwQ3xKassYcVWD8WKedC0/EB/DFeCaZkS3UYWdmKQghLivcXOkfkCJK3QOfm
 tL4xJnEvQ==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieff3-0005tG-Df
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:34:46 +0000
X-Originating-IP: 90.182.112.136
Received: from localhost (136.112.broadband15.iol.cz [90.182.112.136])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id B67AC40011;
 Tue, 10 Dec 2019 13:34:01 +0000 (UTC)
Date: Tue, 10 Dec 2019 14:33:52 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] rtc: sun6i: Add support for RTC clocks on R40
Message-ID: <20191210133352.GM1463890@piout.net>
References: <20191205085054.6049-1-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205085054.6049-1-wens@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/12/2019 16:50:54+0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> When support for the R40 in the rtc-sun6i driver was split out for a
> separate compatible string, only the RTC half was covered, and not the
> clock half. Unfortunately this results in the whole driver not working,
> as the RTC half expects the clock half to have been initialized.
> 
> Add support for the clock part as well. The clock part is like the H3,
> but does not need to export the internal oscillator, nor does it have
> a gateable LOSC external output.
> 
> This fixes issues with WiFi and Bluetooth not working on the BPI M2U.
> 
> Fixes: d6624cc75021 ("rtc: sun6i: Add R40 compatible")
> Cc: <stable@vger.kernel.org> # 5.3.x
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
> 
> Please merge this for fixes.
> 
> ---
>  drivers/rtc/rtc-sun6i.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
