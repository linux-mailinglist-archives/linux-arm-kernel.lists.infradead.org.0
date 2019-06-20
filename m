Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1284C670
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 07:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VCbXWYx/3eH8iu2MmAqw+AgIuj+jrCHgNdhkML8IZMs=; b=ZR+fkcJJM4kLXqmCM6219+KzZC
	xoC1zu5+O6CzXChQJ4tn21Z4sTw3hNHIcZMVRyuIERwb/FT6W+Okm0vgk6Uth/otLx0z0TVdanb9g
	gBi3Sh5BrNT88N6dUnvTgQMVn0R0uRhynUlx1x61G5cWu9KjjcpRrjk6lpTFrRZRHH+34duWcmmGY
	KAHNFAjATKH8yutRcgYMx7QRCc+RVtZObQMcsFjgV4ljw8OYcnjn0zGIxKxaOluihxNOr7uSHvMZt
	9Ash9QbTFpI9SJOgeNmSrU4xoYOqvDAyBNyecKPR8tVgYOU92LDdQBVvgjHDfoqZH9qY3/qdHUzn2
	AhXNF69w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdpDy-0006H0-Ga; Thu, 20 Jun 2019 05:03:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdpCv-0005cv-BT
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 05:01:58 +0000
Received: from hector.attlocal.net
 (107-207-74-175.lightspeed.austtx.sbcglobal.net [107.207.74.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 401042173E;
 Thu, 20 Jun 2019 05:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561006917;
 bh=FdidKMWZXNZRlVki+qkAOY1C+Bx2Izlzw8sYpt8a3CI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EURBy383Hc5P8wWMvTVRKb9cJvqmKtIPpYDB3bj8dD9SSScKZhNeShTBybE9zXYs0
 2oON9TqW4X0ezMZ2X+DNNU5XgIEdpOjCCJ1sWtNGgnYo8T/oEbv/Y9iE7wu8Yhr7ah
 7aZyyMot4ERD8FuX6gtHCtycgYSwZhEh5Pfl+85U=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm Device Tree updates for 5.3
Date: Thu, 20 Jun 2019 00:01:51 -0500
Message-Id: <1561006911-28519-4-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561006911-28519-1-git-send-email-agross@kernel.org>
References: <1561006911-28519-1-git-send-email-agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_220157_408857_C81EC5E9 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-dts-for-5.3

for you to fetch changes up to 489bacb29818865d2db63d4800f4ddff56929031:

  ARM: dts: qcom: msm8974-hammerhead: add support for display (2019-06-16 11:27:45 -0700)

----------------------------------------------------------------
Qualcomm Device Tree Changes for v5.3

* Add display support to MSM8974
* Add display, backlight, and touchscreen support to MSM8974 Hammerhead
* Update coresight bindings for MSM8974 and APQ8064

----------------------------------------------------------------
Brian Masney (3):
      ARM: dts: qcom: msm8974-hammerhead: add support for backlight
      ARM: dts: msm8974: add display support
      ARM: dts: qcom: msm8974-hammerhead: add support for display

Jonathan Marek (1):
      ARM: dts: qcom: msm8974-hammerhead: add touchscreen support

Leo Yan (2):
      ARM: dts: qcom-apq8064: Update coresight DT bindings
      ARM: dts: qcom-msm8974: Update coresight DT bindings

 arch/arm/boot/dts/qcom-apq8064.dtsi                |   4 +-
 .../dts/qcom-msm8974-lge-nexus5-hammerhead.dts     | 156 +++++++++++++++++++++
 arch/arm/boot/dts/qcom-msm8974.dtsi                | 138 +++++++++++++++++-
 3 files changed, 293 insertions(+), 5 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
