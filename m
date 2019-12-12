Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 630DA11C259
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 02:40:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sB6U6joNH5AFXJJJ06fSzGkeOnYC+Ytpq4Kz+J/ftMA=; b=qSEKtxqIiXK8UF
	G1KCbCYRyA+pkTSEcSdP0ihspP33F15tsz4823Pem94GvLTXZevefjBamLVUFe6M5bg5Zrou0BpCB
	gqCrhGuwi/MuJOg+LGxHFJEg97TjytBTtLLAfZfIVa6PyGwDg7ZdaLQD7S5GSzoh8MiK+7ABTmtEJ
	fV0534RiZMRhAu63BZZ7i0A+Z2aM+Rktj9uqgWPnLTLgMIoVO5KbOC5MRfGdyqkcI32+CiuGv4epe
	nIOoGdtwhHWAmoefCloX6ExQYN3Uwyu7RhSnhysiUd0+juTU2fHuJUp89H+bVfCdqI32thYJAPyS4
	2BmR1mPf4Xas16ZDJlOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDSL-00017K-PG; Thu, 12 Dec 2019 01:39:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDRw-0000v5-II; Thu, 12 Dec 2019 01:39:29 +0000
X-UUID: 1702119128d14e9c99d16c36f024943a-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=q8/oNDXucgX/Eg8dpJir+m+Bj6aJJFfQRqRdzNzivkQ=; 
 b=ctJMPO1bAR3Ly2dqN4Olo+fF2yHpLIa9kh2ZJAHPYmCmIAzUmmnMY9vZGr6WTQFaj0zbeNeb2k1k9xJYi3MYtzvq7PsDOrHivdeI5i3dmpSJbpUGx0oTPJbdAWvZ0KRjmNS+mjSH9JultH46G/UUVQz1Veou8oBYQxCvbReIafI=;
X-UUID: 1702119128d14e9c99d16c36f024943a-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 242196001; Wed, 11 Dec 2019 17:39:22 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 17:32:52 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 09:30:38 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 09:31:02 +0800
Message-ID: <1576114297.11762.1.camel@mtksdaap41>
Subject: Re: [PATCH v2 04/14] mailbox: mediatek: cmdq: clear task in channel
 before shutdown
From: CK Hu <ck.hu@mediatek.com>
To: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
Date: Thu, 12 Dec 2019 09:31:37 +0800
In-Reply-To: <1576113221.17653.6.camel@mtkswgap22>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-6-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1575946181.16676.4.camel@mtksdaap41> <1576113221.17653.6.camel@mtkswgap22>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C441F67C5D7EA4E3320772BC92C7B1B7DFA318C63082BF0DE82C3B1EB5E06E732000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_173928_606619_0E198F62 
X-CRM114-Status: GOOD (  14.64  )
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

Hi, Dennis:

On Thu, 2019-12-12 at 09:13 +0800, Dennis-YC Hsieh wrote:
> Hi CK,
> 
> On Tue, 2019-12-10 at 10:49 +0800, CK Hu wrote:
> > Hi, Dennis:
> > 
> > On Wed, 2019-11-27 at 09:58 +0800, Dennis YC Hsieh wrote:
> > > Do success callback in channel when shutdown. For those task not finish,
> > > callback with error code thus client has chance to cleanup or reset.
> > > 
> > > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > > ---
> > >  drivers/mailbox/mtk-cmdq-mailbox.c | 26 ++++++++++++++++++++++++++
> > >  1 file changed, 26 insertions(+)
> > > 
> > > diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
> > > index fd519b6f518b..c12a768d1175 100644
> > > --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> > > +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> > > @@ -450,6 +450,32 @@ static int cmdq_mbox_startup(struct mbox_chan *chan)
> > >  
> > >  static void cmdq_mbox_shutdown(struct mbox_chan *chan)
> > >  {
> > > +	struct cmdq_thread *thread = (struct cmdq_thread *)chan->con_priv;
> > > +	struct cmdq *cmdq = dev_get_drvdata(chan->mbox->dev);
> > > +	struct cmdq_task *task, *tmp;
> > > +	unsigned long flags;
> > > +
> > > +	spin_lock_irqsave(&thread->chan->lock, flags);
> > > +	if (list_empty(&thread->task_busy_list))
> > > +		goto done;
> > > +
> > > +	WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
> > > +
> > > +	/* make sure executed tasks have success callback */
> > > +	cmdq_thread_irq_handler(cmdq, thread);
> > > +	if (list_empty(&thread->task_busy_list))
> > > +		goto done;
> > > +
> > > +	list_for_each_entry_safe(task, tmp, &thread->task_busy_list,
> > > +				 list_entry) {
> > > +		cmdq_task_exec_done(task, -ECONNABORTED);
> > > +		kfree(task);
> > > +	}
> > > +
> > > +	cmdq_thread_disable(cmdq, thread);
> > > +	clk_disable(cmdq->clock);
> > > +done:
> > 
> > cmdq_thread_resume(thread);
> > 
> > Regards,
> > CK
> > 
> 
> Call resume here will cause violation. The thread->task_busy_list empty
> means no task work in gce and thread state should already disable
> without clock, which is what we want since client try to shut down this
> mbox channel. So I think we don't need resume here.
> 

OK. When client free channel, thread is suspended. Then client request
channel, where do you resume thread?

Regards,
CK

> 
> Regards,
> Dennis
> 
> > > +	spin_unlock_irqrestore(&thread->chan->lock, flags);
> > >  }
> > >  
> > >  static const struct mbox_chan_ops cmdq_mbox_chan_ops = {
> > 
> > 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
