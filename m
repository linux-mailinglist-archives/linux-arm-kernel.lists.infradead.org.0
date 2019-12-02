Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8815D10F1B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 21:48:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YAxkFRxKq7P68QaM8AhUD5A6gOz9VkSqZQXLBzLzpfc=; b=EPBlrB6ARVuCka
	6jvRNdP0+hipkBthiixQqM3MeA4qYIcpW69MLQOagL2B32ITiNoxt2L8hxhLT4wumK1jLjaJt97O6
	P5Jazr7KAUkUYxU4LIUVo9b2vRmZ2x6AOjJZEAlRLf+DW2YX5eHR8RB3eRmTQtpD5PzcQ2imlndB9
	4UvVCb86K8rAAUd4hgAIpoogLkfJnUpQ58x/nRLLezo7kDmg7iPyFM/hdVKhh7afV+Y8cmxJXStlM
	vc+SsKku9fAPQquIvPlkIT3mBKgyCO1Rk3xBgyf9zA3NfrNYopxqW8nHRwj3IuAmubF/F4xEMNCFO
	mrBCr2nosckmUnPbYFIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibsce-0003xs-DK; Mon, 02 Dec 2019 20:48:44 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibsc7-0003of-60
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 20:48:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PrJ+9YVDCsa1J/5bRKfNOveC5ktax5tBnyv/khur8RA=; b=Xg7S18K9M4tQWbaubJFU9xXxGc
 M9NqJtcEW5GKOx7jBulkklyjxHT/it28AemsYXAR1B0csEQWJelrln6PsQKf4KdHvAexuwdgLqZk4
 hAJB06KZJF0HtXsMFgQUtFage+TLOz6vbV0uFDxile4r4RZitWAGAIKlFVok9U/j13LU=;
Received: from p200300ccff066f001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff06:6f00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1ibsbt-0007pS-Ov; Mon, 02 Dec 2019 21:47:57 +0100
Received: from andi by aktux with local (Exim 4.92)
 (envelope-from <andreas@kemnade.info>)
 id 1ibsbt-0001l8-D1; Mon, 02 Dec 2019 21:47:57 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: mchehab@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, letux-kernel@openphoenux.org
Subject: [PATCH 0/2] ARM: dts: imx: pxp for imx6sll
Date: Mon,  2 Dec 2019 21:47:46 +0100
Message-Id: <20191202204748.6718-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_124811_554883_D7B54D19 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andreas Kemnade <andreas@kemnade.info>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

fix bindings documentation about imx6sll and
add stuff to imx6sll.dtsi to enable pxp.

Andreas Kemnade (2):
  media: dt-bindings: media: fsl-pxp: add missing imx6sll
  ARM: dts: imx6sll: add PXP module

 Documentation/devicetree/bindings/media/fsl-pxp.txt | 2 +-
 arch/arm/boot/dts/imx6sll.dtsi                      | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
