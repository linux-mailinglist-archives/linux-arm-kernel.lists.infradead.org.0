Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992181F51A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cfJ4IjTP83S/O/QZvi6X7AnyKLUzGz9e59mYHECdVE=; b=R6OR8ALVixPYgr
	ygyZ8hPOj5INRAcSd+RwYFYWTdWOpbfKwLVCTa3sPLqrTwUWRqa/GbHFZ8OrIgax13Z8rueHxm+i2
	g4Xnwd1S5FWnEPJDz8Znmx233X/9Xf6QR/PkZ7VJ16RIHBP0zCUthGl8C6MHohWVkNBg3sh8MAdpd
	Q8Vcle7xAmwFN5wYJchsm4iQyMdsBu+89OAdT+EB6iwUiIAdgGOW3PlHTaX1fgqXbGm4p1R+JuDtU
	G3ATjl3QLcknrrofOCeBAvFK2+Te9iDJOgNUTWa4YZAeoyVdM1+UGMGRalxIEJeP5fDLThiVcikv0
	4wyVHJq+6MoXPrWmVyCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixSb-0002bG-Nq; Wed, 10 Jun 2020 09:55:53 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixST-0002al-4X
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:55:46 +0000
Received: by mail-lf1-x12d.google.com with SMTP id w15so1066383lfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IyM/A+avhJkkQHOLp+OvMDI3GG+kxptVRDbu3u0LPow=;
 b=KZ3GCV4oQ8GoZhjx2pBRStzJRFJC/aeLvAH56Ms+z3A6pyxZAqr26DULM6tE604ET4
 Neju+GKK0TxS2BEBiYqrK8ZAAy43gpWB8HQ971utdGJQuFszPl9QZgYYUU0sHCWRnhbd
 6GIHn8MU1axUgQbHaAfMzacFuagYyooDoAmkS8bnScg9G7g+StfE3LYW19Uxic9LK6On
 7FiJDSQEmMhNB5t1sCQgPq+qJ/bSCma6+45ICCeJpUzctEGgFrve+wbAlwsfoxQLe6yE
 B2GSy1pb47oGu2/e3pTl0eh75S/BCedvE9mxxYG9LjtQNOPinBsLstTJ4vPT9T8lwVVt
 vW3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IyM/A+avhJkkQHOLp+OvMDI3GG+kxptVRDbu3u0LPow=;
 b=mXt7+DZ9X3WLU0/DMXC4f3DN/opA6Lj5/4XVK2+Ms/bstmiZGarE/mCjNx24wWhCyd
 DlBJirEIrD97SZhB90GqSbC9R4r8W85lu++rsU951R36aYMj+L1qzMu0BxWnNiG/R5NL
 bYNVNJotMZPsf52fmKI5KxDcxk7kn78jVYhgPz9gZMEJqdFJ56RR79AgveRsf/GktmHp
 F/TvJsVYdnRH/TcntgqWhQcNbQQQA8312GOSVek2VP4cI/OfTOwxODgbVqlBMZq38rky
 uLkr4FbqvTO1E8U/IMv/2hHKnn9vsn9cHYK75xLSZgR03JaHH6TKBHCNxocYyflxf5zf
 HnQA==
X-Gm-Message-State: AOAM533RkZkx1H94Yu4AX6YS04Rj93jm+lnNhaG2usVC5ejZ9uUKxoJb
 +pDn6qSHiJD+5cBKCGFSGCI9n9vckr5m1zVmTM5jrQ==
X-Google-Smtp-Source: ABdhPJw06BW9DC3WVHZ8QRBMneGYcET56eTT8DIAMhEVt8P5RXWMTPAIOnCaPj54gMD05QlYQar3OpWGUm5iy7QPfE0=
X-Received: by 2002:ac2:5a07:: with SMTP id q7mr1267243lfn.77.1591782943164;
 Wed, 10 Jun 2020 02:55:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
 <20200605224403.181015-7-sebastian.reichel@collabora.com>
In-Reply-To: <20200605224403.181015-7-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 10 Jun 2020 11:55:32 +0200
Message-ID: <CACRpkdZchnn8EG6HOo_QD=veHJzb_Vy5F2Ma0cEOZUjcZwHPYg@mail.gmail.com>
Subject: Re: [PATCHv2 6/6] power: supply: gpio-charger: drop legacy GPIO
 support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_025545_173204_591E31DE 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 6, 2020 at 12:44 AM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> All board files have been converted to use boardfile GPIO
> descriptor tables, so GPIO support can be removed from
> platform data.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Thanks so much for doing this!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
