Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D1A5937B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 07:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=anJ7MqlPKWTQb5F+InSA+qNGcD3XFe8chIQC4H9dDg8=; b=htdnmlUWXgsSMRHD/yyVjwf7qL
	KxK4gW0YfmJcCpp3b4Hyz4sFj8e9+/PO66lFHB/xmN5GulOD3td+cd6hgUTWI/FYl9/aVhu8w4Z0c
	xeur/i+jeSKfgmRm/vTIu5OFxPMb8A2U2ghypHaUMqJpyb2HXq1+UsgctDl91NGzI0aQ7QbANT5Ye
	fUyu5WNgGeBpjTuL5sttcQxGT9qEYIpf2R4euyLgAwvWC5GA0zXlqN66x5lkBXupauKoSmZV4f2UW
	XlGtSQIgix3kLTUi0hDqUiO7nnvcznWgVl9yJ4FIPAqdLqpX7a14g6BfJyztgq5b25EEaWojPbdAO
	6ElFD3AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjZ9-0007pa-NJ; Fri, 28 Jun 2019 05:36:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjYf-0007fc-12
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 05:36:26 +0000
Received: from localhost (107-207-74-175.lightspeed.austtx.sbcglobal.net
 [107.207.74.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B2E4214AF;
 Fri, 28 Jun 2019 05:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561700184;
 bh=+8IwKueaEBLXU1EoGhnReZv3KnbikWL+cKVAqL3KuRA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aNIUI4H+fKdm3axVeyiTFeo3h8A0jNA9fx7qKQgY3iNCJPbZ8QiMFeGFo/T9bMLms
 UnO6d/pU/vsERJbQcnc+svA7YhISIa3ahaY2ThIIwhzGd7/pHgkwalJ6Ui3O/PmhTD
 ybwe3ov62qzMkvZsYA27UudRS69zZmQphFY6wLGQ=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm Device Tree updates for 5.3 Part 2
Date: Fri, 28 Jun 2019 00:36:22 -0500
Message-Id: <1561700182-18108-2-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561700182-18108-1-git-send-email-agross@kernel.org>
References: <1561700182-18108-1-git-send-email-agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_223625_085245_D3928B8C 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The following changes since commit 489bacb29818865d2db63d4800f4ddff56929031:

  ARM: dts: qcom: msm8974-hammerhead: add support for display (2019-06-16 11:27:45 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-dts-for-5.3-2

for you to fetch changes up to e9146339515ece09ee651f122a51a26ae652ab80:

  ARM: dts: msm8974-FP2: Add vibration motor (2019-06-25 13:29:32 -0500)

----------------------------------------------------------------
Qualcomm Device Tree Changes for v5.3

* Add vibrator motor for MSM8974 based Fairphone 2

----------------------------------------------------------------
Luca Weiss (1):
      ARM: dts: msm8974-FP2: Add vibration motor

 arch/arm/boot/dts/qcom-msm8974-fairphone-fp2.dts | 6 ++++++
 1 file changed, 6 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
