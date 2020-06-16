Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E97C1FAA87
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=C0345w7F0OUvt9pnelHRv+YK00zMD8MM3e+/cv8DgLk=; b=MYh
	Lz6fj0K4lGixKTwkx/gUzp4tpaQ7yR1jSlCUH1RMthrgQiDy7F/r9qxXwqNZoWjdIYzxTLhFHeiFc
	8maUL7XyYopZPKQBh38hpm/QPzXTjDXZGz8fgGlXUvncWUvkef61WX+AN1wnRr1VkFaz/clCmP26y
	M6CYAkb49ujtQTDFgi9+oyl71MzWC1zcJxUQeiCnN2mqvPovgOB00zEsNyOVWsbQOgLKR1TXkEjC3
	U+muWEwgWHUHgZKAMgWN2uMaOZiQbbC5du1cuU0V6KDvrTTmzqAdG3rZkP59bkUnsFpdC1HUFHvwP
	bjAs1/SdyRqHl9uydZ24P4RyXYQG1yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6Rx-0008W5-IW; Tue, 16 Jun 2020 07:56:05 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6Ro-0008Um-Pg
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:55:58 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ne5so1060832pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MGBpT33yn/vsqpImYxBbTXSn9VvA8+sRFWMD9F5bOps=;
 b=K6CR7Lc/iOsVuBI+I9/0ETWVHGHIJRof5CHq1yBWTVs+N/cs+P2jvmARrC3NA5kKKR
 fos/dfLtk/pGCPgVuRr/bcdtxoh8VsQFShcKPvStGCSTUB2P0VRIFscu6kMrEm/tNN8S
 al+d1LlmZ68cMlZHUW98nwk6/BKJ4q8vbRY1CbIRGXQ56FdbR9fjlj7zUMoIaRyDM3r2
 bWTo56r6dA0OeWTWTvJwJBLo/MeKsZ1A3NiqclIN47SKYjcp1HhznarrkNg8el+WKyuG
 +oYewDGhczadCIrvXsMeb4kE+XUYZ1+NLL86Ag4mSpucx9EAUm1/EuKn6V2liQ2vFM66
 BG9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MGBpT33yn/vsqpImYxBbTXSn9VvA8+sRFWMD9F5bOps=;
 b=LCxW4Fv99+pAmXg820xAGN29jYUYrN6u5jaOR4xKK/wOeUN3X5TwoVvvKRD3O1uAMX
 VA6Heet6LFzsDeutzkRwmQgu2XH6lMnfBQ97XcpUsZuFTa2lYMkMnxpXArYk1PTmpT/v
 WoCTYsR0qLvmHrnig8so/JXWLGIZRUrES0nw4xRFhgVYcU7otXgbgcpZ/Rfy0nT8WpN3
 FFheDo8H+PwHRfa3sT+1KlKWMgJ9qb1OHGKPbNHiZXiNswUPmREl1hX+pon/Hi2WvbFb
 MIdChXUMPXcrCS1LOjOtuSd2wks8iUkv+KkCYR2rlNqMxtUH0kCK+RGnz9BPQrbxoGLn
 cKUg==
X-Gm-Message-State: AOAM533feDGYW69LqIvEib5degCIPGfexBXVPGG+nYDBR6D0eU45PXqh
 BDaOa+oCRK3uqc/ttLgtGvLGrJiE
X-Google-Smtp-Source: ABdhPJzKhSnuZ0J+8Wq7Oq6dgAfWqUIKg0hZeM/FrTZ1mRcJrAoTw0ADNZQuBRPRU79aWybHbw4iAA==
X-Received: by 2002:a17:902:b40f:: with SMTP id
 x15mr991112plr.164.1592294154879; 
 Tue, 16 Jun 2020 00:55:54 -0700 (PDT)
Received: from laptop.hsd1.wa.comcast.net
 ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id g6sm16168984pfb.164.2020.06.16.00.55.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:55:54 -0700 (PDT)
From: Andrei Vagin <avagin@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v4 0/6] arm64: add the time namespace support
Date: Tue, 16 Jun 2020 00:55:39 -0700
Message-Id: <20200616075545.312684-1-avagin@gmail.com>
X-Mailer: git-send-email 2.17.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_005556_833198_A4BBE9E9 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dmitry Safonov <dima@arista.com>,
 linux-kernel@vger.kernel.org, Andrei Vagin <avagin@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allocate the time namespace page among VVAR pages and add the logic
to handle faults on VVAR properly.

If a task belongs to a time namespace then the VVAR page which contains
the system wide VDSO data is replaced with a namespace specific page
which has the same layout as the VVAR page. That page has vdso_data->seq
set to 1 to enforce the slow path and vdso_data->clock_mode set to
VCLOCK_TIMENS to enforce the time namespace handling path.

The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
update of the VDSO data is in progress, is not really affecting regular
tasks which are not part of a time namespace as the task is spin waiting
for the update to finish and vdso_data->seq to become even again.

If a time namespace task hits that code path, it invokes the corresponding
time getter function which retrieves the real VVAR page, reads host time
and then adds the offset for the requested clock which is stored in the
special VVAR page.

v2: Code cleanups suggested by Vincenzo.
v3: add a comment in __arch_get_timens_vdso_data.
v4: - fix an issue reported by the lkp robot.
    - vvar has the same size with/without CONFIG_TIME_NAMESPACE, but the
      timens page isn't allocated on !CONFIG_TIME_NAMESPACE. This
      simplifies criu/vdso migration between different kernel configs.


Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Reviewed-by: Dmitry Safonov <dima@arista.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Dmitry Safonov <dima@arista.com>

v4 on github (if someone prefers `git pull` to `git am`):
https://github.com/avagin/linux-task-diag/tree/arm64/timens-v4

Andrei Vagin (6):
  arm64/vdso: use the fault callback to map vvar pages
  arm64/vdso: Zap vvar pages when switching to a time namespace
  arm64/vdso: Add time namespace page
  arm64/vdso: Handle faults on timens page
  arm64/vdso: Restrict splitting VVAR VMA
  arm64: enable time namespace support

--
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
