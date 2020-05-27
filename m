Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A171E4BA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 19:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OR9jSB009ROQW8CTnVZgnB23EpWLUkmslBONBwY11cM=; b=DWocl5fdAChKjj
	A96JYUSxFD/FoCEoWZLbefb6D8+wpFfI5B88UpZjUTRA6nsfD2K7zJS00JRalml8/JmLfIcjNbWNr
	fYGqMdhW9Z80BPbwHFS3suVsxJW5W06bj66bL8a6rF36Vl7aSkQ1ankr4iBHkvHNz744zXCNo0DlP
	J+8ZYZkvr/+sZRldGjllnsQw4+hwRIlpPiQeCknRJlsaQ6Z9UT62mahKnYJ/Iltrz3SqcBsaoardS
	8ecJxwxT2l7612ZKL+9I1+LHtngWaAsNdvlX8GF5AAZX0tqmVcwoR6exj7gOXJwmMRimbOUtNryre
	p7S1U02+Nns6dGPuuKHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdzeC-0003Sp-3N; Wed, 27 May 2020 17:15:20 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdzdu-0002cd-Up
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 17:15:05 +0000
Received: by mail-il1-f194.google.com with SMTP id v11so7447015ilh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 10:15:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cUzyV2ffMQiKR0ssWs7eyow7JR4Jl831ooktar0LQs8=;
 b=MqGI3FJZQvbAdGN92IM+gdyyPMMcC6oMUkcFo1MNYwkFO3LolfrXB+L8T6oc+Kx0Eo
 /5Xp4KVV7cpTcYWy0WJXCAaKN2Rsb1Ky6Kfxqloc4jwmrxf5XkO9+XAE086i16Kd+JLU
 avPbfcBpmpaoyyN+LhsAbVUpgc3XthBAIepVH0fZnRc0Vdne8/cpxqPx5lyqABlTAOrN
 oYDhKSVxwHstmIt2CTW+Caf//lq/Gq57mHRiwylcl91taZSAObM+JMQ9gXnYpw5cIld7
 hWYh5eVJobebl7PceLcX3egpZyhT5c+gi8feu2dZkZ4TQR6gaEj5EMsXlATVAELPgfeq
 r1rA==
X-Gm-Message-State: AOAM533WrfzvFYqrYzxwGrk2/Aw6nTGdKww7p+XmstzB7OpvRuwBFb9U
 4C3GSfZx5KwfrFvH8g3dOQ==
X-Google-Smtp-Source: ABdhPJyMbZlW7pnwHQ6C5waz/unexLEaHdTcjFI8Zo6M8xBHeFoOJCORR1G1b9IprQ6sjolb1S7dSA==
X-Received: by 2002:a92:8c4c:: with SMTP id o73mr6482499ild.172.1590599701983; 
 Wed, 27 May 2020 10:15:01 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id c7sm1419991ioa.38.2020.05.27.10.14.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 10:15:00 -0700 (PDT)
Received: (nullmailer pid 2363073 invoked by uid 1000);
 Wed, 27 May 2020 17:14:59 -0000
Date: Wed, 27 May 2020 11:14:59 -0600
From: Rob Herring <robh@kernel.org>
To: Vishal Sagar <vishal.sagar@xilinx.com>
Subject: Re: [PATCH v14 1/2] media: dt-bindings: media: xilinx: Add Xilinx
 MIPI CSI-2 Rx Subsystem
Message-ID: <20200527171459.GA2360474@bogus>
References: <1590587839-129558-1-git-send-email-vishal.sagar@xilinx.com>
 <1590587839-129558-2-git-send-email-vishal.sagar@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590587839-129558-2-git-send-email-vishal.sagar@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_101503_069034_E6394B64 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>, mchehab@kernel.org,
 Hyun Kwon <hyunk@xilinx.com>, Sandip Kothari <sandipk@xilinx.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Michal Simek <michals@xilinx.com>, laurent.pinchart@ideasonboard.com,
 Luca Ceresoli <luca@lucaceresoli.net>, hans.verkuil@cisco.com,
 Dinesh Kumar <dineshk@xilinx.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 27 May 2020 19:27:18 +0530, Vishal Sagar wrote:
> Add bindings documentation for Xilinx MIPI CSI-2 Rx Subsystem.
> 
> The Xilinx MIPI CSI-2 Rx Subsystem consists of a CSI-2 Rx controller, a
> D-PHY in Rx mode and a Video Format Bridge.
> 
> Signed-off-by: Vishal Sagar <vishal.sagar@xilinx.com>
> Reviewed-by: Hyun Kwon <hyun.kwon@xilinx.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Luca Ceresoli <luca@lucaceresoli.net>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> v14
> - Removed xlnx,csi-pxl-format from required properties
> - Added dependency of xlnx,csi-pxl-format on xlnx,vfb
> - End the yaml file with ...
> - Added Reviewed by Laurent
> 
> v13
> - Based on Laurent's suggestions
> - Fixed the datatypes values as minimum and maximum
> - condition added for en-vcx property
> 
> v12
> - Moved to yaml format
> - Update CSI-2 and D-PHY
> - Mention that bindings for D-PHY not here
> - reset -> video-reset
> 
> v11
> - Modify compatible string from 4.0 to 5.0
> 
> v10
> - No changes
> 
> v9
> - Fix xlnx,vfb description.
> - s/Optional/Required endpoint property.
> - Move data-lanes description from Ports to endpoint property section.
> 
> v8
> - Added reset-gpios optional property to assert video_aresetn
> 
> v7
> - Removed the control name from dt bindings
> - Updated the example dt node name to csi2rx
> 
> v6
> - Added "control" after V4L2_CID_XILINX_MIPICSISS_ACT_LANES as suggested by Luca
> - Added reviewed by Rob Herring
> 
> v5
> - Incorporated comments by Luca Cersoli
> - Removed DPHY clock from description and example
> - Removed bayer pattern from device tree MIPI CSI IP
>   doesn't deal with bayer pattern.
> 
> v4
> - Added reviewed by Hyun Kwon
> 
> v3
> - removed interrupt parent as suggested by Rob
> - removed dphy clock
> - moved vfb to optional properties
> - Added required and optional port properties section
> - Added endpoint property section
> 
> v2
> - updated the compatible string to latest version supported
> - removed DPHY related parameters
> - added CSI v2.0 related property (including VCX for supporting upto 16
>   virtual channels).
> - modified csi-pxl-format from string to unsigned int type where the value
>   is as per the CSI specification
> - Defined port 0 and port 1 as sink and source ports.
> - Removed max-lanes property as suggested by Rob and Sakari
> 
>  .../bindings/media/xilinx/xlnx,csi2rxss.yaml       | 237 +++++++++++++++++++++
>  1 file changed, 237 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml: allOf:0:if: None is not of type 'object', 'boolean'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml: allOf:1:if: None is not of type 'object', 'boolean'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml: allOf:0: 'required' is not one of ['$ref', 'if', 'then', 'else']
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml: allOf:1: 'not' is not one of ['$ref', 'if', 'then', 'else']
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml: ignoring, error in schema: allOf: 0: if
warning: no schema found in file: ./Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml: ignoring, error in schema: allOf: 0: if
warning: no schema found in file: ./Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml
Makefile:1300: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1298945

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
