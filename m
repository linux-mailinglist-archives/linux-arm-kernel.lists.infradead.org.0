Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B913B14D1D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 21:20:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7E7LP0287kyk9bu5eaPuAnGRP5gJ/sVT8wyqO+xyjg=; b=m3/TwprsC6q1ov
	DmgjKv2jZLSaJWWHyAhmFirvJ2JydWvQx3txg+olKFeZP6Gd/mBWoMeI4HRBjn/aI+bXNkabw2exQ
	rnapHQgRy9utPDeaaijSO3txvgDpH8pox+D6MqiNC3pHU4mCort1WMyYTWY/5UikeR5VnJdw/14E9
	B6mX6sBjSfuZuv9Dh065qYAN6GvVRNh75GKja8AfPwcuh8W5Qx6Mba5RgFZrZXOZd8pOowpcHqHaK
	38PrvFhFPz7mkMi12D7b8IBvHA40LStN0rSqmgT5kz+9ZzyZoDvLumCjPfZsfIO/5yrzR+4PZry1R
	goG4FbWB5dXs8zEm4CtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwtos-000495-Gi; Wed, 29 Jan 2020 20:20:14 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwtoe-0003wd-Mg
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 20:20:02 +0000
Received: by mail-lj1-x243.google.com with SMTP id x7so826498ljc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Jan 2020 12:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cBAvgEILNC/DpIEeIO9O9bZop1LPit11TI5TK6r2sd0=;
 b=f6HglhEYBtGlI+1MJLA1H4Vfw050nUY3c/mP1sFKr8Wb9XRxK7dw1/gnSfQDg06rRT
 0t8ti8HFq9tZ3Jx3f/U1S+AUYfBV98K2Vf5Tjm9hW+c23UxJNS76DfzgOyoNHuvGx+zN
 sXZWQY857pdIbKJ3bDqFr7UmhBFUETm66k9viw7YDkQ7/BuPNp+720SCEP1STs2CDdko
 Ubjko+gAGEcIcIKdQdA3I6wNiIpQPIq/tdqPgKS03xo+OvvCVKoEETeJEHbByswy7sid
 mK/nuxs14s0PqRbndIF4OxzPgDBL8JMwoqSQpFOLGhlaz/k0PLpe9/UAWs48Rq3olRho
 dzPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cBAvgEILNC/DpIEeIO9O9bZop1LPit11TI5TK6r2sd0=;
 b=VHcKW8cfoXWNGY/xAtmyfQzUhvLfV0rg1FXDgE4bxF5Hww/wG8zxwPrmme0kcQvj8/
 fNJshzoLl+J8VxwpLtGh0Vb1C7wzNpCSjMZNgQ47w+VBUn7JwaZBM4BDXwZypxgKn5yK
 x6j9yKuODp417RZCcFL1b9SMYMZFKUi7tpRsxVHADUEEEpo6eEfCulksS5ws7yh4lvXh
 R3VsAy2QXJasrD60UiybTYdLJ9vPfyVUFXf+MH9WG9s19HDJ/jCf2kKZ5KjRaMIMYLyS
 Wsx2R0KnFpcgellb76B8jtYuBLxML5C1YOB0qpftvLxZSRA+u7Y+ba+VPPCD1xfM/zep
 dPCA==
X-Gm-Message-State: APjAAAU+uxU29Csmx9xNgMRXeoa3iZAea511/MWv4JWAZMcu2lZ3qXm5
 b7m+2cVairHQ9/HbVQz887FD2rj9dehikR2yGlX9/CXI
X-Google-Smtp-Source: APXvYqzuA9WbX+X2q0ILY1NfmpmvLlSyBrUHhpaWuevXJtsv/YP7zNE3FxI6k3UU76WiAjiLa4NEUjWGR9uylY0tU6c=
X-Received: by 2002:a2e:5056:: with SMTP id v22mr557613ljd.164.1580329196994; 
 Wed, 29 Jan 2020 12:19:56 -0800 (PST)
MIME-Version: 1.0
References: <1580305274-27274-1-git-send-email-martin.fuzzey@flowbird.group>
In-Reply-To: <1580305274-27274-1-git-send-email-martin.fuzzey@flowbird.group>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 29 Jan 2020 17:19:45 -0300
Message-ID: <CAOMZO5AFJvEdWNSsnsRW70_M6rzyvO4ip3zJHET2Gc2Wzj5RPQ@mail.gmail.com>
Subject: Re: [PATCH] dmaengine: imx-sdma: fix context cache
To: Martin Fuzzey <martin.fuzzey@flowbird.group>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_122000_765649_6E742DCB 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, stable <stable@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, dmaengine@vger.kernel.org,
 Robin Gong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

Thanks for the fix.

On Wed, Jan 29, 2020 at 10:41 AM Martin Fuzzey
<martin.fuzzey@flowbird.group> wrote:
>
> There is a DMA problem with the serial ports on i.MX6.
>
> When the following sequence is performed:
>
> 1) Open a port
> 2) Write some data
> 3) Close the port
> 4) Open a *different* port
> 5) Write some data
> 6) Close the port
>
> The second write sends nothing and the second close hangs.
> If the first close() is omitted it works.
>
> Adding logs to the the UART driver shows that the DMA is being setup but
> the callback is never invoked for the second write.
>
> This used to work in 4.19.
>
> Git bisect leads to:
>         ad0d92d: "dmaengine: imx-sdma: refine to load context only once"
>
> This commit adds a "context_loaded" flag used to avoid unnecessary context
> setups.
> However the flag is only reset in sdma_channel_terminate_work(),
> which is only invoked in a worker triggered by sdma_terminate_all() IF
> there is an active descriptor.
>
> So, if no active descriptor remains when the channel is terminated, the
> flag is not reset and, when the channel is later reused the old context
> is used.
>
> Fix the problem by always resetting the flag in sdma_free_chan_resources().
>
> Fixes: ad0d92d: "dmaengine: imx-sdma: refine to load context only once"

Nit: in the Fixes tag we use 12 digits for the commit ID and the
Subject is enclosed by parenthesis.

The preferred format would be:

Fixes: ad0d92d7ba6a ("dmaengine: imx-sdma: refine to load context only once")

Reviewed-by: Fabio Estevam <festevam@gmail.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
