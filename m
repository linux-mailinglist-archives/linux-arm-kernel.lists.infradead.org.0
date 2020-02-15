Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EBE15FC82
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 04:49:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbk9fnyj0TPF3ok567eYCvvWdG4vHpqXXkwdTyQlNVc=; b=K+JNXqKpwSyY3o
	9jA+MiTxSiY2kEHpuE1rN0fi6sDm//FjYygQ3n03slXAFyT2/uA3XsLSONks80BbN1y58o/mI9wzZ
	POj6E6mwmmYJeIgvyh7SmfAwembmfQlTrKzUE3s2TQWGGPKzAlxb1BcQ0OT26yGDhdYCoQIZeD6VF
	vMGcugFmoMeWI6cBSsPqZ7WnQ9q4pC4B5gpqv7xw4xAGwHWBJl/XIPPxcgK4qT0C9+gxbdkOTlw2K
	OKcaptOGM014nDlwp5Z7014RuYvAFcP+ZcSmG1xZZQ4Mbz6f2U9gvdHm/HAZpXLijbgkvUQ6qOHkL
	WSYrhu+vmyeIU3Sqw7sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2oS3-0001SG-By; Sat, 15 Feb 2020 03:49:07 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2oRv-0001Rk-7s
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 03:49:01 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id C55416396;
 Fri, 14 Feb 2020 22:48:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Fri, 14 Feb 2020 22:48:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:from:to:cc:references:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm1; bh=J
 xzxZHoHqh9JAZUmlnUp3T1XUGzczXINp71ra3TW7JQ=; b=R4/8wFBpD+nDC+YjC
 eYLSKaCjp29dWLWSDaJZh0VjadXi5EWyZIY479EkNhwuSNvqap2F1EXCybrJjgk/
 O6MKTjbBl2XE1zG/SCiLZkZPA5ry0yUx4u5fw2FlAg41FZpng+n49WYyBDpiIgt2
 ecDaHVR0tTou6qWZK5N0SW+/hwaqZNwo4SQ3LDO2FVndXukipXTkpPRrmyli9JD+
 hJmUNEbyZ1CVxDr4IGoxIpGcbliDItQbKy1aU63Z/92JoGztq1QXfPWpVnprv0jB
 YLctjWcWnC9Y9ZHJ74rRtkgOa/QntA5N3iOaLh9/y8N/aCkjbKMIkDL2LGo2MKlK
 WH/dA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=JxzxZHoHqh9JAZUmlnUp3T1XUGzczXINp71ra3TW7
 JQ=; b=1TYIQcLwttyQOP1qL5xcxdmc2ZhEDWAqm4O9SDW+3wLAdJJOave8EBEUV
 wiRCTBY1gZJ1eCfSY3xoQzWxbmudFZZ9VBfzRxxUtlhMO6hg+yaNsKk4b7nwWZuG
 uxWRuqXLqnt6B1ZmzZ9Px+s1OL5wkugyV6W5R03T1R4pXr0CjHDwNOjFzY/yQrf9
 vhbJeyAy2X/YJY6qp3qOQalgSZs77EJ5Um84zvE7q0v1tXzUGiIWGep9sbjtfeZh
 PAAE1iNEQkjC/NpwIO22ixvhBiRhKoVAf7GwUqajJlBetMBTttWsxpUvvySfmp3+
 UdaNrgEJAAi/SoKe7xthm+vawX1LQ==
X-ME-Sender: <xms:IGpHXlC662lbobdSX5lT8RYxgwcV6nDTZ_OdHqMsk2JiUojnKqLBLA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedugdeifecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuhffvfhfkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:IGpHXmXfQpCcFp2tXWIYLvQjSAl4UOQko9gbBJcT5PqOH1Nd9XBTDg>
 <xmx:IGpHXjXlvEm2lFzkQcoqgw6ksUiXRfMELivgTUl-S6U35bnJy2lEvQ>
 <xmx:IGpHXjRl_IunXeo2iNwV2z4wtNnaJ3BnyhpMeXUra2tEa6HUDUr1LA>
 <xmx:IWpHXnGB3y4I3ezWRgNh9I_NJ350WXQ_qrec4gZXpA2B3Z8GDykHxA>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9B2803060BD1;
 Fri, 14 Feb 2020 22:48:47 -0500 (EST)
