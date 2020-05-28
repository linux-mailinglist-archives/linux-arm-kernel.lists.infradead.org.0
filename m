Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BCF1E6931
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 20:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oR788Qh1AVA48qprmtLmz1UlpLKxBzSeNuV1alhhkns=; b=Cs3
	pRTiDI+omIa5aheBSrVVAaMvUZI6hg+zTdluDy8f9SCgnMOAKaJyXkmtyE+Ft35O9VbHJ7EypB0AW
	RCVN00A8M4tAF9FXF0QXSX0fnD04dWLwDXSAWUOv+VWoDEtz6Tn3yBT7hKDNERgXbWbZJp3OTzZse
	LsZZs2DPBDgiqBcEljGpc2gJeeCKKEDaRqC/XIaD2DYfCh8MfFlte8pLnsph0y+E5O2IkFF2DTCMm
	Y5WZhTcDq/BjGKGCCtBbmzJGfeQD3E8CKIW/erqK3nazxRnmioiNUuJF3G61XUAnHdM1pH99nADM5
	oELH9GrZhwo8Sy6tFc1UD6NXpEcNjFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeN85-0001vR-5Y; Thu, 28 May 2020 18:19:45 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeN7w-0001uf-OQ
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 18:19:37 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id D7FFB30DD34;
 Thu, 28 May 2020 11:19:25 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com D7FFB30DD34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1590689965;
 bh=GQcrRpTxCYDTqBkDDmPavBT5QqGizo4E8hzdCo8uCqY=;
 h=From:To:Cc:Subject:Date:From;
 b=B5VSgSdIrnCNhxOhx6YodBzpTnSID5q/PxH7oLjWaJgyIdeopDHcD+d5DAOFmwwlz
 IvuBLGdYcJShBlK5FOzL+XxP2ShGQatyW+X/tO6OXo/6akRn9DsW4L15HvVOqsD+eW
 wf5lLOU4Dik0BFS29AIaGLeMau9dRDvYpCnYH81w=
Received: from lbrmn-mmayer.ric.broadcom.net (lbrmn-mmayer.ric.broadcom.net
 [10.136.28.150])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 21A61140069;
 Thu, 28 May 2020 11:19:25 -0700 (PDT)
From: Markus Mayer <markus.mayer@broadcom.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH 0/3] brcmstb-avs-cpufreq updates
Date: Thu, 28 May 2020 11:19:18 -0700
Message-Id: <20200528181921.19846-1-mmayer@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_111936_815933_900EEC92 
X-CRM114-Status: UNSURE (   5.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
 ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Markus Mayer <markus.mayer@broadcom.com>,
 Linux Power Management List <linux-pm@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Here is a collection of little, independent improvements to the
brcmstb-avs-cpufreq driver.

- more flexible interface for __issue_avs_command()
  This change makes the function more versatile as it can handle input
  and output parameters at the same time.
- Support polling AVS firmware
  This change allows the driver to use polling if interrupt driven mode
  doesn't work for some reason.
- send S2_ENTER / S2_EXIT commands to AVS
  Let the AVS firmware know when we are about to enter, or have just
  exited, S2 mode.

Regards,
-Markus

Florian Fainelli (1):
  cpufreq: brcmstb-avs-cpufreq: Support polling AVS firmware

Markus Mayer (2):
  cpufreq: brcmstb-avs-cpufreq: more flexible interface for
    __issue_avs_command()
  cpufreq: brcmstb-avs-cpufreq: send S2_ENTER / S2_EXIT commands to AVS

 drivers/cpufreq/brcmstb-avs-cpufreq.c | 89 ++++++++++++++++++---------
 1 file changed, 59 insertions(+), 30 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
