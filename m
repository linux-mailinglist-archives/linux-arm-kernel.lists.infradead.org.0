Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC84DA787
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KzZL8/Je7eQRIgZ8p5siIBdzcNkkjQvwMlSk902S5Wc=; b=kmoXKEB+hHznSh
	6WAdOGCGjqjc7/X7wSaIqF5/h1NbOOVJd+pxuW8/e4UOtHl0qCd9dkLxvfOa30cD3nC7GaYr3J5pE
	o7tEysvqMjHco6s4i60Wt5pp85JR0kH9+K4jCSjwRhxU/RwDiEyY6KJIukwejo0cbSbQ1cc7U0gAa
	Jo4ckwTCpT/JOEXsA8K3weice9kOyQRxJQdzvsk3M3qTr4pcVxAKaYrobNBq6/6ZrscsuYJpzGh6e
	jfhE7NpSA4IzTNvd7d7RUeK3Up/KgxQzCI8U0dYfFIo8yiCMfwIUeXOqihvjxGhVdpv6CART4II5m
	6f4G6E2OAUi/9k6sZ5rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL1L7-0008VZ-OS; Thu, 17 Oct 2019 08:40:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL1Kr-0008Se-RT; Thu, 17 Oct 2019 08:40:43 +0000
X-UUID: 2abe8066e09f4771b52180f61c9f1665-20191017
X-UUID: 2abe8066e09f4771b52180f61c9f1665-20191017
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 359474301; Thu, 17 Oct 2019 00:40:29 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 01:40:35 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 16:40:34 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 17 Oct 2019 16:40:33 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v4 0/5] Add support for mt2701 JPEG ENC support
Date: Thu, 17 Oct 2019 16:40:28 +0800
Message-ID: <20191017084033.28299-1-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_014041_905058_CEA95EE1 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset add support for mt2701 JPEG ENC support.

This is the compliance test result for jpeg dec and enc.

The JPEG dec log:                                           
------------------------------------------------------------
v4l2-compliance -d /dev/video0                                                     
v4l2-compliance SHA: b51e9a8a74eed6da15127fe5eadf515914347f76, 32 bits             
                                                                                   
Compliance test for mtk-jpeg device /dev/video0:                                   
                                                                                   
Driver Info:                                                                       
        Driver name      : mtk-jpeg                                                
        Card type        : mtk-jpeg decoder                                        
        Bus info         : platform:15004000.jpegdec                               
        Driver version   : 5.4.0                                                   
        Capabilities     : 0x84204000                                              
                Video Memory-to-Memory Multiplanar                                 
                Streaming                                                          
                Extended Pix Format                                                
                Device Capabilities                                                
        Device Caps      : 0x04204000                                              
                Video Memory-to-Memory Multiplanar                                 
                Streaming                                                          
                Extended Pix Format                                                
        Detected JPEG Decoder                                                      
                                                                                   
Required ioctls:                                                                   
        test VIDIOC_QUERYCAP: OK                                                   
                                                                                   
Allow for multiple opens:                                                          
        test second /dev/video0 open: OK                                           
        test VIDIOC_QUERYCAP: OK                                                   
        test VIDIOC_G/S_PRIORITY: OK                                               
        test for unlimited opens: OK                                               
                                                                                   
Debug ioctls:                                                                      
        test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)                           
        test VIDIOC_LOG_STATUS: OK (Not Supported)                                 
                                                                                   
Input ioctls:                                                                      
        test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)                  
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)                              
        test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)                             
        test VIDIOC_ENUMAUDIO: OK (Not Supported)                                  
        test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)                              
        test VIDIOC_G/S_AUDIO: OK (Not Supported)                                  
        Inputs: 0 Audio Inputs: 0 Tuners: 0                                        
                                                                                   
Output ioctls:                                                                     
        test VIDIOC_G/S_MODULATOR: OK (Not Supported)                              
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)                              
        test VIDIOC_ENUMAUDOUT: OK (Not Supported)                                 
        test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)                             
        test VIDIOC_G/S_AUDOUT: OK (Not Supported)                                 
        Outputs: 0 Audio Outputs: 0 Modulators: 0                                  
                                                                                   
Input/Output configuration ioctls:                                                 
        test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)                         
        test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)                  
        test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)                             
        test VIDIOC_G/S_EDID: OK (Not Supported)                                   
                                                                                   
Control ioctls:                                                                    
        test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK                                   
        test VIDIOC_QUERYCTRL: OK                                                  
        test VIDIOC_G/S_CTRL: OK                                                   
        test VIDIOC_G/S/TRY_EXT_CTRLS: OK                                          
        test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK (Not Supported)                
        test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)                               
        Standard Controls: 0 Private Controls: 0                                   
                                                                                   
Format ioctls:                                                                     
        test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK                         
        test VIDIOC_G/S_PARM: OK (Not Supported)                                   
        test VIDIOC_G_FBUF: OK (Not Supported)                                     
        test VIDIOC_G_FMT: OK                                                      
        test VIDIOC_TRY_FMT: OK                                                    
        test VIDIOC_S_FMT: OK                                                      
        test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)                           
        test Cropping: OK                                                          
        test Composing: OK                                                         
        test Scaling: OK                                                           
                                                                                   
Codec ioctls:                                                                      
        test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)                          
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)                                
        test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)                          
                                                                                   
Buffer ioctls:                                                                     
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK                               
        test VIDIOC_EXPBUF: OK                                                     
        test Requests: OK (Not Supported)                                          
                                                                                   
Total for mtk-jpeg device /dev/video0: 44, Succeeded: 44, Failed: 0, Warnings: 0   
------------------------------------------------------------

The JPEG enc log:

