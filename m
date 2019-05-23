Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3384C28593
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 20:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w4FZJqT32hKx3PwUiq9ZZm+LiOqYo6Mzh20E0PfGh1E=; b=HsBEH3IKtJOpTf
	l9/zfiDBQE4IMwmrTjnCOwC1RULjt8ZibaBw1q5BSgK46MEFSjvFx3nTUBB0mhJoIA3ydEkIEX4X/
	9QbFnygwKW4IM14wLdVHyfWDHo/qSPZ2KfhqC1SFKAq2Ic7tsthw3UkhjDBmGHt59R03/s2vLZ8PO
	IXmPws/2NwzDZg0cs3TYJlDMMWEealcYr5vFt0rwGLlGNDyz766CZnK1BAfOdsQmKvyjrSa19M6dZ
	ibSxs8pnOoN8K7lFbQXu76LXOhsyJ+9kkscMnNbFdml0MHSXtPcGLEPtjRg6wvyMLojk1gyKDm6QY
	YlL0fFH3PWI7XI01lAvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTs6j-0002bE-4F; Thu, 23 May 2019 18:06:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTs6b-0002aL-Q6
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 18:06:19 +0000
Received: by mail-wr1-x441.google.com with SMTP id r7so7253334wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 11:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=Kmj1SfRwUw9u9puwf4cpgVRacLw8HccKeSb6z3yZrWA=;
 b=fpFi2bU4KezKy9w+iThls3IxbCD6Mte2c+I79JHI/ElfTMKj3/3LRh648w+SpvBnyY
 9zcRq5B9tWPIhkXwy96KPsveApq/X1AbKCoBhjnbySa7BzIUZYAGzXC8Ym1UOe8BUydz
 SGLzUtauv/Idi0QD88S+jMy+VinRjky38aOWPw0a+qnDLt2w60RJYHSayQk6TNYXKUIV
 Fo0MIaRDe51JjNNGIg1RQ4bCcJ7Ajjm+xI0pQnnaQfNz0j4XiWinutoZNCikUGH7dxYA
 y8AaSdthKzqJuC1Q4ymFOq3+vplekJ3GgCpV5rIZ9YQ7is7dUUNQcbFMf0Vh8UJ+fuQj
 5rmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=Kmj1SfRwUw9u9puwf4cpgVRacLw8HccKeSb6z3yZrWA=;
 b=FZF9I7s32Ag/L5u1jILCTp44piCRtZBJCBpzsybdoWqpsQQVHEgHhQLnEROWLJG7w3
 wDB/F7aWUTpibNQlmJULmL8OYHAX8saIUp64n6Q3j3tNujfvbUvsj5obOJ0QWJYxWgiy
 52fnTk5W91caBvhNSILuV5BsTDiZ11+4UvfefdqpF+JwML3OJi/o5HGd7sniGdyFzEO6
 j+tOgjElQDu6Faz/NH+LV4mcyV8SZzRoT1y++uImpkbncG4bmsuslhi3rHHvtsDz6QUN
 R3+p40fZEtv8LSW3W6tDUra4tGl4T6vkRHlsBLc9Lh7ftGieqmWesQxr5IDYdQtGZqpC
 UJQg==
X-Gm-Message-State: APjAAAVOD0/55XT5R+PU6aHbIlHZ5Ma778EIAxMSORa2Wfv5J2kpOeZN
 TYur+Qf+sJfG0bREOAtU3Ww=
X-Google-Smtp-Source: APXvYqyAN4LtfivBu324JAIFzsV9rNdYkmUQmvr7cU+zLh1m7y0XYm5wA5lO3KlKdXT9bze/AeU2WA==
X-Received: by 2002:a5d:4907:: with SMTP id x7mr47122036wrq.199.1558634776314; 
 Thu, 23 May 2019 11:06:16 -0700 (PDT)
Received: from ?IPv6:2003:ea:8be9:7a00:3cd1:e8fe:d810:b3f0?
 (p200300EA8BE97A003CD1E8FED810B3F0.dip0.t-ipconnect.de.
 [2003:ea:8be9:7a00:3cd1:e8fe:d810:b3f0])
 by smtp.googlemail.com with ESMTPSA id w185sm189225wma.39.2019.05.23.11.06.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 11:06:15 -0700 (PDT)
From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next v2 0/3] net: phy: add interface mode
 PHY_INTERFACE_MODE_USXGMII
To: Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 David Miller <davem@davemloft.net>
Message-ID: <9d284f4d-93ee-fb27-e386-80825f92adc8@gmail.com>
Date: Thu, 23 May 2019 20:06:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_110617_845906_6D0B7604 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Add support for interface mode USXGMII.

On Freescale boards LS1043A and LS1046A a warning may pop up now
because mode xgmii should be changed to usxgmii (as the used
Aquantia PHY doesn't support XGMII).

Heiner Kallweit (3):
  net: phy: add interface mode PHY_INTERFACE_MODE_USXGMII
  dt-bindings: net: document new usxgmii phy mode
  net: phy: aquantia: add USXGMII support and warn if XGMII mode is set

 Documentation/devicetree/bindings/net/ethernet.txt | 1 +
 drivers/net/phy/aquantia_main.c                    | 8 ++++++++
 include/linux/phy.h                                | 3 +++
 3 files changed, 12 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
