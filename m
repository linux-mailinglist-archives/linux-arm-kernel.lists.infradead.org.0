Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE411A0CA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 13:13:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wijUdm34yGCMwIfqW85THPuDlvP0OV2sWJMDSt1Xb3g=; b=O1aph0eLXAfua9
	v9N3Bu6waKmV5qL/VBr/2kbUj1EAcbfvCJRDH96IkJrgV8CBhKjaMCzsy/yHH1St1fJANVwEHduuP
	COxMs529JGWd3/nB4TGAYph8b3Il/8uJ/erPARqBNcsZMsh2Qs0CaS7UqIy0hC/SE4Haikq8ri2EX
	42Zi2Yj0+ghkyAXi7k6OAvlFXS5RNZSDGSSj/JFgi5l6jBixJEJure53YNu76nwNT9C5FGjz9Nza7
	dIOnIG4BcjbDh3cuWpg4n0LFblpEAjUcwDJmQfA3ngFmlr6vNVUqNRlQX8bT/h28CRXiNNWOyb2zI
	RGLhcHuFHTUS6ErtuKTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmAG-0003A9-43; Tue, 07 Apr 2020 11:13:08 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmA9-00039i-Az
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 11:13:02 +0000
Received: by mail-ot1-f67.google.com with SMTP id c9so1280440otl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 04:13:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e3iXkpvKQTrS/mZHkPAUFQihvDgmhgnkcQpveYe+iPU=;
 b=Ju0gMcRLZrPuT9+ZHtQS5ctQhRA7EkQcMa9Y3Fu3Eht8hdf/2/CRyEhS9XxFD2FFVc
 5LmE4QlVPOqFqQHn/3z07naWFfYaTszKGRa6KLwoNdwLmxpCu7xlmlONb7fh9TEw46WX
 pVZjZUoiw2KqkvosEJoJkcJrqhWo1kkjCCuaktpsm2H3J0yyqRW+sXbvjP8oDjNPqwsq
 8m86gFgDHm3ryxhvhrs0KelS8yC95cPzfyQacToRF6uQ2+fQ/4LHdQMPJSRjJN/kvT/+
 h+fYzjAgCHfbCfQNtHwZ1k6WrRobifXpfPk46kxd7jxgWdaPbl5FiG/xC17xyrFaoQuS
 xcgA==
X-Gm-Message-State: AGi0PuZqdNslzHT4hPfnJOIqCjRFFlOBAnpVcv0V336MV1rhU1KG6ckj
 3usKudz1+gV0u3Vz4yJvyyyyPTtBley5vavdWcQ=
X-Google-Smtp-Source: APiQypIyZ+zMrT0ob34m67/8h1bW9LCddkuTM0bzGelJ4kZB59WKXowcJiddAufEynRIza37fmpf86cW43QFEiMVzAc=
X-Received: by 2002:a9d:76c7:: with SMTP id p7mr1044046otl.145.1586257980496; 
 Tue, 07 Apr 2020 04:13:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200407103537.4138-1-max.krummenacher@toradex.com>
 <20200407103537.4138-2-max.krummenacher@toradex.com>
In-Reply-To: <20200407103537.4138-2-max.krummenacher@toradex.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 7 Apr 2020 13:12:48 +0200
Message-ID: <CAMuHMdX3EDwrBJQvqpoGkbWjFkEth6wpdk40pZjCydfssJ2T9w@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: defconfig: DRM_DUMB_VGA_DAC: follow changed
 config symbol name
To: Max Krummenacher <max.oss.09@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_041301_374984_1A3389A6 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 12:36 PM Max Krummenacher <max.oss.09@gmail.com> wrote:
> This occurrence wasn't changed in the original rename commit.
>
> Fixes commit 0411374bdf2b3 ("drm/bridge: dumb-vga-dac: Rename driver to
> simple-bridge").
>
> Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
