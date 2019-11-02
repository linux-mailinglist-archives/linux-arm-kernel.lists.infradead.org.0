Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4E3ECF4B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 15:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oB0rANwB7Szl7Y4tKU2rkiz0++0qatAYm2A3N2RvYI=; b=eakbGrNdWq3S20
	EDaSMRhaqVdGzbxMYnhpSWo/yZ9SLZOnLdo4eqLaBnLbwVYi4vEsi0q7wPVzxLkjfMyU2TyuwD7Wr
	ZX2D2fJqAFaD0MViN/X4X+E+n3xtqQwBG5kzFP3eP8Ebm5xE4ujOX4s0vgPVdauVyNtveOiSLniII
	af7jsNnvx86kctKJI2wvfzHi5kd2qa0KaKGwwTe6K3jdAetsRqLtbxBjLUl5obK466Q3t7abyEJk5
	wa5CqpyDaQvl8S5KcAkjw5k75r9GLLOGFhj9QvnBBLKaKKiVvL24v6aY32CO2C7QlSDqZX3haNcMu
	GoIJK98NBSLRxXLiFGuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQufv-0000Zw-Vb; Sat, 02 Nov 2019 14:46:47 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQuen-0007zN-T7
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 14:45:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id a11so12438110wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 07:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+sFGkSU5hfvo4D8WEpa51VLxLij3Lp+HaowAkrxp1ro=;
 b=rl29Ph4qud6uyCcyXTxYAu/hiB9okEPNBlYsJrBkrZpE4RemCfNUNC2TRp4DTDNF0R
 4SWVQrp9+/SiGnkifwdpBxUg069WHmcsZAuWdI1Zpf7Nhl31OydBCbyWb1wCbQ94IMZJ
 NhTlxOUe/CajwtmurKcXSd19KQPkr/lPMjMMBZ8y4RByQBoeOLml/SqzXEWXhTjt2KwI
 AxP6K7fmWU4vxVeQy6rkbpyplc15xB5lQBAEHGph1yYssxgrYJGAcGdhTFXXl89tUivg
 nhJFLQrMdv6eudwSyH89jSYc1GasVSpyDr6rqGAKxsrBWEsqBkP6Bx67mZ1NppDZtaQx
 ISEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+sFGkSU5hfvo4D8WEpa51VLxLij3Lp+HaowAkrxp1ro=;
 b=HMOOCQghAHRsxoBvY6CUWzmb1HAb+i+czspfuLLJwRT2ZK/i8BCjKHfwJXt42uwSBt
 T6EjPYglWjsbkNVhXjZuXcMtLSvXdGIM+FWHFIBDx8PcXnoAPF/0TOJBd8LHKDfdxWGg
 9EwI5xNDI/joVoxCAKU0lKtRq4Cms1MdSuoL+USvYHUVDpGLV+tvN1sTk/lB74UDkWhP
 Ye3+wyFgNx5fTdEjFjxHqbljTA830IcAtQ8knT2gg0bJLYyJXU2T75QL8Uc7umo/iAAe
 4Gz9W+5A65UqfGzXVPBV8MSizmbROzL8Auc9C4tzCqlyqYhKwLNXmEDBvbrgRAl8+TAR
 rlNw==
X-Gm-Message-State: APjAAAV+JD8QCLvVxZR5TGfQpYRcEBtMEEo3YwqW8aeEzD0wM2ZP9Vpa
 +Q7JpYAv1eTCr6xLXF4Xxv1JWd9f
X-Google-Smtp-Source: APXvYqzhvJd1Y2aYHcUDzBlX0wsJzxhkHNrrh9rVamnR23xGELdkN01ebONy5VyHPUZ8Oe5RRmM85Q==
X-Received: by 2002:a5d:4dd2:: with SMTP id f18mr14880467wru.4.1572705936521; 
 Sat, 02 Nov 2019 07:45:36 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id j22sm15143980wrd.41.2019.11.02.07.45.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 07:45:35 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 7/8] ARM: tegra: Default configuration changes for v5.5-rc1
Date: Sat,  2 Nov 2019 15:45:20 +0100
Message-Id: <20191102144521.3863321-7-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191102144521.3863321-1-thierry.reding@gmail.com>
References: <20191102144521.3863321-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_074538_014505_AE13617D 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.5-arm-defconfig

for you to fetch changes up to 480bb31f4286d838fc0eebcfd813dd83236406e7:

  ARM: tegra: Enable Tegra VDE driver in tegra_defconfig (2019-10-29 14:10:35 +0100)

Thanks,
Thierry

----------------------------------------------------------------
ARM: tegra: Default configuration changes for v5.5-rc1

Enables the Tegra VDE driver by default. This is currently in staging
but can be used with existing userspace to do hardware-accelerated video
decoding of H.264 streams.

----------------------------------------------------------------
Dmitry Osipenko (1):
      ARM: tegra: Enable Tegra VDE driver in tegra_defconfig

 arch/arm/configs/tegra_defconfig | 2 ++
 1 file changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
