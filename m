Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F3519799D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 12:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Si5hyToZTFChtfLQy3Tw2cdgJ3SXSsooJFUwXnRQXNY=; b=rZlYg2yLsk0ljp
	QI9W9gXaAXU+ggci1ncAw8M7L3SVuI7dYGDlwYQnBJN3GSBAU/00PS5nYSmkFVcrO9KVFIEXBYnvS
	6JsuWKdq2rONHclust2JMBD6R6ceKzvCmZIwHJXUmIZZX8oGd+kUYwBnYurBkl23iZM5/tbG7nO+G
	Sp1ykNyRN8iDrNOszTrQJl2VEVvFj1lVcwVK8yc6Deo+peLiymGXS0kyvykBo3ecAWk0dyvAQDl5K
	gnzCqul3Cbm3NolUYsNLedBsHmve+HdCkfapFKbbLNFPURg9poFOVHwY/Kj3Ubf8MXGnFltthYqrz
	CeP0Y2y5Vmr8d+FW6uzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIryp-0002FK-8V; Mon, 30 Mar 2020 10:49:19 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIryf-0002Eo-NE
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 10:49:10 +0000
Received: by mail-lf1-x141.google.com with SMTP id j188so13729524lfj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 03:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0slXT63FsyMWfJVgWp5ZKRzshpK3B4XCW+bjxToALHg=;
 b=UIqBY5zNOcLPX+DVlCrwFJ56WCDGJEWBYcqbY8c07qWXNJGKDNRJ/bArIkfH6sjZ/G
 /OPBrok9wExA8/HVMny6zzCvbWRARfsmAJpzyJEQfTHifQ2nk1U5f4xFsd57e8GnPmfS
 WnypUzsl88ng3SC81Pgj0IMlrMeJAqCNgCWxAYV9ZoDMe0DCCgtg0MpFwsZXH5f6oFIZ
 LwwGgEflpovZMK66ERYiuD0RxYfjzYmTPmHoPgSTrSvtDYPiUo+ggtLvqAw8QxYdnjCM
 /0hw37YnWqD/XLugoTdMMH2BkZosMDmTYhCcBUr2BeSaA5oRxxe+XJG+lkgMYA3imbfB
 5G7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0slXT63FsyMWfJVgWp5ZKRzshpK3B4XCW+bjxToALHg=;
 b=jZ5DYyTYTuQT/cMlRQUDUsagSeAG6FVhpS223gnSfxax6fQolad+1JkkbCJjx+oSKz
 e2kKV+nt1khJERt0RhZA/ZJg+O0ZfH3oufvyC3eFMsLRl9f3hYtev92mkC25doJKXXBv
 14Uo11bt4n85C+a+vJRDs14vN55kY44yTZFT1MtJvkCK8iNgzMe8ngiyJ+zF6qnUtlpV
 2ItiKdXVRP3htTLg2UzTKa7i6dR5NNtwnaBuzDcv5Sd5c7zfL83AgB+7+Bqt2WLySXH9
 pUs2AyJRo1gsR1as4FRPKhmilvhO3jMJXYYgcVYpcPxtdnQ+zBxNa3fEsyNknvZ9EouJ
 nwDQ==
X-Gm-Message-State: AGi0PuaScXvJ0O80s8NmdO46dcsCF0wKfTLkBxbb/6EREf8u3EwQIGvq
 RP59fRdBWVvUmLUarrIm/ryWTQaw+EaG1nEqJhg=
X-Google-Smtp-Source: APiQypIDdsfu67L7HuJ9x2oakbYfi6Z3iXh6GtIjmKfFlXRrhGD8/6uq0X/zpkAYRk5aMtqxh0q/V35Rl0KzWY3okag=
X-Received: by 2002:a05:6512:1116:: with SMTP id
 l22mr7822725lfg.70.1585565347720; 
 Mon, 30 Mar 2020 03:49:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200330022222.1130643-1-marex@denx.de>
In-Reply-To: <20200330022222.1130643-1-marex@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 30 Mar 2020 07:48:58 -0300
Message-ID: <CAOMZO5B-JQN7SNGwBGUsYOT=+ZcvnSnPRqwOf0JHnXU7kcJaLA@mail.gmail.com>
Subject: Re: [PATCH V3] ARM: dts: imx6q-dhcom: Add DH 560-200 display unit
 support
To: Marek Vasut <marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_034909_754810_54D17DAE 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Sun, Mar 29, 2020 at 11:22 PM Marek Vasut <marex@denx.de> wrote:
>
> Add DT bits to support the DH 560-200 display unit, which can be plugged
> into the side of the PDK2 board. The display unit contains a display, EDT
> ETM0700G0EDH6 and an EDT FT5x06 touchscreen controller.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> To: linux-arm-kernel@lists.infradead.org

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
