Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C99E8164D98
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 19:24:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMOde7AASoQaamCeFcARXb+wAGnZ0x7N1OvHq9JF/pU=; b=r5aOefap7jGA03
	woVZsSZn/nnuLzbWDoMmSCM9h64P98T+fGksiwtIB7i29aT3sofYaWKEluEN7SwEwBHZ7KOrwhSu0
	hw2FtVrxVGNvPp+iZyyiyTFuuhyXVZ0Arr1ShUtUBJzjrTjrYDiSgtBFd+rWo7B4wU4dNBP8TXWAo
	2YrhHxO0bzRzQd2o3q8jDYvW8O5nmuo11G7KAxeYUeyaV1BEZUA7veVj2Pl4BXt0O/cYp1+pgkLU8
	4EzQ+4vru7smu0VRnCh6O9wdF4pdenGIevxRgmNWPwDhoGwy5mT2JDHI6iswKnSvDRkNCPbWstQha
	0ERg3NcvzGLZLwkLVeew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4U1k-0007A4-BI; Wed, 19 Feb 2020 18:24:52 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4U1b-00079S-LY
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 18:24:45 +0000
Received: by mail-io1-xd43.google.com with SMTP id z1so1620067iom.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 10:24:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=smlfcUywMEBA2Gw1eHAbjNVoQlh2LXz5jWIz6aJcmfw=;
 b=O4HyybsNXczsbhrrLu4qddjfAQuXg+JBoGLqWPg/hSHL/MiwlPJ7VLi677GK7dYdgU
 skT/NGbNoll9J1+NV9EDP9BSSEsuS9UhB/4e8Xbm8I1uk7W24JlO9YyyAxjr2sbl/gak
 ZQ62NhEncAgdLWVw67qx6fj8lVkDiZCr9Mpe9mhjtgjt973WgmcKyYzTA3oQFZwVKzld
 9qoGBoiuZUVZGrO3A2UOAbHajl4eDCpwHoZUjn3ba25pB6pn2WlvVKRMBvDnSSi5nfkW
 F8DzPx2Lb982yWUeGj1AVKPqKjRXBsi6COFkUBsyGQ2fcFByhCgjArwp88THYs/L0fSM
 xCcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=smlfcUywMEBA2Gw1eHAbjNVoQlh2LXz5jWIz6aJcmfw=;
 b=i4MTrzX9GHihyYmo3OeYhrB6ODIwkqyW1q/mRx+Sfh2Qy7W51f60LSTmowSaoJidDs
 REtV5A06jbhxszmGW8IKzIB1634T9S8pKQ2Rn6PPLzUSMM7tLrG76aSAnqRL8hhJeJwr
 LffUQCwCOoDajUQlm/RbGs8p3ZLCJhHSK9cYKDF6CAmyHPSTYNJH83Zeo3SS+rtOQ/w7
 KmXaOM9G6IpCDrbVpKaHncZS8x8ccPP3k1yl8vES25F6Fas/lGnuC/Jny5Yy1prdkJGV
 cKXHvoXjV6w6ITybFWQUjY1HQtuUS37JM1mjrUAQpozz5I0uRxNf+yCk4YTcvOHkLhZC
 NZdw==
X-Gm-Message-State: APjAAAUaI3IHBtJTZ3niSV1HEJFfVtaN+Gm9L0JKSbahz6mDZg+d4h9c
 F0ElA0d+nP2M1QW5RDHU6HEcjYciGXtwASAvLEDl0g==
X-Google-Smtp-Source: APXvYqxWEN30KM/Wzmg23n8n06SyNxQpEVoQeFFH1fNl9ZzFQKgO61ZWof893ZVTmjk1+rAp7WzAPQ2G/0k3qCSAPCE=
X-Received: by 2002:a6b:4e13:: with SMTP id c19mr19787179iob.58.1582136681309; 
 Wed, 19 Feb 2020 10:24:41 -0800 (PST)
MIME-Version: 1.0
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 19 Feb 2020 11:24:30 -0700
Message-ID: <CANLsYkzeAyGhYqewGaHfd-myW5EzE83WUOwAbKwTP-34pbUR-w@mail.gmail.com>
Subject: Re: [PATCH 0/9] remoteproc: imx_rproc: support i.MX8/8M/7ULP
To: peng.fan@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_102443_718165_51BF96B1 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Wed, 19 Feb 2020 at 00:33, <peng.fan@nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> This patchset aim to replace NXP vendor imx_rpmsg.c driver.

You mean remoteproc/imx_rproc.c ?  Upstream rpmsg/imx_rpmsg.c doesn't exist.

