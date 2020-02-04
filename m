Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784061523C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 01:07:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VA5tt+oxxVbBcx3y3dSeMFSl1E2DjQ6ymZ3/m4+YNKo=; b=MpO/Audya4aG3S
	T4kEX8gfi7OS9W5IDLzSnFf0sq393ucSvv56yNvqzTKDI4qMHMfbRJinTarHkfMAKedMpJHFHT8bG
	qDWjCg4LLA7xw4yCw2zorK0A47T7hO+DuZhglvu3fTvE30c3xJpFruhCCFew/aWB8vgJYdJqvgApT
	O+JnOa98lv73uPvVUuudsdiKlJV5QYbYnVD4VrSkhDaFL3tse+n8SEPLSdOaDb+/Mf0AmMeST7HA3
	+RRl3KQClBIeSPxdAyFRsoyX2c7S5IKrwSzv4YD4tAWHcZ1q910lRINF7yfhoqImIyKcxaT27VvzO
	w8BcD5Z+raJdvxAVHUfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8EB-0005Ln-In; Wed, 05 Feb 2020 00:07:35 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8E2-0005LC-Cs; Wed, 05 Feb 2020 00:07:27 +0000
Received: by mail-pf1-x430.google.com with SMTP id q8so193280pfh.7;
 Tue, 04 Feb 2020 16:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sKuRVgZYpENen5Cz3VDrnFcc4DVuMBzApnyyyVJ6zaE=;
 b=KQhh3jNzBpodgAhuHIuGWKRjfiTD86TDKA23osA7JkY++h0/PKlBfkiOw89Ar6A8uE
 +cOzJ0G2EJOWw8pSiRKAUxQrNKVeScWlUhD4z89/PGY0V/xabP8ie1QMB2+qcyhqD+Nw
 EKzmpEI81e3DPWau+NGt4BDodD+9mrFlpmsJv88LzkKb5i8XYfx3rRmfUMubQAK47fn9
 QZbrk9+y1sMf3NKU5/eDLMnbEIh1I3CkDjcqmB1+DSgIqnvG3yNe1pG4HaO06E1OxLfn
 wMXjP0Rg1jEkREK8u5c0aHmGp6nXkl/dbdozjSfTtaeX9LmjEFnc4vuKmgRab5TE5HWq
 YP1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sKuRVgZYpENen5Cz3VDrnFcc4DVuMBzApnyyyVJ6zaE=;
 b=mNE6umpsO6RW7hpFUrQLalej6S4CWwrFFhCX8VVP27+xHrxeDuUWpapL6eRjpSdri+
 qMm+a5Ki01yfKhVSnhSUFL7G4dwFBaWseky4z24P0v29B5hWcSC6KwdgqNQO+fxBDGLO
 10L3Kol8gEPjZq0nBs3ULiQ9gpaQgUh9C4I6PMpH+3J8fVx9pP3OhTpMgq+ch0CP/D9Z
 oqpSkxaQ8Rp3KcOfTvS5GY5aqSLmYnYsr35znlWroGgFknV9bLy6P3t6/yaU8Q3iGXcy
 0mDOsghyCra1T0FJjUwKT+ZJHgetMNPdC1PLmpvaz8QV5VZZ1ojW0mZknqt0WBSIvfBt
 +PiA==
X-Gm-Message-State: APjAAAUsyAflinD30K5goggw7m4oaX+YebJC9pM9ewtg6WMh5Gsh9nP9
 9aZsi6SQQkeuHEm2xAhdTTQ4d178
X-Google-Smtp-Source: APXvYqx0K3cPPads9nxdC8fJvQ9IeGOtnRotQy3PL9b2ojqNWhd1Q+HuBQScM883KEjPz4kC4xdNnQ==
X-Received: by 2002:a63:d40d:: with SMTP id a13mr34868627pgh.9.1580861245087; 
 Tue, 04 Feb 2020 16:07:25 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id g2sm25575468pgn.59.2020.02.04.16.07.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 16:07:24 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 00/12] dt-bindings: arm: bcm: Convert boards to YAML
