Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9F517BA6B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Mac6DkP3aOf92lezP6E5x/fW3ye4aUX1VFEbx+V0N4=; b=ewycQJBJYZWtXl
	2Ox25NUcOYRint1saRn6y6McLVBQfvE6Y/SG9LDvlARZo8netI4c0Nl8En4p9kBl9dqKPSqUDAzkT
	eYA+FQrAylg7gKOdiWS1CQ2yG/UBpRw3JkZs26oShu0oafH3Qcgixu+xLUtwh9Lo/mjXDi8HSd/6w
	nQfQ4edCvodkArMFv5t1ki5WTwqsXytlYae985JRdj/ZJDNld3v95zKrIzWbRx1RnPh4GFbeej2Oz
	qG54u8Gih2MaK8g8I+1bBUhwg4cVnAN3u2XH2bC7GtemxKnuGZTXBd6gsYLKEVT9ijWTJ/07A8iPH
	QvhjVoUmXUZqjzvYKKDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAOH-0007xK-2p; Fri, 06 Mar 2020 10:39:37 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAANd-0007Vh-J7
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 10:38:59 +0000
Received: by mail-yw1-xc44.google.com with SMTP id d79so701120ywd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 02:38:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NwT39Zmrk5nf0V1VVwAqtLl1QXPiCL2V82aJAhi4vfA=;
 b=jX2u3qORktW5XuoKIWqnswVt8lzwsLlC4j1h4zXn3Q+LLavs4g4sU0uQ7Rr1I9Ax01
 vRvys6knfWqQZRPt4slBnu8jjtFkqpAE6WoYSrJqLLfCLsNnCMb2qJ3eHRLJcg9GT14F
 +kmdE+VF/yACRq6Zib2eKyMOHhsR9m7KscLM3i90s4vdN1J0PC9+HngvqDHNkla8zCHa
 SImeyM9jcJVpAKOTrxtK0LKNkKCfSvj76kCBxBiKQx4BfCF9evsdlukNrySFcn397d7o
 Od6zQEdAR5aUFPmac1hU3XQGWCXAfP5C2zS1Q73apy4ymSh7FMxwMQbQ187sd2Zsl+We
 jo0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NwT39Zmrk5nf0V1VVwAqtLl1QXPiCL2V82aJAhi4vfA=;
 b=PWhDldjjN4g0gW9JGs9ejSzGV8LApQn/C+1xzh4pJxsGvTZhOXFde5mYFXocQridqa
 igIhr1Csd7yVFxB3vwMZguMc2affPjUpJGlydChQ1UjNARPr2DMfm6tBsDAuGGYMBdji
 X1C8pab3sSBEszwT/dj7UB0+0qr2VecFIFJH5F/UV9qVi2lsGozucoUNmXufqyVqmVh6
 Np9n6vi4hlhdnKkLtoi7qDIutEqbX85xj6PY4avBsHxeVBnnbQ+ctHJcqw1o/rQQGC1n
 Q8QU5Va6OCDgVPoiWv1ozTL9RiAezWEr4cGecQEOsp+zQ7ffVhHVE+lmi6J2CjTfcame
 9OCQ==
X-Gm-Message-State: ANhLgQ0pU3sNtHEaB8cIXUq8OWrq62obFOMO7DJ/rw7B5m3vnaBI3J9s
 1/VcYEorBbZBN9xN7uAq/hKzElIwWx4=
X-Google-Smtp-Source: ADFU+vt2Wodk6ZZipaUnakhUniHCN5Q8WvcLQuqEGAxC4+KijtJXNOtuyVZky/tgzET7m383AchW4A==
X-Received: by 2002:a25:6902:: with SMTP id e2mr3171907ybc.349.1583491135617; 
 Fri, 06 Mar 2020 02:38:55 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id w132sm13345575ywc.51.2020.03.06.02.38.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 02:38:55 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: defconfig: Enable IMX/FSL Audio Support for WM8962
Date: Fri,  6 Mar 2020 04:38:38 -0600
Message-Id: <20200306103839.1231057-2-aford173@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200306103839.1231057-1-aford173@gmail.com>
References: <20200306103839.1231057-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_023857_649797_D5A9DFA4 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Adam Ford <aford173@gmail.com>,
 aford@beaconembedded.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Beacon EmbeddedWorks i.MX8M Mini kit has a WM8962 audio codec.
This patch enables the required drivers as modules to enable sound.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d19ca82b3c40..ab71a407288f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -601,6 +601,9 @@ CONFIG_SND_HDA_TEGRA=m
 CONFIG_SND_HDA_CODEC_HDMI=m
 CONFIG_SND_SOC=y
 CONFIG_SND_BCM2835_SOC_I2S=m
+CONFIG_SND_IMX_SOC=m
+CONFIG_SND_SOC_FSL_ASOC_CARD=m
+CONFIG_SND_SOC_IMX_AUDMIX=m
 CONFIG_SND_MESON_AXG_SOUND_CARD=m
 CONFIG_SND_SOC_ROCKCHIP=m
 CONFIG_SND_SOC_ROCKCHIP_SPDIF=m
@@ -614,6 +617,7 @@ CONFIG_SND_SOC_ES7134=m
 CONFIG_SND_SOC_ES7241=m
 CONFIG_SND_SOC_PCM3168A_I2C=m
 CONFIG_SND_SOC_TAS571X=m
+CONFIG_SND_SOC_WM8962=m
 CONFIG_SND_SIMPLE_CARD=m
 CONFIG_SND_AUDIO_GRAPH_CARD=m
 CONFIG_I2C_HID=m
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
