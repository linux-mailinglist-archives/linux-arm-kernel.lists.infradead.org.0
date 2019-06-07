Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 466C9398BA
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 00:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qyv0aFNy6N8DVxAGwppttOdbbbsiTzXCvxkzLrbIK+M=; b=eAXdjtjgyCd49r
	/PdS/8T5TtCZ/fMBNiyHvI2DQA/HuYewhGeFDZT73SDzRSUtRwKYhNg5/5LPn87TKpF92ae1aKMHU
	wBQipLK49shK0Rtg8odaDfrsDDdAvJRhhp0nQ1IG7T7qUfS2vGbII+KE9up5I055RZ9Dt6gdTSrWX
	Or4Pk2Zai6JssdqbyUVc8/451wWekDzO5MZJhu9WhepGL6iijSjx8qo814vU2hh5GwhAR5TG04IiP
	L4PyikLE0z/Mg47HXotDtz3bJc3XhhQtoJBG54netoRKayek1Z3spHuYKCs8+O11X0gUimxCco+OG
	zMqDgarVihg5DMyfJ0cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNOU-0002x4-6x; Fri, 07 Jun 2019 22:31:30 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNOH-0002uS-RL
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 22:31:19 +0000
Received: by mail-pg1-x542.google.com with SMTP id d30so1855682pgm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 15:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=DjeIfF6JVcOuy3AfVkOGht8864fNBaz7bDSsSWoX9TU=;
 b=ZaRcvhRJt+lWFHNijIWNhrnilHwAsieAqy37yaaaiRUxylGw+20sUHDgYTvLwZXoLQ
 7Kz8Wr0w2D1hgQgm8qwXPISrC/NsfiVyGa0Ays+kZ12z05H2xaVjwsSI54FDH+4vgaXb
 DKW2YYHK6FYOHtehJJ7mwFSm272oTXDX/+bKAqtSKIHNTP/1Yc9ts3dK6dNVo5AmMRQu
 RVMEHaN2lksBao7riU/CVRglNW5yVlvDzQVHNpypOeXl6E0z6nWrOK4bVmi0ee634i+h
 U07KQLErwYvKttiJYrkU8RURfL/zNKTY6JyTWFQVTLRM2wWnJUmoAFJYBxrCQoHjEX6q
 g3lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=DjeIfF6JVcOuy3AfVkOGht8864fNBaz7bDSsSWoX9TU=;
 b=FwVxeoMxBdngEhQaqe8bUUwOI0nOn66eqQnyPiOID+JzHqW43ZOz3yls27XVNQ0gWa
 6GMi6NvNiSNoKn8v9R1/GSMfEtFclS6FueBPb0SOK4FPITKTpz7bmQKJT7S4i5Ku1RFs
 Tq7L/3qkTsXKWBtqbHIq8rF58LMa1utqSLBeLTww/23sV+bV53pFqVIClQOTUDT9xKuS
 sS5ewEBUNvTQgiWFxbEa9z1Q4au414hjCBVhFLI1VPzAgYlJXk5rg7Y6AQEG6jXbrBh8
 YEaEh5V0F07WtvYaovAvP6ovwde1wL89/76VcxHfl8C2fk9Obv8ojalgx4T0c15mBzW9
 f7MQ==
X-Gm-Message-State: APjAAAU8H3G/Ni+FD6WufdIm7QOXllUoyTzKAoOD8oPCs8+mdTRT55I+
 /lGqTaZGSm0mQH13c1Rxf8wD3w==
X-Google-Smtp-Source: APXvYqy1arVJLueel+cI+iNSxrU0sdtYKURzlXY9sOv3HhCRaoXzJNw0gelleuoSn1Mvz1PB8ZaEkg==
X-Received: by 2002:a63:514:: with SMTP id 20mr4976382pgf.272.1559946676909;
 Fri, 07 Jun 2019 15:31:16 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id ds14sm2846230pjb.32.2019.06.07.15.31.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 15:31:15 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: meson-g12a-sei510: Enable Wifi SDIO
 module
In-Reply-To: <20190607144735.3829-4-narmstrong@baylibre.com>
References: <20190607144735.3829-1-narmstrong@baylibre.com>
 <20190607144735.3829-4-narmstrong@baylibre.com>
Date: Fri, 07 Jun 2019 15:31:14 -0700
Message-ID: <7ho939auz1.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_153117_899629_C50A5CD5 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> The SEI510 embeds an AP6398S SDIO module, let's add the
> corresponding SDIO, PWM clock and mmc-pwrseq nodes.
>
> Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Queued for v5.3,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
