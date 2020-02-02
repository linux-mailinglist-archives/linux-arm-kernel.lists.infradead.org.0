Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC38B14FF3B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:19:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WvQGg5riqg+dss4mPXZb0qG41qjIrQMvyww9/VUOAsk=; b=Ofw
	uUVqbsfNGCiZqnmg18Aew3am+K8ymjYXyvUMEq+G9po6TG8r7gjyOpbguUo6s6nXB5K7TXKT/UiIX
	VA4xwKlsDwrC0g75D6VzLk0gyodYrpQfzDTGzaQkS+RAhE3mn2Ea6oDMVanFj1KqeNQsM5nKAHkVA
	WqqREMSHmvsfdJjl/83/TbKhegndRQEAeimCMfPoJKCBeO5dy3/+G7DxNVvRxpG/O3uGIntAUPBXy
	F2rvC3Jb1IfE7UkWYOHpAhO8xKu8o4hOgR78CnYOvkaSkSzVrHRoPqTG7L3sLDJb8LhOs6O1zGcbA
	RbUDpHpeKFfYtF3FReJfuv+91f2B5GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMe7-00021W-7X; Sun, 02 Feb 2020 21:19:11 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMdz-0001zc-Jj; Sun, 02 Feb 2020 21:19:05 +0000
Received: by mail-pl1-x644.google.com with SMTP id g6so5022610plp.6;
 Sun, 02 Feb 2020 13:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=04i36zyfiz51z7eT5HV2OIVr29EI5WaNJsS0RGWr67s=;
 b=gY7speDpmI6/WM4qTRz0yzyX8KB0Ia+aJ/EDBvUCQfosP4MslP1VLcDpr8jMt6hiNs
 4is/6wRQCumsrm6bOErSMiI1qZv7f8zFUFsSZnglP5DWvV6tys3e6NJPlYyRVvpxmcee
 b4wlgqWLTVmnBTtuk4KXPZEqW4bphWx04WsIUxCqYhA3DKS/iXjfXKkTe1pqQoesZ16o
 Wptw6NpXeCjQ5Qhmv9WLY0BP9nsrhDaAkTzMxANW/feTmvh0VDnYJyFSymScnc/JM24l
 J6q/vRL0vwv8LKfXIESrBJjpDgwMD3uJTaES9ZgtHVkURrbkUL+ziIc6C2noVutYLwqU
 BGkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=04i36zyfiz51z7eT5HV2OIVr29EI5WaNJsS0RGWr67s=;
 b=gW1e37LYOYwYqKlAqUieptzOQfOTz//WxTXCS73hFl4j6MHlOpp3OAiSbVeuQ2n/ZD
 VG7XXJ3xWKaIbR2AY66XgfX75wTftgtTEZRm0Ja4i4ZOuHTTXPsekUv+wLJcjfjsb6oQ
 /Uc8dpzwk+m63c2xKN8KgeoIenM6d2mEy3PkkHyilZTNAlTFBIi3twfG2g5W6FFJOneA
 QjAwc8lnUF1jEY3yDsfUxN7ddkQxPQfmE8TwCSQvU1N/tEWNLDlf89Hq8Jgbawpmta3m
 0GO8Cy5J1PKdTkqt2r2DZnIRjVg1sJruGGQedsGyMyonp6JFXcT7QAtSgMAfKcdY24sH
 2D4Q==
X-Gm-Message-State: APjAAAVaRRmL+VCtE5Y4CXAUxFQLh4L7INuhbsBhvXym2JRlmeU3yP+3
 06sKqtbAr5H/acgUrB2+UBQ=
X-Google-Smtp-Source: APXvYqzdCwZ3TKIAMcS2BLggKnc2AhScNcnKyLh7xtQG+us/aUCJWzJG4od80uak2LhqlhdSGVCxBQ==
X-Received: by 2002:a17:90a:26ec:: with SMTP id
 m99mr25756067pje.130.1580678337405; 
 Sun, 02 Feb 2020 13:18:57 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y24sm8755639pge.72.2020.02.02.13.18.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:18:56 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH 00/12] dt-bindings: arm: bcm: Convert boards to YAML
Date: Sun,  2 Feb 2020 13:18:15 -0800
Message-Id: <20200202211827.27682-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_131903_650421_36FCC862 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Sugaya Taichi <sugaya.taichi@socionext.com>,
 Ray Jui <rjui@broadcom.com>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

This patch series converts most files under D/dt-bindings/arm/bcm/ with
the exception of bcm63138 and brcmstb to the YAML format. Those two may
be split accordingly later on since document not just the root node.

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
 .../bindings/arm/bcm/brcm,bcm11351.yaml       | 23 +++++
 .../bindings/arm/bcm/brcm,bcm21664.txt        | 15 ----
 .../bindings/arm/bcm/brcm,bcm21664.yaml       | 23 +++++
 .../arm/bcm/brcm,bcm23550-cpu-method.txt      | 36 --------
 .../bindings/arm/bcm/brcm,bcm23550.txt        | 15 ----
 .../bindings/arm/bcm/brcm,bcm23550.yaml       | 23 +++++
 .../bindings/arm/bcm/brcm,bcm4708.txt         | 15 ----
 .../bindings/arm/bcm/brcm,bcm4708.yaml        | 88 +++++++++++++++++++
 .../bindings/arm/bcm/brcm,cygnus.txt          | 31 -------
 .../bindings/arm/bcm/brcm,cygnus.yaml         | 66 ++++++++++++++
 .../devicetree/bindings/arm/bcm/brcm,hr2.txt  | 14 ---
 .../devicetree/bindings/arm/bcm/brcm,hr2.yaml | 30 +++++++
 .../devicetree/bindings/arm/bcm/brcm,ns2.txt  |  9 --
 .../devicetree/bindings/arm/bcm/brcm,ns2.yaml | 25 ++++++
 .../bindings/arm/bcm/brcm,nsp-cpu-method.txt  | 39 --------
 .../devicetree/bindings/arm/bcm/brcm,nsp.txt  | 34 -------
 .../devicetree/bindings/arm/bcm/brcm,nsp.yaml | 68 ++++++++++++++
 .../bindings/arm/bcm/brcm,stingray.txt        | 12 ---
 .../bindings/arm/bcm/brcm,stingray.yaml       | 26 ++++++
 .../bindings/arm/bcm/brcm,vulcan-soc.txt      | 10 ---
 .../bindings/arm/bcm/brcm,vulcan-soc.yaml     | 24 +++++
 .../arm/bcm/raspberrypi,bcm2835-firmware.txt  | 14 ---
 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 33 +++++++
 .../devicetree/bindings/arm/cpus.yaml         | 16 ++++
 26 files changed, 445 insertions(+), 290 deletions(-)
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
