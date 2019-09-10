Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A693DAE2C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 06:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WzWY8Z+cV4M+BlAF0Fb2WjILKjpCTD7RVp1CPDstmGc=; b=EIBW3YS+V1zP0M
	+sf3xYURzMF+x++WoTln8+NnRwbZGjw92F7jlzkeqs8XPRbWXBjvH2opl8gGhmLvBOEIHp2U/g0I/
	DtfKjrc17xvihSIfUP0+LO/t/+2CJbHf2e09TVv+on7g6Pg0A0c9kngGkdBYEETK92S+vgyW+lfzd
	/91M7wErA6Pph3QHhaJ266XTm1/t1v75TmE8lMdjYrdEhu5/Z4U6b6f5tkXgtntXt+ykO9+HrfiXk
	XmutHY4Fq8EImQw8FkZFWQ7iqtfeJQzTXHMU2LJmDc1wEdMAMRu0e56QORoHU/W2VBALR7I0AXOWD
	dz9jKyg9KePNSNpMuitg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7XWd-0005FC-7A; Tue, 10 Sep 2019 04:13:07 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7XWO-0005Et-74
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 04:12:53 +0000
Received: by mail-ed1-x542.google.com with SMTP id c20so6554210eds.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 21:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NWPWiF7RmUFMiClnKh78wynrVqgBNiPTp2bFs9APlmM=;
 b=gZo+vDHuRtLwgL2wLk7M1IljiLedGerG7+gBK5mBCdgTSbOGx/YUbSX7B8QN9bxFXA
 7VEDRKARc2s3HPkg8XakopyPnAlQpKf5x37pXIdxcFrTQaDILsLMuSHin8iNeCZluNu3
 2dDOYvZNouZSBLXPMyQegrzKmrWI246WLFDAU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NWPWiF7RmUFMiClnKh78wynrVqgBNiPTp2bFs9APlmM=;
 b=exhoDuFqfmgxiOBri4WvSTJYY1IzKnlEoKfABP63dNvJLwZMNK0x8puLwoaCnniWKg
 djHI3qZZFWec79HSrY0YNrgprwV87g/HNJXQX/CRf13QLTx9ndrZ1sugUWrMdQl20m4L
 yDOokztgDbM9o6dxFgLBb3TagP9wZtbvt1p3+Z5RwGxJfU29Lhk9k46oNtu17A/X0dcY
 +7VF8qoUslblIMiL7OoBfi+zuvzJQTwwYl530a+8EURshWI3wGy2zLhU7pY31YJVgalE
 mF93Kut8zk9QRQZdBhmZ6pm0i9FM+xUFI6oQae18MusaeHUtf3XdgRf4i0jsfuKPjhSQ
 S+1g==
X-Gm-Message-State: APjAAAXWXv8+s/oFA7B8m537VgUoGKU4QVjBs1la8hnyiLNH+LSdcUVD
 6ann2iKAFqLifwkefi9ctYQZVArHE47u6g==
X-Google-Smtp-Source: APXvYqybmqIpBp9U8qkXFdx1Aalp/NiAS3JEZsDaIEv4qkZzcxH0fpQeE9YIjQ3ycCwsJvmjoC4ubQ==
X-Received: by 2002:a17:906:d7a3:: with SMTP id
 pk3mr22530624ejb.97.1568088770745; 
 Mon, 09 Sep 2019 21:12:50 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id t30sm3332436edt.91.2019.09.09.21.12.50
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Sep 2019 21:12:50 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id l11so17114908wrx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 21:12:50 -0700 (PDT)
X-Received: by 2002:a5d:4e89:: with SMTP id e9mr21305605wru.48.1568088301989; 
 Mon, 09 Sep 2019 21:05:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190909192244.9367-1-frederic.chen@mediatek.com>
 <20190909192244.9367-5-frederic.chen@mediatek.com>
In-Reply-To: <20190909192244.9367-5-frederic.chen@mediatek.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 10 Sep 2019 13:04:50 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DEn_N26M7B4X7fKHVA=XBtWJN=Y4VF7D9B=TkgXf_i+Q@mail.gmail.com>
Message-ID: <CAAFQd5DEn_N26M7B4X7fKHVA=XBtWJN=Y4VF7D9B=TkgXf_i+Q@mail.gmail.com>
Subject: Re: [RFC PATCH V3 4/5] platform: mtk-isp: Add Mediatek DIP driver
To: =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?=
 <frederic.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_211252_271203_BA6C6757 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shik Chen <shik@chromium.org>, devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?QWxsYW4gWWFuZyAo5qWK5pm66YieKQ==?= <Allan.Yang@mediatek.com>,
 =?UTF-8?B?SG9sbWVzIENoaW91ICjpgrHmjLop?= <holmes.chiou@mediatek.com>,
 suleiman@chromium.org, Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 Hans Verkuil <hans.verkuil@cisco.com>, zwisler@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Frederic,

