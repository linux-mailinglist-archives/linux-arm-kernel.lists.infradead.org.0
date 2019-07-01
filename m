Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEE85B461
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 07:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Arcv+Q3Pc7oPjHQGbMZ6E72ecZFD6kMq7eM4hIVmAPo=; b=exB5DU1cCRxZwT
	t4+5INlBFTOLGxRF8oE1iTZgwxH9S3SDpyNXkrltbJFezKKwyMe2Dps8wyHxLfBFklP/CnnJJyDGe
	TZjAlQ2bGPZRr5uRb2Wkw2CfMnqUG4ctZv0Y/0tnJ+Oo0eVBr3VQx26mhOJMm7YkciQhoSz3O6Ykx
	hSIL2ghM686+9Q9oeXNSh8BuaSomrgu58F6I+TUFc2Tq+fb5lkON8Vo+OjF6ZZ6s15f0/3aU+wURi
	i/dp3Y+/Wva+qFXxzdo8ygdJnilGSkv1eeArfLepE/wo2CXbmwKqwOjwRcFwWQ2Mfyn+Jg7Az6qYe
	Absro/6M5VLi+vbhsb0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhpDd-0001Lp-RL; Mon, 01 Jul 2019 05:51:13 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhpDQ-0001Kw-Dk
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 05:51:02 +0000
Received: by mail-pl1-x641.google.com with SMTP id 9so5958911ple.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 30 Jun 2019 22:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=A/bf03g2B0LFEMWFVuMqS52+scFCs4jGeSMIYZD/Yek=;
 b=Iix6DCQErETbgO5HQHrWqtCbZiPADvJ2Zlncl2KylCIk8Cg93HCSVs81Bx75VxNm5Q
 PP5sfNRFhvD+AqwURTKNnqfnR9cQYYSAPtqGAvDt1ETLY2Ewu0DYvu02sMU3MDbATy+n
 pzDjHcXKRMZtzEjlxpPg31D7lH+UlA7Cy7fvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=A/bf03g2B0LFEMWFVuMqS52+scFCs4jGeSMIYZD/Yek=;
 b=rXBBBKgUX08yUEpaDjeeUzw2ilW1PirAFv9NWbxqaHXlUhsF4XBpfyvIoHuH5VmaZp
 ixDtNZE/QV2XEVg1JcRHgkdCvcfLP7cvDIHEzXAh2J4SnybpOvLFpCzuJM/7hhowTXip
 E4dC0AkyvxGQTTVvuAA1gTHpDM9LpxODe0Jy4XoS2q+ce6eepI9aKxUlbLSiworTi+qS
 DByQZ2hIamQ8q7zjWcvGuofvKd3N7io1c49K0jmPrLhQkj+pTaLLw9r4k22onOkdwdMj
 DwD0xsdDSF//xdYoOYIDFl3ATsv95cy3xA9oDeRXK7PgSnuy106+v0Ylz6A9ioUdyepC
 AXJg==
X-Gm-Message-State: APjAAAXKGEUJNLUTw0pEeKEcquqTkvgJcST+/erXD0BvlpbQZPZlpvdH
 9+3gyUJwobfO0M+84poH4zQQw94wePk=
X-Google-Smtp-Source: APXvYqzC+Op6oAeeU9AgUZ7d0ASyA+LyLyhKBUxNaOMz6Sx06gGxqMdsPUz/BBlKvF7i0lYhlvijjA==
X-Received: by 2002:a17:902:9896:: with SMTP id
 s22mr15507737plp.4.1561960259568; 
 Sun, 30 Jun 2019 22:50:59 -0700 (PDT)
Received: from chromium.org ([2401:fa00:4:4:6d27:f13:a0fa:d4b6])
 by smtp.gmail.com with ESMTPSA id m11sm8243540pjv.21.2019.06.30.22.50.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 22:50:58 -0700 (PDT)