Subject: Re: [PATCH v6 2/6] mailbox: sun6i-msgbox: Add a new mailbox driver
From: Samuel Holland <samuel@sholland.org>
To: Jassi Brar <jassisinghbrar@gmail.com>
References: <20200113051852.15996-1-samuel@sholland.org>
 <20200113051852.15996-3-samuel@sholland.org>
 <CABb+yY2MJ-1i0K7XVkPT3+6ac1XR9-3zf-GDNeswOMp6Zn_Ufw@mail.gmail.com>
 <72dc2074-c06d-4bdf-ca5f-b4007f492407@sholland.org>
Message-ID: <89168ba0-a8ac-b433-3f93-412b22a9bc1a@sholland.org>
Date: Fri, 14 Feb 2020 21:48:47 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <72dc2074-c06d-4bdf-ca5f-b4007f492407@sholland.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_194859_529924_72FFDF40 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 2/12/20 8:18 PM, Samuel Holland wrote:
> Jassi,
> 
> On 2/12/20 8:02 PM, Jassi Brar wrote:
>> On Sun, Jan 12, 2020 at 11:18 PM Samuel Holland <samuel@sholland.org> wrote:
>>>
>>> +static int sun6i_msgbox_send_data(struct mbox_chan *chan, void *data)
>>> +{
>>> +       struct sun6i_msgbox *mbox = to_sun6i_msgbox(chan);
>>> +       int n = channel_number(chan);
>>> +       uint32_t msg = *(uint32_t *)data;
>>> +
>>> +       /* Using a channel backwards gets the hardware into a bad state. */
>>> +       if (WARN_ON_ONCE(!(readl(mbox->regs + CTRL_REG(n)) & CTRL_TX(n))))
>>> +               return 0;
>>> +
>>> +       /* We cannot post a new message if the FIFO is full. */
>>> +       if (readl(mbox->regs + FIFO_STAT_REG(n)) & FIFO_STAT_MASK) {
>>> +               mbox_dbg(mbox, "Channel %d busy sending 0x%08x\n", n, msg);
>>> +               return -EBUSY;
>>> +       }
>>> +
>> This check should go into sun6i_msgbox_last_tx_done().
>> send_data() assumes all is clear to send next packet.
> 
> sun6i_msgbox_last_tx_done() already checks that the FIFO is completely empty (as
> the big comment explains). So this error could only be hit in the knows_txdone
> == true case, if the client pipelines multiple messages by calling
> mbox_client_txdone() before the message is actually removed from the FIFO.
> 
> From the comments in mailbox_controller.h, this kind of usage looks to be
> unsupported. In that case, I could remove the check entirely. Does that sound right?

After more thought, I would prefer to keep the check. It is fast/simple, and it
keeps the hardware from getting into an inconsistent state. Silently dropping
messages sounds like a poor quality of implementation.

send_data() is documented in mailbox_controller.h as returning EBUSY, and I see
multiple other mailbox controllers implementing the same or a similar check. If
that is not the way you intend for the API to work, then please update the
comments in mailbox_controller.h.

Thanks,
Samuel

>> .....
>>> +
>>> +       mbox->controller.dev           = dev;
>>> +       mbox->controller.ops           = &sun6i_msgbox_chan_ops;
>>> +       mbox->controller.chans         = chans;
>>> +       mbox->controller.num_chans     = NUM_CHANS;
>>> +       mbox->controller.txdone_irq    = false;
>>> +       mbox->controller.txdone_poll   = true;
>>> +       mbox->controller.txpoll_period = 5;
>>> +
>> nit:  just a single space should do too.
>>
>> Sorry, for some reason I thought I had replied to this patch, but
>> apparently not. My mistake. Do you want to revise this submission or
>> send another patch on top?
> 
> For just this change, it would be simpler to send a follow-up patch.
> 
>> thanks
> 
> Thank you,
> Samuel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
