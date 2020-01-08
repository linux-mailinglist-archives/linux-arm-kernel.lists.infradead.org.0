Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373A31339E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 05:02:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sS6Zk9DmPCwEUf7tvOJhZjtbiFGD52jPSPiowH2nQI=; b=aLTkvZ66hszwEf
	Hdvq+WlrAKU+DNLRJemBqqsCt07ffRx8NWqK03lLUO9zdPc90fj5OqKPaNjfGL5sdyGcXT0AKSDs5
	gitc55nGDY6yscoOSmzu6/VaTn8kBp3H1wja4VTEMTju3vPNYfkLApG2cgVqWgQuF4vHdjWaFx2lj
	ubSLj/qkOWt7vvMGWaEuHhcF52otQyvRF+CL4I+lNsCWjmwoSWqPEFh1adasVsTQWpfdDXNUAR/iv
	Hov0hjUSk79axJzljVaSWaQwI7rppGfdZ3W7Mj3027EIYNdzQMuiZeKuc/qDFCgdexMC+mrSqBb1r
	ngKHCkJOyC9tPILDex9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip2Xd-0001y6-Ny; Wed, 08 Jan 2020 04:01:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip2XX-0001xm-1v
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 04:01:52 +0000
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 406F92146E
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  8 Jan 2020 04:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578456110;
 bh=blXanwhUKF/O2mPP2xvjP8uzPc5gl9VfnG9EBi9qDXQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=dcHDEN8veVYHLRYJi2IBrEvwMLkxTqRWqWz6sGwXBCeFcgud09yLVa7PXYezDejho
 mLSZ+x16Mo53nyCz5TfVBieWyZNPB0NEVu7g41Z1q+U8gJtxrV5e/qnCd3fEskKHUs
 Hrsss6X++WY8JopgzjIQ5xROrGWPBcTnnIBuAx8E=
Received: by mail-qt1-f181.google.com with SMTP id w30so520940qtd.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 20:01:50 -0800 (PST)
X-Gm-Message-State: APjAAAVutewPz3l6KJbmmd6f79a07QAIHUXva8P1gbzSceLFMucbHi6C
 oeXi4fDBNTizJbvpBe2CXRqW1FwnMZWxBg2Dcw==
X-Google-Smtp-Source: APXvYqwFJb8dLgGhcgHBSB4r4ovkIRZEnEUzKfJVSxsskY0an7OzKIiPwZU0NjgU+N9o+MZWSlzKwX9Ic9GmEnhELRI=
X-Received: by 2002:ac8:1415:: with SMTP id k21mr1942901qtj.300.1578456109415; 
 Tue, 07 Jan 2020 20:01:49 -0800 (PST)
MIME-Version: 1.0
References: <1576845281-32675-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576845281-32675-2-git-send-email-qiangqing.zhang@nxp.com>
In-Reply-To: <1576845281-32675-2-git-send-email-qiangqing.zhang@nxp.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 7 Jan 2020 22:01:38 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+ZJ0asAxaPFgiuHKC2o6UP_5Mht=EascFVpJ6AUoKPvA@mail.gmail.com>
Message-ID: <CAL_Jsq+ZJ0asAxaPFgiuHKC2o6UP_5Mht=EascFVpJ6AUoKPvA@mail.gmail.com>
Subject: Re: [PATCH V4 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
To: Joakim Zhang <qiangqing.zhang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_200151_119013_23AF2A0E 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Fugang Duan <fugang.duan@nxp.com>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 6:38 AM Joakim Zhang <qiangqing.zhang@nxp.com> wrote:
>
> This patch adds the DT bindings for the NXP INTMUX interrupt multiplexer
> for i.MX8 family SoCs.

4 versions in 2 days? Don't do that. Give reviewers some time.

Convert this to DT schema please. And make sure to send to DT list if
you want it reviewed. You only sent v1 to the list.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
