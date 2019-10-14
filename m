Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E739D6187
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 13:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJXllkTtcQMlvj4YzwUYyGkticmXxwpp3BBSfwOeuQk=; b=S815eUlCxquFgM
	INyXOaXnzA7CyXAhuHjOu94P56CJjqS+9c8AeEKJhRt7zm7TARRZv4ZLH+f+2EP1LFs4a+h6abo/I
	UHO6nkLuX2LGxISuoVK3yrTjAlODG8WrtNGFLs5fKJ+brXeTZs7JmsP25SwghrXxI5Nsvy5rigBJ8
	OCN+MD4BrJKJOgyStUMKVoCvmGz5VUDvQPLzFeuBnwt4zAyy0m0eCm8o0urv6K7p3OlUxwIwIyeT8
	KC/tIq62Ds9Izo3j/ujaRYkPBvhk2+A6/tPSadYJH8etgfMBSWJYPDqSs3PVSwiCa+vsQ/BQdIVE7
	0tBqPjomzvkQJhCIFWuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJyje-0003T1-OO; Mon, 14 Oct 2019 11:41:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJyjV-0003Sc-1V
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 11:41:50 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4792A206A3;
 Mon, 14 Oct 2019 11:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571053308;
 bh=fW9TMmGkgzQscWRnI9St2iXzQDPyq09S5uR0eA8c/TY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AsXZrwelIw9Orr74kYKNY+YQ+dMW4VgakAO50X/VAJVIcUZGFLNdGEMKIZMu/u6/r
 t09OokXTct4rCVJhDOW8FHwans0Q5oOxYU/sl/NN9sIpK393inTz8P1F2CSt0StLbl
 3/1HxuTSUNS4SLlFLkIDirQMGEsFp6By9w5qf1Hs=
Date: Mon, 14 Oct 2019 19:41:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: vf610-zii-scu4-aib: Remove internal debug
 network interfaces
Message-ID: <20191014114134.GP12262@dragon>
References: <20191005154240.22153-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191005154240.22153-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_044149_104080_FEDF7777 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andrew.smirnov@gmail.com, linux-arm-kernel@lists.infradead.org,
 cphealy@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 05, 2019 at 12:42:40PM -0300, Fabio Estevam wrote:
> "internal_j8" and "internal_j9" are network interfaces that are not
> exposed outside the board and were only ever used for debugging purposes.
> 
> Get rid of them as they are not needed.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
