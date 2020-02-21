Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE7B166DD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 04:37:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VfH4ut1b/x97X8v6sLWyjwfCMeVPrpZvVBVPpgsQK40=; b=aR7hc4N1fSRERY
	PvLz84Jzb74DdhK1VwQ+PCOio9va3UlUVEQkFjwFaYJ4r6vlGQniQvP/Q+dHT+nXXCAEDvZ6GweBp
	bbSt+D7LKIxXk8lfSFR9vMBpfUxlF8tKrIfJcGJptC4rV+nXOJ/ZfLwT/J9qB11woDlpLgC4QdUOu
	1oSk08FE9Hyg+L7nkLGexH75iPwzVBIs5gu8C3DrVPTE3l8WuzSpErhRbjebZy2SEnnhlVKl6GTVq
	ayfLp3SrR5YItO161ktTUteUde9ezOgYrRy/vwOwKg4FvJIl225Rr5XjHxHDg6fLBs7O58GlqLnew
	Du26vH1rRWLIAAWc3M/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4z7f-0000EQ-Bv; Fri, 21 Feb 2020 03:37:03 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4z7X-0000DG-Lu
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 03:36:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id i19so489503pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 19:36:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/ZVITalxr0zACv67WhCn8mXrnEG7g8ElF3YeRI2boGk=;
 b=ACaSaiEVherPWZpY/4OhNEaNJCeHRnGC0qiiAfVBniFEjAdY0MOlJZIcDV8yBF4veE
 lcsxsyJcTZ0YIMDqQ/CKYzqI+eg319ks8PIlv+6YyHmygs5ZCz9OM0tjpATNuDAOC12H
 +M9iAuji08j3cwakHNrIbfpBtHalWZLoeptIqHWzZ6Joxegiox25CjOBltcwJEChhT+2
 +3fZ89oenXQiPPMAAjZV3Oel6xCGHLQdjensxfa2rw4kBbyNbhitPXNGP/d/dqHkC8jG
 WN7MQoobVFjRMUP0ZPFWBdvXxyAewa7Bi14Sd1YtnXwNyMPggMHtKVdBGcZ8TAXvlmVl
 r16g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/ZVITalxr0zACv67WhCn8mXrnEG7g8ElF3YeRI2boGk=;
 b=NCod/EtOwqr4Q5voIi7qMZeeHdl+TTrlhvvteeO0bJtMemtC5ZaZJL/Nn5EIOe2Zt1
 HvG51wSQRkiX3zOWKY6l38Vb5cmGzV/H01IbmAgkZw0b80GRJwKBaj9jtJ2xjOUb1gNY
 i52CONxqHMLOlj8Blkxqpps5EH2cRkXe0VP56av/SAOIfkpCcqcjCZBjo/sljXYYMKwG
 f3FBeamsXaspSFKMVU2PJNdrjihKU1VLdIA7aRO9AESxe8vRJ6DBH6FzrSbBraEHPJ3t
 c8r2vruJTfa62WKjwpvxxy3yN3oWzwvJg9X5dJRZAznY/BaVKA4+jy/Ns9vsoNaPgXhJ
 ecAQ==
X-Gm-Message-State: APjAAAVcyG8Ec3HdyO+yK6S/Iu+ab4FADA3Hd4ShbMEu8wMgWIydveD9
 UCyVtHjRz41qgvL7/jY2Vqw=
X-Google-Smtp-Source: APXvYqz3vCnJLqlVJxxqA+HHKpIJcZ0nTQQOE9j3jO9o9J1n5iRzsN1qIxwi9EnSS0fkXtv5NQiq4g==
X-Received: by 2002:a65:420c:: with SMTP id c12mr35065463pgq.270.1582256214283; 
 Thu, 20 Feb 2020 19:36:54 -0800 (PST)
Received: from localhost.localdomain ([125.130.116.2])
 by smtp.gmail.com with ESMTPSA id d4sm781340pjz.12.2020.02.20.19.36.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Feb 2020 19:36:53 -0800 (PST)
From: Jaedon Shin <jaedon.shin@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 0/2] PCI: brcmstb: Add Broadcom STB support
Date: Fri, 21 Feb 2020 12:36:38 +0900
Message-Id: <20200221033640.55163-1-jaedon.shin@gmail.com>
X-Mailer: git-send-email 2.21.0 (Apple Git-122)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_193655_743454_7A1EDEB7 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jaedon.shin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-gpio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Jaedon Shin <jaedon.shin@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series supports GPIO based regulator supplies for its power supplies.
and this has an improvement on devm_ APIs.

Changes v2:
- Remove incomplete 7445 based Broadcom STB SoC enable codes.
- Add devicetree description for supply-names.
- Use -EPROBE_DEFER if the GPIO system is not available.
- Remove unnecessary #ifdef CONFIG_REGULATOR
- Use devm_regulator_bulk_* instead of devm_regulator_*

Jaedon Shin (2):
  PCI: brcmstb: Add regulator support
  PCI: brcmstb: Drop clk_put when probe fails and remove

 .../bindings/pci/brcm,stb-pcie.yaml           |  3 ++
 drivers/pci/controller/pcie-brcmstb.c         | 37 ++++++++++++++++++-
 2 files changed, 39 insertions(+), 1 deletion(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
