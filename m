Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A36941EE778
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 17:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xn8sjMnaMTSa8x3Zl8p3gjnlC8uPw9WfsWhzltKtao=; b=IEqo8PwsOh71mH
	jNp8PLCMLEaq1rToXdMhQjivCVhl5hBHPPT4YBa2mzJT5HOTOpeRduX5oST+MWmYZNuws1JAeVtZG
	fhRFlyAAkbX/XnDYy0W04BtbkYMSRng9PQZp072I9OL1fUktx9ufwZKGOSnsn2FFoCRx155MVsk8F
	DO+z4V5g+cMHGppyD2WhYx3WD450lIA1DMN6Ak78kJEXeRsJ/1ahZ/HlS83VOY63GNWXcU46fgWg/
	6PmA8N7W3KZxp99BbsOwdE/bI5Bq9HzHRoUYI8Wk/TqubDBvMJ8RcKoHasGIUpbJ5VV60GJt9P4E8
	C/gFPsU+tc+J67M46RWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrae-00068y-Qo; Thu, 04 Jun 2020 15:15:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgraY-00068b-7f
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 15:15:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06382206DC;
 Thu,  4 Jun 2020 15:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591283725;
 bh=vmUe0q6MS+48pyYzLhEE/pA7G37y0gnmaKMXxb1Nay4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NGJ6LxCECbRycWLLamd5unS5vHGmOEfBBbZNV697BsfOwAUnUjyVWgbu+cBQ/AnxK
 ON2bOg2vAA8K4Q2UmLSNCgHaZzXl3bNNGPKfeYPEsVRTfURa7KZkM6hSu9CaJMlAdC
 Gs2Qb81O6mURXsXXEqLM+DrRVDtkRTUta9J6SYPg=
Date: Thu, 4 Jun 2020 16:15:21 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] scs: Report SCS usage in bytes rather than number of
 entries
Message-ID: <20200604151520.GB3650@willie-the-truck>
References: <20200603151218.11659-1-will@kernel.org>
 <202006031006.2E6B4367@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202006031006.2E6B4367@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_081526_296467_A8E11DD8 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 03, 2020 at 10:06:13AM -0700, Kees Cook wrote:
> On Wed, Jun 03, 2020 at 04:12:17PM +0100, Will Deacon wrote:
> > Fix the SCS debug usage check so that we report the number of bytes
> > usedm, rather than the number of entries.
> 
> typo: used
> 
> > 
> > Fixes: 5bbaf9d1fcb9 ("scs: Add support for stack usage debugging")
> > Reported-by: Sami Tolvanen <samitolvanen@google.com>
> > Signed-off-by: Will Deacon <will@kernel.org>
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>

Cheers, Kees!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
