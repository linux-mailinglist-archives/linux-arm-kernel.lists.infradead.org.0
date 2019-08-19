Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3282792323
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 14:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IA1hf84WwpU6NMPhr5Tz582NcVO6Y5OGR2vVDe3mHqk=; b=Y8GDq0DaNLpCNL
	3LxvoD3qAfFblH2P8vdEF7rrzs9uMggAU3YIBcaqSmaxjZM/wxSMVIlaUQWpWwpNxycqLw7/poG6v
	G7Op9qT2YOrZRN3XrZMllXWvr1q9CxgDh8SUwfwykWimxqoyYcK6bJP5xW6SqZoxDJmNvLaszfgB3
	TO10t55NPjBoGolcLWR1WLQO0FvUhi0a8+TO0M45ULFwu8QxURDk8HNCsbF4bu/llxYJfQGb6eCy7
	Dw3lQdu7UuPotqljlayIGUooIvcHYzDjNh4ZPmS4CdvjZGtpbLubhDgTkksPKdk8WcmP1OoNgVYmv
	McmLCrKLK10PQ+jkUKgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzgVG-0002jn-KO; Mon, 19 Aug 2019 12:11:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzgV9-0002jS-Rt
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 12:11:09 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F4DE20851;
 Mon, 19 Aug 2019 12:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566216667;
 bh=uzo3+PT5EVYcPd8uhm34xLZt0fwzs+OBW/nrC+NPFBg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tynwUM+niAQyk/Fkxbqhw/7v01tjrnUoMn2vZ7II4tKdKiyQv5648vddiJhEmDr9g
 6Omzu5hRsAtdk/M6COKjpBugAZw0eCmrzEjUhOTCxHRrXZiGlfRhiT5W8i9+cXX/T3
 xjtoC6y9BmcS+5RrSa0dQmOJI+kNAt52HI/pvhbk=
Date: Mon, 19 Aug 2019 14:10:55 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH] ARM: vf610-zii-cfu1: Add node for switch watchdog
Message-ID: <20190819121054.GE5999@X250>
References: <20190814193536.15088-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814193536.15088-1-andrew.smirnov@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_051107_923231_FFE379D5 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Chris Healy <cphealy@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 12:35:36PM -0700, Andrey Smirnov wrote:
> Add I2C child node for switch watchdog present on CFU1.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
