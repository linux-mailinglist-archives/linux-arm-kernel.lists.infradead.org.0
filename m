Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6BD41A82
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 04:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wfzIQbDmrLxxuqNpljFbQdgkMGVOR2+bkrUl+M+37Cw=; b=HUp/YWx82PIK93l86ju71WKiKe
	onO+Q+VsywWvh2NFvPs38GcILZkpf6enPJINWihYoTAeeGWTxFRrtuzBhSYYqP2LDxNZZPYCPa5HD
	EVuszugRPLR0YQbtftKBLjsq2CBpSG80H4R5JViiAqA0BzUsn84g3tDcsaq5Lut1HMp+omjJGpTzQ
	wetjfeJNzXnbQGxHMQ9+imxgoL9QXf9+47NMiFBJ14lObmoM/DJSRCkH6fSdTsyEXiFCq4ZBkf/E6
	K5K4E+Kf21AA0aAwzTqCCjWIdeEConKWGHqLM1LqCUHiWBuMYbl0zsgcrStl7MuJb0PyKPByHctXQ
	xSRr4EEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hatM8-0003CI-Uj; Wed, 12 Jun 2019 02:51:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hatLc-00031y-M1
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 02:50:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so15120098wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 19:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9jbfxDqfKDpO6Ji1NO+xfowMxDpt4m6xrw4emhxO0wM=;
 b=sN3nRSm77CTL0SKAcmTQF8ja3zFuJqoB/BL6EZkEyWMt/5SvG4ZzLdhVYEeq7DV8AS
 oGH2kO25MFTjdU9mqAFiD/WKOwKhSJwHhYZvWGCmNQ9wv30zfk9a4o5NPo/fyiWdmY6h
 VdqWQHhg6ODUG07cIUG84zHs1xAKEIqFHRv46OF1X/zbFmDMnuQVsTJoArghsmM31FPI
 ek0f2YHZr/QEtNS/X/U+dNj600H8A9rXmxFlvki3DoXPT6xelUlhRhB1qgHg6QE0U0VA
 IFzRk+5V12LVVDyUWmAQFdBXh70efgr9TaWvuOip3G0j2L+aLJzTBSkGSVmQt0iVGnh2
 OFzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9jbfxDqfKDpO6Ji1NO+xfowMxDpt4m6xrw4emhxO0wM=;
 b=B0imS/YIY+hW+Te6R25TMGimFwh0C2uRxmFVc+kH8+Ir1zyHQjtFtflFv4fdFad3m9
 wZT/01m3Tw0BiQxxcsqgxYMB2SMUqjSk+Czsub/KeCWRoV0cwvA7ucFzRwGi8sowvSH5
 JDSObMYPTCgT+QxaTbejAJkuzvBT2ZaYNhgBIT2sKncmjWBxj5uPODbdZdxQv20V185L
 wLWhr0A6ssknBkjRb+Lxxf49bcFKSjq9kpCtChEH2tNke78tLj9Enad8TTXMrWcKmsse
 AY66Lpo9UmTe1Coitywx6S3JgOBehHzQ+fCl0l6nQ7YE+q5EVbOKsKoDwYxxFu/TJ3xJ
 Ibcw==
X-Gm-Message-State: APjAAAVmyKbBT7tWB1OK3szzvnF6IHXvNzuFc5tha4PRHQy2c8Bs5kRV
 N164MZNtAvfZX+SytzEjmhI=
X-Google-Smtp-Source: APXvYqwtBm7Qcgnnwmp1QlVhkVwpatVOysnfaV8YXM7REdrb2776FSC4gtkWC9JZBzCeeIaTHsDJsw==
X-Received: by 2002:adf:9b8e:: with SMTP id d14mr3339913wrc.233.1560307847089; 
 Tue, 11 Jun 2019 19:50:47 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s10sm4374100wmf.8.2019.06.11.19.50.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 19:50:46 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 2/6] Broadcom devicetree-arm64 changes for 5.3
Date: Tue, 11 Jun 2019 19:50:24 -0700
Message-Id: <20190612025028.13118-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612025028.13118-1-f.fainelli@gmail.com>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_195048_718166_24F52A5B 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de,
 Scott Branden <scott.branden@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>, khilman@kernel.org,
 Pramod Kumar <pramod.kumar@broadcom.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, olof@lixom.net,
 Ray Jui <ray.jui@broadcom.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/devicetree-arm64

for you to fetch changes up to f8526c2d99ca87ccbc0a3da00555d6d08e25d058:

  arm64: dts: Stingray: Add NIC i2c device node (2019-05-20 09:31:35 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM64-based SoCs Device Tree changes
for 5.3, please pull the following:

- Pramod adds the Device Tree nodes for thermal support on Stingray

- Srinath adds the Device Tree nodes for both XHCI (host) and BDC
  (device) modes

- Rayagonda adds the Device Tree node for slave I2C operation when
  Stingray operates as a SmartNIC

----------------------------------------------------------------
Pramod Kumar (1):
      arm64: dts: stingray: Add Stingray Thermal DT support.

Rayagonda Kokatanur (1):
      arm64: dts: Stingray: Add NIC i2c device node

Srinath Mannam (1):
      arm64: dts: Add USB DT nodes for Stingray SoC

 .../boot/dts/broadcom/stingray/stingray-usb.dtsi   |  72 ++++++++++++++
 .../arm64/boot/dts/broadcom/stingray/stingray.dtsi | 108 +++++++++++++++++++++
 2 files changed, 180 insertions(+)
 create mode 100644 arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
