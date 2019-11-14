Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F207FC1E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 09:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zezo3haTcYcp0VEu5K8KM5xvZfeCUbcdDF5qzu39qkk=; b=MhN3seKy7jJC4y
	+Ov7d5WJ+Qylhy906swn62G0QhM5aAQfiqFs0wue/it33WFjg8VZi86Jf4H8Tmjkqpy1ALa7/jnar
	W4E6crIe2jazz+8oOvz5meN+ivG8FTMn7WBE6G/6PBrZT2xMEq0hK1EoqWrv5sGhX3FPOWIeN4f0N
	/wOzSyZIK5kn3PDDlKUQtWVYmbUAg0LFr5i+wRIHMvD0hKYuuWQBg6eRYb1Hq4sYz9PciMJQATjpc
	FCNgRmvxk9qSZ51hqJ0EYUyARVhl9yJg37/2432LjMHvObZml2I3muAhmhxUCxUV6xOg7s9GYi+el
	8mxFhwJHxOSadk++nTyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVArZ-0006WT-G3; Thu, 14 Nov 2019 08:52:25 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVArR-0006W3-Ng
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 08:52:19 +0000
Received: by mail-ed1-x543.google.com with SMTP id p59so4318414edp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 00:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uFeS+uA4c3JpCfgrQSP5W4UkQmv75ra/a0iuWSrGw8w=;
 b=F6GUlB6iw2SB4SJnps1K+f1038Vraj5TlbOPJ3viIHEBnViOrPo1rXMIYnA/hYWUXq
 UuV5QaciRJDPLRS9hzYNmdJewiXmJB0pTCHoGsxIZWSbfcznBC9Wp4Aaq1RBIa94v6Oj
 iGhktZEqYhWMO1kdpDeTFv33ORLDA+36hWg1c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uFeS+uA4c3JpCfgrQSP5W4UkQmv75ra/a0iuWSrGw8w=;
 b=oZFUlnzrjol7haxC9BB/sLK57TdTVIUzA94mphfp794X7DdG0St4acAvckeu8ohB49
 CI3ZIY1z4DC1eNiZWm+8FVi53iaI+xbyVyfOjjW3PwBLiXqLPa2t9NEhR6xmj4HrbCPL
 +wUYHVfSDAaCp8Y9FbXFE7CkpJVbxV+94M2Xoyzfc4AL5G3lIF/Cveozd68mzbCemofr
 DQiy6csFLcF6I3j/OYq8D4f79P3QWS3oeeUb79oBqEOrjk7fVQgUwlE8/5THQF5tusuz
 jSt85CO0R59wDpBRCGjUmn82646Dzx0l3Qnt04p0hE5yPk76ve0B8Hwm9eGR9bfAp4Tq
 uqag==
X-Gm-Message-State: APjAAAXe1CZcA2Dy3wnc3YaTOum2JuYfrBWCTTP0aH7BBwfhLqyteUHr
 6fMTNG6f2TmseOXATgI2+N9xc3b3WDjD3A==
X-Google-Smtp-Source: APXvYqwXBvNQzA84bWK5GMesozynxk8AIgbqQNG0KNRsms+4Bb1wzOlcNWgeQGmNV+JPsz5H2UM27Q==
X-Received: by 2002:a17:906:494d:: with SMTP id
 f13mr7379580ejt.250.1573721535754; 
 Thu, 14 Nov 2019 00:52:15 -0800 (PST)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id u30sm355835edl.30.2019.11.14.00.52.15
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Nov 2019 00:52:15 -0800 (PST)
Received: by mail-wm1-f45.google.com with SMTP id 8so4937640wmo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 00:52:15 -0800 (PST)
X-Received: by 2002:a7b:cbd9:: with SMTP id n25mr7174991wmi.64.1573721232315; 
 Thu, 14 Nov 2019 00:47:12 -0800 (PST)
MIME-Version: 1.0
References: <20191114051242.14651-1-helen.koike@collabora.com>
 <20191114051242.14651-3-helen.koike@collabora.com>
 <09d4f683-d03d-46c9-e9d2-b8cceb72446e@xs4all.nl>
In-Reply-To: <09d4f683-d03d-46c9-e9d2-b8cceb72446e@xs4all.nl>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 14 Nov 2019 17:47:00 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CLhUtTAWr_zF5ZPH7kPMQxjwzUMDYWowbbbc9bLowmRQ@mail.gmail.com>
Message-ID: <CAAFQd5CLhUtTAWr_zF5ZPH7kPMQxjwzUMDYWowbbbc9bLowmRQ@mail.gmail.com>
Subject: Re: [PATCH v11 02/11] media: staging: rkisp1: add document for rkisp1
 meta buffer format
