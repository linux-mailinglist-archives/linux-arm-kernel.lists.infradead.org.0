Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2D910DF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:25:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZCxt77Sw2M8krx6jgnCZ4fxPg7R4g8Ma96l/JNOpO8=; b=AJ6LSNYdqCuBhc
	VOqpX/IHTa9RTAiy/qlRfRSqjtmpXh/U8K22ylBxs0bE6YjkmhfRL2j1oIdVfI6EdIWPxt8LUxb8a
	B+TKxH3I131XdPRedcK81VsYjPU6ZwpIcGgB/DeYLPZ0xJoGFo0E2369rnHyrz9/ZuNoghWLRDkpr
	C8hC7TiAG/TQpoJPetJnrgk5pgYeZNto1UiJJ5Op3KAKlwGir3Bm4RdlwUdIMnaaVzPWUnA0evDZq
	JS4LobQjPld51ATHPXmCYeOCzyL6/yyUESoZBz8XN8knrWE8tJ2S6xMLFUvfgfWmUdn8tzWgndTH7
	hkMEn27ybnUmdlxZiAtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvn0-0003CC-UL; Wed, 01 May 2019 20:25:14 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvmt-0002tc-Ki; Wed, 01 May 2019 20:25:08 +0000
Received: by mail-ot1-f66.google.com with SMTP id g24so136091otq.2;
 Wed, 01 May 2019 13:25:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NYns9XpnphK6szv5SEMiVX6iTl8gQljiQwlent8Rn9A=;
 b=PdePaAAxC8q2LVeyWaXETzSkUq0Om6XX9PZlS3gP31zvxzv5WQvvXvwxQWlxyolJ/m
 QpGe8hQMwMzKqx1OFEWqCEI5fh9wiFen2ZTK91Zwxx4mKTpwCb7k+uZRwQ/bOFK7kdWR
 MoQU2rziD4C3jSnoSNJtnwpeEllkvrn92N1kl+fV6Zok06QcH+BLuKnBq+razeFOx/1Q
 b2m77uktJiLewIUGWNzxhOcZNJyoQZi0oYEVd0wuIavP1OGAoNw9frGLfPk5Ot85GOrG
 krnEpBKSz+QWbw2tnqb9idyOrZ6Lqo6DZ2f5jVAOrNDwRXl2JZ6958FVJWBB/Dvz5fwI
 sGyQ==
X-Gm-Message-State: APjAAAVM5Ds+nuzyDQcDuvn2x2HzL2UMJibsXDp6kNuEAEXzW2wDGMBu
 l+u8qX/xtTXiu9uQyszVkg==
X-Google-Smtp-Source: APXvYqwMZKRtssUNrD1zPRVi56HIIK9LZgJvd6s1ukd98Qq60sSI31JlavCo1HrpyN3esU/uMK3vrw==
X-Received: by 2002:a9d:6f8f:: with SMTP id h15mr3972863otq.216.1556742306623; 
 Wed, 01 May 2019 13:25:06 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 189sm16943760oid.35.2019.05.01.13.25.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 13:25:05 -0700 (PDT)
Date: Wed, 1 May 2019 15:25:04 -0500
From: Rob Herring <robh@kernel.org>
To: Henry Chen <henryc.chen@mediatek.com>
Subject: Re: [RFC V2 01/11] dt-bindings: soc: Add dvfsrc driver bindings
Message-ID: <20190501202504.GA32615@bogus>
References: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
 <1556614265-12745-2-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556614265-12745-2-git-send-email-henryc.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_132507_685147_C0803925 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Nicolas Boichat <drinkcat@google.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-kernel@vger.kernel.org, Henry Chen <henryc.chen@mediatek.com>,
 Stephen Boyd <swboyd@chromium.org>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 30 Apr 2019 16:50:55 +0800, Henry Chen wrote:
> Document the binding for enabling dvfsrc on MediaTek SoC.
> 
> Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> ---
>  .../devicetree/bindings/soc/mediatek/dvfsrc.txt    | 23 ++++++++++++++++++++++
>  include/dt-bindings/soc/mtk,dvfsrc.h               | 14 +++++++++++++
>  2 files changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
>  create mode 100644 include/dt-bindings/soc/mtk,dvfsrc.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
