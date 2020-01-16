Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A478E13EF0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:13:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sWyJble6Ch48fQdQa8fkOLeSBAEuESJSNMVVmCGVGUM=; b=FptRjsOs/w3Z/o2gmiuBjdbq71
	8tJZVkFl99I7uSlHjuv9hH+RnUi+SdFkv0qE9r2MRQNAYQ8NBOutV7P4CePhz3sbNxv58C9k4KF7G
	pdomfbu2WBqed04d4E7n6jftE+vIUGhU5wDBwQJY/ST/yGfzbuNQURoZXYcN9KNxOyRUNT8XKiO6c
	/GyWK8dKOczG73v/B40SBCRm1Om2ub1l7u8cIdGAyTY2+GuLALBFZuSGp0WHkFvB6gOKFoHL5dgOB
	lT+X1ECzZ/fB+X0Mf3bkZiuW4Gj0T74Pt7BFr82TxO7AN2gCF5QHnhKS8hfW/3jgQa6US4SCV2q1m
	RsY2SaqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9du-0004Ax-Ta; Thu, 16 Jan 2020 18:13:19 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is92n-00040X-7U
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:34:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id d16so20030981wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 09:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xH1cSUr8SBRV9CMGWyAAW3UFCbW8FdZTUYzPQ5zdNRs=;
 b=LluWVoR5S++0DpKZ3mYotdVyfJ+fFfOpSt/0sKw8LIdcshaLFoXQHGH0qvIQ6d2/iX
 q21wpcqWymkFrGorop5LvzRY/lW4+bH0xGzd/03XJZbFmBI2BV45dh2UCv+rdNScFga3
 RHmuANbTy54lLy7lvW/ajQ2Ibx4657V+hsw2t7QVfLb/nHtNBc68sL9HAWQoW5m0Ii/A
 LHPXQHsBysg+LtiJxeLSZUrcFJfk2IaEhxUMACssuHfQt7bRYgJ8flB+mf/MmN/2YFxy
 UpPfh7si/jyReojWTQkHMlnI+RH4Ls1fek4Lr6CQdX4eTduVUV6vI/3gVaun2PAvqlXj
 l0rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xH1cSUr8SBRV9CMGWyAAW3UFCbW8FdZTUYzPQ5zdNRs=;
 b=Gd9Do2M/MyhFRqQfpydDCBJ+r0vcNAGMgePZZb0cz9fK1wqOmt+abzLspQs6rgKTzz
 Vyb+QLyxKH1HI6/hf/bLWwahEGUoqk6YceGrgW8wn5gJIHIah/5/w883Ug85fFiMHmGj
 zzy43U/TDkdXwmgSWVRDpQv2HtPp4Zm3Fc+CCpkR/e89X9ld9aXyk8ZNhYjUlJJvwlBE
 kuvnKueau6HP2LnZizrlrdPWQ2CLe6Xg9D0ORkMn9jHoOC7z/oK3UYkXGz0a8mz9lnoP
 IBekeIVqFvoG6rtd9rT5y9ntgZYt8D9p/nayZbyMvLV9zD4W2islh77AuF1qaGVjDnrz
 YZ2Q==
X-Gm-Message-State: APjAAAXDZkqlQPX/yTQOK7vqUh2bWPlj1DvOqPM578d9P8dN1XC9IT/G
 wa/2m9xWvulVSS7neIxJh9g=
X-Google-Smtp-Source: APXvYqxqx/nVfQtaVSmqXU2GNeDjqP5Fx0FAVxZBEWsOZXl3iQ6apv8CEvp6Oo0pp02hFNCcaNCFEw==
X-Received: by 2002:a5d:6703:: with SMTP id o3mr4577841wru.235.1579196095055; 
 Thu, 16 Jan 2020 09:34:55 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x11sm30823040wre.68.2020.01.16.09.34.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 09:34:54 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 2/3 part 23 part 23 part 2] Broadcom devicetree changes for
 5.6
Date: Thu, 16 Jan 2020 09:34:39 -0800
Message-Id: <20200116173440.10886-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200116173440.10886-1-f.fainelli@gmail.com>
References: <20200116173440.10886-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_093457_303327_1B6B0393 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 Phil Elwell <phil@raspberrypi.org>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 0100f76d96346b44e7310a5cfb102124b6667643:

  Merge tag 'tags/bcm2835-dt-next-2020-01-07' into devicetree/next (2020-01-08 10:09:49 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/devicetree-part2

for you to fetch changes up to d5c8dc0d4c880fbde5293cc186b1ab23466254c4:

  ARM: dts: bcm2711: Enable PCIe controller (2020-01-15 15:41:11 -0800)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoC changes for 5.6,
please pull the following:

- Nicolas unifies the CMA reserved region declaration between all
  BCM283x/BCM2711 chips in order for firmwares to easily adjust those
  based on the use case needs

- Nicolas adds the Broadcom STB PCIe Root Complex Device Tree node for
  the Raspberry Pi 4. The driver will go through the PCIe maintainers
  pull request for 5.6.

----------------------------------------------------------------
Nicolas Saenz Julienne (2):
      ARM: dts: bcm283x: Unify CMA configuration
      ARM: dts: bcm2711: Enable PCIe controller

 arch/arm/boot/dts/bcm2711.dtsi | 64 ++++++++++++++++++++++++++++--------------
 arch/arm/boot/dts/bcm283x.dtsi | 13 +++++++++
 2 files changed, 56 insertions(+), 21 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
