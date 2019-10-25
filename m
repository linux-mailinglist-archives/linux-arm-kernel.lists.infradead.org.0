Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C88E4876
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LQa+GBPFJqY1/WiZCFw1i55WafQTkxeTgrKuf/1Rdo=; b=twJ6WDdsKiqBKr
	xSItPDDrNPg1BMUzDrFPiYDpUDVnDOExtGbmDaE0zAoqIJD8O5F+IrRfBl0pEaS3h1VnB0o51r/Fw
	UjVdNR9i+yRLMY7hBx5sUM9eRRcsHOZVXTjWlLaQkVT+E/RBEHpCDhMx35fMPD7VaWiYA46ZTC1zJ
	Lfde68PyZAQfJzR8f4w+6FPJ0L7BsmOsG/0T4+itNQkRCpc7wB1MNlrTShWZFKUQ0zU/rJnCfpggn
	tXhmL1wVQ9+/6h6nPSVDH1iVrXkln+p8avVWsxKdllPTw0yicEiK1wTpQpYoXPwb/Z0nVn9gnubXm
	g6OJqwev0YnGt7VCs6CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwh7-0008P6-BZ; Fri, 25 Oct 2019 10:19:45 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwgw-0008OQ-Af
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 10:19:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id g7so1483890wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 03:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qc/ztTJAKK4J0aU63ev+egDW8U3y1aNoFPLB9AwTm3w=;
 b=UC5Pa7cScT/WFAguuRUDz2M78p0dmWLmOfW1dC8/N7SIGs6qM3l5vSKSd/qfuJDCfm
 DZwVsSY1fqEVzYQfsuc/06YzjJ6KBZXIEdBoijdF+h46xR42SxcAM4CcHb2rlrT7iB2N
 /A1o81hFIu1nrqjC4OHrfKOeSB3dv/bPrsThXc9ohRHI9gxrySJGDUjvFEYD6dbxV7nl
 rdogqwWXlJycW66GsbbwV946pLpHgK22+xzHaGaoslGwEuTUfu9dqmA+MLl0lwE/YJ7C
 K87GxrrOU/3X1tV1P5zdwaz8cedB6jbV9Y0PvNqFdTYYEHSXrzI8UVB3bWSyf1i0iasq
 hDIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qc/ztTJAKK4J0aU63ev+egDW8U3y1aNoFPLB9AwTm3w=;
 b=kPRgStPWyx8dDo03zwzgNSnQTOnsVhovIJr7RxVcqzTCDr0/U9F8M1qIS+nx6Wob1t
 VKTEE4C8EtHHvA3to6HZUQyLzqlN+DLGeVJh9cfK8+75sI3oCIo+01dAyTHVO/dYRbmH
 eqpdB8ZPclsuj9Db6ky4jDFJO/xSMrG1qdC1v2DyPjOLR9xTP/Q+233y7Is1TozUr63O
 wKpd9LRjrD+eD+T/SBJX2mxlWzP/9tWfitxxcRaeXuAiEJwf4VzqTs7BxkbeZODt/nzk
 n2GEsrOBW73K+XPMRyExekWNI4+q8hGNecknP3ngK11cG00k4V7HnDUJEEFW4msx4XWC
 bwnw==
X-Gm-Message-State: APjAAAV/lutoaYpsgnDSB6GJKbN04NVzXRNJGld1gLDsC41+Iabk+QZH
 ianknlE4p+jSOkAZOSeDKuHAuHPDwVKctcuXKD/Zew==
X-Google-Smtp-Source: APXvYqyOvakmk18SJSBfU3bQ15rT25r/fiIWuvLvo3ZtqL2B40sMEKutw7b2eeoZZa603ekAwfCYdoOC7dYdRddhwNA=
X-Received: by 2002:a05:600c:2214:: with SMTP id
 z20mr2880087wml.10.1571998772535; 
 Fri, 25 Oct 2019 03:19:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
 <20191024132345.5236-6-ard.biesheuvel@linaro.org>
 <20191024134123.GW5610@atomide.com>
 <CAKv+Gu_xTe8qmPab=_UE_buxaSzj2Kxtq+CPrm-cawAyg8MUzg@mail.gmail.com>
 <2b461903-dbbc-1f1c-2359-6dae656d477c@ti.com>
In-Reply-To: <2b461903-dbbc-1f1c-2359-6dae656d477c@ti.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 25 Oct 2019 12:19:29 +0200
Message-ID: <CAKv+Gu_0HejeZLEft1VQpPruW+L8Ao1J2fFhp-io_sVZnUVxbg@mail.gmail.com>
Subject: Re: [PATCH v2 05/27] crypto: omap - switch to skcipher API
To: Tero Kristo <t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_031934_379088_DB5E52EB 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Tony Lindgren <tony@atomide.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, linux-omap@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 25 Oct 2019 at 09:32, Tero Kristo <t-kristo@ti.com> wrote:
>
> On 24/10/2019 16:42, Ard Biesheuvel wrote:
> > On Thu, 24 Oct 2019 at 15:41, Tony Lindgren <tony@atomide.com> wrote:
> >>
> >> * Ard Biesheuvel <ard.biesheuvel@linaro.org> [191024 13:24]:
> >>> Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
> >>> dated 20 august 2015 introduced the new skcipher API which is supposed to
> >>> replace both blkcipher and ablkcipher. While all consumers of the API have
> >>> been converted long ago, some producers of the ablkcipher remain, forcing
> >>> us to keep the ablkcipher support routines alive, along with the matching
> >>> code to expose [a]blkciphers via the skcipher API.
> >>>
> >>> So switch this driver to the skcipher API, allowing us to finally drop the
> >>> blkcipher code in the near future.
> >>
> >> Adding Tero to Cc on this one.
> >>
> >
> > Ah, of course - apologies for missing that.
>
> Works for me, also can't find any bugs in the code via inspection, so
> feel free to add:
>
> Reviewed-by: Tero Kristo <t-kristo@ti.com>
> Tested-by: Tero Kristo <t-kristo@ti.com>
>


Thanks Tero

I'll dig up my Beaglebone White today and test/review the patches you
sent out last week.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
