Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8991ABEDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LlGjcFJ8dNAPpecI8fWGfTVGgFUxnn95xncj5u+UKKk=; b=fE/CLGkLQi+gPf
	upbVFlxCyr+QHHKZthRojztNCYfkJyIT9/w2+rlzaa3bLq3Ty0uGBGK6dppgVIYh5dArprkJl3uOm
	fz3IjgBsdfdxLGyt46bJT68eZlLhJFcip5uCZXr33B9esunDJCbWoh8WC/znRZbDzANw1/i5Of1YP
	UE5xyGIGXaFWq1QH3Id3Uy8KXBuovI4QjPJstv/b+rSDlUnNB59efqUq0RNWP02ScqinuQYFOF79Z
	0aT7We4nhxyYKjjJOJGkSlskAEONiQbO+4GyGaFZlzMeSV4Xr0kgJ/JGutuHweK67zk9MNj1SjNsC
	6szzkaJU6qrp0LtJNRtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP2QS-0000we-Tp; Thu, 16 Apr 2020 11:11:20 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP2QJ-0000vs-Vi
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 11:11:13 +0000
Received: by mail-lj1-x243.google.com with SMTP id y4so7346459ljn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 04:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DagzPuCV35qt33fGvPGLDoiS08sYzbb9yy87y7EAnZ0=;
 b=yet1Q0fX4nxzU8FeSJeMbsR/4M4ZR8bSZgTYXnm3b33HHgDAoFiGGbEVV4TxE3vhsD
 /c2AJ4eKsLOLbAMS8meVpOJBnXQX4HaYBk/E4mO/kE7Qx15xwDrn79DqsnaQKBdPX72/
 9AC/Nlvz6XGq4HUe2sfq8jP1MF1spNg/BW1C10iPp8ZwR/qYFHcIp6w8D37lenRxH3+d
 QMT/GjndGpsyFcpVXgKMwHXurfH4Ri52ptjqKfjhQDs6tHzXng01V2kKubCYftC5vUbE
 CodkmrdPVAcWtHmXRqehK2nzSMW+0LQSwyvkE09yxCKcEZThbjK0bRaMhUhgJU4enXbO
 pl5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DagzPuCV35qt33fGvPGLDoiS08sYzbb9yy87y7EAnZ0=;
 b=b6fD/W6rIlE5OkGSFOWkm0vWiY0jBkv01/aLcIHFPHwNyCp1pyF8741kuLQlk/Uq2t
 wCZWUUlc9R05tb2QqIoNEPEStDD8ERJBLmmAaPrhtHxggvvTxkCHBrICf8G5zg4l4ELb
 imiW4MON1Tb92fQa4yjTf9OELPB7CxuyB7/8uPDNSmXIv4E7ISuUO40OQjmj4ouKEsUC
 7n363oEBL9kpYGt+JCH6MC/cRC1WTNO7u4J8ikSim3C0IzcUKIvEwvaggppaPoYUevV1
 ZOnLMC9Beg9JIAcGsa4eXbv1arWU6lwpr6xdpoKceR1z//znJJ+tpduhzRlfIclWPLwK
 nFaw==
X-Gm-Message-State: AGi0PuYh49tGr8+lA9RhcPspOekZVG4E7yV4/cnlQzNG9ZcrbIsWRcQ1
 S3E38oiNtIA0J78XYySG+I0gYL5rXWHBwB/FRILJtQ79
X-Google-Smtp-Source: APiQypIe+xRjUiPUhs+Ll7NpUdbW/Z87i6LFhQq3LlYlzagCdixZd6a64fsv5yfIf2axg5JsvTgNsUrB0uS0JAF3Xd4=
X-Received: by 2002:a2e:9605:: with SMTP id v5mr5942226ljh.258.1587035469976; 
 Thu, 16 Apr 2020 04:11:09 -0700 (PDT)
MIME-Version: 1.0
References: <1586757913-5438-1-git-send-email-amittomer25@gmail.com>
In-Reply-To: <1586757913-5438-1-git-send-email-amittomer25@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 13:10:59 +0200
Message-ID: <CACRpkda8bZQnQhNbwXPrf-8mZh2NhsPx3u1Gcpmi8KjUEd-17w@mail.gmail.com>
Subject: Re: [PATCH v1] pinctrl: actions: fix function group name for
 i2c0_group
To: Amit Singh Tomar <amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_041112_014018_220DB8AE 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Matheus Castello <matheus@castello.eng.br>,
 Andre Przywara <andre.przywara@arm.com>, linux-actions@lists.infradead.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 8:05 AM Amit Singh Tomar <amittomer25@gmail.com> wrote:

> After commit 6f87359e8bca ("pinctrl: actions: Fix functions groups names
> for S700 SoC") following error has been observed while booting Linux on
> Cubieboard7-lite(based on S700 SoC).
>
> [    1.206245] pinctrl-s700 e01b0000.pinctrl: invalid group "i2c0_mfp" for function "i2c0"
>
> This commit fixes it by using correct name for i2c0_group.
>
> Fixes: 6f87359e8bca ("pinctrl: actions: Fix functions groups names for S700 SoC")
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>

Patch applied with Mani's ACK.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
