Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DF41072B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 14:02:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=715o2gaSaBLJpWmOlbVA4MXtHukh1SKVz3y9waVVhxA=; b=cSjCTxnLlmqhmw
	HbXEus12XEH+ESPGgqDLlRJ71+ZLWonYzi4+TgKTqqHk0dmVXq6Fv2UsyQK43vDJQqjhHsohQ+ErB
	pbdBXXTIT7oL6p6oUmk3Yi8GMdstPFv0qzGn3nDxH0/YzzSv5jh1PcNkxIysLkzttf0Id2RGpByg+
	3IZSlSuYvaLaDzADSyxxTKdjdWsLubbpYvwajdIC3YTZ6CjRe8UpA+ujXXA44bJXDyVit0yOGpmfQ
	7uZSmpzneeDlctpme0FzFDle1o/99/8uGgzYQfQR7apTH0RsVn2kDebWVbPRxqu+3XwRZLc6P0hBt
	tKsPUjBOxBS5xJ1JFr+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8ZX-0005bZ-E6; Fri, 22 Nov 2019 13:02:03 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8ZK-0005Hn-3A
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 13:01:51 +0000
Received: by mail-lf1-x143.google.com with SMTP id r15so2517592lff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 05:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Dn2Q+lxc2hD365R8dpx/qDcvh0SW6iReRcimhdnvJVs=;
 b=T3iDSlAsyuLG+UJUCmoncxR1Bu/bnkXL+KTq5dtWsOPEk5RpZ8edNc98Onwl6slav+
 /6e8hX+pTkWaSIXGqEuy9X9rZyNwmY4TERtxiAfEDekog4Gkz38xdZQ0RSgGTrgjfXWm
 Owq4J8pZTVADQ/t5uY4imCraJJ2dIrTT2uwE0EY2E3x+Uro8T1zF0BkVxkc8pF0FsqBl
 y6GKP5K6axb8BQ38YAG8H8sPZiX4W7XuFOsvWqrZ1MviJOCm684lRjpNZpMzH8na0jOx
 wqdeYsaHigtxhdjowwJZrUBM8VUa8C/SZB2DM3PbahSmncXpmbcvjBgy4Xy+mo3eR0h4
 1WBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Dn2Q+lxc2hD365R8dpx/qDcvh0SW6iReRcimhdnvJVs=;
 b=JbAY8heT868sohjoYuekW/Al1eQ1M8KohGLqx7xKfR4+btAdLjhAcEdYJsMZfnQVbP
 jmgZiCK5xfMriJGODAQ4lhktPjk7/hiYA25pzTvnoUgo7Yv53r32VNn2zpVz/x5hC5oI
 NEtL+vGKH6ATyJU6wFiYQCr0kv23GZBCPoF+rfDwv/hjItMrtukgBaMGLlogGhh97nvq
 KzFQA3yFBH53+00gBb+cI23empE7nwyRYfPES6cP/sUudjBBZeArDGLaTbiF+LQ4FUQQ
 3tTjqJYn9hDs5vFgebCoxPsPFmvrY44PHEVpQuKOsIJmYQhp9/JI+yWeABPGl/jXAEkt
 dEDQ==
X-Gm-Message-State: APjAAAWRLb0ryUXIywzSjmy6R5R2ttG7phVnyN+LWEyEu/DcpmYvoaLO
 IP8Ak8iCsH/tcWzTH/c5QK97iulFiyk6mKA+NofSTQ==
X-Google-Smtp-Source: APXvYqzo/k0rIsJGGL399pE+GzotZ33QW/YQlNt/JpZVm7SU204RwrS3/eFE+xu+DFtDva5eWFhzGzqC/njjDmo3YqM=
X-Received: by 2002:ac2:4945:: with SMTP id o5mr11596350lfi.93.1574427707515; 
 Fri, 22 Nov 2019 05:01:47 -0800 (PST)
MIME-Version: 1.0
References: <20191122061839.24904-1-hui.song_1@nxp.com>
In-Reply-To: <20191122061839.24904-1-hui.song_1@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Nov 2019 14:01:35 +0100
Message-ID: <CACRpkdYhLoGdGQt_jzj5aFa-EY_kMimoVShi7QFLG3sZbC436w@mail.gmail.com>
Subject: Re: [PATCH v1] gpio : mpc8xxx : ls1088a/ls1028a edge detection mode
 bug fixs.
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_050150_148557_0F9CC05F 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 7:18 AM Hui Song <hui.song_1@nxp.com> wrote:

> From: Song Hui <hui.song_1@nxp.com>
>
> On these boards, the irq_set_type must point one valid function pointer
> that can correctly set both edge and falling edge.
>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>

Patch applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
