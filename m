Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C266A6A86
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 15:55:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYQcHcrhg9dqIpgXZv67C+4xgOCxKRBSV97uGpgyEf0=; b=p0rfbKNMI47gcw
	Gv541JtHjeaNMB2Tso0dVnclIOIJ+bjnl7NmO7awezgkbS1QMzft/ghfFxhLJgxNDi1WbkKFotOsA
	Qy2sPoKFMEf3qZEoYqRWMGQ2OUeqwKmkFm1msEeJwxRmtJWNjlaBrm1/5VMCU5W2Nh19RgdS5Kqln
	utkTLz4yEsx6yIjcdJX5FYUD1wlqhdNRluvG9B2DXO4TQfDgjH8PFnVbdv1Ls7oUVBbVYTLIK6S7w
	nzoN14hpaOnXylw9l6VYWZ0U4HIBNg++8zKDLidVyymB8sJlq0K7ueX1B5JoH85vllwNJY8CNOHr1
	6ucMik2D6nXaZcphtYSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59Hh-0006vU-ND; Tue, 03 Sep 2019 13:55:49 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59HU-0006vB-Sw
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 13:55:38 +0000
Received: by mail-qk1-f195.google.com with SMTP id x134so5851774qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 06:55:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W4djG6ZZe2G2gdy6fVGBa6oBSzsWeFZIoEuiRWqzUmw=;
 b=XCuovjY+nf9yk0OOuAx+bH+MfHuANGXqnikfx9M/dghQTbzIfL4vcPRV0qyY3rCd3i
 rl2+K5mLO+bGKTL42CQ7tap9RqACjwOhQM7Rs050KSFRyKkVwBjjNzi4cg2eeuzF6S0S
 0qxqDIUkZCtKgGCqzCTLUsDGgs9fII296XhoC5V+ipESDVRg/MqHWgb/p9DTeXsDiF9e
 zJfxkm0uCH09qVKUGg7VFQ4ongEu4OFZvqfgewFaColAVc5d9UxgeDml0VyDLTt95lYN
 aKrA13XDdAlJBoyTvDgP5w/xBHTecDqZvFMo3ZHHcWZ22EbsNhiCJYnzEnfjy1gHVvo+
 TPYQ==
X-Gm-Message-State: APjAAAWV9W/t7mUfUFQTnqWpVJSnShd/qIqMOuRhtIslgMSKRe2QARoy
 /QHiOkO/twQAr3MW3KrhKuGYwhvF8MwwEgUuwxo=
X-Google-Smtp-Source: APXvYqw3Wt+AX8S7d8jl6wURQWky6ECg/mMathv3FyXlrtUiM0WRmgwq1DDlinWPFKmXIChVp0x0zHSGiXhF3Dzbs6s=
X-Received: by 2002:a37:4051:: with SMTP id n78mr32602455qka.138.1567518936107; 
 Tue, 03 Sep 2019 06:55:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190823123643.18799-1-geert+renesas@glider.be>
 <20190823123643.18799-6-geert+renesas@glider.be>
In-Reply-To: <20190823123643.18799-6-geert+renesas@glider.be>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 15:55:20 +0200
Message-ID: <CAK8P3a3_6fDdQRHq63NmZK0zPehTF82X+eQ3K6g6M0WzkXiHCg@mail.gmail.com>
Subject: Re: [PULL 5/5] Renesas DT binding updates for v5.4 (take two)
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_065536_938394_CDED8A5E 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 2:37 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> The following changes since commit 8cb7ec14188649cf2151464050413e2814fd7cf1:
>
>   dt-bindings: can: rcar_can: Complete documentation for RZ/G2[EM] (2019-07-29 15:36:39 +0200)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-dt-bindings-for-v5.4-tag2
>
> for you to fetch changes up to 7ac2d56f783d6d546e89a4e44fb46532667aa7a5:
>
>   dt-bindings: can: rcar_can: document r8a77470 support (2019-08-23 14:25:05 +0200)
>
> ----------------------------------------------------------------
> Renesas DT binding updates for v5.4 (take two)
>
>   - Renesas DT binding doc filename cleanups,
>   - R-Car Gen3 and RZ/G1 updates for the R-Car CAN and CANFD DT
>     bindings.

Pulled into arm/dt, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
