Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A95D1DA072
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 21:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZ5NoFsz+x0cGQnS5TMK5tk72ByKAlLYRB49Iy+tR1k=; b=ZY/jf4sWxiKI0L
	Zsh6m3YsuXfkdYKRf/d0vJUeTGkrAx81Z+Ep55VCOlmimfgyLX9X1AIqD5ji5GN9n3IFAbFc9fu4n
	hTkmukGpbBOIWJlWYrmFDr2a+K1O6eCkB2EPVdffoc5L7kMMYGL8nHReWB4lHUagTtvV6L/C6ep6F
	g8F1lzf6qcRI9eZL/Yyaj5+vY43C/dcmtx7lBTmDxGshyuClwsvFOstL3HCVLsahiCO16ZC1YKHig
	NRY5DDKY8S3JfKlhXdx1A50yDP4BYA5nIy4eMrbn1+C6A6G53EvBr4ldOLhN7nDIWYIJKYHO2D/fT
	rOQ/JNFoIVLfFXzMcsCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb7YD-0008R1-QE; Tue, 19 May 2020 19:05:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb7Xv-0008PZ-Me
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 19:05:00 +0000
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55821207E8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 19:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589915099;
 bh=5wUA2kw9gi9NGUOPlTqxvEngtjEwdS/z9ZQ0DwPRQKI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Wo9CiWmYQaEpKbvJnXiL/gkwQUMPuCIuKSj3bjAm3313ObpQcUOq6yvBt6Eo6Cdxo
 MUhqJZHd3dI1dEAYXgiXsmg7eilLcrDdEf69gy8QEFEFzIxRZMFwfzGbLVTgja9JJl
 STRJpV8ZJPZPBeWoPPwsgS9ozKlcQmv2Z0+5N+tM=
Received: by mail-io1-f42.google.com with SMTP id j8so310699iog.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 12:04:59 -0700 (PDT)
X-Gm-Message-State: AOAM531yoy4aImioubfAZ3YEl9eSCyd7nNhHRpZpCrxXAB4o3ysXydJz
 dJgpc5t8d8amDm4+2aofZlChBrXdcZhmAgpXEsg=
X-Google-Smtp-Source: ABdhPJzdM446lwy+w5EhFYeIWCa0NRFUvx+N+9/U7j7zeiwe+oc/IRDmuMyfOTUmB2GjrXJLbgkmr91t/kyBQcTEzRo=
X-Received: by 2002:a05:6638:41b:: with SMTP id
 q27mr1094617jap.68.1589915098721; 
 Tue, 19 May 2020 12:04:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200519190211.76855-1-ardb@kernel.org>
In-Reply-To: <20200519190211.76855-1-ardb@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 19 May 2020 21:04:47 +0200
X-Gmail-Original-Message-ID: <CAMj1kXE-e8VatDyVW-ptRtpk81FTrXbLyJgHXojbyFMAi_WF0w@mail.gmail.com>
Message-ID: <CAMj1kXE-e8VatDyVW-ptRtpk81FTrXbLyJgHXojbyFMAi_WF0w@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
To: Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Gilad Ben-Yossef <gilad@benyossef.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_120459_755848_6E9521D4 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Eric Biggers <ebiggers@kernel.org>, Stephan Mueller <smueller@chronox.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(add Gilad for cc-ree)

On Tue, 19 May 2020 at 21:02, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> Stephan reports that the arm64 implementation of cts(cbc(aes)) deviates
> from the generic implementation in what it returns as the output IV. So
> fix this, and add some test vectors to catch other non-compliant
> implementations.
>
> Stephan, could you provide a reference for the NIST validation tool and
> how it flags this behaviour as non-compliant? Thanks.
>
> Cc: Stephan Mueller <smueller@chronox.de>
>
> Ard Biesheuvel (2):
>   crypto: arm64/aes - align output IV with generic CBC-CTS driver
>   crypto: testmgr - add output IVs for AES-CBC with ciphertext stealing
>
>  arch/arm64/crypto/aes-modes.S |  2 ++
>  crypto/testmgr.h              | 12 ++++++++++++
>  2 files changed, 14 insertions(+)
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
