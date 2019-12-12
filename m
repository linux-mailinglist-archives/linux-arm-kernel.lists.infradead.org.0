Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFB811C2D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 02:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuOTri86w1dJ01Y57gsdQFiSbC6I+eKNyxv4JUdnuDc=; b=ST9vmNh1OcRohB
	EDAKj2l5YjzmiE10j7bKlyKEctxfkFJb/2WnO2rV2K5bio8w5SHLM8uk8XwSRcMtCrMeZ5wwM5961
	1s71WK1IldZRChhxKm0I/YUWJczWbfl2uXsafaR3IsUCmXJfGfjXZVtphRKyIxG2eWgwN+bFPxgP2
	7YAcHev+tebvVRXXm9Wncn3+blzDBej2EGnR0VKZRNek3oy6XNcSSyJq9ytkysos2ZO7C5hihVrz1
	jZU6ovxbAnt06C1md7yTh63p8x+Vzo/z3JY83N0e+x+l6/L9l0Y8GowWb+cL40LHPZWbjZvI4ayfY
	h3ok4zM8yRlmwGwbwezA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDj1-0000xs-Ui; Thu, 12 Dec 2019 01:57:07 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDir-0000xJ-JG; Thu, 12 Dec 2019 01:56:59 +0000
X-UUID: 445af0683e434acbbe4c4cdbc14f94c9-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Of+6/V6XHKRPg6mlAyJMUp0eBfOyc4qsodtrpJM/gLY=; 
 b=hf0wI6Lbzx9A3JC6ZZvvjJLvUFs4QR2tHG8ke1hDEqxM8UvvfbOGF97Iejlt6Bw5QPrh0id8jPXIMAoZD4IiEo9b7m4QZvnEg4Elw7IfRC93saQBdQ1flVYjeksu5UEXsdmQ/qd1OUMVw+Wj9JNZe5l+LnY2zZnIqpT663El8rs=;
X-UUID: 445af0683e434acbbe4c4cdbc14f94c9-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2101919228; Wed, 11 Dec 2019 17:56:51 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 17:52:36 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 09:51:14 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 09:51:31 +0800
Message-ID: <1576115494.17653.21.camel@mtkswgap22>
Subject: Re: [PATCH v2 04/14] mailbox: mediatek: cmdq: clear task in channel
 before shutdown
From: Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Thu, 12 Dec 2019 09:51:34 +0800
In-Reply-To: <1576114297.11762.1.camel@mtksdaap41>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-6-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1575946181.16676.4.camel@mtksdaap41> <1576113221.17653.6.camel@mtkswgap22>
 <1576114297.11762.1.camel@mtksdaap41>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_175657_642614_C8108E1B 
X-CRM114-Status: GOOD (  15.23  )
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

On Thu, 2019-12-12 at 09:31 +0800, CK Hu wrote:
> Hi, Dennis:
> 
> On Thu, 2019-12-12 at 09:13 +0800, Dennis-YC Hsieh wrote:
> > Hi CK,
> > 
> > On Tue, 2019-12-10 at 10:49 +0800, CK Hu wrote:
> > > Hi, Dennis:
> > > 
> > > On Wed, 2019-11-27 at 09:58 +0800, Dennis YC Hsieh wrote:
> > > > Do success callback in channel when shutdown. For those task not finish,
> > > > callback with error code thus client has chance to cleanup or reset.
> > > > 
> > > > Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> > > > ---
> > > >  drivers/mailbox/mtk-cmdq-mailbox.c | 26 ++++++++++++++++++++++++++
> > > >  1 file changed, 26 insertions(+)
> > > > 
> > > > diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
> > > > index fd519b6f518b..c12a768d1175 100644
> > > > --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> > > > +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> > > > @@ -450,6 +450,32 @@ static int cmdq_mbox_startup(struct mbox_chan *chan)
> > > >  
> > > >  static void cmdq_mbox_shutdown(struct mbox_chan *chan)
> > > >  {
> > > > +	struct cmdq_thread *thread = (struct cmdq_thread *)chan->con_priv;
> > > > +	struct cmdq *cmdq = dev_get_drvdata(chan->mbox->dev);
> > > > +	struct cmdq_task *task, *tmp;
> > > > +	unsigned long flags;
> > > > +
> > > > +	spin_lock_irqsave(&thread->chan->lock, flags);
> > > > +	if (list_empty(&thread->task_busy_list))
> > > > +		goto done;
> > > > +
> > > > +	WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
> > > > +
> > > > +	/* make sure executed tasks have success callback */
> > > > +	cmdq_thread_irq_handler(cmdq, thread);
> > > > +	if (list_empty(&thread->task_busy_list))
> > > > +		goto done;
> > > > +
> > > > +	list_for_each_entry_safe(task, tmp, &thread->task_busy_list,
> > > > +				 list_entry) {
> > > > +		cmdq_task_exec_done(task, -ECONNABORTED);
> > > > +		kfree(task);
> > > > +	}
> > > > +
> > > > +	cmdq_thread_disable(cmdq, thread);
> > > > +	clk_disable(cmdq->clock);
> > > > +done:
> > > 
> > > cmdq_thread_resume(thread);
> > > 
> > > Regards,
> > > CK
> > > 
> > 
> > Call resume here will cause violation. The thread->task_busy_list empty
> > means no task work in gce and thread state should already disable
> > without clock, which is what we want since client try to shut down this
> > mbox channel. So I think we don't need resume here.
> > 
> 
> OK. When client free channel, thread is suspended. Then client request
> channel, where do you resume thread?
> 

when client send new pkt to new channel, cmdq_mbox_send_data() will
enable thread.


Regards,
Dennis

> Regards,
> CK
> 
> > 
> > Regards,
> > Dennis
> > 
> > > > +	spin_unlock_irqrestore(&thread->chan->lock, flags);
> > > >  }
> > > >  
> > > >  static const struct mbox_chan_ops cmdq_mbox_chan_ops = {
> > > 
> > > 
> > 
> > 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
