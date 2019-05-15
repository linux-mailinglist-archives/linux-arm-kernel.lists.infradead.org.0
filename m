Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6883B1F8A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 18:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAUeVK5Y573/MiAnJPomr4u057uOqFwjsQuB+T2aeAM=; b=Q01q9w+4G9E2y5
	RcBSRhp24+Yr5YeoqsMAXhrL6HnrIxqn3DvMIuGPpBLmBuajH8aOKDuKYaPq9mPBWMvvqc9NWjFqS
	pKs/TXM/1w20smV+0a4/TJEVlCmgMKgv/NGcInFAPuj1RXhpi4JflKgDXjEhKp+JEsgoqd8HU4iDc
	zCiUwjm3WT/aFQ4ts3MiDurh2apSh8UiTCSqVQEkPI/y1io1b8eeq7Gq+AjA/Yw8Q/EvPb2L1v6LJ
	gXzwVVUGVG/y/++SohUoZAKWLKC3GVEhI2oh23HJFnodY+TiHs7JZ3yBiNX/T7JtzqibPkuFTIRD5
	za+meuYMBG3IjHd2R/Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwlY-0001yQ-RH; Wed, 15 May 2019 16:28:28 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwlQ-0001xy-Vm
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 16:28:22 +0000
Received: by mail-lf1-x142.google.com with SMTP id h13so301213lfc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 09:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=faBgXv8RSAfE8vIL0upvZor3HD+OcrNBzquc/lDTuB8=;
 b=MtEB2j39ppcNayEhkBIBtQrGv7EeL5hrny3H8YedUYMgWPX2OI/YIhDoVtVXCAi4bj
 n+GSme9/5kZwQAzRkcB1j6nDx6whyuHwZ3R160qI4ySK8xmqeEkCuquPXkGFv2zZ7eEk
 2dLfnbhfjUFIEFZaUS4YE3CqYIDeOjYZpQJRU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=faBgXv8RSAfE8vIL0upvZor3HD+OcrNBzquc/lDTuB8=;
 b=aVED0n8m9VlkR4LDDit3jGaVvCnGo4UTUJ1fpDV7LQv7EytBJ+8RqSLoI7NOVIv6uh
 wUw8Y6h+GNrp+6WzRwbfqUE0MW8fK7HhBhu+6sYXyzSBtr+/4vqwMt6gzUMrM8pXUkiO
 ppDz6YTH9Jp0VjEKG+/W48yVQZwJnj4aLWDIPczD45oOfk2qQLVXiefD6pEACOR1KfY7
 gU0Wv4vgOrpjsQzX967FePFOv0nzfEcwVXPo4A3aDFoz70264qE8lshbR9VOnRQ588j9
 xYw44+6oJXNZ0F7ySjFymUxJAwhDfHMFDxvf8XB/H1s5hi4ao58jrTOZu5It+0l20if+
 XSLw==
X-Gm-Message-State: APjAAAXW7FObOYOxEWkjh5hdLUzhUvhosYWeNGa1eLctbdHq7rT4jjrH
 vhpfoTeAg3h5JGpyWUiBk2Vge0lwlUdNaKCGRQcQKA==
X-Google-Smtp-Source: APXvYqxm6oYD6Wtv8tsZX1Sm0L1tNUma61yOuHAzfAbtS9YE6pQsO2j8YdnCQNXIfspvtEDr6j3UH4vKDpeIHZMkWeo=
X-Received: by 2002:a19:196:: with SMTP id 144mr22155132lfb.35.1557937696743; 
 Wed, 15 May 2019 09:28:16 -0700 (PDT)
MIME-Version: 1.0
References: <1557375708-14830-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <508d6d50-29a6-dfa7-8e25-b64fa2cbbb8a@broadcom.com>
In-Reply-To: <508d6d50-29a6-dfa7-8e25-b64fa2cbbb8a@broadcom.com>
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Date: Wed, 15 May 2019 21:58:05 +0530
Message-ID: <CAHO=5PGA5qawSQsn1T-sjDnc8W-n61cQRY-yD8+jfJ6KMgMcZA@mail.gmail.com>
Subject: Re: [PATCH 1/1] i2c: iproc: Add multi byte read-write support for
 slave mode
