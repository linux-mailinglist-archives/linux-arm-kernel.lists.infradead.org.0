Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B50C0728AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 08:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GomahYGFzR9nSLgehyE3CWxBghxx4DOYT7rhSIeXdDA=; b=Gm/aWy2mlOWafX
	x5XdjoqFt0Ik/ybQ0AXkkSGSG6WQIAKMEsLVZXycAlYD7pKLYIjRfignUN6TcN2bY7uH5N2fAS/wA
	2dzbhhN20Coeqnvwy0VZdJQRiQKfxL1A642d6y1upuuUGmfYLlFJzCfTmebEo6Xc4Co05uVRhDePO
	Svr8IJHibXnh7VFRolI7X16lJ2qQC2XToQY8puoiWmM8YamZnuGPqAWqWgKeQV8DX/2bprvu5Xdiz
	6M7AEV/cM8vbBQtOKgnbUUu88YerdMtGCT7IgoGuZPWAfNa71YCc+RkzvroSxKYhcANrZpnrbv4BE
	MPQGRETFxcHpV+cXTF0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBBG-0004qD-CQ; Wed, 24 Jul 2019 06:55:18 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBAw-0004gK-UI
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 06:55:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id y4so45655527wrm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 23:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4iMeNTsCiERl+P34fUTSUNSQriOGJih/vVFrylD6BeI=;
 b=fk2lwvozpFZQhIBd+22aYQwHfP0ddOk3rDZTodt7W2XLtZcbasVjL/eSI1ru8ghIJ1
 GBpn13Gqf1w/c8bkgJ56GrQTR6gsyDziHRCHP3cDUkQxBsbU3Bd9ZrBMg0owv0xRfUuE
 siiEsoXj/Awey9XsUzEvzn5SVEnOWDqWakDX78f/0Y/cEbdpl1znF7iWF/6N4ZZwrWNw
 hUvSFih3el+1CSVnGqKAH3Oi8byJ13eUDAsH9tdsAFyzuM5C0k2ZqDi+Ygl90+ZXvcsN
 Q2SAOY2o8O7+rgSWrXr/piH57mFLzvfggjE69vullExS7m4AdTjorSQ8a8iraFI7P6JH
 h5qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4iMeNTsCiERl+P34fUTSUNSQriOGJih/vVFrylD6BeI=;
 b=irXvdX63GPSbuniegQMcxB18tjmmoX1cudvBkJ5EH6U6cRuCM160R70Er4LHcdc3ut
 miDBgx15M9NO2o5Sr6kUAoFT9UXJuLjyJ4VCWtIPjPRQ2/LijuYjStUzy428gYczrAXe
 SIwv86o+MpBtVg7HvbHRk/80CiobmlIZwl5VS4SGm4TWNC2JmX9PrUmMpuWAT14mZif5
 2f77j+1E8DJn3N3sBBwXruDH+bAWLVU8ip3THdGwcwsYdtf1MpMie0lupH4ITrranDXn
 Td/rKDR7OQV4jDQifE8BE4Uew89WGY+IZF7VFwHm9UH9XQ5MFKYyf69rkKkJFxFnLTRO
 DDkA==
X-Gm-Message-State: APjAAAVvT23Hhfxsw8UQRgKGs7X2YRfXnFLUvrB0UACQkvbmDw8baoBI
 bDlk4M5phJliB4+FsLlvYsAZ3wTZnsanmeF0c/o=
X-Google-Smtp-Source: APXvYqz4dhIt0idgKDMG+M+RinhFLThRORdt4BwIA6AYlWqxPwozbP8EWmcdiQMBzoZgaLOPnkooAPJC9t9UvPC06jc=
X-Received: by 2002:adf:c70e:: with SMTP id k14mr88734339wrg.201.1563951297367; 
 Tue, 23 Jul 2019 23:54:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190723084104.12639-1-daniel.baluta@nxp.com>
 <20190723084104.12639-2-daniel.baluta@nxp.com>
 <a5d44d96-4d50-ee46-a6bf-3ce108b1994a@linux.intel.com>
