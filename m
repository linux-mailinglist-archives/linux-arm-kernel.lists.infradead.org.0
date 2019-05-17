Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62294211F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 04:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uWVaRANVrgT2a3BvsJAJCPYyFcuaS+e7u4ONeNTzkYM=; b=T883XojvMJ9jfz
	87rzY9d0w1EfBnD6UnLX75f5nQ+4Hpsp8L1M3mnsLg4O3im6/B1wE4x53KjI0gxVUbZZ4pfjApD2j
	+EeEyFehYDniu7cyyDfpoSa7O/j6BNMCfFo/JjLIvsfMHYLXcxBecWK8fxnuZqM4BelTed21WNOKG
	D1G7GEQe5Jbw2osi2Ss2h5Ok+lcpllZuhxFxHgNUGiPynJrsK3Lrsbs8F+bx0I17tkNBnVgQf2F5j
	nqcMsAZznPqDIU4SGJs9LtrGMRQI5WsbhuSLyJamGvDovvquKKSB/x1oe5GzzBNPzvEMojgQTI2pP
	tpNdGkZbPc1KDkxRW9QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRSSj-00039J-LN; Fri, 17 May 2019 02:19:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRSSc-00038z-MS
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 02:19:03 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE15A2082E;
 Fri, 17 May 2019 02:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558059542;
 bh=nARCEVLAIzSEmqgB0RB23cMMYJM9nQwPDNwt0zlMdF8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FWQTN2rQijsyoGr6NBhtCsN8q4ds5QlzNoUvZ0AEfXt73DXZAjTSWLGxvrcyA8Me/
 5FC37Xcqx5LIf9KOS9fDgRifIwZaIfFWQM0OmUhTv4PRF2SLobJcYTwFTuaRs3zZnX
 yxdinrLxxmrm1Y9dvd11mBNs3onrhQvX1FR7yZt4=
Date: Fri, 17 May 2019 10:18:21 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 1/8] ARM: dts: imx53: Update UART configuration on
 M53Menlo
Message-ID: <20190517021820.GX15856@dragon>
References: <20190515224601.4527-1-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515224601.4527-1-marex@denx.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_191902_749615_7CC3E1FA 
X-CRM114-Status: UNSURE (   8.56  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 12:45:54AM +0200, Marek Vasut wrote:
> Enable flow control lines on UART1 and UART2, add matching pinmux entries.
> Add and enable UART3 with RS485 mode enabled on boot.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> To: linux-arm-kernel@lists.infradead.org

Applied all, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
