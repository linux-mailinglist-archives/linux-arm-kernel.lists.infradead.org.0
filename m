Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C97634953
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ju39/slq08B6lIopb1c8pq0LF3eKaJ99XTvnGwsHT3Y=; b=G5W2A2kPe/gaun
	PoEx5tCEPHUom0DUefSQCNLGjiMoahuSdR5uyDaujFRLwOwhJQQW+SuWd6Mef8V7HSuDD7mFj8GqO
	k1U5bKcgwMpAm2mssrkU2sjW5glcAiJ01HNbsd5T8lS30GitGhoPMNqd7j+zOvFMN1RHKPqi7zI+w
	X0QqC+W4OcDzBOWMkmamQcQSnxSjrVT/JlxKrfS8v/keNGc+8hAEhOKPN7yUhGUff2WDLSuGGBsoS
	XZxpP0y9oCai66BeluQgZ5KbS8yBnaQlHGU/h+4iOUqfqueBwF8EhQ5+fOs2f+HL/pWStVrYRmmYR
	AU9FrVRfexrz9MfDJhWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9oR-0004y6-QK; Tue, 04 Jun 2019 13:49:15 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9oK-0004x9-Cu
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 13:49:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 46D20341;
 Tue,  4 Jun 2019 06:49:06 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 790F53F690; Tue,  4 Jun 2019 06:49:04 -0700 (PDT)
Date: Tue, 4 Jun 2019 14:49:01 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH] arm64/cpufeature: Convert hook_lock to raw_spin_lock_t
 in cpu_enable_ssbs()
Message-ID: <20190604134901.GE6610@arrakis.emea.arm.com>
References: <20190530113058.1988-1-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530113058.1988-1-julien.grall@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_064908_441057_4C14BDD1 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rt-users@vger.kernel.org, suzuki.poulose@arm.com,
 bigeasy@linutronix.de, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, tglx@linutronix.de, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 12:30:58PM +0100, Julien Grall wrote:
> cpu_enable_ssbs() is called via stop_machine() as part of the cpu_enable
> callback. A spin lock is used to ensure the hook is registered before
> the rest of the callback is executed.
> 
> On -RT spin_lock() may sleep. However, all the callees in stop_machine()
> are expected to not sleep. Therefore a raw_spin_lock() is required here.
> 
> Given this is already done under stop_machine() and the work done under
> the lock is quite small, the latency should not increase too much.
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>

Queued for 5.3. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
