Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CD410FCFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Z8hLHLrodAi22RfhCmvQHdf0WtNxkzZE8iSXgh7PMs=; b=QjMB36ExFO/6PG
	xMfnysMFERWagUgM4kDMHC8yd3uuil4J67wVnnfeaX6wc6gEE24GaKqiNON4ufR//KO6ZEsjvb8+9
	IxvBC9ctH1tAhGKie4GU1Oy9LnGu3PSRk1CyORwwGNiE9nJv3JpE4xgo4FWogBCW6DnoTGExp2I0V
	H+gYiNC7sDEOlSQ9MSv2NpfTd5S0Kt5AlWkKVxQK8Z6hN3WokMcjnZfz4SlIsI9iGvP/5rU2vwRG5
	xQ6dQtEa6b9XIALPfJx+5nXbSV0vMKOnpektv1HMVMKpQNYjSHvheaBA2fWIEJEqC3saDIILmCpnS
	ShLqLe/Lh1Kg97us2PaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6qj-00004q-Mn; Tue, 03 Dec 2019 12:00:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6qc-0007zV-4w
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:00:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5129230E;
 Tue,  3 Dec 2019 04:00:05 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50C3A3F68E;
 Tue,  3 Dec 2019 04:00:04 -0800 (PST)
Date: Tue, 3 Dec 2019 12:00:02 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20191203120002.GB4171@bogus>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040006_243952_2E8413BD 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 03:01:39PM +0530, Viresh Kumar wrote:
> The SCMI specification is fairly independent of the transport protocol,
> which can be a simple mailbox (already implemented) or anything else.
> The current Linux implementation however is very much dependent of the
> mailbox transport layer.
>
> This patch makes the SCMI core code (driver.c) independent of the
> mailbox transport layer and moves all mailbox related code to a new
> file: mailbox.c.
>

The implementation looks fine to me.

> We can now implement more transport protocols to transport SCMI
> messages.
>

I am more interested in this part. As I am aware the only 2 other
transport being discussed is SMC/HVC and new/yet conceptual SPCI(built
on top of SMC/HVC). There are already discussions on the list to make
former as mailbox[1]. While I see both pros and cons with that approach,
there's a need to converge. One main advantage I see with SMC/HVC mailbox
is that it can be used with any other client and not just SCMI. Equally,
the queuing in the mailbox may not be needed with fast SMC/HVC but may
be needed for new SPCI(not yet fully analysed).

> The transport protocols just need to provide struct scmi_transport_ops,
> with its version of the callbacks to enable exchange of SCMI messages.
>

As I mentioned I am fine with implementation in this patch. But I would
like to hear especially from Arnd and Jassi as the abstraction look more
like mailbox APIs themselves and may look like duplication. I don't
want people to realise late that this is not good idea for whatever
reasons. If we have valid and enough reasons to do so, we can take
this approach. I really need some feedback here.

--
Regards,
Sudeep

[1] https://lore.kernel.org/lkml/1575281525-1549-1-git-send-email-peng.fan@nxp.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