To: Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_005217_795180_1090A540 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Eddie Cai <eddie.cai.linux@gmail.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 =?UTF-8?B?6ZKf5Lul5bSH?= <zyc@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jacob Chen <jacob-chen@iotwrt.com>, Hans Verkuil <hans.verkuil@cisco.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Jeffy <jeffy.chen@rock-chips.com>, Helen Koike <helen.koike@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Jacob Chen <jacob-chen@rock-chips.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Jacob Chen <jacob2.chen@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 5:21 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 11/14/19 6:12 AM, Helen Koike wrote:
> > From: Jacob Chen <jacob2.chen@rock-chips.com>
> >
> > This commit add document for rkisp1 meta buffer format
> >
> > Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
> > [refactored for upstream]
> > Signed-off-by: Helen Koike <helen.koike@collabora.com>
>
> checkpatch gives me:
>
> WARNING: Missing Signed-off-by: line by nominal patch author 'Jacob Chen <jacob2.chen@rock-chips.com>'
>
> Looking at this series I see duplicate Signed-off-by entries for Jacob Chen and a total
> of three different email addresses:
>
> jacob2.chen@rock-chips.com
> jacob-chen@rock-chips.com
> cc@rock-chips.com

I remember there used to be two different people named Jacob Chen in
the project. Also FWIW at least one of them
(jacob2.chen@rock-chips.com) is not at Rockchip anymore.

Looking in my inbox, I don't see anyone matching
jacob-chen@rock-chips.com, so that could possibly be a mistyped
jacob2.chen@rock-chips.com?

Best regards,
Tomasz



>
> It's confusing.
>
> Regards,
>
>         Hans
>
> >
> > ---
> >
> > Changes in v11: None
> > Changes in v10:
> > - unsquash
> >
> > Changes in v9:
> > - squash
> > - migrate to staging
> > - remove meta-formats.rst update
> >
> > Changes in v8:
> > - Add SPDX in the header
> > - Remove emacs configs
> > - Fix doc style
> >
> > Changes in v7:
> > - s/correspond/corresponding
> > - s/use/uses
> > - s/docuemnt/document
> >
> >  .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    | 23 +++++++++++++++++++
> >  .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      | 22 ++++++++++++++++++
> >  2 files changed, 45 insertions(+)
> >  create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> >  create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> >
> > diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> > new file mode 100644
> > index 000000000000..103b5cb79b7c
> > --- /dev/null
> > +++ b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> > @@ -0,0 +1,23 @@
> > +.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +.. _v4l2-meta-fmt-rkisp1-params:
> > +
> > +============================
> > +V4L2_META_FMT_RK_ISP1_PARAMS
> > +============================
> > +
> > +Rockchip ISP1 Parameters Data
> > +
> > +Description
> > +===========
> > +
> > +This format describes input parameters for the Rockchip ISP1.
> > +
> > +It uses c-struct :c:type:`rkisp1_isp_params_cfg`, which is defined in
> > +the ``linux/rkisp1-config.h`` header file.
> > +
> > +The parameters consist of multiple modules.
> > +The module won't be updated if the corresponding bit was not set in module_*_update.
> > +
> > +.. kernel-doc:: include/uapi/linux/rkisp1-config.h
> > +   :functions: rkisp1_isp_params_cfg
> > diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> > new file mode 100644
> > index 000000000000..4ad303f96421
> > --- /dev/null
> > +++ b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> > @@ -0,0 +1,22 @@
> > +.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +.. _v4l2-meta-fmt-rkisp1-stat:
> > +
> > +=============================
> > +V4L2_META_FMT_RK_ISP1_STAT_3A
> > +=============================
> > +
> > +
> > +Rockchip ISP1 Statistics Data
> > +
> > +Description
> > +===========
> > +
> > +This format describes image color statistics information generated by the Rockchip
> > +ISP1.
> > +
> > +It uses c-struct :c:type:`rkisp1_stat_buffer`, which is defined in
> > +the ``linux/rkisp1-config.h`` header file.
> > +
> > +.. kernel-doc:: include/uapi/linux/rkisp1-config.h
> > +   :functions: rkisp1_stat_buffer
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
