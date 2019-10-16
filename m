Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4A4D9858
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 19:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0Xg7ruQTZwbecDUtOkj3+Njb0tx/5d+Re9aPvDxKog=; b=doz9cE0t3ZhmZj
	/L4m22FQd7BYn71T3vDDOPaHOdHDPzwk8vef8mB8hvBeO69XvUx9H1u5g2pKBYy/MsH9zeHkAfUEE
	ijRsEDThVI3ga07eUhkaLndWpd9tL4D0r1iMKJhDUYgdwbhsCNUHRYypZNCZNYembLeNR4XYGuK7U
	UnhIr1pzu6DxYtXsP3JsZmAkeN9byd9vavevWUXTP2NMPx58hJeTfA6Njqptcy3UETahWPQfYWw7r
	yQEL7YALrWTTDQ3Q3632bs/6FcgSb/Ds6tqdTqfXIqYOIOEXIZrB8zqW1JDt5MvlDDdvjuubCIA5d
	QpbA3iwqjYjWhvPNmZaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmr3-00074o-R1; Wed, 16 Oct 2019 17:12:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmqt-00074C-VH
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 17:12:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2506F2067D;
 Wed, 16 Oct 2019 17:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571245967;
 bh=b/9i89MU0L92FkRsn4FGraZ0KFeKSvci2lxOfIwZqVk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i8Ij4T6XFtyD8QXjKDulzh1MNMYY9ixh2IMW9tDZPcQNNttkyEyrIHVFqDn/NRpl6
 jM7daRaFCeke64hevMmoYRawrTTo0+h7Tm1zVnk4zEIUI91N6Nkdqq3AaB4GHzoeMs
 uJXvLh0yqQhiCJ+CuYV3cOPDdU/HZqpZ7gzcda+4=
Date: Wed, 16 Oct 2019 18:12:42 +0100
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] arm64: mm: fix inverted PAR_EL1.F check
Message-ID: <20191016171242.zve2khjwegm5nntm@willie-the-truck>
References: <20191016110304.44932-1-mark.rutland@arm.com>
 <99261f9e-98ab-ca79-9514-b900306f49df@arm.com>
 <20191016164916.pcyjmmdnnup7wg44@willie-the-truck>
 <65090dc0-8b83-a7c5-acc6-293d0d7e81e0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <65090dc0-8b83-a7c5-acc6-293d0d7e81e0@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_101249_826444_3CCE2585 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 05:55:04PM +0100, James Morse wrote:
> On 16/10/2019 17:49, Will Deacon wrote:
> > On Wed, Oct 16, 2019 at 05:29:27PM +0100, James Morse wrote:
> >> With this this patch the 'spurious' message is printed, and the kernel keeps running [0].
> >>
> >> If its useful:
> >> Tested-by: James Morse <james.morse@arm.com>
> > 
> > Thanks, I'll pick this up along with the other patch to the field definition
> > (did you have that one too?)
> 
> No... is it in rc3?

No: 1571197377-48650-1-git-send-email-yangyingliang@huawei.com

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
