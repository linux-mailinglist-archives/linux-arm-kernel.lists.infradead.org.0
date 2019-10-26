Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE834E5A4A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 13:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXQjio8e7se5EGAbIKzyoUTKdpcPz5nG5rcXLU/FpWc=; b=Fv45msgChRiy8m
	F8QCFBiZE6QF2/726VJ32P9GiQE3Nl9wRSKjhqLzGt/zABpBK5XGEGPDNjUcY7qXSTohuZLS6Gt4Q
	g0BeZfskDnSXvoXxhB5Ln1tUK9Jvh4ufOYMdLoDxh6SborlB9Oan0ajeH5cq7UrK5JULNUbJsmUCv
	VCcoMJnkVHlmqD/eYqZsHkdylpzycBJ8TiLNVZ3GyMqBiPj6gIEPgSrZPr7jP6aUzQBZreUfx04YD
	PRiPaSaZRje2M1KfAaT6M4NjDLny9F9cGONkyoXoORySZNkiTLBQ2sxcAAU7N4eDJfC+K+tvkmmla
	C0FBOqbnOOFA69yxnZVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOKZJ-0001Zj-1K; Sat, 26 Oct 2019 11:49:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOKZ7-0001ZH-5y
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 11:49:06 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99275206DD;
 Sat, 26 Oct 2019 11:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572090544;
 bh=HEElGzk65GBzExbILyhqFsb4zbZh3puZKjQps/d8zfU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jLmWLLym75gW8Jo25Tvk5fVHa5fMRHTMyOj/gMC+LVOs8KG8JXO4uJ3VN0asmNDIz
 iCOAU5/4sZGBuPAVVXL8/yqPv1IqDwSNNV42108h1vF8VMSCwjI+FUtvtE1aKUHusf
 RNq8I3nHPI3hyS08mfn8MhioUPgp3btrhQKeTxY0=
Date: Sat, 26 Oct 2019 19:48:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] soc: imx: gpc: fix initialiser format
Message-ID: <20191026114849.GI14401@dragon>
References: <20191015140909.778-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015140909.778-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_044905_249989_6212CDFF 
X-CRM114-Status: UNSURE (   8.55  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@lists.codethink.co.uk, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 03:09:09PM +0100, Ben Dooks wrote:
> Make the initialiers in imx_gpc_domains C99 format to fix the
> following sparse warnings:
> 
> drivers/soc/imx/gpc.c:252:30: warning: obsolete array initializer, use C99 syntax
> drivers/soc/imx/gpc.c:258:29: warning: obsolete array initializer, use C99 syntax
> drivers/soc/imx/gpc.c:269:34: warning: obsolete array initializer, use C99 syntax
> drivers/soc/imx/gpc.c:278:30: warning: obsolete array initializer, use C99 syntax
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
