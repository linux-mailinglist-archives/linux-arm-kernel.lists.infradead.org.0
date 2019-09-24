Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4F0BD220
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 20:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3u5wAJ3xtmfJDWGweQB/Lglx/SALuiES8ZyXeBXI9hU=; b=D5tIosfR1MfU4c
	OnFUIwXQgRr/6FRyJGSfUyELHP6EG9dvsGwZu9BXvMVgZWFEFlCOUKpvFjV9U3CQGFrWLtYU1IDsA
	POiNG+2A/H6Qngeuizy7hQEzGuIrtar7a9s5aFyAPhu/3AdD+O4kiEP/Z2JdwPrT01acbxRp16kLu
	OfOrpUMSj0MHB5QNeE2HvaTNxpnV/arOlBIhtIVQ3b8p0B4tNqHRLm5NKLKzYzWPzqIoYuYMx+Wxg
	DwfHHb78nf6xLcUuVNgBPxSi2XS/aTARG3rXfrNTJoBaQPWDMt4KNbtbHb17TeVAoAj+AJJRp2Efi
	pRjysNQJjQRTG4FKpsYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCpwh-0003nB-JT; Tue, 24 Sep 2019 18:53:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCpwT-0003mm-Jk
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 18:53:43 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB0BF217D9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 18:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569351221;
 bh=HMiXmV2aUG4Tvw658BNY0FPEirpb/JTORRKcPcXKIZk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=onjfFMrxzG2cEGnNFTjw8WdtVtC9c5fpOcii/eR04dtD+9f6tfWPbW6lYqo5hSuhf
 mYvoTzOPP/UtJZAgC2NnIzEmbkM7s9knHn+ZWJ5HNX7fL/a4rqc+Tn5fS+uR1SlmPQ
 BbI0yUrSbxlSy/wblyCrr0D9OKC5HurWaLvozdwE=
Received: by mail-qt1-f181.google.com with SMTP id c3so3420775qtv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 11:53:40 -0700 (PDT)
X-Gm-Message-State: APjAAAVokop9qXmHi1kk/3iE8z7WCpwvmjz7Q3G7p589gbvKqttqQ2GC
 7Sj/S+axuMfswclHKrKWAn9qSk2zAom2QGKH0Q==
X-Google-Smtp-Source: APXvYqyJbcKGU/WuI+VqqQqNQyegr27nfbYT7yNSKP+o30RTEmhgidLW2fbwPtWzi4ErOmeKpHZ8UG6w5pH23aMZ87s=
X-Received: by 2002:a0c:fa49:: with SMTP id k9mr3911313qvo.72.1569351220051;
 Tue, 24 Sep 2019 11:53:40 -0700 (PDT)
MIME-Version: 1.0
References: <1569248002-2485-1-git-send-email-laurentiu.palcu@nxp.com>
 <1569248002-2485-5-git-send-email-laurentiu.palcu@nxp.com>
In-Reply-To: <1569248002-2485-5-git-send-email-laurentiu.palcu@nxp.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 24 Sep 2019 13:53:28 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK1egTpkqsgVUMUiYzKvVJ=nWtJu+OeujJotRCD9ADsnw@mail.gmail.com>
Message-ID: <CAL_JsqK1egTpkqsgVUMUiYzKvVJ=nWtJu+OeujJotRCD9ADsnw@mail.gmail.com>
Subject: Re: [PATCH 4/5] dt-bindings: display: imx: add bindings for DCSS
To: Laurentiu Palcu <laurentiu.palcu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_115341_679813_9A7B6B9B 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 9:14 AM Laurentiu Palcu <laurentiu.palcu@nxp.com> wrote:
>
> Add bindings for iMX8MQ Display Controller Subsystem.
>
> Signed-off-by: Laurentiu Palcu <laurentiu.palcu@nxp.com>
> ---
>  .../bindings/display/imx/nxp,imx8mq-dcss.yaml      | 86 ++++++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/nxp,imx8mq-dcss.yaml

Fails to build with 'make dt_binding_check':

https://patchwork.ozlabs.org/patch/1166073/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
