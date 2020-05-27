Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D751E4701
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r5woieaVb6bdOIlPOxODNsJEwVG5VMOI5ZaGlC5R+1Y=; b=IpGXBzJOpHGAwX
	hmMW+h81rLzcQBsNh0qmPhxdRcDeyYpGqMOXuY6HtUr90bPRhsbqhPNqpmWWA1iCN1mtwmV2Q6Grd
	dV7mXNxWrsermTXl2yNtf39+9RD/i9cTczHGgk4UsSJCIZcBqq07a+HS6Hcbf+Odc2aioxzeHpWJN
	UHj0tGo34C0wGqGzJHk4aeQi28Dj0vUbIBgH+fG4iXfinxVkW6/yG9uBksk3iQU++YFs0nzR4e5CM
	DdHvJZx3jlEWsaAC7P0BM1HIA3iB4QupBYKACVvFKyVHmrJlnMKInKI8+yY5XaQOieFLwv+w6Yqx0
	7bOD2qgpuBX1GPKYhPeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdxdf-0002sN-Ra; Wed, 27 May 2020 15:06:39 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdxdU-0002rV-MX
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 15:06:29 +0000
Received: by mail-pf1-x443.google.com with SMTP id z26so11926899pfk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 08:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KoZe606OflP+pqwc544DH0O+4ssFpqgDgsR2zurkW6E=;
 b=fTHq9CNaoO/Gi4/N0riUfko+pG34aq7YNbAwwUvsFRuBb5GAhsWZLr9xfV4mcZcRsU
 QnglNUdToL3uMhDaPuOEy3wOxmwCTN5ogN4KlsGkmntq1LZFQlZyiCuy7YiUSvPrrsZe
 pV7BSEcUNIO6NelYjVS62q5JL52V55lud3Yn3KMiQyVldN5CwsKtPPynE8Dc4LKOgAvQ
 dGwJQRQCzdkPzOF7Gn3tEJhPNpcqNp2iiBwR7AIQS/TawJ38jZ1adMhcwl3f2OKkmd1K
 EL1f9JSLCmIHUTI09LohN7PXo9o9L6P2YKhq+MjSPtUFEOqjqmmQ5QBbjn9bN/oysqgh
 jpKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KoZe606OflP+pqwc544DH0O+4ssFpqgDgsR2zurkW6E=;
 b=ZavoIs2dKZuRmH7VlzW/NK9bk8S8j1hxNEBWc4BnrYouM0ZPp6h6gR+YWTAeirs9Vj
 LoT/OBxkn4tmz9TQcB/6FnbyjdAmA4v/mXZWBHdPIw1rmJc7xnftM05a0YDCbO0EdpG+
 z2BVDzjgePyVOs4Qea9/RRQCc8YAN1+QOxFc73N/SvfpaJz6CgkpoV9gc3dZvf8Gl/vW
 Je6wy/oaZ/PyDiJBesvL3tXhUzfsHoJVJ6nMm/WEvoEI/hdUDzmJ+U9N8oEQn6PPcppe
 ASwSs9Ec5D+6rxvl3iAinioqjjW7k5rlv1WVCJ9xA/+IlI4jJytH1ID0yWZTUYcru3k0
 ssQg==
X-Gm-Message-State: AOAM530TScG74pptucU6GB1L3gYnoXAsi3YXhkgBO5zu4+FFCOwCTvKj
 M+MSByKNeEBJNCe87R1aIjY=
X-Google-Smtp-Source: ABdhPJxgEH3iDLHEIuRn42o6PH92ZI2uivVSnqhr8WUdlOF6ENTJ/r+yXck2jN01wrAUDOVHsdU/nA==
X-Received: by 2002:aa7:8c53:: with SMTP id e19mr4381417pfd.264.1590591986809; 
 Wed, 27 May 2020 08:06:26 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id a16sm2465326pfl.167.2020.05.27.08.06.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 08:06:26 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] media: exynos4-is: add the missed check for
 pinctrl_lookup_state
Date: Wed, 27 May 2020 23:06:20 +0800
Message-Id: <20200527150620.539247-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_080628_735982_50E71E2F 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hslester96[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hslester96[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
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
Cc: linux-samsung-soc@vger.kernel.org, Chuhong Yuan <hslester95@gmail.com>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chuhong Yuan <hslester95@gmail.com>

fimc_md_get_pinctrl() misses a check for pinctrl_lookup_state().
Add the missed check to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/media/platform/exynos4-is/media-dev.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/media/platform/exynos4-is/media-dev.c b/drivers/media/platform/exynos4-is/media-dev.c
index 9aaf3b8060d5..9c31d950cddf 100644
--- a/drivers/media/platform/exynos4-is/media-dev.c
+++ b/drivers/media/platform/exynos4-is/media-dev.c
@@ -1270,6 +1270,9 @@ static int fimc_md_get_pinctrl(struct fimc_md *fmd)
 
 	pctl->state_idle = pinctrl_lookup_state(pctl->pinctrl,
 					PINCTRL_STATE_IDLE);
+	if (IS_ERR(pctl->state_idle))
+		return PTR_ERR(pctl->state_idle);
+
 	return 0;
 }
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
