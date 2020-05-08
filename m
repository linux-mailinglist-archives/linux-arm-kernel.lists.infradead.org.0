Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A801CA08B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 04:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZeY1mOdrZhKOjIXLRDPtNvClaA42zUhn/IpnoNJg3vc=; b=jY8GRZevT0b8sb
	J5Lm6lS8kP7bhpRjtT18eeL8kRENgxnZOP3D0FnsVE91daJ9BXn73rDMTItwuvzv8jlahU9vYl88i
	T1eaR/p4IX2cf+mt3k9CR5KTt19Uv6V7dM2nUzp9qVAjEc63oT/IlwloOZ5q2REqHnD5QwbCky0IC
	bovmpSHNNio6L72vndMVb94me6gAUHoijx1KcepAvM3upufB+q1JzoyuRTs0u6dEgAushZiII+DqU
	40S9JPabRbXlwIAyESbeVwuAbnVqtWb9DSOoVDHpPfkERVmCdhrxWHDmyT9iU4L24F1KgFpqxaYTk
	jg+QVcwPrKUkKcuiNoPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWsUi-0004Pl-Dh; Fri, 08 May 2020 02:12:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWsUZ-0004OM-MC; Fri, 08 May 2020 02:12:01 +0000
X-UUID: 3e48e343b61c4becaf17aabd3d8c145c-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=xhErCNTGA4K1pAz3pSf/U2DgPhd9wGG9OEf9rfF2qB8=; 
 b=ihVKjETOtq4XPJCDKgw0f5xDFJOeMBOhYUiefX3gnLUA/uUUbeQ4+9cYCW9m9lh3nGOrwLCxn6ao60EN/LXglr3U1TVcxGL90cTR1dX/sOZ2hSUmfCle7C+2eMZwO2b6AcReTpo8xlYvx1nI6rolKTwrEU1hhI6XQBSyHZ4jzdQ=;
X-UUID: 3e48e343b61c4becaf17aabd3d8c145c-20200507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1522868377; Thu, 07 May 2020 18:11:48 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 19:02:59 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 10:02:51 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 8 May 2020 10:02:50 +0800
Message-ID: <1588903371.16825.14.camel@mtksdccf07>
Subject: Re: [RFC PATCH V4 0/4] media: platform: Add support for Face
 Detection (FD) on mt8183 SoC
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>
Date: Fri, 8 May 2020 10:02:51 +0800
In-Reply-To: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D3865495D52D3B1B12527068DC0C2A006499A4DC78BD746801E96892862A5F8D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_191159_739114_ED214224 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <Sean.Cheng@mediatek.com>, "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 "tfiga@chromium.org" <tfiga@chromium.org>,
 Jungo Lin =?UTF-8?Q?=28=E6=9E=97=E6=98=8E=E4=BF=8A=29?=
 <jungo.lin@mediatek.com>, Sj
 Huang =?UTF-8?Q?=28=E9=BB=83=E4=BF=A1=E7=92=8B=29?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "pihsun@chromium.org" <pihsun@chromium.org>,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <Frederic.Chen@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 Christie Yu =?UTF-8?Q?=28=E6=B8=B8=E9=9B=85=E6=83=A0=29?=
 <christie.yu@mediatek.com>, "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent, Tomasz, Matthias,

gentle ping for this patch set,
If no new comments, I would like to send a newer version.

Thanks and Best Regards,
Jerry

