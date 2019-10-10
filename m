Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E711AD2666
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 11:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/sSyRQKedu/y56AgZ5+Ej4VbB80jFz1EBztkPuJU7hE=; b=DGQWCsr9ucyK4W
	XFzEyGoFx9EfN0hCfeB3lqOSjrHFmobEYKo2XQxXbialPh0YpqAb9ftg7FBdgs/ko2LVl8ISmGYUN
	cUAuxL3yz8bj5ErjD594bXPd1pAdMwaoYz3SBxwrgTteG5nCIy2SrqxAGq4jVY0zEv0YtQ/duizSP
	b2ypzLJPpwBvvweTDmbCBNu+Z1G9hFSL9Ixq7ZqNFWyMNooVeTGxJgIc2ZU4YXGoIAIyUmYhf7jGs
	5TqjbHr6k82ElLAcRGf6iY6LUwDrghPlCCxM18mO0aXlmUBIU8ObRfg/IfITdl/d0MT5FNVR9ijOu
	x2e+Harv3ET2KCOp2kHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIUoF-0001YD-Qq; Thu, 10 Oct 2019 09:32:35 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIUo8-0001XX-Ju
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 09:32:30 +0000
Received: by mail-lf1-x141.google.com with SMTP id w67so3848000lff.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 02:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C/wkh/GnDCqsZNIodlB9tNbqA2+NzVOROU2ZLiYiw8c=;
 b=OSvqdGd/HH6LNxUtzlPkUEUmkHKnfJuBpTU/F2JyAocadOJvBk5t0cXMz76yLL4go6
 q8m/7SsAuhyIDIVwgqaReMcIBjgl4nokwNaxHKB3Inyr+4Tdx+9B59EIbEJHwa01MSbo
 fbIs1WZOlrgRXsMwy4NdS17VYdPXkHiPE3qgk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C/wkh/GnDCqsZNIodlB9tNbqA2+NzVOROU2ZLiYiw8c=;
 b=KR9I1nyotli+y7hRlYoiCmWNnBRcuPAPMrnQbsl2GwunCoqr5hIZqNb6iTruRuw3go
 Tg/AWaDnxmCAcql+pyqgOlShcq5Oz3M2uaK3Y64wDNKDG6clDmEXyYP9HrPjQ8MV+eye
 Wtw0quAss6Gx1TPqI+fo59k2pljXdyCb+cdIt01ndI2ql7fBViMXna5xE2i0KBDnRTQq
 1nY2k78+4zQ287X4Ma4haQDBxAbWx8vv1LZKB/6ejcYWDtK4WrtBjy7YbSrvm6jNpVu3
 BUdK/fIqnGHD0/8KeoZYk8OUBTw0+c3YA1kAA34VCOvn+V87wT67hf+qeD4SSpigGS/w
 cfUA==
X-Gm-Message-State: APjAAAV4p2jEiYYbH4NZ7eus8HFIGaX6mEbpeXJQW1moXHr0wgMs9fMa
 R5TNtl4SWaSV9Dt++PngKfEalHptcHH8a/gyf3zB8w==
X-Google-Smtp-Source: APXvYqx9u+tBp+tunckOnU4ovHq/Lwxq2h7DFjTIyiy3FX+VTE6GQYYQgqljs/51buL58PMOEZjAGOIA3WDm2xfSISc=
X-Received: by 2002:a19:23cc:: with SMTP id j195mr5332104lfj.91.1570699944121; 
 Thu, 10 Oct 2019 02:32:24 -0700 (PDT)
