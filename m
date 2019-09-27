Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FA4C0121
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 10:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eitR+1l3H0IJO1tL81dVllpQD6mU1rxrV1d84jiTyAI=; b=AGE
	TPeGBI3+2vamJJZK1GaUZqgTHy9L4diUpSP3s/SVgvosN987prmwBfIMVHZViN1hh8pl8sU2D8nFH
	3Xh3xnxmuOHhsL5BABtc+/9Fm3Wvxx4qVsA1lFstMI/IiN6gs9X/twF97LrrYAWxOBwvnv8hm7ZHI
	PWLcm9WkLz4FNytYq4iiY8EMSiemO59As1vdwDd+tJO8WGAFsd+ala31PAFTOyt5zg2kKqIOqqMGv
	VZw7P5eSieG0eaZFksdmufQNklPxAVQeXBCNckqlZQkIdmoc6dVLmHGr/za9kyC9HOzNsjgS7ntXt
	a7VLtz08Ytfb+MAN1rmXPrpL2ua4xjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDlby-0007nK-OB; Fri, 27 Sep 2019 08:28:22 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDlbk-0007mS-GI
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 08:28:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id d22so787437pll.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 01:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=NbFqGjxE2PnbU6z1Ec7WUi7n4X/b/Z/rHpPihB2LfiE=;
 b=Nr1+Uv61tYBYR/gUeeunQBRJzDTbsfg0GWvMsad63gteY4RtQNSRpjeTGGNkFBUVd0
 eh4r8/Lw0VLOg1PBeJieR+OzvTouP0Le87sDd7coeFfMNGA/m4uRaKtHUrDnpCDJJvXs
 /r7TGahl1/9m5QxvOjdrjWlikA91e3ITT6tQ/3kE8LQa5pYBxZciKifLi4qH9xvMu3hz
 lpBf0lZ7wph5QmxBqpdso9gt2IexvuFiNBU2YInsUjY57uDWZMWNOh3OA7fCjLkR585v
 EgcvZXWKp777yZplzAiK7Vksf3N5viFUkOGC0LjBqfGPVZE7RrcAStM3v9FnrZ45OtYm
 bkGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NbFqGjxE2PnbU6z1Ec7WUi7n4X/b/Z/rHpPihB2LfiE=;
 b=Viycosp8oNjw4Abq6NEQGyFORIGlaJdNB/teiNT6czyDH/CEditn7qCKKfeJj3CEKE
 urnTfNjjTSk/xOEHZAc3Y861SEETIkUpIv3d0+vo8WwiEw86jd3PIdzY4sWvFV7cHeyo
 k19Zj/PMuOBeVzkoDHMyQXny0pamdWEceUwPdSdgZAWgglK4vINAaYbsRwMT6Kj3QFL1
 qaElp3vPE5xxJVxGbriExhH9NoJH2JW0oc5d1llueTgsj9/e9aMYu8JPso9UyKeo0qyF
 gXlPSPkZO6lxfww9a5NvSp4KnzLW++WI2lWZ1eqQ5bQSjJmbpMi4Krx8Ed1jMaX6I2dR
 adSw==
X-Gm-Message-State: APjAAAWbpZbMyhcQsbZjtb6UGyTavVSxgUcI5hR6lyuH3lS5hQX+wI6h
 V29hxqhyhLsiY5F7e6ymtBAjnA==
X-Google-Smtp-Source: APXvYqwBR2/4d/E5sZqWUkMQbkc18m5T+0zVPlzOpWrkai8yINxJ1zE85vRfNhXyjmTVdE4u1KlrzQ==
X-Received: by 2002:a17:902:d887:: with SMTP id
 b7mr3087377plz.297.1569572886073; 
 Fri, 27 Sep 2019 01:28:06 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id 6sm2043521pfa.162.2019.09.27.01.28.02
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 27 Sep 2019 01:28:04 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: linus.walleij@linaro.org,
	ohad@wizery.com,
	bjorn.andersson@linaro.org
Subject: [PATCH 0/3] Optimize the u8500_hsem hwlock driver
Date: Fri, 27 Sep 2019 16:27:40 +0800
Message-Id: <cover.1569572448.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_012808_552346_4C6F9211 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, baolin.wang@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set did some Optimization with changing to use devm_xxx()
APIs to simplify the code and make code more readable.

Baolin Wang (3):
  hwspinlock: u8500_hsem: Change to use
    devm_platform_ioremap_resource()
  hwspinlock: u8500_hsem: Use devm_kzalloc() to allocate memory
  hwspinlock: u8500_hsem: Use devm_hwspin_lock_register() to register
    hwlock controller

 drivers/hwspinlock/u8500_hsem.c |   46 +++++++++++----------------------------
 1 file changed, 13 insertions(+), 33 deletions(-)

-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
