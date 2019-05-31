Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D7D31401
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0H8dfNs14SuWoOvqsZhyUgSLr7suK0l9wdOZByHgxGc=; b=fMl
	P3+YhCVSXF3MIl/gRfv5v/5GBVUIWt9EY/CDT6YyTDmNXfO29S4oC5xLVly7jB5WmHyu3wtZpove6
	aqB5WLjX4pZ4QOqYVMnqns8r1ldQZv4dBPO0pmxIcmzVjPQzlEZ1Xs1cRutm6XsNqGiPwI0PSFhZd
	26QhmmyuUkBmuHGPKtb5N0tSQNzfIR8ROToO8FrpPYktQPdQkHb2lMJWMV+BImxjuV4TUxJcjQx4z
	TNVq+USI4lgjSjxo6lu4I0kTgl+LvBGvdjq3yksy5bD+wWkg6/7IJeYOPW90+oTQ4Z73qjlA2ispX
	7F5lcb2GFn1exJeZlad3z7SzULILkhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWlXM-0007Yq-Hv; Fri, 31 May 2019 17:41:52 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWlXE-0007Y1-2k
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:41:45 +0000
Received: by mail-pf1-x433.google.com with SMTP id x3so1104206pff.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 10:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gvEHfZCRQthCbo4EQgVV8fZZ6Y/YWXa56oPPEUjSMAY=;
 b=jjtIxPL1QRRfCtzd0tKi0EviHLG1iIclBz5oSW2i9OySZ7T1lGI2adzJmn8hIuZYw7
 Qs+VnXBADlXukHGugHsnHM3wyZQqF594dKOq5/NVN8dAPI+sgzbokSpg22U0FNK16h1n
 M3IQ8XxRGNz1vIUfoU/CVNWYlUKbBQ/M71kQpadyL/j/nn0DIeLYwjecJ8TMg4AbvEP/
 7Ar0qTtniXlA5Qu8A8tsSo46vT64zOfdgqdn5eLajUqkfXZ0++vJ7h+O4LNYp09okUby
 vJ23v1GWRsEt0iE9bC/vI0GZOKSzwr6S4cX+0qyL32OhbREkiCTel5VsVnPGQv76YuNC
 l/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gvEHfZCRQthCbo4EQgVV8fZZ6Y/YWXa56oPPEUjSMAY=;
 b=NUaDzs+Wu8csfKdX1Iq57ZASITESWl55fnHsxBKSILNyZyrkEshHTTJdqoOkQXdmcH
 piS5nrPyzmmK4BwzLIK+SrLVbQKLfE+jAeunS7LOqHNCR9CuVqV7uMoeRLVpjKNesniT
 FRSESHc12GnTHNCeoEILHNttMY0ZpwbZ/hYG3chbhmJQvDexRW2JoAPNABVSXExLkWnw
 dendOGlnle0kXJf/RIMRn+9RWtG9uHDW9y0eH8TPWBy/SNXTpDoIpj8Q71b9MeRGEp+9
 zfDmfCXhY2q9Bz4mR1ZH1NpJ1lCpoaAN8Cg2TUg/XvoS4WyZOqj/Qr+P8TJIKOBuk6WW
 YjTg==
X-Gm-Message-State: APjAAAWvOm5+AXHsLvU+/DPD8B3luXJsCHF6bvGCCykue/rYpBnuYq2B
 yMx30gUphaxPSUUb/1LbJZLm2SY+
X-Google-Smtp-Source: APXvYqztlLpL6LXkFb+ygoeufkOP/Lg9p4Mt4AdG5QT5Z6F545NEy4wZbiCqwBcKevRFyrkqH2k7MA==
X-Received: by 2002:a17:90a:fa0d:: with SMTP id
 cm13mr11182554pjb.115.1559324502874; 
 Fri, 31 May 2019 10:41:42 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id m11sm5373031pjv.21.2019.05.31.10.41.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 10:41:42 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm: bcm: Enable reset and pinctrl for ARCH_BRCMSTB
Date: Fri, 31 May 2019 10:41:27 -0700
Message-Id: <20190531174129.6974-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_104144_147482_22020560 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jim Quinlan <jim2101024@gmail.com>, opendmb@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, Florian Fainelli <f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series enabled PINCTRL and ARCH_HAS_RESET_CONTROLLER for
ARCH_BRCMSTB since we have platforms that require these two subsystems.

Doug Berger (1):
  ARM: bcm: Enable PINCTRL for ARCH_BRCMSTB

Jim Quinlan (1):
  ARM: bcm: Enable ARCH_HAS_RESET_CONTROLLER for ARCH_BRCMSTB

 arch/arm/mach-bcm/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
