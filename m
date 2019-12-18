Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDBE123E34
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 05:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Fo1HeZ2p10y+X9eXB59guBi77NF75KxOBxcFszQxZY=; b=qLxESWCMjtZzGR
	xMFjxOt1W3XLJXUveHe7+8tA8D3NQslmbnxQXbKgLtMRnzUO8Jtlcvqtb6dkHVqefMnn3uuucKHon
	NQvC+RlikWblmnyFVrr1rlkUjgZlfYLD3K8VdR7MXrVMmdiMoe95ufuDOmR3XnmjOdXENhzLXXmGM
	bWT7VWBoYlN4QMTNUGWourYM6I0zRzIaGkvWDP9eMimg3dpMM5lIV+IT7ij4JYnYLQW9swt4mxBR/
	CZPylBGlzC1smeQdTAsvnCgq+MgusUaPA+epJgRwwpH5hAOK3G/OKH+S8PigUQ3wVnKiV7/SRr0p6
	lQlArQc8UXYoJ13BQ96Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihQYK-0002xs-2w; Wed, 18 Dec 2019 04:03:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihQY8-0002wc-Fy; Wed, 18 Dec 2019 04:03:03 +0000
X-UUID: 30dc4cf4f7414176a5ea8f275525b2b3-20191217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=JgEIyQg1MGN6RIP2uMOeIekA1H6Nku9DNihrJErp254=; 
 b=DDowWujpl4LXOfs+8FR768+1sjfc2gOhPQSOyaGFp2Uexv1aALgK/rcNe/G576vU+A6DxqkEbw4qQKdeST7OASumbNuWG3DyXAQNnJ1rr4gW6NjXvomZbLaD9hDcyPZuiWIT45hJPspX5wYa7VvMJF4ASx4HiF4gHeV0n1s9Lxk=;
X-UUID: 30dc4cf4f7414176a5ea8f275525b2b3-20191217
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1799524301; Tue, 17 Dec 2019 20:02:54 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Dec 2019 19:53:12 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Dec 2019 11:52:19 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 18 Dec 2019 11:52:23 +0800
Message-ID: <1576641171.13056.16.camel@mtkswgap22>
Subject: Re: [PATCH v1 2/2] scsi: ufs: disable interrupt during clock-gating
From: Stanley Chu <stanley.chu@mediatek.com>
To: "Asutosh Das (asd)" <asutoshd@codeaurora.org>
Date: Wed, 18 Dec 2019 11:52:51 +0800
In-Reply-To: <a36d111e-ef7f-9f9b-6f6a-692a9980103a@codeaurora.org>
References: <1575721321-8071-1-git-send-email-stanley.chu@mediatek.com>
 <1575721321-8071-3-git-send-email-stanley.chu@mediatek.com>
 <a36d111e-ef7f-9f9b-6f6a-692a9980103a@codeaurora.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_200300_544291_F76492AD 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, pedrom.sousa@synopsys.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Asutosh,

On Tue, 2019-12-17 at 15:25 -0800, Asutosh Das (asd) wrote:
> > 
> 
> Hi,
> Does this save significant power? I see that gate/ungate of clocks 
> happen far too frequently than suspend/resume.
> 
> Have you considered how much latency this would add to the 
> gating/ungating path?
> 
> -asd
> 

Yes, we have measured 200 times clk-gating/clk-ungating and latency data
is showed as below,

For clk-gating with interrupt disabling toggled,

	Average latency of each clk-gating: 55.117 us
	Average latency of irq-disabling during clk-gating: 4.2 us

For clk-ungating with interrupt enabling toggled,
	Average latency of each clk-ungating: 118.324 us
	Average latency of irq-enabling during clk-ungating: 2.9 us

The evaluation here is based on below Can's patch therefore the
interrupt control (enable_irq/disable_irq) latency is much shorter than
before (request_irq/free_irq).

scsi: ufs: Do not free irq in suspend
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/scsi/ufs/ufshcd.c?id=8709c1f68536e256668812788af5b2bb027f49c3

BTW, the main purpose of this patch is aimed to protect ufshcd register
from accessing while host clocks are disabled to fix potential system
hang issue. The possible scenario is mentioned in commit message of
patch "scsi: ufs: disable irq before disabling clocks" in the same
series.

Thanks
Stanley
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
