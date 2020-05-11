Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F811CE7F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 00:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7BMA8XItHY08KxtGQjyPW1TMPJL1p6XCM8kIWpgQB8=; b=XcokKu8KBakI4F
	WM+aSAF0R0evhdtQKKpTpivwt6Cxwt2riEttWHfQ0Vk1H/SAyyedVpzPmeoV707McrO0k1f45wMS9
	DUbm4JfekgP7DrcmUK+O66LBJ2BE9zy2pNvh6mCcgOXNpzN8Eizofva9ZqU736tydTZ9nuU/YVmHO
	DLpccs3nClL5lOCUpu+QWK9Sqdn9Ww9PCH3KQ8jrbleixToQviaDgzuTvBY/4yXtbYqewlCZZTYeB
	2vWnN4n7QcEyfAyo7IFv2AeGsKYRim6q4lsyvG7Ovcv4iTof17Fqzx1ICoJ5cjkVs4hT4SdbwbKSQ
	8JY2wQaTjxX/7Bkewx6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYGkV-0002Uk-GW; Mon, 11 May 2020 22:18:11 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYGkO-0002TD-Po
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 22:18:06 +0000
Received: by mail-oi1-f196.google.com with SMTP id c124so16327085oib.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 15:17:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rzMFWA1ZnkRS4Q0DpZb1ZXl62uf9QCHFsi7YkKI8qTU=;
 b=qqPkPfPWXM9hBIinrIkr0QYCDsILU9/knOAxO/6MGUBcTcjXsIizuEa2zzNnJVPQsF
 2ym+XnpjFNB2ZkNiFwjweqzk2Iuo0eZV58GvZgOgYzTYcgHDHUcZhTBkp6FtNYGomRi/
 mhvbll7l58cldWMfcgkm0WBf0xX76OwGiVwqOMNcN0NLjQqzs4iAJGniNErKgcmFo78A
 xHccRr3jxouQhJ0FElu7Br1R+HQxm7OsyezopOfXuvfA/A/41z3lelNHp+rPbBe0cM4l
 2t7F8oG9PetL5BUrC088eWKQXGrRQMwQ/7nkwXKCmVSdACfEYe3QYgwNYBcPa4wsEcZj
 dC1g==
X-Gm-Message-State: AGi0PuaqjYQtIGti3z68MneTI9vpwG6Pmy/bNiXkiXPCYGHcOoN8ZBmo
 MnQkSsi7ROiQU9u+i4zbqYXfiPE=
X-Google-Smtp-Source: APiQypK0TZHCKyJ3o83UAgu+4BaXew5kyfHBthWDWkDub8PJ/mLJuKeKeozKHpokZfteZCSegTZxMA==
X-Received: by 2002:aca:cc15:: with SMTP id c21mr22407701oig.120.1589235477409; 
 Mon, 11 May 2020 15:17:57 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t13sm2995644otr.43.2020.05.11.15.17.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 15:17:56 -0700 (PDT)
Received: (nullmailer pid 14664 invoked by uid 1000);
 Mon, 11 May 2020 22:17:55 -0000
Date: Mon, 11 May 2020 17:17:55 -0500
From: Rob Herring <robh@kernel.org>
To: Ben Levinsky <ben.levinsky@xilinx.com>
Subject: Re: [PATCH v4 4/5] dt-bindings: remoteproc: Add documentation for
 ZynqMP R5 rproc bindings
Message-ID: <20200511221755.GA13585@bogus>
References: <1587749770-15082-1-git-send-email-ben.levinsky@xilinx.com>
 <1587749770-15082-5-git-send-email-ben.levinsky@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587749770-15082-5-git-send-email-ben.levinsky@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_151804_838448_BECC0D72 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 bjorn.andersson@linaro.org, jollys@xilinx.com, Jason Wu <j.wu@xilinx.com>,
 Wendy Liang <jliang@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 10:36:09AM -0700, Ben Levinsky wrote:
> Add binding for ZynqMP R5 OpenAMP.
> 
> Represent the RPU domain resources in one device node. Each RPU
> processor is a subnode of the top RPU domain node.

This needs to be sorted out as part of the system DT effort that Xilinx 
is working on. I can't see this binding co-existing with it.

