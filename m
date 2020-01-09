Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B62A01355A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:22:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQK4u49i90WgcFaaIV8B2UlSGBheEMArQwnwl4eCVhk=; b=Ix/10xfAVoJkxj
	5ZKlrBJWI54Za//qZB5h6nn+DWMlzR6TyV4eNSPZv/KUZ1V341Jll97YhZyMnk8NJF8bp6r6KVra4
	pe8nbqNTV7rMuRoHzuJpukzkmi6GnqzPglBWMOjj4jC/Mm4CXEuwX006PU5t4BCCq6Xyu/DM6bqwE
	COcTiDmMd/opjvmXwpNFsTY9ch/LELvqLxpcDpWlYr4Q+YQTK/ei5+9xvvADfbjI2Xq2dXIEHmQ1B
	Uk6gLpjdEZEcNddp8a8DmVhMiUQAzCIsQ049uyLqNyAPrYUxrKd25z1JHPqo7osxAbhaE/3rKPUbK
	gP0jcNdSO36fcvX2n7MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipU1S-00069v-Bo; Thu, 09 Jan 2020 09:22:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipU15-00065M-6r
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:22:12 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABD252073A;
 Thu,  9 Jan 2020 09:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578561730;
 bh=D5oJqGB3EncKK0zm585WP+XhVuvcw9UNSuzWlSgMLiw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wIdoq9/vqL8Km6jkYdJkB9QPYUt26txrO9XwhtIxC0/LSNj0aAeYlJaqUJvVZw9i6
 v4NIikuSGoDdTiyFleYyYLO5x9M8kuqtIDgrhOYmrmF9MDlyswObgkJ+wv8iii06vQ
 4dmOwfxT23JA+v/rssefMw5ntyhHWlWpuAsjSIZ0=
Date: Thu, 9 Jan 2020 17:22:03 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: "Daniel Baluta (OSS)" <daniel.baluta@oss.nxp.com>
Subject: Re: [RESEND PATCH] firmware: imx: Allow IMX DSP to be selected as
 module
Message-ID: <20200109092202.GN4456@T480>
References: <20200104153940.10683-1-daniel.baluta@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104153940.10683-1-daniel.baluta@oss.nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_012211_287366_7E56072B 
X-CRM114-Status: UNSURE (   8.42  )
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 04, 2020 at 03:39:53PM +0000, Daniel Baluta (OSS) wrote:
> From: Daniel Baluta <daniel.baluta@nxp.com>
> 
> IMX DSP is only needed by SOF or any other module that
> wants to communicate with the DSP. When SOF is build
> as a module IMX DSP is forced to be built inside the
> kernel image. This is not optimal, so allow IMX DSP
> to be built as a module.
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
