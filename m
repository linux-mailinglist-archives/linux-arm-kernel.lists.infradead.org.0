Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA09129261
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 08:44:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7x9EX80FYfIv6SU9nj+wMf1bqyTDWvO46OxN8xBX1XE=; b=k4xueQ43CtwSOd
	sDmGEWqG2UUgrdKCp9ZSa+FChAuQrWeoeqFKtNcZOsC/9amusDWaeQ8N2/iSoscgVyrGzlmkzw0in
	kJbNEDKtAJ8FtE8GyA9TPwBTYlCOd6cuSPo7aTDn5RFBfSQ0aJGJ01mHzUHLnBda3j59kc1b+F1tY
	krIqFl1qSxmr9Z7eMa6XGb/1cad+0kpTZCM3a+D0Y3EtdGjtWyPnQLMoDVNguyxzdMhC7j8z9y9B6
	OEfVEYu9EfroBUFUEPT+cBg9qt7/qnQtP9UgOGQiKjbQARtzfoKxphBuwBmX30wSWkKdhZvMbYs7c
	EyNTaGJqsXdhc/nROqpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijINz-0002qO-43; Mon, 23 Dec 2019 07:44:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijINj-0002pf-L9
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 07:44:00 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 25FA0206CB;
 Mon, 23 Dec 2019 07:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577087036;
 bh=h6EH2+PnURrm6sSUmcVcpanV5gKp3CsoiRzWqGWTG4Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LQOUIxZv2iRve78q3Q2flctcenggUDshzxdU09nILznGnwlU/DyF7HFASDmjMLxen
 Jlz2vScxPNlI28NAE7Rn1WeOk7O/tswG+jYkha9OFYBJUvDFle8stK1TFGUO81NFqa
 kYUOijTh1xt2wOE2kzYnZbhHDN9BnwQIi/UWYMy4=
Date: Mon, 23 Dec 2019 15:43:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2] arm: dts: imx7ulp: fix reg of cpu node
Message-ID: <20191223074331.GU11523@dragon>
References: <1576671574-14319-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576671574-14319-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_234359_714067_53C21915 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, "baruch@tkos.co.il" <baruch@tkos.co.il>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 12:22:32PM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> According to arm cpus binding doc,
> "
>       On 32-bit ARM v7 or later systems this property is
>         required and matches the CPU MPIDR[23:0] register
>         bits.
> 
>         Bits [23:0] in the reg cell must be set to
>         bits [23:0] in MPIDR.
> 
>         All other bits in the reg cell must be set to 0.
> "
> 
> In i.MX7ULP, the MPIDR[23:0] is 0xf00, not 0, so fix it.
> Otherwise there will be warning:
> "DT missing boot CPU MPIDR[23:0], fall back to default cpu_logical_map"
> 
> Fixes: 20434dc92c05 ("ARM: dts: imx: add common imx7ulp dtsi support")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

For arm32 DTS patches, we use 'ARM: ...' prefix.  Fixed it up and
applied.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
