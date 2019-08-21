Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D68984BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 21:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h64+hmzVxD5q0WQfmfPszFkh1sxVZnlue0KjB3UyFO8=; b=U7CWyYyoAFpbZt
	2g0dL2ULyovXCTXTtU1wTBjTkfOLZ7Wasx+lf6rWBRcTJK3I39+2WTzIzqCAtWX03P3Hpm9a3/ZFS
	xUCcLJBO+vfCQPoqDtrHuCKhf5RLpEDV+fsnNRpoL1G6bNXnqQ2P3NXd4TQGNSjTaaenFOPcluTco
	2UQLYGhFQcxfA23iNBzLQQTCcjI/rkISDLdPbeGZp57LH2aNPSmvSpMyFJTwPWBeKJtowvo+NQFYw
	IYC3nA90OixBQPISQ7gYwnd3i8NMiEbsJ3SH/qj4a0iEbLC9hN+bXXjuDwvzClNxQuyHWFmASGZLR
	2+4+pdK8eBzEFpSZpu5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0WaS-0004xD-5e; Wed, 21 Aug 2019 19:48:04 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0WaJ-0004vv-KY; Wed, 21 Aug 2019 19:47:57 +0000
Received: by mail-ot1-f66.google.com with SMTP id f17so3226515otq.4;
 Wed, 21 Aug 2019 12:47:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C8n3EGE8fCUkffxtiHztmM03n9mGmmnqa5eK5gkfx1M=;
 b=HzxStk3K+UTuXw7dXsQLxmem/V7kY5gJvGYvCv+H9aC0QWIVTrqTxPvE6wcz3t7GLS
 JoHSHQ4VXzEvLh8AnlNwS/vmf8dDehCNyGQ+3WD9mxvDfSUeR5XVLXA7r2XNnrOHB34J
 LUWLKcgSTaZNWm+J+FRRmdcN94r3NXpnOhxI3OCIGjVomHkCdV4Y6yx7Jl0BKefFqwxH
 xpLFjbDjR3YwNwenTwFkh2u52QGZ/7R9lryBSXZD8TRrY7fAynitaQ5hnyYbFXmWGpfS
 J6ZdN4zF047iI1DJn4silAJoNanN1TdNLOdxBoSmXvGhwMF/Bgmoi7K5CkkXqYsM5eJ9
 0rbw==
X-Gm-Message-State: APjAAAVOxdoLK9cLnsZF74wJP7JhgvqJY9OXpwztDRQUoT4oS1ZpVFas
 97aslX29TKHXrIm2FZuKVQ==
X-Google-Smtp-Source: APXvYqyPBOjbUzYxabF2PFOi+Zm6Ej8OuiIFwmlwoCpn1ofT9KyPT9tlEKykj0/WSoltvPEeikfYyg==
X-Received: by 2002:a05:6830:4da:: with SMTP id
 s26mr26224158otd.223.1566416874320; 
 Wed, 21 Aug 2019 12:47:54 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z16sm3154984oic.10.2019.08.21.12.47.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 12:47:53 -0700 (PDT)
Date: Wed, 21 Aug 2019 14:47:52 -0500
From: Rob Herring <robh@kernel.org>
To: Jungo Lin <jungo.lin@mediatek.com>
Subject: Re: [RFC,v4,1/4] media: dt-bindings: mt8183: Added camera ISP Pass 1
Message-ID: <20190821194752.GA15270@bogus>
References: <jungo.lin@mediatek.com>
 <20190807124803.29884-1-jungo.lin@mediatek.com>
 <20190807124803.29884-2-jungo.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807124803.29884-2-jungo.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_124755_678342_2177EAFA 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 laurent.pinchart@ideasonboard.com, Rynn.Wu@mediatek.com, suleiman@chromium.org,
 Jerry-ch.Chen@mediatek.com, frederic.chen@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 hverkuil-cisco@xs4all.nl, shik@chromium.org, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 zwisler@chromium.org, ddavenport@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 08:48:00PM +0800, Jungo Lin wrote:
