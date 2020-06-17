Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9C81FCEC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 15:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cH1ewxVFTyMYPcDR04aaMZSSeIh8kJBw84bCqR9B6i0=; b=t5U4mp0KcFMnJt
	sWK2HIztdsL5PREULwEoTXJLmKJ3Td//iUg2KhQr+GrNdS44+An0j1K8I4UJ3i5FTGpBAHgrvkPQt
	eqsxAbosjGzY1Kq+mfAXFcI5cKpNaXg01ZIskwYIVrSBrl0/VSLnYVLAaC+R9UxjZNMnZW4yh+/pS
	kDMt3c9W22edGsERHA+JS14x9Z02teIWtXZBYq+iT34nujDL8/iQKautn2AJOG0RWDJ+Npviwnx0z
	PTq1q6kLXJ534490y1aXNwIRIE4Aq6xiqxclx0ck2GjWK8tlm8FP0YebmnyIGvX7A2zqvd4YEpUGB
	aHqsfDq3NGx+nrnTfjug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlYQf-0000e6-MK; Wed, 17 Jun 2020 13:48:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYQX-0000dI-JZ
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 13:48:31 +0000
Received: from dragon (unknown [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5291F208B8;
 Wed, 17 Jun 2020 13:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592401707;
 bh=/WSk7qORPqa6zZW4wBawrFT3hKVpsXgyi8TneEQdbQA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0SPjckGIAsGEMO6pdj5MsgCDdy8IvavB2ARGaQCmr0b1/8YvUQdO1cEz4JmuOyuSd
 hUHHjkbDAu64x100rhNsWimz4uNWwEwzeQor+V6IFXlrtY1Nklp6na7SwhWmTRI5fL
 uW7B7HuxKj8ldkEKYJJzBNfAyfQ13ZeRBaKEf744=
Date: Wed, 17 Jun 2020 21:48:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] firmware: imx: make sure MU irq can wake up system
 from suspend mode
Message-ID: <20200617134813.GA30139@dragon>
References: <1587683231-18468-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587683231-18468-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_064829_672335_5E174C31 
X-CRM114-Status: UNSURE (   8.67  )
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
Cc: s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 ben.dooks@codethink.co.uk, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 07:07:10AM +0800, Anson Huang wrote:
> IRQF_NO_SUSPEND flag is set for MU IRQ of IPC work, but with this
> flag set, IRQD_WAKEUP_ARMED flag will NOT be set during
> suspend_device_irq() phase, then when MU IRQ arrives, it will NOT
> wake up system from suspend.
> 
> To fix this issue, pm_system_wakeup() is called in general MU IRQ
> handler to make sure system can be waked up when MU IRQ arrives.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

I see you guys haven't got agreement on patch #2, so applied #1 only.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
