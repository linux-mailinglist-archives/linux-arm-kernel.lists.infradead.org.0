Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585EC1ED4AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 19:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmBSHENzgmZEbgnQ483cU5YrkQcerItll4w5TOvscU0=; b=AxqGo8D4s5aVz/
	R5Pys4dJZkapsyIyeh2icvT93WM4mHicDBDQss7WsZ96QL7rvogHrjN/YUvT2zYuJUEDxnr1bTopW
	2WqflqEZ4eV6BWQjV9mChjrh/d0RUDkgGYodpwi5gEWPfNwPTGNzjlaCeUOWK9pgiJQWy8KHQDwhr
	n/NUFk3DWca+RCCW2b9n0LdG4Wjaz13xtOZODeEcs+v5xnr9XtUFjFLrhURs3JP+wuV1o8lfA3upl
	0zxrvFvT0mMEs/drKQUxZOIPM7asLw1ZgYTYc2H6KgjAulFt5zw0zB+56lG2T9w2PvVYVio2iv50B
	Lulfgcl3Vq823/4DnuHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgWpj-00066x-2m; Wed, 03 Jun 2020 17:05:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgWpc-00066c-DQ
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 17:05:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8347931B;
 Wed,  3 Jun 2020 10:05:35 -0700 (PDT)
Received: from bogus (unknown [10.37.8.135])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E33B43F305;
 Wed,  3 Jun 2020 10:05:33 -0700 (PDT)
Date: Wed, 3 Jun 2020 18:05:22 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH 0/2] firmware/psci: PSCI checker cleanup
Message-ID: <20200603170511.GA23722@bogus>
References: <20200424135657.32519-1-valentin.schneider@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424135657.32519-1-valentin.schneider@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_100536_496172_C5387877 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 02:56:55PM +0100, Valentin Schneider wrote:
> Hi folks,
> 
> This is a small cleanup of the PSCI checker following Peter's objections
> to its homegrown do_idle() implementation. It is based on his
> sched_setscheduler() unexport series at [1].
> 
> I've never really used the thing before, but it still seems to behave
> correctly on my Juno r0 & HiKey960.
> 

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Tested-by: Sudeep Holla <sudeep.holla@arm.com>

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
