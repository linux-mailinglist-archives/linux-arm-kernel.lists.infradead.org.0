Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7691C3104
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 03:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmmP7LYsG5NGmxmu38BmbRwDGJM7jb/WLrqsu70TKU0=; b=iwokDgC7bvZwBc
	JiOOrJCgWU8bKuHeYctq7CkdtHzT28VpQ27Uesx80Yc3ytZdq9ZmZ99BLwx5wTi+Xb5MofqymsLSe
	CNWmBfMk1yY1OsE2Sss+eb/j3pzGpX4zIWezyG/vc5wdOxhxfDxrvbOTrbPx3e62Chx5mPKzpMRup
	C7pJAT4rJiWAzOpsmBGHgzEh2VnCErR0plw5RXbLu6oQIXZr76KcLvwJzqFU/ZO111n6wUPsypXd/
	/icPAcktBN77emCFE+KBbq2ftCjbd5w8yIjeK9G23sl7Si/1kkczq815V1FmFyAG/zdT7gX7KFPR/
	Nm4xwOlrCmqsdbq4ckeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVPoQ-0007vy-Ay; Mon, 04 May 2020 01:22:26 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVPoI-0007vE-To
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 01:22:20 +0000
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id 0441Lx8f030417
 for <linux-arm-kernel@lists.infradead.org>; Mon, 4 May 2020 10:21:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 0441Lx8f030417
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1588555320;
 bh=w6du8zRDwlzzQ3j9xUVVgBtnqj2wcYyHezkuilzoEsA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Ak68PLsL7z44HNFWs1hAjY+pLc5amBWXk/8rzZqm4VXXZr/hUviQmnRgrTNV7EMAg
 NR8I9CcDGJ5VqZDUEaFIG2olRYnVaHKR6rkXTujV8iyRuLYLpkihuHBhgJWgZbtQdv
 pKRdQbMGYvWSYRyQ0+ZwmAnRsFREL5Z421qamOHI/fGCYGw2wZoW5Lap4XYql/+Ier
 lq2Wyg8a488c6N/UlW3GysGCz7zxTmRGNIWynL8Cly762JypAGwB73J1QkGU9w/Ar3
 EzhoYApexCkWLgQk0+Fd7g6+jMdeBm9lsAu3glgBLQj2bOGJNs8KTrCzCVfxBPGlrh
 yRbQ1uBVf23dg==
X-Nifty-SrcIP: [209.85.222.45]
Received: by mail-ua1-f45.google.com with SMTP id b6so5991365uak.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 18:21:59 -0700 (PDT)
X-Gm-Message-State: AGi0PubgmCjczbfA77xI+nbFgHmq/UocZG3mBgKHAb5cARRKyOJEHoL+
 yPO16ZdmwsrwjEqDQcz+zRsgAurm7g1XLWnPhYA=
X-Google-Smtp-Source: APiQypLjKkik/oU0uaF0Sa5oHB/Eq0P7Lq/E4EF2AFVTKCbqfJYAJshSIaa81QHlR9nLAp2HvozgBfKSCEqho6ugbp8=
X-Received: by 2002:ab0:cd:: with SMTP id 71mr9187041uaj.109.1588555318441;
 Sun, 03 May 2020 18:21:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200430222439.0ae1c4fa9572c8487fca96b6@linaro.org>
In-Reply-To: <20200430222439.0ae1c4fa9572c8487fca96b6@linaro.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 4 May 2020 10:21:22 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS7U-SxEhsdfAr=ioOP0DGksTWhW1hDVA4AN8a6YG-t-w@mail.gmail.com>
Message-ID: <CAK7LNAS7U-SxEhsdfAr=ioOP0DGksTWhW1hDVA4AN8a6YG-t-w@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] dts: uniphier: Add Akebi96 Board support
To: Masami Hiramatsu <masami.hiramatsu@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_182219_205832_791F1618 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 DTML <devicetree@vger.kernel.org>, Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 10:24 PM Masami Hiramatsu
<masami.hiramatsu@linaro.org> wrote:
>
> Hello,
>
> Here is the 5th version of the patches to add a devicetree for
> Akebi96 board.
>
> This version removes redundant setting of RGMII, fixes some
> parameters for max3420-udc node and add the address to
> framebuffer node name.
>
> The Akebi96 is a certified 96boards which is based on Socionext
> UniPhier LD20 SoC. Most of the part is similar to LD20 reference
> board, but there are some changes.
>
>   - MAX3421 USB-SPI chip on SPI port3 (for USB gadget port.)
>   - Simple frame buffer with 1080p fixed resolution.
>   - I2S port which is connected to aout1b instead of aout1.
>   - 3 serial ports, only serial3 has CTS/RTS.
>   - No NAND, only eMMC on the board.
>   - OP-TEE installed firmware.
>
> See https://www.96boards.org/product/akebi96/ for details.
>
> Thank you,
>
> ---

Both applied.



> Masami Hiramatsu (2):
>       dt-bindings: arm: Add Akebi96 board support
>       arm64: dts: uniphier: Add support for Akebi96
>
>
>  .../bindings/arm/socionext/uniphier.yaml           |    1
>  arch/arm64/boot/dts/socionext/Makefile             |    1
>  .../boot/dts/socionext/uniphier-ld20-akebi96.dts   |  189 ++++++++++++++++++++
>  3 files changed, 191 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/socionext/uniphier-ld20-akebi96.dts
>
> --
> Masami Hiramatsu <masami.hiramatsu@linaro.org>
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
