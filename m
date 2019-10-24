Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4137BE3835
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SzFwI2Vi7cgAv/lWe5anvYCpsul8RC9zt7BF9gVxyzs=; b=IPf
	Cw7HI9VysjbdweZka5I115j5E1kB4yzpzaSsBLkwX08lOq/J9Hnmvi7yKP1/259+I4QgdHp0QuKdA
	NHLeYNLPbc11Id9Te3OsLF2hyvBvlO8Jd0ZnoVMgKCn2p2rYx0H8EfLlVjQnDHXuaQVgBSyQLmQEN
	u7lfEvuP0qXaf/QNlLCxs+IMsy3v/FmxwmFNhNJUIcXAobRrdAq+jCep8iXc3xdUnQhYEJm4R0oyK
	rCQF5bdOD7PYenumQ88DzK79083knpauUM9avKvmhaU6fh1qd/bRcDWr0ZzAFSUnGDC8gn+ZTlG2x
	QM2FCx9aMm4c8/C0DcXR6YtK7+rNCkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNg8t-0005eK-3A; Thu, 24 Oct 2019 16:39:19 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg8F-0005Ls-1F
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:38:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id q130so3080419wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=dYt5aHbdAcoo6iOaj0orMUSAvQMPaS0z8lFzdR/A7V4=;
 b=Ns1ZYl/2Z7R9SELtWm3ZXQehrrSdTOXVC8OUXM2hM0HYtFG2jHyYkGzlMM2tGrTBJ1
 PadyzrB/+/j1eT5StN3toKeTz/PAXMrdKQyTCN9tYT3/SrXTiz9OS8EQg9ceVBDcPJ7L
 YSa27E3euj3OEjinq0HDg27dX+MgxGueXHGRrPQH4u9yXzWJnkWkbzvnb4fsmU0ZWYub
 kcuwX4TIz5K5q8WW7B/Ef+2cKaUd9IS+JwxARfmgBNUVClV4wHRRliuFbGBmnc0YKw4X
 8mAK159WfLfu+f4lRLQkqNbihdts9A4/BXWsd0Ngz+C0SmzIAb52ebd0PPe3zgJzwog4
 ToKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dYt5aHbdAcoo6iOaj0orMUSAvQMPaS0z8lFzdR/A7V4=;
 b=bFW9d05qKpgelw9qLl0Pd3uk+iHczkDiSc8eVO3/+F66gwkAhlwE2UL5xrW1dQn+76
 FBXj60z0uj5ZSPAhHEfmbiOBPmX716n9v4olWbY3rbcXp5oZqD0AuBgfEqu/WuuJJhYS
 LMe4+xU7dAyp+FCIBTmf4i5p0lkGR91Bp0VkBQl2aADmzqb4FrBlVCgIkwnBil3Dz5aE
 n8wfV07UESW968bKaFRmO3dMYvXINO5i/KrzI+8EYyIKMXFqxDK2eoPDNDRZp8mPfF3O
 GbpMdkEohaQ/kFDutZrLp1xTmd5Uk+M7TZynPmY9Ob7aQyLqDCj2KY4+9LgOSvxphW6A
 K3Wg==
X-Gm-Message-State: APjAAAWa+Knrn1dkFyYBOobrtgV4F403ro+2IFwNS600T6ko5n9idqR4
 ret+a0cCmFbYCbLnHfR90JcLJg==
X-Google-Smtp-Source: APXvYqxajiI3u0bx2uwGq4iPJh90TzC5CDZXmjeWLns9qC3nWHb0jFRD4YDKVNeGdlHzDhTCWW5zoA==
X-Received: by 2002:a1c:67d7:: with SMTP id b206mr5566577wmc.68.1571935116224; 
 Thu, 24 Oct 2019 09:38:36 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id 6sm3446175wmd.36.2019.10.24.09.38.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:38:35 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v3 00/10] Simplify MFD Core
Date: Thu, 24 Oct 2019 17:38:22 +0100
Message-Id: <20191024163832.31326-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093840_701638_0878047D 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lee Jones <lee.jones@linaro.org>, baohua@kernel.org, stephan@gerhold.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MFD currently has one over-complicated user.  CS5535 uses a mixture of
cell cloning, reference counting and subsystem-level call-backs to
achieve its goal of requesting an IO memory region only once across 3
consumers.  The same can be achieved by handling the region centrally
during the parent device's .probe() sequence.  Releasing can be handed
in a similar way during .remove().
 
While we're here, take the opportunity to provide some clean-ups and
error checking to issues noticed along the way.
 
This also paves the way for clean cell disabling via Device Tree being
discussed at [0]
 
[0] https://lkml.org/lkml/2019/10/18/612.

Lee Jones (10):
  mfd: cs5535-mfd: Use PLATFORM_DEVID_* defines and tidy error message
  mfd: cs5535-mfd: Remove mfd_cell->id hack
  mfd: cs5535-mfd: Request shared IO regions centrally
  mfd: cs5535-mfd: Register clients using their own dedicated MFD cell
    entries
  mfd: mfd-core: Remove mfd_clone_cell()
  x86: olpc-xo1-pm: Remove invocation of MFD's .enable()/.disable()
    call-backs
  x86: olpc-xo1-sci: Remove invocation of MFD's .enable()/.disable()
    call-backs
  mfd: mfd-core: Protect against NULL call-back function pointer
  mfd: mfd-core: Remove usage counting for .{en,dis}able() call-backs
  mfd: mfd-core: Move pdev->mfd_cell creation back into mfd_add_device()

 arch/x86/platform/olpc/olpc-xo1-pm.c  |   8 --
 arch/x86/platform/olpc/olpc-xo1-sci.c |   6 --
 drivers/mfd/cs5535-mfd.c              | 105 +++++++++++-------------
 drivers/mfd/mfd-core.c                | 113 +++++---------------------
 include/linux/mfd/core.h              |  20 -----
 5 files changed, 65 insertions(+), 187 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
