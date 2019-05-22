Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6104926F40
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 21:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fC5Or7K4g7zGPN/QPTmWJdFd8Z5g0wuFYnD9RktGLpM=; b=h3SY/k4itX7sjB
	geRUOtcjm+AqweVwgy38TWQDh7tn1y4j83r9cOZkXcY+WBa6dmOPrv67msahdukQkG4kUvOv134+/
	KL+W3+AymnzpwPw0Sxx8MwNbq7dPGjT+NB1DH8JD8Z2s6Imk4IA+SUSON9BBFtFVQFPzZ3Sloujyv
	58pqlrq7kU9Z2OVM2xDxb9sxn+43aZSxYGtqShZZC4Ez1Kl8aZJ3j5QNxxsWbw0SlcX2pNzKXkR1G
	sXanKpewxxHTgwhctH+mEj0rzJUrCrqexk5MF866mSxDckwft/t64wAwH1AG/1fD9DMc3kdclJixw
	fYwOdrA+/Yx+PfyKY88A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTXLf-00083E-Mv; Wed, 22 May 2019 19:56:27 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTXLZ-00082s-Ie
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 19:56:22 +0000
Received: by mail-wr1-x431.google.com with SMTP id e15so3668728wrs.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 12:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=TXzPq9ByGbIEa7un2WIzM+92nsCFrJqr2Aqe90VKILo=;
 b=AqxRCmlgWHvArBECjQiVJRP357/rnXIZFzYJDtyAwhx7Ho4QkydaJgm6yk97nwG47t
 bVZsNdR1R8oPcdFZIlNJM4YXo9uBmIE4s72LlxXBpx6q3sCffnXPp+c+XqleQAE/azsu
 CFFX6js9dQ23jMnoF3bYBnPykWBQ6mESzdgJIDSqMzwIesXOb2v22kIBr/7xOovwkKSN
 bOjdfAX3knaPx+TfefQQ9Q9VaOOxoqMjLmTW8TJ0ppOAr8oYkk41MTxMt0tJzPQ/XQ9Z
 U+WZd9MfdW4f29XwRJe6RCl9bpYjI6SWFYkTS4FtpQ4lF1ViOEhTRt4iKXXTiGzy1fg5
 kn8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=TXzPq9ByGbIEa7un2WIzM+92nsCFrJqr2Aqe90VKILo=;
 b=fjWm4pBefA/AL40ATaOv1szKxnOXgWyYa4heHODHc5hpSD8n/q4sckFnWEoKxll+u4
 zlBQNuGiJp59V6TkTouLhEHs7Ypp8RLfWarPOVvxrVoxsDFTs2HPlwd5hmrFf9QTWwJ2
 s4XEK7lXW5/KZcYR3GEvLPheO4AZwQmUfA2/jvDt1lm9Aotu1sJ1pvdSg21wj4ASQL75
 PFt+6CQ3iykIvkR7gaD5dD9j3Sq8Xa0BSIxBgYjOJeA3+i/z1/e/ngqybJFb/AXNssd6
 wltK6PERZJxae+xGOyVZV+4NpOd1NXiRgBk6dytfebRI+jHueuTa9pVo30INDgUe7lMm
 ZTAg==
X-Gm-Message-State: APjAAAVvLGHZjXOiamVYbACwww6HIGrbkJsXkzhBhCjT5AE1uauOTUbW
 PWPZ80OBqzZ/P6GtaalKNkA=
X-Google-Smtp-Source: APXvYqzQxBhqoXXqVF4VRrFGNN/1HQc8l/EO2jZXf2HK6L3MxHaF9vVX+8cdnVIIOWYmLEQ02K1GXg==
X-Received: by 2002:adf:e90e:: with SMTP id f14mr18836096wrm.166.1558554979553; 
 Wed, 22 May 2019 12:56:19 -0700 (PDT)
Received: from ?IPv6:2003:ea:8bd4:5700:3029:8954:1431:dc1e?
 (p200300EA8BD45700302989541431DC1E.dip0.t-ipconnect.de.
 [2003:ea:8bd4:5700:3029:8954:1431:dc1e])
 by smtp.googlemail.com with ESMTPSA id a128sm6606735wma.23.2019.05.22.12.56.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 12:56:18 -0700 (PDT)
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 David Miller <davem@davemloft.net>
Subject: [PATCH net-next 0/2] net: phy: add interface mode
 PHY_INTERFACE_MODE_USXGMII
Message-ID: <110a1e45-56a7-a646-7b63-f39fe3083c28@gmail.com>
Date: Wed, 22 May 2019 21:56:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_125621_643178_41FD7D0E 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hkallweit1[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hkallweit1[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add mode USXGMII and change places where so far (incorrectly) XGMII
was used instead.

Heiner Kallweit (2):
  net: phy: add interface mode PHY_INTERFACE_MODE_USXGMII
  net: phy: aquantia: add USXGMII support

 arch/arm64/boot/dts/freescale/fsl-ls1043a-rdb.dts | 2 +-
 arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 2 +-
 drivers/net/phy/aquantia_main.c                   | 6 +++++-
 include/linux/phy.h                               | 3 +++
 4 files changed, 10 insertions(+), 3 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
