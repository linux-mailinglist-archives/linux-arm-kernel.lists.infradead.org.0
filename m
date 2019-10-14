Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB5DD668D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 17:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cH1EicABtWVjOiG7CW22q+rxvq6uRA8BqPDLD2rHUyw=; b=Z+ExV3Cf9UPEnZ
	Aw+UACDWFBhIE5tRd/j61yszaXza+9VbdmHBBz+JL4wWN68ksip3HCWL7yv+OqPBK19WfeZvNHF0e
	GzdkFAOWiXLBlcCA4rY5RMkHkO3ZJDZ2rFlqjzEdt6rED/kQGbvHj9qjx2e1Rv8qI+jICqunj1wOE
	o4qccxqgP6YVjsY4ZkfuxYDMHezAlVRT1xG2IeleSP9wO3AS9HcBvF8gzJAxy4LM7yNuOdZuscXMQ
	1sITZdhePll/ugWwTTuEk72ZUICnB7u3Vd4m/U1T8MWrgXMwc9KzdQcPhDnvtgmYsXiRE26gIEXpu
	jyhzz0i2Q0CBTw7QX0rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK2dG-0001uc-R2; Mon, 14 Oct 2019 15:51:38 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK2d6-0001u1-RU
 for linux-arm-kernel@bombadil.infradead.org; Mon, 14 Oct 2019 15:51:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Va1DMg/av31AMaqefsiaNt+qTQQLfi2ppNXsI+zpzK0=; b=Tzfj37jzKUR0/SNowIhqtHkXF
 PqvLFZ9KFH/3aXHh7wiqqU9yGVYEVKrywaNUH9KqfJbgWOjDkh4sA25OqL+yLi6jvIs2a3rlE21uq
 aphmtnKOTS7SlqGty4wHVkufLWggqQO1kwLb/67ItTEDA8YqBawQHO7V2mTaj2THlnMkeiflAKJBM
 8NrX5YykqUperKuf+2mq95x/Qqa3InyaX0+FdTwfd9tJ6TTvPo6YTvy+X51weVm6bEHzI2VpBchNW
 0PdGX5dTadsMsOR/g2Jhei38P6CJqFhYi23R8C0uaEuu5XZiXcxsDMc/j5p66NbTa4ziMP74r4mJH
 GxNZhoatg==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK2d3-0003g9-Qn
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 15:51:27 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 5370FE000B;
 Mon, 14 Oct 2019 15:50:39 +0000 (UTC)
Date: Mon, 14 Oct 2019 17:50:38 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH] rtc: xilinx: Fix calibval variable type
Message-ID: <20191014155038.GS3125@piout.net>
References: <20765c4c27aa92c75426b82fd2815ebef6471492.1570544738.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20765c4c27aa92c75426b82fd2815ebef6471492.1570544738.git.michal.simek@xilinx.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rtc@vger.kernel.org, Srinivas Goud <srinivas.goud@xilinx.com>,
 monstr@monstr.eu, Alessandro Zummo <a.zummo@towertech.it>,
 linux-kernel@vger.kernel.org, git@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/10/2019 16:25:41+0200, Michal Simek wrote:
> From: Srinivas Goud <srinivas.goud@xilinx.com>
> 
> This patch fixes the warnings reported by static code analysis.
> Updated calibval variable type to unsigned type from signed.
> 
> Signed-off-by: Srinivas Goud <srinivas.goud@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
> 
>  drivers/rtc/rtc-zynqmp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
