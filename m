Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F951EBD76
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 15:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbyjzhvYq8jzT8NJN7Q1a3V/nRq8FQEypiGZkein6Vg=; b=e/m2jyFs6o0nbL
	WnV6233w1C9zzACbtVJxyb3dNX1O1J16PfzlGqD6nLoWoiK48BQhQ5vFpPMJkBIm3FYJjFnySNfX4
	jdJcBlPAoeIKlX5I6shAJ0lpzEa75wABjEWoIR1U1OtOyeFr5AE0WoqwXMIKzPQimM7qsYa/Txrig
	HK9f0FAuTaBBnSCn6XGmMEHypDMnhwRtSzQ2uFX8K8NIvxOMh8de8Ki6xnaIurUgPsxSbRqk2OJg4
	SFeg4KhHnrTIVwHZOMFsINhF3v4rZ920QpYkAIdSHR1VQSVdnyX7bxJFkPeViuSvIpXU0O600v6Si
	xWFooO3NoxbzJoXtnbYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg7Rv-00080Z-JV; Tue, 02 Jun 2020 13:59:27 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg7Ri-0007yG-NW; Tue, 02 Jun 2020 13:59:16 +0000
Received: by mail-vs1-xe44.google.com with SMTP id k3so2091618vsg.2;
 Tue, 02 Jun 2020 06:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9owB6N5YoTr+QgRWYSW+w97CM/a02Li4ocdyLucMnlA=;
 b=Ze+ivp4cAFxyqk7NhiH/FgnYGbbWWGkjKQQY3TxEitCzQdk7p0Wu76o0FkjuBwXiVH
 2Dg5GkZntUYHmh7C7r68i/lLSdsF0OcuA1BfQ15WDPiUYtJHbjCzEhJEJ9F1fW4CSoBa
 khCoH7AF8Speu+33IkgkUZJNsl734DdLOmVBBUhwR0J5x8OL60XWZn6dVPDktK0uYZyY
 STfI+k0NDFh4ebSmg1x4NiORk3wVn8f8pbTx/cFFLCIJdycWBKOR9MKgZnroaxd6/GLI
 VygAjCvqQjJqWXgTeulGShbJMm30zj4FP81VlH6EQDYtPjzDPJbE9QL+kDGi985PaEAa
 KZEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9owB6N5YoTr+QgRWYSW+w97CM/a02Li4ocdyLucMnlA=;
 b=gwUeLa0haNxoAFUFgx9nn2NmoqfJaa6uUh23arT8uQvHL2KBv8WXgmTETM0reX+Dz2
 /+QO5YzXVJkRN3wxYMIxe2a3dl1NXEpVYCS6l7wR1B54C9ALlA1AT8tgdiPYAvO0HM8/
 u5YpmU8EE9Nzw+d4qcDrCs5jLKuGolO93lIisMLgQH6semxFlHqnJSjPYezYhSzTTAVT
 cAVyLBVIMuA+2F/VcyLfTmjr832RPvOpuSHX2HC20Vw6mu4YfLE9rv8mstbedI8Ql4vv
 ODgnxh93YD8KrCjhbrPA7d6RKkVO5Y7edq2UijlRfo7VQVE3ONQ8a9EBZitgXcE094OT
 O84Q==
X-Gm-Message-State: AOAM530syi3a5wsrai5XfywBlynjYDnFAxhwkMX/USgxBn9+h9zq2wN4
 2c9i9aXjWkGGZCk0RjGbBfk3TaJJwTkZXU14/G4=
X-Google-Smtp-Source: ABdhPJwagcH+IMCLFpcz6CGUl5oYhyGNJls9L62J/M3CQCdOJiJr0Rvnef8YwBvKPwiyJDIDZDjyOZlJdWHq94p6Rm4=
X-Received: by 2002:a67:b149:: with SMTP id z9mr17006698vsl.85.1591106349968; 
 Tue, 02 Jun 2020 06:59:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590982881.git.Sandor.yu@nxp.com>
 <d3d707cf37e7928a839071242c752779061cc094.1590982881.git.Sandor.yu@nxp.com>
In-Reply-To: <d3d707cf37e7928a839071242c752779061cc094.1590982881.git.Sandor.yu@nxp.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Tue, 2 Jun 2020 14:55:52 +0100
Message-ID: <CACvgo52NeUSQV5p8+4DkCjpkv12cs8fCkQqy4MFn8pVaorVaHg@mail.gmail.com>
Subject: Re: [PATCH 1/7] drm/rockchip: prepare common code for cdns and rk
 dpi/dp driver
To: sandor.yu@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_065914_791388_09459714 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.l.velikov[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Neil Armstrong <narmstrong@baylibre.com>,
 Sandy Huang <hjc@rock-chips.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>, dkos@cadence.com,
 LAKML <linux-arm-kernel@lists.infradead.org>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI Sandor Yu

On Mon, 1 Jun 2020 at 07:29, <sandor.yu@nxp.com> wrote:
>
> From: Sandor Yu <Sandor.yu@nxp.com>
>
> - Extracted common fields from cdn_dp_device to a new cdns_mhdp_device
>   structure which will be used by two separate drivers later on.
> - Moved some datatypes (audio_format, audio_info, vic_pxl_encoding_format,
>   video_info) from cdn-dp-core.c to cdn-dp-reg.h.
> - Changed prefixes from cdn_dp to cdns_mhdp
>     cdn -> cdns to match the other Cadence's drivers
>     dp -> mhdp to distinguish it from a "just a DP" as the IP underneath
>       this registers map can be a HDMI (which is internally different,
>       but the interface for commands, events is pretty much the same).
> - Modified cdn-dp-core.c to use the new driver structure and new function
>   names.
> - writel and readl are replaced by cdns_mhdp_bus_write and
>   cdns_mhdp_bus_read.
>
The high-level idea is great - split, refactor and reuse the existing drivers.

Although looking at the patches themselves - they seems to be doing
multiple things at once.
As indicated by the extensive list in the commit log.

I would suggest splitting those up a bit, roughly in line of the
itemisation as per the commit message.

Here is one hand wavy way to chunk this patch:
 1) use put_unalligned*
 2) 'use local variable dev' style of changes (as seem in cdn_dp_clk_enable)
 3) add writel/readl wrappers
 4) hookup struct cdns_mhdp_device, keep dp->mhdp detail internal.
The cdn-dp-reg.h function names/signatures will stay the same.
 5) finalize the helpers - use mhdp directly, rename

HTH
Emil

Examples:
4)
 static int cdn_dp_mailbox_read(struct cdn_dp_device *dp)
 {
+"  struct cdns_mhdp_device *mhdp = dp->mhdp;
   int val, ret;

-  ret = readx_poll_timeout(readl, dp->regs + MAILBOX_EMPTY_ADDR,
+  ret = readx_poll_timeout(readl, mhdp->regs_base + MAILBOX_EMPTY_ADDR,
...
   return fancy_readl(dp, MAILBOX0_RD_DATA) & 0xff;
 }

5)
-static int cdn_dp_mailbox_read(struct cdn_dp_device *dp)
+static int mhdp_mailbox_read(struct cdns_mhdp_device *mhdp)
 {
-  struct cdns_mhdp_device *mhdp = dp->mhdp;
   int val, ret;
...
-  return fancy_readl(dp, MAILBOX0_RD_DATA) & 0xff;
+  return cdns_mhdp_bus_read(mhdp, MAILBOX0_RD_DATA) & 0xff;
 }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
