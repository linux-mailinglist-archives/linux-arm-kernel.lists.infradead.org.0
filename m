Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB9211C1F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 02:13:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oV2gUqoZ5LO/aVW172zzuW8nzY2JhayTpUOTnHYvbJ0=; b=t9v+ptIi1eWc+u
	LN+lN4T/I+lTz6f5YDJxxFvKsqfQiWt9+LDPrYxjhdMHZyYgZjjeb5/pDtE71CXN2hBqvo/7/w64U
	wtEDAWKhtgIs4JBqU5hDnOVmqvV68GX5HCUfL8pEROqUyL1P0DfWB75FOKUnlUvuF80OwzB1FKhT8
	1wpnGrZ0eEqLSExQyYB66SnucxxfziGPonBO5X20RDCq2Zu2iMeFswJNwhuMw2wxbVc3EAvReMCcA
	/qIym5htLzuCNL0Q5g0Cm5HVdZOoEyAmkH2Ng2pqAjqdwHhlGK1QBre/aX0HLb96fGmUx+GUf8QKI
	UeWe/usQWaXJHQU1Zt+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifD3D-0007pV-4F; Thu, 12 Dec 2019 01:13:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifD34-0007ol-EE; Thu, 12 Dec 2019 01:13:47 +0000
X-UUID: 3c0a0a44c1cb46a69693d15db08773e7-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=B4MILXq3ZMERWeqsdACp65BTdrLNU+AFrjMI+Ui8c0s=; 
 b=mOf6cG7lzAyHQaWJzLGQ1IwDcHX1n70k9sM+f/NzOge0xvRurzaA9nhOr+Q3LWMBQZV6cBqcyeGFUqpZAaxYRCIZ+e22jFTDCnOGhUn2hotuR3c6i3j+mwVgoqFTo2XaVR2WSk689d3oDghkpwNoo1/ZKSS9qZffPaOGTJ4GD1o=;
X-UUID: 3c0a0a44c1cb46a69693d15db08773e7-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 540718661; Wed, 11 Dec 2019 17:13:44 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 17:14:49 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 09:13:18 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 09:13:37 +0800
Message-ID: <1576113221.17653.6.camel@mtkswgap22>
Subject: Re: [PATCH v2 04/14] mailbox: mediatek: cmdq: clear task in channel
 before shutdown
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Thu, 12 Dec 2019 09:13:41 +0800
In-Reply-To: <1575946181.16676.4.camel@mtksdaap41>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-6-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1575946181.16676.4.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_171346_487816_3FED4477 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi CK,

On Tue, 2019-12-10 at 10:49 +0800, CK Hu wrote:
> Hi, Dennis:
> 
> On Wed, 2019-11-27 at 09:58 +0800, Dennis YC Hsieh wrote:
> > Do success callback in channel when shutdown. For those task not finish,
> > callback with error code thus client has chance to cleanup or reset.
> > 
> > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > ---
> >  drivers/mailbox/mtk-cmdq-mailbox.c | 26 ++++++++++++++++++++++++++
> >  1 file changed, 26 insertions(+)
> > 
> > diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
> > index fd519b6f518b..c12a768d1175 100644
> > --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> > +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> > @@ -450,6 +450,32 @@ static int cmdq_mbox_startup(struct mbox_chan *chan)
> >  
> >  static void cmdq_mbox_shutdown(struct mbox_chan *chan)
> >  {
> > +	struct cmdq_thread *thread = (struct cmdq_thread *)chan->con_priv;
> > +	struct cmdq *cmdq = dev_get_drvdata(chan->mbox->dev);
> > +	struct cmdq_task *task, *tmp;
> > +	unsigned long flags;
> > +
> > +	spin_lock_irqsave(&thread->chan->lock, flags);
> > +	if (list_empty(&thread->task_busy_list))
> > +		goto done;
> > +
> > +	WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
> > +
> > +	/* make sure executed tasks have success callback */
> > +	cmdq_thread_irq_handler(cmdq, thread);
> > +	if (list_empty(&thread->task_busy_list))
> > +		goto done;
> > +
> > +	list_for_each_entry_safe(task, tmp, &thread->task_busy_list,
> > +				 list_entry) {
> > +		cmdq_task_exec_done(task, -ECONNABORTED);
> > +		kfree(task);
> > +	}
> > +
> > +	cmdq_thread_disable(cmdq, thread);
> > +	clk_disable(cmdq->clock);
> > +done:
> 
> cmdq_thread_resume(thread);
> 
> Regards,
> CK
> 

Call resume here will cause violation. The thread->task_busy_list empty
means no task work in gce and thread state should already disable
without clock, which is what we want since client try to shut down this
mbox channel. So I think we don't need resume here.


Regards,
Dennis

> > +	spin_unlock_irqrestore(&thread->chan->lock, flags);
> >  }
> >  
> >  static const struct mbox_chan_ops cmdq_mbox_chan_ops = {
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
