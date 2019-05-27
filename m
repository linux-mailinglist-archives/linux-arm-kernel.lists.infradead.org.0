Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 376842B27A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 12:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1hnOu0No+CX4sEKXGtzQX2mhNHYwmCZJkD334+C0jY=; b=hb9ZmYwEb7iKUu
	ygELXukfD8QENmtEcKAa9YKLRNSyFR/Snydo2uStR+qLFJs1GmaaFbZidLn4D6kGrvLriuL+9Y/gF
	shbaF7epB0MBU4LrJtUVonQh/vbPAv4ptN1KEVwNpywmp19dAJ+8Hb8Q/FvmZi6ZK6pFax7ITdoZg
	S7/tdgYxwq3KuPW0o61YljGwA4/oEEEsIFtH2F5knwWD1cBtt3lYZ0R7VNyEqefix81dxeKBFJmlf
	jY+xpTGJB5faXm83ckeDF2/Hobe7WkOxtD4XLd4sPEWsBmqUGOFAgGkED6d+5StpvfLWNF6cB/vDU
	WE780PrsoSITJk/Lxc4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDER-0000RS-JL; Mon, 27 May 2019 10:51:55 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDEJ-0000Qa-S5
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 10:51:49 +0000
Received: from 79.184.255.36.ipv4.supernova.orange.pl (79.184.255.36) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.213)
 id 36bc135fddf03d66; Mon, 27 May 2019 12:51:33 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 0/2] cpufreq: brcmstb-avs-cpufreq: Couple fixes
Date: Mon, 27 May 2019 12:51:32 +0200
Message-ID: <3734641.73qX0VsHyn@kreacher>
In-Reply-To: <20190522184547.31791-1-f.fainelli@gmail.com>
References: <20190522184547.31791-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_035148_072783_A4BA1992 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Gregory Fong <gregory.0xf0@gmail.com>,
 "open list:BROADCOM STB AVS CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-kernel@vger.kernel.org,
 "maintainer:BROADCOM STB AVS CPUFREQ DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Brian Norris <computersforpeace@gmail.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday, May 22, 2019 8:45:45 PM CEST Florian Fainelli wrote:
> Hi Rafael, Viresh,
> 
> These patch series contains two minor fixes for the brcmstb-avs-cpufreq
> driver.
> 
> Florian Fainelli (2):
>   cpufreq: brcmstb-avs-cpufreq: Fix initial command check
>   cpufreq: brcmstb-avs-cpufreq: Fix types for voltage/frequency
> 
>  drivers/cpufreq/brcmstb-avs-cpufreq.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

These look straightforward enough to me, but it would be good to get an ACK from the
driver maintainer for them.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
