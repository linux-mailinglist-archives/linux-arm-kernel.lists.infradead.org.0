Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5063B40143
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 22:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQ+ePB12QvrAdPF5m5POrInt4uhUQHWYKL9qGGklq2A=; b=E5kdS5Q9pbVB6J
	YrqrKxZKgj8tIN8b0/bv7u04I+FD1666dcR4BmHWF/7c+hghQCoalwqDfE1fMxRh2KR4TsXyN34qD
	a8YODgWhcdyXl7mkDF5Cu0Ltg0zs+SMKI6oAoNfOoljBhO/QsqSiNPiVnP5N/OtT8qcEdddz/71+I
	wDtazBaIqN3fRXsgxcYF8pMfU8T6BEQEEN52XZDos0p5fzcPRyyzApo90k0uJR/OyC4VD+0iLCuck
	tKoa/xcrJKC6/ssSpwj78VJrh9uhPJMy+QVsR8BGzO+6pAEwhgQkA4nTNYsnWfkziMrTUzfd91EOT
	Lh6a9P2xW8yCGO54uhfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hanRR-0004wm-8N; Tue, 11 Jun 2019 20:32:25 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hanRJ-0004wM-8J
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 20:32:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id p17so5717541ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 13:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HG+Jj5aLWSzQxxzhDq7lYfn2XSZ1Scwtl7BQOvyxWdg=;
 b=iyDoFK5Fqv4+mMjPk1rfviS2aSrrgTJJme217/trpc2PivuZtugt8R0+H01Lf4OscE
 4AGGya94adu38DxwHDJmsBPnZv/hSxxNFrZg8R1h60+fufDMbg/kElTC36aKEBsz9Xw2
 1rX6ELf2EIp9aukcNxr1UZUoE1yu65sMae/DQW/goAGDngTUI4ZOrL1XYdNWWBD8Abcz
 Ptp0JFep8n5KiQefxnuADK9plHczZZXubz+nC8B3oJyk7U6ASqVc1RDigsaSPNYxiDo8
 kXngM1xwEoXmra5iphF95M8qrpxiGtMjGZ0MBb02pnxTp/QZpcHe3XPz4Q6KFnDCNlHh
 L0xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HG+Jj5aLWSzQxxzhDq7lYfn2XSZ1Scwtl7BQOvyxWdg=;
 b=iQDwiGVocC8Xj5qNdn195neu9byh28NPoYmWyAvQ3hHuSRLvjr/M+Qu+Hva0ZrFHNs
 MjiJ/AWQXWn7biSyn+4Tl3AFGsKIzmfkEnQPG22MHMqZlz/GN0+zEzcUBMn9QJKMTsqp
 8i+UYa7uVPYki747jMf1i6gOxnV4Ix4PdkYbOeYVE7zMQPPA7/4QkkY34QiELheRDwQX
 vgYEFuVj3X8AUNctgaxa3ltzpqPk++uV9SIIVu7/lkdSjY25keuo3dHQTnZL8PQHa2Kw
 OuEfJo7yvndQ7QTxpwAFCHs+gI59JYCVClQ9GHy5ANFck69odhgwv0vgIZv85N6HKGhP
 MYgg==
X-Gm-Message-State: APjAAAXA9EwvrLNuQfgD0yYj1/AsY8w85URCHxSYkcRlXnPqATU5KCQz
 v0F2PZAlghhdI5ExeQSTyJhDBvc3E9dbr09FNAlliWnzizQ=
X-Google-Smtp-Source: APXvYqwH8mDirGvZFSQ++GGm3boVzKdaAPryfUMMKcxHOo7RgZUTNJsvQR5zKXzNZVh8HStluVu0VXpWSud2ZPpNp04=
X-Received: by 2002:a2e:994:: with SMTP id 142mr11048542ljj.130.1560285134666; 
 Tue, 11 Jun 2019 13:32:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190611063333.48501-1-Anson.Huang@nxp.com>
 <20190611063333.48501-2-Anson.Huang@nxp.com>
In-Reply-To: <20190611063333.48501-2-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 11 Jun 2019 17:32:13 -0300
Message-ID: <CAOMZO5BCuBKHs1jXkm3qFD84_xcB=0NSwE3SLJHx9kq4Stbd_A@mail.gmail.com>
Subject: Re: [PATCH 2/3] rtc: imx-sc: Make compatible string more generic
To: Yongcai Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_133217_321954_497EF6A8 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, alexandre.belloni@bootlin.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <Linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Dong Aisheng <aisheng.dong@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Tue, Jun 11, 2019 at 3:31 AM <Anson.Huang@nxp.com> wrote:
>
> From: Anson Huang <Anson.Huang@nxp.com>
>
> i.MX system controller RTC driver can support all i.MX SoCs
> with system controller inside, this patch makes the compatible
> string more generic to support other i.MX SoCs with system
> controller inside, such as i.MX8QM etc..
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/rtc/rtc-imx-sc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/rtc/rtc-imx-sc.c b/drivers/rtc/rtc-imx-sc.c
> index c933045..38ef3ca 100644
> --- a/drivers/rtc/rtc-imx-sc.c
> +++ b/drivers/rtc/rtc-imx-sc.c
> @@ -178,7 +178,7 @@ static int imx_sc_rtc_probe(struct platform_device *pdev)
>  }
>
>  static const struct of_device_id imx_sc_dt_ids[] = {
> -       { .compatible = "fsl,imx8qxp-sc-rtc", },
> +       { .compatible = "fsl,imx-sc-rtc", },

What is wrong with the current compatible string?

If you want to support i.MX8QM just add in its dtsi:

compatible = "fsl,imx8qm-sc-rtc", "fsl,imx8qxp-sc-rtc"

and add a dt-bindings entry for "fsl,imx8qm-sc-rtc"

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
