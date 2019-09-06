Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68391AB26B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 08:26:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+JMpkmDQfWZOpO9IiRHUpKBuAC/qPhjlLo1jOtTqwOY=; b=MMLuvcSr93Tsyi
	xestgL0pSRtgF/lNEgDE77BteY7NF43WlpZqRyQoPTbglYATT3PFR3AlZZ/yz5t1wRiM8AVewPBsD
	uBLaV0tsU/NKitLbJTiVxTTvEwdwYmKP3IoFujm64VFKM8pxIcSq79Zyy23YsW3YIvxYeKCf8hEQ6
	Dw+p+yTrcgLRY68+g7Uxl+1/ZfNGLAzMvTdqBReXJ7oD1eJjR8QHBrHKmR14L1Lxvu3JMOYfeznR9
	zvBuqXPYXyYtWIdMqE28sY9wAYJl4LqFFyfDjEBtWgp5z4fDthWFh6XTRoZSZOzTMVBrcuFTgg1pd
	yad44M7U6TgxUqQRCL/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i67h8-0005QM-Ur; Fri, 06 Sep 2019 06:26:06 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i67h0-0005Pq-Pp
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 06:26:00 +0000
Received: by mail-pl1-x643.google.com with SMTP id y1so2597861plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 23:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nRxcumHCoieD4YHhJDBwA9IBTCoCwLTVhc9o3nRRDkI=;
 b=ADimNP2ND3VOH2ln0p+yNfF/DGU2qkBipN72ljAr/PczQvTfbrKsX07vY8Zdwngoar
 LhdZEUosmuWvZxdURnHwN7oYANLXkw1O7D6cD5OJp5+/tCkczEX/nk5v6+w2CXfSDCk9
 L8eHl7xI6P/RcTjbsUVJuQNkq6YLcLN6H3OV6ApvAePbpWSpsOyYEqqqvMNYFtcxKvQR
 cbG2R/hIbwiZcQaSbzwjgw2yVtC0T4zgOKxeF049FwRTUIo7ETmaEAstIajleYpZtZKM
 C42BxBvR8hUAH8v2LxsxzjNdxPxoxqeK2II8PyPVrsFPJubqbesfhTTe9RIflLXv6b83
 6QLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nRxcumHCoieD4YHhJDBwA9IBTCoCwLTVhc9o3nRRDkI=;
 b=Uxcw0Tn0hI8fTTLAnuYdlsK6aL43QSSoOslDilP5wnO8dqXOkDqZZJXmhQhbfY1f3F
 jAL+4iCzUQ36qocdl3V38zwLmCiyZxDbVGKuth2nt9k8T1UU7FaW0I90cJDF+Xl26BZp
 46MnCpbDzuTMkVmAOThFd8V0Y3RFGMz/GSfjFtUpbvE8GO516Ebr8uh5N4qoxkGwQRdQ
 JujXJ4dorxwnbY5ces2uUuMZcafOBeqHQ4pn9pkpKQdOB6OWST2GsDKpHtiOrGdFr9bj
 yiVwM8d65rQpKvbO8Nt9cT6m7Mn55od8Drn8qRVpIZzkG4xA9r27f4jQCsxOOueVCqVY
 dkKA==
X-Gm-Message-State: APjAAAU8FHJkoAN8BwfJvcaVjUbShUfxYHolIOeFCkUeP2dMYQvMQ1UJ
 rfiGO6MCfwCC1mzH5BP9ZfQ=
X-Google-Smtp-Source: APXvYqxAHm7TEMjvZZG+IKwNgVMQW4iXvRHQ3UYm4fIeZ5CGft2zoBZMr3vCIp78S9acysQdbufG3A==
X-Received: by 2002:a17:902:748b:: with SMTP id
 h11mr7587383pll.269.1567751158029; 
 Thu, 05 Sep 2019 23:25:58 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id y192sm6244998pfg.141.2019.09.05.23.25.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 23:25:57 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH v3 1/5] dt-bindings: gpio: aspeed: Update documentation with
 ast2600 controllers
Date: Fri,  6 Sep 2019 16:25:47 +1000
Message-Id: <20190906062547.13264-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_232558_836600_71CB0E1F 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT" <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, open list <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Rashmica Gupta <rashmica.g@gmail.com>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ast2600 is a new generation of SoC from ASPEED. Similarly to the
ast2400 and ast2500, it has a GPIO controller for it's 3.3V GPIO pins.
Additionally, it has a GPIO controller for 36 1.8V GPIO pins.  We use
the ngpio property to differentiate between these controllers.

Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
---
 Documentation/devicetree/bindings/gpio/gpio-aspeed.txt | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-aspeed.txt b/Documentation/devicetree/bindings/gpio/gpio-aspeed.txt
index 7e9b586770b0..b2033fc3a71a 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-aspeed.txt
+++ b/Documentation/devicetree/bindings/gpio/gpio-aspeed.txt
@@ -2,7 +2,8 @@ Aspeed GPIO controller Device Tree Bindings
 -------------------------------------------
 
 Required properties:
-- compatible		: Either "aspeed,ast2400-gpio" or "aspeed,ast2500-gpio"
+- compatible		: Either "aspeed,ast2400-gpio", "aspeed,ast2500-gpio",
+					or "aspeed,ast2600-gpio".
 
 - #gpio-cells 		: Should be two
 			  - First cell is the GPIO line number
@@ -17,7 +18,9 @@ Required properties:
 
 Optional properties:
 
-- clocks                : A phandle to the clock to use for debounce timings
+- clocks		: A phandle to the clock to use for debounce timings
+- ngpios		: Number of GPIOs controlled by this controller. Should	be set
+				  when there are multiple GPIO controllers on a SoC (ast2600).
 
 The gpio and interrupt properties are further described in their respective
 bindings documentation:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
