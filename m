Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A516757EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 21:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7YwTrJNEABXJVQJ7zGVt5MGLjN9irLD5Fe2c9/ebVyc=; b=UPoR/1GuaskHiP
	WRJL5KzyzdCMh5g0v54NdMIV+nfcsUTA+6Bxv4c3UHRUVeR3pDRz/+HhGj04kYADdZrD6iFqDmlXD
	uZHmEhRRM5gB0kbQ+OU6r4vzDIQrQTdUGgfC4hpcs89frFlsR3gv0QbWwBPqMACgwOu4ZF/SdXpfn
	S9OqJ+dC5nXUb+ikrlujTgxzSgLDgkI8l1isFH+CKM5TZv/xO8czOp2UiLHe+PQFDZaTM5d/XU9pz
	DAziGMoaQSMe1/9z15iu0c0ISoC2caoKl/MWja6qo/kej1DFXbzw2vvNFbQDJQsUh4vic709KQneb
	nEGneeOQG/cKBy/tTr+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjTt-0005L4-N2; Thu, 25 Jul 2019 19:32:49 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjTb-0005Kb-P4
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 19:32:32 +0000
Received: by mail-lj1-x242.google.com with SMTP id m23so49029792lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 12:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Kp0EWNt1hJYOLXDTYlF7zykP3Zq2TsBvXEhXEloAP6c=;
 b=C4AxvAwobnSSddWK24zoACbWa2WjxylpFNge6tKlmOW+LLRo+AXD/ZpOa2ItZLWQ0V
 rca8/YgVzcRihbJdusIc8NP6R3JF6C/L5frSIAc/ApkYxB0wzAc/FRwDJCtahPQgb0Hs
 n6AYQKp2AyOCm6dUCMFiWExIrr7KlAr2OSGThds/zl6FzBQwutPcxhg8gmCHra/5nXrQ
 IFypJzMVv81BoUmg/179zDv95k+wq9BmQCIE/v38M6QgpT2vp1mZDuyRiUPuPDsu6wJo
 ThpgtWT10jqE3omLZRtngj0C7o/10Ew8qAXeJP224fMyanvN2BdJ790hY3vFN7KL3lgf
 A13w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kp0EWNt1hJYOLXDTYlF7zykP3Zq2TsBvXEhXEloAP6c=;
 b=laS0PnH9UVHpTAFTCkwoBW6HLmwiaV1NhOodDyqjiXlfL0Tv2mAt2JaLK1Mh70Ndvh
 FLpfBuS0QZnJTq2tC25UVdrnCD1OeL5F99P9huNXJNT2ypcUmR97T1dKFJIAin1EErEi
 Hj4jLKvUzj2zC5z7Xvew/JzsS5ocnB0N8hLcgzzMo3B52Px43dkcG3o9ReHaz2RTzki5
 K0NIXTqEI/8oOEXyfQ4k56+/CB+XMTGodfsQrL2oYN78tcO/MyD24kDQzGUzTe9BG7T/
 6uyaI2Puq4uAD7q7TeglXb5KeXzHquMpT7uK29XhYH999o9EvQFqmLSmeLnsTLsXQjxb
 xavw==
X-Gm-Message-State: APjAAAUO4pMmzLCFRObXVYrf3PIGJnxevDsdr5GIAjRzdMuXoTSQAJ2J
 pXhb9U96tyiFgIKcXgmYJXG/Zx3ZDGfCJZ2IzZc=
X-Google-Smtp-Source: APXvYqyDf3rdKYXqiXUlgdRjLq+Vaz3jmCLYtBCYErQSevesbRjPKuJmugaeK1C2zffMG++H1hJFxitGJxEZjTaH6lU=
X-Received: by 2002:a2e:5dc6:: with SMTP id v67mr47345282lje.240.1564083149838; 
 Thu, 25 Jul 2019 12:32:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190712204316.16783-1-TheSven73@gmail.com>
 <CAGngYiVb_-A4Au749GD6SKi=UqKKBm4yxim8YOCbgVjfz7xtvg@mail.gmail.com>
In-Reply-To: <CAGngYiVb_-A4Au749GD6SKi=UqKKBm4yxim8YOCbgVjfz7xtvg@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 25 Jul 2019 16:32:31 -0300
Message-ID: <CAOMZO5CrUZ1C0i8ofuiG8thsPgfxPiY5XOnvUsmnkYYSKJBMNQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] bus: imx-weim: optionally enable burst clock mode
To: Sven Van Asbroeck <thesven73@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_123231_811861_C51EC862 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
 devicetree <devicetree@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sven,

On Thu, Jul 25, 2019 at 11:30 AM Sven Van Asbroeck <thesven73@gmail.com> wrote:
>
> On Fri, Jul 12, 2019 at 4:43 PM Sven Van Asbroeck <thesven73@gmail.com> wrote:
> >
> > To enable burst clock mode, add the fsl,burst-clk-enable
> > property to the weim bus's devicetree node.
> >
>
> Any feedback on this patch, positive or negative?

Looks good to me:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
