Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E38F3FB213
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 15:04:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FimFv+ZbqpKwwcmx7Z9kH29c2QXsHW1gzE3VfMNJiAc=; b=ajzsS5ThJcy1s7
	NkJDONVZDCPO7oKk8Ro6dEUYaBd2aMGaa8/CmJBojdvBQ/asMg3LBNLYeJRtCqoPeFEZ0AamI5Jwp
	l0e/FHj7JHRjJumBYZXVi9swx1Z5MhXF1rD+TGs7Dh/aHr9gDLRhKGjVrsShHBBQEwo+oW8gk/MyK
	V0UZ/RgCyEAfZ/BlUysAjLewdSWddUf4uPQTaeeQnt//eQpPo22csi0/a2tKB56m8KJg0oCJgC8Fs
	89BRuhxKP24rXc4wbQZNicEBJsdOWEBXpgmN8zg4jAWUJQk4D6juDiLDBIeEh/+x6qF46DS6FZnFs
	qY/oYAHcz9Om9rK+Zusg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUtFW-0003Iy-3F; Wed, 13 Nov 2019 14:03:58 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUtFO-0003IJ-5C
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 14:03:52 +0000
Received: by mail-vs1-xe44.google.com with SMTP id k15so1413473vsp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 06:03:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5BwmZ3rOWbaS4k8MffXh96cw0YmIp5buj1Hr3RklKjo=;
 b=LUgcEKRoW78x86RSFPmmsTsOX9NHHKGgopCwxZTi5E5dNUgoMXmyUSEyRpi8kM/CCP
 naw40ONls3070jILMxFvnYq3VQZp0aUsbjPaaJIoZKsJPqf94VY1NuHj8fS434rRAkJw
 VxJo0UnXmB+3Uis09mUEIXTkXCNuGmkWSjXHFx8lB+s5QdNGHTkzS2wwSiN+eCm789r7
 9z/V5ANyYNbZZNk1jmX921Cb37RAKwH6IorJfTnThHDR7B6jsDWrqoqRvSiEIdZqiBu9
 DlxP+aQLdnMbm3jJ6AiVqOKgicEGErvxkPu2MmTRq5E/8JpetZz8JtmCPSU0jieJjRzf
 qFBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5BwmZ3rOWbaS4k8MffXh96cw0YmIp5buj1Hr3RklKjo=;
 b=VHNy5R3SaU7r6eFk9W4nCn/tqr4SzZndhaZ+tMs3lPLbNfcZZHE6TnF5PCQFxU9Unh
 /QwKjTmfU6aC/m7xKYplLCJ/MQ9O4R1dG0TH3Um+0mCBhfSxy8IzqbF9iiy5LPxr7a8e
 ofV0/FsX0RbtMVzjLbA46FmmeJ/rSwW4WZnRj+F7GrGu4vHa7uQg0ikrkEyXJnX33V9S
 auqmKEMomChm4qYAGSMuHXvJqQ92uJspPoa8UCDrLBF5ALcwk6mNAsMUqS6QgtDNCmqE
 imHkLh5lWAIM00SXQV+hPpYgMmuWV7bSLdyC9HXqAvCvCsHPot48tEeBVAauxGE1ZWqh
 Nu3Q==
X-Gm-Message-State: APjAAAW/XH8msy/rFXR7VL1Bn+2d53TDrBi9w12sNlGta5MQ/RSIqoFu
 qYUytbSBs7IDV+lEt0A8JQiBgaO5spU8WEfr2mygvg==
X-Google-Smtp-Source: APXvYqxICErDa/uMcarDnUQb/XNSI8yPZt0i9R+ezuXR2MwByQGvnlqRWZa4iPSGsoMMFxCUyUfsF7figKx286hEJHY=
X-Received: by 2002:a67:ef4e:: with SMTP id k14mr1973247vsr.165.1573653828900; 
 Wed, 13 Nov 2019 06:03:48 -0800 (PST)
