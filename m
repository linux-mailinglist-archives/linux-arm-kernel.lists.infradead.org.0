Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E547FBC2EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YSsyR7GL4lxNMSbMXBmJg5T2y8jIoEO1zJlN0/Y/Q3U=; b=HmfSwTolNKUool
	fV13XCMQ8sq2hemyCGKF91noH/s/qWiI3XtPMMmL9Y0hLQyDeqiVrPrLk7SpkZNwI2s7yI26v1766
	+njPCi5pt+GJtYpqGLtYaOjCSZRFn0LWkV0Z32g+6/KxfVoNY0wgBGp6Bx8rshPCK2peae1V+BnHX
	211xvpcLUSrOqZ1cpWQlkLctFewmQecfXd9JPZJlRD+RlQ7aE3uO1bIGEUta69+/3NXYZ9aee+0N7
	k8aleu6jmxj3UGFC0UskxKAu8lI68jwflqZIdTO5TrEXWi/qatTCFnfFm6gekz2AF/4BKDmVycALc
	CWQkIJ4lfHQXRjQbPslg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfU0-0000fl-8d; Tue, 24 Sep 2019 07:43:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfTm-0000et-JI; Tue, 24 Sep 2019 07:43:24 +0000
X-UUID: e18e1d952cdc491db0b240649f774e7d-20190923
X-UUID: e18e1d952cdc491db0b240649f774e7d-20190923
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1673537241; Mon, 23 Sep 2019 23:43:14 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 24 Sep 2019 00:43:13 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 24 Sep 2019 15:43:11 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 24 Sep 2019 15:43:11 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v3 0/5] Add support for mt2701 JPEG ENC support
Date: Tue, 24 Sep 2019 15:42:58 +0800
Message-ID: <20190924074303.22713-1-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_004322_645194_46EFD723 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
v4l2-compliance SHA: 847834c10d11b1cf67c95a8555115e4aa7b4f51b, 32 bits            
                                                                                  
Compliance test for mtk-jpeg device /dev/video0:                                  
                                                                                  
Driver Info:                                                                      
        Driver name      : mtk-jpeg                                               
        Card type        : mtk-jpeg decoder                                       
        Bus info         : platform:15004000.jpegdec                              
        Driver version   : 5.3.0                                                  
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
v4l2-compliance SHA: 847834c10d11b1cf67c95a8555115e4aa7b4f51b, 32 bits

Compliance test for mtk-jpeg device /dev/video1:

Driver Info:
        Driver name      : mtk-jpeg
        Card type        : mtk-jpeg encoder
        Bus info         : platform:1500a000.jpegenc
        Driver version   : 5.3.0
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

Total for mtk-jpeg device /dev/video1: 44, Succeeded: 44, Failed: 0, Warnings: 0
------------------------------------------------------------

Change compared to v2:
-delete Change-Id
-only test once handler->error after the last v4l2_ctrl_new_std()
-add a new separate patch for adding V4L2_CID_JPEG_ENABLE_EXIF
-change device tree node property compatible to an SoC specific compatible
-delete changing GPLv2 license to SPDX patch which new kernel has include

Xia Jiang (5):
  media: dt-bindings: Add jpeg enc device tree node document
  arm: dts: Add jpeg enc device tree node
  media: platform: Rename jpeg dec file name
  media: v4l2-ctrl: Add jpeg enc exif mode control
  media: platform: Add jpeg dec/enc feature

 .../bindings/media/mediatek-jpeg-encoder.txt  |  37 +
 .../media/uapi/v4l/ext-ctrls-jpeg.rst         |  10 +
 arch/arm/boot/dts/mt2701.dtsi                 |  13 +
 drivers/media/platform/mtk-jpeg/Makefile      |   5 +-
 .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 739 ++++++++++++++----
 .../media/platform/mtk-jpeg/mtk_jpeg_core.h   | 114 ++-
 .../{mtk_jpeg_hw.c => mtk_jpeg_dec_hw.c}      |   2 +-
 .../{mtk_jpeg_hw.h => mtk_jpeg_dec_hw.h}      |   9 +-
 ...{mtk_jpeg_parse.c => mtk_jpeg_dec_parse.c} |   2 +-
 ...{mtk_jpeg_parse.h => mtk_jpeg_dec_parse.h} |   2 +-
 .../{mtk_jpeg_reg.h => mtk_jpeg_dec_reg.h}    |   0
 .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c | 175 +++++
 .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h |  60 ++
 .../platform/mtk-jpeg/mtk_jpeg_enc_reg.h      |  49 ++
 drivers/media/v4l2-core/v4l2-ctrls.c          |   1 +
 include/uapi/linux/v4l2-controls.h            |   2 +
 16 files changed, 1044 insertions(+), 176 deletions(-)
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