To: Ray Jui <ray.jui@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_092821_034467_43E5012B 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Wolfram Sang <wsa@the-dreams.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-i2c@vger.kernel.org, Michael Cheng <ccheng@broadcom.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No change,  it's just duplicate, please ignore first patch and review
second patch.

Best regards
Rayagonda



On Thu, May 9, 2019 at 9:58 PM Ray Jui <ray.jui@broadcom.com> wrote:
>
> Why is the email sent twice? What has changed?
>
> On 5/8/2019 9:21 PM, Rayagonda Kokatanur wrote:
> > Add multiple byte read-write support for slave mode.
> >
> > Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> > Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> > ---
> >  drivers/i2c/busses/i2c-bcm-iproc.c | 117 +++++++++++++++++--------------------
> >  1 file changed, 53 insertions(+), 64 deletions(-)
> >
> > diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
> > index a845b8d..2c7f145 100644
> > --- a/drivers/i2c/busses/i2c-bcm-iproc.c
> > +++ b/drivers/i2c/busses/i2c-bcm-iproc.c
> > @@ -165,12 +165,6 @@ enum i2c_slave_read_status {
> >       I2C_SLAVE_RX_END,
> >  };
> >
> > -enum i2c_slave_xfer_dir {
> > -     I2C_SLAVE_DIR_READ = 0,
> > -     I2C_SLAVE_DIR_WRITE,
> > -     I2C_SLAVE_DIR_NONE,
> > -};
> > -
> >  enum bus_speed_index {
> >       I2C_SPD_100K = 0,
> >       I2C_SPD_400K,
> > @@ -203,7 +197,6 @@ struct bcm_iproc_i2c_dev {
> >       struct i2c_msg *msg;
> >
> >       struct i2c_client *slave;
> > -     enum i2c_slave_xfer_dir xfer_dir;
> >
> >       /* bytes that have been transferred */
> >       unsigned int tx_bytes;
> > @@ -219,7 +212,8 @@ struct bcm_iproc_i2c_dev {
> >               | BIT(IS_M_RX_THLD_SHIFT))
> >
> >  #define ISR_MASK_SLAVE (BIT(IS_S_START_BUSY_SHIFT)\
> > -             | BIT(IS_S_RX_EVENT_SHIFT) | BIT(IS_S_RD_EVENT_SHIFT))
> > +             | BIT(IS_S_RX_EVENT_SHIFT) | BIT(IS_S_RD_EVENT_SHIFT)\
> > +             | BIT(IS_S_TX_UNDERRUN_SHIFT))
> >
> >  static int bcm_iproc_i2c_reg_slave(struct i2c_client *slave);
> >  static int bcm_iproc_i2c_unreg_slave(struct i2c_client *slave);
> > @@ -297,15 +291,11 @@ static void bcm_iproc_i2c_slave_init(
> >       /* clear all pending slave interrupts */
> >       iproc_i2c_wr_reg(iproc_i2c, IS_OFFSET, ISR_MASK_SLAVE);
> >
> > -     /* Enable interrupt register for any READ event */
> > -     val = BIT(IE_S_RD_EVENT_SHIFT);
> >       /* Enable interrupt register to indicate a valid byte in receive fifo */
> > -     val |= BIT(IE_S_RX_EVENT_SHIFT);
> > +     val = BIT(IE_S_RX_EVENT_SHIFT);
> >       /* Enable interrupt register for the Slave BUSY command */
> >       val |= BIT(IE_S_START_BUSY_SHIFT);
> >       iproc_i2c_wr_reg(iproc_i2c, IE_OFFSET, val);
> > -
> > -     iproc_i2c->xfer_dir = I2C_SLAVE_DIR_NONE;
> >  }
> >
> >  static void bcm_iproc_i2c_check_slave_status(
> > @@ -314,8 +304,11 @@ static void bcm_iproc_i2c_check_slave_status(
> >       u32 val;
> >
> >       val = iproc_i2c_rd_reg(iproc_i2c, S_CMD_OFFSET);
> > -     val = (val >> S_CMD_STATUS_SHIFT) & S_CMD_STATUS_MASK;
> > +     /* status is valid only when START_BUSY is cleared after it was set */
> > +     if (val & BIT(S_CMD_START_BUSY_SHIFT))
> > +             return;
> >
> > +     val = (val >> S_CMD_STATUS_SHIFT) & S_CMD_STATUS_MASK;
> >       if (val == S_CMD_STATUS_TIMEOUT) {
> >               dev_err(iproc_i2c->device, "slave random stretch time timeout\n");
> >
> > @@ -327,70 +320,66 @@ static void bcm_iproc_i2c_check_slave_status(
> >  }
> >
> >  static bool bcm_iproc_i2c_slave_isr(struct bcm_iproc_i2c_dev *iproc_i2c,
> > -                             u32 status)
> > +                                 u32 status)
> >  {
> > -     u8 value;
> >       u32 val;
> > -     u32 rd_status;
> > -     u32 tmp;
> > +     u8 value, rx_status;
> >
> > -     /* Start of transaction. check address and populate the direction */
> > -     if (iproc_i2c->xfer_dir == I2C_SLAVE_DIR_NONE) {
> > -             tmp = iproc_i2c_rd_reg(iproc_i2c, S_RX_OFFSET);
> > -             rd_status = (tmp >> S_RX_STATUS_SHIFT) & S_RX_STATUS_MASK;
> > -             /* This condition checks whether the request is a new request */
> > -             if (((rd_status == I2C_SLAVE_RX_START) &&
> > -                     (status & BIT(IS_S_RX_EVENT_SHIFT))) ||
> > -                     ((rd_status == I2C_SLAVE_RX_END) &&
> > -                     (status & BIT(IS_S_RD_EVENT_SHIFT)))) {
> > -
> > -                     /* Last bit is W/R bit.
> > -                      * If 1 then its a read request(by master).
> > -                      */
> > -                     iproc_i2c->xfer_dir = tmp & SLAVE_READ_WRITE_BIT_MASK;
> > -                     if (iproc_i2c->xfer_dir == I2C_SLAVE_DIR_WRITE)
> > -                             i2c_slave_event(iproc_i2c->slave,
> > -                                     I2C_SLAVE_READ_REQUESTED, &value);
> > -                     else
> > -                             i2c_slave_event(iproc_i2c->slave,
> > +     /* Slave RX byte receive */
> > +     if (status & BIT(IS_S_RX_EVENT_SHIFT)) {
> > +             val = iproc_i2c_rd_reg(iproc_i2c, S_RX_OFFSET);
> > +             rx_status = (val >> S_RX_STATUS_SHIFT) & S_RX_STATUS_MASK;
> > +             if (rx_status == I2C_SLAVE_RX_START) {
> > +                     /* Start of SMBUS for Master write */
> > +                     i2c_slave_event(iproc_i2c->slave,
> >                                       I2C_SLAVE_WRITE_REQUESTED, &value);
> > -             }
> > -     }
> >
> > -     /* read request from master */
> > -     if ((status & BIT(IS_S_RD_EVENT_SHIFT)) &&
> > -             (iproc_i2c->xfer_dir == I2C_SLAVE_DIR_WRITE)) {
> > -             i2c_slave_event(iproc_i2c->slave,
> > -                     I2C_SLAVE_READ_PROCESSED, &value);
> > -             iproc_i2c_wr_reg(iproc_i2c, S_TX_OFFSET, value);
> > +                     val = iproc_i2c_rd_reg(iproc_i2c, S_RX_OFFSET);
> > +                     value = (u8)((val >> S_RX_DATA_SHIFT) & S_RX_DATA_MASK);
> > +                     i2c_slave_event(iproc_i2c->slave,
> > +                                     I2C_SLAVE_WRITE_RECEIVED, &value);
> > +             } else if (status & BIT(IS_S_RD_EVENT_SHIFT)) {
> > +                     /* Start of SMBUS for Master Read */
> > +                     i2c_slave_event(iproc_i2c->slave,
> > +                                     I2C_SLAVE_READ_REQUESTED, &value);
> > +                     iproc_i2c_wr_reg(iproc_i2c, S_TX_OFFSET, value);
> >
> > -             val = BIT(S_CMD_START_BUSY_SHIFT);
> > -             iproc_i2c_wr_reg(iproc_i2c, S_CMD_OFFSET, val);
> > -     }
> > +                     val = BIT(S_CMD_START_BUSY_SHIFT);
> > +                     iproc_i2c_wr_reg(iproc_i2c, S_CMD_OFFSET, val);
> >
> > -     /* write request from master */
> > -     if ((status & BIT(IS_S_RX_EVENT_SHIFT)) &&
> > -             (iproc_i2c->xfer_dir == I2C_SLAVE_DIR_READ)) {
> > -             val = iproc_i2c_rd_reg(iproc_i2c, S_RX_OFFSET);
> > -             /* Its a write request by Master to Slave.
> > -              * We read data present in receive FIFO
> > -              */
> > -             value = (u8)((val >> S_RX_DATA_SHIFT) & S_RX_DATA_MASK);
> > +                     /*
> > +                      * Enable interrupt for TX FIFO becomes empty and
> > +                      * less than PKT_LENGTH bytes were output on the SMBUS
> > +                      */
> > +                     val = iproc_i2c_rd_reg(iproc_i2c, IE_OFFSET);
> > +                     val |= BIT(IE_S_TX_UNDERRUN_SHIFT);
> > +                     iproc_i2c_wr_reg(iproc_i2c, IE_OFFSET, val);
> > +             } else {
> > +                     /* Master write other than start */
> > +                     value = (u8)((val >> S_RX_DATA_SHIFT) & S_RX_DATA_MASK);
> > +                     i2c_slave_event(iproc_i2c->slave,
> > +                                     I2C_SLAVE_WRITE_RECEIVED, &value);
> > +             }
> > +     } else if (status & BIT(IS_S_TX_UNDERRUN_SHIFT)) {
> > +             /* Master read other than start */
> >               i2c_slave_event(iproc_i2c->slave,
> > -                     I2C_SLAVE_WRITE_RECEIVED, &value);
> > -
> > -             /* check the status for the last byte of the transaction */
> > -             rd_status = (val >> S_RX_STATUS_SHIFT) & S_RX_STATUS_MASK;
> > -             if (rd_status == I2C_SLAVE_RX_END)
> > -                     iproc_i2c->xfer_dir = I2C_SLAVE_DIR_NONE;
> > +                             I2C_SLAVE_READ_PROCESSED, &value);
> >
> > -             dev_dbg(iproc_i2c->device, "\nread value = 0x%x\n", value);
> > +             iproc_i2c_wr_reg(iproc_i2c, S_TX_OFFSET, value);
> > +             val = BIT(S_CMD_START_BUSY_SHIFT);
> > +             iproc_i2c_wr_reg(iproc_i2c, S_CMD_OFFSET, val);
> >       }
> >
> >       /* Stop */
> >       if (status & BIT(IS_S_START_BUSY_SHIFT)) {
> >               i2c_slave_event(iproc_i2c->slave, I2C_SLAVE_STOP, &value);
> > -             iproc_i2c->xfer_dir = I2C_SLAVE_DIR_NONE;
> > +             /*
> > +              * Enable interrupt for TX FIFO becomes empty and
> > +              * less than PKT_LENGTH bytes were output on the SMBUS
> > +              */
> > +             val = iproc_i2c_rd_reg(iproc_i2c, IE_OFFSET);
> > +             val &= ~BIT(IE_S_TX_UNDERRUN_SHIFT);
> > +             iproc_i2c_wr_reg(iproc_i2c, IE_OFFSET, val);
> >       }
> >
> >       /* clear interrupt status */
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