Date: Mon, 1 Jul 2019 14:50:53 +0900
From: Tomasz Figa <tfiga@chromium.org>
To: Jungo Lin <jungo.lin@mediatek.com>
Subject: Re: [RFC,v3 5/9] media: platform: Add Mediatek ISP P1 V4L2 control
Message-ID: <20190701055053.GA137710@chromium.org>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-6-jungo.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611035344.29814-6-jungo.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_225100_485557_287D0434 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: devicetree@vger.kernel.org, sean.cheng@mediatek.com,
 frederic.chen@mediatek.com, rynn.wu@mediatek.com, srv_heupstream@mediatek.com,
 robh@kernel.org, ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 hverkuil@xs4all.nl, ddavenport@chromium.org, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, laurent.pinchart@ideasonboard.com,
 matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jungo,

On Tue, Jun 11, 2019 at 11:53:40AM +0800, Jungo Lin wrote:
> Reserved Mediatek ISP P1 V4L2 control number with 16.
> Moreover, add two V4L2 controls for ISP P1 user space
> usage.
> 
> 1. V4L2_CID_MTK_GET_BIN_INFO
> - Provide the image output width & height in case
> camera binning mode is enabled.

Could you explain with a bit more details what these binned width and height
would mean? How would they relate to the video CAPTURE node width and height?
Isn't this something that should be rather exposed as an appropriate
selection rectangle, instead of custom controls?

> 
> 2. V4L2_CID_MTK_RAW_PATH
> - Export the path control of the main stream to user space.
> One is pure raw and the other is processing raw.
> The default value is 0 which outputs the pure raw bayer image
> from sesnor, without image processing in ISP HW.

Is it just effectively a full processing bypass? The driver seems to only
update the related configuration when the streaming starts. Can it be
controlled per-frame?

Generally this sounds more like something that should be modelled using the
media topology, similar to the example below.

/----------------\   /-------------------\   /--------------\
|                |---|                   |   |              |
| Capture Subdev |   | Processing Subdev |-o-| CAPTURE node |
|                |-\ |                   | | |              |
\----------------/ | \-------------------/ | \--------------/
                   |                       |
                   \-----------------------/

Then the userspace can select whether it wants the image from the capture
interface directly or procesed by the ISP by configuring the media links
appropriately.

The current limitation of this model is that it can't be easily configured
per-frame, as media configurations are not included in the requests yet.

[snip]

> +static int handle_ctrl_get_bin_info(struct v4l2_ctrl *ctrl, int is_width)
> +{
> +	struct mtk_cam_dev *cam_dev = ctrl->priv;
> +	struct v4l2_format *fmt;
> +
> +	fmt = &cam_dev->vdev_nodes[MTK_CAM_P1_MAIN_STREAM_OUT].vdev_fmt;
> +
> +	dev_dbg(&cam_dev->pdev->dev, "Get bin info w*h:%d*%d is_width:%d",
> +		fmt->fmt.pix_mp.width, fmt->fmt.pix_mp.height, is_width);
> +
> +	if (is_width)
> +		ctrl->val = fmt->fmt.pix_mp.width;
> +	else
> +		ctrl->val = fmt->fmt.pix_mp.height;

This seems to contradict to what the comment in the header says, because it just
always returns the video node format and doesn't seem to care about whether
binning is enabled or not.

> +
> +	return 0;
> +}
> +
> +static int handle_ctrl_get_process_raw(struct v4l2_ctrl *ctrl)
> +{
> +	struct mtk_cam_dev *cam_dev = ctrl->priv;
> +	struct isp_p1_device *p1_dev = get_p1_device(&cam_dev->pdev->dev);
> +
> +	ctrl->val = (p1_dev->isp_ctx.isp_raw_path == ISP_PROCESS_RAW_PATH);
> +
> +	dev_dbg(&cam_dev->pdev->dev, "Get process raw:%d", ctrl->val);
> +
> +	return 0;
> +}
> +
> +static int handle_ctrl_set_process_raw(struct v4l2_ctrl *ctrl)
> +{
> +	struct mtk_cam_dev *cam_dev = ctrl->priv;
> +	struct isp_p1_device *p1_dev = get_p1_device(&cam_dev->pdev->dev);
> +
> +	p1_dev->isp_ctx.isp_raw_path = (ctrl->val) ?
> +		ISP_PROCESS_RAW_PATH : ISP_PURE_RAW_PATH;
> +	dev_dbg(&cam_dev->pdev->dev, "Set process raw:%d", ctrl->val);
> +	return 0;
> +}
> +
> +static int mtk_cam_dev_g_ctrl(struct v4l2_ctrl *ctrl)

