Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CA11E4B0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1MEc7ksyTAbq4hVS+EIyAvpiK+uhu5J36b9TX80OLY=; b=WE/QG+vCYDal9p
	j4BqY6WeyOS2SB5ciLP41w6r8gQ+/p57yedrCdOLXwKx0rzd2nqig4+jh4JLL9qVVJTq6Y/0Vn72T
	YgwoAPKNbZofYkXfpmj664K1xhEz/A2lXirZnCl2ejhwpcwoP+rhsW2lkCQYI9zRnfhh8BCGKDAo4
	W3mKBxN/ei1IgkZv3waihbjt097u74ficEUeCL7cH5xCjqkMjrMlRrmc0BBt3Zw1A6mIDrEgyXYQV
	LPayWdzfwJ98cdbOWagi8TL8Q3v7fSIkZYNi1KNZiiPCDmE54VKUa+/hb1c+cmjDx23PKK7Bwdl+H
	9fKRmDhHksNHQKPSivuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzIr-0004CS-V6; Wed, 27 May 2020 16:53:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzIR-00042f-SV
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 16:52:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1C3755D;
 Wed, 27 May 2020 09:52:46 -0700 (PDT)
Received: from bogus (unknown [10.37.8.209])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B14EC3F305;
 Wed, 27 May 2020 09:52:45 -0700 (PDT)
Date: Wed, 27 May 2020 17:52:38 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 0/8] soc: Use custom soc attribute group and DEVICE_ATTR_RO
Message-ID: <20200527165238.GA21440@bogus>
References: <20200523170859.50003-1-sudeep.holla@arm.com>
 <20200527090305.GD179718@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527090305.GD179718@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_095251_983320_EA22FF55 
X-CRM114-Status: GOOD (  12.42  )
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Wed, May 27, 2020 at 11:03:05AM +0200, Greg Kroah-Hartman wrote:
> On Sat, May 23, 2020 at 06:08:51PM +0100, Sudeep Holla wrote:
> > Hi,
> > 
> > While trying to add SMCCC based SOC_ID support, I found the custom soc
> > attribute group which had no users in the tree and check if it can be
> > used or can be removed. I realised that it could clean up the custom
> > attributes that are added using device_create_file today.
> 
> Whole series looks good, nice job.
> 
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Both Linus Walleij and Greg have provided Reviewed-by meaning I need to
take this via ARM SoC. I assume it is late for v5.8 now, do you want me
to resend later for you to pick this directly or need pull request ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
