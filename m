Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD7E1B4C8E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 20:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kj3C8WdcTRu7+pTQqUdnkYAL0TGfXHtu25u9293O/oM=; b=cXWKWYM/M7Srgi
	S/D+ocbUz09L6aOIGw95XOap0L99ohTCXKWHmRVdBGnqElWqtyfg2arlmPc1APmZrlyRQ0c+CE4nj
	2z7sZjSk5LnoQ9yoYY52GRDNzykEEb4l5EHy0XQPyz/zWBeQ9oELgJ5/GlbGye2csVs18ew82CJr+
	z9gyeC4oYh6CcjVn0oAFqfE46AP2pQ0Lp7GOws1UZdXD1dGU7ZiZzZzyzFCZvRNDkZ+novR9xS+Fj
	O8TrUYVLOtaxXt8Jy2ziqCdCO6c/7M4V/mmC3dePwnT/p4/LCJhV/ZyyUjzk4x8YDygGQwWTWroEX
	n3Atwg06jTYLWOjLtamg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRJwT-00037e-6A; Wed, 22 Apr 2020 18:17:49 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRJwD-00035f-VD; Wed, 22 Apr 2020 18:17:35 +0000
Received: by mail-io1-xd44.google.com with SMTP id z2so3433107iol.11;
 Wed, 22 Apr 2020 11:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/O8wxkOyz2zqjTvXW5zmlSLKb1rtq1CNhNBPyoq68Ms=;
 b=Mltae6nP2Mbpr8cAm/sWdOn8rNtI/OcVNw/eOS5AvECfCyKKYKWRzhTgMTN3KuMQ12
 YDZoIz+eiUNnrsrOWB2JwH2pSNIf90p+8OyeWU0Zl7mGFkke8HotD8oCtnI8IyC7s2OT
 WljR0uyIlHxHgxXMprKYW+Y+Zhsdv2uCsFJBsAHwIRdNQRPbbICBZCLMf4xL0yRNKKoy
 QNAg2vy5mimsD9CYhdFH5ROCZSZa1vBEE4Sy7gEXrM1IUiWxScpvUbbtMpx5iUjz2gXa
 0bCQd9lcEQC6Q6rAyVfn3Ne/HQ4hceLPJOyjh2LqYZR5BDbcoTqmup1GpQXmronZ/dww
 h0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/O8wxkOyz2zqjTvXW5zmlSLKb1rtq1CNhNBPyoq68Ms=;
 b=g2PBlWvFC8uOFCraG9b2ziuKsiHp77Lbu/Whoqoi/GV/IGR6+bfZkBDXE73g1IJXvH
 1znCq/G15GrYWQbes8l/GufqvCejdteugMgyROEd8Fc6emV3mVq2lJIHDOgEuqHgJMJK
 iS9wLf33c9w/ZaFWAljcfz+SuoZANFAfFo5fRZxSr+c4LW8EmsP5hfMscmS35QhKVy4t
 VcsA2IGCmH/rrxp/6RHV814wf5zKY4gUHFgDFTapxwOe8dhZwJ0nbBCfYHks35x+TYwC
 kg0kyqUaQupIfgc4YjHP68BM4bL0r1eHf9jat1oxrDzfQJS+b34GnpRwzJLMWhItrWL3
 FgbQ==
X-Gm-Message-State: AGi0PuYT2Clhbc46uEYi8Wde/9Y6PNHK7H8HPdZC2NL2gnMhmimhyMRl
 RikoVsiwU9VF/9AmYQ9Ac3Q2ZkKzpd7vsDzz/dE=
X-Google-Smtp-Source: APiQypLi5JAfufXmUiHGVYgFDJyCS0FH1GWVjaU1HKRYJC6SB/+hStZS40jpXRvlDRPyXafhRd4YtWORgk95NeW/zck=
X-Received: by 2002:a6b:e802:: with SMTP id f2mr26865444ioh.128.1587579452616; 
 Wed, 22 Apr 2020 11:17:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200328003249.1248978-1-martin.blumenstingl@googlemail.com>
 <20200328003249.1248978-4-martin.blumenstingl@googlemail.com>
In-Reply-To: <20200328003249.1248978-4-martin.blumenstingl@googlemail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 22 Apr 2020 23:47:21 +0530
Message-ID: <CANAwSgTYgDDodsTbWsuWSgxh7vhci7PLKa14iz-7gF1BuRdgjQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] mmc: host: meson-mx-sdhc: new driver for the
 Amlogic Meson SDHC host
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_111734_002070_83E09CF5 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree <devicetree@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 jianxin.pan@amlogic.com, linux-mmc@vger.kernel.org,
 Linux Kernel <linux-kernel@vger.kernel.org>, yinxin_1989@aliyun.com,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

On Sat, 28 Mar 2020 at 06:04, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> The SDHC MMC host controller on Amlogic SoCs provides an eMMC and MMC
> card interface with 1/4/8-bit bus width.
> It supports eMMC spec 4.4x/4.5x including HS200 (up to 100MHz clock).
>
> The public S805 datasheet [0] contains a short documentation about the
> registers. Unfortunately it does not describe how to use the registers
> to make the hardware work. Thus this driver is based on reading (and
> understanding) the Amlogic 3.10 GPL kernel code.
>
> Some hardware details are not easy to see. Jianxin Pan was kind enough
> to answer my questions:
> The hardware has built-in busy timeout support. The maximum timeout is
> 30 seconds. This is only documented in Amlogic's internal
> documentation.
>
> The controller only works with very specific clock configurations. The
> details are not part of the public datasheet. In my own words the
> supported configurations are:
> - 399.812kHz:   clkin =  850MHz div = 2126 sd_rx_phase = 63
> - 1MHz:         clkin =  850MHz div = 850  sd_rx_phase = 55
> - 5.986MHz:     clkin =  850MHz div = 142  sd_rx_phase = 24
> - 25MHz:        clkin =  850MHz div = 34   sd_rx_phase = 15
> - 47.222MHz:    clkin =  850MHz div = 18   sd_rx_phase = 11/15 (SDR50/HS)
> - 53.125MHz:    clkin =  850MHz div = 16   sd_rx_phase = (tuning)
> - 70.833MHz:    clkin =  850MHz div = 12   sd_rx_phase = (tuning)
> - 85MHz:        clkin =  850MHz div = 10   sd_rx_phase = (tuning)
> - 94.44MHz:     clkin =  850MHz div = 9    sd_rx_phase = (tuning)
> - 106.25MHz:    clkin =  850MHz div = 8    sd_rx_phase = (tuning)
> - 127.5MHz:     clkin = 1275MHz div = 10   sd_rx_phase = (tuning)
> - 141.667MHz:   clkin =  850MHz div = 6    sd_rx_phase = (tuning)
> - 159.375MHz:   clkin = 1275MHz div = 8    sd_rx_phase = (tuning)
> - 212.5MHz:     clkin = 1275MHz div = 6    sd_rx_phase = (tuning)
> - (sd_tx_phase is always 1, 94.44MHz is not listed in the datasheet
>    but this is what the 3.10 BSP kernel on Odroid-C1 actually uses)
>
> NOTE: CMD23 support is disabled for now because it results in command
> timeouts and thus decreases read performance.
>
> Tested-by: Wei Wang <lnykww@gmail.com>
> Tested-by: Xin Yin <yinxin_1989@aliyun.com>
> Reviewed-by: Xin Yin <yinxin_1989@aliyun.com>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---

Please add my tested on Odroid C1+

Tested-by: Anand Moon <linux.amoon@gmail.com>

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