------------------------------------------------------------
v4l2-compliance -d /dev/video1 
v4l2-compliance SHA: b51e9a8a74eed6da15127fe5eadf515914347f76, 32 bits

Compliance test for mtk-jpeg device /dev/video1:

Driver Info:
        Driver name      : mtk-jpeg
        Card type        : mtk-jpeg encoder
        Bus info         : platform:1500a000.jpegenc
        Driver version   : 5.4.0
        Capabilities     : 0x84204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
                Device Capabilities
        Device Caps      : 0x04204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
        Detected JPEG Encoder

Required ioctls:
        test VIDIOC_QUERYCAP: OK

Allow for multiple opens:
        test second /dev/video1 open: OK
        test VIDIOC_QUERYCAP: OK
        test VIDIOC_G/S_PRIORITY: OK
        test for unlimited opens: OK

Debug ioctls:
        test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
        test VIDIOC_LOG_STATUS: OK (Not Supported)

Input ioctls:
        test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
        test VIDIOC_ENUMAUDIO: OK (Not Supported)
        test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
        test VIDIOC_G/S_AUDIO: OK (Not Supported)
        Inputs: 0 Audio Inputs: 0 Tuners: 0

Output ioctls:
        test VIDIOC_G/S_MODULATOR: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_ENUMAUDOUT: OK (Not Supported)
        test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
        test VIDIOC_G/S_AUDOUT: OK (Not Supported)
        Outputs: 0 Audio Outputs: 0 Modulators: 0

Input/Output configuration ioctls:
        test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
        test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
        test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
        test VIDIOC_G/S_EDID: OK (Not Supported)

Control ioctls:
        test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
        test VIDIOC_QUERYCTRL: OK
        test VIDIOC_G/S_CTRL: OK
        test VIDIOC_G/S/TRY_EXT_CTRLS: OK
        test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
        test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
        Standard Controls: 4 Private Controls: 0

Format ioctls:
        test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
        test VIDIOC_G/S_PARM: OK (Not Supported)
        test VIDIOC_G_FBUF: OK (Not Supported)
        test VIDIOC_G_FMT: OK
        test VIDIOC_TRY_FMT: OK
        test VIDIOC_S_FMT: OK
        test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
        test Cropping: OK
        test Composing: OK
        test Scaling: OK (Not Supported)

Codec ioctls:
        test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)
        test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls:
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
        test VIDIOC_EXPBUF: OK
        test Requests: OK (Not Supported)

Total for mtk-jpeg device /dev/video1: 44, Succeeded: 44, Failed: 0, Warnings: 0
------------------------------------------------------------

Change compared to v3:
-put original v4l2-compliance bug fix in a separate patch.
-split mtk_jpeg_try_fmt_mplane() to two functions, one for encoder, one
 for decoder.
-split mtk_jpeg_set_default_params() to two functions, one for encoder,
 one for decoder.
-add cropping support for encoder in g/s_selection ioctls.
-cancle v3 patch 'media:v4l2-ctrl: Add jpeg enc exif mode control',
 because that exif information can use V4L2_JPEG_ACTIVE_MARKER_APP1
 annotation: Exif metadata are restricted in size to 64kB in JPEG
 images because according to the specification this information be
 contained within a single JPEG APP1 segment (from wikipedia).
-change MTK_JPEG_MAX_WIDTH/MTK_JPEG_MAX_HEIGH from 8192 to 65535 by
 specification.
-move width shifting operation behind aligning operation in
 mtk_jpeg_try_enc_fmt_mplane() for bug fix.
-fix user abuseing data_offset issue for DMABUF in
 mtk_jpeg_set_enc_src().
-fix kbuild warings: change MTK_JPEG_MIN_HEIGHT/MTK_JPEG_MAX_HEIGHT and
                     MTK_JPEG_MIN_WIDTH/MTK_JPEG_MAX_WIDTH from int
                     type to unsigned int type.
                     fix msleadingly indented of 'else'.

Xia Jiang (5):
  media: dt-bindings: Add jpeg enc device tree node document
  arm: dts: Add jpeg enc device tree node
  media: platform: Rename jpeg dec file name
  media: platform: Fix v4l2-compliance test bug
  media: platform: Add jpeg dec/enc feature

 .../bindings/media/mediatek-jpeg-encoder.txt  |  37 +
 arch/arm/boot/dts/mt2701.dtsi                 |  13 +
 drivers/media/platform/mtk-jpeg/Makefile      |   5 +-
 .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 746 ++++++++++++++----
 .../media/platform/mtk-jpeg/mtk_jpeg_core.h   | 123 ++-
 .../{mtk_jpeg_hw.c => mtk_jpeg_dec_hw.c}      |   2 +-
 .../{mtk_jpeg_hw.h => mtk_jpeg_dec_hw.h}      |   9 +-
 ...{mtk_jpeg_parse.c => mtk_jpeg_dec_parse.c} |   2 +-
 ...{mtk_jpeg_parse.h => mtk_jpeg_dec_parse.h} |   2 +-
 .../{mtk_jpeg_reg.h => mtk_jpeg_dec_reg.h}    |   0
 .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c | 175 ++++
 .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h |  60 ++
 .../platform/mtk-jpeg/mtk_jpeg_enc_reg.h      |  49 ++
 13 files changed, 1069 insertions(+), 154 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_hw.c => mtk_jpeg_dec_hw.c} (99%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_hw.h => mtk_jpeg_dec_hw.h} (91%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_parse.c => mtk_jpeg_dec_parse.c} (98%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_parse.h => mtk_jpeg_dec_parse.h} (92%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_reg.h => mtk_jpeg_dec_reg.h} (100%)
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h

-- 
2.18.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
