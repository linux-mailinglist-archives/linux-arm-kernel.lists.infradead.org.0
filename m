Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D5B24050
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9HgRaP/twEKi6QB3f3OMpnsW/DkG35BNLSB+4cdjIto=; b=WoIOF/FqneNgqXh4qyPKdURAX0
	K0LM6G6lddW+vBujuMfMG/nCMdiA2V8Hd39mODLx7gez54lwdlHg/SGtKbU06Sdeag5Wtj1VTYyky
	UzUoWTfcC1+FnKrYqbY8lHqTD/UgZqMUZX8pcDrutTfiWre9LiczmtBswXC0ZlpQVJVErG2Ywlw88
	R17dxT1irNDTssbk//vCAy/YsUh6ak8aYRKzqGSY9B/VT6xN8xeMxRyHX8zq03tkWBSpyDUwPBtgK
	ytBJvba/8oY7OYmCUQuT95kig2O1+s5n43LZG2gTYEWLVqNkB0+gsxMDgwnj52ZM3K8tKUgteBad5
	I01bXNjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSn0H-00074Z-Qv; Mon, 20 May 2019 18:27:17 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmzy-0006sS-VT
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 18:27:00 +0000
Received: by mail-pl1-x643.google.com with SMTP id w7so7107451plz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 11:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KxFWnzTPXmLImjAXDIaEmw5eoePflfxQJt1ZOh9eUYo=;
 b=g/1s7h3X7xorkRdoKA3LP9ldb2bAQThC9bXwoR1GPlleVkpieVDwGftTbbPIzOsCf/
 FNwleuwvXsHPNfI6txlU7Sv9UmA/GMYZzx7/XXgy7lGYmTelR8AG+hkkTHngmamAkV8X
 RG/s8z2K7ZwqG5uGcSau1KX/vWeST8HMSbtWYFM1jIYYL0VVGiWoGhi9PKYZFuGjTz+j
 nUDWhSBepDs4z6ltvTdBdXM+YqYoE40c68d2YqybH6xp7VE1v9FDDOixdqKDjBEsE/Sx
 XuEsbUXY32YJzb/9S330A/GE5EkvOYSjb1PA5CgJ/WzdLLHx/ZEmPGXjbVG46/d6Cb2L
 w30w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KxFWnzTPXmLImjAXDIaEmw5eoePflfxQJt1ZOh9eUYo=;
 b=E+z6utU1lCup6O8fBUCd61epwdkM1wKTbQ49GTAjnNSdTrrcX8OYGAan4ezvwOEQus
 c6/f6u42puLQ5Zp6gLJBbUj8WyvAy2kFWWGp3KKmrmimrYe2lPAN9NlmYJ2FdT6p4c8D
 tUzyD9DcBkmdgciYHFJ8d7BXF4qCGR6U9FAcqdmS3iYLz0+4wRlsUR92w0WqjbuglPpD
 e6opS8AWR2J1FLlBDVEKZozqDb8nIROc08xNAddFD0saTTgeaCU/xKKG80DhHdihnjde
 Df1hpfbvdaremD/7kCoMbnvFDK1CqPRsba96vh8jlLCm/skveD1yUxg91PY+x5Zkc391
 hzZA==
X-Gm-Message-State: APjAAAW9RCiCcJpfAtrRgc1zgn24sx3uYA4MJyqxnYQl9hPxY1pMM2Sy
 +nuRyKyRCrhbZv9t3zcixzs=
X-Google-Smtp-Source: APXvYqxXCjGMvJNDRVwm9ej2zS3EojFmgveIJ1NDZUufVW3XDG3nzB2n7T7IMEfnQcw27clm6N6Ipg==
X-Received: by 2002:a17:902:20ca:: with SMTP id
 v10mr38513774plg.296.1558376818360; 
 Mon, 20 May 2019 11:26:58 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l7sm18220150pfl.9.2019.05.20.11.26.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 11:26:57 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 2/3] Broadcom drivers fixes for 5.2
Date: Mon, 20 May 2019 11:26:47 -0700
Message-Id: <20190520182648.1063-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190520182648.1063-1-f.fainelli@gmail.com>
References: <20190520182648.1063-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_112659_008060_B3D9E62A 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.2/drivers-fixes

for you to fetch changes up to 6b23af0783a54efb348f0bd781b7850636023dbb:

  soc: bcm: brcmstb: biuctrl: Register writes require a barrier (2019-05-20 09:27:50 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM/ARM64/MIPS SoCs device drivers
fixes for 5.2-rc1, please pull the following:

- Florian fixes the biuctrl driver not to create an error condition/path
  upon unsupported CPU and also fixes the biuctrl driver writes to used
  a data barrier which is necessary given the HW block design

----------------------------------------------------------------
Florian Fainelli (2):
      soc: brcmstb: Fix error path for unsupported CPUs
      soc: bcm: brcmstb: biuctrl: Register writes require a barrier

 drivers/soc/bcm/brcmstb/biuctrl.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
