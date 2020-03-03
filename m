Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB481770A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 09:01:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgWljHL975VZvwFqcVHSzlboHOBRtzbOL4J0Wi/Gue4=; b=gwKRsyHiOsCE2X
	yOJ8HiJsSvODUMz1sw+dKtSLgV11xIItvF36vN511E2J3AdXTmiXyg0fKWbL5DHM1EnmUbR2RT4PY
	jrZ+4IkKkTnVJbl9pWfWHvZPeVdx70j8vO7Xx4ICE5RD8MQs4yqaWgtLr2AG2AK+yGqphtF8ebJ7G
	eao+Wi8947OQYRFQOB0G44+Fd12NfPUbF+abXAwZZNUBb2L+btvAkT5LCX5BJDK7dBOYfUIyF9Spg
	YOF1kq31hZJEK8B4am3otdRad44RtVI6gS/ar5XJyy8VsS3ut/AUfF5+qkNvLwXu5t0tlKTWL1Xi/
	5W9mL/vlblcxgoayuWcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j92Uj-0001Qz-H2; Tue, 03 Mar 2020 08:01:37 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j92Ua-0001Pt-SS
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 08:01:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id v4so3066594wrs.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 00:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8qyfM3kBipc3zwdrUhToF5IgGdBPcQiWJ6luYEueav4=;
 b=qFn5BwiDB32laJoxuwCmHsGVWOL1HvHHP8hgiaGq3mPO3Lh21cc48jsuZWS1gQGk9V
 lyQpuyJlA+dHbPTWoo7fOBFV/Sb+PJ3UZ6qJKVZ1K8452c99LNHqS0mC98ZeEtAZlULk
 y73YAoVYOhfm6SqQe8L7Q+Er0EN+QmR1lv9UCGCyg1g0wDAU1pv4kxgNkP/dCBQRCRjg
 /+w7qhcHOHzaSiCSoxvCY90qj9M8deX1b5gfL9LaOFAPc6nKGR0gonFWOsS9JmQY9sfk
 ngaSEJYVfihTTJmyCha9sYGdPvaDRoDeeTYSobz7sTX2IAunvb25+AmOYeNnpi6Pqy7o
 PAvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8qyfM3kBipc3zwdrUhToF5IgGdBPcQiWJ6luYEueav4=;
 b=NzX9Imv6dRZWryd/IgfdoYkAREUUC7jxbY0ZUB0hOR6+ssqNv7UBwUcTMwDoSqzTLn
 6n3+nWdloimFcY1y/oGc4HJUACESgJaKaJHFQIZVOlThqjay4povjqYYBVirF+oHymfL
 YgO0/vL3PoNWiDiuiHT0tRQBi7hJV+22SBkuI1mZLjkT0VvK5RyRMEMdLEYgBtvQHb1T
 mv4ajRRC0Go+70CcJbbPJiBLk3PfmnBwiMCKd5CVoTB8h3fKcui60u+oXlnFiADXsRaB
 NVaSk5hxUXlSgGv0s+i/f9Ho+bfy08Ht9JbXb7tpDoQKZigJ0j52zWqfaftSi86MJ5UE
 AIuw==
X-Gm-Message-State: ANhLgQ1ZfEkJpGm8aQSm5DXCMNvsHIC25aQYhtHsSTzFwT5TnhcdzIpu
 NYD3Ejc9Lh8cHyMUbBkhbfkcz4uo4XWseLm9rbo=
X-Google-Smtp-Source: ADFU+vtwxgHYElrwOCSYQopLGsPCdc8dwV3aljQ+jmR60/pLkTaD3Sl6smX0u9Ay68pEK2vSdclE7450Qvq6zEcswLk=
X-Received: by 2002:adf:ab4e:: with SMTP id r14mr4222183wrc.350.1583222486603; 
 Tue, 03 Mar 2020 00:01:26 -0800 (PST)
MIME-Version: 1.0
References: <20200303072247.3641-1-o.rempel@pengutronix.de>
In-Reply-To: <20200303072247.3641-1-o.rempel@pengutronix.de>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 3 Mar 2020 10:01:15 +0200
Message-ID: <CAEnQRZBqYxijvQOLN9MQQEkoGbF2eXsKjqG_f+Q+rgw2cVr_6Q@mail.gmail.com>
Subject: Re: [PATCH v1] MAINTAINERS: mailbox: imx: take over maintainership
To: Oleksij Rempel <o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_000128_946959_E06D5BB3 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.baluta[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oleksij,

Thanks for your help.

On Tue, Mar 3, 2020 at 9:23 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
>
> I would like to maintain the imx-mailbox driver. I'm the author of this
> driver and involved in reviewing of all related patches anyway. So, make
> it official.
>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Acked-by: Daniel Baluta <daniel.baluta@nxp.com>

> ---
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 38fe2f3f7b6f..8f3f6b764779 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6681,6 +6681,14 @@ S:       Maintained
>  F:     drivers/i2c/busses/i2c-imx-lpi2c.c
>  F:     Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.txt
>
> +FREESCALE IMX MAILBOX DRIVER
> +M:     Oleksij Rempel <o.rempel@pengutronix.de>
> +R:     Pengutronix Kernel Team <kernel@pengutronix.de>
> +L:     linux-kernel@vger.kernel.org
> +S:     Maintained
> +F:     drivers/mailbox/imx-mailbox.c
> +F:     Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> +
>  FREESCALE IMX / MXC FEC DRIVER
>  M:     Fugang Duan <fugang.duan@nxp.com>
>  L:     netdev@vger.kernel.org
> --
> 2.25.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
