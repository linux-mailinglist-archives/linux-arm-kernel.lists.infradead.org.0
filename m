Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A38011A323C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 12:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzuaAMp3CWs19m0dXkdZbpVndhxCCu5cE2zmJEhNbrw=; b=a1yRKXMk7l4oXP
	LZr7iZdVQAMzI657SqyBs0j4HyE16a2jI4zODoM/o2Ww+6LLk3UkBb9mOeUdoEcwUA55XCR2rWyxR
	6JQa/585cfTsTtF08dHKNq/B00XOVosmppCArnE040NI6x2JRPjJIFC+9I34QyJ77ctVf7LxCieWa
	XxBV6GfGvvKCB0eHuPdL475MN56bW18OsSx4rpFTgviDSzuF7Ak8LBO+v5c9+vSbjlpWG4BcGpRO1
	Mo6pdVrRftwpZiTwxbIG3yiiKawGGnAFRXlruHcyH3oUwm1uiCjnMZ4dwTLPl38ob0lfiMRVvf8ZK
	71RU9Wnk+iRHGWOy+ITg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMU57-0000Os-1M; Thu, 09 Apr 2020 10:06:45 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMU4z-0000OO-IH; Thu, 09 Apr 2020 10:06:38 +0000
Received: by mail-ot1-x343.google.com with SMTP id a49so9873874otc.11;
 Thu, 09 Apr 2020 03:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c5NC/aoEyzH+2mxoFZv386bE5G3S+Vy1WnLbB1xBCzU=;
 b=DRLAoSrWnVR2JhbFDdUn7whtg1Q3SttneTHHvjilPfIs8/gR0S6UhKgbBm+wSjaDXe
 ShT6Cx1vFJZiEjrWguDMkygL3Khm3gDmIgsUjgaBdQd9Cvohr4/qvRtc0k1SEPbboVhO
 Csi6gsh0Oew7Qq9yG/G++eDphcTEmrdJldfUU950de45wF1FOyWfNfo1+uZeiOxCsJlr
 iF6z03B0esddhtBTEbwZN/MzWC56BoBvmLz5FO+3q+UMeijUJ8esCemYTdUVHgRjeTi7
 WstkEtIifJGpDc+HrvQoVt+hznZg6M1Qb0XYdQJeD2zrGNR1mZ6+D3rulE5u1E6OESWz
 LXJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c5NC/aoEyzH+2mxoFZv386bE5G3S+Vy1WnLbB1xBCzU=;
 b=WHB6r8wA/W0i/qFsUjdJSPHH7NrgiNdi8eidpMoOhobXYGvH3oRvRuQxF6xzVM6iEY
 A1o0Yort6iTvx0PKOhef+WAgHHVkddJoWiB6EMlUsE50haaTio/p5H4bBGzh9VXuzM8L
 d4My0bDGNnu9xuzHR/AYhKueqL3hEGVXBRnNwCDKGOFYt9ACnZGKC+VZrS5E2a44QJ0s
 NOlgnXK3ZrWO9PgBG/GBSqynBgwlvQIg8LIpNibLMrSf6uHI0Vvfjo27IBN+lpgt7bVz
 TxyZAvVQ1Y6A8J6kDv/IIkw/fpHDrCBRg3rnRzDEEXw0lRhp+YAgOX2iVc5c9rzXV+rK
 8uJQ==
X-Gm-Message-State: AGi0PuYsG6SE1Coqm/q/DGaZOCypCMtfbz38cMh7Jz+/drOyeho69s+r
 rg8k2gx01DGBmwNO0YtWZRZ12EpnlPhIC0c952o=
X-Google-Smtp-Source: APiQypLSDjhC54tJv9NztavckA8J0z5rxJ5yJW8bbn29fHSowO5tivlkjtg4rktwsC+zSD8PcJXTSQS89WNUMyK0mHo=
X-Received: by 2002:a9d:895:: with SMTP id 21mr8758143otf.365.1586426796800;
 Thu, 09 Apr 2020 03:06:36 -0700 (PDT)
MIME-Version: 1.0
References: <1586360280-10956-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200408233008.GA150200@google.com>
In-Reply-To: <20200408233008.GA150200@google.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 9 Apr 2020 11:06:10 +0100
Message-ID: <CA+V-a8v6=9dmgtvP+vWo+isZXeo45ARDpXZ2YKqn3reMVw3Xiw@mail.gmail.com>
Subject: Re: [PATCH v7 2/8] PCI: rcar: Move shareable code to a common file
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_030637_604736_6CB3FA0A 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>, Jingoo Han <jingoohan1@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

Thank you for the review.

On Thu, Apr 9, 2020 at 12:30 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Wed, Apr 08, 2020 at 04:37:54PM +0100, Lad Prabhakar wrote:
> > This patch moves sharable code to common file pcie-rcar.c and the #defines
> > to pcie-rcar.h so that the common code can be reused with endpoint driver.
> > There are no functional changes with this patch for the host controller
> > driver.
>
> s/This patch moves/Move/
> s/sharable/shareable/

My bad shall replace it.

Cheers,
--Prabhakar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
