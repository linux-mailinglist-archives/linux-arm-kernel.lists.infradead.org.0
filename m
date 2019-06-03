Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 573AB32DCE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 12:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FhP5IXX7Hxy4QspzZkckixH0xmzsoLgR6Z31fGMIlno=; b=SZYheXNEMHXCTF
	D7+6TsoVGb9nBbE26ZfzMQ/JZ3SxrDTZN5m8eqsGOfcKVam4YP7oeZc3Rhu/4BJk1ZnarhntuWMSe
	OZ3ryvp+5Nob8vunBl5ac8EaJFwB7TJherbFA8IqK5JBuM+eyhAcTFZKOUVdLSQCWC8rJU2PDNV6u
	HSbRIm5yYOKKjLGSJawnqYZnhWFUCD4mIvI5TPR8VwYgtx0eIl+4cqO0GTckQUJ1tRsCh78P6J1ml
	c14CYTfTKQXIEw2e7UoRTDNfUyANsPXc6Lgjdg8k+5YrTNaQ7vo0vb6cpAfde1DHDhX6Pr2eXb+Wa
	Rp7FcvDrkfQn6+U/fy3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkPf-0004Eg-1J; Mon, 03 Jun 2019 10:41:59 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkPY-0004EI-F8
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 10:41:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D0274A78;
 Mon,  3 Jun 2019 03:41:51 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 321F73F5AF;
 Mon,  3 Jun 2019 03:41:50 -0700 (PDT)
Date: Mon, 3 Jun 2019 11:41:47 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH kvmtool v3 2/9] update_headers.sh: Cleanly report failure
 on error
Message-ID: <20190603104147.GH28398@e103592.cambridge.arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-3-git-send-email-Dave.Martin@arm.com>
 <20190531180310.2305008c@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531180310.2305008c@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_034152_509429_0FB3A284 
X-CRM114-Status: GOOD (  13.07  )
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

On Fri, May 31, 2019 at 06:03:10PM +0100, Andre Przywara wrote:
> On Thu, 30 May 2019 16:13:07 +0100
> Dave Martin <Dave.Martin@arm.com> wrote:
> 
> > If in intermediate step fails, update_headers.sh blindly continues
> > and may return success status.
> > 
> > To avoid errors going unnoticed when driving this script, exit and
> > report failure status as soon as something goes wrong.  For good
> > measure, also fail on expansion of undefined shell variables to aid
> > future maintainers.
> > 
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> 
> Both "u" and "e" seem to be standard and work in dash and ash, so:
> 
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Thanks.

Those options have been there forever, so I presume they are specified
by POSIX... but I confess I didn't check.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
