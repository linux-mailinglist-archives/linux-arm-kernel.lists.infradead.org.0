Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1709DD31
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkE0V9rtQxD5JtsyaqzxgoR/0WqrTs6+zW8c539w0FY=; b=RHedXrSyw5ETG1
	5sca6Heh/GJNEA47IdKCJs7atsDK9jtdLUm1+VxaSe/4HpT4DaNv4G2O9M5FPl79P+4l+cL4TyJgh
	jJf79poRbAmkvrisbzRN99nfzQcFKk3H+zJXCNE/dU8VnEqCrt6cXXApF8rlOLN1amrsGgB3LKAQC
	6v8Eti3PolmeojRSVzkRV73rY0Lw/AAKUDACwG6CFp+Yu7EenOPIIZbiGF23n9HAVdaJx1FfuL7ny
	6wMn2lTEHz6Rt51/2BqBU9iHV4X5sQlAzWI9ZmrsWWUSb6vCPHzh4f0S5JkoU9sClah01fQ64z2jW
	mVRGr5wRieGSX4/V9gkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL16n-0006pi-9U; Mon, 29 Apr 2019 07:53:53 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL16f-0006pG-Qn
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 07:53:47 +0000
Received: by mail-qt1-x844.google.com with SMTP id g7so10941785qtc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 00:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5t3ha+L/fYSXvu7o0ySbyVykauyPN6EAUxnPIHb4CJ0=;
 b=bCja6QsaoKBuddwyLN7Ymwyx1swIpERjorOwhUMNvQjppCPYWWn45unKFCXWw6v8NV
 tLMMy49XYA18pN+j2THaZlgHJgmRrmkZtLeKXFb2yDOhxo0pzsV/rC6ZTN5nUPEmrvxw
 H8Inbo6e5paggfmsXww73Z3oLs2/WZaWoI3H4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5t3ha+L/fYSXvu7o0ySbyVykauyPN6EAUxnPIHb4CJ0=;
 b=ABG0F3VIV2TTP/v0x7pp49Vq5gpxOWSozGpEZaJ7NSq7fhuJDIFR+4zFpt6Lr7F7nU
 PRmoyndTQkZa55tKRsIOQJoOQ040fTAvhGUueavcGw1F1FyqwP6d7rv3xK2Uq8yzLjzh
 E37NGeqSDDjvMXc5nrFxcyADsJD3efLxS5c1yj0CdhxVU2dK1JrFik2lY1F1oLdLuBld
 flsoGfo8jFcLy9wHsr9zVsBoHxQitJ4xoSkYrAqkJUM8fvF/VUnw8gyoDPTS5QZwOhTb
 hHdpta+P0yW+s/hWxUTTi+CuHlvHvalPaT3T4VJdjP0DV/ynXSrPlIGSRbw6GlRsd2XD
 AfOg==
X-Gm-Message-State: APjAAAWyJn5lz0tKhOlZqbsPu39PSORE4iyVNfFMcfub2jaiO0CVYmkp
 s98rPgU5MC7IBhXA8yOy/7e/JUxgSGS0VaMybIE=
X-Google-Smtp-Source: APXvYqx48H9AYPZuMFrqfPObYS55llABgvbLwiFiYW98pm7xlm9uxMeurzruoh/LKxJaOVfxTRXM1+nMdxblh/TRCwg=
X-Received: by 2002:ac8:169b:: with SMTP id r27mr33552179qtj.235.1556524424431; 
 Mon, 29 Apr 2019 00:53:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190425194903.144569-1-venture@google.com>
In-Reply-To: <20190425194903.144569-1-venture@google.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 29 Apr 2019 07:53:31 +0000
Message-ID: <CACPK8XeDS0RfF1SSTuFbSoO9a7N6qDZShovj5yF56Pc9PA6nDQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: quanta-q71: Enable p2a node
To: Patrick Venture <venture@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_005345_868510_7FB26515 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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

On Thu, 25 Apr 2019 at 19:49, Patrick Venture <venture@google.com> wrote:
>
> Enable the aspeed-p2a-ctrl node and configure with memory-region to
> enable mmap access.
>
> Signed-off-by: Patrick Venture <venture@google.com>

Applied to the aspeed SoC tree.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
