Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8BDF1EDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 20:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VY9AOmC5R5ndg94ECjEAPB7tur+e91XT+VuXpdUHs0A=; b=EM/YUyxFbZcwnrAYfFjHROVqae
	k+B9K6wOd663SYgG4amfRYmsK8AB0mWa4vKy6uLFDaecrlWHU1WYSD+SDlxTd4TjXXs5+B5UJvFYJ
	sPfsr+O9MQxEv/65dOX8cwgQU5URrQWEz8qyUwuuq8dN+STyU7cWzQ5O5QNe+BAVMS9MLlJ+OpsqE
	E5aj74hu0YBkBpkjrPcy7Y/2wCLe4/V1fGA4keFhpNwEn02Htq3V8etkr51AjcWKHuC0h/RJUXhHd
	cln0yIoZkXVq79f+q5sFgL7cOI0frtiODEbQdzOskmUfuMseJwqaYKxLG93mwJjPjq9G2s/Qdw+9C
	pvwmwuNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSR4o-0008EG-V5; Wed, 06 Nov 2019 19:34:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSR49-0007ne-AG
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 19:34:06 +0000
Received: from localhost (mobile-107-92-63-247.mycingular.net [107.92.63.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B45A8217D7;
 Wed,  6 Nov 2019 19:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573068845;
 bh=l7TF57RHkdq/Fn70FKMOafR0s2A9EtSc6Ut+uxvH1/0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k09Dw2izKwPiqmjn+pTa2axdCOLlZ0c5xgFDU1joZeaJbkcZUVGQC9bPgjlEF0Uk0
 IdPGoAhpftQaExSKUr5KOQ2MuglrGK7CkD3BAqd31TlgfdwvyjLlu5w8vp4whhdmzG
 bxX7lHKi9f9St+rzUkV38r/ArlejV0M+/WNDKJ84=
From: Andy Gross <agross@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL] Qualcomm Defconfig updates for 5.5
Date: Wed,  6 Nov 2019 13:33:58 -0600
Message-Id: <1573068840-13098-3-git-send-email-agross@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573068840-13098-1-git-send-email-agross@kernel.org>
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_113405_385712_F62F52F6 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-defconfig-for-5.5

for you to fetch changes up to b2181be1cfb81da3fad0f8b6994b2e714ae66876:

  ARM: qcom_defconfig: add ocmem support (2019-10-07 09:11:14 -0700)

----------------------------------------------------------------
Qualcomm ARM Based defconfig Updates for v5.5

* Enable OCMEM support

----------------------------------------------------------------
Brian Masney (1):
      ARM: qcom_defconfig: add ocmem support

 arch/arm/configs/qcom_defconfig | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
