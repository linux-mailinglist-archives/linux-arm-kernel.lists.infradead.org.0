Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A63B1C7DFA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 01:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tkwLDV3s8PSo0j73X0dUfRHG1vXiZEXlcbAZhL0DGUw=; b=Nkl
	zbtcPozLzWCZ4v7hhLxRW+oBpmcPzrPsKbOamBR824/FNCJw5Y/Lp4yfbUtSWoS0bU9QX4ap4dKJk
	K1yiW1vk7+qxAhtOcyf3Ga/n6v/VhgwgW8/ztmpeb0lGKPqXoaqNCG5KrT6h15EPKofHdl4qCVtrb
	hhWUnvq8U8Gf/2CV5ESpiaGvVYr8r8sVjryUXWXAxJuOaCY0/UfezxH4RtOFqoBp9URhTHqbnI/J1
	aUn0yvAkx9QwkYn0aWDw6/45Zv/ZId8VX2aZ3WrYksqwzwTu03XWOZLbI3uW+xh3SnZCmEC7TwUU/
	K5QUv7Xuuli8R43VS0L9EjW/ifXcA4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWTbM-0006ee-T0; Wed, 06 May 2020 23:37:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWTbF-0006aC-AR
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 23:37:14 +0000
Received: by mail-pf1-x444.google.com with SMTP id x77so1996990pfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 16:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=EAnXkkiwxKRM7CblIAMy11SzP6B2/JCkzu+vWJX88pc=;
 b=lqb3rK8rVmU3j9g93arTViQlSAMTDWsdJvgnjNx5BF9iIdr0N7OmOZFEgF0/VxWT2z
 xo06rLmv1vBONWyzSieCWcS95nFc2w5fnO1qGXuJ/OIyzJGeEyy2XfvD+1AAgW8a3buO
 mtur0W2BUPw61Xi4IeWZZC3zlIIKqAqONBkELQvxvSGBzWdsx7Nl5rzTypUIEdyqWfnJ
 GbJYtnyMDXBvwst17MDksCgItFCm4ndWnfBEgiyGtTeUbznZegiLz2KqVMhYzLJ7Erc8
 +PWmmcioPKcZUiKYR859QCNTfR+d++sSQjencnbAnAk7gXJyDcrYk2QfETTUKreAubOJ
 COOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=EAnXkkiwxKRM7CblIAMy11SzP6B2/JCkzu+vWJX88pc=;
 b=Uw0FZZxvdxXPPZzCRNe0WSVjfKXUJdePvBjg0h6Vr2RHbuwfIz7IA9jqnEQ6gu7jno
 EHdytaW9/GtG+fxkTc1jjiSVAvZbOcymOWlTYuhGEKdQdTge/HuuGAIHMiATc4lYHlJz
 7yMwQEtcNheFayYha5cF1EAL9vNcwfmCct/+iniAlWMbj+eWUnMwPo34G3gjdw8JHzK+
 OVJLm7HnhM24DetY3G2B3OcECNgYCxL4mKyjvRETSaAvVRudUjDKcfXNNvjVUmcO4YPZ
 DXN5SHYNl6c/E6RozymvTIPacsIm7vHB93XHBCJfVeXL2bbHYtG3gNyoQV1Bg/QamQ57
 3Bhw==
X-Gm-Message-State: AGi0PuYF028YO7JN3bR5+2zTg7dkFWmSpKFEA6/eTB65LEHtqsLdVlSb
 XqXQkX4nOGXxtODSV0HpwEywFKJT
X-Google-Smtp-Source: APiQypLv/jbUn75bndy9vPWPChxYRiEYESuEAiRoS8PhJzULosGFbeMk25P6osgG1JhAMsvEvfMjEw==
X-Received: by 2002:a62:16cb:: with SMTP id 194mr11090455pfw.78.1588808231600; 
 Wed, 06 May 2020 16:37:11 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d8sm2953132pfd.159.2020.05.06.16.37.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 16:37:10 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: mm: Remove virtual address print from B15 RAC driver
Date: Wed,  6 May 2020 16:37:08 -0700
Message-Id: <20200506233708.422-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_163713_362263_56BFF669 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Russell King <linux@armlinux.org.uk>,
 open list <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We would be trying to print the kernel virtual address of the base
register address which is not very useful and is not displayed by
default because of pointer restriction. Print the Device Tree node name
instead which is what was originally intended.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Russell, if this is okay with you, I would like to carry this through
the Broadcom ARM SoC pull request. Thank you

 arch/arm/mm/cache-b15-rac.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/mm/cache-b15-rac.c b/arch/arm/mm/cache-b15-rac.c
index 3471fc64a3ae..bdc07030997b 100644
--- a/arch/arm/mm/cache-b15-rac.c
+++ b/arch/arm/mm/cache-b15-rac.c
@@ -358,8 +358,7 @@ static int __init b15_rac_init(void)
 	set_bit(RAC_ENABLED, &b15_rac_flags);
 	spin_unlock(&rac_lock);
 
-	pr_info("Broadcom Brahma-B15 readahead cache at: 0x%p\n",
-		b15_rac_base + RAC_CONFIG0_REG);
+	pr_info("%pOF: Broadcom Brahma-B15 readahead cache\n", dn);
 
 	goto out;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
