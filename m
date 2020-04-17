Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFCF1AE1EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KW0xLN4VS5tM7K3I7UESQzb+m43J4yu5Iwqjz90C9/4=; b=ipjEGu6MknhbeK
	vMFKPwC0sPmitObABGcsyaF6+u/wmbIpt1RREGv/AfEqIv2yZwHUIX2k62iyKaNjCrOON1uVdOerx
	DgbRON4o3NDgBBjSq0DeY4J27wWVtBJM5jvZfgP9P902NVLV+acRvlqmp/DOFy714Yox+lg5WxLLQ
	OUShhxuLfzIhdDjPxnnEGvazSrIBudWAZso1tbED9+8GpzfCg8vc6ekGsJa2ubBNhKZj5GY1a6eJk
	9eO43MZjlxWsEXg0PvgkMIWuY0Ybvo20RQknP1NL3syDcD/K1rk0adQb3mBfTdcHWXevuSRqro7EP
	REhdkE5lXzjbs/M42ERg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPTcv-0007TV-NO; Fri, 17 Apr 2020 16:14:01 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPTcn-0007T9-QI
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:13:55 +0000
Received: by mail-ot1-f67.google.com with SMTP id m13so1857614otf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 09:13:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JwhnhYWE1h4Q1rWRqLd33U9UJZPeq8MCVvmfrJyJ/ew=;
 b=bKCsVQFKduWbm6JDFdGBZ+MFP+1kLomudpTbOMJZ1Lqj3OXu14g7tQKiZlMN4ITgQx
 uklKS9O1I2Q5utEWUfKagNfO7TJydj0h0qj00OcX4U1zPnnqCuDxYbkQPOEhrV1HY+8A
 uhdylW7CFcFU39fhLtgqA5ofS0wlA8csi8IT7kE05qsPpnWT589/SinSi4TAYcJVz0OV
 oHowrX+tD0JEHAODT9oaB/jPtiwauEn9sJBxtUFBEVbI/dLWyKT2pts1XFNJKcyU+9Dr
 Koc81SgVdCjd+fIDyAPK80N+QfQfVzfP48p90cGAIEW+wDyLt5iWTJ6w5BpwcK8kEk85
 bB7g==
X-Gm-Message-State: AGi0PuZ0Wed2FAJHA041eAUaHZATb2emZvon8mnRYAmG5xCfVlF365g1
 gljLEbm4Lbs6Do9TvAwA9A==
X-Google-Smtp-Source: APiQypJFgP67EwrcBHqKLa1uVT9VQ1p19y6ic9Hn9dhaR+0qtHXD5ALlxhD4Hvp7i+DmGccxd/Tvqw==
X-Received: by 2002:a9d:3405:: with SMTP id v5mr3313114otb.131.1587140032325; 
 Fri, 17 Apr 2020 09:13:52 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i20sm2147601ots.29.2020.04.17.09.13.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 09:13:51 -0700 (PDT)
Received: (nullmailer pid 24956 invoked by uid 1000);
 Fri, 17 Apr 2020 16:13:50 -0000
Date: Fri, 17 Apr 2020 11:13:50 -0500
From: Rob Herring <robh@kernel.org>
To: Ben Levinsky <ben.levinsky@xilinx.com>
Subject: Re: [PATCH v2 4/5] dt-bindings: remoteproc: Add documentation for
 ZynqMP R5 rproc bindings
Message-ID: <20200417161350.GA24618@bogus>
References: <1587074082-14836-1-git-send-email-ben.levinsky@xilinx.com>
 <1587074082-14836-5-git-send-email-ben.levinsky@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587074082-14836-5-git-send-email-ben.levinsky@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_091353_853231_E6B92375 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: ohad@wizery.com, mark.rutland@arm.com, rajan.vaja@xilinx.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, michal.simek@xilinx.com,
 bjorn.andersson@linaro.org, jollys@xilinx.com, robh+dt@kernel.org,
 Jason Wu <j.wu@xilinx.com>, Wendy Liang <jliang@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 14:54:41 -0700, Ben Levinsky wrote:
> Add binding for ZynqMP R5 OpenAMP.
> 
> Represent the RPU domain resources in one device node. Each RPU
> processor is a subnode of the top RPU domain node.
> 
> Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
> Signed-off-by: Jason Wu <j.wu@xilinx.com>
> Signed-off-by: Wendy Liang <jliang@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>  .../remoteproc/xilinx,zynqmp-r5-remoteproc.yaml    | 119 +++++++++++++++++++++
>  1 file changed, 119 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.example.dts:20.14-21: Warning (ranges_format): /example-0/reserved-memory:ranges: empty "ranges" property but its #address-cells (2) differs from /example-0 (1)
Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.example.dts:20.14-21: Warning (ranges_format): /example-0/reserved-memory:ranges: empty "ranges" property but its #size-cells (2) differs from /example-0 (1)
Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.example.dts:43.14-21: Warning (ranges_format): /example-0/zynqmp-rpu:ranges: empty "ranges" property but its #address-cells (2) differs from /example-0 (1)
Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.example.dts:43.14-21: Warning (ranges_format): /example-0/zynqmp-rpu:ranges: empty "ranges" property but its #size-cells (2) differs from /example-0 (1)
Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.example.dts:39.20-63.11: Warning (unit_address_vs_reg): /example-0/zynqmp-rpu: node has a reg or ranges property, but no unit name
Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.example.dts:46.25-62.16: Warning (unit_address_vs_reg): /example-0/zynqmp-rpu/r5@0: node has a unit name, but no reg or ranges property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.example.dt.yaml: zynqmp-rpu: '#address-cells', '#size-cells', 'r5@0', 'ranges', 'reg' do not match any of the regexes: 'pinctrl-[0-9]+'

See https://patchwork.ozlabs.org/patch/1271919

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
