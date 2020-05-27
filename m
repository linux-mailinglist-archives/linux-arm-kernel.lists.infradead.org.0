Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196C21E3456
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFMb0k8ZnpowGcW4QRJtZNEMj6R4GF/hF/iZhJJ8nF8=; b=ptrLcGtPYfaEKp
	r8afCz21QDMDa3fPgqbE8etlXVslfOmLILdTlSfh9uCBN/W777OaxHhlA5z7yQ8Q1CHD8Xee5TKpN
	pUlC9yqETzIKioy5+S0o/h5B6SIRJD8ZKPadOvmRivIDlm5o+6bDxD0cr1Qz3rdPAnU4yOdc9KcVO
	if4ov06d4TbTgTCY/hRCP6HCQBq83/JRTHkTcCRa8tbAMP8hNYwL9qtQDXFYrdp7Y6cd3My9aR5iU
	i4mczRDM17qbI8N7YV4hLnd/il9XO2YZcr7VCyNvwLkDE0uSP7Yl57viWkyIH+S2shKhoUl4HCV0c
	1TGC+4lF2zmL1267O9xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkSU-0000ol-5M; Wed, 27 May 2020 01:02:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkRk-0000Oc-DU
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:01:29 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E70632089D;
 Wed, 27 May 2020 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590541288;
 bh=JrTsD2iMGSvX30rQ6pUzDT7ruFhGoJkwwO5nT3DHnLA=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Xh1Jo2Y4Mbkg3kJQBo5E2lYeVqbAgpqo9Onjsn1QU4qm6YWCUir0yIBPaQbBHS1MY
 0Z5oVez97RqsKUe6ruh4K4RAS5rkdpTJuSDwUE1QDfRCKzlpT00QCXvgK9sZn1ls+v
 g6p8BD9BUImzfnTkpzysszKJ4AL1VH6T9j6iDh5Y=
MIME-Version: 1.0
In-Reply-To: <1583185843-20707-4-git-send-email-jolly.shah@xilinx.com>
References: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>
 <1583185843-20707-4-git-send-email-jolly.shah@xilinx.com>
Subject: Re: [PATCH v2 3/4] drivers: clk: zynqmp: Fix invalid clock name
 queries
From: Stephen Boyd <sboyd@kernel.org>
To: Jolly Shah <jolly.shah@xilinx.com>, arm@kernel.org,
 linux-clk@vger.kernel.org, michal.simek@xilinx.com, mturquette@baylibre.com,
 olof@lixom.net
Date: Tue, 26 May 2020 18:01:27 -0700
Message-ID: <159054128731.88029.11937261949939343886@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_180128_497717_32D2604C 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, rajanv@xilinx.com,
 Jolly Shah <jolly.shah@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jolly Shah (2020-03-02 13:50:42)
> From: Rajan Vaja <rajan.vaja@xilinx.com>
> 
> The clock driver makes EEMI call to get the name of invalid clk
> when executing versal_get_clock_info() function. This results in
> error messages.
> Added check for validating clock before saving clock attribute and
> calling zynqmp_pm_clock_get_name() in versal_get_clock_info() function.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
