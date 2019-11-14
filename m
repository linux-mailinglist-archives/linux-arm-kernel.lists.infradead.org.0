Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B69FC932
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 15:48:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IdVf0OlljL2cSZho0ihXYMBDEISrs/TZ2tCLI3WvRDs=; b=FeZmywt1K7p7Mk
	644MijPKNataX0NAvfvz0EEEuj1G4d0Gb4dLaVjo7MngTI2syPQgOhw5nnkUuCbJBTR09qoTJ1KaQ
	jrq1jE837rD9Opis9ir9+8qEWlVNhscihF8q0aV3fvROw0YzUvrRFUfChldokZl0OVghp/wYQBVrx
	Gs7COoxOXh0e39FRaICW81mvb1GkQ+F3gcecRjeCGHw3HW5cChwI8JOFO4a1qg2paIZy/1uUp6GwE
	RzmRAMsA2bGo3IqDidYk0tj7e8BR5Hk/qCPcU0yCDzN314keR5ytzpvgIezR3Mxq0jAXRpCv43QdW
	8wxH8hUgdmlslxS+/t/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGQN-0001Vv-IK; Thu, 14 Nov 2019 14:48:43 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGQC-0001Uz-7P
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 14:48:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id z19so6208315wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 06:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TyZ/otN+2/jtuodzdCxNt8qwSNX0TrMQiPm2CTPWkRg=;
 b=U/FOKbDDLg2JM3grxeN38aCsdwc3jh412ceT2fTzVBvTDM9uWmvRxpGNwh30CG9xn7
 /N0cVEibw5eull+Vuz8ph2IihqI3+3feCp0TDaVTJHWftcQVLTUpGKzpxaTnaPUIVokH
 o2uDfaagIauVTB4aWyhwuBkFvDjZFAyFKPnwruBzxdxjWrttvZ9AyZqFM71CYiPSsZPf
 RIghjHWDJxeE1G4oBuqRaMdnP9V2t/J4i9zoZ6QowjmSNeKVrSnxBH8ESqUcM+rAHCYp
 6IgHRAQe8dSaHW93bjNhOuMTXWXpRkGTcG1cWFw48r+eSGb//b7Js9CupJcHtjBL3W45
 vfgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TyZ/otN+2/jtuodzdCxNt8qwSNX0TrMQiPm2CTPWkRg=;
 b=cR6omBUVOoOjx4535cXVTLdjo7Jc510tiqtD13BLTKqSLXLnnX5DjRAiYDwcLXFgUT
 56PEDJCPo+kLOR6tRYGxG0smsouxd7Y5/Bj5PoZmEaWTHEPQc3HVoXIR+3kQYkxFKQPB
 eEywZUOiyjrPuNkyDxvlHDwRPSboVkL3xY9oX2VrOkIAe+biVB3Q1n8gSW1Ew9QSwlaX
 +OM8P+SMmmo1x7CNum93aYxysUMPBj0rN5QBdaEFzm9oNBi3GZl263wMuBDeFqxIAD99
 DeWBUFWcpSlUvIOjI8amJynwTAg3lclZDhqOxHLYZjgSfhsIGllGnWVIKSum+NF3xiqL
 KTFw==
X-Gm-Message-State: APjAAAV2qlM8ULyq70V7T5e6gG1GQBK3fbU6hIiUL0rNJlgMgBcew1Eu
 4z+q+XduLwBzAHRCFmpA+i0=
X-Google-Smtp-Source: APXvYqydvsyjX1qugxYeMDfQDrgoAzhWIvbwyXJ0MMSPIPkXRA0YEzaJyXxoPSk+RTHE99ZJ3r4apQ==
X-Received: by 2002:a1c:e915:: with SMTP id q21mr8582834wmc.164.1573742910794; 
 Thu, 14 Nov 2019 06:48:30 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id v9sm7153223wrs.95.2019.11.14.06.48.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 06:48:30 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 0/3] crypto: sun4i-ss: fix SHA1 on A33 SecuritySystem
Date: Thu, 14 Nov 2019 15:48:09 +0100
Message-Id: <20191114144812.22747-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_064832_267483_C7DA813F 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks to Igor Pecovnik, I have now in my kernelCI lab, a sun8i-a33-olinuxino.
Strange behavour, crypto selftests was failling but only for SHA1 on
this A33 SoC.

This is due to the A33 SS having a difference with all other SS, it give SHA1 digest directly in BE.
This serie handle this difference.

Corentin Labbe (3):
  dt-bindings: crypto: add new compatible for A33 SS
  ARM: dts: sun8i: a33: add the new SS compatible
  crypto: sun4i-ss: add the A33 variant of SS

 .../crypto/allwinner,sun4i-a10-crypto.yaml    |  3 +++
 arch/arm/boot/dts/sun8i-a33.dtsi              |  3 ++-
 .../crypto/allwinner/sun4i-ss/sun4i-ss-core.c | 22 ++++++++++++++++++-
 .../crypto/allwinner/sun4i-ss/sun4i-ss-hash.c |  5 ++++-
 drivers/crypto/allwinner/sun4i-ss/sun4i-ss.h  |  9 ++++++++
 5 files changed, 39 insertions(+), 3 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
