Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D92161BF5F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:57:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EmZHoOlJln8gfwORiIDJRIfxoFaZKmS3vzObKYGzZn4=; b=L3HvtlR2atEg8j
	yfvU1UvVAOZtNQMGOkUxNkv3p/A5u2O7TeUtergz0ZLChKKRs0xHBYGTTsIhQXN9FayC2nk6w9z58
	nf+H4VgF1SuUXvzSkQc10o1YXSvR5DiB+UAF4mnYpZLG7ubm6Yn/k99Um3gzIS+4LDljusxOBhO5G
	3apcbWJbg22PK7JtCSqlbY6wKagOWnLwy/iI3uSnIoNRYtPnQiokFFtuinsHHgSBfWvmp17TyJk9Y
	49ysiFe3ZYWitkSWgH0t2rOHFD4N+FzHee7bm7XuaTZPFmoTUI1l+Ls1A4dIAABFaWEYLuvnTJuWq
	1O2f839GkxK8ny192Fxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6sW-000489-4a; Thu, 30 Apr 2020 10:57:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6sL-00040y-VC
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:57:07 +0000
Received: by mail-wm1-x343.google.com with SMTP id h4so1329644wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 03:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jj6p2YpGSox3F15VSPbCYzWaJapP8E+/lKOnhUtxGBg=;
 b=LUMFbITFgmqAo0AtnoUs45u4+OcNpVql+lKmRWk2CFIWLFQ6T3xwgRclZrxrLTdJ8z
 jynNNktDayZJy4oKN4h4lkRpNkTS3Ll67lqKW4o2cmSXxaVKUACOD6SIjoaIcszARLbB
 yJgck2Ak1LdV1IMcMLqusVbaZUpgJgue2Bulwz9xnbID+sgCT7+exnyBzYUk9oQbQoZS
 rdxwAofZ/dbalQm51Lr8AUFEW1QX/jukCxiHaRGt4jhkiY/kw9C+968eXUcx+9KRT27m
 xT7Z1T8x0HM+WpZ04VIZvw4fy5Jt97BCgvso14FXWpwoP3LnwEfNv6CxpT05BW2YSjpm
 Tyxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jj6p2YpGSox3F15VSPbCYzWaJapP8E+/lKOnhUtxGBg=;
 b=p+HYDwd/rOK+kDscuMpjSQU1A2whh6DLgV6IaNex6g2Jyla+ivv4gMQkJUKbscMmeR
 wbthIhEn15TsYVP+KALWhYWT0n/NyFK5x5L7uQev3QgNY4beAwCHQom6nB7aaUO/h4Kb
 pVD6dQVGb8f6SwD2KnqmenXnJlRfqM+ImL59c29Q/My47EWpR36iuJ0Bm4fYzdxpcqNw
 XqddRLdNioybd/c6XJWVf/SQ5c27PwtjqAANOoIXeJ7VvkWJuH+kaPZwyPw+DUsgS2eX
 d3SSxfbDQs6qESNqw2AsgRFACGI0RbxmZ9KpzvesB8hQ46r2JxsXIVA1BLnQJiAvTGT0
 9Q3g==
X-Gm-Message-State: AGi0PuZ4mj9TEVayMoavnPKxFL11qfy25wMCG4wWKYnzEhLetFPGGJp4
 r466Ez9XhneeBYj5gmzYZjM=
X-Google-Smtp-Source: APiQypKo3oFe1Z9aVVCTHSaI/PaiQaBTQuve9rAqMg95GfgHRhWtxPBWxkavkHBuzpNxXqbKDzc+NA==
X-Received: by 2002:a1c:8049:: with SMTP id b70mr2365240wmd.162.1588244222709; 
 Thu, 30 Apr 2020 03:57:02 -0700 (PDT)
Received: from localhost (p2E5BEDBA.dip0.t-ipconnect.de. [46.91.237.186])
 by smtp.gmail.com with ESMTPSA id c1sm3563459wrc.4.2020.04.30.03.57.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 03:57:01 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL] arm64: tegra: Default configuration fixes for v5.7-rc4
Date: Thu, 30 Apr 2020 12:57:00 +0200
Message-Id: <20200430105700.167199-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_035706_024151_A3616106 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.7-arm64-defconfig-fixes

for you to fetch changes up to 90670f0ef690f9c8712f236e8cf14c156c9a6365:

  arm64: defconfig: Re-enable Tegra PCIe host driver (2020-04-14 16:15:00 +0200)

Thanks,
Thierry

----------------------------------------------------------------
arm64: tegra: Default configuration fixes

This contains a single fix to reenable the Tegra194 PCIe host support by
default that was inadvertently dropped as a result of the host/endpoint
mode support that was added in v5.7-rc1.

----------------------------------------------------------------
Jon Hunter (1):
      arm64: defconfig: Re-enable Tegra PCIe host driver

 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
