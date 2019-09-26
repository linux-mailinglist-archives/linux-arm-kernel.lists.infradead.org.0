Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A95CBF611
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 17:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=li8FGDZSNTIUmjcWS3Pw855NGZOQ044S9ZnqGjyx/U0=; b=E+zGSwpzsMKILt
	nFpzJpPdlM3LJpQWpTiMu7KdCO6xfSh0ei8xN1Sgy9kDg0SHMuDVTB7Lx3CQWML4A15cEMzwFizNh
	N4W3XGaZqZDOIJlWbCnDuyJnBa+R7uAvnc2QpW/4PxJO06E0CfF0FLWlWIi+K8kAR5L726bvLT/84
	ho5cOiASAULFqck+HuQtm6pM7eyL93uocd9dmB1zjfFAaf+N7cD0Ci8pq7aW2l1TlfkjaYot9bCRy
	6WxuGpbHr3B6DNe8wxblDLPq/SuD3agsQO+hog/NAT3bkFjuXKoYVnhfdT3YkMRaAGRWPmhSxIBur
	v54rsLMSPWgvG96visEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDVr5-00012A-1U; Thu, 26 Sep 2019 15:38:55 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDVqu-00011K-2N; Thu, 26 Sep 2019 15:38:45 +0000
Received: by mail-io1-xd44.google.com with SMTP id b136so7762058iof.3;
 Thu, 26 Sep 2019 08:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Li57q73MX1RVx23YfgpvWF5w0x4ow2nEwbE6KvqKXw4=;
 b=ddZiXkOGcNyt3yIpQx4T3/Gj0lMxo5fD6jC8orTuZHFI28MUf8nRRhWDRT3KHHhPSL
 2QkgJq3B3CkBEs2qVqnO2XzZ/b3xh0C5DItoQmeyhM7ZssdZUem0rhRUJRkkwSEPuqhb
 TsfJnifEzBgUSl6rNTR6Y/I2+QwUfSAfrIXzYsLw6zlKsb4ORWAJKTPEGEaz6/z2Rrjj
 grlrAU5A1pz8Td00+qZCozRZVZZTVsLUU1RticRT0EcsJ+s0Plpjbpu5nuzCJcIz9FmW
 isHVVt8SUg33ne8/OYfOzsug+Y6qdnVxsb6lh7qYLCuzfIGgUWWjX5c1x0HLg9PR8gQ9
 I1MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Li57q73MX1RVx23YfgpvWF5w0x4ow2nEwbE6KvqKXw4=;
 b=dzDsidgm+U4jOTHgvHlMmYqNVnkz/2jwZKSmfbN+v5Jgylp/oQ4o9LIjwKJN3HSeM6
 ecY+3uzR/8dN3AG3hoItsATgQ08wphDm2ydFF2mKp2wlsFHs5KizpCfGvSes35tOiTRb
 O+B4Fv2GeLSNr6wEMep1/XN+Oh7NcNwt4S1Fro1TrbLTkmF7hvzUYUJb7UXdra+0BL8C
 A3KCNsL3FOmzCT9T+PpD24H86ff6pCIYrZbg8YcS1ABaXQi6ARCukZMT8sP7Askh2J48
 2g6i/vPe1mbt2PFx2fcQBAPUnTAx6I/AXaMglIseklo2KTZrgyQozG59ze3Wr72n8MhV
 YZJA==
X-Gm-Message-State: APjAAAWmhGnNRLUnjqMkIqTfcWXXaVCu00OZ8e2JqcyzcqeaI+ws/abA
 0lF3fTATkLmIGMOs+KODHzIlrjuXtU0wlqhvNng=
X-Google-Smtp-Source: APXvYqz8oVdb4PXIBRw7lIbY55HKL5mDby64gFcwc20gU6l9i2bzFhmg5ZIz7Rt3qIXsTSJXHdzLp4EDv7kKxqLjQbg=
X-Received: by 2002:a02:e47:: with SMTP id 68mr4042317jae.126.1569512323132;
 Thu, 26 Sep 2019 08:38:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190906122044.372-1-linux.amoon@gmail.com>
In-Reply-To: <20190906122044.372-1-linux.amoon@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 26 Sep 2019 21:08:31 +0530
Message-ID: <CANAwSgT-RDicoTxe1574_0KhCJ0=JpRGXydjGPdedJ+sULRfpA@mail.gmail.com>
Subject: Re: [PATCHv3-next 0/3] Odroid c2 missing regulator linking
To: Rob Herring <robh+dt@kernel.org>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>, 
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_083844_139721_5C1B5FDC 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kevin,

On Fri, 6 Sep 2019 at 17:50, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Below small changes help re-configure or fix missing inter linking
> of regulator node.
>
> Re-based on linux-next-20190904
> Changes from previous patch's series.
> Build using Cross Compiler.
>
> Added missing Reviewed-by Neil's and Martin.
> Added few suggestion from martin for rename of node.
>
> Dependencies:
> Changes based top on my previous usb fix series patch's.
>
> [0] https://patchwork.kernel.org/patch/11113095/
> [1] https://patchwork.kernel.org/patch/11113099/
> [3] https://patchwork.kernel.org/patch/11113103/
>
> Hope this series get picked up for 5.4-rc1, finger crossed.
>
> Changes for previous changes.
> Fix some typo.
> Updated few patches as per Martin's suggestion.
>
> I will try to commit less mistake in the future.
>
> Best Regards
> -Anand
>

Gentle ping for this series.

Best Regards
-Anand

> Anand Moon (3):
>   arm64: dts: meson: odroid-c2: Add missing regulator linked to P5V0
>     regulator
>   arm64: dts: meson: odroid-c2: Add missing regulator linked to
>     VDDIO_AO3V3 regulator
>   arm64: dts: meson: odroid-c2: Add missing regulator linked to HDMI
>     supply
>
>  .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  | 53 +++++++++++++++++--
>  1 file changed, 50 insertions(+), 3 deletions(-)
>
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
