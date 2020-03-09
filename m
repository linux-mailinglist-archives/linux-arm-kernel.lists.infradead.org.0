Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823BF17E484
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:18:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGCiVdvIsoSO9JJC8r01ZDAqKjvx3BWnjfU1ikdlvqc=; b=HpZ6W+pDtopW7w
	wfXDCaIZEZsY2EDMpWHIi90mzrn67ZKIxbjmJWmi0hqDmrbCAJ+9yDzIDSbs+breaC+mcK81xfJpA
	sG4z+t+XU6fphZapAADsfeGCEnM9RbRh8G/8JvDle+X5eKO8gvpCVBy6OXc2W6Yk+Fg6WvGUEh1lD
	Lfp2mdNQUx3/ftuAXmQCkYzyj4KtnxI7vswXyWrGQwAZJLuPR3zqc0YyOl/1qBAKfj+hlanKYWUQ0
	3UlH5nAI/ZL1E5MnY5cGdncYn9CIUGXm3EuepNc4xe2phKngPJGGLSZjJxY/mArTzpKo2NV4fZyt6
	r9Yco/bcRPNnq3wTqC3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBL6a-0008Ua-6o; Mon, 09 Mar 2020 16:18:12 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBL6E-0008Qa-8M
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:17:52 +0000
X-Originating-IP: 90.66.181.224
Received: from localhost (lfbn-lyo-1-2013-224.w90-66.abo.wanadoo.fr
 [90.66.181.224]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 8E91A1BF216;
 Mon,  9 Mar 2020 16:17:40 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: afzal mohammed <afzal.mohd.ma@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v3] ARM: orion: replace setup_irq() by request_irq()
In-Reply-To: <20200308143755.GC6903@afzalpc>
References: <20200301122330.4296-1-afzal.mohd.ma@gmail.com>
 <20200301154435.GJ6305@lunn.ch> <20200308143755.GC6903@afzalpc>
Date: Mon, 09 Mar 2020 17:17:40 +0100
Message-ID: <87mu8ppknv.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_091750_429563_33118431 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: Jason Cooper <jason@lakedaemon.net>, Viresh Kumar <viresh.kumar@linaro.org>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello afzal mohammed,

> Hi Andrew, Jason, Sebastian, Gregory,
>
> Please let me know the way upstream for this patch

I am taking care of it.

Gregory

>
> On Sun, Mar 01, 2020 at 04:44:35PM +0100, Andrew Lunn wrote:
>
>> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>
> Thanks Andrew
>
> Regards
> afzal

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
