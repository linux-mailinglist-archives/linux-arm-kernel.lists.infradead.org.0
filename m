Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B02E32E69
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=batk6f/Ifhl5tbzvdHWAdeo73Q6gAuAKzINJbvM7atw=; b=nUfDkZC5OLlC1O
	KXWAlGPe2gkq6Ny35sXd5ZnW0EtPLXGe0t4Ra92CPcm1LwZz/7Dj5WmsTXb1KEFpp68rxcTp4TYBq
	1qinAb+M6bcgxu3jg+OYPswY0FBTLCHhAjaOvG6IFkucUxs/bjY9Z+sRo6kSQMhywVZT22XU+Ru4H
	TIHV7gyQv/FupZ58Jv8hrqPDkxw/Qx2lAQJhEfLLzXA9zqFuUxMrcZWubWwkpdBoLQfllLgqExvJ8
	jmiuyqKIcoO8LaAk8V2GnpKzhumJOhlJzxbFmBKjf880QYZsGVqZSPihctW1NrN8K0dNJoUj+aXGB
	2s5Zdh30WlUOiHJKyyXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkwN-0004Ff-RQ; Mon, 03 Jun 2019 11:15:47 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkwH-0004FL-5C
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 11:15:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81A46A78;
 Mon,  3 Jun 2019 04:15:40 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D7C5B3F5AF;
 Mon,  3 Jun 2019 04:15:38 -0700 (PDT)
Date: Mon, 3 Jun 2019 12:15:36 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH kvmtool v3 8/9] arm64: Add SVE support
Message-ID: <20190603111536.GM28398@e103592.cambridge.arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-9-git-send-email-Dave.Martin@arm.com>
 <20190531181331.2a4ef6dd@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531181331.2a4ef6dd@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_041541_204649_35F09354 
X-CRM114-Status: GOOD (  15.16  )
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

On Fri, May 31, 2019 at 06:13:31PM +0100, Andre Przywara wrote:
> On Thu, 30 May 2019 16:13:13 +0100
> Dave Martin <Dave.Martin@arm.com> wrote:
> 
> > This patch adds --enable-sve/--disable-sve command line options to
> > allow the user to control whether the Scalable Vector Extension is
> > made available to the guest.
> 
> I guess I have a similar concern about this enable/disable pair being
> confusing, though there is more sense here for SVE, given the impact of it
> being enabled in the guest.
> 
> Maybe we can cover both pointer auth and SVE options with the same revised
> approach?

I agree that we should follow the same approach for both when we've
decided what approach to take.

(That was part of the reason for pulling both into the same series -- I
didn't want to end up randomly doing two different things without a
conscious intention to do so.)

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
