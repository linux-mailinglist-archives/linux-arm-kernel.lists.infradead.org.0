Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F16517F064
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 07:15:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNqCnkxN5Vb4bWDlN//z8UL1+88n5BCX2SXGa8PnwVc=; b=QEd4OrEoCH6WUL
	tymmrnVYRYXmRyC7Kj9Ya366zXhNxUzaz/oIdh2CO88yiFlCZeDfQwajrRxphklThCVfpai0nxXBc
	dCkcf5Whi19ffYat9vG/sAFHQItogeRM1oE5xU3JY/O29P93QWdojzRMXPfqn596Wcs9TcqZ4Ilnu
	415WtTEpES9fvAdUHiP34CyLBSUqkV26KOZF0VYqqkLB64RkdQviEAy9ju3YW4eY5Wq/vf6yxB5rI
	8Skr0gfst3X2j1Svr0AAaksAqzPP4/LajwIUyX1xVci1n0/Ps9JqjK2NJ25anbGi/XmX/JpEdJQmB
	O2LqOeeTGNZurGWPsDyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBYAd-0002cT-Ct; Tue, 10 Mar 2020 06:15:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBYAN-0002U7-Bp
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 06:15:00 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E83C24673;
 Tue, 10 Mar 2020 06:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583820899;
 bh=8sAdUrGtVimUka0p9VL1qAnf/fi4o3APz41HdQY/Meo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J+AYItV92eqG7ojGqIfCtytrrDOCJiZIzTfgxAJsyMrS8C6UluKLKDK3XrCkHPAl3
 DWGb/cmwpVsKMdW6MXU+sSoB935UuSldzcasXglOF2iWjhA21K7i2vsUMGuxHMiQbX
 kt9kll395CLd83rnEr3eX+XkVERLH7KBTijVsI88=
Date: Tue, 10 Mar 2020 14:14:53 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6sx-softing-vining-2000: Enable PCI support
Message-ID: <20200310061452.GL15729@dragon>
References: <20200219130712.28108-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219130712.28108-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_231459_430055_CB7C0961 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: marex@denx.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 10:07:12AM -0300, Fabio Estevam wrote:
> Add PCI support.
> 
> Since this board has an active high PCI reset line, pass the
> 'reset-gpio-active-high' property.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