MIME-Version: 1.0
References: <1569825869-30640-1-git-send-email-rayagonda.kokatanur@broadcom.com>
In-Reply-To: <1569825869-30640-1-git-send-email-rayagonda.kokatanur@broadcom.com>
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Date: Thu, 10 Oct 2019 15:02:13 +0530
Message-ID: <CAHO=5PFSTomeNm4vAKyPmRZXNPBKGT4ck3mB8uOY395uwuVdNg@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] i2c: iproc: Add i2c repeated start capability
To: Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Michael Cheng <ccheng@broadcom.com>, 
 Shreesha Rajashekar <shreesha.rajashekar@broadcom.com>,
 Lori Hikichi <lori.hikichi@broadcom.com>, 
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_023228_660961_8CDBA73D 
X-CRM114-Status: GOOD (  29.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Icarus Chau <icarus.chau@broadcom.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>, Ray Jui <ray.jui@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wolfram,

Did you get a chance to review this patch.

Best regards,
Rayagonda


On Mon, Sep 30, 2019 at 12:19 PM Rayagonda Kokatanur
<rayagonda.kokatanur@broadcom.com> wrote:
>
> From: Lori Hikichi <lori.hikichi@broadcom.com>
>
> Enable handling of i2c repeated start. The current code
> handles a multi msg i2c transfer as separate i2c bus
> transactions. This change will now handle this case
> using the i2c repeated start protocol. The number of msgs
> in a transfer is limited to two, and must be a write
> followed by a read.
>
> Signed-off-by: Lori Hikichi <lori.hikichi@broadcom.com>
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> Signed-off-by: Icarus Chau <icarus.chau@broadcom.com>
> Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> Signed-off-by: Shivaraj Shetty <sshetty1@broadcom.com>
> ---
> changes from v1:
>  - Address following review comments from Wolfarm Sang,
>    Use i2c_8bit_addr_from_msg() api instead of decoding i2c_msg struct and
>    remove check against number of i2c message as it will be taken care
>    by core using quirks flags.
>
>  drivers/i2c/busses/i2c-bcm-iproc.c | 63 ++++++++++++++++++++++++++++++--------
>  1 file changed, 50 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
> index d7fd76b..e478db7 100644
> --- a/drivers/i2c/busses/i2c-bcm-iproc.c
> +++ b/drivers/i2c/busses/i2c-bcm-iproc.c
> @@ -81,6 +81,7 @@
>  #define M_CMD_PROTOCOL_MASK          0xf
>  #define M_CMD_PROTOCOL_BLK_WR        0x7
>  #define M_CMD_PROTOCOL_BLK_RD        0x8
> +#define M_CMD_PROTOCOL_PROCESS       0xa
>  #define M_CMD_PEC_SHIFT              8
>  #define M_CMD_RD_CNT_SHIFT           0
>  #define M_CMD_RD_CNT_MASK            0xff
> @@ -675,13 +676,20 @@ static int bcm_iproc_i2c_xfer_wait(struct bcm_iproc_i2c_dev *iproc_i2c,
>         return 0;
>  }
>
> -static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
> -                                        struct i2c_msg *msg)
> +/*
> + * If 'process_call' is true, then this is a multi-msg transfer that requires
> + * a repeated start between the messages.
> + * More specifically, it must be a write (reg) followed by a read (data).
> + * The i2c quirks are set to enforce this rule.
> + */
> +static int bcm_iproc_i2c_xfer_internal(struct bcm_iproc_i2c_dev *iproc_i2c,
> +                                       struct i2c_msg *msgs, bool process_call)
>  {
>         int i;
>         u8 addr;
>         u32 val, tmp, val_intr_en;
>         unsigned int tx_bytes;
> +       struct i2c_msg *msg = &msgs[0];
>
>         /* check if bus is busy */
>         if (!!(iproc_i2c_rd_reg(iproc_i2c,
> @@ -707,14 +715,29 @@ static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
>                         val = msg->buf[i];
>
>                         /* mark the last byte */
> -                       if (i == msg->len - 1)
> -                               val |= BIT(M_TX_WR_STATUS_SHIFT);
> +                       if (!process_call && (i == msg->len - 1))
> +                               val |= 1 << M_TX_WR_STATUS_SHIFT;
>
>                         iproc_i2c_wr_reg(iproc_i2c, M_TX_OFFSET, val);
>                 }
>                 iproc_i2c->tx_bytes = tx_bytes;
>         }
>
> +       /* Process the read message if this is process call */
> +       if (process_call) {
> +               msg++;
> +               iproc_i2c->msg = msg;  /* point to second msg */
> +
> +               /*
> +                * The last byte to be sent out should be a slave
> +                * address with read operation
> +                */
> +               addr = i2c_8bit_addr_from_msg(msg);
> +               /* mark it the last byte out */
> +               val = addr | (1 << M_TX_WR_STATUS_SHIFT);
> +               iproc_i2c_wr_reg(iproc_i2c, M_TX_OFFSET, val);
> +       }
> +
>         /* mark as incomplete before starting the transaction */
>         if (iproc_i2c->irq)
>                 reinit_completion(&iproc_i2c->done);
> @@ -733,7 +756,7 @@ static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
>          * underrun interrupt, which will be triggerred when the TX FIFO is
>          * empty. When that happens we can then pump more data into the FIFO
>          */
> -       if (!(msg->flags & I2C_M_RD) &&
> +       if (!process_call && !(msg->flags & I2C_M_RD) &&
>             msg->len > iproc_i2c->tx_bytes)
>                 val_intr_en |= BIT(IE_M_TX_UNDERRUN_SHIFT);
>
> @@ -743,6 +766,8 @@ static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
>          */
>         val = BIT(M_CMD_START_BUSY_SHIFT);
>         if (msg->flags & I2C_M_RD) {
> +               u32 protocol;
> +
>                 iproc_i2c->rx_bytes = 0;
>                 if (msg->len > M_RX_FIFO_MAX_THLD_VALUE)
>                         iproc_i2c->thld_bytes = M_RX_FIFO_THLD_VALUE;
> @@ -758,7 +783,10 @@ static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
>                 /* enable the RX threshold interrupt */
>                 val_intr_en |= BIT(IE_M_RX_THLD_SHIFT);
>
> -               val |= (M_CMD_PROTOCOL_BLK_RD << M_CMD_PROTOCOL_SHIFT) |
> +               protocol = process_call ?
> +                               M_CMD_PROTOCOL_PROCESS : M_CMD_PROTOCOL_BLK_RD;
> +
> +               val |= (protocol << M_CMD_PROTOCOL_SHIFT) |
>                        (msg->len << M_CMD_RD_CNT_SHIFT);
>         } else {
>                 val |= (M_CMD_PROTOCOL_BLK_WR << M_CMD_PROTOCOL_SHIFT);
> @@ -774,17 +802,24 @@ static int bcm_iproc_i2c_xfer(struct i2c_adapter *adapter,
>                               struct i2c_msg msgs[], int num)
>  {
>         struct bcm_iproc_i2c_dev *iproc_i2c = i2c_get_adapdata(adapter);
> -       int ret, i;
> +       bool process_call = false;
> +       int ret;
>
> -       /* go through all messages */
> -       for (i = 0; i < num; i++) {
> -               ret = bcm_iproc_i2c_xfer_single_msg(iproc_i2c, &msgs[i]);
> -               if (ret) {
> -                       dev_dbg(iproc_i2c->device, "xfer failed\n");
> -                       return ret;
> +       if (num == 2) {
> +               /* Repeated start, use process call */
> +               process_call = true;
> +               if (msgs[1].flags & I2C_M_NOSTART) {
> +                       dev_err(iproc_i2c->device, "Invalid repeated start\n");
> +                       return -EOPNOTSUPP;
>                 }
>         }
>
> +       ret = bcm_iproc_i2c_xfer_internal(iproc_i2c, msgs, process_call);
> +       if (ret) {
> +               dev_dbg(iproc_i2c->device, "xfer failed\n");
> +               return ret;
> +       }
> +
>         return num;
>  }
>
> @@ -806,6 +841,8 @@ static uint32_t bcm_iproc_i2c_functionality(struct i2c_adapter *adap)
>  };
>
>  static struct i2c_adapter_quirks bcm_iproc_i2c_quirks = {
> +       .flags = I2C_AQ_COMB_WRITE_THEN_READ,
> +       .max_comb_1st_msg_len = M_TX_RX_FIFO_SIZE,
>         .max_read_len = M_RX_MAX_READ_LEN,
>  };
>
> --
> 1.9.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