In-Reply-To: <a5d44d96-4d50-ee46-a6bf-3ce108b1994a@linux.intel.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 24 Jul 2019 09:54:46 +0300
Message-ID: <CAEnQRZCuB2QKzz-08K0z+x+p0qCpqR_wDc=q2GChvJiw4E9hBA@mail.gmail.com>
Subject: Re: [Sound-open-firmware] [PATCH v2 1/5] ASoC: SOF: imx: Add i.MX8 HW
 support
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_235459_011185_87648046 
X-CRM114-Status: GOOD (  23.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 6:18 PM Pierre-Louis Bossart
<pierre-louis.bossart@linux.intel.com> wrote:
>
>
> > diff --git a/sound/soc/sof/imx/Makefile b/sound/soc/sof/imx/Makefile
> > new file mode 100644
> > index 000000000000..c69237971da5
> > --- /dev/null
> > +++ b/sound/soc/sof/imx/Makefile
> > @@ -0,0 +1,7 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> > +
> > +ccflags-y += -DDEBUG
>
> this should be removed or in a separate patch.

All right.

>
>
> > +struct imx8_priv {
> > +     struct device *dev;
> > +     struct snd_sof_dev *sdev;
> > +     struct imx_dsp_ipc *dsp_ipc;
> > +     struct imx_sc_ipc *sc_ipc;
>
> maybe a comment to explain what 'sc' stands for?

Sure.
>
> > +};
> > +
> > +static void imx8_get_windows(struct snd_sof_dev *sdev)
> > +{
> > +     struct sof_ipc_window_elem *elem;
> > +     u32 outbox_offset = 0;
> > +     u32 stream_offset = 0;
> > +     u32 inbox_offset = 0;
> > +     u32 outbox_size = 0;
> > +     u32 stream_size = 0;
> > +     u32 inbox_size = 0;
> > +     int i;
> > +
> > +     if (!sdev->info_window) {
> > +             dev_err(sdev->dev, "error: have no window info\n");
> > +             return;
> > +     }
> > +
> > +     for (i = 0; i < sdev->info_window->num_windows; i++) {
> > +             elem = &sdev->info_window->window[i];
> > +
> > +             switch (elem->type) {
> > +             case SOF_IPC_REGION_UPBOX:
> > +                     inbox_offset = elem->offset + MBOX_OFFSET;
> > +                     inbox_size = elem->size;
> > +                     snd_sof_debugfs_io_item(sdev,
> > +                                             sdev->bar[SOF_FW_BLK_TYPE_SRAM]
> > +                                             + inbox_offset,
> > +                                             elem->size, "inbox",
> > +                                             SOF_DEBUGFS_ACCESS_D0_ONLY);
> > +                     break;
> > +             case SOF_IPC_REGION_DOWNBOX:
> > +                     outbox_offset = elem->offset + MBOX_OFFSET;
> > +                     outbox_size = elem->size;
> > +                     snd_sof_debugfs_io_item(sdev,
> > +                                             sdev->bar[SOF_FW_BLK_TYPE_SRAM]
> > +                                             + outbox_offset,
> > +                                             elem->size, "outbox",
> > +                                             SOF_DEBUGFS_ACCESS_D0_ONLY);
> > +                     break;
> > +             case SOF_IPC_REGION_TRACE:
> > +                     snd_sof_debugfs_io_item(sdev,
> > +                                             sdev->bar[SOF_FW_BLK_TYPE_SRAM]
> > +                                             + elem->offset + MBOX_OFFSET,
> > +                                             elem->size, "etrace",
> > +                                             SOF_DEBUGFS_ACCESS_D0_ONLY);
> > +                     break;
> > +             case SOF_IPC_REGION_DEBUG:
> > +                     snd_sof_debugfs_io_item(sdev,
> > +                                             sdev->bar[SOF_FW_BLK_TYPE_SRAM]
> > +                                             + elem->offset + MBOX_OFFSET,
> > +                                             elem->size, "debug",
> > +                                             SOF_DEBUGFS_ACCESS_D0_ONLY);
> > +                     break;
> > +             case SOF_IPC_REGION_STREAM:
> > +                     stream_offset = elem->offset + MBOX_OFFSET;
> > +                     stream_size = elem->size;
> > +                     snd_sof_debugfs_io_item(sdev,
> > +                                             sdev->bar[SOF_FW_BLK_TYPE_SRAM]
> > +                                             + stream_offset,
> > +                                             elem->size, "stream",
> > +                                             SOF_DEBUGFS_ACCESS_D0_ONLY);
> > +                     break;
> > +             case SOF_IPC_REGION_REGS:
> > +                     snd_sof_debugfs_io_item(sdev,
> > +                                             sdev->bar[SOF_FW_BLK_TYPE_SRAM]
> > +                                             + elem->offset + MBOX_OFFSET,
> > +                                             elem->size, "regs",
> > +                                             SOF_DEBUGFS_ACCESS_D0_ONLY);
> > +                     break;
> > +             case SOF_IPC_REGION_EXCEPTION:
> > +                     sdev->dsp_oops_offset = elem->offset + MBOX_OFFSET;
> > +                     snd_sof_debugfs_io_item(sdev,
> > +                                             sdev->bar[SOF_FW_BLK_TYPE_SRAM]
> > +                                             + elem->offset + MBOX_OFFSET,
> > +                                             elem->size, "exception",
> > +                                             SOF_DEBUGFS_ACCESS_D0_ONLY);
> > +                     break;
> > +             default:
> > +                     dev_err(sdev->dev, "error: get illegal window info\n");
> > +                     return;
> > +             }
> > +     }
> > +
> > +     if (outbox_size == 0 || inbox_size == 0) {
> > +             dev_err(sdev->dev, "error: get illegal mailbox window\n");
> > +             return;
> > +     }
> > +
> > +     snd_sof_dsp_mailbox_init(sdev, inbox_offset, inbox_size,
> > +                              outbox_offset, outbox_size);
> > +     sdev->stream_box.offset = stream_offset;
> > +     sdev->stream_box.size = stream_size;
> > +
> > +     dev_dbg(sdev->dev, " mailbox upstream 0x%x - size 0x%x\n",
> > +             inbox_offset, inbox_size);
> > +     dev_dbg(sdev->dev, " mailbox downstream 0x%x - size 0x%x\n",
> > +             outbox_offset, outbox_size);
> > +     dev_dbg(sdev->dev, " stream region 0x%x - size 0x%x\n",
> > +             stream_offset, stream_size);
> > +}
>
> This looks 100% similar to Baytrail?

Yes!
>
> > +
> > +/*
> > + * IPC Firmware ready.
> > + */
> > +static int imx8_fw_ready(struct snd_sof_dev *sdev, u32 msg_id)
> > +{
> > +     struct sof_ipc_fw_ready *fw_ready = &sdev->fw_ready;
> > +     u32 offset;
> > +     int ret;
> > +
> > +     /* mailbox must be on 4k boundary */
> > +     offset = MBOX_OFFSET;
> > +
> > +     dev_dbg(sdev->dev, "ipc: DSP is ready 0x%8.8x offset 0x%x\n",
> > +             msg_id, offset);
> > +
> > +      /* no need to re-check version/ABI for subsequent boots */
> > +     if (!sdev->first_boot)
> > +             return 0;
> > +
> > +     /* copy data from the DSP FW ready offset */
> > +     sof_block_read(sdev, sdev->mailbox_bar, offset, fw_ready,
> > +                    sizeof(*fw_ready));
> > +     snd_sof_dsp_mailbox_init(sdev, fw_ready->dspbox_offset,
> > +                              fw_ready->dspbox_size,
> > +                              fw_ready->hostbox_offset,
> > +                              fw_ready->hostbox_size);
> > +
> > +     /* make sure ABI version is compatible */
> > +     ret = snd_sof_ipc_valid(sdev);
> > +     if (ret < 0)
> > +             return ret;
> > +
> > +     /* now check for extended data */
> > +     snd_sof_fw_parse_ext_data(sdev, SOF_FW_BLK_TYPE_SRAM, MBOX_OFFSET +
> > +                               sizeof(struct sof_ipc_fw_ready));
> > +
> > +     imx8_get_windows(sdev);
> > +
> > +     return 0;
> > +}
>
> That code looks nearly similar to the baytrail one except for the last
> line, we should look into factoring this.

Yes, I got most of my inspiration from intel code.

>
> > +
> > +static void imx8_get_reply(struct snd_sof_dev *sdev)
> > +{
> > +     struct snd_sof_ipc_msg *msg = sdev->msg;
> > +     struct sof_ipc_reply reply;
> > +     unsigned long flags;
> > +     int ret = 0;
> > +
> > +     if (!msg) {
> > +             dev_warn(sdev->dev, "unexpected ipc interrupt\n");
> > +             return;
> > +     }
> > +
> > +     /* get reply */
> > +     sof_mailbox_read(sdev, sdev->host_box.offset, &reply, sizeof(reply));
> > +
> > +     spin_lock_irqsave(&sdev->ipc_lock, flags);
> > +
> > +     if (reply.error < 0) {
> > +             memcpy(msg->reply_data, &reply, sizeof(reply));
> > +             ret = reply.error;
> > +     } else {
> > +             /* reply has correct size? */
> > +             if (reply.hdr.size != msg->reply_size) {
> > +                     dev_err(sdev->dev, "error: reply expected %zu got %u bytes\n",
> > +                             msg->reply_size, reply.hdr.size);
> > +                     ret = -EINVAL;
> > +             }
> > +
> > +             /* read the message */
> > +             if (msg->reply_size > 0)
> > +                     sof_mailbox_read(sdev, sdev->host_box.offset,
> > +                                      msg->reply_data, msg->reply_size);
> > +     }
> > +
> > +     msg->reply_error = ret;
> > +
> > +     spin_unlock_irqrestore(&sdev->ipc_lock, flags);
>
> I don't see a spin_lock/unlock for the get_reply in the Intel code, is
> this necessary?

Hmm, you are right. I think I've used an older version of the intel code
where there a lock.

>
> > +}
> > +
> > +void imx_dsp_handle_reply(struct imx_dsp_ipc *ipc)
> > +{
> > +     struct imx8_priv *priv = imx_dsp_get_data(ipc);
> > +
> > +     imx8_get_reply(priv->sdev);
> > +     snd_sof_ipc_reply(priv->sdev, 0);
> > +}
> > +
> > +void imx_dsp_handle_request(struct imx_dsp_ipc *ipc)
> > +{
> > +     struct imx8_priv *priv = imx_dsp_get_data(ipc);
> > +
> > +     snd_sof_ipc_msgs_rx(priv->sdev);
> > +}
> > +
> > +struct imx_dsp_ops dsp_ops = {
> > +     .handle_reply           = imx_dsp_handle_reply,
> > +     .handle_request         = imx_dsp_handle_request,
> > +};
> > +
> > +static int imx8_send_msg(struct snd_sof_dev *sdev, struct snd_sof_ipc_msg *msg)
> > +{
> > +     struct imx8_priv *priv = (struct imx8_priv *)sdev->private;
> > +
> > +     sof_mailbox_write(sdev, sdev->host_box.offset, msg->msg_data,
> > +                       msg->msg_size);
> > +     imx_dsp_ring_doorbell(priv->dsp_ipc, 0);
> > +
> > +     return 0;
> > +}
> > +
> > +/*
> > + * DSP control.
> > + */
> > +static int imx8_run(struct snd_sof_dev *sdev)
> > +{
> > +     int ret;
> > +     struct imx8_priv *dsp_priv = (struct imx8_priv *)sdev->private;
> > +
> > +     ret = imx_sc_misc_set_control(dsp_priv->sc_ipc, IMX_SC_R_DSP,
> > +                                   IMX_SC_C_OFS_SEL, 1);
> > +     if (ret < 0) {
> > +             dev_err(sdev->dev, "Error system address offset source select\n");
> > +             return ret;
> > +     }
> > +
> > +     ret = imx_sc_misc_set_control(dsp_priv->sc_ipc, IMX_SC_R_DSP,
> > +                                   IMX_SC_C_OFS_AUDIO, 0x80);
> > +     if (ret < 0) {
> > +             dev_err(sdev->dev, "Error system address offset of AUDIO\n");
> > +             return ret;
> > +     }
> > +
> > +     ret = imx_sc_misc_set_control(dsp_priv->sc_ipc, IMX_SC_R_DSP,
> > +                                   IMX_SC_C_OFS_PERIPH, 0x5A);
> > +     if (ret < 0) {
> > +             dev_err(sdev->dev, "Error system address offset of PERIPH %d\n",
> > +                     ret);
> > +             return ret;
> > +     }
> > +
> > +     ret = imx_sc_misc_set_control(dsp_priv->sc_ipc, IMX_SC_R_DSP,
> > +                                   IMX_SC_C_OFS_IRQ, 0x51);
> > +     if (ret < 0) {
> > +             dev_err(sdev->dev, "Error system address offset of IRQ\n");
> > +             return ret;
> > +     }
> > +
> > +     imx_sc_pm_cpu_start(dsp_priv->sc_ipc, IMX_SC_R_DSP, true,
> > +                         RESET_VECTOR_VADDR);
> > +
> > +     return 0;
> > +}
> > +
> > +static int imx8_probe(struct snd_sof_dev *sdev)
> > +{
> > +     struct imx8_priv *priv;
> > +     int i;
> > +     struct platform_device *pdev =
> > +             container_of(sdev->dev, struct platform_device, dev);
> > +     struct platform_device *ipc_dev;
> > +     struct resource *mmio;
> > +     int num_domains = 0;
> > +     u32 base, size;
> > +     int ret = 0;
> > +     struct device_node *np = pdev->dev.of_node;
> > +     struct device_node *res_node;
> > +     struct resource res;
>
> nit-pick: can we reorder so that we have all counters last and a nice
> xmas-tree shape.
Ack.

>
> > +
> > +     priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
> > +     if (!priv)
> > +             return -ENOMEM;
> > +
> > +     sdev->private = priv;
> > +     priv->dev = sdev->dev;
> > +     priv->sdev = sdev;
> > +
> > +     ret = imx_scu_get_handle(&priv->sc_ipc);
> > +     if (ret) {
> > +             dev_err(sdev->dev, "Cannot obtain SCU handle (err = %d)\n",
> > +                     ret);
> > +             return ret;
> > +     }
> > +
> > +     ipc_dev = platform_device_register_data(sdev->dev, "imx-dsp",
> > +                                             PLATFORM_DEVID_NONE,
> > +                                             pdev, sizeof(*pdev));
> > +     if (IS_ERR(ipc_dev)) {
> > +             dev_err(sdev->dev, "Failed to register platform device\n");
> > +             return PTR_ERR(ipc_dev);
> > +     }
> > +
> > +     priv->dsp_ipc = dev_get_drvdata(&ipc_dev->dev);
> > +     if (!priv->dsp_ipc)
> > +             return -EPROBE_DEFER;
> > +
> > +     imx_dsp_set_data(priv->dsp_ipc, priv);
> > +     priv->dsp_ipc->ops = &dsp_ops;
> > +
> > +     num_domains = of_count_phandle_with_args(np, "power-domains",
> > +                                              "#power-domain-cells");
> > +     for (i = 0; i < num_domains; i++) {
> > +             struct device *pd_dev;
> > +             struct device_link *link;
> > +
> > +             pd_dev = dev_pm_domain_attach_by_id(&pdev->dev, i);
> > +             if (IS_ERR(pd_dev))
> > +                     return PTR_ERR(pd_dev);
> > +
> > +             link = device_link_add(&pdev->dev, pd_dev,
> > +                                    DL_FLAG_STATELESS |
> > +                                    DL_FLAG_PM_RUNTIME |
> > +                                    DL_FLAG_RPM_ACTIVE);
> > +             if (IS_ERR(link))
> > +                     return PTR_ERR(link);
>
> Question: is the error flow final? Wondering if we release all the
> resources/memory/devices on errors?

Will check again. It seemed no need for resource freeing.

>
> Also are all the resources device-managed, I don't see a remove()?
Good catch for pm stuff. We mostly didn't care about remove because
drivers are always Y in our distribution.

Thanks Pierre for review, I will let some time for others to have a look and
send a new version.

thanks,
Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
