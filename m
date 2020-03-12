Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C594F183BE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 23:04:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=adIiQH9DoIvAgSnh32fT7p3/uST06M33tlQT2LmOTYk=; b=gbt
	TadbKkrnNMaMecnHJ7zEkENAMlLd6bLxnigYiep6UA9NYEgHH3q4YwcuyWVzzAdDpU6EtzoEboMIu
	oSLi/kT21RLjEyruIHq8PH9n3lWlWg5mR1fSv35Lb+QO9P7SjBzV/iMQPKjYalVYMRSzZzQlX09am
	cm4DxgaerGPwKrJtPfWLs/gnEoUM3Yopaxn0u6jMLud1hzJ4FOX3jSL/aFZKtiDqrsHNhmgUbEfl0
	sD3XEWYu2jtJ90LnU+MxPmN7DmlOvRMQCmAjSaDYyeuOQw1iP3TPTYvC+ACntT8f9Irr+O9E6kmDa
	py63bOzEUGgpiDsp2tPSCbQ378KsslQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCVw7-0001vt-56; Thu, 12 Mar 2020 22:04:15 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVvz-0001va-Qd
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 22:04:09 +0000
Received: by mail-wm1-x341.google.com with SMTP id a141so8195391wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 15:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xNUc7WxUqFCRfWQlz/40aKCfcvfvotmI3onyda4EaWM=;
 b=D3BPmxiveIHVNqqd8fdeJunQm5P2/o0nJVAzNWrKbvs2JJcs/O4Wm+nBxS+Z3XvZhI
 rwHyFHrq4GisVyPqqD4lFibDI+x/uUZeAKalc7CR9685EZy9xF9Vw27jc5iVd6sLHESg
 dGa2NnPtLOHm3qoLO6zlnKz2NF9yrdSN4Xo1Up/BLWqaxSF7lQrpAPHr5QDr564dLSvN
 EfhHrH+B91hemwhkEa5F6Zhw+Pa1+4ED5CKBl0O0CbLqWaB9i+dBG1qQIzX2vf9/MkRL
 tIMUC+g2rmNqkX+uckzMQApDVzaDvCK2YrJ/E160ummGlebh7fnbuFn3DTapt9R5pXO3
 H21A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xNUc7WxUqFCRfWQlz/40aKCfcvfvotmI3onyda4EaWM=;
 b=tKUXeRwIWeVDTGk/JTLB5pPe4nlEC9e0U2vEfDKKfFkrHrBkbhX7FzKorbvljk7ohV
 FPxx+TQIRlQOGQEG5hbqxBD5Cc3uXl2vOVrEa54qu7ba0M5wKgsG4HMwEG5A1qKbpSCJ
 Kd2Q2stUEDodQ2vVJJBhNbuh7D89DbHoIMDOhnUl5eDhU7ieNl/WZccqsx/Tfypug7LJ
 ov6Edr+qK+Z7OjE8UnhQv9LP5GiHv5wEExizI0swggm3b4+CPZF92jzPdKBnmETU8vXu
 qDtTmxYQcWGXQ7k1r6dKwtFq/gA/8xnejz7agugm+bzlKL1a2mqqMvrjWZFKHQQX/muu
 tj6g==
X-Gm-Message-State: ANhLgQ2gOmQxq/Dk6EgZl8i7WcqdSKLpbk6oSCFvectZkVL6qJ7E6VXn
 XmJAlm/fdhNyVPgh2aY2SYQ=
X-Google-Smtp-Source: ADFU+vu3f3UoDeetbzkt39PeqSvadv6aDzoZZFHt0qTltFjgcih6c8r9ldvb4R4HjZC1ACVHEV44dg==
X-Received: by 2002:a1c:1d88:: with SMTP id d130mr6899405wmd.138.1584050646259; 
 Thu, 12 Mar 2020 15:04:06 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id k18sm26899066wru.94.2020.03.12.15.04.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 15:04:05 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL part 2] Broadcom devicetree fixes for 5.6
Date: Thu, 12 Mar 2020 15:04:00 -0700
Message-Id: <20200312220400.8621-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_150407_888253_4B89DDF1 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Cc: Nick Hudson <skrll@netbsd.org>, Florian Fainelli <f.fainelli@gmail.com>,
 arnd@arndb.de, khilman@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 olof@lixom.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 2c523b344dfa65a3738e7039832044aa133c75fb:

  Linux 5.6-rc5 (2020-03-08 17:44:44 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/devicetree-fixes-part2

for you to fetch changes up to 6687c201fdc3139315c2ea7ef96c157672805cdc:

  ARM: bcm2835-rpi-zero-w: Add missing pinctrl name (2020-03-12 13:06:55 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Device Tree fixes for
5.6, please pull the following:

- Nick fixes the missing pinctrl-names property for the Raspberry Pi
  Zero Wireless DTS

----------------------------------------------------------------
Nick Hudson (1):
      ARM: bcm2835-rpi-zero-w: Add missing pinctrl name

 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
