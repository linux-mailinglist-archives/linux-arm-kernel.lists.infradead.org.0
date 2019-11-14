Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF74FC4F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ga5h1t+vjvApUfXT2YMZkSJRkwwn9USg0B3aEJDWfg4=; b=EG8g5QMlkY7vbe
	5O0cRPkLa+04HSzhZCRSYuZn684nzRyD4BQjZE1cYApoVBhNeQ3QdOEZbmfjJjf87Z6++yb6PZ74j
	a80zUhqRKCvs0tO2kWZcr2JigO9kj8xXpbCN3OaDSyJfzB/nEwA06qte6aeiyxOG4YP0ztX0DQHnI
	Dsf6fU1WHU0n76hlmKbpa/cyLdnbAvN6MXEyXxfMHVcAfnRKvua8Qr+v6tzctf2HYQIRbGmQ4Nhhn
	+rBPqODoZ5wAVTY95j7+GB5qIkcTOju0QiQg9pWYPBoudCrFsg4uba1ObOnPJfd/DzJ5mMYSl37Ae
	qygK2bb0bG74sBk74NzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCsc-0003bz-Ce; Thu, 14 Nov 2019 11:01:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCsU-0003bV-T4
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:01:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 527BC31B;
 Thu, 14 Nov 2019 03:01:30 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4CA033F6C4;
 Thu, 14 Nov 2019 03:01:29 -0800 (PST)
Date: Thu, 14 Nov 2019 11:01:23 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: linux-next: Fixes tag needs some work in the arm-soc tree
Message-ID: <20191114110123.GA18036@bogus>
References: <20191114202122.0f38eab6@canb.auug.org.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114202122.0f38eab6@canb.auug.org.au>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_030130_980416_12476C0A 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Olof Johansson <olof@lixom.net>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 08:21:22PM +1100, Stephen Rothwell wrote:
> Hi all,
>
> n commit
>
>   9a6edfe32f37 ("firmware: arm_scmi: Fix doorbell ring logic for !CONFIG_64BIT")
>
> Fixes tag
>
>   Fixes: 823839571d76 ("firmware: arm_scmi: Make use SCMI v2.0 fastchannel
>
> has these problem(s):
>
>   - Subject has leading but no trailing parentheses
>   - Subject has leading but no trailing quotes
>
> Please do not split Fixes tags over more than one line.
>

My bad, and sorry for that, it was too long and hence I split it into 2 lines.

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
