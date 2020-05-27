Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEA01E34E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJUPWhKUiWwB44wO8pIC4WZGFBfZ/YuPgipR7DRJMIg=; b=dB8Vqy6efq4pbi
	orqNfyyWBzZGycmLG3mOVhaL/lF3A/IahJ8rNKThrjsEiHkA1p3ZvsQOKccl5NHHJTqTBvJFwF6N4
	y9qVNsSbYp5J0O3OuQy5wfx+ghPN+S1fo7I3D51L6WSIfLBAiglQSlSr/uVFHdjHIF3LtcF2nlJYS
	icm949CAkd5uS9WJqLN2IClJpM3crVsvZkLHRIHPkgpX/pY54ThuIqTeUt428FqrJRtpMr0f4ttHo
	pZhrWT5iMLaFw5Ks/n6nA/svNWFg4mR6zzb95bbP/PJGgf5WvaBJV0fHX0FGY5JAJ9aV1UCmFhp5G
	8DquV+TkewLJZN0EQyBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdl8t-0003xG-VA; Wed, 27 May 2020 01:46:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdl8j-0003wf-67
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:45:54 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9DD9207CB;
 Wed, 27 May 2020 01:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590543952;
 bh=skOAIEeMhgTujA9wPOiBgduSAdizU8SP6hViN2DQrRQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=m1UHcX10J4hDkADzaerFDSfUmqzo4V2ra928S1MlVKmf2RFyIbStAEVifXu+WYtZA
 MGS+Pag/PWppgtZ0l0onCy7U/4CIXIfeHxCr4Q5Mg+IaZ5q+zYLqLp0xowY4VYcGhw
 RUxWq4aZVlYBR6bN1AblLGyQLwgjhSvTqu4lUHyg=
MIME-Version: 1.0
In-Reply-To: <20200403083040.37748-1-yuehaibing@huawei.com>
References: <20200403083040.37748-1-yuehaibing@huawei.com>
Subject: Re: [PATCH -next] clk: zynqmp: Make zynqmp_clk_get_max_divisor static
From: Stephen Boyd <sboyd@kernel.org>
To: m.tretter@pengutronix.de, michal.simek@xilinx.com, mturquette@baylibre.com,
 rajan.vaja@xilinx.com, tejas.patel@xilinx.com, yuehaibing@huawei.com
Date: Tue, 26 May 2020 18:45:52 -0700
Message-ID: <159054395204.88029.15482859565178482479@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_184553_242655_02CAC702 
X-CRM114-Status: UNSURE (   6.38  )
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
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting YueHaibing (2020-04-03 01:30:40)
> Fix sparse warning:
> 
> drivers/clk/zynqmp/divider.c:259:5: warning:
>  symbol 'zynqmp_clk_get_max_divisor' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
