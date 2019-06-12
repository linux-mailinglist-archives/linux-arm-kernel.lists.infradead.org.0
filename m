Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE5B41DE9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFIcq+nyG/xnbzToUFoGCi3K8iABeXDF7m63BncWLEM=; b=YnIjzNqsUqsFiz
	d76TfJRa0HV8JA9mgTASpaUW3r1GU45Ay6em4b5+jeeu9pRdWyAkZzlwBEDpM+Sq1EyLEWcGw8yJ1
	9jle1zYYQ2puu/TnKBRGjrTwK1C/2F2Ssuqnafxz5TPvrMxiw/rvtrx1wc2+SN0ukA14rn1pvbTof
	caRuoHG6YWv3KjXEJ4TaQZpZM/c2YxlkP39vRBY8oe7AnhkASCJ1i3A/uorxERQ/EO2ADMuCdTgK/
	04lKgN8t9wH2kIy/M0S3Fvz/2ftAkt8CG/wjr3lCX5cH8mYRTyM+38LrPYmwSvy5R5MvxhTIPBb7o
	P/6uACS8Gk+ebDNlYWig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxqP-0005zT-Vu; Wed, 12 Jun 2019 07:38:54 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxq9-0005z4-GY
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:38:38 +0000
Received: by mail-lj1-f195.google.com with SMTP id v24so9830469ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 00:38:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bnmXT9mmOWV+x7GAg5lcfCPJbqSVqRhbaGL9wYjiOi0=;
 b=hi5Fh1uRN4ZbhUugyhUlW5mWvRWMP+/Z9mqMB+/rX+x561MR0UsQrycbwYNSy5YaPD
 ixJvUpjRaxmlrpeH8DXZJQqudHeW/U7hFluPp8hh9YaprDDDgkM/8TVcfPlHfF+zKW5/
 EpxMdhhON0gdnjr3qBNkcT2H3iNai4yj4Kue4g9h7DQoGyWlH0TrYoUv0V9hsyTCnylP
 NZGTdmq2nDBdZvGJa7RmfvDN4G/updhfLLlKXo7L32fDVQ+7+1PlpDXzTnc6OjPoSHCY
 f0t/ZQcXknhzAVYcyCYBODqGpXuo18broUsaB6ygXIU5s7sdGH/XJ266LTlMuNss3rhO
 ZdLw==
X-Gm-Message-State: APjAAAVPwB725uO/oclNqfU9N6pyaKEc4Y4lhZ7uRzccNIXlqJjPHp8I
 4Q2QrixFuJymKO8ErpkZJuhXGdsxVMU9ldk+cYI=
X-Google-Smtp-Source: APXvYqxqRLtQL9Co5rZxDEv0QL+XIRKJtD8OXVS6oAdkU2zQaiDyUtWDgJdrV1nNYoZ5IuDhR4ZnxuLvd5BeCDAvhxA=
X-Received: by 2002:a2e:989a:: with SMTP id b26mr13664039ljj.31.1560325115605; 
 Wed, 12 Jun 2019 00:38:35 -0700 (PDT)
MIME-Version: 1.0
References: <1559918173-30577-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1559918173-30577-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Jun 2019 09:38:22 +0200
Message-ID: <CAMuHMdVk7XX3Ugy5KYwd-A+fw4gt+7n4+0ubRL3jtrrBNZbfdg@mail.gmail.com>
Subject: Re: [PATCH/RFT] arm64: dts: renesas: r8a77990: Add cpg reset for LVDS
 Interface
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_003837_546481_D2146CB2 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kaneko-san,

On Fri, Jun 7, 2019 at 4:36 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> From: Takeshi Kihara <takeshi.kihara.df@renesas.com>
>
> It is necessary to reset the LVDS Interface according to display on/off.
> Therefore, this patch adds CPG reset properties in DU device node
> for the R8A77990 SoC.
>
> Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> ---
>
> This patch is based on the devel branch of Simon Horman's renesas tree.
>
>  arch/arm64/boot/dts/renesas/r8a77990.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> index 83cf590..547e970 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> @@ -1766,6 +1766,8 @@
>                         clocks = <&cpg CPG_MOD 724>,
>                                  <&cpg CPG_MOD 723>;
>                         clock-names = "du.0", "du.1";
> +                       resets = <&cpg 724>, <&cpg 724>;
> +                       reset-names = "du.0", "du.1";

Same comment as for r8a77995.
https://lore.kernel.org/linux-renesas-soc/CAMuHMdV8Mg2ao9EwrLkiHF53Y_a5RKyvaqAv13uPvqTr19K++Q@mail.gmail.com/

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
