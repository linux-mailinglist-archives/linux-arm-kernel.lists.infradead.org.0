Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B7526F9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 21:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aFOu4MHxRCNvyTD1zRhWkpgUfQAzw0RngmiGx/W0pPs=; b=nGYmkBi3ENT8+U
	qTof7y2RY9/kwq+JG+Lk5PYMG455KMeP1q0XfOxFdH99ElJZ+q1CU8kJYAgeBuygXFZiZfC5wCwCk
	TCwTMzN3wtXG9Hjekcqes90ZGFmqXS5CtIYny1ORly7ZanJASu7zeaHSs/wkrAasw9qfM0UsIY9+7
	ooKzrjDSxEr77rMdv0Pkq8xGQ/qb8WJ2Xr8HZZK5f3pxo/SLP3rLM6uS/56h+fE+3EpWi4FYRrRcu
	SjXXBLmdUbZ3Ycmzoljo/2mmK9Z2P3h2I+8rdUFfT6tXH5wEm+ra4f5gIWydtlzclpT1m6yFWig04
	aqLZXPxQc5bHsg3kTAqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTXNu-0000Ea-Tx; Wed, 22 May 2019 19:58:46 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTXNn-0000DY-RN
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 19:58:41 +0000
Received: by mail-wm1-x344.google.com with SMTP id j187so5479377wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 12:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=C4CpDQKXaTSWK266x4L54FFna7lnQA4Dh6pv535OwUk=;
 b=Ww/IA8ZeGY3Q177k7ssd5U53pRIf6TWG2NUBdLTxG8RRTY8aYyrz5zTyda4l2X92oH
 lr9JQg3pRSEIUvGgXYYy8y4yUsjjPxQIsNoIjcxR6+TJdfjjCs3soco11VajMuRrb1DX
 LyfwMXPPLlB/33YrKko2Kgw5rZec1ZAdCwZK35WgT91iyeHqSoK2zs3Smc+TAyDRN9kX
 1fMICw3s87isNGyQXlwllYSiYlZUg3/dAziaK3ki7jebjXIgqSQ0QytwfRUBx6b0TOlo
 NHg9RoROjuhsa5RNs6v3ygvFcFm1wFlZ3D/cIwAMFykh9n4HsqLgXRxjomEPNWEI67ho
 gyxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=C4CpDQKXaTSWK266x4L54FFna7lnQA4Dh6pv535OwUk=;
 b=QpFCETRZK1hRDQ0qtPpD0TK3FEgXpZPzExbgVMH7UyomObQRO3vIdAZFnzNHp2XFG0
 eGm9CG7SH5qLI+MlHaDIMFG218VrxRIbKbl2Q7DVkLRc/26i3K7iHNYK6qkmqb7pvWl8
 priqhL6uoXdihDUhUrkqXK4VmxntYzKba2p4W68XK9RAesLzqj8MTz6KAyy/tzRduxhQ
 y4CNTISWW89DSp04gzfKzA0K3+b5AoPfvdRkX5MfpUSC3VuVUOXqHshQL5d89DtK5su1
 y8XbWvcNEYsmezdZ7BnvxDKNBBxQA1WS5oP+Ie/h9EbOyWjiJjRsk/U8J39uYTuaZNWy
 wLvQ==
X-Gm-Message-State: APjAAAWTTesldr4tBB5UxTK/4Sjr2wGXBDNNQfZcRmfVPRhVC5AyGJNu
 Fqur8MqPwJb9TGCbf/wvjBwr2DE4
X-Google-Smtp-Source: APXvYqxGmLfjW4idvI28Xtos3cDOqZEsrTIjciSA10Zil7RN3IqnHOyBgzku7F2zTiraeYs0HyEhkw==
X-Received: by 2002:a1c:6783:: with SMTP id b125mr8715351wmc.41.1558555117740; 
 Wed, 22 May 2019 12:58:37 -0700 (PDT)
Received: from ?IPv6:2003:ea:8bd4:5700:3029:8954:1431:dc1e?
 (p200300EA8BD45700302989541431DC1E.dip0.t-ipconnect.de.
 [2003:ea:8bd4:5700:3029:8954:1431:dc1e])
 by smtp.googlemail.com with ESMTPSA id
 y132sm12021821wmd.35.2019.05.22.12.58.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 12:58:37 -0700 (PDT)
Subject: [PATCH net-next 1/2] net: phy: add interface mode
 PHY_INTERFACE_MODE_USXGMII
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 David Miller <davem@davemloft.net>
References: <110a1e45-56a7-a646-7b63-f39fe3083c28@gmail.com>
Message-ID: <aca070f6-f56b-1b1f-180a-ddf52af91ecb@gmail.com>
Date: Wed, 22 May 2019 21:57:16 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <110a1e45-56a7-a646-7b63-f39fe3083c28@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_125839_951416_272A0886 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Add support for interface mode PHY_INTERFACE_MODE_USXGMII.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 include/linux/phy.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index 073fb151b..7180b1d1e 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -103,6 +103,7 @@ typedef enum {
 	PHY_INTERFACE_MODE_XAUI,
 	/* 10GBASE-KR, XFI, SFI - single lane 10G Serdes */
 	PHY_INTERFACE_MODE_10GKR,
+	PHY_INTERFACE_MODE_USXGMII,
 	PHY_INTERFACE_MODE_MAX,
 } phy_interface_t;
 
@@ -178,6 +179,8 @@ static inline const char *phy_modes(phy_interface_t interface)
 		return "xaui";
 	case PHY_INTERFACE_MODE_10GKR:
 		return "10gbase-kr";
+	case PHY_INTERFACE_MODE_USXGMII:
+		return "usxgmii";
 	default:
 		return "unknown";
 	}
-- 
2.21.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
