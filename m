Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B45161BBFFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFPAeF6TEBhyQrn3g6QXYni7Tud6za36/EkQiyGIhfI=; b=f4JMpPnCJ55UF9
	6ozzTenagbAW+4+X2cxrDnaCbCa6n+MrZWXUgOzZdM8QfLt4tGyBOElvfn3QVvbbKRpmxfEe32rMp
	yzS6n2/D7FrjSPtE94HW/xYNJnJvWfeLUJDXCLyHPXlz9LlhcrCkoby1rDQC6i3jSMCAsZhsduzsW
	CFba1HBRORfPQe4WWq6T/F7dSVh3GVx8AFLLt9mGjs0E6fIfo3fAB3QWjrb+f3e3LXdj2SFhh9kYb
	EK5+g0GbE+EWdvJakRB5mUIVshfFqmtDAguBbuduYMCKFEmHsTzCeVkJXNKlOsRqttyGjEXf/7H7q
	gQF+b8F+nB0xsVkw/9kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQTW-0007Md-KQ; Tue, 28 Apr 2020 13:40:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQT8-0006N8-Mf; Tue, 28 Apr 2020 13:40:16 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC285206D7;
 Tue, 28 Apr 2020 13:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588081213;
 bh=z6FwCpZc4bewQTILO5ed54oDlhcVRcQNbY1dTaBbd6I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cVkICW4Z7Gqg9PFeTpJx749wpYdzY1xShHb2yMmN+xaT45MjnilFD+afecPd9dSto
 sCzuyHDpAkyNOtqJYSPbwgTSTHwvuxcIZn0gS4NvHa860NVVh5lfoqvwLdsHACsIrT
 W/NEXMgeOvEPPtZv63J1pgPB/026WMACNMYwLFKI=
Date: Tue, 28 Apr 2020 15:40:10 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: John Oldman <john.oldman@polehill.co.uk>
Subject: Re: [PATCH] Staging: mt7621-dma: mtk-hsdma.c: Fix Missing a blank
 line after declarations
Message-ID: <20200428134010.GA1374852@kroah.com>
References: <20200426161319.23941-1-john.oldman@polehill.co.uk>
 <20200426170719.GA2138855@kroah.com>
 <CA+JojbpBAkBHqZ3RUXjf-u-j9DUoS_m5oYwHQ=AWWp7qWQ8G-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+JojbpBAkBHqZ3RUXjf-u-j9DUoS_m5oYwHQ=AWWp7qWQ8G-g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_064014_859158_4F3A8057 
X-CRM114-Status: UNSURE (   9.38  )
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
Cc: devel@driverdev.osuosl.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 02:21:25PM +0100, John Oldman wrote:
> I was not so happy about this one, even though I went and committed it.
> 
> Without the blank line checkpatch reports:
> 
> WARNING: Missing a blank line after declarations
> #160: FILE: drivers/staging/mt7621-dma/mtk-hsdma.c:160:
> + struct tasklet_struct task;
> + volatile unsigned long chan_issued;
> 
> So I dumly inserted a blank line to silence checkpatch.

As checkpatch is just a simple script, it is not always right, don't
blindly follow it.

> In hindsight maybe a false positive, blank lines in a struct might not be
> helpful.

It can be, but not here.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
