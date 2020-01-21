Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA211439E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:54:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YcrQSrxdl51icEZmjz1/l377f+yp5qTO6fMQhHt6j70=; b=cZ+R60RsNb/9+J
	9LU+mhtHUB1sYNTU0T0cDkBxHpt933XQ7icra2y/vXN4NRlXwq9Puj6YBokmOkg0kewOnUxi4i/lG
	UxvXgbszmsFzZ2OPIXKVXx7QcjEfFvueycVuRr2B/GjIJJjm0aUXobmyRQLrg5N5eM/AMULVHzd4J
	SeH8/xtREI6SnfWMgH/mIXXcKfZECJemEqV0V6IzFU6ykx72LkdzCBUHd6Eh/XChbJnoBANmjeikH
	K9aNi8XsbRD78nOZ02TRPF4tEbBsupyeLRTTWpvlq0jpXIQ9GmIN89YMtC206kwhBAb7QptzozuWD
	AYZ9DJ8U8CIowYthmrhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqEO-0007wt-4s; Tue, 21 Jan 2020 09:53:56 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqEC-0007wM-5K; Tue, 21 Jan 2020 09:53:46 +0000
X-UUID: 367a4403b20c46f98236c4a98ad4b451-20200121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=D0cP03HzUzwZIfc22QbOm0CXUpf0hj1ajAXoMuBX6Yg=; 
 b=B6yphCHoiQFAVdq3gCjmT5BP5ApiU5NaMufWod8EcFm75bkkR3E3D4ucN6PaceSIbKpbF5PQ/1qnAnnVjqCqoCMPS7m6OJ89ybwuU5CbmPK9ptYc0HTEDayCH654gbyaqA86wUwfchfRWjNvszVcMP3HvVZVyn12l2InBJ9K5G8=;
X-UUID: 367a4403b20c46f98236c4a98ad4b451-20200121
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 24701241; Tue, 21 Jan 2020 01:53:39 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 01:54:37 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 17:53:03 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 21 Jan 2020 17:51:34 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v6 0/5] Add support for mt2701 JPEG ENC support
Date: Tue, 21 Jan 2020 17:53:16 +0800
Message-ID: <20200121095320.32258-1-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_015344_218421_8E301AAF 
X-CRM114-Status: UNSURE (   5.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
v4l2-compliance SHA: af33cc5ef00177edbb45d466faf9061197767f2b, 32 bits            
                                                                                  
Compliance test for mtk-jpeg device /dev/video0:                                  
                                                                                  
Driver Info:                                                                      
        Driver name      : mtk-jpeg                                               
        Card type        : mtk-jpeg decoder                                       
        Bus info         : platform:15004000.jpegdec                              
        Driver version   : 5.5.0                                                  
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
        test Cropping: OK (Not Supported)                                         
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
v4l2-compliance SHA: af33cc5ef00177edbb45d466faf9061197767f2b, 32 bits

Compliance test for mtk-jpeg device /dev/video1:

Driver Info:
        Driver name      : mtk-jpeg
        Card type        : mtk-jpeg encoder
        Bus info         : platform:1500a000.jpegenc
        Driver version   : 5.5.0
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
        test Composing: OK (Not Supported)
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

Change compared to v5:
-fix checkpatch, compiler and sparse/smatch warnings.

Xia Jiang (5):
  media: platform: Fix jpeg dec driver bug and improve code quality
  media: dt-bindings: Add jpeg enc device tree node document
  arm: dts: Add jpeg enc device tree node
  media: platform: Rename jpeg dec file name
  media: platform: Add jpeg dec/enc feature

 .../bindings/media/mediatek-jpeg-encoder.txt  |  37 +
 arch/arm/boot/dts/mt2701.dtsi                 |  13 +
 drivers/media/platform/mtk-jpeg/Makefile      |   5 +-
 .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 757 +++++++++++++-----
 .../media/platform/mtk-jpeg/mtk_jpeg_core.h   |  50 +-
 .../{mtk_jpeg_hw.c => mtk_jpeg_dec_hw.c}      |  10 +-
 .../{mtk_jpeg_hw.h => mtk_jpeg_dec_hw.h}      |  14 +-
 ...{mtk_jpeg_parse.c => mtk_jpeg_dec_parse.c} |   2 +-
 ...{mtk_jpeg_parse.h => mtk_jpeg_dec_parse.h} |   2 +-
 .../{mtk_jpeg_reg.h => mtk_jpeg_dec_reg.h}    |  19 +-
 .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c | 273 +++++++
 .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h |  86 ++
 .../platform/mtk-jpeg/mtk_jpeg_enc_reg.h      |  78 ++
 13 files changed, 1104 insertions(+), 242 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_hw.c => mtk_jpeg_dec_hw.c} (98%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_hw.h => mtk_jpeg_dec_hw.h} (89%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_parse.c => mtk_jpeg_dec_parse.c} (98%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_parse.h => mtk_jpeg_dec_parse.h} (92%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_reg.h => mtk_jpeg_dec_reg.h} (77%)
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h

-- 
2.18.0 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
