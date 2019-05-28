Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DF92C581
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ym5wJvzII+SaIExmuVq7KPn6nAYDCWOosc71axDpo/g=; b=OphJBnAlDGygUe
	UWl/v2+gKwFr5cdZuMZWbUrK9BzLhy3cfUCjXN4Hf7bfg6yVuD2WZHxdlaBETW27SN3HeEXaw4Ymd
	9F3bbe717cDN+7+DdGiy62tnIIDJFv6ULXyVoRIr1anGjA6BlNUs8QNLyDD+DcUz/JObZvOftzpSx
	yUjMaMeBVjVg/L6fp6aifUjH4bSz6oh7thZP+Sp+ExGT7UdbipvAMPg92arREhGwJ8ag1o7dhucRZ
	mGTf1RAMVMKByhKYIHeuy3IROe56IFF+WqJvTVJzNd6ly2jIjQlbVI9wob8SEffu94Tf1lzSXtPDY
	8+zXBEtjunFHH0LCiQgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVaOY-00079A-Vt; Tue, 28 May 2019 11:35:55 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVaOC-00071k-LR
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:35:36 +0000
Received: by mail-lj1-x241.google.com with SMTP id a10so6573757ljf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 04:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rqLIasIMK6GTnZhZ6cBekXuQ7c0qWMEg9IE2rgy5XOY=;
 b=PeMv/8MEflZroLGCJTN+P+ja6l5C+WK0ymr46wYtAtLrN59+H+IGbvNpxGJ8U+1XP3
 CdnnpNTfz59ttOW8TRYs+cEU+6XbB3ZhcWGUqg7gUXLMjF5F/SKQhcmQ9sZlIWO5jVpY
 n64LiVBxFcQ36strUpAZ80nWGuZegmFidftoIAErhRpZFffUrkK3ZXsT/ytMBFht7JNY
 fbqpC9N5nnVb9JmoUXqFh95ADSDutuEloKtG960aIp+dcaSVEmcZdADJRG2ge5WuPI04
 GBKKvZUDiGWv3bs6kPCfAkFwR1OjqQQsft858TABEdcU9Xl6zh8dFk0MpCDKtr68PNr/
 wMGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rqLIasIMK6GTnZhZ6cBekXuQ7c0qWMEg9IE2rgy5XOY=;
 b=N7Y98r7946bDNYGX+HKSgTbH/ZVKvs+Zab4WM/hWeTPpoSgj6JJuvVz6zV6dgpcYyY
 L145Px6AXKUrXLjnVI5KV+KDihlRLOAy+nENweXJ1e7BvBj4y7ctrJRFm1WbJNpLsl7z
 FWlGYgJ2ubZCVAXjG7YMnzNi1mWBzlQWVE95SqnrGwqFwB91d+O3Jbe6VByGWmvNzDdt
 ns5rmlAqhlQPY4TUOy7E0Pga6Cqrj9dHXu7q7AhDlDjd8yVHxZ1gC+E3/bGD0BV1Jo4o
 c+BCMS/fJ+UwqhcKWOOAEqXpGJGTHgAYCTBRYYMud/5iHGONa7/49XToNueZynMtRD43
 y5aw==
X-Gm-Message-State: APjAAAXJf1rm4LqKTWoPkLhGOV2EpZKv/0XIgNfe312jvfegPacORytl
 wRZpfOCHGwX+pHBL1fwNO7xflAraDbOQVmhunE4=
X-Google-Smtp-Source: APXvYqwvoMXTlA0QLkuuGxvQwzy+EoJSynxoE81hlZPwrZT2U+b5RGCFjvplko9xorUrfHVh3kDqaLuXV/woqe2SIU4=
X-Received: by 2002:a2e:9284:: with SMTP id d4mr41919221ljh.26.1559043329981; 
 Tue, 28 May 2019 04:35:29 -0700 (PDT)
MIME-Version: 1.0
References: <c30f0e497f9e8bddc32e31a22f00ae7757e3d24e.1559024737.git.leonard.crestez@nxp.com>
In-Reply-To: <c30f0e497f9e8bddc32e31a22f00ae7757e3d24e.1559024737.git.leonard.crestez@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 28 May 2019 08:35:37 -0300
Message-ID: <CAOMZO5Ajg3mxueNyWfx0xy3qQAr24hfdBn7OS=8YgmRtWW2QXg@mail.gmail.com>
Subject: Re: [PATCH RESEND] PCI: Kconfig: Simplify PCI_IMX6 depends on
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_043532_949462_B325EB23 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Stefan Agner <stefan@agner.ch>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Trent Piepho <tpiepho@impinj.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 5:06 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> This driver can be used on imx6sx without enabling support for
> imx6q or imx7d but the "depends on" condition doesn't allow that.
>
> Instead of making the condition even longer just drop the per-soc
> defines and make it depend on "ARCH_MXC || COMPILE_TEST" instead,
> similar to many other drivers.
>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Tested-by: Fabio Estevam <festevam@gmail.com>

I have also noticed this issue and sent the same fix as I haven't seen
this patch earlier.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
