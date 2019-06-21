Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12344EB47
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 16:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wNMGCW7K9M+8lSrZgkmgXiB4PEovlFMQ2vgRsiNF0Fw=; b=lMHIh9sDKK2dSi
	w9O38OJ8L7ZSe4S7LhWgEHzX8kOu16YNwrmLFRjJZCZRGcIlDVuPQzPN24FeLsFgpDVWszzDQVTyk
	glRzJKtqQCA3PbFrXNoUvmut/LiRDxz2muwoRjfBQCbMtqGSWlu7aOBIaAJvWbp9+KWnV/grjvWaG
	yLTTM1ATHG5Wi7Ybrzx2WxevbsQhip1xMC2w2pJXXG5+/h3A/sqZcMkXl6i8ldURlkaBi0G1P5Uin
	788/delWlm6Po2VZ2l4nGN4ZalRi4LIrbQoObl2vE241sWiStCpDHkTVtQwznUVrmWmGIvd/lkro1
	TD/NYa6UbcBI4cor8ozQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heKxP-0001lj-8O; Fri, 21 Jun 2019 14:56:03 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heKxE-0001lL-45
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 14:55:53 +0000
Received: by mail-vk1-xa41.google.com with SMTP id b69so1352900vkb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 07:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=McASa29lxjZpj0oJ3ZfQEaOaFXbUU/UG3+m1x1GG8co=;
 b=X3xAV4NyA3y9UzA2IA/Mk+qrbdrPKZIojhR+endGbpMJCR38xtZNqJ9k22djG6EF8T
 lgeu4QQxt/tsghp0XWw3YgkSmM36uLQez2tVp4MN+NadgIHC0T2hblyRbSo9szBtCly7
 Wl/mDoc9QOORA8aKlSOXdTAQ2mVhqtKyuShPZOn9t5BGSWAGAHhGSbwIAFb5WEVoeR7E
 kP+EjwXcBAkzjawd196Z/h9+budQycSYG4WoqpHICVdO3OTu0jmpgEthvef+K46SvBJp
 k+whefb30M+1PGYlpvNw5ZQWAt4m/unHVMNLGpia4S28NYrHiRibidO0Ao1/uRPdY6o9
 rBaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=McASa29lxjZpj0oJ3ZfQEaOaFXbUU/UG3+m1x1GG8co=;
 b=Co9GRQB52Xsbv//ttlw9jAQ0Omlpj12B5aOclCPvO0Dvp4NrP5/xV5RRjmnB/xMeUV
 kP6fiPhMNInfxbM/LBFd2kSKk+XLHU9EQPDjp66osbUsMjWMFDrA+BPSyh8cv579qFWN
 Stb8YVmwPAd7MAAuizI/KmZnW8ZJCoquivstzQLi2699bJ5vKiYPLVgUciDHv9rHeLQc
 e+4MftHn7Nw7kKlpOg6B8tEVL5+qSjizaP7CycfGsrLiycKZYNQwC+Xo0sfWye3FoCJ7
 ZOqXBJSOqxo2EaVkTgktXEa3zI2r8V0FDGFwD6xStjyZPRs84d01MfykyCgx/uxZb+b+
 dBIA==
X-Gm-Message-State: APjAAAV+fGk6DPNtGwyby4uyHhxCATj78ZtJTKbYSgzzyZXFG5Ha8uDJ
 PULwozVOW9ds+g7poGo6nKRM4BsaD1Ur+OvrB6U=
X-Google-Smtp-Source: APXvYqxCcxQEXetp+8qxWOCkYRfCFeSjQTr5ue+VK7qlD1hltuVYOFpeQY0fPGUN+r8Luu/8sd8vTD7bA2pcXXHSCQ0=
X-Received: by 2002:a1f:14c1:: with SMTP id 184mr9771787vku.69.1561128950035; 
 Fri, 21 Jun 2019 07:55:50 -0700 (PDT)
MIME-Version: 1.0
References: <1560755897-5002-1-git-send-email-yannick.fertre@st.com>
 <CACvgo50vSNCTTTKp9D_07tazOE9YkU-zKAsDywvWe6h0NgcEmQ@mail.gmail.com>
 <2c169739-febb-12a9-0fa1-d5da053ded67@st.com>
In-Reply-To: <2c169739-febb-12a9-0fa1-d5da053ded67@st.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Fri, 21 Jun 2019 15:53:32 +0100
Message-ID: <CACvgo52tK2Gaz7wzJ0Cw1rKsTog6PbGF4G8at=cO-oyiEZ4EUg@mail.gmail.com>
Subject: Re: [PATCH 1/3] drm/stm: drv: fix suspend/resume
To: Yannick FERTRE <yannick.fertre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_075552_191352_224FB4E2 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.l.velikov[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Philippe CORNU <philippe.cornu@st.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vincent ABRIOU <vincent.abriou@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 LAKML <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Jun 2019 at 15:01, Yannick FERTRE <yannick.fertre@st.com> wrote:
>
> Hi Emil,
>
> The msm driver tests the return value & set state to NULL if no error is
> detected.
>
> the ltdc driver tests the return value & force to suspend if an error is
> detected.
>
> It's not exactly the same.
>
D'oh I've misread that patch as pm_runtime_force_suspend() being
called when the atomic helper succeeds.

Thanks for the correction :-)
Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