> 
> Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
> Signed-off-by: Jason Wu <j.wu@xilinx.com>
> Signed-off-by: Wendy Liang <jliang@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
> Changes since v2:
> - update zynqmp_r5 yaml parsing to not raise warnings for extra
>   information in children of R5 node. The warning "node has a unit
>   name, but no reg or ranges property" will still be raised though 
>   as this particular node is needed to describe the
>   '#address-cells' and '#size-cells' information.
> Changes since 3:
> - remove warning '/example-0/rpu@ff9a0000/r5@0:
>   node has a unit name, but no reg or ranges property'
>   by adding reg to r5 node.
> ---
> 
>  .../remoteproc/xilinx,zynqmp-r5-remoteproc.yaml    | 127 +++++++++++++++++++++
>  1 file changed, 127 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml b/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
> new file mode 100644
> index 0000000..41520b6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
> @@ -0,0 +1,127 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Xilinx R5 remote processor controller bindings
> +
> +description:
> +  This document defines the binding for the remoteproc component that loads and
> +  boots firmwares on the Xilinx Zynqmp and Versal family chipset.
> +
> +maintainers:
> +  - Ed Mooring <ed.mooring@xilinx.com>
> +  - Ben Levinsky <ben.levinsky@xilinx.com>
> +
> +properties:
> +  compatible:
> +    const: "xlnx,zynqmp-r5-remoteproc-1.0"
> +
> +  core_conf:
> +    description:
> +      R5 core configuration (valid string - split or lock-step)
> +    maxItems: 1
> +
> +  interrupts:
> +    description:
> +      Interrupt mapping for remoteproc IPI. It is required if the
> +      user uses the remoteproc driver with the RPMsg kernel driver.
> +    maxItems: 6
> +
> +  memory-region:
> +    maxItems: 4
> +    minItems: 4
> +  pnode-id:
> +    maxItems: 1

What is this?

> +  mboxes:
> +    maxItems: 2
> +  mbox-names:
> +    maxItems: 2
> +
> +  r5@0:
> +    type: object
> +    required:
> +        - '#address-cells'
> +        - '#size-cells'
> +        - pnode-id
> +examples:
> +  - |
> +     reserved-memory {
> +          #address-cells = <1>;
> +          #size-cells = <1>;
> +          ranges;
> +          rpu0vdev0vring0: rpu0vdev0vring0@3ed40000 {
> +               no-map;
> +               reg = <0x3ed40000 0x4000>;
> +          };
> +          rpu0vdev0vring1: rpu0vdev0vring1@3ed44000 {
> +               no-map;
> +               reg = <0x3ed44000 0x4000>;
> +          };
> +          rpu0vdev0buffer: rpu0vdev0buffer@3ed48000 {
> +               no-map;
> +               reg = <0x3ed48000 0x100000>;
> +          };
> +          rproc_0_reserved: rproc@3ed000000 {
> +               no-map;
> +               reg = <0x3ed00000 0x40000>;
> +          };
> +     };
> +     rpu: rpu@ff9a0000 {
> +          compatible = "xlnx,zynqmp-r5-remoteproc-1.0";
> +          #address-cells = <1>;
> +          #size-cells = <1>;
> +          ranges;
> +          core_conf = "split";

If split, then where is the 2nd core?

> +          reg = <0xFF9A0000 0x10000>;
> +          r5_0: r5@0 {

Unit-addresses are based on 'reg' values.

> +               ranges;
> +               #address-cells = <1>;
> +               #size-cells = <1>;
> +               reg = <0xFF9A0100 0x1000>;
> +               memory-region = <&rproc_0_reserved>, <&rpu0vdev0buffer>, <&rpu0vdev0vring0>, <&rpu0vdev0vring1>;
> +               pnode-id = <0x7>;
> +               mboxes = <&ipi_mailbox_rpu0 0>, <&ipi_mailbox_rpu0 1>;
> +               mbox-names = "tx", "rx";
> +               tcm_0_a: tcm_0@0 {
> +                    #address-cells = <1>;
> +                    #size-cells = <1>;
> +                    reg = <0xFFE00000 0x10000>;
> +                    pnode-id = <0xf>;

These nodes probably need some sort of compatible. And don't the TCMs 
have different addresses for R5 vs. the A cores?

> +               };
> +               tcm_0_b: tcm_0@1 {
> +                    #address-cells = <2>;
> +                    #size-cells = <2>;
> +                    reg = <0xFFE20000 0x10000>;
> +                    pnode-id = <0x10>;
> +               };
> +          };
> +     };
> +
> +
> +     zynqmp_ipi1 {
> +          compatible = "xlnx,zynqmp-ipi-mailbox";
> +          interrupt-parent = <&gic>;
> +          interrupts = <0 29 4>;
> +          xlnx,ipi-id = <7>;
> +          #address-cells = <1>;
> +          #size-cells = <1>;
> +          ranges;
> +
> +          /* APU<->RPU0 IPI mailbox controller */
> +          ipi_mailbox_rpu0: mailbox@ff90000 {
> +               reg = <0xff990600 0x20>,
> +                     <0xff990620 0x20>,
> +                     <0xff9900c0 0x20>,
> +                     <0xff9900e0 0x20>;
> +               reg-names = "local_request_region",
> +                        "local_response_region",
> +                        "remote_request_region",
> +                        "remote_response_region";
> +               #mbox-cells = <1>;
> +               xlnx,ipi-id = <1>;
> +          };
> +     };
> +
> +...
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
