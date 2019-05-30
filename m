Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F392FCDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 16:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=soNcA98b9czan89ijHf31LcdpVZH4av9Xh3+acJt1+M=; b=ugv4H4DpFs24P/
	8mzwBWU+Bdi2zQejsP4nZsRnmYGqcEeCtCgRMmfZEthxNOOAOToe5IMT7WUnbsRMU7HOd1GZBaHi9
	kGSydY3m+iHlK2xaLV/eNF+kYt1CmlsSwjcOoGRimIam92mT/ZbMDNeQsUvNmFUpUL9B+QzSVmC+N
	jqArnnTI9sJVOKulrXfgnoahlopFA/U660dF4u8FlMInFhfUaM7SWIqodlTtyFrJKZ8eCUsfm5Wsg
	ygu4LVOShh0l/SqGJRa2sHBLJvhCJrwkPTs0klUU8T1sj8Qp9bnPypsi+E7v6OD+mKXcYJj4c69SG
	DpQ0f8WmSyl8XjEDW+Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLf5-00039p-Ny; Thu, 30 May 2019 14:04:07 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLez-00039T-Et
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 14:04:03 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1hWLeq-0005jg-WE; Thu, 30 May 2019 16:03:53 +0200
Date: Thu, 30 May 2019 16:03:51 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] arm: imx6: cpuidle: Use raw_spinlock_t
Message-ID: <20190530140350.ekpsjzadt6anhzce@linutronix.de>
References: <20190529154229.14911-1-bigeasy@linutronix.de>
 <CAOMZO5BZKNjeoCKnWT_LsL8-SzdzuWq=iVySQqmdJU63RMSAZg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5BZKNjeoCKnWT_LsL8-SzdzuWq=iVySQqmdJU63RMSAZg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_070401_641968_8D3DE28E 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-05-30 10:54:16 [-0300], Fabio Estevam wrote:
> Hi Sebastian,
Hi Fabio,

> Should this fix go to the stable trees? If so, please add a Fixes tag
> and Cc stable.

It makes no difference for !RT builds so I would avoid it. The RT
releases for the relevant kernels will pick it up along with other RT
related fixes.

> Thanks

Sebastian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
