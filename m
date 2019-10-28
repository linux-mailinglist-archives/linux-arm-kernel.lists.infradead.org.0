Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC25E707F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 12:35:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UekwHkAfd1vWwpi+cKKz0oJNKNXpZrq+WWwKOgIKsA=; b=sVVKssQ1GKpj9V
	+4cJpn8NjlWEw4hgQeJdpXrADWkrPZhqiq6VFL76Ljc3Vd0iaZsKjLk8XIJW2cBDLVFVE0fBnP/R1
	AGVHxrsRW8vTiNdCqs4C6FfBryHwVCxSQxjKCRmaQPsB1dwMjsVbGD06O1PsZIq6cm/Nf86XnmCCd
	fSCq3XH3fFTr4YgTvvgE7xN0h1OhSocSwJUa3c1SJTtHRPCUqnmU/2fUgcPmUOLZKl9wwqCtKFI9z
	92uWxVbBtK8RaPHZ/Na9b7Rbcpo/If2gpD+7Dr90zvo3fEoPqZIlUS/zp+KT5chUzdsc3ndrteXib
	+hbawVFAjCcbO3+UDgAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3Is-0007QZ-NT; Mon, 28 Oct 2019 11:35:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3Ib-00079l-8j
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 11:35:02 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D0F0920873;
 Mon, 28 Oct 2019 11:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572262500;
 bh=8W/eAI/xIhgjfqFM7WlcqXxv3DWk2HLLJvt0/XMzVyM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C7FiH8b7uxMyuvyMM3w80cgzy9CUz+P5b5w2BudIXW6l+2sVbTgDypvJaDPm9zTrc
 h6xPZyGIruMZjK0mqZ08fwMqx4+8TECT0y+9OiGMRzcj6bLaEYtQHgf/poYzQGr/SM
 VmAM+HttWo4pe72Z2PCtEX4qoJ6t1cMVGHCznvag=
Date: Mon, 28 Oct 2019 19:34:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] ARM: imx: Add serial number support for i.MX6/7 SoCs
Message-ID: <20191028113428.GC16985@dragon>
References: <1572254161-18914-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572254161-18914-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_043501_342600_1AF13E02 
X-CRM114-Status: UNSURE (   8.29  )
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
Cc: aisheng.dong@nxp.com, s.hauer@pengutronix.de, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 05:16:01PM +0800, Anson Huang wrote:
> i.MX6/7 SoCs have a 64-bit SoC unique ID stored in OCOTP,
> it can be used as SoC serial number, add this support for
> i.MX6Q/6DL/6SL/6SX/6SLL/6UL/6ULL/6ULZ/7D, see below example
> on i.MX6Q:
> 
> root@imx6qpdlsolox:~# cat /sys/devices/soc0/serial_number
> 240F31D4E1FDFCA7
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