> This patch adds DT binding document for the Pass 1 (P1) unit
> in Mediatek's camera ISP system. The Pass 1 unit grabs the sensor
> data out from the sensor interface, applies ISP image effects
> from tuning data and outputs the image data or statistics data to DRAM.
> 
> Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> ---
>  .../bindings/media/mediatek,camisp.txt        | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,camisp.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek,camisp.txt b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
> new file mode 100644
> index 000000000000..fa2713acceca
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
> @@ -0,0 +1,73 @@
> +* Mediatek Image Signal Processor Pass 1 (ISP P1)
> +
> +The Pass 1 unit of Mediatek's camera ISP system grabs the sensor data out
> +from the sensor interface, applies ISP effects from tuning data and outputs
> +the image data and statistics data to DRAM. Furthermore, Pass 1 unit has
> +the ability to output two different resolutions frames at the same time to
> +increase the performance of the camera application.
> +
> +Required properties:
> +- compatible: Must be "mediatek,mt8183-camisp" for MT8183.
> +- reg: Physical base address of the camera function block register and
> +  length of memory mapped region. Must contain an entry for each entry
> +  in reg-names.
> +- reg-names: Must include the following entries:
> +  "cam_sys": Camera base function block
> +  "cam_uni": Camera UNI function block
> +  "cam_a": Camera ISP P1 hardware unit A
> +  "cam_b": Camera ISP P1 hardware unit B
> +  "cam_c": Camera ISP P1 hardware unit C
> +- interrupts: Must contain an entry for each entry in interrupt-names.
> +- interrupt-names : Must include the following entries:
> +  "cam_uni": Camera UNI interrupt
> +  "cam_a": Camera unit A interrupt
> +  "cam_b": Camera unit B interrupt
> +  "cam_c": Camera unit C interrupt
> +- iommus: Shall point to the respective IOMMU block with master port
> +  as argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> +  for details.
> +- clocks: A list of phandle and clock specifier pairs as listed
> +  in clock-names property, see
> +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
> +- clock-names: Must be "camsys_cam_cgpdn" and "camsys_camtg_cgpdn".
> +- mediatek,larb: Must contain the local arbiters in the current SoCs, see
> +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> +  for details.
> +- power-domains: a phandle to the power domain, see
> +  Documentation/devicetree/bindings/power/power_domain.txt for details.
> +- mediatek,scp : The node of system control processor (SCP), see
> +  Documentation/devicetree/bindings/remoteproc/mtk,scp.txt for details.
> +
> +Example:
> +SoC specific DT entry:
> +
> +		camisp: camisp@1a000000 {
> +			compatible = "mediatek,mt8183-camisp", "syscon";

syscon doesn't seem appropriate nor is it documented.

> +			reg = <0 0x1a000000 0 0x1000>,
> +					<0 0x1a003000 0 0x1000>,
> +					<0 0x1a004000 0 0x2000>,
> +					<0 0x1a006000 0 0x2000>,
> +					<0 0x1a008000 0 0x2000>;
> +			reg-names = "cam_sys",
> +					"cam_uni",
> +					"cam_a",
> +					"cam_b",
> +					"cam_c";
> +			interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_LOW>,
> +					<GIC_SPI 254 IRQ_TYPE_LEVEL_LOW>,
> +					<GIC_SPI 255 IRQ_TYPE_LEVEL_LOW>,
> +					<GIC_SPI 256 IRQ_TYPE_LEVEL_LOW>;
> +			interrupt-names = "cam_uni",
> +					"cam_a",
> +					"cam_b",
> +					"cam_c";
> +			iommus = <&iommu M4U_PORT_CAM_IMGO>;
> +			clocks = <&camsys CLK_CAM_CAM>,
> +					<&camsys CLK_CAM_CAMTG>;
> +			clock-names = "camsys_cam_cgpdn",
> +					"camsys_camtg_cgpdn";
> +			mediatek,larb = <&larb3>,
> +					<&larb6>;
> +			power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
> +			mediatek,scp = <&scp>;
> +		};
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
