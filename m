Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA530858A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 05:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7CHPb4Fg+zD0j/rEBAvijpqBaOJaKcoJMKzqAWHKDGw=; b=I4A
	J1TUVkkY/8Vb6TFFdUco7vGCE1Uqurzk7EvcjloreRqa2Ib3qi9lhWnJdA6RrZ/Pg0Tg9Xonjqkkk
	T3MspcAbc7cTeB8R+0z6WpHQNDduCl08JaYMr69aGsJ1kz2QUZsZM/TWewmFWpAHwwHOGZ7Mxk7DV
	iYS5jNVDHlewfBCS7fDPGJASzxJ9aCogXxJk9dFYapvtcIOyKMA0uP502FeD4RQfWNSlhfnayIxLH
	pPP8MNkbIR74u9ui87xkhy5hpjzJ2OutaxBWZGZc03H8/Kw5i+iuZSSJkizocbX/nx3VJB3DEbv+P
	rKjzAhI5qYvmhMiF8j0pfK5l7XSLeTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvZJg-0000Ke-2a; Thu, 08 Aug 2019 03:42:16 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvZJO-0000KL-Ml
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 03:41:59 +0000
Received: by mail-pl1-x642.google.com with SMTP id i2so42946088plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 20:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=CltnQTlt8olc+fDLy2Jnh5hmJd7EG7/QIe5FFgTWxYw=;
 b=gUly2egFnTMEnmQt8hy4Aef/sXt/p2qtK4St243N9Vr8JaIVzaix9GpTB9gDSS6G8n
 VRuJ2gK+MoyQV+7mwOr4R6MqR4Ws4cSm57d5b/k0QfttT7FPqEGGaYmxO9zGVN80KUyf
 Xt7JDRsFKs4Dk255X8jwjb9Q1ycmt/wjj7tng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CltnQTlt8olc+fDLy2Jnh5hmJd7EG7/QIe5FFgTWxYw=;
 b=b9ObkaVT/36b0FYKhjYjycpujDhV1omRPHGn1zBsPDgCJ/G4TgZV2G717vKih4tB/j
 DQaMsWNFUTjHHaI2lR1tdtijiO0Bdf7ylTocH7BYZYsW6GHL7yDBirZNvbFN4PzluvRg
 EBsOjloKd/WBWRstIgbWDAJDt5RLsnGX5B/T51Zb7AotaQl6wxllztbybk0xA2tSzPFX
 bweiixmInFy/pPiSsVPAgvfBmqKpe50rvo0F9J5IHXJYwD80T29gFbLHBnGNnIeiO5f8
 fFK4C5+9mRXKDX8gRRAVDLnid55nB4p1BSheUT+AhE+86UiWaV+XEoLuFLJzrvCcbVEa
 32ag==
X-Gm-Message-State: APjAAAVE1f8dIlF+JMQSt9lczLK9BunDe4gnB/IJPCMRjAemGBRV3gWs
 +tIFI439zFVfGwe2FtJa8+UiJg==
X-Google-Smtp-Source: APXvYqy1YWfA92bvwxrgj1XPwg6/YN6ruDZmL72kWXbICFTwOBsziMdPWNVG8Od/3aZ4K4bRsaZoCA==
X-Received: by 2002:a17:902:74c4:: with SMTP id
 f4mr10916411plt.13.1565235717808; 
 Wed, 07 Aug 2019 20:41:57 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id y14sm46425482pge.7.2019.08.07.20.41.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 20:41:56 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v1 0/2] Remove smbus quick cmd and update adapter name
Date: Thu,  8 Aug 2019 09:07:51 +0530
Message-Id: <1565235473-28461-1-git-send-email-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_204158_756534_A2E93DDB 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Ray Jui <ray.jui@broadcom.com>,
 linux-i2c@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patchset contains following changes:
- Remove SMBUS quick command support
- Update full name of dt node to adapter name

Lori Hikichi (2):
  i2c: iproc: Stop advertising support of SMBUS quick cmd
  i2c: iproc: Add full name of devicetree node to adapter name

 drivers/i2c/busses/i2c-bcm-iproc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
