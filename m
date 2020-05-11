Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 934E41CE70A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 23:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LEq4gyFszHar67x0HdaXP9r3AFQCAC5RMV3exxa9Htw=; b=Yvym4bcfsPQOCUyJTrQCGyTqVn
	qmYwt74oLSKGO2qpjvaz5dYxl/JPnX9w0Y+d/BlSxQ1vB9hmGaxjnel42zNYXs7EOq/ZxG6WIDwKd
	s0RHc5H85EoR0kYqwPl1aKCUEI/CCLWR7HH9w8aBfqkSBPU3sAVGsFQSiFbI/xAMbkt2ZX3Yw0PTF
	gHCz16bF9NQwPNRH/h7RrOmEf52AH3hKVncIPUuixHDZPIuimksjLtVX+NNF/FeBVBzBIG/mntarX
	dJEOeT9AWhRyBZH+i8WyjDKY+jQ1x2f81PclzF8fQIs5YZhbGdD88+W4dcf3k+u2LuoM+t1pNmqF2
	8pU5Lmxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFcv-0001uw-PY; Mon, 11 May 2020 21:06:17 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFc9-0001NB-Fi
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 21:05:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id j21so5112376pgb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 14:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XqqspZiHqwYUdfNIpGEaM440YydHzXGPo72A0riGwI4=;
 b=CTLAHQSMJ3Qkqc7d3jXVvpKQ5pB6pna+ljz744NOCTtX4pBYkCEnO8hAG++sKsIEiz
 k2yXW7jp9LDyJ7oGF5bG9/OXnrVMx/BKhSCKA/gp30yeQ5j1yndPYRvokkew3jJGHJKB
 C1u81fMs6q7lHyVVA6+E6v6Mpl5CZJmCpqhW/3N3s2Sv80y0ezYCMfJUj8qFsN/0e047
 NipGFTB21Asie7LT+041gpR9A4/masXezsiz3XV0ZCscupJSB1Vp3axRwJVtuJ8WnO43
 shWwPU0SBnrScxGzBXLVcU3A+jL9kGWTCm71aMdKy/mgBcugxuJQ6dWAlr6YhJsakvz0
 3iIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XqqspZiHqwYUdfNIpGEaM440YydHzXGPo72A0riGwI4=;
 b=EI07WSBADh19TK3ssVu+JdyU7lW/umVbs64gPOeJJ4+YNqPIOucad1mLIU0RLBH0dy
 OMw/TQPCnAuU7TNra90jVkGe15qh69iHpMhezcfQ9/tSte1T//7N/QdqO2qa5OF702BD
 p7odBD/Sd5PnKjZ9Ijrj4pWnCmpPNd4f59fLBrwhtswYJJ9ce4QquVqttugxS29O1oPi
 m2zqLQv8wyx0rmr9kr2JX4WqcDABSZjZZ5XIeP8tFK4pPZwDeXK+y/AIcKddyVVEH65q
 gjIIv+iuMxslZPW7wGZFGfNbvwygzB0gRlrXCciS9wcUg0Qj5jCrkSuHX+PAzYiBXRv/
 hY8w==
X-Gm-Message-State: AGi0PuYV4iCw8WWQIRrYuKVuCORuOkvMecpgQuMJ7GfnbJFhwuciuUP2
 ZgVUSFujdbO3KT09w8cgC68=
X-Google-Smtp-Source: APiQypLLSUvUI07JR9RsfZi9+gO/1YVa9tHNrsA121s1r+HhWkldytCQgDAQdjEVln4awLi8/6uMgA==
X-Received: by 2002:a62:ed14:: with SMTP id u20mr18477510pfh.69.1589231128618; 
 Mon, 11 May 2020 14:05:28 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c2sm10032230pfp.118.2020.05.11.14.05.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 14:05:27 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 3/4] Broadcom maintainers changes for 5.8
Date: Mon, 11 May 2020 14:05:21 -0700
Message-Id: <20200511210522.28243-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511210522.28243-1-f.fainelli@gmail.com>
References: <20200511210522.28243-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_140529_532030_082A8CC5 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
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

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.8/maintainers

for you to fetch changes up to 9442c09e784d805048611d23fa4d253caef0a62b:

  MAINTAINERS: Update Raspberry Pi development repository (2020-05-11 14:02:41 -0700)

----------------------------------------------------------------
This pull request contains Broadcom SoCs MAINTAINERS file update for
v5.8, please pull the following:

- Nicolas updates the git tree where all BCM2835 kernel development is
  happening now

----------------------------------------------------------------
Nicolas Saenz Julienne (1):
      MAINTAINERS: Update Raspberry Pi development repository

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
