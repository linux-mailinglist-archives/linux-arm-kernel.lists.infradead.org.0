Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3E47306A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfS5tDBwzq5EiZ9GhKWP7YR5LC/sTzwUH7HqnBks3n0=; b=BTTTBygRT7IdLN
	Zrgl1nGXILVzQKjWPCMWnT8yhVkNBnloiRZEnuUeJMSGR2mtZ2s5SYX59mePW/XwpZmMA/MucQqx5
	ydt7gSFPNMuNeBirSwAaJgF0vOTv3iqel6PRYYxenzI8ivDrTygcnb/yI8QmZqnI0Db0zepKo0msA
	ulwm6tePGNAFiknVQ+HL2dxwgsE2JMsuJszUoVsRsijM0jWVI17+pPSxUCJoA3BBBpONu4yRjaZtW
	PLIibEbOQFaJbwKz1MiFCO5LNTZZWbLrsnxBTqHYqkoLD+1pGL4JX3jVe8PuiQnDem3b7FBVCCokZ
	ZI3bUaT5BJR2Eh2pz51Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHnb-00056h-CP; Wed, 24 Jul 2019 13:59:19 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHnC-0004tM-Bp
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:58:55 +0000
Received: by mail-lf1-x144.google.com with SMTP id b17so32058032lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 06:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8Z5UzFYhi6H2Bzr3Scice37n2cKfwrnM1A2zQSOal84=;
 b=otxjmkh/kVjZ4IM4FQrw7xAdQ6ZMWi7+vpVhvym8xvAtfzvsk6Y1MpF4kDfF3szG4e
 ujXo01qlYB9GyBVtTvCW55pyJKAvSuzyYGgc05yORTFQHoumbStriwvaB0wzizPkIgfJ
 /yc+ELX0sXvFi3mfyJSNrnWj6CVB1ipo/QyokYR78Gh0e1CB2knhw8/hPuF5AfdQdef/
 4Fhsrj/r3MlKVkPGCS/weUjARoJojbnyZvnv56TMBg92X1JWDap0/Ni0fmdniXwDgQnw
 A+EVyIDK9D40WfqySO9uC4KK1Pp/KkU5GDrcEx3G4cU6+M60/PQR6TijaHqQV+URDtow
 M0KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8Z5UzFYhi6H2Bzr3Scice37n2cKfwrnM1A2zQSOal84=;
 b=mSfZSMMXC5zQSyUz2te5vz4LVThRRd9k9VeahDEr1k9oWlmttmm7wO3CE72P5PMALE
 2A0zmRdbOpH+8c3ThTyA43l+lFMQqfHZHSr7iLTE3J/B7rGBCgI+8LT6iup39NN9F3Fj
 FLcJ0KUyZ/W8OJpEcaC8bpMrJOX1sEjdcJBO7pT9GF4S/60TgMp2YQX8gWlboH/uZUmM
 MjV57spuZkeAQonxmQwSPOlqO4EynoXbPCa2K18SK7cCIU1/oY+zVCUptS8lgnongpOq
 J0SV6we+PVumImnppOQZMlL4Pesv0t0OJS4xtxZRoAIxAEygMXUQaryUPEwbRUR3alwc
 nUHg==
X-Gm-Message-State: APjAAAVSbzc4ko8hig2wph2Z/uYay69QNpE6WPAmcPMLV9RvfKG+6yol
 Hg9HSlpehrgwInhy0OX9FpkJ1mWMwjQoUJcexDFu2Q==
X-Google-Smtp-Source: APXvYqwdTOeseN/Hq1XGnjd8lMRnCKAQsTM7/VsBcWVBoPs4cjVpWdHT/C6Xf0cA20TN5udLNcPOED/4Mrw9SvzUGiI=
X-Received: by 2002:a19:6a01:: with SMTP id u1mr38209122lfu.141.1563976732315; 
 Wed, 24 Jul 2019 06:58:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723133755.22677-3-linus.walleij@linaro.org>
 <20190723175445.GA23588@ravnborg.org>
In-Reply-To: <20190723175445.GA23588@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 24 Jul 2019 15:58:40 +0200
Message-ID: <CACRpkdYmO=fBj3MFoQdLrEgA05BLZR3tNv9WhqjLeJ0R0cdDbQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] RTF: drm/panel: simple: Add TI nspire panels
To: Sam Ravnborg <sam@ravnborg.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_065854_400854_F2FC5680 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fabian Vogt <fabian@ritter-vogt.de>, Daniel Tang <dt.tangr@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,

fixed most things, one question remain:

On Tue, Jul 23, 2019 at 7:54 PM Sam Ravnborg <sam@ravnborg.org> wrote:

> Furthermore I did not see any bindings for the panels.
> If they indeed are missing, then please provide bindings in the yaml
> format.

IIUC we do not create binding documents for the simple panels,
but I can do this of course, just vaguely remember that the DT
people didn't want to see bindings that all look the same
but instead rely on panel-common.txt

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
