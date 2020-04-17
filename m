Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5788D1AE563
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 21:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/2LYuShfWC8kUk+Jr/RjPUzljCO8JL4kRiC/VACMBs=; b=H7PrEtZcNLEuDL
	ErnuQD2A61xV1XSwkvDpz7sR74/NNemQ4yh/MSaaQFIx3feSF/MeXJ2NE2eokBgamunn/SJv2esF3
	Bmf41CbaV7npecNQgyJwTt6MpKZiBB2le+4ezxkPxJ9zCe0QBUnszKIGRDtlTeG5QyBhS5KSsz+Aj
	CqL84K7z7FXQq8SODbSQcJ8wyNpawY2ziAdEK13S65XVAw6or89+3c5uOruoxTfCK2vBLZNgxw7eh
	s9VvEFCpj0xqJ3d/Ia8yiN0DVYMWmCQONbY85fy6bOz4QjU0tc6SrquLSyLKBOs6FVJ77t702UjhP
	anUIYzpsS+Ij0LWehvVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPWFc-0006gZ-Jh; Fri, 17 Apr 2020 19:02:08 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPWFQ-0006eg-PF; Fri, 17 Apr 2020 19:01:57 +0000
Received: by mail-ed1-x544.google.com with SMTP id e5so2268011edq.5;
 Fri, 17 Apr 2020 12:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ws0lGObjtWkfbXmBqtfEqFJnV5cJRhTx4fqD0Q8cnBs=;
 b=nhSCvAIn9SOUp/QSQE0a0stljfg8bCGxS/WVOKNAq32tSji2T/MlLN6N5hKSkGs8Q1
 1Hj1P4OBFNbPEuexW2ofGFBJfn2JCZo/h/oBQtj3R+49YApA8xLc9FcENfylm4uZsihr
 PrN3wtI2fyzkxaICZKRlp0Q6qiVeoAMwvDPPmqTmKJpPBpHL9Wlb8FAhu4tTuWNXihox
 i6BZIRxCvdlNTKi6P6++kC1qTTbz2pJsm8GwDRMi3IFnC6psIAObSJOyRv8SOy/9LDea
 kVO0ulyl92+e3ra0I4rZpAXxTtOE5sSFn94sL9qAMs9BHRmLpMgIGprNpDuBiIo2aWcr
 GtsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ws0lGObjtWkfbXmBqtfEqFJnV5cJRhTx4fqD0Q8cnBs=;
 b=RJNuqqgfx6PJho8l++VtfOB7mgc4B5Zi0wRSCEmBFeMsHxp6eDip0xiRJn5gp2H410
 zFLzj+OUVRR9mhy3yvvtQiRinFKhUdxyPa0RUtN8gxx5RnHs1UV+65kJGSRFZfxcLqb5
 /hwikGIjeyD8Jisir50/BUoVRlsRJ3PAERDtnHULFqPczbDLRvh88VHftsQ+fczoeMp7
 mqiLIhUddQGNLZofLfaqTn9lMFTK0u71iw0RkmUK1Vkx9YWVvqccmqOU+4UL1e0keK1N
 3VW5ixhq4ANnK5mzzQQI1WJzmPaWTdzhj5Rt8Lu6QscIgHFhmWWjNfVwenk/WXTMD8U3
 ZyTw==
X-Gm-Message-State: AGi0PuaEVRpW/lKS6Obx0NIR3sMyS8AXu3pHwG5SrWlaKAYtWUvFI0Vg
 atdff03EXtbZZm2Gg6uy4m+quQ1lL2xvN2CGgP4=
X-Google-Smtp-Source: APiQypKxFRcocN12xEBF5koGWzrxYBcKMvJXbVGzd+MQqeyCeALK+IsccNlNdyjEYO6sxS47F8FsDBlkB2FlBJzQWwM=
X-Received: by 2002:a05:6402:1496:: with SMTP id
 e22mr4449267edv.301.1587150114192; 
 Fri, 17 Apr 2020 12:01:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200416121910.12723-1-narmstrong@baylibre.com>
 <20200416121910.12723-4-narmstrong@baylibre.com>
In-Reply-To: <20200416121910.12723-4-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 17 Apr 2020 21:01:43 +0200
Message-ID: <CAFBinCCPZCNsj=dA3_fzrPqGCrpRzeJ7OPGErFvUeKW=iW-r9g@mail.gmail.com>
Subject: Re: [PATCH v3 3/8] usb: dwc3: meson-g12a: add support for GXL and GXM
 SoCs
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_120156_824839_B94FA35D 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: balbi@kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 2:19 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> In order to add support for the Amlogic GXL/GXM USB Glue, this adds
> the corresponding :
super nit-pick: if you have to re-send this for whatever reason, then
please add "new compatible strings with" before "the corresponding"

> - PHY names
> - clock names
> - USB2 PHY init and mode set
> - regmap setup
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
