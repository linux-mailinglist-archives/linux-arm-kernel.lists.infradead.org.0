Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AC34C66E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 07:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g0YdgYjFRIq2FYK+NtrLqgH9EFB3SnF2+p3MF5WQqnA=; b=OITnhVAMv9W86iU5nn4LoOrUyT
	9t3ztXBvxgOzGs01AliyugNVaQgaIM7A24Um8RXuxbCyFBxRd046nTAMM9GATqW/ejj229ZbL4hur
	7g4NXXh4RWf8rOVgdMiMnHkbl09cIs7Xlej622d6PRDhWS5XyQJSJn7O37w/Efnv7nDYQFVksY7YV
	JDBG9fENhBj2CXlugB98QMXgKVjRjEjQOCBuWX0G5p7JYr9chfiNQQAirLusaI3VAypFuBVk1aAY0
	kOk8SMkivpvSMkC7lYUvQsJnQIfM7tNCvtPKjJZ45pg75ZHVbisJj64nwiy/0pwJP1TYrwcg3TrXu
	jJ6Xg+vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdpDP-0005mw-RA; Thu, 20 Jun 2019 05:02:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdpCt-0005cJ-3E
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 05:01:56 +0000
Received: from hector.attlocal.net
 (107-207-74-175.lightspeed.austtx.sbcglobal.net [107.207.74.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 17B25215EA;
 Thu, 20 Jun 2019 05:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561006914;
 bh=w9nyptU8yTrq5RjXTdHTV+L34NPIQZCSznpAPi8hwjQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RHJiAIVXGzEDt3UUz/H4ITEndh1nHGNemQS387yeTR+x62vX/Q2P+1YZCM0i5ic7V
 giaIoldO5X1HKYkgnDZjgyN4j77ew12KfcHwYLKgH7zOM91Eh8dL7U4rhBQuwUcWOi
 P1lUtfN9F6i6idvtrgr0DFjnfg9K4hHJ/kkEd9BM=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm Defconfig updates for 5.3
Date: Thu, 20 Jun 2019 00:01:49 -0500
Message-Id: <1561006911-28519-2-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561006911-28519-1-git-send-email-agross@kernel.org>
References: <1561006911-28519-1-git-send-email-agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_220155_148840_E6A4583C 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
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

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-defconfig-for-5.3

for you to fetch changes up to 817bbbb7749decb99262dc3bb1569a579eea5ba8:

  ARM: qcom_defconfig: add support for USB networking (2019-06-16 11:31:50 -0700)

----------------------------------------------------------------
Qualcomm ARM Based defconfig Updates for v5.3

* Add support for USB networking
* Add support for display related options

----------------------------------------------------------------
Brian Masney (2):
      ARM: qcom_defconfig: add display-related options
      ARM: qcom_defconfig: add support for USB networking

 arch/arm/configs/qcom_defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
