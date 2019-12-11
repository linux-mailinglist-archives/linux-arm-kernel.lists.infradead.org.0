Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 183D111A172
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:38:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5jRTf3cBBoDKzlexb5GPc7OH6j8qOD0fC17RFm7PIF4=; b=WATu4gOqSVTpEU
	B0uMg3UZ8No+nqZs3NneTr4nhMBNItL8Hwcw0FZsCVtLNq9WyMsuXS39AeZT6unLdj5XVfFpOeC9k
	CmOQs9bl2uM7+2IzRs7JbaIiJUHkvsoFXImHgQSGvjFG4vNAGR9lYVmhDeMChhLe5NtJIpRb5LQ5Y
	HKMaxVLZdWEMc284X3zXD0wgeM1oyWdWHDlbwpBA4rp0MF2qM16fJLtOyKhMjui3aISrvRpZpo6KS
	BMrYtb7NrFtMUpLSpPJ+BGs3msP0VeGby75s7kO2lZCsGbQA2dfDMFyP/NuXhE1zdE85OheNIYto7
	LK1E2tUFGqjBAlfZxlDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iert0-0007PE-Tx; Wed, 11 Dec 2019 02:37:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ierso-0007Oh-UN
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 02:37:48 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AAC8E205ED;
 Wed, 11 Dec 2019 02:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576031866;
 bh=U8f1XcZK3n6lSl5R6lQHzlwPeNFYsDJY2wujLIgOgzg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rWN08mI7F053i2jf5SNTd8dUIADCnpj4/50DSSEvKtWSB3EK/oddoKp6ph4bwGpAI
 +JXPoWFuQ5NvFb22jA1Rkz/c/xc84q1rekUPcYfzpjZZrxOCuKX+b6Q5NfsRFPU0gj
 T93+0G6f3NKGIWdq1gzTucfgqGRyGFj8IheACLaA=
Date: Wed, 11 Dec 2019 10:37:38 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH RESEND 1/1] ARM: dts: imx7s: Add power domain for imx7d
 HSIC
Message-ID: <20191211023737.GE15858@dragon>
References: <1575342112-14702-1-git-send-email-peter.chen@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575342112-14702-1-git-send-email-peter.chen@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_183746_996531_A9576D24 
X-CRM114-Status: UNSURE (   6.62  )
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
Cc: =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 11:01:52AM +0800, Peter Chen wrote:
> Otherwise, the system will hang if USB driver try to access
> portsc register.
> =

> Cc: Andr=E9 Draszik <git@andred.net>
> Signed-off-by: Peter Chen <peter.chen@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
