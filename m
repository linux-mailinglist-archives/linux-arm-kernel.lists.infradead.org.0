Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A45B915B71F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 03:19:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tschuAXgxM/PT2pQ/19BXtxTAWYb0aSWSVgWnsq1jaY=; b=KHJaR/7zKjGg4u
	woHsZr65jtnUMSOutKYU8l1hZvUulI0wWTYUaqRUGpRG0Fav6sfhitRqUXDCG1T6FXoylOvojOJpF
	/htmR7WHI0mcGuXTyOOmEUvUoJxWh4FO+t10SVMpaiOrOr5CEEOhEAUYaO3Abo0Xli9ClGC/el9yW
	uIB/nQyWYxeQBKoNST/x62MvpjOs9h3oD9vX2nSrerCGjkd2BrlRNmfezOHy3SaVqrdESfeBfufrU
	sOM1dbvNCV6jLRC7mi1tBmuM2VLOKe3Q2EUIGmIlWf3kErdbkluEoRDrXaw6IYRkEv/25fSHMaywl
	e6H+HZb1W5kfOgpJo93Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j245h-0003rc-OX; Thu, 13 Feb 2020 02:18:57 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j245Y-0003qt-RY
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 02:18:50 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0A2D878DD;
 Wed, 12 Feb 2020 21:18:47 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 12 Feb 2020 21:18:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm1; bh=j
 oc0nTBS0TrHM54svde7hMgF2xPWZMi+owrnjYj7liY=; b=Rx/UwHRdOA1f9RDtl
 eJ8JHrcLGDopY14a4t2TS0h3umQgzyc/G7VJe51GZRrOcr4XoCFWj7VxFYwnFTqb
 gDQNXnxEe0UyUdAaV3zaTlycM6km+m75YxM6vB/fP6oxXkDz2gikfJ4YayCXrBhq
 rsobyCkqSthx2+BpE8qVLjJVcRVZ4DU4Gmesa7TL445XRheFIba6B1f6nzoMFX9R
 khG62mPfFdi65tjiIQ8injRarUd6K8iSi4fab/22ybBWpDZEOy4UAU15ZCxwSB27
 X6+sKoKSCsRcieLPcrItvcssr0OkoO01vb3FH8iW47mvoc8vMX7DydGYQLqpiyfw
 ZX6KQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=joc0nTBS0TrHM54svde7hMgF2xPWZMi+owrnjYj7l
 iY=; b=IM0u8gjq6Nx2Kq3y6QyAmNzZALo7IqzIVcjwPX29Mu0sfZd/j+LBI5BuK
 NBrHQ4Kmq/nXJIxrWfdwOqwAI3vfNysKdtF/fKZyanDh0R3E7dnUp2THhxJUWxx1
 g1F+AVgGBIM5WY3CkomMYpce3X+AJhKVlZKso7McGpeBqPjDfV/HY25hutiHHaLG
 BI8yo/CSgUSo/LTDeC51N/LHh7FwFWKSoSoo6Ms71VsFg/JYC2Qi1WD9W+p2CuKr
 BZFKIouEVJbfiB91ycQK1Yfv5rEUj5DbM/Dzkbnm1KFMrBk4ANAz/8gkqzt5h0Mo
 6zC/9Q+Y6LvzPN63LQGP68YArlyPw==
X-ME-Sender: <xms:A7JEXiDhq3vNUpm1iwmErhJKYISlmFQrpF18JXFuvtLoLgoDVUWCfA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieejgdegiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:A7JEXsp6-cuLogGtsnvIq6QKkjQ5fW4Z48eG1WOfh25ScmSRDshzXA>
 <xmx:A7JEXjYimVazaqIpFZanF45QZwfXocCNb-zXaq0Tq-9DQC9XFjJY-g>
 <xmx:A7JEXlBUrWWXn6VNdng-gSFCpjlSt4Gt-Equ-M5b5RpMHEht2Zqr4A>
 <xmx:B7JEXpfG-8lHDlD5iD3yJQeoYpIkQezQELfiTqWLI53Gb-ze_SgjuA>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9E89130606E9;
 Wed, 12 Feb 2020 21:18:42 -0500 (EST)
Subject: Re: [PATCH v6 2/6] mailbox: sun6i-msgbox: Add a new mailbox driver
To: Jassi Brar <jassisinghbrar@gmail.com>
References: <20200113051852.15996-1-samuel@sholland.org>
 <20200113051852.15996-3-samuel@sholland.org>
 <CABb+yY2MJ-1i0K7XVkPT3+6ac1XR9-3zf-GDNeswOMp6Zn_Ufw@mail.gmail.com>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <72dc2074-c06d-4bdf-ca5f-b4007f492407@sholland.org>
Date: Wed, 12 Feb 2020 20:18:42 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CABb+yY2MJ-1i0K7XVkPT3+6ac1XR9-3zf-GDNeswOMp6Zn_Ufw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_181849_079743_875A67CB 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 Devicetree List <devicetree@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jassi,

On 2/12/20 8:02 PM, Jassi Brar wrote:
> On Sun, Jan 12, 2020 at 11:18 PM Samuel Holland <samuel@sholland.org> wrote:
>>
>> +static int sun6i_msgbox_send_data(struct mbox_chan *chan, void *data)
>> +{
>> +       struct sun6i_msgbox *mbox = to_sun6i_msgbox(chan);
>> +       int n = channel_number(chan);
>> +       uint32_t msg = *(uint32_t *)data;
>> +
>> +       /* Using a channel backwards gets the hardware into a bad state. */
>> +       if (WARN_ON_ONCE(!(readl(mbox->regs + CTRL_REG(n)) & CTRL_TX(n))))
>> +               return 0;
>> +
>> +       /* We cannot post a new message if the FIFO is full. */
>> +       if (readl(mbox->regs + FIFO_STAT_REG(n)) & FIFO_STAT_MASK) {
>> +               mbox_dbg(mbox, "Channel %d busy sending 0x%08x\n", n, msg);
>> +               return -EBUSY;
>> +       }
>> +
> This check should go into sun6i_msgbox_last_tx_done().
> send_data() assumes all is clear to send next packet.

sun6i_msgbox_last_tx_done() already checks that the FIFO is completely empty (as
the big comment explains). So this error could only be hit in the knows_txdone
== true case, if the client pipelines multiple messages by calling
mbox_client_txdone() before the message is actually removed from the FIFO.

From the comments in mailbox_controller.h, this kind of usage looks to be
unsupported. In that case, I could remove the check entirely. Does that sound right?

> .....
>> +
>> +       mbox->controller.dev           = dev;
>> +       mbox->controller.ops           = &sun6i_msgbox_chan_ops;
>> +       mbox->controller.chans         = chans;
>> +       mbox->controller.num_chans     = NUM_CHANS;
>> +       mbox->controller.txdone_irq    = false;
>> +       mbox->controller.txdone_poll   = true;
>> +       mbox->controller.txpoll_period = 5;
>> +
> nit:  just a single space should do too.
> 
> Sorry, for some reason I thought I had replied to this patch, but
> apparently not. My mistake. Do you want to revise this submission or
> send another patch on top?

For just this change, it would be simpler to send a follow-up patch.

> thanks

Thank you,
Samuel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
