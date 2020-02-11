Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E679158C9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 11:24:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D/3YWJ70mRwanyuaDxrxdOTGjHxdDo5+rsWoa7t8SlI=; b=McYdiaN/RpMOpU9Ve6Ecc4uCPl
	HRCU5hNEe6Rx9J79hCxoLkmOaiqy02RxQfYAkf43AJNptvFzN32GiOlek/7ZxVZejr9yeHglZFACk
	3O1wjnHyM/Dhs/Q/lCV4IodEbPVpMaPPMWzNxEPhOqob3myrxiPqhEwIhzgK6u0/hYtLfXYfgStNm
	QE7rUp91gxwSAnZGMP42nPAcjtzCWA+SRDdoxELF/Oeyteccy9rVznHdWgHUPSARih4FRg8Zw2pV2
	vtLc9iYkanuXNvhBTEw+XYXOkef7XcPCdJRtl/L86RMoAAcldUlUnXu/WGm7cA6+zdR8AuIWdr3Ey
	R9Uf1NSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1SiD-0005DH-1j; Tue, 11 Feb 2020 10:24:13 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Si6-0005Cw-20
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 10:24:07 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01BAO3JI080604;
 Tue, 11 Feb 2020 04:24:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581416643;
 bh=IT0XtP14rOcxVvIjEkJLAVhnV8MbpGdBDYqA20Ogvvg=;
 h=To:CC:From:Subject:Date;
 b=ieDwTSX3jBi/zU1u4phaOZr/3Ii8HGFTXg5HGFMr7ljayvLceHG8Ur/umMkvypjRh
 QAQk97bS+itM9Sg0T+qBvIFm/dBtzumU10HinzZarwXkKrmUxTzv/JcfNi8oIXIkIW
 SvftF7u0/x73WxmsKAgW8ob+31xkdvsU5ZvYCsdk=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01BAO2kT021354;
 Tue, 11 Feb 2020 04:24:03 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 11
 Feb 2020 04:24:02 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 11 Feb 2020 04:24:03 -0600
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01BAO08Y044972;
 Tue, 11 Feb 2020 04:24:01 -0600
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Petr Mladek
 <pmladek@suse.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Question about kthread_mod_delayed_work() allowed context
Message-ID: <cfa886ad-e3b7-c0d2-3ff8-58d94170eab5@ti.com>
Date: Tue, 11 Feb 2020 12:23:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_022406_139429_D5385A19 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev <netdev@vger.kernel.org>, Richard Cochran <richardcochran@gmail.com>,
 linux-rt-users@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

I'd like to ask question about allowed calling context for kthread_mod_delayed_work().

The comment to kthread_mod_delayed_work() says:

  * This function is safe to call from any context including IRQ handler.
  * See __kthread_cancel_work() and kthread_delayed_work_timer_fn()
  * for details.
  */

But it has del_timer_sync() inside which seems can't be called from hard_irq context:
kthread_mod_delayed_work()
   |-__kthread_cancel_work()
      |- del_timer_sync()
	|- WARN_ON(in_irq() && !(timer->flags & TIMER_IRQSAFE));

My use case is related to PTP processing using PTP auxiliary worker:
(commit d9535cb7b760 ("ptp: introduce ptp auxiliary worker")):
  - periodic work A is started and res-schedules itself for every dtX
  - on IRQ - the work A need to be scheduled immediately

Any advice on how to proceed?
Can kthread_queue_work() be used even if there is delayed work is
scheduled already (in general, don't care if work A will be executed one
more time after timer expiration)?

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
