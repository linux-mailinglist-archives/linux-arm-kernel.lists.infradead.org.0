Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A703EBB66B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 16:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LKSjdKtgNlVswFbqrVh3vBJotu7A2VQ9FCd8u9afP4g=; b=nUn
	r3DCEZ7A85h0xWqlY7b3kqJIf/OxcDp6esXLevFLi1cpXz9AKqSZ3OP23YolVhCuwuJZ0A9P8zaM/
	6lCGv0f5PE1P6DakQfiJOc8SKMdAC89d4rAd3XdEhTBb1x4zEsJA/MopQTTgTIdUqMS51JCH6M6tc
	pDtZRqFhqjLuA5X8cedveaWV5MxqYxjVhGnTWQxPrxwAQpvOhBzYILZ20TpbDvkzNW7GSpXVf93M9
	R6yPxiSoAwB9qQ14nQw+9Co6uYOBPsvVrfigueugBXdPubLhiXENewOF9hNmfegpYBQqusQmvmXbP
	9Ro2yBQMP9nLhSlsSbseEVuw14pR+5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCP87-00071c-Pv; Mon, 23 Sep 2019 14:15:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCP72-0004uz-Co; Mon, 23 Sep 2019 14:14:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id o18so14114095wrv.13;
 Mon, 23 Sep 2019 07:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/ipEvkTrDUAQZ6A9pj0LrEG9sqsJpRZyjqmkY4uDpwI=;
 b=aAgSh8i96OGbdM5LwzM1GgkU446nP7S236VaBnX9OkxS4QhsBI9a4qDoNc/if9ZPEK
 ElwXynkGa4OEfoOvhaZliPGOjQolMPhBPmjjhKYxYqm3fXjaqfKbeMDpvcO7MukVM63d
 n89B3qJHbaUV1VECag9lVca4gVrBSqhB6NktMa9cVHez0s6+0mMmLmWZaKTkQSewPFne
 wCUpH/RBNl6PPNt2mfVM+Eg4XwFt+YsQGZFei78N01wJRDREQW68K8pnzmDoHxybui4K
 IxU0DifKXjBCcickZHDaEQeS6ihiFew8iBdhtVcMsCKSzuJQk8IiqgAEy4k4rVGXqs/I
 It1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/ipEvkTrDUAQZ6A9pj0LrEG9sqsJpRZyjqmkY4uDpwI=;
 b=GWYeeN8JF3yUyokWkCfUq58AFbT24CV6ydNrmWWof1duQENeV6z3gdrIqMioCEqrem
 1D9xlREZIr9NtUCbWdDN5trQFi6MZoC7gsQu8M/bSWlNIyjKJQyZqd5rlfjRFw3sAyOZ
 uwlTfMhuicqt2AqBV7Yvv0Mx0jJZvaM/J0i3rYDUaDN3dEHJ2eS4AL+WKFqGsa2pUyEp
 /UEl2yft8aVS3f0QloBpZznU9dJzYL4t/stnJALRIANUMNTkA0xAZVnCJ62FI3dPQ8E+
 IITWdZZYiq7Y4Plb8AuokKa+8yJKE+71ESfJ84eQ/D4TV8ntoiXR1FY34yxEEOqsbXXg
 s8AQ==
X-Gm-Message-State: APjAAAUhw7rgxeSDn/6mi18lvMz/TaIvGrmjmCKpLObcoJTRs2+YC/Zp
 XUhk3DAiSb2Ibp3k9dOMWsA=
X-Google-Smtp-Source: APXvYqw9HAjjnuXBdavuZ0SRshgnZYju0QLuOimouoUS/1DbePdxtej/ae9JRg50dT7Zh7zfycLseA==
X-Received: by 2002:a5d:4985:: with SMTP id r5mr12325276wrq.139.1569248086133; 
 Mon, 23 Sep 2019 07:14:46 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id h17sm7001700wmb.33.2019.09.23.07.14.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 23 Sep 2019 07:14:45 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/3] arm64: meson-g12b: Add support for the Ugoos AM6
Date: Mon, 23 Sep 2019 18:13:53 +0400
Message-Id: <1569248036-6729-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_071448_638295_BA727852 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for the Ugoos AM6, an Android STB based on
the Amlogic W400 reference design with the S922X chipset.

v2: correction of minor nits

v3: address regulator and GPIO corrections from Neil Armstrong (using
schematic excerpts from Ugoos) and related v2 comments from Martin
Blumenstingle. Add acks on patches 1/2 from Rob Herring.

v4: address nits from Martin except for the vcc_3v3 node as it's not
known how to handle the vcc_3v3 regulator managed by ATF firmware, so
it remains untouched/undeclared like other g12a/g12b/sm1 boards.

v5: corrected some tabs v spaces issues introduced in v4.

Christian Hewitt (3):
  dt-bindings: Add vendor prefix for Ugoos
  dt-bindings: arm: amlogic: Add support for the Ugoos AM6
  arm64: dts: meson-g12b-ugoos-am6: add initial device-tree

 Documentation/devicetree/bindings/arm/amlogic.yaml |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/amlogic/Makefile               |   1 +
 .../boot/dts/amlogic/meson-g12b-ugoos-am6.dts      | 557 +++++++++++++++++++++
 4 files changed, 561 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
