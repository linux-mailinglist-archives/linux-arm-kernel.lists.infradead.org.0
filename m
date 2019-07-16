Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E598E6B296
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 01:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CPPBuOB/ukGqjnwag0u6Hk7ADd5IKYB4d2g057uMEeQ=; b=NIcT4hB6BPcj20
	VcBT5DfJkzl/piQqeXaFli/8tOWectS8ZuXQccKal2ym7XjhtqxtHo+ChsIw0qndphtkDY9JXD8Bv
	mdhcxZgVjGJPbeQDQnwyIGywLLyhdOt4v2weJ/fGJQXjFrwGrJL/SZJ3R7LONwG/+Ka7XGGv55lXu
	Waw0BSExvKtEn/5igKDrgVzmGfhBrc/vBk7mUXK3xUvtn77aDVcKEGwQaveywFI4aCcPv0sHwMrYh
	AL+tXH1aVPZn3qpNzc1uie5O8Ac9owwdB59r2vwNDN/ODoW2JFKm4FS+1OjHQnEhXcxGvs1rpcKL/
	mlSUPlQ50M+3iN/YVTng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnXML-0003FL-Pe; Tue, 16 Jul 2019 23:59:49 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnXMA-0003E7-CS
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 23:59:39 +0000
Received: by mail-qt1-x842.google.com with SMTP id d23so21520307qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 16:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zfE+1oH2ev9A7CB6B7OCM0HfuvGIKPETwgwy1wYPeZk=;
 b=myAjYl3qrrjUdybw3rfkkqgxLpxX2EWxa6gWin7tovqVhvuC1kAEj0YUMz0a+INMKn
 k34dHtcAcHsWoDetwCiVgDi03O2ZbX6tn7T6FBnKsTPf2BLewHVVFqVnoOY7p/UiUCEe
 +2TMI/XehWPm3bOXRcM82WCBDwbCShBjLtw7Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zfE+1oH2ev9A7CB6B7OCM0HfuvGIKPETwgwy1wYPeZk=;
 b=CNwDQQh798DbUGMH6QxWtLOl9aVMBqltZsH9dOr77UEX4Q1bINop/X3we8vKdUQHrw
 fDOY3QbPkeqxu+G439oNjVtsCXIKsLHzUjMZejD0CKnp1W3vaacbadpJYSKjRPJaLvsT
 ECrOqp2wsdVKW3reB1suQbYkNwG2XhXV2TtaukgSe/+SFM6SNwhSTIGChxMMWfkFqEkE
 vG2ayKoNOF3F9zL/JxPyGFxu/vUCjCF7lBnhlU5wVnIKZknBqKpbti89ZZQvpzpKHAIQ
 XuCvFUx0NeH01BBgoATVsqN62Nq5PqI6t58TEaw/jey8JGLRgV7vx3El7WMmdACO8BNN
 fYUg==
X-Gm-Message-State: APjAAAW2FQiR/3MNAQv0MVJGxj7gHZDi3ztUMcEEYg9hpqfrLl9V69Ht
 6CWv084l3kOyFS0Ih/4HSOjmK7nZKMFid/RURETCaw==
X-Google-Smtp-Source: APXvYqyCn5WDabT9u/P+OGBvnjMb2lK0frfpzoQz2UZeeBoGFN9gytFn4nfFqeUwNxxQx3qvg3WhGoAnUFfps5oKIQ4=
X-Received: by 2002:aed:3b1c:: with SMTP id p28mr24024945qte.312.1563321575377; 
 Tue, 16 Jul 2019 16:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-7-git-send-email-yongqiang.niu@mediatek.com>
In-Reply-To: <1562625253-29254-7-git-send-email-yongqiang.niu@mediatek.com>
From: Ryan Case <ryandcase@chromium.org>
Date: Tue, 16 Jul 2019 16:59:23 -0700
Message-ID: <CACjz--k0wVpxWTBXQeUHqm50RgvaCNkNb3DO+KviCOtq-e9gTQ@mail.gmail.com>
Subject: Re: [PATCH v4, 06/33] dt-bindings: mediatek: add mutex description
 for mt8183 display
To: yongqiang.niu@mediatek.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_165938_464406_70E4747F 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 CK Hu <ck.hu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 8, 2019 at 3:37 PM <yongqiang.niu@mediatek.com> wrote:
>
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
>
> This patch add mutex description for mt8183 display
>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> index bb9274a..4a22d49 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> @@ -53,6 +53,7 @@ Required properties (all function blocks):
>    For most function blocks this is just a single clock input. Only the DSI and
>    DPI controller nodes have multiple clock inputs. These are documented in
>    mediatek,dsi.txt and mediatek,dpi.txt, respectively.
> +  for MT8183 mutex, this hardware is always free run, has no clocks control

This should have capitalization, punctuation, and drop the trailing space.

It also reads a little strangely. You may want something like "An
exception is that the mt8183 mutex is always free running with no
clocks property."

>
>  Required properties (DMA function blocks):
>  - compatible: Should be one of
> --
> 1.8.1.1.dirty
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
