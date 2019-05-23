Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA925285A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 20:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSRwx/BwK+s3Ech0fSeKTml8z/vg8mE/aFGBrzbI3Jk=; b=lgDp87NIfHu649
	l6tD1k1BVtHd7Yehss7672YPfetIpoUeeo/0MIhYY3PlfALyHVxq0EXGhciiJB6FR2hv91XrLmhEX
	WWyraqVy7sGupYR23wi5ryA0NGf7Jvla4C8KWbtArBXtPyr33V6CQIzpeeoxGBIlulY/DGNHslUSJ
	KRLh1g+yCHqtn11gg5jNQbTRPA0qXt+RLj384NzKv/CWDSerZAQVDVHgEfL/F0ztofcxWNbyemxCf
	rv2sSO0KTw9z0ZuWz1NzHEi8okswGkcDsMZvzZoJot7Tv+8X5wKmXtR+tx+0jHzO5VS/55/L79cIH
	2LS0xbL3VMqKhwycb6fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTs9i-0002z5-Ed; Thu, 23 May 2019 18:09:30 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTs9a-0002yS-Vy
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 18:09:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id x64so6789611wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 11:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sOizVTvn298iqjSRIp3glGwvPvP9G7hNhxiAnwHpvqc=;
 b=HT6PtgZ6wal7rH84TWBdE51xCeto45OrsGyFFDtrbFmNmcgEAA1B2EBwKF8VC5xOkb
 7uOUIKrnz9F1TSPHPVm5QQqW2woKrLheB47BUr/1eTGeohIB70SxmuuNFulA3gxrsl8F
 GYqzNO/3OiY/ilaAScYRcCRDuw9JURz/VR1IsMDW3t89JD/s2OqB5WUFuHi9M9n4ZLnh
 MYP1IPRAnvHuqovoQvzUHmqL0uHWn+m49qPR5c/9ErFB7lSnl2HHv8fYOTVRp6BkMVeK
 x71H1lKbrLZn8i8wOG2nTEZ/K9R+Em39arssLJ9d2Q8Na99qY74T3P32gWd7OXR2PzNi
 Z0cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sOizVTvn298iqjSRIp3glGwvPvP9G7hNhxiAnwHpvqc=;
 b=RQD5GZbXSE/TvrC+v6YVoT49MxEpPE2LnnVP71i0hV07Oa+L9rZcm8AOadU+EfWjhD
 cZyhuJezPS+8wdFYhKnFW1CDSQ9UEROlIQP5RQBAXXX4eNqWzM+PW89uvnqw7ZRmvugG
 kmp1zthY5HbkC2yfW0bnV4n8nJNDmduJjXRETsjPm8+wr08/Xp0f7ImYvrocdhloXftW
 nfGtxfjnmdZ4En4l+nZv4cESgHiTFN7va2m1/uC2U36x7MWrS25OQ40N8knwjB3OFEoK
 u9pic5ANmhIZpo60rnG6B3mDzDgXdyuuUcl1hVMUUtvJWySyD2B9AKOFLf20OWu5ORQZ
 My5A==
X-Gm-Message-State: APjAAAWHo4GcW/SMzXOeO6rw5Jc2x7beAmTZ+NVq2Xd6wap4oru4nix7
 331+hqjFkFP6nVvfSeYZO28=
X-Google-Smtp-Source: APXvYqy147/NpI75h/2GI1OtYxZdgY6B6QxWwtQHLXxbCBDNL5Qo9H3CMyCRV+mfMbejpfCFouvBpA==
X-Received: by 2002:a1c:7dcf:: with SMTP id y198mr12219750wmc.94.1558634961344; 
 Thu, 23 May 2019 11:09:21 -0700 (PDT)
Received: from ?IPv6:2003:ea:8be9:7a00:3cd1:e8fe:d810:b3f0?
 (p200300EA8BE97A003CD1E8FED810B3F0.dip0.t-ipconnect.de.
 [2003:ea:8be9:7a00:3cd1:e8fe:d810:b3f0])
 by smtp.googlemail.com with ESMTPSA id y10sm451116wmg.8.2019.05.23.11.09.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 11:09:20 -0700 (PDT)
Subject: [PATCH net-next v2 1/3] net: phy: add interface mode
 PHY_INTERFACE_MODE_USXGMII
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 David Miller <davem@davemloft.net>
References: <9d284f4d-93ee-fb27-e386-80825f92adc8@gmail.com>
Message-ID: <10f0f749-ec92-2ec6-45bf-a4f40163a19a@gmail.com>
Date: Thu, 23 May 2019 20:06:49 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <9d284f4d-93ee-fb27-e386-80825f92adc8@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_110923_031148_6DC41391 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hkallweit1[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hkallweit1[at]gmail.com)
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
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
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
