Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A56E32DCA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 12:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvN03lfSr7dWUsR+ifTz2Y2FQ6Y4rDEg7T+/CVKbTJ4=; b=EHily+xfXQxctW
	Hj12hAWQL1o+Gd8rvmbMPbg5RwZtxEO59ItGB4Kg2ePqf7EGBkw0cBmH1cfNXr6QlucXR4pLbYrJY
	bhxEVm4bhgnGI0UDbgdUjd79E4YrX4cGHq8oMgdSBkDpHB5lYLEVZgIyu/075bl3SpPe54boc2vHp
	6KY2nPGoiAuPq/IfqNSBNcgK4Ty89CPtM51hZwJ89HEHlW+29l/4kJd7GY9eNeeBldrn0eOCykeJU
	HbYrl5GHtbtXEEYqZsz9mqfndD8Iako9fLfHHAj37NyiEIVh3lHRm2F6LdOscmfyMFcn49xospvLA
	0XCAI+pw1kGorqQmfd4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkOR-0003qO-8V; Mon, 03 Jun 2019 10:40:43 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkOE-0003iQ-TQ
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 10:40:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C29C815AB;
 Mon,  3 Jun 2019 03:40:28 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 234ED3F5AF;
 Mon,  3 Jun 2019 03:40:26 -0700 (PDT)
Date: Mon, 3 Jun 2019 11:40:24 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH kvmtool v3 1/9] update_headers.sh: Add missing shell
 quoting
Message-ID: <20190603104022.GG28398@e103592.cambridge.arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-2-git-send-email-Dave.Martin@arm.com>
 <20190531180253.1ca3f7f6@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531180253.1ca3f7f6@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_034031_066823_0EA05551 
X-CRM114-Status: GOOD (  14.86  )
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
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 06:02:53PM +0100, Andre Przywara wrote:
> On Thu, 30 May 2019 16:13:06 +0100
> Dave Martin <Dave.Martin@arm.com> wrote:
> 
> > update_headers.sh can break if the current working directory has a
> > funny name or if something odd is passed for LINUX_ROOT.
> 
> Do you actually have spaces in your Linux path? ;-)

No.  I'm assuming that people using a fancy desktop need to call it
"My Linux Kernel" in order to comprehend what it is though.

(Only joking!)

> > In the interest of cleanliness, quote where appropriate.
> > 
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> 
> Looks alright to me:
> 
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>

[...]

Thanks
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
