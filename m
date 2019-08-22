Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A64E998A7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 06:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyPTEMFUN1kCB71VqOI7hi4ijcd1T/20oi6uUzqDe+M=; b=saqkw8tjE64n27
	HPuh7t8Kcoi2WT/5wDiTu4ZJrokW3phC6vrY9q5kABRHauBJzlj2VrbFjV7rU/0Y9E8Pe/PvPfyXD
	DufJxLl6gMznexijBMK9f5kFPmndxUssuNpUJnThfpnsrZi5dUNKf+AOeQqK2oKssYYdMFDECBWVN
	G5Z0qysrO9ycJk0n/nNblOv2txZp3YuP4PfzC0xVbp92wEr2P38ggWnmYdrL+guu+6/0JnrSFNjbF
	cga0xyKpl6x/xP7SdwkGmLzH6Gg0fFx7Ogh75ZWW+lHCGbdjOEYuAGL/6Pgrv7Aa5h9mudkTpLGFo
	PSInL+snzovUpo+kNuOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0exB-00042y-NW; Thu, 22 Aug 2019 04:44:05 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ex5-00042Y-68
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 04:44:00 +0000
Received: by mail-qk1-x741.google.com with SMTP id m10so4012141qkk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 21:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OJYGyBg/ceLSDjtApXeg+QYPHZlKNwzKjUa+6OSFeUo=;
 b=D1q9lH02crG0hVsSBHPDz4Ty4HHcz8uyhNg9zQlxODrOvuYxeTHbGEOpCeARUKNIc8
 CsKSL/M/Vp4b0TkraUwdiA0FHEyNiShpWbpIh6c/sY45K/P791GuVCHgLILJz4fPi1rH
 LL/0LmTxDTPyzUpomzWrXr+nNoZOwBRCJHWNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OJYGyBg/ceLSDjtApXeg+QYPHZlKNwzKjUa+6OSFeUo=;
 b=g3wKv+VmdETk+huN+XCSst9pqzjqAWEY4pX0HrrXnQBbvJ6KC5zknEt+FL4P9lpkEg
 OJE+lhjvJM2L+wNt3WnxFEHMhfOV5QP8DIy7wHBDSrotnevbAHVELI5P6GMdytT+4Ybj
 6SVDFGq2Gkhf8+/xp6EgUgwgOaeAsPblcYKQs3unZLCPe8d5mfVP06TPUvQ84dLbW3cN
 JIeNEUiNNNhOCTV/dfQ9SRELsKkodP0AP3Vpe6TzLBGubosTkLtp+gSlV2Nh078/7Z5Z
 7a5mliQpqDLwG/6CWqIf86D/dPaOcVBgX5J3jXgZZeYBjecFpbxux8Il5G+Gg+IiLNxS
 MKug==
X-Gm-Message-State: APjAAAW1z5wByhFoLnLi4edvUdKJp0FhMLrq2KmGekcRfU6+B6kWiJt1
 6Kcn/u/Wk2T+5lKebXnQ7pNBu/ZD7iP5QyGUqsA=
X-Google-Smtp-Source: APXvYqw7+6RHrrapRSIiCA1W4LX4FEsS39J4H0GHx8pMtsjmQmcpotn5m7W2/GkBsc1gILGchs2Kr22CmwLnNjW//2Y=
X-Received: by 2002:a37:649:: with SMTP id 70mr34466573qkg.208.1566449033127; 
 Wed, 21 Aug 2019 21:43:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190821055530.8720-1-joel@jms.id.au>
 <20190821055530.8720-8-joel@jms.id.au>
 <faf79f9d-baa1-4c8c-a35b-c5d97ad6df8b@www.fastmail.com>
In-Reply-To: <faf79f9d-baa1-4c8c-a35b-c5d97ad6df8b@www.fastmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 22 Aug 2019 04:43:41 +0000
Message-ID: <CACPK8Xe=mq_Zuw6vsFtb=42ZodbHcizX9QwUoRzY0cDdoWr-Fw@mail.gmail.com>
Subject: Re: [PATCH 7/7] ARM: configs: aspeed_g5: Enable AST2600
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_214359_325537_6AC9BED4 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Arnd Bergmann <arnd@arndb.de>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019 at 02:07, Andrew Jeffery <andrew@aj.id.au> wrote:
> > +CONFIG_MMC=y
> > +CONFIG_MMC_SDHCI=y
> > +CONFIG_MMC_SDHCI_PLTFM=y
> > +CONFIG_MMC_SDHCI_OF_ASPEED=y
>
> The patches haven't yet been applied to the MMC tree, maybe we should
> add this later?

When enabling drivers in the same merge window as they go into the
tree we will always be in this situation.

If the driver doesn't make it in this merge window, or first has has
changes, the worst that will happen is the kconfig name changes and I
need to update it later. I think we're safe to include it as-is.

Thanks for the review.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
