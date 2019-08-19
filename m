Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A59B94D7C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=T63pyeVEOi62fIgu/bFy/zmu/cbyDars+Scf53tWiCE=; b=PBb
	m3ZDFyOJtcuNwyyg6DLeZw8g7z+aE/O+u9UqQU1F9m5Vto77gphQHlehkt0YtUZsYV9N4clYQcg+P
	nnKAmTUCiNyq6yMFt0ZaUJC9aBPjlmC/vdHfOFpgFpb1/KxDZpTrIDMYo88I9mLx3xenxJr3lhJJu
	jF9akE23ms1E65+jU6Y0VGUi8rAmEZNbMUM7YRGn2p9YTFPg/oI+ODaT2IwmMvxqK+PJCSQoL7jVd
	ypDASUI5nqgZETJEzoWXHQvqdu1N1ntJjSqUG4aDBT9u0kMYwUFt1boybAgx8c4+gUs96jbVmaj7v
	F7wF5p4Re4kB62GYM5SF9FAM5fGe2AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmyv-0007SG-0s; Mon, 19 Aug 2019 19:06:17 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmyd-0007RG-PQ
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:06:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id w16so1713649pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 12:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5FnYnywvpn5tPMkvseEFZUHyDqH06Ol8rEO6F3xb4yk=;
 b=LBGu4rF/zCyJAA4PeyUgBcE0nuwGa0VKTrzhYpi960cM7Faf38UyvhjieJ9ZtGci0p
 GZlu6DXX9wd9KiHB+9LyURLt4dq+qEDPPf0rloqECTH7FD/bIG3u8YAj0iuwFx6fKDXl
 SRjvchDQfvWep2kyqwLLvZ9jwI3EszgS9j94lmUgfecrH0SorkYNKT+ZNthRYrPeskyT
 Ls6MNUjgkj/ZkZJryiXjP06f3aoh1aT7X6ieUO3JaufTAkbo3W61c88UvhczAMkyZ2BV
 HfqQ2zZ9SvkFm+zkvJUJHK6Em7NSRlTwyRGdnF1aVIpkRv4JOGSXW91UvZOrDhZK9dZg
 rybw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5FnYnywvpn5tPMkvseEFZUHyDqH06Ol8rEO6F3xb4yk=;
 b=l7eCuDpMiZcb73ZE2Ufj/a5bLwUWPIT6uoy42CqDSkmeJdT8s6HXiQzc6lqPQXpPiF
 cANmqUU0ebED9JNYak9fkOJn0n7mi7Jm/UMMTTQ0Trwxi0VhPE1TLXdYTYHsyqRoenwh
 WTJ6eYn9Ngmlw8P8j+rF/kMEd6N56/dM8APCrCNuvzuVl3Kn909XW5RZvJRcW83JxVJB
 5fYx1yx4Gf1oVUYYnGMRUUpiDvZpLfqlX9kVGkCjhrXrhH1qXy6nAVJZ/T+Zv1MFNIKI
 p017pgVQ3MMu07OPZC0FD3nMbSmN8bttQDXkGqlsYdL6tI5c4tKylxQu9UuWZF+OpFco
 i4eA==
X-Gm-Message-State: APjAAAVfbWBv/6mF/X02o8f639gCT8k9Zk2cFc/z+48EgnYh4rbQD1IW
 BMVpOfFC/VZfvfu/f857kck=
X-Google-Smtp-Source: APXvYqzv9eWGwMXLY9DIhciuJEfFXBjocGpJ9P54qFZ8GgLegQqK0CfDptRbAyAQoq63TU0qO2tHWg==
X-Received: by 2002:a63:1749:: with SMTP id 9mr21835583pgx.0.1566241558573;
 Mon, 19 Aug 2019 12:05:58 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o3sm27879pje.1.2019.08.19.12.05.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 12:05:57 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 1/3] Broadcom defconfig changes for 5.4
Date: Mon, 19 Aug 2019 12:05:50 -0700
Message-Id: <20190819190552.11254-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_120559_849360_36BB4ECF 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 olof@lixom.net, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.4/defconfig

for you to fetch changes up to c474106e1e8a8f335b1bd3e79e868943689ae74d:

  Merge tag 'tags/bcm2835-defconfig-next-2019-08-15' into defconfig/next (2019-08-15 11:37:54 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs defconfig updates for
5.4, please pull the following:

- Nicolas enables the Raspberry Pi CPUFREQ driver in both
  bcm2835_defconfig and multi_v7_defconfig

----------------------------------------------------------------
Florian Fainelli (1):
      Merge tag 'tags/bcm2835-defconfig-next-2019-08-15' into defconfig/next

Nicolas Saenz Julienne (1):
      ARM: defconfig: enable cpufreq driver for RPi

 arch/arm/configs/bcm2835_defconfig  | 9 +++++++++
 arch/arm/configs/multi_v7_defconfig | 2 ++
 2 files changed, 11 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
