Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF67494D78
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cU840Juv17ftdVi7amBcBUF61pd9Hie8gDqxv0fqYC0=; b=WiIUoDnkFTUsGq
	pHATu5NYmgvkewxr1zoo3gYYTdChxwPEdE+6RuKg7zMJEKLrjnH+WLF0ip+ewmu3R1AAavGR+BCrY
	GC1lCYDBl+4SoGdFxrvGOKFZxkxo6XkF/mvmsnuTm4/dGsGQXQ9KYn2K0LgwE/EREKWFTwd2W/4pE
	f+novAcQ7DnluehculVgto2fdt0/6pHyLhQg3DnqAEJ90xPzzH06Z7YnXRYggLirVi/sXOL4RrPUu
	x+wvsinPdzc30DngVYu+khmzJx4gEZf1vNohvcE8kYy2AuxSwiCu+2lV6eUx840nUv91wJ/3jHUBh
	oH9lh4VIgwuaH0jzjMQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmxx-0005vS-8N; Mon, 19 Aug 2019 19:05:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmxd-0005v0-TB
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:04:59 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56CAB214DA
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 19:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566241497;
 bh=g+l2+zh4XmFO/8rBiCLB79CWSua+bEB7GY7mMkA0vfY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Zb6DGbwP1Y5p9aufmWC7I/NvG/liUM04r4ChEz3Z1PEPWxgJ2GkzaxHnqPJJtnclj
 hnRiu9+1BXePWtrJoTEG93wG1o4FOuBF1aFb3lpZI4bjUXew9iF24UnHGBVPBG77Gb
 v/lHDWjcmkJ0fwDJUJHCjzbALTkE3SsrpQ8NtL68=
Received: by mail-qk1-f182.google.com with SMTP id u190so2362409qkh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 12:04:57 -0700 (PDT)
X-Gm-Message-State: APjAAAWkY/l0szStDJUTB8SZmrn1gxhSYkf/viB1aruAzE+ZLFMG6Gc/
 pyuRgtFOKvulfeM31zXTypWFP7jf+oOKkHx2Pw==
X-Google-Smtp-Source: APXvYqwA2SjNSoVoQTjKoWrws6Xv9owHy2CJpILgSiuSxS3tYOqCq0Hh+e2lXIQ4Qhqn6fxIUQ08R2wQZn7Rxv135B8=
X-Received: by 2002:a37:d8f:: with SMTP id 137mr21480176qkn.254.1566241496563; 
 Mon, 19 Aug 2019 12:04:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190819182039.24892-1-mripard@kernel.org>
In-Reply-To: <20190819182039.24892-1-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 19 Aug 2019 14:04:45 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+jb+jVLuXeEDVwu19_4YinZEyD9Q5-=-ZGS7YoCrf=2Q@mail.gmail.com>
Message-ID: <CAL_Jsq+jb+jVLuXeEDVwu19_4YinZEyD9Q5-=-ZGS7YoCrf=2Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: watchdog: Add YAML schemas for the
 generic watchdog bindings
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_120457_963853_6377AC3B 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Frank Rowand <frowand.list@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 1:20 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The watchdogs have a bunch of generic properties that are needed in a
> device tree. Add a YAML schemas for those.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - New patch
> ---
>  .../bindings/watchdog/watchdog.yaml           | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/watchdog.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
