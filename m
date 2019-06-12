Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBB942C9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4793J+HwEhFcL6cUs16D4kjwWa2tFJS/448p34rLlp8=; b=tp8d64BeRxtBvS
	D1qJbY5fJy9bqTMHa+13BcxVtStsHCB+c1TfiZM0PW7BQdyhU+nrN99RLzz71rWEFpxjNm9mt8gvF
	AskLkKwgByOcABP+/pMNF4TWZ/wFWidOlGOPuNnI8qx2efbqRJ2aYqblu1Kg487BgNZZOlEhVbIs/
	ECNOIEnyn0jAL6C8GDxJQ1DoOLmzfSSkWrS0tVK5zlLZaxS1dSAh7dNqBpWOBog8PJzd80vVlkQBE
	96VDO/PsW+UFD2vIXYArGGh9gRe42zsr7LbKAe6wslFVEctDfA9l98eI1fd9iW/2/VYzfWjtgZ0vA
	gpUXNp6yyYBb2TKXmSOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb6PJ-0004qG-Gi; Wed, 12 Jun 2019 16:47:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb6P3-0004oY-2x
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:47:14 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1377208C2;
 Wed, 12 Jun 2019 16:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560358032;
 bh=kfR8kNGOlTLzBEPDr9tom15y+byntqVAq6C+crySxUc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LBAJ9MxxtREFIMi+AFW1jouZWiS7hRdNIJgHmr7g+MAL3t5bzE5nb4Hez4x8nOeKM
 lwDFpewKxDJ8oNAXN5b8DfsqhjcvvzX2vymp6hgid31KOw93OkAMExDDWkj+aMG8Jw
 QsFWDLFObaERIw/mf24nSS/Obzokel2lt1mxtnLc=
Date: Wed, 12 Jun 2019 18:47:09 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sinan Kaya <Okaya@kernel.org>
Subject: Re: [PATCH 6/6] dma: qcom: hidma: no need to check return value of
 debugfs_create functions
Message-ID: <20190612164709.GA31124@kroah.com>
References: <20190612122557.24158-1-gregkh@linuxfoundation.org>
 <20190612122557.24158-6-gregkh@linuxfoundation.org>
 <8185a8b8-a0ce-4a86-84a2-b51391356052@kernel.org>
 <20190612153948.GA21828@kroah.com>
 <78da53a1-1363-fad8-16fa-4dfc6555f4e4@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78da53a1-1363-fad8-16fa-4dfc6555f4e4@kernel.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_094713_166243_4C19A565 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 David Brown <david.brown@linaro.org>, vkoul@kernel.org,
 Andy Gross <agross@kernel.org>, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 12:17:31PM -0400, Sinan Kaya wrote:
> On 6/12/2019 11:39 AM, Greg Kroah-Hartman wrote:
> >> Interesting. Wouldn't debugfs_create_file() blow up if dir is NULL
> >> for some reason?
> > It will create a file in the root of debugfs.  But how will that happen?
> > debugfs_create_dir() can not return NULL.
> 
> I see.
> 
> > 
> >> +		debugfs_create_file("stats", S_IRUGO, dir, chan,
> >> +				    &hidma_chan_fops);
> >>
> >> Note that code ignores the return value of hidma_debug_init();
> >> It was just trying to do clean up on debugfs failure by calling
> >>
> >> 	debugfs_remove_recursive(dmadev->debugfs);
> > Is that a problem?
> 
> I just wanted to double check. You probably want to remove the return
> value on debugfs_create_file() to prevent others from doing the same
> thing.

That is my long-term goal, I have a ways to go still :)

> Acked-by: Sinan Kaya <okaya@kernel.org>

Great, thanks for the review.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
