Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F4859394
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 07:43:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BHI/cf2JsSxfb27TwKK325fLbniAK8e5lkm+8Bzuw7U=; b=c0vMJG3pht6DMw
	MZQQPlC2LND6wdWrobB75BlC4FjcJqROt4RZ9IRIRoy3eOejN4QJ7bm1ElRj/0b/onJwj0/KsLyT0
	Ys9q0anZhbL/gr8gSZFDPrIWnapfeutrIRqKmaePL3J+mC4tLFFp6DRE8ZLVYqSvU2znNMDHyTOa5
	Gpwv/bl1an2zoy271hbnAqVgpYlywdSLOKM32IgjpUdeYKnOB3D87IhHlMxhg1V7RgMXsw2xHnB4Z
	ZG17hgKUoHO+zgD3dnN8hY6X3o0GnwTrL1bU1QnMhSiWFtEDLNvGabMegssi0aBCc0a4RIhxAOC0g
	rYuK9JBLyBls1FNyt5wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjf9-0001XA-3y; Fri, 28 Jun 2019 05:43:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjew-0001WP-6C
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 05:42:55 +0000
Received: by mail-wm1-x344.google.com with SMTP id v19so7692600wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 22:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WUmauarPYj2SQlusGyMDBTJmU8hMPlbsUq3l5nJNX88=;
 b=TDTzYlFnKgzjZQ9gI/SNj822C1vpURAvVYRfwCO6x+WFL/tArkz9HkDgem1AmYnkN8
 VkOc2wFbtDh/vBJJxiNcP+GdkZpfce+UmJ6f6jRmHr/kcx/Rf+wFodmSgMl1qD6qa4SS
 KfjhEScvVvScxqLgPnnfnMgp+1muYMviMKyoY/YtdYrTiso0lZQU5FRsJHhE8UntwGQl
 aT6uTm7KoIY09VX4nVRnOC1u09cp0uwWIeJH38WL3ZBIS0zIuDXc4/spAKm2EkmoQHZx
 62c7yUbNJVk2C5XNjnyYTOnuukHTrvVwUGft7ACLwKsZe+smc//GrsoTSQ/U8kIfjX5R
 ZSSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WUmauarPYj2SQlusGyMDBTJmU8hMPlbsUq3l5nJNX88=;
 b=FtZFqNo1hv5CdzD47K7Pe3bLVWSih9uFkc2Sh5/WAIH2eEyFTb0GVTe7PO6LV2s0RO
 FAc2ou7HG/wHG9wGkQPy7GKHPWub//fK00ipIAGOvryHCfrA9p65uMY9br4+q/iY8LWO
 WL1by6EtJF3NaVFmYD2gT6GgfJy6JxBbOCEghzY73GVeSMoEZUguMBpqKB8PPrtvPDJC
 rFOOrk4TTgsqzEo8vMkghqg9KBG76aXo67NXhpfVnrtgICuyWVouLIADIkPmrtwxwZqH
 NuyNu+vrgCr3xxul6qZxyNS8zxbZ9LPQ5DANQk7QmBBikExUagvuyloRgdNWdNbxLRYT
 6KNQ==
X-Gm-Message-State: APjAAAUMooikB26TBm7u+ZRVhjgCi8LKdRNZsf5mxW6zp4EWY0RRHcBd
 JzzsemJbmdVAmbvB32nIoHeAGrRDwQNvC5vtMnA=
X-Google-Smtp-Source: APXvYqwAOqZmkppeFcMiIoFt4MysbFWIxUza8rc+k5ahTj8SHHHqKDGGqzwqY8kpvHG18Av+CAe4jlnYhZGZ4p0Z0Ng=
X-Received: by 2002:a7b:c247:: with SMTP id b7mr6041397wmj.13.1561700571802;
 Thu, 27 Jun 2019 22:42:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190628032544.8317-1-Anson.Huang@nxp.com>
In-Reply-To: <20190628032544.8317-1-Anson.Huang@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 28 Jun 2019 08:42:40 +0300
Message-ID: <CAEnQRZDgbgmKXaLNVoe0N5e_voGkC45gqp0bUjPJsSh4CXOc+w@mail.gmail.com>
Subject: Re: [PATCH V2] soc: imx-scu: Add SoC UID(unique identifier) support
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_224254_234817_21E64CDB 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <Linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 6:36 AM <Anson.Huang@nxp.com> wrote:
>
> From: Anson Huang <Anson.Huang@nxp.com>
>
> Add i.MX SCU SoC's UID(unique identifier) support, user
> can read it from sysfs:
>
> root@imx8qxpmek:~# cat /sys/devices/soc0/soc_uid
> 7B64280B57AC1898
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
