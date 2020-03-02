Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61731756F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:25:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=prT5K3DtixzywRIr7UYtO+51if0gDzuq1mgFNfclJrs=; b=XZXRrHKjxnr7vm
	SX8j0tAGRyvGmYUJV2RfygTj9Sy+6mnw3RyIdTySm/KOBgJJZOz/20BjjFPJLIe8CiRyM1CefSQPE
	GTPmDKMj4CRRLbpvnBATvwRlbk+MovenuJTF90a+YUebIFkGMZKW5da0t/h7CDep8yGGUw0sX0B1k
	FsV3dVNhwFtBxw7ad92DHZJl+z1gIg66xK/6Z9GSlsqxSCFLPhpqB28LbpRVttlRrpeve8ArmRjLB
	g0iqqarYBWoIm0dZzn037VCVmU16FXFTEgcqgwbI0fTza8CW6yLSuhf6iKlKNPL2lhmD5FT4HKyzp
	f0w352TRsMKSAKdaIcAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hJp-0003zj-EO; Mon, 02 Mar 2020 09:24:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hJi-0003yx-2T
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 09:24:51 +0000
Received: from localhost (unknown [171.76.77.132])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 750B624695;
 Mon,  2 Mar 2020 09:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583141088;
 bh=sRxuK443/SmO92erZi2ineFAz+CJF5wRLU3TMFhkAdk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TqHbqJVzGE3ypoqI0Dm2v+eJ5EdlyTfYQ9S11WElrwOIfwMPISzMpXBSLqTeTX9X/
 9d+Mwo/agmz+q7SuIDwXNM0cJHBqOJYrZLFt/EHUxfDW/SumFSc0Plhs2i+4wtq9Mk
 3MJmYWJ8nZwP3y39AelOyEMVtA+30omCU6Wgqfz8=
Date: Mon, 2 Mar 2020 14:54:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [RESEND PATCH v4 0/2] dmaengine: Add UniPhier XDMAC driver
Message-ID: <20200302092444.GJ4148@vkoul-mobl>
References: <1582271550-3403-1-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582271550-3403-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_012450_137733_AFA902E1 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21-02-20, 16:52, Kunihiko Hayashi wrote:
> Add support for UniPhier external DMA controller (XDMAC), that is
> implemented in Pro4, Pro5, PXs2, LD11, LD20 and PXs3 SoCs.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
