Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813F129BA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 18:00:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmOR0xbsfjLHOxee1s6HENDtRSp33O5+htkyY6etnKM=; b=dH40F2NrE38s12
	pP7muayrvYU316E1V1zmuhPUWG+VZnKfMq2wqtFWhbUIsRNRNL3PdrsfxQ2t5qQ4AL74TQZChHTcs
	4gddGvWuJ/anst2E0Zuhlubn1nJL7+N8nilyHDsGs/S0fc1VofMGGj2UPAOoN8Qxlo238xcHdsmh3
	5po0XJQcR1/rB2myD59l51bygHYnnU17MtQmJvltma5A/RsMTbL7PjaQPTK8z8EXK7IxkbmQ3yMdT
	xeII9zT4+kMUA5xYH22nqyj/HF3tvPvyLLWaw478H1hhwAuKGIC+IlrMeVn/0GB4HKikto1li/MP/
	jZNAkp8ims3vmA+KI+FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUCbx-0006aM-8i; Fri, 24 May 2019 16:00:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUCbW-0006Pz-H5
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 15:59:35 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B80D8217D7;
 Fri, 24 May 2019 15:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558713574;
 bh=4+rchS067k+etnZl+afwYNLkDhPgxJ39VqZ3BVzy4O0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mSfPGbwLqyhe/N9Idd75C4ptW6jS6o+WpY64OZ6Y6bHR3u5+LT5n+jBUcTn6GeG8X
 6iEJBw7BahotV0mjYyYdrSq3Z4hg7eGRM2uh8LfrvpM/N1JRgipYhFCc8Z12/jHYlC
 0l4KrrrjgM8cwFT1dxdxsfuxMGatCvCekuPsaBDE=
Date: Fri, 24 May 2019 17:59:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Vijay Khemka <vijaykhemka@fb.com>
Subject: Re: [PATCH v2] misc: aspeed-lpc-ctrl: Correct return values
Message-ID: <20190524155932.GB7516@kroah.com>
References: <20190503181336.579877-1-vijaykhemka@fb.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503181336.579877-1-vijaykhemka@fb.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_085934_646695_DDA5104C 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: sdasari@fb.com, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linux-kernel@vger.kernel.org, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 11:13:36AM -0700, Vijay Khemka wrote:
> Corrected some of return values with appropriate meanings and reported
> relevant messages as debug information.
> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
> ---
>  drivers/misc/aspeed-lpc-ctrl.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

File is no longer here :(

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
