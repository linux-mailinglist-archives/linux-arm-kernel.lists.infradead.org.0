Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 172CF1D743E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 11:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5VLcw6u79+uf5ig8SZ4EY1kKZGPpa2d0nw0fBYI+as=; b=S1gORf1OhNVcy3
	s6BmdsoeGlucCU3XuRzkdZWsyJ+JuaQ0d/oPZxL1Ouy5FeGEgYmGcS9aNE56mifGsQWDBP8dmpWka
	tqK/fjtb7KpnbnRTbwShZEQWu2OcY1ypxb09CVDZPDbHc24yXxp1Jt3/OgHPyrt7wcjOOhxYvS7Q9
	ZFydGB/y2rUx9HS4Ys+ZBS3FGRuejr9NyvJGhm6ltWxX9CeD9VMDtOdlZM7X7MKZyvZNvPQiGjvjd
	/KANtpjkN8dxNTqaXqHm0+PMWovf9TF/75Dfn9uGfuwJ67WHOWm6E+tVWc8mx7g+06S4vvROS+x2P
	zx85MkAcHJdq/RyN2/Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jacHT-0002Wr-CF; Mon, 18 May 2020 09:41:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jacHJ-0002WE-RA
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 09:41:47 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jacHE-0001oF-9i; Mon, 18 May 2020 11:41:40 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jacHD-00015B-CV; Mon, 18 May 2020 11:41:39 +0200
Message-ID: <719ed778a36e7edfea080d42e9b837432e595d15.camel@pengutronix.de>
Subject: Re: [PATCH] dt-bindings: reset: Convert i.MX reset to json-schema
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>, robh+dt@kernel.org,
 shawnguo@kernel.org,  s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Mon, 18 May 2020 11:41:39 +0200
In-Reply-To: <1589250194-29441-1-git-send-email-Anson.Huang@nxp.com>
References: <1589250194-29441-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_024145_880277_6F2585FF 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Tue, 2020-05-12 at 10:23 +0800, Anson Huang wrote:
> Convert the i.MX reset binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

thank you for the conversion.

> ---
>  .../devicetree/bindings/reset/fsl,imx-src.txt      | 49 ------------------
>  .../devicetree/bindings/reset/fsl,imx-src.yaml     | 58 ++++++++++++++++++++++
>  2 files changed, 58 insertions(+), 49 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/reset/fsl,imx-src.txt
>  create mode 100644 Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
> 
> diff --git a/Documentation/devicetree/bindings/reset/fsl,imx-src.txt b/Documentation/devicetree/bindings/reset/fsl,imx-src.txt
> deleted file mode 100644
> index 6ed79e6..0000000
> --- a/Documentation/devicetree/bindings/reset/fsl,imx-src.txt
> +++ /dev/null
> @@ -1,49 +0,0 @@
> -Freescale i.MX System Reset Controller
> -======================================
> -
> -Please also refer to reset.txt in this directory for common reset
> -controller binding usage.
> -
> -Required properties:
> -- compatible: Should be "fsl,<chip>-src"
> -- reg: should be register base and length as documented in the
> -  datasheet
> -- interrupts: Should contain SRC interrupt and CPU WDOG interrupt,
> -  in this order.
> -- #reset-cells: 1, see below
> -
> -example:
> -
> -src: src@20d8000 {
> -        compatible = "fsl,imx6q-src";
> -        reg = <0x020d8000 0x4000>;
> -        interrupts = <0 91 0x04 0 96 0x04>;
> -        #reset-cells = <1>;
> -};
> -
> -Specifying reset lines connected to IP modules
> -==============================================
> -
> -The system reset controller can be used to reset the GPU, VPU,
> -IPU, and OpenVG IP modules on i.MX5 and i.MX6 ICs. Those device
> -nodes should specify the reset line on the SRC in their resets
> -property, containing a phandle to the SRC device node and a
> -RESET_INDEX specifying which module to reset, as described in
> -reset.txt
> -
> -example:
> -
> -        ipu1: ipu@2400000 {
> -                resets = <&src 2>;
> -        };
> -        ipu2: ipu@2800000 {
> -                resets = <&src 4>;
> -        };
> -
> -The following RESET_INDEX values are valid for i.MX5:
> -GPU_RESET     0
> -VPU_RESET     1
> -IPU1_RESET    2
> -OPEN_VG_RESET 3
> -The following additional RESET_INDEX value is valid for i.MX6:
> -IPU2_RESET    4
> diff --git a/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml b/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
> new file mode 100644
> index 0000000..276a533
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/fsl,imx-src.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reset/fsl,imx-src.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX System Reset Controller
> +
> +maintainers:
> +  - Philipp Zabel <p.zabel@pengutronix.de>
> +
> +description: |
> +  The system reset controller can be used to reset the GPU, VPU,
> +  IPU, and OpenVG IP modules on i.MX5 and i.MX6 ICs. Those device
> +  nodes should specify the reset line on the SRC in their resets
> +  property, containing a phandle to the SRC device node and a
> +  RESET_INDEX specifying which module to reset, as described in
> +  reset.txt
> +
> +  The following RESET_INDEX values are valid for i.MX5:
> +    GPU_RESET     0
> +    VPU_RESET     1
> +    IPU1_RESET    2
> +    OPEN_VG_RESET 3
> +  The following additional RESET_INDEX value is valid for i.MX6:
> +    IPU2_RESET    4
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: "fsl,imx51-src"

"fsl,imx51-src" is the only compatible the driver matches on, but we
have these combinations on compatible SRCs in the device trees:

  "fsl,imx50-src", "fsl,imx51-src"
  "fsl,imx51-src"
  "fsl,imx53-src", "fsl,imx51-src"
  "fsl,imx6q-src", "fsl,imx51-src"
  "fsl,imx6sl-src", "fsl,imx51-src"
  "fsl,imx6sll-src", "fsl,imx51-src"
  "fsl,imx6sx-src", "fsl,imx51-src"
  "fsl,imx6ul-src", "fsl,imx51-src"

That could be described using oneOf and and an items list of const
values per SoC like in the qcom bindings.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
