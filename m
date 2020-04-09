Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AA01A3093
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 09:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDxUlYHQPqIQznmvaGifwjmJktgKqjBTETdyA2Cl2rU=; b=odgvyfXo5bNGO/
	+S2cn32MgQXIUqAE73M9pBqsdAzYHCLfPHi/jVy6RBwCsuLRTAiPPbfI/55mdnXBcWu1g6PJf1LnW
	Rmj3G7jrXwCfmZ810H47/Tz7XNZEJw1VwVbNfFcX6Dh9rVAvQ2cqmS8ehSek42mBKdG0lh1qcCyAq
	9oG6HpQXlh4zDEp3NED0cMufSl2ktHvaIYpwSGJTGF6AjfHt8EJLuXcYzwUF3653melO9FBocXvIY
	tSAXtY6tXoUcPXhLH2lUzV25fuqCcvLTRoTiLe2/pWkFp8/xDviuLDYo0v4MW1kjKqJJm68KfvBKq
	OV71A0EplP320tbxS5eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMS6F-0001qU-24; Thu, 09 Apr 2020 07:59:47 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMS68-0001ok-1i
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 07:59:41 +0000
Received: by mail-ot1-f66.google.com with SMTP id 60so6704935otl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 00:59:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=odb2Q3M613rxo8OxAhrShA+WmuAEME3Qt4cAGc4SX3o=;
 b=Y6YCMAxAf/PAr0inGK763IvxS8Srkyki37+BQ3hQmj56Vw8oJzJK/qM2nSfYD6a32Y
 sniRwOYIoAw5y8tRIabeTW7MUNY0Pxyn7zxEe0w1QF1bnCBjPCmqYmtzutkiffwVbfHJ
 FUjK9AsGJX9pm66ARs2JFPleciXKqYwkix1dwQ33WiHiQK79Xf3xm+AqL72Ihn1J4SVQ
 kX80B2lClhOVEKGnXvz47u2hVHfUE4Mdsyi5O2vmWPEbQOfRRelNfs2r3CuYejll9DQA
 aaPXMcmKLOZNar86Zvis2b2elTZpcPph5KPqXP4UD3z1iRcZpK7qWedhqL/Y3AY0XJuA
 yl5A==
X-Gm-Message-State: AGi0Pua6xgxG59tGdu9pHQQx54i9GzZ+0Lfi/0QVwS9ikEjNCGNDx45T
 Pf53C+xEwNIYdV1cnPGgyCFPo0d6Z4A7QuKZ0Qc=
X-Google-Smtp-Source: APiQypIwLGFr/jdWrggd9pMzZ8XzR9IDckoirhkGh/VmjMs+c/1i3ULZTSYcpQ0W+PMEd9n07j8F4mPg0hdjK9A8+Ds=
X-Received: by 2002:a05:6830:1e0e:: with SMTP id
 s14mr1809269otr.107.1586419178787; 
 Thu, 09 Apr 2020 00:59:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200408143040.57458-1-max.krummenacher@toradex.com>
 <20200408143040.57458-3-max.krummenacher@toradex.com>
In-Reply-To: <20200408143040.57458-3-max.krummenacher@toradex.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Apr 2020 09:59:27 +0200
Message-ID: <CAMuHMdV0Yj-ZbjfhhfmsYOfPo-D3ZOUyMJzpFV7n+5GNVLyZdQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: defconfig: add DRM_DISPLAY_CONNECTOR
To: Max Krummenacher <max.oss.09@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_005940_090531_A78CEE3F 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 8, 2020 at 4:30 PM Max Krummenacher <max.oss.09@gmail.com> wrote:
> Add DRM_DISPLAY_CONNECTOR. This got introduced with the bridge rework
> Which renamed among others DRM_DUMB_VGA_DAC.
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