This is g_volatile_ctrl not, g_ctrl.

> +{
> +	switch (ctrl->id) {
> +	case V4L2_CID_MTK_PROCESSING_RAW:
> +		handle_ctrl_get_process_raw(ctrl);
> +		break;

No need to provide getters for non-volatile controls. The
framework manages them.

> +	case V4L2_CID_MTK_GET_BIN_WIDTH:
> +		handle_ctrl_get_bin_info(ctrl, 1);
> +		break;
> +	case V4L2_CID_MTK_GET_BIN_HEIGTH:
> +		handle_ctrl_get_bin_info(ctrl, 0);

It's trivial to get the value, so there isn't much benefit in having a
function to do so, especially if one needs something like a is_width
argument that further complicates the code.

> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +	return 0;
> +}
> +
> +static int mtk_cam_dev_s_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +	switch (ctrl->id) {
> +	case V4L2_CID_MTK_PROCESSING_RAW:
> +		return handle_ctrl_set_process_raw(ctrl);

Same as above. The operation is too trivial to deserve a function.

> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static const struct v4l2_ctrl_ops mtk_cam_dev_ctrl_ops = {
> +	.g_volatile_ctrl = mtk_cam_dev_g_ctrl,
> +	.s_ctrl = mtk_cam_dev_s_ctrl,
> +};
> +
> +struct v4l2_ctrl_config mtk_cam_controls[] = {
> +	{
> +	.ops = &mtk_cam_dev_ctrl_ops,
> +	.id = V4L2_CID_MTK_PROCESSING_RAW,
> +	.name = "MTK CAM PROCESSING RAW",
> +	.type = V4L2_CTRL_TYPE_BOOLEAN,
> +	.min = 0,
> +	.max = 1,
> +	.step = 1,
> +	.def = 1,
> +	},
> +	{
> +	.ops = &mtk_cam_dev_ctrl_ops,
> +	.id = V4L2_CID_MTK_GET_BIN_WIDTH,
> +	.name = "MTK CAM GET BIN WIDTH",
> +	.type = V4L2_CTRL_TYPE_INTEGER,
> +	.min = IMG_MIN_WIDTH,
> +	.max = IMG_MAX_WIDTH,
> +	.step = 1,
> +	.def = IMG_MAX_WIDTH,
> +	.flags = V4L2_CTRL_FLAG_READ_ONLY | V4L2_CTRL_FLAG_VOLATILE,
> +	},
> +	{
> +	.ops = &mtk_cam_dev_ctrl_ops,
> +	.id = V4L2_CID_MTK_GET_BIN_HEIGTH,
> +	.name = "MTK CAM GET BIN HEIGHT",
> +	.type = V4L2_CTRL_TYPE_INTEGER,
> +	.min = IMG_MIN_HEIGHT,
> +	.max = IMG_MAX_HEIGHT,
> +	.step = 1,
> +	.def = IMG_MAX_HEIGHT,
> +	.flags = V4L2_CTRL_FLAG_READ_ONLY | V4L2_CTRL_FLAG_VOLATILE,
> +	},
> +};
> +
> +int mtk_cam_ctrl_init(struct mtk_cam_dev *cam_dev,
> +		      struct v4l2_ctrl_handler *hdl)
> +{
> +	unsigned int i;
> +
> +	/* Initialized HW controls, allow V4L2_CID_MTK_CAM_MAX ctrls */
> +	v4l2_ctrl_handler_init(hdl, V4L2_CID_MTK_CAM_MAX);
> +	if (hdl->error) {

This should be checked at the end, after all the controls are added.

Best regards,
Tomasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
