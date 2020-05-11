Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F3A1CE6D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 23:05:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HshHLIVnkAtAI4W0gAsiQIxOg9jO//dg9ICsGTu3IKE=; b=tbA
	trOQfeoKn0Zx6i22+mys2p0PxoJwl8BaIV3SXFq+RT8qApaLiP2rtWwnAxqwO1a2coT2ymHU1CCCo
	roO19rYkOpIjhedae1VJyBvskCk3mJjVgeCDFjFdAjg1SVoVgxvQPNO/Q8s/9hmWRN3GchwrEBCzH
	YRFXqqbRHtv5RqMRnztMhn6LWATYW20LzycSGIie4efNQ1FiOnEI+037oeu4vK24QwzO/P8RMkqr4
	Nf218PhFS+2tlBhubDr9wpq006WwEDccB7pNpkWB1n3wHfGPo8pbxLYsNys/KDLLCoJP19P7HG7F1
	YF5Eqe7dXjTOl6aQc63jH6hOZ7oZRPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFcG-0001N7-53; Mon, 11 May 2020 21:05:36 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFc6-0001LO-10
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 21:05:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id 18so5300886pfx.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 14:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6w36UvFQ/M6HNNcr5WBBYQV6zUbaEerQuhwtlPhUyw8=;
 b=JYKOFnRU/Nv+h4zg3x2GvY9V5K6C/VK7NulUOa7an5293lSxQDr71GNnRU0XshGaS6
 R3TxIIwOcTp0jHEBRVuHIEKwlGD7Hoa5y4Nq6e5H0J4yoa5fCML3t8nQhRDvWhr40CuL
 JoC7mO+CkxwMJW9DD3DFytFu9fsj+3qqsqwMAralBT+W7YImsQMqMcyS6EzLt7W/mxlc
 fH5tj9c33ZYfWU0sae38Z9Tlib21CBzxoyLAZn9lB2vqaneLrN4A2lwrwrOU85F3aYkQ
 Tk5GpFiyoxwcCZNpgcPVgSwpy/0s0qGQKKQsfMQBp7drgTJojnc3q5lJL760mmszwHOu
 osqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6w36UvFQ/M6HNNcr5WBBYQV6zUbaEerQuhwtlPhUyw8=;
 b=rHPd2kO2/IdX8FH3xDqzzC8xKi2TiaWktDXfxejzx3ZzZahG/hEwk8OCFhzAwgorPI
 WsJo8sZHCRlvM1nVrgilfkE+3zjt/xX82ouFnPQIVrr68aG+aUX/0F4fRLW9vE2yJ/kD
 cJCpzwppKkWZmBV2E2NAMqYoQKkzJxS3ZNnAPNGdYiqPWzszb7BBAslpRN9EAMKyi+NH
 EvyLs5xGPko1IN6J4tqnRRF3tyx4fM/Ph1cskdYgnp6uDS1+PbyRlPMXExV67V5HMcI4
 CrhEnBIByZx3/u+VgO0Uil8i6POMJWbtPDpOcBJQxJ8dcw6OkbnrfcKJb9rUJXtLqbLh
 KnnQ==
X-Gm-Message-State: AGi0PuZOmQScFK/mpO++2Cg2rKXBn/oj+dVlb0fh7WLMWWvd0FaPQU8I
 GsA8h8oyIXOoi3XxLFC15HU=
X-Google-Smtp-Source: APiQypKlUwWoprzBXBS9r/xa5V1PkvXWztfA6or495RiWOARZPIv/UivYZv3xFOcNDdbUeU/x+lDfQ==
X-Received: by 2002:a62:3343:: with SMTP id z64mr15356149pfz.55.1589231125494; 
 Mon, 11 May 2020 14:05:25 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c2sm10032230pfp.118.2020.05.11.14.05.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 14:05:24 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/4] Broadcom defconfig changes for 5.8
Date: Mon, 11 May 2020 14:05:19 -0700
Message-Id: <20200511210522.28243-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_140526_067347_5C36C388 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.8/defconfig

for you to fetch changes up to 35cdc3fa00ee3aebf1a25f55db8a114cbb612092:

  Merge tag 'tags/bcm2835-defconfig-next-2020-03-27' into defconfig/next (2020-04-13 15:55:35 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs defconfig file
updates for v5.8, please pull the following:

- Nicolas enables the fixed-regulator in bcm2835_defconfig which is need
  to control the Raspberry Pi 4 SD car power supply

----------------------------------------------------------------
Florian Fainelli (1):
      Merge tag 'tags/bcm2835-defconfig-next-2020-03-27' into defconfig/next

Nicolas Saenz Julienne (1):
      ARM: bcm2835_defconfig: Enable fixed-regulator

 arch/arm/configs/bcm2835_defconfig | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
