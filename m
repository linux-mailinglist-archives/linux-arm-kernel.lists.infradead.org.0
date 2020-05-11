Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAEE1CE70B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 23:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CK/Oct+CtmkHPGqwFDfXr37DeL3Ha11lX5cULlNSRcM=; b=EI2T9yt4s7vA9367D+LjY3cP7j
	lYD7gNEo35MNpnlEqv26MBGNS6X9z8IaBkXHJuiuMYPvv8t6BUvMl1z6RJTw8oZwlZyAYi/IZ1JB9
	m6VCDGTSWHn0OJlRjlgE9yo240nYqnZiyMaYB8LXEkPXDNN8BeN/ML4IY5YogepRY36YW/SU8GrOY
	6udbABpkggXDSyIKQatmBrfS+/Hv0MvTj+4WSc+zgh8P7hfslkI8NMPFth5drIphj9lBBiemRSwpL
	cJU7JRoRF7v63aeXmOn/pEN5zOIMnaEEtUtmcAmAcPkMuPBnte0Sa30EVC8JoSbFGUAiZEv751LS2
	Yz4HD/FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFdD-00028X-K6; Mon, 11 May 2020 21:06:35 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFcB-0001Oi-4F
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 21:05:32 +0000
Received: by mail-pf1-x443.google.com with SMTP id r14so5307824pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 14:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YEOn4OplUJloBVrNRQtOU6WQVpbu/xQ/UA+o+6u46Zc=;
 b=SSqBYbOyH+XI21J+mifo68mB4o9JkaulbbpthG+MiECIDCDOzC9+jZOpgfVoPnj5kg
 qpEcH18iFfXrxaEEK6oJE3b08oivfYg5YOQEBO5uUrRvl+dLn8xrB3Xo/oFXiiq4Itzo
 scm7wx/MQc+PHGnsk4Ndh9snz7EccgzaLzb9fTWBHBFP52yYcm5fMcZFhTeKR+T+zk9M
 jRxnmK4oKv+wg+2DaguBBEwsk3KwVGibAdnkxMJn4hbLULwS76QoYRMn/HxcflWbOKPh
 VOIUvMv1zFMCFlPIRdWiFxQnFpjZZF98RVuuFFMivbpFMjGf0xEg8l2/ynmaZgvSM4JD
 hLHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YEOn4OplUJloBVrNRQtOU6WQVpbu/xQ/UA+o+6u46Zc=;
 b=gocGE57cokeEv+CldvN8gvFCtPPabOxWtH4NaSeNjsL5keLqhGLRoa180LLg0984Y9
 +WHWZN26j7qewGu9GWGrWYH2oY0cY9aio03UjpTvXP/86GMYkV3S9k7e0tAwBSM4l2++
 c4nbiFi/irSpB1Gu0rqHdTLMcJ6+BXKVygzoGW8EbSKdpPOAEwt/gtGqzuwDdnzybBxK
 oHINKixYlOzO04Ygu46i9u0Fw/4KLx/V7rhIbiOKcxdPMSTwzQ1Lkz6zAokPSNRH+MlX
 GfBx2IHmh2/7ZenrW/bySgS52TJL0N5QbsTwYNf/yWQ9q4MSZE45+lvC3WBEYtSz+1Jm
 Ig7g==
X-Gm-Message-State: AGi0PubPYN5RMssTzF2yxDSCeFqAcVX1UwjKGFG2P+6tiO6syLHN2+N/
 NGQssoUiVkaqHvlvOpo2K78=
X-Google-Smtp-Source: APiQypKX6SNQVrRPYn+zM1Hj/ZnAY23FuogIxRc8SZExpTXGMvJLNtVqzmRkx0XTfiTF0g4JRpPAjg==
X-Received: by 2002:aa7:80cf:: with SMTP id a15mr18986706pfn.124.1589231130150; 
 Mon, 11 May 2020 14:05:30 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c2sm10032230pfp.118.2020.05.11.14.05.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 14:05:29 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 4/4] Broadcom soc changes for 5.8
Date: Mon, 11 May 2020 14:05:22 -0700
Message-Id: <20200511210522.28243-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511210522.28243-1-f.fainelli@gmail.com>
References: <20200511210522.28243-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_140531_180727_3FB037FA 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
 bcm-kernel-feedback-list@broadcom.com, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.8/soc

for you to fetch changes up to 446937a5056fed6c8bea4306eb0249bd5c50ce5e:

  ARM: mm: Remove virtual address print from B15 RAC driver (2020-05-06 11:12:12 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based machine/SoC changes for
v5.8, please pull the following:

- Florian removes a print of a kernel virtual address in the Brahma-B15
  read-ahead cache driver

----------------------------------------------------------------
Florian Fainelli (1):
      ARM: mm: Remove virtual address print from B15 RAC driver

 arch/arm/mm/cache-b15-rac.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
