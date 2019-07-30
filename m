Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 404D27A3BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/yqD9vY3CUXYR5UtZcIlKsJBdspuqHkJXdbaVQ3eRAI=; b=fiuim0f6Ed7IeG
	hvj23f8vbHOSZMJt81sNlpu1zOEBK8zil2BfEcvmfSRpCH27/tfVpU5OIfrGEJI0/uP6FHKjN/YIy
	kclzvJeRRti0Q5xlMo3PGKEzdtq/swnJVYPVj/sPsA5UMLHdg2Z4+8UJutixHRd99gEDulWgWro++
	qMEZu0WC+XTPN39jsfJf9VG/MMrk+QYKaCi/ea9a3dIGY2g5uCnvI2+jVO08OhxH+wLv8A3LK6a8a
	uQjNXddx+rYIoO3HuprzyuxKrUV6QpMJq/d1Qwqi+gzm5yFxj05WBCqBo72zZDvz/+9hgmDMlWBjC
	dDLgYcqvEoSWYP7FWMWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOCF-00043L-HZ; Tue, 30 Jul 2019 09:13:27 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOBr-00041V-If
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:13:04 +0000
Received: by mail-wm1-f67.google.com with SMTP id 207so56399445wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:12:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZdzMobYUwq2ZULfPBMLs1rbn9/+VYycXKoQFmA7wzHA=;
 b=maoSsL99+snVWqjD3jT45jsbsjnhLzMjGsY+6ZNz/yCYgOwg0TPb7C4L7U3AzqymO/
 pYbehpkr7XPeKGeBsVbT8SM7aBL+5xbAfQjAGvaplyAxbEQ44ru3K1a9OB3OAYw9nR51
 7rlRXNJp3QyaDif5kKq+/62iykdKB+3ueMChnfmDemasmooiTYJCSqtlcc1xFr3BnGF0
 xZCOKO3NJcU5ariyEohAV51HqjKDOiMzgnsUMxlFqjM/OePSwmG5EXcPUlhHBUU6Bqjc
 YsilnW/5TvCnKdGyLqAmb1n8Qm15Vfi43chLRKgOANccPPzjw9e2VZw3uBmQYgQ/vITt
 TN8g==
X-Gm-Message-State: APjAAAWPw1bCqRZf4W/pW0GcVJGekRUhHTVN8OVya8T5cUQQ5SfN4BCK
 Y1Pfm8mkM/pZwenr23Oj6HITHEfv3s7ZEvVsaZc=
X-Google-Smtp-Source: APXvYqy4bZTMMkFiuhItLBqjH/dgVkj/98T+vxp1Sb/90t816n8uKjofi8jVlSr1vm0LuEimV5KJdaZdkadYqGBRLSk=
X-Received: by 2002:a05:600c:254b:: with SMTP id
 e11mr97149223wma.171.1564477975098; 
 Tue, 30 Jul 2019 02:12:55 -0700 (PDT)
MIME-Version: 1.0
References: <1563904990-2873-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1563904990-2873-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Jul 2019 11:12:43 +0200
Message-ID: <CAMuHMdU8TJKB04VA=Nwz0SOR2q8jj7b+kFRhD-1_POLbhPoABg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: salvator-common: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_021303_706505_13564FCF 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

On Tue, Jul 23, 2019 at 8:03 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> Sort nodes.
>
> If node address is present
>    * Sort by node address, grouping all nodes with the same compat string
>      and sorting the group alphabetically.
> Else
>    * Sort alphabetically
>
> This should not have any run-time effect.
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

You forgot to sort the i2c slave nodes.
As this kind of patches is hard to rebase and rework, I'm fixing that up while
applying:

--- a/arch/arm64/boot/dts/renesas/salvator-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/salvator-common.dtsi
@@ -462,20 +462,6 @@
                #gpio-cells = <2>;
        };

-       csa_vdd: adc@7c {
-               compatible = "maxim,max9611";
-               reg = <0x7c>;
-
-               shunt-resistor-micro-ohms = <5000>;
-       };
-
-       csa_dvfs: adc@7f {
-               compatible = "maxim,max9611";
-               reg = <0x7f>;
-
-               shunt-resistor-micro-ohms = <5000>;
-       };
-
        video-receiver@70 {
                compatible = "adi,adv7482";
                reg = <0x70 0x71 0x72 0x73 0x74 0x75
@@ -527,6 +513,20 @@
                        };
                };
        };
+
+       csa_vdd: adc@7c {
+               compatible = "maxim,max9611";
+               reg = <0x7c>;
+
+               shunt-resistor-micro-ohms = <5000>;
+       };
+
+       csa_dvfs: adc@7f {
+               compatible = "maxim,max9611";
+               reg = <0x7f>;
+
+               shunt-resistor-micro-ohms = <5000>;
+       };
 };

 &i2c_dvfs {

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.4.

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
