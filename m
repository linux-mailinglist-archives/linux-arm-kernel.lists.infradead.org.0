Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7721DF45F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 05:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4bITCSAC2Uow34qZUCNVRqCspBumlQFx5ouMEpvJcU0=; b=u5GsM0dWGrjw/Jl78hq3gJonl0
	6PDiDqMaX9JfUgzLsWClgYdYAKxvbhLuYrYosvcYfAQOspT10pApmCm9O8AsapUIh+uKSVZGNGINA
	aHCpWCPlJm04xzujRF0Z/2IQQ11uejf1epMyDs9HOf44B3CTs11YH6mYiI75WujPH3u3s0nJBNDAw
	uZoo4+R1zYykJB3GhwCIoUJhMzuAQphyXkDGyE2H+JsCK/84OzGFyGioRVNqY+vVvpq5l+RC8mi4N
	u9Pew3ioezrnJuLZ+TFXwVSbsxVCDERnoHkZABmacAselY1A8L2QhocDSTN+Ktb6Nf3raJthb9lSI
	8NVs6GQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcKnh-0001EE-S9; Sat, 23 May 2020 03:26:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcKmu-0000kA-EB
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 03:25:29 +0000
Received: from localhost.localdomain (80.251.214.228.16clouds.com
 [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A85B207F9;
 Sat, 23 May 2020 03:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590204328;
 bh=m60nbC4z7ubmLUMA6y264pefUHFAusbjRVV42+hehAY=;
 h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i3urj4DVG2YYdBvYrOc72phFhwcyMkjRd6dCQHs4L3wCSy2uReMV6WAqNtXm3LCRg
 CJEMwvcAVnEdhU5syE1i6QmrIW1OVplw3x03wSaZqHl0Psx2NEZJX+yz3R75E5ohZ1
 8Q8sOSjIT6iOJCpGWBwgzt4rmRXD6vNZEkFSqP+Y=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 3/6] i.MX bindings change for 5.8
Date: Sat, 23 May 2020 11:25:13 +0800
Message-Id: <20200523032516.11016-3-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200523032516.11016-1-shawnguo@kernel.org>
References: <20200523032516.11016-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_202528_494797_062BC2FC 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-bindings-5.8

for you to fetch changes up to 9c4b24db828a560789bfe8f58495f9df5bfe36b0:

  dt-bindings: arm: imx: add kontron smarc to schema (2020-04-25 09:53:11 +0800)

----------------------------------------------------------------
i.MX bindings change for 5.8:

- Add Kontron SMARC module compatibles to DT schema.
- Add Colibri iMX6S/DL V1.1x devicetree compatibles.

----------------------------------------------------------------
Igor Opaniuk (1):
      dt-bindings: arm: fsl: add nxp based toradex colibri bindings

Marco Felsch (1):
      dt-bindings: arm: imx: add kontron smarc to schema

 Documentation/devicetree/bindings/arm/fsl.yaml | 4 ++++
 1 file changed, 4 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
