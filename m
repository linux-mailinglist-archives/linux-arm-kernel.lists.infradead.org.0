Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A7E189B6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 12:55:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mGrJNnp3zuyyKJaa5gBCMKJdgr3sgBX8YR/Vtc6X6HI=; b=qb08ZL/C5RqVHI
	u1j6zDJtn/yHqJLjOMsU9sakyKN2NmnK8T9Z2krWDY6LHXxUCmK9ZsfbEpzROEU67tZkSvBnAoCCE
	oXPLFYH0baAXGW/G10cQBCqtEwz/gRftSa26snt8+h8qpBZ9nwWpywZ0+NUE0/EBYAFjVJ0HDExBG
	8JWfpBymwtw64QAtxOPOiMQiskmC7tklc0VQiL6bzhXHRn4CWaoqEIo6E/XyMkT+hfKFL0WbwUTTa
	0+rmZYsUIIylbhCKTmkM6w8L1bwSyWSk9xPJHpIt2/mUCNJ19O1Sk46IyHfwVLmZXbUj77xJq9q+5
	Ffw+ViOSYDZYie9HAXtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEXI1-0008GZ-Vl; Wed, 18 Mar 2020 11:55:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEXHj-0008Fr-52
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 11:54:56 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 622CD20772;
 Wed, 18 Mar 2020 11:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584532494;
 bh=vog5jmqIjkgcCbl6H/fzs7vG/KRa87L6309/v2uXLmg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Na1jsHhb8csDiM3dBjnzZmuz+N+26R0vSZ86fWmREdnGAB4HGA2NBCC6S53DM0nw4
 FcwmizkX3yiGSLZQXZ4UWTLZwP/3vWBr2hMl4B55hBy6mbP7fFp1eM1Q9nKGCMBp/v
 4PRO9wr9DnDjZHx69Nrz5eds7DM4CuCL2XTKR0Y0=
Date: Wed, 18 Mar 2020 12:54:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH v3 00/24] firmware: xilinx: Add xilinx specific sysfs
 interface
Message-ID: <20200318115452.GA2491827@kroah.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_045455_208742_0170ECF1 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: keescook@chromium.org, ard.biesheuvel@linaro.org, matt@codeblueprint.co.uk,
 dmitry.torokhov@gmail.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, rajanv@xilinx.com, sudeep.holla@arm.com,
 mingo@kernel.org, linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 03:47:08PM -0800, Jolly Shah wrote:
> This patch series adds xilinx specific sysfs interface for below
> purposes:
> - Register access
> - Set shutdown scope
> - Set boot health status bit
> 
> Also this patch series removes eemi ops and adds API
> corresponding to each eemi ops.

I've applied the first 19 patches here, they looked good, thanks for
doing that work, makes things a lot more "obvious" as to what is going
on here.

The rest, please see my review comments and redo.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
