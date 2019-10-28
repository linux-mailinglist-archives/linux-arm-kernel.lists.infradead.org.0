Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA748E6F2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 10:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rx66ndQqfS3wnBNnH1GRLMYSslWCZOlMlkpBXdmI+NU=; b=iNxtqcjNHphhG5
	o6FD3jbUdwvacoKKI4sWFCeaJl8vsillcyfPWL6rZ/8VhoH1kKGbHDv6Pdt368P+U6Tf+bju3RPhW
	oGDVfhodoH6h7vkhV1g6KBoR6KfC2VFVNWWLYN0lSbuugG/VUq7gInXb0YDSvxeKE+A95M/uRSkZ+
	W+ssxFJYzq41HmQSrX9Z66OqC6ZFS5W5ON4UJBvNU81aIUtSdeQzDd0vVP3v9QtwUlRXIkVKVT45f
	QngxRC3U4E6uls5KhjhgFF9GMdYU+4u2vsHOzYEUk94zPb0VjCRxGhLuYpwrovFvMZsFQmAr41oFv
	9/pGK2RhL5bbAMvbx6wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP1Pr-0003NY-PI; Mon, 28 Oct 2019 09:34:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP1Pd-0003NA-7n
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 09:34:10 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B2FB020B7C;
 Mon, 28 Oct 2019 09:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572255248;
 bh=wt7wY2XXzBNHgwGfoHCaCbW8jjguK6Tt1epg+hNe6t0=;
 h=In-Reply-To:References:Cc:From:Subject:To:Date:From;
 b=tlf0EWQenuUC9Poai0zEw4HgO3ax5MtKBHBUkhuut7YO06cu+b0OyEsix0nYsm9+8
 UoDMBDXEXSmyxjZdpI1kLeE2HBjj3lgpX+C+Z3pjr80un8JqhF9Y/Aen7PF3RPKbvc
 3Y2SrzIz3O8jaUtoll2lCgp/NByODB3xbfEM3qeE=
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-36-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-36-arnd@arndb.de>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 36/46] ARM: pxa: move smemc register access from clk to
 platform
To: Arnd Bergmann <arnd@arndb.de>, Daniel Mack <daniel@zonque.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
User-Agent: alot/0.8.1
Date: Mon, 28 Oct 2019 02:34:07 -0700
Message-Id: <20191028093408.B2FB020B7C@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_023409_306371_138F8659 
X-CRM114-Status: UNSURE (   8.71  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Arnd Bergmann (2019-10-18 08:41:51)
> The get_sdram_rows() and get_memclkdiv() helpers need smemc
> register that are separate from the clk registers, move
> them out of the clk driver, and use an extern declaration
> instead.
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
