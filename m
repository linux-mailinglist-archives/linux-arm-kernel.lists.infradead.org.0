Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 250541EDEAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 09:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=83C2BZ5XXy/jG5UM4ztlIS7hZtdpX4EMuwoTYQ0AgTs=; b=rnoeT8A9hmIu+N
	WQC5YK5gHFO3Hn4cGPDY1Uod8VPJvsO7FKBcAnfZIHbmJNG+AKc483Pm7T2ZPKY39yGXqwQsLSGPV
	7UP85HJ8Uv70OFanMQixLv1wD36gQ2KQ8oj5mQ3p0pgJTXKDpmcpSfXk3z0pRsW5BwfHc2VjwFIwZ
	SO5H3jWQlY5jD6rxXfYWFUrfSeDs1rOOjoevAW8lqQSk4Xy5IXIChdZi/VQufMvw1mnrsmmUZvuED
	Hq2E2XMKiF+GJisIaEwWRZ5jf0Wj1VOclaUocrtv3r9eJsndMyHxPvh6q5YCk4NxmiW59pafX9uUG
	mzc/0S5ZlI3liqx589Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkUo-0001bL-KR; Thu, 04 Jun 2020 07:41:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgkTD-00068v-NW; Thu, 04 Jun 2020 07:39:26 +0000
X-UUID: ddc3d40677e54fb89b4d71d88688597c-20200603
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=Dhw9AXy9/GqJxl/EgMWa/5qCoUTahpKneJIMpSeRQdk=; 
 b=rorlQuTxYz0Lv6Lv8HdWLZ4gf0XjNCIpecmPbq9I1IlaZ6cDI71DzVb7K8vql4fVOEEtjEL6+LVdEMBDhkLFUnw6lhZnjB6FbGA8CzAP4I8TKvfClaGbWY44bw4UGKbNiB3W/qgcLkMimVk1K5yhe1qguq6E5ILW/GoRZM0XISM=;
X-UUID: ddc3d40677e54fb89b4d71d88688597c-20200603
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2146088843; Wed, 03 Jun 2020 23:39:14 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 00:29:14 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 15:29:11 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 4 Jun 2020 15:29:10 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v9 00/18] Add support for mt2701 JPEG ENC support
Date: Thu, 4 Jun 2020 15:26:50 +0800
Message-ID: <20200604072708.9468-1-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_003923_808226_6BBE3AEA 
X-CRM114-Status: UNSURE (   4.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: maoguang.meng@mediatek.com, devicetree@vger.kernel.org,
 mojahsu@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 senozhatsky@chromium.org, sj.huang@mediatek.com, drinkcat@chromium.org,
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
v4l2-compliance SHA: 74377da4f5f3b63203c599d5dd75db6af91fdbb9, 32 bits, 32-bit time_t
                                                                                
Compliance test for mtk-jpeg device /dev/video0:                                
                                                                                
Driver Info:                                                                    
        Driver name      : mtk-jpeg                                             
        Card type        : mtk-jpeg decoder                                     
        Bus info         : platform:15004000.jpegdec                            
        Driver version   : 5.7.0                                                
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
                                                                                
        test invalid ioctls: OK                                                 
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
        test Scaling: OK (Not Supported)                                        
                                                                                
Codec ioctls:                                                                   
        test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)                       
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)                             
        test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)                       
                                                                                
Buffer ioctls:                                                                  
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK                            
        test VIDIOC_EXPBUF: OK                                                  
        test Requests: OK (Not Supported)                                       
                                                                                
Total for mtk-jpeg device /dev/video0: 45, Succeeded: 45, Failed: 0, Warnings: 0
------------------------------------------------------------
                                                            
The JPEG enc log:                                           
                                                            
------------------------------------------------------------
v4l2-compliance -d /dev/video1                                                                     
v4l2-compliance SHA: 74377da4f5f3b63203c599d5dd75db6af91fdbb9, 32 bits, 32-bit time_t              
                                                                                                   
