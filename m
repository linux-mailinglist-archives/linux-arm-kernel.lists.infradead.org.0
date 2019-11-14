Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031B1FC1BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 09:43:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMKgccXnJhKBECX1GPV8pG4OLjdAiQiFVUvga09WQSA=; b=PrAyLNMcGPn/8P
	gc7YhhupcnOxA3xkbvP7umQwFNVAiL+y7x0FdvpBISI7+Gh1gbNkdJ5XYqraA/RZdFaixgyVFsjNK
	zmPv77ypnjMwsseVaGlXA0c2I4ezXuWLxQKKHdMdPgJ2xmJMek7OSC3Nia/B/2wwrqjQSkD+4eYkD
	0Dr9F6AoQaUSQdwYsEXH/o2x54zxNcDu0oy4/TUcCiqHI5DwInqIWnnIcYNYGb3ypfrscNF5shJG3
	FdtF2npXgzMm57sIDIWwnhCpg3r935edcqpbJv+AGOF7IFg2Elw5LJ+6xo4F1oJePrVtmFxfGZSQk
	LQDl7i77YzGPADa9xehg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVAiN-0002MD-UK; Thu, 14 Nov 2019 08:42:55 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVAiF-0002L9-8S; Thu, 14 Nov 2019 08:42:49 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud9.xs4all.net with ESMTPA
 id VAi8i8e2F5b4MVAiBin4Y7; Thu, 14 Nov 2019 09:42:44 +0100
Subject: Re: [PATCH v11 00/11] Rockchip ISP Driver
To: Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org
References: <20191114051242.14651-1-helen.koike@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <996a9b6a-0e45-d627-9263-539c22e5f1c0@xs4all.nl>
Date: Thu, 14 Nov 2019 09:42:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191114051242.14651-1-helen.koike@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCatl9eRh7YojkfViHW3IY3zy0Et8VvCvBZPuF+MRKBjsa1hv/kd9TRTxaB8Y4ucsT93jyxMwZeH0cgUtQ/Jlyj1zPzm+zzd6EAp6NWxYaPsKOipuOWG
 yRS/zisqXqrxMrckNIe9Py4FmRTmjmvu7ZmL/oqxN6/iZd4VoHYxz6DVoZhiW0ot6BFWC+wpi/NZZUyo2Cjf79eNbyLb7QWxtVZh6NND0EUH74LI/5mzO0nS
 l95sBDchXrR6kIam4jhUv6pHdhY/MSGjD8iN0nTMy8q1+5PgxFC8MjuV4HvqE0+ZEpyeWyDq4HQMhnZwQ9GSxT7Vl128EVNF9zKdlBj/Qipm9TdC619E508I
 60U/iQAq2uUUs0BhkBFcHDvroUCPfvKfM29TSF1wTROS5OrDXML/TLNhL97wEJ2catd/IlSymxpONNs2vp2/0IAPYUeL1bTy/GOJN6uE5askh6l4vvP7+r62
 XhKLFBgPLRIbANwym00zzSeQXDvtn7zbf14xuurxEM+504s/T3+DZjKxugJyHZZNOgybW9bs+rvMOIvNjPpjsUiW6icbEIYm9xZ+1bfS+EJiQNxy566RCqD1
 YwEAo/PvyvnMZlu8BlMKLZcuCD5rPAzJHzBiCFt5aF2yZk3tsUbKh0UfkWP331u9Yz4HsQA1T8m3ZJF2h1R/vhLjD7dJRnHm6ug4wfpVeVLeIe2XObDuCtxc
 J1Jns/Rkj8767BL1Y3oBiuxLOk7JvJBYUngNMiAm+hckUXdUXPd2fsh4u/U9Jci/l7dUPGuw7Yt46kSLSm83HXgby4A/epQnHOnnmCFRQGD4U7P+DKjYrMNd
 qQUjJrJy4wS9MrHgCYfNgtn8mS7I80YWVw20EEda18P3Y1lH9vVZGts6vTi52ihPzcRHdrfCGzXKOZYqNXS1ZzKXykK0eB1xHMHbJVY7LfZux5b+cQjM5nnS
 9GE0Iw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_004247_462514_2F3B0744 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, jacob-chen@iotwrt.com,
 gregkh@linuxfoundation.org, jeffy.chen@rock-chips.com, zyc@rock-chips.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org, robh+dt@kernel.org,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, zhengsq@rock-chips.com, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/14/19 6:12 AM, Helen Koike wrote:
