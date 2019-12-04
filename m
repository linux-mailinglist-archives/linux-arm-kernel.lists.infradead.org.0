Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55775112C4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 14:08:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wYSfku9iIZyWefI16u85Z5O57opuHHMytEUp28Ppyzk=; b=coOmEge7sTsvZa
	MzTO717SQuVFvKSEv8eD6rVIHLkCJU10g7LgHQCJH5VZWjq5BTU8YYszvc8S4SUO+hDnvDKWAhXS5
	ajLarKy8l3ZFjyeVQy7050Edu4LF/G72HNpT1ZCO+va18M2dc7kb6AWqtWUB3Xkh1EBNHDCQdM31A
	nldQLSCOJniwo2QFMJq3UBs8UU5jJD1n+xmFHPzSQy4mhuJiOQcnStngKh/TPpNWcFwR4EeKmAlWJ
	+Jg0VyQJlm6aHSVwcb4TFAx/8PIv8vInkrZwQHK375U4RwVS5I8jjJqSsbc8I2jIS7vFw8JEq0OUl
	Hy00z9cD+TkFPr3FmBbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUNy-0006Xv-Bx; Wed, 04 Dec 2019 13:08:06 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUNp-0006WM-Nd
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 13:07:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so8520788wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 05:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ux9tITRTJ/K/Qnf2cowWRV/QtrytZWRzAJVLhfRd3HA=;
 b=H2vJTmLCRg2B0vAzcRnFW5l2kcMe9ZMiQmW5lSSXLYs7Gx4zo7g/CsiWsPVgaI1ilc
 wv6bo29fewcdSfV2DAK2WxXKCHV9l6ctdgVbwh4EYnhCJx+rFEnyaMv1oqLIC188qnCy
 d+mej9AsTPL5YF58v6Oc+2ZVG87ok5n+pieT4ovQe5nX34nYv953Rn6Rm0ksOpZYCnfX
 TLvGpWSpLbkGnqajZZBvdYY5UnEWCxsNv83U0S13lwvJAN3rzuXF+FS/HlQlJKZGviYa
 mXKM743d4bTzt2PskNL+QIY21IMCasjcSGJkFflrVQMX8ybMQYNwI7GPQt6nr853pmY/
 WUjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ux9tITRTJ/K/Qnf2cowWRV/QtrytZWRzAJVLhfRd3HA=;
 b=I51l/khcRNfcv+ShIPUpYZwceQiL4f0lbJeVHE+N67rDLS8ltykff/cOnWzvUho5sx
 CP3RHqlcMVa2fndG+7nAUJsNplpwtTtI0+wkrcupoka8z8zJZa2fqNDIZzGpZhlSVU0y
 r01Pwaij0ERsAmV4LmnzIAYUbOZ2u1OMHd8/TEaj3ZHULzH8W2O2myJYMdImlOdY4etb
 4Dq9tm5/Q1GC1Vx0coAkNIqh5jyNDnTbk/1RxAHrnDNO76Q9yf94eVzpch3DSoQtXAnC
 4TR4ctlTMYHMhmVmzw8Ydca1WRb5IfktasTy16PAnTVH1LLh5DWPv4GjEG3ePd6h/YHh
 457A==
X-Gm-Message-State: APjAAAUZBlMBscTgpyrhJwOFDza/nc+7MU2lCVnMCekJhgIY107mVsfh
 EnfhrJsR9DM0D9HN0flRpAk=
X-Google-Smtp-Source: APXvYqxK3JthT2l0Yj/2dZ39D1HZCIOxy5aGGbAOcYRAPyJaK6c8NE32tB2ZD42/xwsZEruZ3984xg==
X-Received: by 2002:adf:dc0a:: with SMTP id t10mr3812995wri.138.1575464876303; 
 Wed, 04 Dec 2019 05:07:56 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id a14sm8520219wrx.81.2019.12.04.05.07.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 05:07:55 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 1/3] memory: tegra: Fixes for v5.5-rc1
Date: Wed,  4 Dec 2019 14:07:51 +0100
Message-Id: <20191204130753.3614278-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_050757_771447_15F2D23B 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 141bef44e123c101c0da0443ab6b3cfa750f251a:

  memory: tegra: Consolidate registers definition into common header (2019-11-11 14:55:27 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.5-memory-fixes

for you to fetch changes up to 030d2829f4c22e675e21904f32ab60f659174e72:

  memory: tegra30-emc: Fix panic on suspend (2019-11-18 13:54:40 +0100)

Thanks,
Thierry

----------------------------------------------------------------
memory: tegra: Fixes for v5.5-rc1

This contains a fix for a kernel panic that can occur on suspend if EMC
timings are not available in device tree.

----------------------------------------------------------------
Dmitry Osipenko (1):
      memory: tegra30-emc: Fix panic on suspend

 drivers/memory/tegra/tegra30-emc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
