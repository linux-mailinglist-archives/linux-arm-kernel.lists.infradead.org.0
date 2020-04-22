Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15CB1B4C7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 20:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tD0MKIHpXgH8cgvVG03g2LwEVvo3ArubTJwaJHKo12U=; b=grIXCQjUNfX1WV
	gaD9ILerA0UKqGlVqkY1etWaq9myV9ctkD1uSxd5wdQFU3DuIa1+sYBFDEBO+n3EMc9KsJr4vFkyj
	TVvlahv3m98j05A/IHuGII8MuonmfNi/fZglU2ql8P5tJrDcog4cec/Nsmd5EPSmxXoD71ohWTB4m
	H3TomtXWgm84y4JP4+N7dZYxo9NSL2Mv2zST1jxUGK01JI8daW7NhPSN4AYf9FLAWQe8/QPx2zWXU
	dY7cYscLpVKWX4eFf3V/+M0e8iItuVOWLQjLNyK50l+ophqSq5soohh6W6q7+iOxSgx4hZdCzjVAl
	ETyi4wGwiUinlNVRPkxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRJo8-0004jU-B9; Wed, 22 Apr 2020 18:09:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRJnz-0004iM-2v; Wed, 22 Apr 2020 18:09:04 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4867B2076E;
 Wed, 22 Apr 2020 18:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587578942;
 bh=DbXSxiXMHu9tU9vMTNParw5iSEIHMpG8ZCFcfxstLUg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y12gr1v8W3Cp5my1PFVQOqrT0SNBpbvuG4iD9FgpkkdHHdSLfpRXKfi0+6uOMVdWV
 dKVWetYESo596O1mJfxXE8Tkhhozi1bUCryhNmRDCs1TiAsHMY/3CF7hvaTANkoKoh
 FVDAUp8UhagDM3QQ8E2ewFDBizGrQFbskObzXK9Q=
Date: Wed, 22 Apr 2020 20:09:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: sean.wang@mediatek.com
Subject: Re: [PATCH v3] tty: serial: don't do termios for BTIF
Message-ID: <20200422180900.GA3454664@kroah.com>
References: <cc41ea10be9ab96568f0371784e3b9f8d9f434b9.1587577548.git.sean.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cc41ea10be9ab96568f0371784e3b9f8d9f434b9.1587577548.git.sean.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_110903_145398_EDE5F45E 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: andriy.shevchenko@linux.intel.com, Steven Liu <steven.liu@mediatek.com>,
 arnd@arndb.de, linux-kernel@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 tthayer@opensource.altera.com, linux-serial@vger.kernel.org, jslaby@suse.com,
 matthias.bgg@gmail.com, sr@denx.de, mika.westerberg@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 02:02:08AM +0800, sean.wang@mediatek.com wrote:
> From: Sean Wang <sean.wang@mediatek.com>
> 
> Bluetooth Interface (BTIF) is designed dedicatedly for MediaTek SOC with
> BT in order to be instead of the UART interface between BT module and Host
> CPU, and not exported to user space to access.
> 
> As the UART design, BTIF will be an APB slave and can transmit or receive
> data by MCU access, but doesn't provide termios function like baudrate and
> flow control setup.

Why does it matter?  If the connection isn't exported to userspace, who
would run those termios functions on the port?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
