Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F90A45E50
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxcPVh5KzL3LM/RcvV+LX3qqe75DMdkcJKzKMryduH0=; b=l4BtYVva244hKI
	WU3w+XfWrh84szhXc2AeFI5bvVEriHDQ4fBSFgXfHf1MCX7r6MJDUz9QlcMsCKtahf/zrioYsqgtz
	rd/8bW5vymU70mu/Ra4feudSF10VnHZkUK81pDk1/Ra4XsrynFA/H3oEMt9Ggq2zMhe1NqCv1s6Nk
	1oMrpgAvPKEWcrJRpkJeeNq2lcHL3PXQZM+C/Kp/p6QKD6KwCu/BiJPL3h0BlgoOP3ovNFSJOHAuQ
	2wzFP2+jcoA9Z9Zhw2y/2EpN5FkOBCIUN29wSZwHNtKFKrxZlEVRCKvj9ZjZDYbhNmyiu0UP2DwLH
	+o3QlKh5ZvWZR+hUnlMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmN3-0006WF-0e; Fri, 14 Jun 2019 13:35:57 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmMu-0006VH-BU
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:35:49 +0000
Received: by mail-ot1-x341.google.com with SMTP id e8so1683000otl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 06:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/Iumb5nCJVz2HC5/nbRIEDZUIZqdpRhVEmQs809cxSo=;
 b=h7tg3sjFL4f+yNN/91TYjVrpxnwzYt+gGHLq8QmMeaQrToFB2+nRGWop83WSLVjJss
 5oyNn74saGXhBLqBKroPI9odbFsqifoREUvx+3xW59g9m+tXUqZgP8wfUej6ENlHnUCV
 vlitnGmwpM+VVsnWEkF1vMXfqJrcOBIxhua/taQ1bVXz7u1NtZpO+CZb/3mt+rhvwyxH
 9uPRRveSTTiWyGfuYnGmmSRmr9MxFZ8512dHDfw879ehHWtxVmqNt2TiS4OclukO4zYX
 bKtwUcLW8d8NrkeJVYbFNX20S2btklGN0EsrjcVrJ0MTl2+kenxIk6V69ZAWhyrkFu56
 ofzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/Iumb5nCJVz2HC5/nbRIEDZUIZqdpRhVEmQs809cxSo=;
 b=smv/+/YSCCwSpAaq9L4E17iNmIi9vqY3fNfp2/bow68aY1VnjIRfcQwDgEVUHtxRx8
 MhheyH+ZEdHJHJ6osopYhcEmXxjgVRiudhzxEYNE4jCaLkTHQAQYbmTmQglxyy1t2oBg
 JBaL1HfO/P9w/ByTjrMQ+IUOSyu2IlgyPdaYUa7YC0rYWGX1MYi1X7G/Scfu/vYilyQA
 Yw6cP30nw8xYntYknHCAX3BUHRHODxWbWRD06iIOFMPGl56Rx35JmNbiBlehejhuxdS9
 ZMcipGIl5p3SfaJWdgakytMV5xZa4sQ9DQdTAwv99QnBQ7KbMWOdg98WSUKYetWkT8Br
 nltQ==
X-Gm-Message-State: APjAAAUQTPGmtId4MPctJicT+Z2RBi3wf1iXJk19hNyV2WLEz3j6qYe9
 wcqq9qcw6NSdgod9x4PcmWT/8juTn34gt2HBNvY=
X-Google-Smtp-Source: APXvYqyAHNQQrhuiues4BPDDMqOVwi6uPApFWQbGHNqabmJA/bDejfzEJeXfWZbmC3TNm/pELH4rkrdnbKy756U7huo=
X-Received: by 2002:a05:6830:1319:: with SMTP id
 p25mr6040495otq.224.1560519346918; 
 Fri, 14 Jun 2019 06:35:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190614083959.37944-1-yibin.gong@nxp.com>
In-Reply-To: <20190614083959.37944-1-yibin.gong@nxp.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Fri, 14 Jun 2019 09:35:36 -0400
Message-ID: <CAGngYiU_sNiAi0gYFEUg6=TfvUWH+6Nhid9PqYa6x+nb4UkVWA@mail.gmail.com>
Subject: Re: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
To: Robin Gong <yibin.gong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_063548_392016_5A9D1CC4 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (thesven73[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thesven73[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Vinod <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Fabio Estevam <festevam@gmail.com>,
 Michael Olbrich <m.olbrich@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin, see comments inline.

On Fri, Jun 14, 2019 at 4:38 AM <yibin.gong@nxp.com> wrote:
>
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index deea9aa..b5a1ee2 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -742,7 +742,7 @@ static int sdma_load_script(struct sdma_engine *sdma, void *buf, int size,
>         spin_lock_irqsave(&sdma->channel_0_lock, flags);
>
>         bd0->mode.command = C0_SETPM;
> -       bd0->mode.status = BD_DONE | BD_INTR | BD_WRAP | BD_EXTD;
> +       bd0->mode.status = BD_DONE | BD_WRAP | BD_EXTD;

I tested this change on its own, and it seemed sufficient to make the crash
disappear.

>         bd0->mode.count = size / 2;
>         bd0->buffer_addr = buf_phys;
>         bd0->ext_buffer_addr = address;
> @@ -1064,7 +1064,7 @@ static int sdma_load_context(struct sdma_channel *sdmac)
>         context->gReg[7] = sdmac->watermark_level;
>
>         bd0->mode.command = C0_SETDM;
> -       bd0->mode.status = BD_DONE | BD_INTR | BD_WRAP | BD_EXTD;
> +       bd0->mode.status = BD_DONE | BD_WRAP | BD_EXTD;

This function isn't part of the firmware load path, so how can it be related
to fixing the firmware crash?

If this is an unrelated efficiency saving, maybe it should go into its
own patch?
Maybe we want bugfix patches to be as small and specific as possible, so they
can more easily be backported to older kernels?

>         bd0->mode.count = sizeof(*context) / 4;
>         bd0->buffer_addr = sdma->context_phys;
>         bd0->ext_buffer_addr = 2048 + (sizeof(*context) / 4) * channel;
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
