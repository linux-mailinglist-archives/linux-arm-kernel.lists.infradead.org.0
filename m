Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DE616BB81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:08:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zSa0BW13jrr7ckqhqVkypkIPcmMz8S7TjWeQpaasAD8=; b=Kqz
	Hl6/rL0hpceumNl56DQxS8/tcHms1WmN3TMd6aDVURdEgBxmaWduB6mMpNkRbQcPQ01f/7sd1t2Zg
	6bYaEXOF6aC4uWdC26XSpIESSFAvh8C+mB3MI+QLGxCs0/5WouKZpSWfWPLGGlKBdnbXkD5wEMvuT
	vJ8o0VVxV/5TFae5ya+Cnjc/grB5OECKMPF4PLdHcPLqD/5d3K2JbneCNF1hRWNikDgEC9Ef9KTcK
	9N4gNTXivcwaSqCOdbhPZdDrxVO4BDECq9qcckKFuJGPNndN6+ueXhqGRvxucyCAYq9WYUn+fIXLf
	SddN5fgg1b7VY+SuDfo1kd5zz8rG4IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6VFu-0006in-VV; Tue, 25 Feb 2020 08:07:50 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VFk-0006iA-Ci
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:07:41 +0000
Received: by mail-ed1-x543.google.com with SMTP id p3so15185050edx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 00:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=hpxymrnMFLY6A9AjiKv5IjjdyYwWAfmtWtkwbGf9b7c=;
 b=LtAbwH3NCYO0hWAIqgRNZKiofeQ4oKb/QJbzNpSuP2noOsBHx/TBWPmdeiNrmL4I3O
 D57p+otGx35oQdxExJ4wHGkLurcdMy8rq0M4oxSCSlF+DYYJXWfeFzK0+QoIN+geQi6g
 L27sIFmSQjWxZiAezZxWpOJ+b3o06ajFUIrEieVsw9IBTV3fHUdQQDIQE+VVXULpo+EL
 DemhoGAjEuLXv1kMk20msEPMVL+YDL6ObdkNepzCgvIOcV+E/aFwDcZpMMjLa0XPI/ft
 op+3kVP0ALKp38eMJVFkotxxAR2SbGbcue+nll17Cu36osstHt0DFjVH8lbh6Zckv4T2
 +GMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hpxymrnMFLY6A9AjiKv5IjjdyYwWAfmtWtkwbGf9b7c=;
 b=uh9rhHm6vWwPsXa0V5+w5ruLGqBbFJHw+O2QE7jrcHqKGOS34+PwJHCzLvZ4NtCPNn
 Ob4TK/+5e2ehMOMz/l1vhhhrAz42STb1/WZGLFoqKDSfyd2My3OA9vKL+yAeggHE+C3l
 XqjJNBFhhofn8XF2i8ImFMnfhr+jm4ydo0s0JzDcj38ArNVAk4PpQ6Y7qBZ+ZTViZT0U
 rD2PNAm5hzXw0a6ID3IVAPoDYvJsAK9F83odV/q+6UfhjvDll6+LNxeUrSsoMwLRHkH3
 1DZn/wW2xJhmJFP+FpgyDC57hs8qUAp3s8LsYpelPs0hEAM9DggiLVHA73eqOSeasFgF
 f9eg==
X-Gm-Message-State: APjAAAWw782FQVNFbR6Rt6DN8tyX1SgoUGnIChSUzbnid3MdvkDFAgX0
 8ojE3ga++rPYXAIZrgLRfMs=
X-Google-Smtp-Source: APXvYqyz1rM9kGZ2yKQKtBdZegqxArEcIfrkYZ1vi8wcL7rT+x4CQ95yAutuOXs0cIHPPNLUbA1SEw==
X-Received: by 2002:aa7:df09:: with SMTP id c9mr50386890edy.133.1582618058417; 
 Tue, 25 Feb 2020 00:07:38 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2d75:fc00:5586:e036:dd7a:89bd])
 by smtp.gmail.com with ESMTPSA id u9sm1188510edt.91.2020.02.25.00.07.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 00:07:37 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Lubomir Rintel <lkundrak@v3.sk>,
	Olof Johansson <olof@lixom.net>
Subject: [PATCH] MAINTAINERS: rectify MMP SUPPORT after moving cputype.h
Date: Tue, 25 Feb 2020 09:07:27 +0100
Message-Id: <20200225080727.5687-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_000740_429821_410E83D7 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joe Perches <joe@perches.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 32adcaa010fa ("ARM: mmp: move cputype.h to include/linux/soc/")
added a file entry that does not point to the intended file location.

Since then, ./scripts/get_maintainer.pl --self-test complains:

  warning: no file matches F: linux/soc/mmp/

Rectify the MAINTAINERS entry now.

Fixes: 32adcaa010fa ("ARM: mmp: move cputype.h to include/linux/soc/")
Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Lubomir, please pick this patch.
applies cleanly on current master and next-20200225

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index fcd79fc38928..ed62b3eba75c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11197,7 +11197,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git
 S:	Odd Fixes
 F:	arch/arm/boot/dts/mmp*
 F:	arch/arm/mach-mmp/
-F:	linux/soc/mmp/
+F:	include/linux/soc/mmp/
 
 MMP USB PHY DRIVERS
 R:	Lubomir Rintel <lkundrak@v3.sk>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
