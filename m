Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB636AFE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 21:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSvtinUHsECmRH9I3kxnOtCqm3l2VZBXKBqq3T/qVUQ=; b=Ex++cxGGsSYtXj
	WoR6r8Kzbul61UF9H4BIMKTz6EpZZCJhiHuioTb47JWlULQjYT//diEKRbiozges+y5WgR1RP3GSc
	akImncoyJKfuIOCe+Oh1Toknv/o8/+UnGYgzaJPHwa7L0ggM62bdzaqa7wDnmz6Tetg6V7yJDGvys
	EJDlWWhCB60cL4NR/E6b84BrmhvI+ojt0cLysKWRc7hoQdEFqsRFZX0hoxDE6YfNZyQF2pSZQMgxb
	wslSX2VxjnkPyTsYMD5ERS5IJd3o5dlXJnPEdmo3AHXcZjs/hyXoSSSXT3SZjmocUQY2Xpl6thAwU
	lHRUMP5UV9Fzro+iAvPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnTCh-00032Y-31; Tue, 16 Jul 2019 19:33:35 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnTCV-00032A-BA
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 19:33:24 +0000
Received: by mail-lj1-x243.google.com with SMTP id v18so21118202ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 12:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vU1ORZGPUWtAtV6dRx+NdPd6eLt1Evf9byseWn+Rs3M=;
 b=Um6AsNk8Oq+S+hkTOkBbirDKNknEAOZlsvGJ4LxUmV9lrplIOlzWbrg0U9hmndM3C4
 K93Ydk6aEUjU4suUnCFh4fJrxD4QzlFWljVPOjYJ8g+Pg8yKeknCvBqYRm90d1X8w/h2
 ONT6T1Y/f+1kZDQ3wiu+tcFPxlnKCpDeYJ1DDO3TCyAt7uwW0u209SNZl/e0a9H8ghxl
 Za06Vtx6fjXcmo2LZvxLM9q8bwTiPwpbQuD5qTXacArQtQKtvTE473zzSkWVFLzbCxGK
 iF75CSfmeJ/Q5YqAk03F6yoALpoPEQey3olCNG5G94Hq9cVI3cNj8LzsI0kypra7hNY5
 UnuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vU1ORZGPUWtAtV6dRx+NdPd6eLt1Evf9byseWn+Rs3M=;
 b=RLXxCnxw41Au/p5g7Vayhfi2FS8/BVvjlqmbGQ75lyxDNKXwrbmNVO0LsbBnhdEaI0
 duFk7XkuScjHOU07OLCmyFPcYSZiBwkwSpEHZFQCOciPAkd1B1FoTS59SpBnV/Cgxp3h
 Emo6r1EPltFsHnGYj/h/6EQTUCGVC62da30BcIQngFgFHjLsVc3O5W0DqdO3Mmo43otJ
 ZI1bJx4L2Yo8tYl37NZNtxBG0ER8r7W7scbbmFnRz0omhmkoL3GC/EDr3+4djZTvmqZr
 N1AOmxw5PcfdpTCGPf1inMNOX3thxOfOHYNJz95EcBHbntvzX0oynTKt61FoUQff9Nse
 dpog==
X-Gm-Message-State: APjAAAVjmuwHlzz7+kSX1Pux/Qkmn03pDA8rvzAZpgngVrVWgOXtGarL
 ECZ9CQXbvvb9zghkT59tJ1GHj3EtdsfhvUqYT+o=
X-Google-Smtp-Source: APXvYqxNNOAhD52XdtmuqDphXRzzKH+DuJa7lfMRv4f48z5p5lIOXB2RfYubua4CKffLvL2yxZq4Qg3yHHKcHIR6hTQ=
X-Received: by 2002:a2e:5dc6:: with SMTP id v67mr18645728lje.240.1563305601513; 
 Tue, 16 Jul 2019 12:33:21 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-14-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-14-git-send-email-aisheng.dong@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 16 Jul 2019 16:33:18 -0300
Message-ID: <CAOMZO5Cc6XLjFFEVd59Pru7t72jvW=OCikyXK7W6E8rWRVO3jA@mail.gmail.com>
Subject: Re: [PATCH v2 13/15] arm64: dts: imx: add imx8qm common dts file
To: Dong Aisheng <aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_123323_389861_2144A626 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Dong Aisheng <dongas86@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:

> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -144,7 +144,7 @@
>                 };
>
>                 clk: clock-controller {
> -                       compatible = "fsl,imx8qxp-clk";
> +                       compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";

This looks like unrelated to adding imx8qm support.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
