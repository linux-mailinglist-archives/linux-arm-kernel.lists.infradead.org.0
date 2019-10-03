Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BA6C989D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 08:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ek/04OMNdQ0wSvWI6xx3d+S3OnH3s1cOgUDrZin3E0w=; b=pTMr3b2LMzxmaH
	wywldB9/F+UlaAsr8KSrivrDWRHRHO8rocvmw4PUTEm4nA1IF3asPK9CY+gjtio8mXBsMJbJEHu/5
	KDqbKtYpNqRaNOHGvyoqYX4fOyzds7ODvxeJMw8e4G4gDRmuGKV9o7JcrY4EOTtLoDG7lBM3JlD3B
	E2jQvlcxCX4FzGLu6IEJ9PvXDdormT+46JBl+vfsVZsbEbB35JumLN/X6DcSZCkPEWemsg0S2byEY
	SddOKjZusLxx7oAmHrw252O8yi1B5s5Hll3pUhER0H6qIHbalI9QWh25i11mXx6+v9ivXa3ZAajKT
	Rv0Brwi6jusWRKugp3EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFuwz-0000FK-0H; Thu, 03 Oct 2019 06:50:57 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFuwr-0000ET-97
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 06:50:51 +0000
Received: by mail-io1-xd42.google.com with SMTP id c25so2955170iot.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 23:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZHYvlpN03aN9XlL85X95NOUwb+VywcBIMog6JdvU8/E=;
 b=TPFD+Yd6CfTdFITa1ngVIu7bhHHpMGlesUhtu9MDTLyuP4HMgvy5WMD6yyY9KoFNW3
 ULlEEjL/G+DiRVPDmI16XEM5gcI+L9El120dH3U1ZMT0cm1lcBnN6D4y2tXwllLYtcPN
 nc2TkrkJ2eYpF/SLjZO42qi/FTcx1ZBzS8t0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZHYvlpN03aN9XlL85X95NOUwb+VywcBIMog6JdvU8/E=;
 b=QWn0+Q6iVwaZ3YKE2B46+bhPWMv2dhGcLAeedluwY+11gv4DPzy3at89AwJJmJyQ6K
 ZShpH5gVXJUFnaOXjE12vgwh4rW8+ipgiveZH4e+1VxjrBP0SVLJX6ZdBlzUqx+2mA5Z
 eQZIbIOkK+rpE3f4MgdJx0R+75R+qgR38OhuCPlrsPATretNhe3+KQU9yr0bkEiMwAGU
 uoVV3F96w/51HIktGGq480ZfcXUK78QubL2JtQG5vQRnO2ZFAyvMRze5CJHv8r2ZqHA+
 sBWiTSqWuDv5OeLJryIG2Y9+fslt6sgvY6GESd1BGgMVNwCM3sbd8s1VYsC4lC6+LXWQ
 YRVg==
X-Gm-Message-State: APjAAAVXz7BjeE3UC7+XgD+CjN4tSgyog1pJ2SJKKFn/s3z4+9zzD2AX
 y+OAOlRQwHKl2gQY7BXqEQPtkA0oUUY7aNmdjQOC4Q==
X-Google-Smtp-Source: APXvYqxidNtZbs0x8HYndi+juRNw13gBCSF4Pfuk3ENR73KLAzRF4+IeuTb4FHlPvke2H95mbMi4Mwo+TGNlA/lh/QE=
X-Received: by 2002:a6b:2b07:: with SMTP id r7mr7235777ior.173.1570085448370; 
 Wed, 02 Oct 2019 23:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
 <20191003064527.15128-8-jagan@amarulasolutions.com>
In-Reply-To: <20191003064527.15128-8-jagan@amarulasolutions.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 3 Oct 2019 12:20:37 +0530
Message-ID: <CAMty3ZAHPWOn=h04AjGLf33uGhW4MxqpU4z1izGp0BgUmyOiLQ@mail.gmail.com>
Subject: Re: [PATCH v11 7/7] ARM: dts: sun8i: bananapi-m2m: Enable Bananapi
 S070WV20-CT16 DSI panel
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_235049_327455_BD5F328C 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 12:16 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> This patch add support for Bananapi S070WV20-CT16 DSI panel to
> BPI-M2M board.
>
> DSI panel connected via board DSI port with,
> - DCDC1 as VCC-DSI supply
> - DLDO1 as VDD supply
> - PL5 gpio for lcd reset gpio pin
> - PB7 gpio for lcd enable gpio pin
> - PL4 gpio for backlight enable pin
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---

This would be an overlay patch, which doesn't need to mege. please
correct the same.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