MIME-Version: 1.0
References: <20191113075335.31775-1-linus.walleij@linaro.org>
 <20191113075335.31775-4-linus.walleij@linaro.org>
In-Reply-To: <20191113075335.31775-4-linus.walleij@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 13 Nov 2019 15:03:12 +0100
Message-ID: <CAPDyKFpxBpn81GcWnLcz+CNWwp6JmtZS6YToe2wWzKj=PQUdKg@mail.gmail.com>
Subject: Re: [PATCH 3/3] mmc: mmci: Proper PIO residue handling
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_060350_541328_24955EBF 
X-CRM114-Status: GOOD (  43.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Russell King <linux@arm.linux.org.uk>,
 Stephan Gerhold <stephan@gerhold.net>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Niklas Cassel <niklas.cassel@linaro.org>, Ludovic Barre <ludovic.barre@st.com>,
 Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 Nov 2019 at 08:53, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> The MMCI PIO write function contains a bug if using any buffers
> with sglist miter contents that do not add upp to even 32bit
> writes. The PIO write code currently does this:
>
> iowrite32_rep(base + MMCIFIFO, ptr, (count + 3) >> 2);
>
> This will make sure that a single buffer passed in gets written
> into the FIFO even if it is odd, i.e. not evenly divisible
> by 4.
>
> However it has the following problems:
>
> - It will read up to three bytes beyond the end of the buffer
>   and fill the FIFO with unpredictable junk and possibly cause
>   segmentation violations if the read passes a page boundary
>   such as at the end of an sglist buffer.
>
> - It will be fine if a single buffer is passed in, but the code
>   handles SG lists. There is a while (1) loop in mmci_pio_irq()
>   which repeatedly calls mmci_pio_write() as long as the FIFO
>   is not half-full, if it gets half-full it exits the IRQ and
>   waits for a new IRQ, also the while loop repeatedly calls
>   sg_miter_next() to consume bytes and this means that between
>   subsequent calls to mmci_pio_write() some random junk can be
>   inserted at the end of each call if the buffers passed in
>   do not contain an number of bytes evenly divisible by 4.

Thanks for a well description to the problem!

>
> Fix this by simply doing this:
>
> iowrite32_rep(base + MMCIFIFO, ptr, count >> 2);
>
> But since the code will then just not write enough bytes if
> the count is not evenly divisible by 4, we introduce a special
> residue buffer and keep track of any odd bytes from 1..3 and
> just write these padded out with new data in a separate
> statement the next time we get a call of the mmci_pio_write(),
> or, if there is for example only 1,2 or 3 bytes in the transfer,
> or we end up with an odd number of bytes in the residue,
> flushi it out when we end the current data transaction to
> the host.
>
> Cc: Ludovic Barre <ludovic.barre@st.com>
> Cc: Brian Masney <masneyb@onstation.org>
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Cc: Niklas Cassel <niklas.cassel@linaro.org>
> Cc: Russell King <rmk+kernel@armlinux.org.uk>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v3:
> - New patch in v3 after discussion with Ulf
> - I'm unable to test this because I cannot provoke
>   these odd reads/writes but hoping for Stephan to take it
>   for a spin.
> ---
>  drivers/mmc/host/mmci.c | 125 ++++++++++++++++++++++++++++++++++++----
>  drivers/mmc/host/mmci.h |   2 +
>  2 files changed, 117 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> index a08cd845dddc..0d01689016f0 100644
> --- a/drivers/mmc/host/mmci.c
> +++ b/drivers/mmc/host/mmci.c
> @@ -607,6 +607,7 @@ static void mmci_init_sg(struct mmci_host *host, struct mmc_data *data)
>                 flags |= SG_MITER_FROM_SG;
>
>         sg_miter_start(&host->sg_miter, data->sg, data->sg_len, flags);
> +       host->pio_write_residue_sz = 0;
>  }
>
>  static u32 mmci_get_dctrl_cfg(struct mmci_host *host)
> @@ -1422,30 +1423,111 @@ static int mmci_pio_write(struct mmci_host *host, char *buffer, unsigned int rem
>         struct variant_data *variant = host->variant;
>         void __iomem *base = host->base;
>         char *ptr = buffer;
> +       bool wrote_residue = false;
> +       int i;
> +
> +       /*
> +        * This will normally not happen during block I/O, but can
> +        * happen during SDIO traffic, where odd byte chunks are
> +        * shoveled to the SDIO link. Fill up the residue buffer
> +        * and flush out.
> +        */
> +       if (host->pio_write_residue_sz) {
> +               int fill = 4 - host->pio_write_residue_sz;
> +               u32 val = 0;
> +
> +               /*
> +                * If we need more padding that what we have, just stash
> +                * some more in the residue then and continue. This only
> +                * happens if we're passed e.g. 1 or 2 bytes and there is
> +                * just 1 byte residue residue already: we can't fill up!
> +                */
> +               if (fill > remain) {
> +                       for (i = 0; i < fill; i++) {
> +                               host->pio_write_residue[host->pio_write_residue_sz + i] = *ptr;
> +                               host->pio_write_residue_sz++;
> +                               ptr++;
> +                               remain--;
> +                       }
> +                       return ptr - buffer;
> +               }
> +
> +               /* Pack the residue into a 32bit word */
> +               for (i = 0; i < host->pio_write_residue_sz; i++) {
> +                       val |= host->pio_write_residue[i];
> +                       val <<= 8;
> +               }
> +               /* Top up with new data */
> +               for (i = 0; i < fill; i++) {
> +                       val |= *ptr;
> +                       val <<= 8;
> +                       ptr++;
> +                       remain--;
> +               }
> +               iowrite32(val, base + MMCIFIFO);
> +               host->pio_write_residue_sz = 0;
> +               wrote_residue = true;
> +       }
> +
> +       /*
> +        * Maybe the residue plus some few bytes was exactly filling a
> +        * 32bit word.
> +        */
> +       if (!remain)
> +               return ptr - buffer;
>
>         do {
> -               unsigned int count, maxcnt;
> +               unsigned int count, maxcnt, written, residue;
>
> +               /*
> +                * If the FIFO is empty just stash it full with data else
> +                * just half-fill it.
> +                */
>                 maxcnt = status & MCI_TXFIFOEMPTY ?
> -                        variant->fifosize : variant->fifohalfsize;
> +                       variant->fifosize : variant->fifohalfsize;
> +
> +               /* Watch it to not overfill the FIFO */
> +               if (wrote_residue)
> +                       maxcnt -= 4;
> +
>                 count = min(remain, maxcnt);
>
>                 /*
>                  * SDIO especially may want to send something that is
>                  * not divisible by 4 (as opposed to card sectors
> -                * etc), and the FIFO only accept full 32-bit writes.
> -                * So compensate by adding +3 on the count, a single
> -                * byte become a 32bit write, 7 bytes will be two
> -                * 32bit writes etc.
> +                * etc), but the FIFO only accepts full 32-bit writes so start by
> +                * just filling up quickly with as much as we can.
>                  */
> -               iowrite32_rep(base + MMCIFIFO, ptr, (count + 3) >> 2);
> +               iowrite32_rep(base + MMCIFIFO, ptr, count >> 2);
> +               residue = count & 3;
>
> -               ptr += count;
> -               remain -= count;
> +               written = count - residue;
> +               ptr += written;
> +               remain -= written;
>
> -               if (remain == 0)
> +               /* Handles the common case for block-IO */
> +               if (!remain)
>                         break;
>
> +               /*
> +                * These were not written out since we only write 32bit
> +                * words to the FIFO. Since this function gets called
> +                * repeatedly and across page boundaries with new pointers
> +                * in *buffer we need to take special care to stash odd
> +                * bytes away and flush them out in next PIO round or at the
> +                * end of the whole data transfer.
> +                */
> +               if (remain < 4) {
> +                       WARN_ON(remain != residue);
> +                       host->pio_write_residue_sz = residue;
> +                       for (i = 0; i < residue; i++) {
> +                               host->pio_write_residue[i] = *ptr;
> +                               ptr++;
> +                               remain--;
> +                       }
> +                       break;
> +               }
> +
>                 status = readl(base + MMCISTATUS);
>         } while (status & MCI_TXFIFOHALFEMPTY);
>
> @@ -1522,6 +1604,29 @@ static irqreturn_t mmci_pio_irq(int irq, void *dev_id)
>         if (host->size == 0) {
>                 mmci_set_mask1(host, 0);
>                 writel(readl(base + MMCIMASK0) | MCI_DATAENDMASK, base + MMCIMASK0);
> +
> +               if ((status & MCI_TXACTIVE) && host->pio_write_residue_sz) {
> +                       /*
> +                        * If the last pass of the SG miter left some residue after the pio
> +                        * write loop, push that out to the card. We are now at the end of
> +                        * the transfer so it is OK to pad with zeroes.
> +                        */
> +                       int fill = 4 - host->pio_write_residue_sz;
> +                       u32 val = 0;
> +                       int i;
> +
> +                       /* Pack the residue into a 32bit word */
> +                       for (i = 0; i < host->pio_write_residue_sz; i++) {
> +                               val |= host->pio_write_residue[i];
> +                               val <<= 8;
> +                       }
> +                       /* Top up with zeroes */
> +                       for (i = 0; i < fill; i++)
> +                               val <<= 8;
> +
> +                       iowrite32(val, base + MMCIFIFO);
> +                       host->pio_write_residue_sz = 0;
> +               }

Honestly, I am concerned about the above complex piece of code. And it
also affects the hot path, etc, but please see my comment in the end
around all this.

However, I am open to apply something along the lines of this change,
in case we can't come up with a better approach.

>         }
>
>         return IRQ_HANDLED;
> diff --git a/drivers/mmc/host/mmci.h b/drivers/mmc/host/mmci.h
> index e20af17bb313..a7690b64d4cd 100644
> --- a/drivers/mmc/host/mmci.h
> +++ b/drivers/mmc/host/mmci.h
> @@ -425,6 +425,8 @@ struct mmci_host {
>         /* pio stuff */
>         struct sg_mapping_iter  sg_miter;
>         unsigned int            size;
> +       u8                      pio_write_residue[4];
> +       u8                      pio_write_residue_sz;
>         int (*get_rx_fifocnt)(struct mmci_host *h, u32 status, int remain);
>
>         u8                      use_dma:1;
> --
> 2.21.0
>

After reviewing this, I decided to also look deeper into the
mmci_pio_read(). Unfortunately, it also doesn't cover all cases, which
I believed it did.

More precisely, mmc_pio_read() can't cope with a buffer being split
across two pages, where the first element contains 2 bytes and the
second contains 4 bytes (total size 6 bytes). The result is that we
will end up filling the buffer with corrupt data. (While filling the
first 2 bytes in the buffer, we read 4 bytes from the fifo, but throw
away the last 2 bytes while copying to the buffer. Then when filling
the last 4 bytes in the buffer, we read 4 bytes from the fifo, while
only the first 2 bytes in fifo is actually valid data...)

Now, why am I stating all this?

Because I am wondering if it's really worth to support all kinds of
different flavors of allocated buffers. It clearly introduces severe
amount of complex code, that not only is hard to test, but also
affects the "hot path" for "nicely" allocated buffers (whatever that
means to performance).

I guess what I am really questioning is, if it would be better to
limit the driver to support only "nicely" allocated buffers. Of
course, in the long run, that means we also need a way to inform upper
layer drivers/code of what that means. I guess we need to introduce
some new mmc host variables, along the lines of how host->max_seg_size
and host->max_req_size is being used.

What do you think, is it a terrible idea? :-)

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
