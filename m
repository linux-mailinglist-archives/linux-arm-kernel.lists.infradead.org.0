Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA16C16EBC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:52:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/Wd7iS7P3uLcpr5LQJ2xxsAsJF41CBAVD+Q32FD2Ng=; b=LtDBJWLazsUJAb
	/p5S2lax72A3aib/H/pHC99XR3x71aDP2GIzqLeqVpgd4Q/fn389SIXLw6x1663nj61Z6iK1liqpI
	Vv9peb/bb8TmT0F6UPR7f7k/eWfVaSHgmp47Bc4+x7GLq4NF6yFJ4zbVqTClz+m6I41au6pB5i2lV
	0VhxRxJK905ND7WmKCtzlk0bs8MmQ1e2EW0UMd/jHaikoCQTAJ325Yd4EQomWPH1KWZhTpYN5ONrO
	K3y6toFumNHwI2maKZppEWpuirnscUKUxMaVhlmr+blqQyGD03GztnnIH4uyiG8Pyo8nnvFAMyEDc
	Y4I+YuWDCGlzCPHaagUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6dRG-0006hT-QE; Tue, 25 Feb 2020 16:52:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6dR7-0006h3-Dr
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 16:51:58 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 849D72082F;
 Tue, 25 Feb 2020 16:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582649516;
 bh=EIWuYGd2PI/Y2afNvXrRAYGM45sNmOcnsA/coFhECeY=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=sCGwIDsK6XwrddcnsOTLjCilO1Y3IBy+5Dm4Pml9TTMa+InyYUq9vk3eEleLEtVdF
 TZPiPEkEdHF5UiHr2oti6IfnVCxx0HLNb4XBlKmI1KOszaQJberzt1OYKIQHp7DVrH
 eXi9oQ8dAM8pux+fNvE0VzfiwuYVY0LZKqjp0cm4=
MIME-Version: 1.0
In-Reply-To: <10e97a04980d933b2cfecb6b124bf9046b6e4f16.1582216144.git.leonard.crestez@nxp.com>
References: <cover.1582216144.git.leonard.crestez@nxp.com>
 <10e97a04980d933b2cfecb6b124bf9046b6e4f16.1582216144.git.leonard.crestez@nxp.com>
Subject: Re: [PATCH v2 1/8] clk: imx: Align imx sc clock msg structs to 4
From: Stephen Boyd <sboyd@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Date: Tue, 25 Feb 2020 08:51:55 -0800
Message-ID: <158264951569.54955.16797064769391310232@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_085157_504151_A79128B4 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stefan Agner <stefan@agner.ch>,
 linux-clk@vger.kernel.org, Franck LENORMAND <franck.lenormand@nxp.com>,
 linux-gpio@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2020-02-20 08:29:32)
> The imx SC api strongly assumes that messages are composed out of
> 4-bytes words but some of our message structs have odd sizeofs.
> 
> This produces many oopses with CONFIG_KASAN=y.
> 
> Fix by marking with __aligned(4).
> 
> Fixes: fe37b4820417 ("clk: imx: add scu clock common part")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/clk/imx/clk-scu.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
> index fbef740704d0..3c5c42d8833e 100644
> --- a/drivers/clk/imx/clk-scu.c
> +++ b/drivers/clk/imx/clk-scu.c
> @@ -41,16 +41,16 @@ struct clk_scu {
>  struct imx_sc_msg_req_set_clock_rate {
>         struct imx_sc_rpc_msg hdr;
>         __le32 rate;
>         __le16 resource;
>         u8 clk;
> -} __packed;
> +} __packed __aligned(4);

Sorry, this still doesn't make sense to me. Having __aligned(4) means
that the struct is placed on the stack at some alignment, great, but it
still has __packed so the sizeof this struct is some odd number like 11.
If this struct is the last element on the stack it will end at some
unaligned address and the mailbox code will read a few bytes beyond the
end of the stack.

I see that the calling code puts 3 as the 'size' for this struct in
clk_scu_set_rate().

	hdr->size = 3;

That seems to say that the struct is 3 words long, or 12 bytes. Then we
call imx_scu_call_rpc(), passing the pointer to this struct on the stack
and that eventually gets into imx_scu_ipc_write() calling
mbox_send_message() with u32 pointers.

	for (i = 0; i < hdr->size; i++) {
		sc_chan = &sc_ipc->chans[i % 4];
		ret = mbox_send_message(sc_chan->ch, &data[i]);

So we've taken the 11 byte struct (data in this case) and casted it to a
u32 array with 3 elements, which is bad. This is what kasan is warning
about. Adding aligned sometimes fixes it because the compiler will place
the next stack variable at the naturally aligned location and thus we
get the one byte padding but I don't see how that works when it's the
last stack element. The stack will end at some unaligned address.

The better solution would be to drop __aligned(4) and make a union of
the struct with whatever size number of words the message is or do a
copy of the struct into a u32 array that is passed to
imx_scu_call_rpc().

For example:

	struct imx_sc_msg_req_set_clock_rate {
		union {
			struct packed_message {
				struct imx_sc_rpc_msg hdr;
				__le32 rate;
				__le16 resource;
				u8 clk;
			} __packed;
			u32 data[3];
		};
	};

If the union approach was used then each time imx_scu_call_rpc() is
called we can simply pass the 'data' member and make the second argument
'msg' strongly typed to be a u32 pointer. kasan should be happy too.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
