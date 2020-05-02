Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8240F1C254E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 14:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+YpudsWS+2B6Go6tDU+oURepHw5xbuyn15/LJYA4liI=; b=qdOHVpjPoeFAqY
	yTPLEqh9iYRRHNIMCnMPRMGSTDnFiJJOneCaqZMRa/cB3oVgIzjmJb8f+Zww8oK1edC/f5Zl91zQ1
	K0Fcj3E3iGXpz5FP0RYsFUQRQ2ZOYIcAPeO6q4CoR0CYByJvztC1lCrKjMJOEa6EG0aOrMlqhh5Y0
	SGy5GkAwE6Iwwbw2CM979bRXbs/RTpoQJ2miW9xq67nkbJMH54IXeYvTBaspxZQf8eZhYrXWNjj/p
	AwZiCjhH385TbwWDY6tXryCfByqo6tRw8DOUQpVZjCr0dMt89zFW95BLUsdYngxksoTpKFTYaoS6t
	AjaQ/1AsVgljB7pD6/8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUrJK-0004uw-9Q; Sat, 02 May 2020 12:32:02 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUrJD-0004ua-2N
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 12:31:56 +0000
Received: by mail-il1-x142.google.com with SMTP id c16so6832177ilr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 05:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fgoH8rWRDI/PbUnxgxiFsD6XVhiop1SpajRlUIN+Oco=;
 b=AVj1+G8Up1VQJVrTlIQpNLvPVV9Wkqudp5nqxmAikkUlcsWJdsnNs/FIZ9AtlkZkFx
 /czLyFq5gPcrlRiAVGTvE/lqErkikswZ2FXy1ncn8DpDyKF0mV9TR2mr8a3xy6ESJ/nM
 XWg5Eam9Uio1at5SIsA5PtnSagaQzwx8OopK1BpW7oi3WRGYchbEMvJ3q8+bf13WufVA
 ZDsa0wIA5FMi7PjmGgm/+bMKg4zKqd3vVuPm0H5G1RpGoeQGuE3eezikFaH3mLN9vwmh
 gL+CXUSkbLnSbdshtZh5vlO09AOJOfLeg/yHCEFOI02GsfjuGVAv15zrU/D/lf/LJjRJ
 Jzmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fgoH8rWRDI/PbUnxgxiFsD6XVhiop1SpajRlUIN+Oco=;
 b=ZRVU+rrcvvvKeLIZ4sZuZFWxP1KN8yrYIY4JPQF4aS/4NLflqxhQq+l27pkJCANPuK
 x5JecH/IZ8l2tf3sdPmRHzDbeSD/gpKsQfRyhvyK08T+muzolWIGARPhsdyqAJBdty92
 iVC3+Bj66jxvizhrKJapn5D01WAZBa9rjyAlZ5lVYkrPj4UvKlUIB20S9Kx48fIFejLc
 HX46SG9di9fGci+J9Z2bKc1WqTNGZVRPBTaOnH9GsgyIjBIbo5VuWdHr0azKCiFdQ744
 9kEg0yIgh/saVyIBZe+to7ZbG83QzfyPY1N0fGaGH6rjHERAao9l9C9yC3YvHvSzNPnW
 PfUw==
X-Gm-Message-State: AGi0PuaEcov9/1x/97/J6XJbO7ElOqLYvldSYxGNNsWcopWttAHEJ+Gn
 6ai2CxrIv0Rh1InXVqFRyX5Hzi0aFlQV2U1HaXmADe38IEM=
X-Google-Smtp-Source: APiQypJHTVygTlm3uyDu7YafDrHABrINeBqBAiUQVWG7p7zY1ObzStEJ3q3g7DjLjaDfPw4PGNZTm8uUfwW+ANSBL0A=
X-Received: by 2002:a92:c144:: with SMTP id b4mr7893681ilh.89.1588422712733;
 Sat, 02 May 2020 05:31:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200306105939.1233360-1-aford173@gmail.com>
In-Reply-To: <20200306105939.1233360-1-aford173@gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Sat, 2 May 2020 07:31:41 -0500
Message-ID: <CAHCN7x+ZGgs__ZOg5qxz0yoZBsMN6Ps_btG9smi8C-gL0jAN4A@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Enable AT24 EEPROM as module
To: arm-soc <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_053155_108497_A003A5F7 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Adam Ford-BE <aford@beaconembedded.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 6, 2020 at 4:59 AM Adam Ford <aford173@gmail.com> wrote:
>
> The Beacon EmbeddedWorks Kit based on i.MX8M Mini uses an AT24
> EEPROM on one of its I2C buses.
>
> This patch enables the AT24 as a module.
>
> Signed-off-by: Adam Ford <aford173@gmail.com>
>

Gentle ping.  I don't know who the right person is to ask for this.

> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index ab71a407288f..8018a52f6792 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -224,6 +224,7 @@ CONFIG_BLK_DEV_NBD=m
>  CONFIG_VIRTIO_BLK=y
>  CONFIG_BLK_DEV_NVME=m
>  CONFIG_SRAM=y
> +CONFIG_EEPROM_AT24=m
>  CONFIG_EEPROM_AT25=m
>  # CONFIG_SCSI_PROC_FS is not set
>  CONFIG_BLK_DEV_SD=y
> --
> 2.25.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
