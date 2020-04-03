Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 603DB19D3C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phhj/sqL3/WFlOY+HJCL820s0NThGOzmKB2yn+M+cmI=; b=MqZ5nO1I0uQ/G/
	kMQyFswAQOyDsCw3/7/xqHMKgQuPj8Z5ctzlB8iFZe9dlClF2PS56WnSTOyX4iU0muRYrOEQ4MsZr
	HCcFBw60yo4HvGm0R0gP3bLJaEEZuJ47HR5mYlFWFg3X4l3LLkFAAyh8mnyfddaZlJuVVCb0AzTpQ
	0Geke/+9QRkzhCu+S/21YD+e5x/Qju9x1b7Ao8sGaABByElV/TbIA9YckXu9qa+ERFsse7JbfbTns
	vu8XfG2A9fJHSI/F0Bmdh9BxOPR0CjOscKXu0GBVo8vQ7dpWizQS2YODyYgryjzr924IdfU6IhqIw
	tTXDKsN4I4zbdvdJem9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIgc-0001wR-Vc; Fri, 03 Apr 2020 09:32:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIgV-0001oH-W4
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:32:21 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F9A020737;
 Fri,  3 Apr 2020 09:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585906339;
 bh=Iq/LhB8NAZ/CjwHGsRN10k3MzIs5p1MdtNZQUkxqs4c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ElY9O11j86clnxxepd/zkDjpHk399bUoJ91n5TjpNSTBzVzjjINNYaQemyG8U2iu+
 koq3A3erZmlzxzGiaG/rMNw4BE2G7V9bsk2s1qeIn4OP9TntcUk8gsCoaKmZAr7OFd
 yJA/xEsXAldPwCPAolO1B6hp+S2e0vBkhH0jjf2U=
Date: Fri, 3 Apr 2020 11:32:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH 0/7] serial: uartps: Revert dynamic port allocation
Message-ID: <20200403093216.GA3746303@kroah.com>
References: <cover.1585905873.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1585905873.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_023220_057554_06E2F819 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: monstr@monstr.eu, johan@kernel.org, linux-kernel@vger.kernel.org,
 git@xilinx.com, linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 11:24:29AM +0200, Michal Simek wrote:
> Hi,
> 
> there were several changes done in past in uartps drivers which have been
> also done in uartlite driver.
> Here is the thread about it
> https://lore.kernel.org/linux-serial/20191203152738.GF10631@localhost/
> 
> This series reverts all patches which enabled dynamic port allocation and
> returning driver to the previous state. There were added some features in
> meantime which are not affected by this series.

Should this go into 5.7-final as it's causing problems now, and
backported as well?  Or can it wait until 5.8-rc1?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
