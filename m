Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FA418276E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 04:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsvrzWwvBZGdB/bf4J7SJW5yF8/+gWxbd8R5/NTSGuQ=; b=j0IT8BAYYV8usB
	DcQfkywgxjP3xocrxp3Iew7nbBz03DfxrVaBQUZ5+CnTolc3+j0k+0koKHsa4IERZCyrEjnW2PTLg
	8+WWj6SYMZHzgJjXDh44YFtIjCqff9akDMjvuTLBOy0F8UQL48DDzGdTMuTlYoy98NwBFd4CffphZ
	hxZpbwCKaKsJ94N+q1nxCnkuyNQpt+Jg/+KWHJ1q3nMjcW50U2ShZsvM5Ew8oSVnD8GyZpIY/BORF
	n7N/O6CbcGTuETUTm4AkxCa42GDQJSSwVSz0mXhBI74hnaJUJ208D9hAb2CX6yBLyoqMv2+AoVDAt
	LWE7WoHrSt8g+mMXyJ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCEUS-0006L0-4a; Thu, 12 Mar 2020 03:26:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCEUL-0006Ke-3U
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 03:26:26 +0000
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11CB920759
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 03:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583983584;
 bh=08jCRw8Qsj1MjgSuweg+nOPCezUdYX+IRjWXZqx9YBc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hzOFLFjg2PWhvcyUB4aLAMVeI5qLIAzUua4pwXOKzZYX3LXaGSyDcInJyq2cqMLc7
 g727Gnz9pK9osugdw1h3volU8+VAuoy6OqxBHXzluVRgzdeEge8s46jQiOnwPBXXDa
 R4Ck6zMNCMZHyzXyrA7idrS8QaOdpJi1ZJAovpoo=
Received: by mail-wm1-f47.google.com with SMTP id a141so4629046wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 20:26:23 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0Kzal6JR/aWHRKuRe/UltvPO47g2UNTRCR4NhYtVrKUGiaM4yg
 x2ZpISn5LwDdCR9LKf/hH6zBwRh09DtzYyIjeqU=
X-Google-Smtp-Source: ADFU+vv74O22275eZMI1PdvaJPZT0b+o0VzwOCB2XmgL16YTTbB4Y8QeGcErTTfFc2dfeiZjtHZvaLJaxKFiUACk2D0=
X-Received: by 2002:a7b:c118:: with SMTP id w24mr2114631wmi.77.1583983582122; 
 Wed, 11 Mar 2020 20:26:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200310174709.24174-1-wens@kernel.org>
 <20200310181003.wgryf373em5zwlvb@gilmour.lan>
In-Reply-To: <20200310181003.wgryf373em5zwlvb@gilmour.lan>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 12 Mar 2020 11:26:08 +0800
X-Gmail-Original-Message-ID: <CAGb2v64MeW-qNLa9-ffCvRRYV9sa7FbM9R+c-8z40GW=FajOtQ@mail.gmail.com>
Message-ID: <CAGb2v64MeW-qNLa9-ffCvRRYV9sa7FbM9R+c-8z40GW=FajOtQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] ARM: dts: sun8i: r40: fix SPI address and reorder
 nodes
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_202625_167292_A2F6B900 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 2:10 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> On Wed, Mar 11, 2020 at 01:47:06AM +0800, Chen-Yu Tsai wrote:
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > Hi,
> >
> > Here are some fixes for the R40 device tree for v5.6. The base addresses
> > for SPI2 and SPI3 were incorrect and are fixed. I also found some nodes
> > were not added in the proper order, possibly because git matched the
> > incorrect place when applying the patch. These are fixed as well.
> >
> > ChenYu
>
> Acked-by: Maxime Ripard <mripard@kernel.org>

Merged all three for v5.6 with Andre's Reviewed-by and a reported-by
for the SPI address base patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