> Hello,
> 
> This series adds the Rockchip Image Signal Processing Unit v1 driver to
> staging.
> 
> The main reason to be in staging is that people are already using it from the
> mailing list (including libcamera), and having it in mainline makes the workflow
> easier. Also, it is easier for other people to contribute back (with code
> or testing the driver).
> 
> We plan to actively work on this driver to get it our of staging.
> 
> This patchset is also available at:
> https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/v11
> 
> Libcamera patched to work with this version:
> https://gitlab.collabora.com/koike/libcamera
> (also sent to the mailing list)
> 
> The major difference in v11 are:
> - Fixed compiling warnings found with W=1
> - Fixed checkpatch errors
> - Add clock-names values in dt-bindings

Looking at checkpatch I see a few remaining issues that I believe should be
fixed before merging this:

CHECK: spinlock_t definition without comment
#575: FILE: drivers/staging/media/rkisp1/isp_stats.h:43:
+       spinlock_t irq_lock;

CHECK: struct mutex definition without comment
#581: FILE: drivers/staging/media/rkisp1/isp_stats.h:49:
+       struct mutex wq_lock;

CHECK: spinlock_t definition without comment
#1648: FILE: drivers/staging/media/rkisp1/isp_params.h:25:
+       spinlock_t config_lock;

CHECK: spinlock_t definition without comment
#2058: FILE: drivers/staging/media/rkisp1/capture.h:145:
+       spinlock_t vbq_lock;

Once this is done together with the Jacob Chen email clarification
it is ready to be merged for v5.6.

It passes all the sparse/smatch tests, so that's very good.

Regards,

	Hans

