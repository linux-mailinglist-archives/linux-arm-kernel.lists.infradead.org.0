Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2C01823C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 22:21:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ll/gilhJwNSZ+fIkmoOhpypQDY+Cc8zuQWIpTsFPbJw=; b=dfZsYGQH+9Yq8ZoU4AzyfXgJJ0
	WAz7MqJK9u+8xQ8Zkgx8QfbCBLnO9B5JeN0sBkWaRyUw6eLjzUthybQrbf+qyPNaks/S7O17B2/9I
	v7iSLLIol6E66RqefLEo3a86Y0yMvKgKKk26kUVC+F2OHTwEyttyS/ZVneIvCRhmjwrcN9o7gncqU
	FXbuFlSm9o7pd1vFENpvJfpUr5msN3mJOMCVVxW2uKJTteguF21oBh7Q6K3LlpmexWKMJAIIXUl0q
	4xd2W3gKHQCQk/8ncqFTfnDB4jq/iVXzN4hPTEusR2BJE1AJmzYBsXJ+Xa8JujKDWw+pZkOTa8vyL
	eQ5yJY/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC8n7-0006z0-Un; Wed, 11 Mar 2020 21:21:25 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC8mE-0006Jm-RL
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 21:20:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id x3so4062790wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 14:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=odL2fyi2fL2F0RT0xHnFu4+oELsDK92QA7e8I9SCwPo=;
 b=VIuxkdwwywNd/I1RgoCJCmba2T8cqp88AJ+tXSR6zKPjSK/OP8KQKxO0VTZ/D9OPfO
 yRie5D1R/nuSdhwr6aCR2Wc8qpmB7+R3GLIyigXO3kpAuHlOMMwpDOdH71MHWYy8mzFH
 ZIY0BhjA1YWLXRxPr6SL722ejVOBpLkpnAXBoGv4XFeJev3t2m/fOF2q4WKMCjzRr/pT
 DPgl8X+gSssQKEwzKrtqxijjqWCwVlfWTNLeWeaHqj/1fWvELyACtmlvPoWs40QF2GcZ
 asha3Cj7It7Ma2iJUEnOJLFVtaiQsEAu+sc1u/UHcYWki7rK2CMR+v9goUhl1ErxCCXW
 ZPQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=odL2fyi2fL2F0RT0xHnFu4+oELsDK92QA7e8I9SCwPo=;
 b=lMP1ji/D3D6iz7SjJaiFRzwmwbERwiHoJY3lZpqx9MvO39coUZfPUzseB4+O9T+JcV
 au/4t4L/fkKBR1ddDS8vFpo21kyvcuf0/bqp0r6c0SlgrbnxeduxDOVASaTiXxuSH4VH
 XFIn2JvcHcTNvZLFsdYiV4BPH32vJe7TqbZYGnzA1Ewtfl1pS1KxDw81J4RMNPhLccq4
 /NCColPWack6PEN9zC0g1rFIqmUPMmSStt5qBriUvUTzRkNeN20AxQY2XpFzP3mdhhKp
 K2G0CaPRhIdUSt9ZzfHnFR3P42xQhBsFHGLlt9P23V82HMhVcsTtWWve3YCPvKFD/ihf
 jtGw==
X-Gm-Message-State: ANhLgQ1B4BaaXmBNtAkvG6jYvQg4Y8JdnTVYGZG6y5uBgylH+PI3mFwc
 Wi6dzCeDMLjtllkaK4m7Da8=
X-Google-Smtp-Source: ADFU+vv0MhIX7FbiEKhaYV5XxHMViOi8QKhmjxhJ5tuzo4CC0Iiqj6s/5eDxMvdaC+O6J/Z/OTCK7Q==
X-Received: by 2002:a05:600c:218f:: with SMTP id
 e15mr704433wme.152.1583961626728; 
 Wed, 11 Mar 2020 14:20:26 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p8sm3014032wrw.19.2020.03.11.14.20.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 14:20:26 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 4/4] Broadcom soc-arm64 changes for 5.7
Date: Wed, 11 Mar 2020 14:20:12 -0700
Message-Id: <20200311212012.9418-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311212012.9418-1-f.fainelli@gmail.com>
References: <20200311212012.9418-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_142030_908613_B718D3C8 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, arnd@arndb.de,
 khilman@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.7/soc-arm64

for you to fetch changes up to feefd39ab6bb6a746364ef00c39cce2e33a0fde7:

  arm64: bcm2835: Drop select of nonexistent HAVE_ARM_ARCH_TIMER (2020-03-10 10:57:58 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM64 SoCs changes for 5.7, please
pull the following:

- Geert drops the non-existent HAVE_ARM_ARCH_TIMER symbol select for
  ARCH_BCM2835

----------------------------------------------------------------
Geert Uytterhoeven (1):
      arm64: bcm2835: Drop select of nonexistent HAVE_ARM_ARCH_TIMER

 arch/arm64/Kconfig.platforms | 1 -
 1 file changed, 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