On Wed, 2019-12-04 at 20:47 +0800, Jerry-ch Chen wrote:
> Hello,
> 
> This RFC patch series is adding Face Detection (FD) driver on Mediatek
> mt8183 SoC. It belongs to the first Mediatek's camera driver series based
> on V4L2 and media controller framework. I posted the main part of the FD
> driver as RFC to discuss first and would like some review comments.
> 
> ==============
> Introduction
> ==============
> 
> Face Detection (FD) unit provides hardware accelerated face detection
> feature. It can detect different sizes of faces in a given image.
> 
> The driver is implemented as a normal V4L2 memory-to-memory device and
> supports V4L2 controls for detection settings. It has two buffer queues.
> 
> 1. Video output buffer: RAW image for face detection.
> 
> 2. Meta capture buffer: Result of the detected faces.
> 
> ==================
> Changes in v4
> ==================
> 
> RFC v4 includes the following modification:
> 1. Includes v4l2-mem2mem changes: add v4l2_m2m_suspend, v4l2_m2m_resume
> 
> 2. Move FD V4L2 control ids back inside FD driver
> 
> 3. Depend on newer SCP driver api
> 
> 4. Add exit hw flow for FD driver
> 
> 5. Add hardware timeout handling in the FD firmware
> 
> 6. Move allocation of dma buffer from connect / disconnect to driver probe
> / remove
> 
> Todo:
>  - Add v4l2 control menus for private mtk fd control
> ==================
> Changes in v3
> ==================
> 
> RFC v3 includes the following modification:
> 1. Adjust the private control ids and place them in
>  include/uapi/linux/mtk-fd-v4l2-controls.h
> 
> 2. Merge struct mtk_fd_hw info struct mtk_fd_dev
> 
> 3. Define FD meta capture buffer in include/uapi/linux/videodev2.h
> 
> 4. Remove the usage of get_reserved_memory by scp driver,
>  use dma_alloc api instead
> 
> Todo:
>  - Add v4l2 control menus for private mtk fd control
>  - Refine the job finish flow when system suspend
> ==================
> Changes in v2
> ==================
> 
> RFC v2 includes the following modification:
> 1. Implement FD as a V4L2 mem2mem driver
> 
> 2. Replace meta input with V4L2 controls
> 
> ==================
> Changes in v1
> ==================
> 
> RFC v1 includes the following modification:
> 1. Uses Request API instead of FD's buffer collection design
> 
> 2. removed unnecessary abstraction structurally, including mtk_fd_ctx and
> related ops
> 
> 3. removed the fd_smem node from device tree
> 
> 4. Fixed the common issues Tomasz commented on Mediatek ISP Pass 1's RFC v0
> patch series
> 
> ==================
> Dependent patch
> ==================
> 
> FD driver depends on SCP driver. The patches are as following:
> 
> [1]. Add support for mt8183 SCP
> https://patchwork.kernel.org/cover/1152350/
> 
> ==================
> Compliance test
> ==================
> 
> * Version: https://git.linuxtv.org/v4l-utils.git/commit/?id=b16f9e945d74aa5
> * Note: Some failures are caused by the implementation of FD driver,
>         whic is a m2m device with VIDEO_OUT and META_CAPTURE queues,
>         therefore we can't set V4L2_CAP_VIDEO_M2M in device capability, and
>         fail in some non-m2m v4l2 test cases.
> * Test command: v4l2-compliance -m 2
> * test output:
> 
> v4l2-compliance SHA: not available, 32 bits
> 
> Compliance test for mtk-fd-4.0 device /dev/media2:
> 
> Media Driver Info:
>         Driver name      : mtk-fd-4.0
>         Model            : mtk-fd-4.0
>         Serial           :
>         Bus info         : platform:1502b000.fd
>         Media version    : 4.19.84
>         Hardware revision: 0x00000000 (0)
>         Driver version   : 4.19.84
> 
> Required ioctls:
>         test MEDIA_IOC_DEVICE_INFO: OK
> 
> Allow for multiple opens:
>         test second /dev/media2 open: OK
>         test MEDIA_IOC_DEVICE_INFO: OK
>         test for unlimited opens: OK
> 
> Media Controller ioctls:
>         test MEDIA_IOC_G_TOPOLOGY: OK
>         Entities: 3 Interfaces: 1 Pads: 4 Links: 4
>         test MEDIA_IOC_ENUM_ENTITIES/LINKS: OK
>         test MEDIA_IOC_SETUP_LINK: OK
> 
> Total for mtk-fd-4.0 device /dev/media2: 7, Succeeded: 7, Failed: 0, Warnings: 0
> --------------------------------------------------------------------------------
> Compliance test for mtk-fd-4.0 device /dev/video32:
> 
> Driver Info:
>         Driver name      : mtk-fd-4.0
>         Card type        : mtk-fd-4.0
>         Bus info         : platform:1502b000.fd
>         Driver version   : 4.19.84
>         Capabilities     : 0x84a02000
>                 Video Output Multiplanar
>                 Metadata Capture
>                 Streaming
>                 Extended Pix Format
>                 Device Capabilities
>         Device Caps      : 0x04a02000
>                 Video Output Multiplanar
>                 Metadata Capture
>                 Streaming
>                 Extended Pix Format
> Media Driver Info:
>         Driver name      : mtk-fd-4.0
>         Model            : mtk-fd-4.0
>         Serial           :
>         Bus info         : platform:1502b000.fd
>         Media version    : 4.19.84
>         Hardware revision: 0x00000000 (0)
>         Driver version   : 4.19.84
> Interface Info:
>         ID               : 0x0300000c
>         Type             : V4L Video
> Entity Info:
>         ID               : 0x00000001 (1)
>         Name             : mtk-fd-4.0-source
>         Function         : V4L2 I/O
>         Pad 0x01000002   : 0: Source
>           Link 0x02000008: to remote pad 0x1000005 of entity 'mtk-fd-4.0-proc': Data, Enabled, Immutable
> 
> Required ioctls:
>         test MC information (see 'Media Driver Info' above): OK
>                 fail: v4l2-compliance.cpp(668): dcaps & output_caps
>         test VIDIOC_QUERYCAP: FAIL
> 
> Allow for multiple opens:
>         test second /dev/video32 open: OK
>                 fail: v4l2-compliance.cpp(668): dcaps & output_caps
>         test VIDIOC_QUERYCAP: FAIL
>         test VIDIOC_G/S_PRIORITY: OK
>         test for unlimited opens: OK
> 
> Debug ioctls:
>         test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
>         test VIDIOC_LOG_STATUS: OK (Not Supported)
> 
> Input ioctls:
>         test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
>         test VIDIOC_ENUMAUDIO: OK (Not Supported)
>         test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
>         test VIDIOC_G/S_AUDIO: OK (Not Supported)
>         Inputs: 0 Audio Inputs: 0 Tuners: 0
> 
> Output ioctls:
>         test VIDIOC_G/S_MODULATOR: OK (Not Supported)
>         test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
>         test VIDIOC_ENUMAUDOUT: OK (Not Supported)
>         test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
>         test VIDIOC_G/S_AUDOUT: OK (Not Supported)
>         Outputs: 0 Audio Outputs: 0 Modulators: 0
> 
> Input/Output configuration ioctls:
>         test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
>         test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
>         test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
>         test VIDIOC_G/S_EDID: OK (Not Supported)
> 
> Control ioctls:
>         test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
>         test VIDIOC_QUERYCTRL: OK
>         test VIDIOC_G/S_CTRL: OK
>         test VIDIOC_G/S/TRY_EXT_CTRLS: OK
>         test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
>         test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
>         Standard Controls: 1 Private Controls: 6
> 
> Format ioctls:
>         test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
>         test VIDIOC_G/S_PARM: OK (Not Supported)
>         test VIDIOC_G_FBUF: OK (Not Supported)
>                 fail: v4l2-test-formats.cpp(457): pixelformat 00000000 () for buftype 10 not reported by ENUM_FMT
>         test VIDIOC_G_FMT: FAIL
>                 fail: v4l2-test-formats.cpp(457): pixelformat 00000000 () for buftype 10 not reported by ENUM_FMT
>         test VIDIOC_TRY_FMT: FAIL
>                 fail: v4l2-test-formats.cpp(457): pixelformat ffffffff (-BE) for buftype 10 not reported by ENUM_FMT
>         test VIDIOC_S_FMT: FAIL
>         test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
>         test Cropping: OK (Not Supported)
>         test Composing: OK (Not Supported)
>         test Scaling: OK (Not Supported)
> 
> Codec ioctls:
>         test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
>         test VIDIOC_G_ENC_INDEX: OK (Not Supported)
>         test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)
> 
> Buffer ioctls:
>                 fail: v4l2-test-buffers.cpp(667): q2.reqbufs(node->node2, 1) != EBUSY
>         test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: FAIL
>         test VIDIOC_EXPBUF: OK
>         test Requests: OK
> 
> Total for mtk-fd-4.0 device /dev/video32: 45, Succeeded: 39, Failed: 6, Warnings: 0
> 
> Grand Total for mtk-fd-4.0 device /dev/media2: 52, Succeeded: 46, Failed: 6, Warnings: 0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