Compliance test for mtk-jpeg device /dev/video1:                                                   
                                                                                                   
Driver Info:                                                                                       
        Driver name      : mtk-jpeg                                                                
        Card type        : mtk-jpeg encoder                                                        
        Bus info         : platform:1500a000.jpegenc                                               
        Driver version   : 5.7.0                                                                   
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
                                                                                                   
        test invalid ioctls: OK                                                                    
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
                                                                                                   
Total for mtk-jpeg device /dev/video1: 45, Succeeded: 45, Failed: 0, Warnings: 0                   
------------------------------------------------------------

Change compared to v8:                  
-change commit message of patch 02/18                  
-use pm_runtime_put() to replace pm_runtime_put_sync() of patch 05/18              
-add one patch for deletting the resetting hardware flow in the system PM ops     
-use v4l2_m2m_suspend() and v4l2_m2m_resume() to improve the implemention         
 of the system PM ops. This patch(07/18) depends on [RFC,V4,1/4] media:           
 v4l2_mem2mem: add v4l2_m2m_suspend, v4l2_m2m_resume(https://patchwork.kernel.org/patch/11272917/)
-add one patch for cancelling the last frame handling flow                  
-add one patch for deletting zeroing the reserved fields                  
-move changing data type of max/min width/height to patch 10/18                  
-add one patch for renaming existing functions/defines/variables 

Xia Jiang (18):
  media: platform: Improve subscribe event flow for bug fixing
  media: platform: Improve queue set up flow for bug fixing
  media: platform: Improve getting and requesting irq flow for bug
    fixing
  media: platform: Change the fixed device node number to unfixed value
  media: platform: Improve power on and power off flow
  media: platform: Delete the resetting hardware flow in the system PM
    ops
  media: platform: Improve the implementation of the system PM ops
  media: platform: Cancel the last frame handling flow
  media: platform: Delete zeroing the reserved fields
  media: platform: Stylistic changes for improving code quality
  media: platform: Use generic rounding helpers
  media: platform: Change MTK_JPEG_COMP_MAX macro definition location
  media: platform: Delete redundant code and add annotation for an enum
  media: dt-bindings: Add jpeg enc device tree node document
  arm: dts: mt2701: Add jpeg enc device tree node
  media: platform: Rename jpeg dec file name
  media: platform: Rename existing functions/defines/variables
  media: platform: Add jpeg enc feature

 .../bindings/media/mediatek-jpeg-encoder.txt  |   37 +
 arch/arm/boot/dts/mt2701.dtsi                 |   13 +
 check.txt                                     |   13 +
 drivers/media/platform/mtk-jpeg/Makefile      |    5 +-
 .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 1130 ++++++++++++-----
 .../media/platform/mtk-jpeg/mtk_jpeg_core.h   |   66 +-
 .../{mtk_jpeg_hw.c => mtk_jpeg_dec_hw.c}      |   10 +-
 .../{mtk_jpeg_hw.h => mtk_jpeg_dec_hw.h}      |   14 +-
 ...{mtk_jpeg_parse.c => mtk_jpeg_dec_parse.c} |    2 +-
 ...{mtk_jpeg_parse.h => mtk_jpeg_dec_parse.h} |    2 +-
 .../{mtk_jpeg_reg.h => mtk_jpeg_dec_reg.h}    |   19 +-
 .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c |  193 +++
 .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h |  123 ++
 13 files changed, 1295 insertions(+), 332 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
 create mode 100644 check.txt
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_hw.c => mtk_jpeg_dec_hw.c} (98%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_hw.h => mtk_jpeg_dec_hw.h} (89%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_parse.c => mtk_jpeg_dec_parse.c} (98%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_parse.h => mtk_jpeg_dec_parse.h} (92%)
 rename drivers/media/platform/mtk-jpeg/{mtk_jpeg_reg.h => mtk_jpeg_dec_reg.h} (77%)
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
 create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h

-- 
2.18.0 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