Date: Tue,  4 Feb 2020 15:55:40 -0800
Message-Id: <20200204235552.7466-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_160726_462872_05079D30 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 "james.tai" <james.tai@realtek.com>, Arnd Bergmann <arnd@arndb.de>,
 Scott Branden <sbranden@broadcom.com>,
 Sugaya Taichi <sugaya.taichi@socionext.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Joel Stanley <joel@jms.id.au>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob, Maxime,

This patch series converts most files under D/dt-bindings/arm/bcm/ with
the exception of bcm63138 and brcmstb to the YAML format. Those two may
be split accordingly later on since document not just the root node.

Changes in v2:

- fixed typo in Vulcan binding
- simplified how SoC compatible strings are specified
- fixed filename in bcm2835 firmware binding
- added 'secondary-boot-reg' constraint


Florian Fainelli (12):
  dt-bindings: arm: bcm: Convert Cygnus to YAML
  dt-bindings: arm: bcm: Convert Hurricane 2 to YAML
  dt-bindings: arm: bcm: Convert Northstar Plus to YAML
  dt-bindings: arm: bcm: Convert Northstar 2 to YAML
  dt-bindings: arm: bcm: Convert Stingray to YAML
  dt-bindings: arm: bcm: Convert BCM21664 to YAML
  dt-bindings: arm: bcm: Convert BCM23550 to YAML
  dt-bindings: arm: bcm: Convert BCM4708 to YAML
  dt-bindings: arm: bcm: Convert BCM11351 to YAML
  dt-bindings: arm: bcm: Convert Vulcan to YAML
  dt-bindings: arm: Document Broadcom SoCs 'secondary-boot-reg'
  dt-bindings: arm: bcm: Convert BCM2835 firmware binding to YAML

 .../arm/bcm/brcm,bcm11351-cpu-method.txt      | 36 --------
 .../bindings/arm/bcm/brcm,bcm11351.txt        | 10 ---
 .../bindings/arm/bcm/brcm,bcm11351.yaml       | 21 +++++
 .../bindings/arm/bcm/brcm,bcm21664.txt        | 15 ----
 .../bindings/arm/bcm/brcm,bcm21664.yaml       | 21 +++++
 .../arm/bcm/brcm,bcm23550-cpu-method.txt      | 36 --------
 .../bindings/arm/bcm/brcm,bcm23550.txt        | 15 ----
 .../bindings/arm/bcm/brcm,bcm23550.yaml       | 21 +++++
 .../bindings/arm/bcm/brcm,bcm4708.txt         | 15 ----
 .../bindings/arm/bcm/brcm,bcm4708.yaml        | 88 +++++++++++++++++++
 .../bindings/arm/bcm/brcm,cygnus.txt          | 31 -------
 .../bindings/arm/bcm/brcm,cygnus.yaml         | 29 ++++++
 .../devicetree/bindings/arm/bcm/brcm,hr2.txt  | 14 ---
 .../devicetree/bindings/arm/bcm/brcm,hr2.yaml | 28 ++++++
 .../devicetree/bindings/arm/bcm/brcm,ns2.txt  |  9 --
 .../devicetree/bindings/arm/bcm/brcm,ns2.yaml | 23 +++++
 .../bindings/arm/bcm/brcm,nsp-cpu-method.txt  | 39 --------
 .../devicetree/bindings/arm/bcm/brcm,nsp.txt  | 34 -------
 .../devicetree/bindings/arm/bcm/brcm,nsp.yaml | 36 ++++++++
 .../bindings/arm/bcm/brcm,stingray.txt        | 12 ---
 .../bindings/arm/bcm/brcm,stingray.yaml       | 24 +++++
 .../bindings/arm/bcm/brcm,vulcan-soc.txt      | 10 ---
 .../bindings/arm/bcm/brcm,vulcan-soc.yaml     | 22 +++++
 .../arm/bcm/raspberrypi,bcm2835-firmware.txt  | 14 ---
 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 33 +++++++
 .../devicetree/bindings/arm/cpus.yaml         | 33 +++++++
 26 files changed, 379 insertions(+), 290 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351-cpu-method.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550-cpu-method.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,hr2.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,hr2.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,ns2.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,ns2.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,nsp-cpu-method.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,nsp.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,nsp.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,stingray.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml

-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
