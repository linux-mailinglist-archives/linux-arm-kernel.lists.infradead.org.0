Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 320CF8F71C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 00:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypxqTmxHdOOxJfwB9+3aDdQn1bTbh73mQ6XgAAEI/Rg=; b=FI3Y2zB2SRz+wV
	UgzB8JS5oCmo03xq3L8MgJdwB0RnJVeHqT8Gal2uA6tjYLf52+gd/Y6+8f6HMFOyyptlP0aGEqqcE
	WN41oatKSQnuKgezQ/INb54rYS7VQLB9XcLCKAPs09JPEtSM9HZp8blgEJ/r+IZP4neXvMU0Sj1fZ
	FV9htse0QS/WwcH0btbQP2SLPXA7UmhQ4OAVAcsZ+nRMB0vputdAHHzrbP6TpRMochcV0cMJxQw5+
	SWztyNO/MK85rVRnTLltVp235UDbIH8Jbo/Ynvf/9vJca8fey/R83FZPTVIZOJI2HEPSqlO+AaAut
	28P2aPUw86nzHW1/U5hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyOQ9-0000FY-PX; Thu, 15 Aug 2019 22:40:37 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyOPx-0000ET-D2
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 22:40:26 +0000
Received: by mail-oi1-f194.google.com with SMTP id c15so3455102oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 15:40:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5N0BrmR1Tjy4UAxxe/8xM6uCYUxnCI+4Zt+Yt4/wBa0=;
 b=fH305wBSMjJXE0p7+/Rgrb74YSNM9idqx9eZkAmsO5G6grHvkNVKcIbZAhZHXoAZHR
 P2U5NbZwyHgrlcGIPpP9YWZWxrJg+8NLtLyAXPlXNADn4jgchOxkuiABy0n6NP0SFn6E
 t4BLElymX8tnDJFPiot4nKhh8B6S+vSz1JRrMr3iOTyv012kTREehbbkoTd7csL5Esx5
 4sYf5x4PEHrjCIIHXPxWC/J2MN8w8u81Q/H9tk/1Soj64FmFgYEuOPpLVlwMYZGHcuOQ
 X8zlnkNNhvmfcgnAE3V+tmzk3RV7A7jr0v/1piIw3xFsLQP43lE0YHe8mm2uHIhB2cix
 +SVg==
X-Gm-Message-State: APjAAAW6dKcCxwBRQeM98FUglyAJxbR6k4AbQUs50QWCnR8kG1xY9csn
 2BP3/BAmvyMUnMFOPpjgXDh95avZXig=
X-Google-Smtp-Source: APXvYqyj+VAsDxlyJfYk+5kwAY9mv63tbMr1/PyEBogpHlUszeNpbBxr9eVf69ugCl9qMGO45WmbfQ==
X-Received: by 2002:aca:b755:: with SMTP id h82mr3132898oif.129.1565908822444; 
 Thu, 15 Aug 2019 15:40:22 -0700 (PDT)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com.
 [209.85.167.177])
 by smtp.gmail.com with ESMTPSA id t10sm1024274otb.13.2019.08.15.15.40.21
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 15 Aug 2019 15:40:21 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id a127so3465248oii.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 15:40:21 -0700 (PDT)
X-Received: by 2002:a54:4191:: with SMTP id 17mr2851640oiy.175.1565908820908; 
 Thu, 15 Aug 2019 15:40:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190814072649.8237-1-yinbo.zhu@nxp.com>
 <20190814072649.8237-2-yinbo.zhu@nxp.com>
In-Reply-To: <20190814072649.8237-2-yinbo.zhu@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Thu, 15 Aug 2019 17:40:09 -0500
X-Gmail-Original-Message-ID: <CADRPPNSW4A0gkbzcPD=y-J_YHSnbAgP7p=RQnS6i0U-Ze=L6qA@mail.gmail.com>
Message-ID: <CADRPPNSW4A0gkbzcPD=y-J_YHSnbAgP7p=RQnS6i0U-Ze=L6qA@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] soc: fsl: guts: Add definition for LS1028A
To: Yinbo Zhu <yinbo.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_154025_442904_4A1C0317 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Catalin Horghidan <catalin.horghidan@nxp.com>, linux-mmc@vger.kernel.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rajesh Bhagat <rajesh.bhagat@nxp.com>,
 Alison Wang <alison.wang@nxp.com>, Ashish Kumar <Ashish.Kumar@nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Amit Jain <amit.jain_1@nxp.com>,
 Alex Marginean <alexandru.marginean@nxp.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Rajat Srivastava <rajat.srivastava@nxp.com>, Yangbo Lu <yangbo.lu@nxp.com>,
 Jiafei Pan <jiafei.pan@nxp.com>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Xiaobo Xie <xiaobo.xie@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 2:26 AM Yinbo Zhu <yinbo.zhu@nxp.com> wrote:
>
> Adding compatible string "ls1028a-dcfg" to initialize guts driver
> for ls1028 and SoC die attribute definition for LS1028A
>
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>

Applied for next.

> ---
>  drivers/soc/fsl/guts.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/soc/fsl/guts.c b/drivers/soc/fsl/guts.c
> index 1ef8068c8dd3..34810f9bb2ee 100644
> --- a/drivers/soc/fsl/guts.c
> +++ b/drivers/soc/fsl/guts.c
> @@ -102,6 +102,11 @@ static const struct fsl_soc_die_attr fsl_soc_die[] = {
>           .svr          = 0x87360000,
>           .mask         = 0xff3f0000,
>         },
> +       /* Die: LS1028A, SoC: LS1028A */
> +       { .die          = "LS1028A",
> +         .svr          = 0x870b0000,
> +         .mask         = 0xff3f0000,
> +       },
>         { },
>  };
>
> @@ -224,6 +229,7 @@ static const struct of_device_id fsl_guts_of_match[] = {
>         { .compatible = "fsl,ls1012a-dcfg", },
>         { .compatible = "fsl,ls1046a-dcfg", },
>         { .compatible = "fsl,lx2160a-dcfg", },
> +       { .compatible = "fsl,ls1028a-dcfg", },
>         {}
>  };
>  MODULE_DEVICE_TABLE(of, fsl_guts_of_match);
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
