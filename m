Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D271F8882
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 07:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4GIpO0i78U8zbc8FDdJH+ytKSmh8JcHSmfbNTYczexk=; b=SKQd7diiD7Vw+q
	+aCHbGkq62lpz0GO2dduzXjOImXNaN++m3SxzB26745IUklRvW2aBk2BArWm72XMJ4lZUXc/CB952
	Ki6cE3KWisS3l0sei4N9yalxkoDNg95ATCGHeCfgRy10nY146lL718JK0plypCpaN/F+8NhaMqUGT
	LP5MKu0wAbD9UVuhj6Ho8wVapjwjThbxaTevsBrRathUH1dAfF7gr6G+BAs75qA+sXtgUDvgPUsdK
	JCHZGH+m2bIFbJJdNvT290f7SnVTUgsbydQdAPOhcgzwwETdUmf3MISIhx3Y6DvXitgr/ylx/EQzJ
	oZ6sa8/MUAqjGvQUSivQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPg0-0000pE-1J; Tue, 12 Nov 2019 06:29:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUPfo-0000oo-Uw
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 06:29:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id r4so12601400pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 22:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XPGp0bDrthOzfA7hegg0HdrE+g59AtK+8Aqw3yGjwek=;
 b=QaxvWidyiyu/WC4jwr6Dr7fWNrjEXsuK8+k2lwcp20i+dtFpszi27dEHjr35N4ERni
 KP8mCZHU65++MBiFP6fyRgTddbXW9ETVJu8VWnpHKztrocqdYmrnROmBjPCzQaPFrOfB
 hoTi04TJim9Ey/Mbfg/X4Lgn144h8Ynt7GPuX6PyvrfCIkocWWEpIFUGBmwTIFluOPIv
 zywWRJgiKZepsYNvkQPPENatXe3FJxICB2Iu4AY7HZGHLT4AIEbr4l6e/rf4McgVBnFk
 5lafQXhdMD5BS4HDxSnziaxa347CN0fip7HYV9mWGblYWOk5Euoc+whqihgRBrumgLaT
 11qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=XPGp0bDrthOzfA7hegg0HdrE+g59AtK+8Aqw3yGjwek=;
 b=NLE1BlvICaye0/Yn5P4ixp0+fE4LGFKqyoSd047l6bZT4ij4XnVvS6qIC0e2M16qVw
 GrMo9bZ7LWOzq1yw6WupSMFvkeTDiXdeegPfxpecwIy3SZXSfMpjVlYX4BMo0QRoGQ6v
 uKUAla/1fFBE9MZl37kZ73mCSZdGZPL0cll1gcocYOaM5hYtZ73d2RQy412qNBCU9379
 pCqVEvV/uyAoCcf4xA06LgU+G5FpO4supy9FL1MRN8+8jOyETMsC1fHXEdoRslvjE+KM
 m5rP3k0ZNIfh8l7tPxMml2cFarA1EVRNxD+QekXcPt6wxwi21/thy6E7vq+hMZ4i03oJ
 0lmw==
X-Gm-Message-State: APjAAAUr5vx/jAWHbncPJHMzTuMyw5V7/siJW7TZ3Ce5V8nQjgGKB+vI
 2dqpQkc4Dps6k2C9ZDf6CDA=
X-Google-Smtp-Source: APXvYqxZDr43LTlBbbfjee4icvb0baDA8Dz+S7Z0/ESYvBK4mOjE76lo2wUohtQY6toZeJn5TzdhNg==
X-Received: by 2002:a17:90a:b30d:: with SMTP id
 d13mr4260964pjr.49.1573540146141; 
 Mon, 11 Nov 2019 22:29:06 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id x20sm18573707pfa.186.2019.11.11.22.29.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 22:29:05 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Subject: [PATCH 0/5] ARM: config: ASPEED updates for 5.5
Date: Tue, 12 Nov 2019 16:58:52 +1030
Message-Id: <20191112062857.32638-1-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_222908_995624_C28D2AE4 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here are some additions to the defconfigs for ASPEED machines that I
intend on sending for 5.5.

If you have time to ack them that would be appreciated.

Joel Stanley (5):
  ARM: config: aspeed-g5: Enable 8250_DW quirks
  ARM: config: aspeed-g5: Add SGPIO and FSI drivers
  ARM: config: aspeed-g4: Add MMC, and cleanup
  ARM: configs: multi_v7: ASPEED network, gpio, FSI
  ARM: config: multi_v5: ASPEED SDHCI, SGPIO

 arch/arm/configs/aspeed_g4_defconfig | 18 ++++++++++++------
 arch/arm/configs/aspeed_g5_defconfig |  4 ++++
 arch/arm/configs/multi_v5_defconfig  |  4 ++++
 arch/arm/configs/multi_v7_defconfig  |  9 +++++++++
 4 files changed, 29 insertions(+), 6 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