>
> This patchset is tested with Loic PALLARDY's patch
> "remoteproc: add support for co-processor loaded and booted before kernel"
> https://patchwork.kernel.org/patch/11265869/,
> and inspried from st's remoteproc early boot support.
> Since Loic's patch is still under review, just expect your comments :)

Did you base your work on top of Loic's because your MCU firmware is
always loaded by the bootloader?  If not please send another revision
of your work without early boot support.  When we have a clear view on
how to proceed with the early boot support you can send another set to
enable that.

Thanks,
Mathieu

>
> Patch [1,2]/9: dt-bindings convert to json and new SoC support
> Patch 3/9: skip firmware load when recovery. To i.MX8, firmware is not
>            handled by Linux.
>
> Patch [4-9]/9: i.MX specific part to support rpmsg/virtio with mbox.
>       because NXP release image not have resoure table, so add resource
>       table in dts
>
> My test dts diff for i.MX8QXP MEK, but I have tested this patchset
> for i.MX8QXP MEK, i.MX8MM EVK, i.MX7ULP EVK:
>
> +
> +       imx8x-cm4 {
> +               compatible = "fsl,imx8qxp-cm4";
> +               rsrc-table = <
> +                       0x1 0x2 0x0 0x0 0x18 0x5c
> +                       3
> +                       /*fw_rsc_vdev*/
> +                       7 0 1 0 0 0x200
> +                       /*fw_rsc_vdev_vring*/
> +                       0x90000000 4096 256 1 0
> +                       0x90008000 4096 256 2 0
> +                       3
> +                       /*fw_rsc_vdev*/
> +                       7 1 1 0 0 0x200
> +                       /*fw_rsc_vdev_vring*/
> +                       0x90010000 4096 256 1 0
> +                       0x90018000 4096 256 2 0
> +               >;
> +               early-booted;
> +               mbox-names = "tx", "rx", "rxdb";
> +               mboxes = <&lsio_mu5 0 1
> +                         &lsio_mu5 1 1
> +                         &lsio_mu5 3 1>;
> +               mub-partition = <3>;
> +               memory-region = <&vdev0vring0>, <&vdev0vring1>, <&vdev0buffer>,
> +                               <&vdev1vring0>, <&vdev1vring1>, <&vdev0buffer>;
> +       };
> +
> +       reserved-memory {
> +               #address-cells = <2>;
> +               #size-cells = <2>;
> +               ranges;
> +
> +               vdev0vring0: vdev0vring0@90000000 {
> +                       compatible = "shared-dma-pool";
> +                       reg = <0 0x90000000 0 0x8000>;
> +                       no-map;
> +               };
> +
> +               vdev0vring1: vdev0vring1@90008000 {
> +                       compatible = "shared-dma-pool";
> +                       reg = <0 0x90008000 0 0x8000>;
> +                       no-map;
> +               };
> +
> +               vdev1vring0: vdev1vring0@90010000 {
> +                       compatible = "shared-dma-pool";
> +                       reg = <0 0x90010000 0 0x8000>;
> +                       no-map;
> +               };
> +
> +               vdev1vring1: vdev1vring1@90018000 {
> +                       compatible = "shared-dma-pool";
> +                       reg = <0 0x90018000 0 0x8000>;
> +                       no-map;
> +               };
> +
> +               vdev0buffer: vdev0buffer {
> +                       compatible = "shared-dma-pool";
> +                       reg = <0 0x90400000 0 0x100000>;
> +                       no-map;
> +               };
> +       };
> +
>
> Peng Fan (9):
>   dt-bindings: remoteproc: Convert imx-rproc to json-schema
>   dt-bindings: remoteproc: imx-rproc: support i.MX[8,8M,7ULP]
>   remoteproc: add support to skip firmware load when recovery
>   remoteproc: imx_rproc: surport early booted remote processor
>   remoteproc: imx_rproc: parse early-booted property
>   remoteproc: imx_proc: enable virtio/mailbox
>   remoteproc: imx_rproc: add i.MX8QM/QXP
>   remoteproc: imx_rproc: support i.MX7ULP
>   remoteproc: imx_rproc: add i.MX8MM support
>
>  .../devicetree/bindings/remoteproc/imx-rproc.txt   |  33 --
>  .../devicetree/bindings/remoteproc/imx-rproc.yaml  |  95 +++++
>  drivers/remoteproc/imx_rproc.c                     | 455 +++++++++++++++++++--
>  drivers/remoteproc/remoteproc_core.c               |  19 +-
>  include/linux/remoteproc.h                         |   1 +
>  5 files changed, 531 insertions(+), 72 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/remoteproc/imx-rproc.txt
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml
>
> --
> 2.16.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
