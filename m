Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192071AF1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 05:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jux7poM8zBTIZhma7AuOD44CjJw5tnZHJVhoUplFmUw=; b=WWPh/B40pn5XMS
	ovGaEJrUqko8vDZNxtmbAcv94ETFSVX93+h4iTm6SXGFr6i0uxWPdtQGCT64BO11Ux2iV8Q7qDZUH
	ByWa41+aOjVfxJMi3VZ8CysCjagScdX9MI+g6GHp6ecsSI3lkEPK+BSRObindK5KAyu8NfVXcxYKZ
	7IxNf+nQRdspXVTmfIgJdtZFVvZ/MVKIfRwvbayXghyhe/1A6s5a4H+gq1VZc20jDsbnDGpDGryGG
	pl9LxKQaNHd9RjqVpG/LfC+eRY+Hj/j/ZH2nP8haodx26FOQrBJiie16n+6+96BryUhVizf4jQcfg
	yomceCUik3ZXkgnrHcAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ1ZO-0000qC-F3; Mon, 13 May 2019 03:24:06 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ1ZI-0000pq-A3
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 03:24:01 +0000
Received: by mail-lj1-x242.google.com with SMTP id j24so8741263ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 20:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wfoMnU1B5MwsGgUobBUJ9DN4Ws8VJ5pzaMDc3Fb2GBA=;
 b=rrOw31zwjhDHCFNWNtO9LFKRbgxlbOMBNdz3cVZpOip1OQg7z+h7XtrwBpmuI0UVfW
 /jY37VLT58EpAaJLnQ1VlB7/rVFKbssVgPQ3SSM7zpCxkvyU9C5ACF7vbzTVp0VGADGL
 mXlRSPjzLrsLDxXR6eZtuKR/zNEMTZ/GElGkxAYXvR6xxIw/XHZBNGxWW0xpr+o4Y2tM
 TN3ePkz3q1ED3QkhG02k0IWHB/zuh/7cMqIxgoI8HZNlF47uZec9Yx1HkYgyw9/nm/Xy
 jmqsYGRRv8064lLLFeYHcMj+kS8AHuPqFLUouJQspeF3FgDFeq14L9f7vdPboW3LT2nI
 9dHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wfoMnU1B5MwsGgUobBUJ9DN4Ws8VJ5pzaMDc3Fb2GBA=;
 b=blYaGqImAGkDJFsyRYd4h0d4maxwN0n42FuO1onSi6Ndjpd+UbDTxno7/qbDgtotIV
 d+H6X0x2FY4bmAW6f3uBJhCeC4aW/PVPNP+OjLOB+zmBpwxVF4uPfpiLISEsjSmQMNsm
 VdESX4xEiX0BzgIK0kpuYAVBD/OxrbKQr3i5Z6ieEhSpqIqsWTCrwbK4u3LhRvVKRf+M
 aOuGfek5/SBIg4WHM075Tk/LDhImvsXSHBvhGgiG8AXPQBOn9C2er9BZ+sBMFJsmrPvI
 qA3DxTR1FAqRJ+f+B2Bg6rgLKm0difukYXeil/3qKXcwLZ6pOpedF/t/0oSJWGiWq90x
 zbdw==
X-Gm-Message-State: APjAAAWobJloKj01ZUFIQ3cN/Ty5iX1Eq1v7l0DUOoV5P7ONxtgqSh/o
 hYZHItGWCoAFXrtMqjYW72Jar9Wm2XEEqSwdqG0=
X-Google-Smtp-Source: APXvYqyEYmZGdxeGvqmk/S+pXokxfY1UVIYswy62bNye9U+5nX7dOppPE2nWqsDi7wfjoY1PVMXSd9YfVNq64B9BLcQ=
X-Received: by 2002:a2e:994:: with SMTP id 142mr4150099ljj.192.1557717838459; 
 Sun, 12 May 2019 20:23:58 -0700 (PDT)
MIME-Version: 1.0
References: <1557716049-22744-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557716049-22744-1-git-send-email-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 13 May 2019 00:23:52 -0300
Message-ID: <CAOMZO5DKBGYgri7swrbqWZ_j8TfTUsiPivnYPvN2X3GvGcTNrA@mail.gmail.com>
Subject: Re: [PATCH RESEND 1/2] soc: imx: Add SCU SoC info driver support
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_202400_368448_6F454FB7 
X-CRM114-Status: UNSURE (   8.21  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "robh@kernel.org" <robh@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 11:59 PM Anson Huang <anson.huang@nxp.com> wrote:

> +       soc_dev = soc_device_register(soc_dev_attr);
> +       if (IS_ERR(soc_dev)) {
> +               kfree(soc_dev_attr->revision);
> +               return -ENODEV;

This should return PTR_ERR(soc_dev) instead.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
