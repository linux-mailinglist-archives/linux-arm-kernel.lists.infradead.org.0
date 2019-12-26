Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D85D12AE85
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 21:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ltZXBchifEBeHb74nkLZfsFKcGQJOkYHDBZd7eom+x0=; b=eJm/nyljM4b5vb
	eVLP3Zrai02A3nZ8+9Cp8YrUalCFdZsR4YGmoWbfap7O24anMxRpOo9+Qk25kxI+IjQXLXW/bTZtu
	qEzFGRZQaliMMoPScnEMgrfu1hhHW3x3Ze1zs0jEh2AIpSWzP/LLgPQ6WnHIR7sTKuCVbC7Vqk0MS
	KFBZiAGNLcLuJmO8lGZNpq4W3pKZwRI9WjI0znASxQxTqp4fLLOJeiPfr1n/4Io4xT9bBj1DONCn5
	dNLmczvfiGsPElezAdOEueG+vyIamCNzpx0f77USunp9wc+AnWJkiJW/+MjS5jJsS/TgpX8Ki4aL2
	GGBuez+xIeA3kVbVjvuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikZst-0005AB-2T; Thu, 26 Dec 2019 20:37:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikZsf-00058a-Ke; Thu, 26 Dec 2019 20:37:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id p9so6648302wmc.2;
 Thu, 26 Dec 2019 12:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=llajuKPgaOsGAZ6hxa/EUEXLbYSF0qHLJQBA9/H47cY=;
 b=oW/XveMrY7fe5BgQnxbWDFAdmRLzL34s6I+JDTYtT8TRs6ext70L0wuYi/+Vtfhd45
 p99aaZp8WvB3IUsF09jM6FRejA5aZqbmUQPfEqA7hfIs69wsamf2BZWiOhUni2C/SLVb
 DroTOrzmhzBXznCFPGZ903sH6HHNvidiSuV0NXecfwA70KkKc60JxEGg21o4y7U3iHoo
 Q7zDTePknya/1fOgs6TMIOf82MU5Auee5qqrrrzIIbavbMBQWbbu/WHTN85vtN9SJqdS
 hyeRaEbNItnY7nIsgz+Fl1sAAtKzv/lmtZz6u4WQyP2EbSuL3mBCs9H3gQ8KDvucVYf2
 wpCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=llajuKPgaOsGAZ6hxa/EUEXLbYSF0qHLJQBA9/H47cY=;
 b=MkDRppUVOty2GYM9Bl1GzCQVcE9s12+QonqOhVsdutpAHlvJtXLTElnN1dzlNKbNor
 NXrYVp8Uv8YLwJvb3r0C9oZqSPnX4Fv/b+7CaNB5GkKxe8AwgLMVZVEjkDf9EwClAm5f
 UfYyelxycrrFQlcMPCCJ6RhZexhhFn1D+kmdsSZB9rpPuULEhJWPoYKjhf3I/lYqPLTD
 TVt4BGIJA0H4oyGLIBTwEF7TlRuqCSZjQmJ8KJ+qv9RraC+7ebM6jpQ8OssDbjpvOciy
 8pPOLRXcGG2qH8hoPRLeQI4yNkpfzTqJOcbU7bbKHdrSiIgp4T8rA76FQVxDSh93aWxx
 1GJg==
X-Gm-Message-State: APjAAAWpIKN+xeyQ8TdxshdwC1ghn5IvvQpFrovzG4iCvUmxeVfiL5sf
 42fi4MsbujxLWr57Gaw8U2w=
X-Google-Smtp-Source: APXvYqykOW8DBg++MEZzLBMV1jVOWJRZFOWwgqriD5aTx1V21CwR+2x7Bg2km6Aa9r9ts2qbHE2J7g==
X-Received: by 2002:a1c:28d4:: with SMTP id
 o203mr15485931wmo.123.1577392631651; 
 Thu, 26 Dec 2019 12:37:11 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q3sm32911665wrn.33.2019.12.26.12.37.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 12:37:10 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: andrew@lunn.ch, f.fainelli@gmail.com, linux-amlogic@lists.infradead.org,
 jianxin.pan@amlogic.com
Subject: [RFC v1 0/2] dwmac-meson8b Ethernet RX delay configuration
Date: Thu, 26 Dec 2019 21:36:53 +0100
Message-Id: <20191226203655.4046170-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_123713_704825_7021FE09 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Ethernet TX performance has been historically bad on Meson8b and
Meson8m2 SoCs because high packet loss was seen. I found out that this
was related (yet again) to the RGMII TX delay configuration.
In the process of discussing the big picture (and not just a single
patch) [0] with Andrew I discovered that the IP block behind the
dwmac-meson8b driver actually seems to support the configuration of the
RGMII RX delay (at least on the Meson8b SoC generation).

The goal of this series is to start the discussion around how to
implement the RGMII RX delay on this IP block. Additionally it seems
that the RX delay can also be applied for RMII PHYs?

@Jianxin: can you please add the Amlogic internal Ethernet team to this
discussion? My questions are documented in the patch description of
patch #2.

Dependencies: this series is based on my other series [1]
"net: stmmac: dwmac-meson8b: Fix the RGMII TX delay on Meson8b/8m2 SoCs"


@David: please do NOT merge this series yet, it's only meant for
discussion in it's current state!


[0] https://patchwork.kernel.org/patch/11309891/
[1] https://patchwork.kernel.org/patch/11310669/


Martin Blumenstingl (2):
  net: stmmac: dwmac-meson8b: use FIELD_PREP instead of open-coding it
  net: stmmac: dwmac-meson8b: add support for the RX delay configuration

 .../ethernet/stmicro/stmmac/dwmac-meson8b.c   | 60 ++++++++++---------
 1 file changed, 33 insertions(+), 27 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