> 
> This series only touches MAINTAINERS file and drivers/staging/
> 
> MAINTAINERS
> drivers/staging/media/Kconfig
> drivers/staging/media/Makefile
> drivers/staging/media/phy-rockchip-dphy/Kconfig
> drivers/staging/media/phy-rockchip-dphy/Makefile
> drivers/staging/media/phy-rockchip-dphy/TODO
> drivers/staging/media/phy-rockchip-dphy/phy-rockchip-dphy.c
> drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.txt
> drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt
> drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> drivers/staging/media/rkisp1/Kconfig
> drivers/staging/media/rkisp1/Makefile
> drivers/staging/media/rkisp1/TODO
> drivers/staging/media/rkisp1/capture.c
> drivers/staging/media/rkisp1/capture.h
> drivers/staging/media/rkisp1/common.h
> drivers/staging/media/rkisp1/dev.c
> drivers/staging/media/rkisp1/dev.h
> drivers/staging/media/rkisp1/isp_params.c
> drivers/staging/media/rkisp1/isp_params.h
> drivers/staging/media/rkisp1/isp_stats.c
> drivers/staging/media/rkisp1/isp_stats.h
> drivers/staging/media/rkisp1/regs.c
> drivers/staging/media/rkisp1/regs.h
> drivers/staging/media/rkisp1/rkisp1.c
> drivers/staging/media/rkisp1/rkisp1.h
> drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> 
> Two drivers were added, including a TODO list for removing it from
> staging:
> 
> * phy-rockchip-dphy: mipi dphy driver used by csi
> * rkisp1: the image signal processing unit driver
> 
> Thanks
> Helen
> 
> Changes in v11:
> dphy
> - fix checkpatch errors
> - fix checkpatch errors
> rkisp1
> - Fix compiling warnings
> - Fix checkpatch errors
> stats
> - fix compiling warnings
> - fix checkpatch errors
> params
> - fix compiling warnings
> - fix checkpatch errors
> capture
> - fix checkpatch errors
> dev
> - fix checkpatch erros
> dt-bidings:
> - add clock-names values
> 
> Helen Koike (1):
>   MAINTAINERS: add entry for Rockchip ISP1 driver
> 
> Jacob Chen (9):
>   media: staging: phy-rockchip-dphy: add Rockchip MIPI Synopsys DPHY
>     driver
>   media: staging: rkisp1: add document for rkisp1 meta buffer format
>   media: staging: rkisp1: add Rockchip ISP1 subdev driver
>   media: staging: rkisp1: add ISP1 statistics driver
>   media: staging: rkisp1: add ISP1 params driver
>   media: staging: rkisp1: add capture device driver
>   media: staging: rkisp1: add rockchip isp1 core driver
>   media: staging: dt-bindings: Document the Rockchip ISP1 bindings
>   media: staging: dt-bindings: Document the Rockchip MIPI RX D-PHY
>     bindings
> 
> Jeffy Chen (1):
>   media: staging: rkisp1: add user space ABI definitions
> 
>  MAINTAINERS                                   |    6 +
>  drivers/staging/media/Kconfig                 |    4 +
>  drivers/staging/media/Makefile                |    2 +
>  .../staging/media/phy-rockchip-dphy/Kconfig   |   11 +
>  .../staging/media/phy-rockchip-dphy/Makefile  |    2 +
>  drivers/staging/media/phy-rockchip-dphy/TODO  |    6 +
>  .../phy-rockchip-dphy/phy-rockchip-dphy.c     |  401 ++++
>  .../bindings/media/rockchip-isp1.txt          |   77 +
>  .../bindings/media/rockchip-mipi-dphy.txt     |   38 +
>  .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    |   23 +
>  .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      |   22 +
>  drivers/staging/media/rkisp1/Kconfig          |   13 +
>  drivers/staging/media/rkisp1/Makefile         |    7 +
>  drivers/staging/media/rkisp1/TODO             |   23 +
>  drivers/staging/media/rkisp1/capture.c        | 1871 +++++++++++++++++
>  drivers/staging/media/rkisp1/capture.h        |  164 ++
>  drivers/staging/media/rkisp1/common.h         |   98 +
>  drivers/staging/media/rkisp1/dev.c            |  439 ++++
>  drivers/staging/media/rkisp1/dev.h            |   67 +
>  drivers/staging/media/rkisp1/isp_params.c     | 1586 ++++++++++++++
>  drivers/staging/media/rkisp1/isp_params.h     |   50 +
>  drivers/staging/media/rkisp1/isp_stats.c      |  495 +++++
>  drivers/staging/media/rkisp1/isp_stats.h      |   60 +
>  drivers/staging/media/rkisp1/regs.c           |  224 ++
>  drivers/staging/media/rkisp1/regs.h           | 1525 ++++++++++++++
>  drivers/staging/media/rkisp1/rkisp1.c         | 1243 +++++++++++
>  drivers/staging/media/rkisp1/rkisp1.h         |   97 +
>  .../staging/media/rkisp1/uapi/rkisp1-config.h |  819 ++++++++
>  28 files changed, 9373 insertions(+)
>  create mode 100644 drivers/staging/media/phy-rockchip-dphy/Kconfig
>  create mode 100644 drivers/staging/media/phy-rockchip-dphy/Makefile
>  create mode 100644 drivers/staging/media/phy-rockchip-dphy/TODO
>  create mode 100644 drivers/staging/media/phy-rockchip-dphy/phy-rockchip-dphy.c
>  create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.txt
>  create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt
>  create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
>  create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
>  create mode 100644 drivers/staging/media/rkisp1/Kconfig
>  create mode 100644 drivers/staging/media/rkisp1/Makefile
>  create mode 100644 drivers/staging/media/rkisp1/TODO
>  create mode 100644 drivers/staging/media/rkisp1/capture.c
>  create mode 100644 drivers/staging/media/rkisp1/capture.h
>  create mode 100644 drivers/staging/media/rkisp1/common.h
>  create mode 100644 drivers/staging/media/rkisp1/dev.c
>  create mode 100644 drivers/staging/media/rkisp1/dev.h
>  create mode 100644 drivers/staging/media/rkisp1/isp_params.c
>  create mode 100644 drivers/staging/media/rkisp1/isp_params.h
>  create mode 100644 drivers/staging/media/rkisp1/isp_stats.c
>  create mode 100644 drivers/staging/media/rkisp1/isp_stats.h
>  create mode 100644 drivers/staging/media/rkisp1/regs.c
>  create mode 100644 drivers/staging/media/rkisp1/regs.h
>  create mode 100644 drivers/staging/media/rkisp1/rkisp1.c
>  create mode 100644 drivers/staging/media/rkisp1/rkisp1.h
>  create mode 100644 drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
