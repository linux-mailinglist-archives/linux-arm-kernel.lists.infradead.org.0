Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8302130D5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 07:03:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:Subject:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=joNGGOykgfXv3wNqakUSx8cI90vPN169oyPnbzw4BLw=; b=sBUxsbiRJX+/F3
	uFZHH0B6wNZxH3jXiKH0VZCuiPhtXVcSroqg/KVGqvqTwZcRv9QoyYIA4xJcRfyqbBxMMXMz3QWCy
	DdupYXL0OTECdA07yMIdjgqgdxh/gDDteK9D1/Me4Brl9TMGcLmJawHnB9kDiJqm5ZF6jyktEEKu1
	ltS0/GBinwGSlf7NyqjnMcn5eQSHqNBjHcNTi9uoeZC+n8WlK3gpBYDGrtZWAu6ltdnOraxxL+Wu3
	Rm9lB8YtZF1oRgqQiFNDu2pMWl0E6pAlYp0ErdpOLJikE+b9kHTBzLoeIa98un63wDDKnv0dQnjGm
	u5lHlc1n7PhiG+iaLAYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioLTZ-0005Tt-Ro; Mon, 06 Jan 2020 06:02:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioLTS-0005TX-Vb; Mon, 06 Jan 2020 06:02:48 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49A5720848;
 Mon,  6 Jan 2020 06:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578290566;
 bh=5hxva25df32tAsqNh8cqFx9odnLgu5hRKNw8HZPCLjk=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=eJpHhyL6Zn+jn0TWh26dV/uWPfkkWmsibBqQhvb21LVcA6A7krW1p2EYvzXNOKOcK
 ZHOPLcOkOfPCnDSxRNQ3b9pxbUrX2wYkH4wWSFdwiASwgMB9KVTYbGmcU+0aeg6ay6
 vV9ndySbUZQE22ipz4z55cTxtK2FyQVvBOuHX2Vk=
MIME-Version: 1.0
In-Reply-To: <20200106045833.1725-1-masahiroy@kernel.org>
References: <20200106045833.1725-1-masahiroy@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] treewide: remove redundent IS_ERR() before error code
 check
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 05 Jan 2020 22:02:45 -0800
Message-Id: <20200106060246.49A5720848@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_220247_037936_2102F9BD 
X-CRM114-Status: UNSURE (   6.90  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-acpi@vger.kernel.org, linux-gpio@vger.kernel.org, netdev@vger.kernel.org,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Masahiro Yamada (2020-01-05 20:58:33)
> 'PTR_ERR(p) == -E*' is a stronger condition than IS_ERR(p).
> Hence, IS_ERR(p) is unneeded.
> 
> The semantic patch that generates this commit is as follows:
> 
> // <smpl>
> @@
> expression ptr;
> constant error_code;
> @@
> -IS_ERR(ptr) && (PTR_ERR(ptr) == - error_code)
> +PTR_ERR(ptr) == - error_code
> // </smpl>
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

For

>  drivers/clk/clk.c                    | 2 +-

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