On Tue, Sep 10, 2019 at 4:23 AM <frederic.chen@mediatek.com> wrote:
>
> From: Frederic Chen <frederic.chen@mediatek.com>
>
> This patch adds the driver of Digital Image Processing (DIP)
> unit in Mediatek ISP system, providing image format
> conversion, resizing, and rotation features.
>
> The mtk-isp directory will contain drivers for multiple IP
> blocks found in Mediatek ISP system. It will include ISP
> Pass 1 driver(CAM), sensor interface driver, DIP driver and
> face detection driver.
>
> Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
> ---
>  drivers/media/platform/mtk-isp/Makefile       |    7 +
>  .../media/platform/mtk-isp/isp_50/Makefile    |    7 +
>  .../platform/mtk-isp/isp_50/dip/Makefile      |   18 +
>  .../platform/mtk-isp/isp_50/dip/mtk_dip-dev.c |  650 +++++
>  .../platform/mtk-isp/isp_50/dip/mtk_dip-dev.h |  566 +++++
>  .../platform/mtk-isp/isp_50/dip/mtk_dip-hw.h  |  156 ++
>  .../platform/mtk-isp/isp_50/dip/mtk_dip-sys.c |  521 ++++
>  .../mtk-isp/isp_50/dip/mtk_dip-v4l2.c         | 2255 +++++++++++++++++
>  8 files changed, 4180 insertions(+)
>  create mode 100644 drivers/media/platform/mtk-isp/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/Makefile
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-dev.c
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-dev.h
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-hw.h
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
>  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-v4l2.c
>

Thanks for sending v3!

I'm going to do a full review a bit later, but please check one
comment about power handling below.

Other than that one comment, from a quick look, I think we only have a
number of style issues left. Thanks for the hard work!

[snip]
> +static void dip_runner_func(struct work_struct *work)
> +{
> +       struct mtk_dip_request *req = mtk_dip_hw_mdp_work_to_req(work);
> +       struct mtk_dip_dev *dip_dev = req->dip_pipe->dip_dev;
> +       struct img_config *config_data =
> +               (struct img_config *)req->working_buf->config_data.vaddr;
> +
> +       /*
> +        * Call MDP/GCE API to do HW excecution
> +        * Pass the framejob to MDP driver
> +        */
> +       pm_runtime_get_sync(dip_dev->dev);
> +       mdp_cmdq_sendtask(dip_dev->mdp_pdev, config_data,
> +                         &req->img_fparam.frameparam, NULL, false,
> +                         dip_mdp_cb_func, req);
> +}
[snip]
> +static void dip_composer_workfunc(struct work_struct *work)
> +{
> +       struct mtk_dip_request *req = mtk_dip_hw_fw_work_to_req(work);
> +       struct mtk_dip_dev *dip_dev = req->dip_pipe->dip_dev;
> +       struct img_ipi_param ipi_param;
> +       struct mtk_dip_hw_subframe *buf;
> +       int ret;
> +
> +       down(&dip_dev->sem);
> +
> +       buf = mtk_dip_hw_working_buf_alloc(req->dip_pipe->dip_dev);
> +       if (!buf) {
> +               dev_err(req->dip_pipe->dip_dev->dev,
> +                       "%s:%s:req(%p): no free working buffer available\n",
> +                       __func__, req->dip_pipe->desc->name, req);
> +       }
> +
> +       req->working_buf = buf;
> +       mtk_dip_wbuf_to_ipi_img_addr(&req->img_fparam.frameparam.subfrm_data,
> +                                    &buf->buffer);
> +       memset(buf->buffer.vaddr, 0, DIP_SUB_FRM_SZ);
> +       mtk_dip_wbuf_to_ipi_img_sw_addr(&req->img_fparam.frameparam.config_data,
> +                                       &buf->config_data);
> +       memset(buf->config_data.vaddr, 0, DIP_COMP_SZ);
> +
> +       if (!req->img_fparam.frameparam.tuning_data.present) {
> +               /*
> +                * When user enqueued without tuning buffer,
> +                * it would use driver internal buffer.
> +                */
> +               dev_dbg(dip_dev->dev,
> +                       "%s: frame_no(%d) has no tuning_data\n",
> +                       __func__, req->img_fparam.frameparam.frame_no);
> +
> +               mtk_dip_wbuf_to_ipi_tuning_addr
> +                               (&req->img_fparam.frameparam.tuning_data,
> +                                &buf->tuning_buf);
> +               memset(buf->tuning_buf.vaddr, 0, DIP_TUNING_SZ);
> +       }
> +
> +       mtk_dip_wbuf_to_ipi_img_sw_addr(&req->img_fparam.frameparam.self_data,
> +                                       &buf->frameparam);
> +       memcpy(buf->frameparam.vaddr, &req->img_fparam.frameparam,
> +              sizeof(req->img_fparam.frameparam));
> +       ipi_param.usage = IMG_IPI_FRAME;
> +       ipi_param.frm_param.handle = req->id;
> +       ipi_param.frm_param.scp_addr = (u32)buf->frameparam.scp_daddr;
> +
> +       mutex_lock(&dip_dev->hw_op_lock);
> +       atomic_inc(&dip_dev->num_composing);
> +       ret = scp_ipi_send(dip_dev->scp_pdev, SCP_IPI_DIP, &ipi_param,
> +                          sizeof(ipi_param), 0);

We're not holding the pm_runtime enable count here
(pm_runtime_get_sync() wasn't called), so rproc_shutdown() might have
been called. Wouldn't that affect the ability for this IPI to run?

We had a related discussion with Jerry on the FD series and I think
the conclusion is:
a) if there is any state that needs to be preserved between jobs, that
would be cleared by rproc_shutdown() then we need to call
rproc_boot/shutdown() when we start/stop streaming.
b) it there is no such state, we can keep them inside runtime PM
callbacks, but we need to call pm_runtime_get_sync() before sending an
IPI and pm_runtime_mark_last_busy() + pm_runtime_put_autosuspend()
after the SCP signals completion. In this case the runtime PM
autosuspend delay should be set to around 2-3 times the delay needed
for rproc_shutdown() + rproc_boot() to complete.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
