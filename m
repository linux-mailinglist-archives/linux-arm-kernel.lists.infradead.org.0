Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 646EEDD35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LcO4Qu7SGEMlprOwf1Lt1DmSqcxgWHYLaZnpXD9uU1A=; b=Bsv/oqhwMcJALI
	4WfJ+31R78vI+bbK8m/biYAeZubbEbrJkl+na38kt2BHeOntKrjRye1xvEabcrhv5LhxztZ6TtqGy
	O3ohXJmFhc/EKwUp570+7f3raj0dxRYQGLO8edpgqupHq+FQLIb+7z0bgvvTa3xmZEz12NLVWDplC
	Du0OleKOssHJhSN4uctKpm1IyHJVwnijzk93Uq2IAGjDVhVF2QMwDO7nyHtoiFdM0EyUJTHSXpXHm
	F1B9HuglV1ykwWpFHrXkGSBIqRFisAI3BimUFBHSj5h/rOmf5pJmzBj70rLpNi2C3nxIqn9+8MYmd
	NwNIuIyVHHmHhhcjXAPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL177-000759-QO; Mon, 29 Apr 2019 07:54:13 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL170-00074e-EZ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 07:54:07 +0000
Received: by mail-qt1-x842.google.com with SMTP id h16so5200327qtk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 00:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KWgCkKPfgLe0gODXDRVabcCo8RdveLj5EodL4BepQwo=;
 b=QBxjZ6/oxpq6tExNEmdlt5qqmHZSVRrvHDTc+7z7QFME9MlAxao2y0Mf3fgL3QOvUn
 3ojdnuE2FRclx7G+rgsgtX3VxxZKTU8/OUyHqQ7s87OLiGU3feI17TVpZJSZHtNF6M/Y
 OPlvuHIJCVasxqLTvKkkAhRm+bN9gyfTk/0hk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KWgCkKPfgLe0gODXDRVabcCo8RdveLj5EodL4BepQwo=;
 b=KXGrxno62m5pF6ALRNdSHwkl3QvWw2B5R1fe2P2Ypm7vMRiqWFl1fOzUIwevMwy2rA
 M74F8p7Q0OhcTxGmc0MvKcaSrtv7uY1xtrspMMzAm75dfi5ENBnHK274EiTvAW/Xor3D
 fSYpA1QHMYk5j7dYrx9gkTbxNNKlb+Wfh2A442OKHobWEuQyyyvaZucN0DzuL9R6tDNx
 /kuNatz/gfC5qAJEefQPxwq3936PryOF3ZG73Q+fgS6V1yLzs9nPweA74OmbDg52I8Vp
 UNN1Uis5vGmo4C/4WpTPYF+Vv54DS5D7xoKISxa3MR2tODeMD18bfTgEfNCzXHar9efI
 P+oQ==
X-Gm-Message-State: APjAAAVmHgtaFP1PPiZwj04qTEXyzp5mFsEOF8zMu5sZqBwGSHdwiiiI
 CEzykPB8U4Bs/e5TryjeGGBG0vElBdrKoKMaoe0=
X-Google-Smtp-Source: APXvYqzuweVqEIbGAUxpYzmfY5Jlihfnu2PP5Rq/2cEC87hGr9WIb/S7SiEJVR+p6CHs6sv5l0jiC6+WCcgT8ud376E=
X-Received: by 2002:ac8:2565:: with SMTP id 34mr49117430qtn.37.1556524445302; 
 Mon, 29 Apr 2019 00:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190425194853.140617-1-venture@google.com>
In-Reply-To: <20190425194853.140617-1-venture@google.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 29 Apr 2019 07:53:53 +0000
Message-ID: <CACPK8XchRsfJkB_p07g6LOyakaq8XH9yM3ve9annfNTTkGY4rg@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: aspeed: Add aspeed-p2a-ctrl node
To: Patrick Venture <venture@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_005406_485659_01D54E7F 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 devicetree <devicetree@vger.kernel.org>, arm <arm@kernel.org>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 25 Apr 2019 at 19:48, Patrick Venture <venture@google.com> wrote:
>
> Add a node for the aspeed-p2a-ctrl module.  This node, when enabled will
> disable the PCI-to-AHB bridge and then allow control of this bridge via
> ioctls, and access via mmap.
>
> Signed-off-by: Patrick Venture <venture@google.com>

Applied to the aspeed SoC tree.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
