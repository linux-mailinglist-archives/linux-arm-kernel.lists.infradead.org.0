Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC441BEC45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KueOJMLr7ShyKjMOMWSZOgGJDmJ+sQvVN/eo18Lcey8=; b=CrHIe5pa6olEvI
	xLRqYvg/f/nHEYTOyBbp+la5VRNMwk+D6Ky1VkX95/3t0aDlJNIoL906iAjHAKl5WORWloEnLBzXn
	ZhcMq1aUFWlfjv0cP9yYGmikYrv6W4MD+qaPP8CfszRpwu29xvUhh7UX7dpbd8miIqFiMhKwSasj2
	8Ea1I/WYyCPWNwZBPU2b0qBwTlzaAB0QWT9Xleh3jT0cIDbxq4mFvnNvH3+jCFRaO3R+pzM6QgHg2
	uoR+aF+EIxaEsBwl4K+IfQeMe7hG9W4F4kwwlpftmpiuqGFoTRAFtFUOPC8Gk3T/tRj0XzFg0bMP+
	212EqMkWiEsnyUutKE1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTvfF-0005pB-0K; Wed, 29 Apr 2020 22:58:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTvel-0005dL-MN
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 22:58:20 +0000
Received: by mail-wm1-x342.google.com with SMTP id e26so3833526wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 15:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UyMJQl3nI+Ci8kPvH5WG8fF8ZyspZWe6A/yt+JRO1sg=;
 b=RqrNzY9KCarY18ORnKS6AI/WE8sS4Uxz9WTgTDQp33yUePp3utITDgAe8XOK9qBJtC
 dzUQUzrhee5srCAxnaXcZOM8MXBcyVz7hmkodiExzNWU2pG15XW0x44pBUDoThwNrutx
 BOwHwWdjWdup8JasiG2Ws1J7l4iOCTGebOqo2+1t3cGOoQYBK9qfZX/Wvpo5vMByuKvC
 +vK8PXkT5pU7ItSq3S3XFMGJ7rTugspej0ruh4JCp/4MASXfPFRXMEYwdS1PvqJdtnO+
 EZ3INpTzhGUJiJtGQoSAGNA+bhWOfS5vrPOiiuPaSfzRgjlJUuh0x2U0AEQp5XUq/lnH
 Cx6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UyMJQl3nI+Ci8kPvH5WG8fF8ZyspZWe6A/yt+JRO1sg=;
 b=WLwUlFLJM+JGzJ0smesMzqi7Iped3f5LDPYoojP/Mlq44DM6lUmdAv9KQWKCuVxQYs
 rywoZ05CrzPifuCX4HZ/kXJ0sxJO6vkot/lyfbXJ4kZA24WgYUMBdlGV9kHQr/ylVHOZ
 2QT/SXj+C0slLsfyBzJzmwnbirWvg0qcJZFlJqkNtU+Qc4MD0gYPBVvT7cnx/j9VR9za
 egyIohKVx1NPkP4tJJYPpQ8qbzsF4LZ+lf2ZUPGBy9rSwlPHD4cwNBgWtl+rnpbsoJxf
 JQNmhZyP6ts9kKzi/4o5wB/CI3SFjJA9MscpP8tceNRsanhddJIIPSVyJ9dn+SEv4ljF
 6lUQ==
X-Gm-Message-State: AGi0PuYT+1NqYHC6d3JMnx4N/gN1IBM8cytef6M3Re6xQ3Bbewuey54y
 SBpJWmCAUuSS16TkPNY7yw==
X-Google-Smtp-Source: APiQypL/c/YgTJIJgEins8chkLVhwq5XZs0YLMtt6F/cqU89T/sydPViOWJmXjel75GFInjHJXTljg==
X-Received: by 2002:a05:600c:210:: with SMTP id 16mr136891wmi.57.1588201094577; 
 Wed, 29 Apr 2020 15:58:14 -0700 (PDT)
Received: from ninjahost.lan (host-2-102-14-195.as13285.net. [2.102.14.195])
 by smtp.gmail.com with ESMTPSA id 91sm1247675wra.37.2020.04.29.15.58.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 15:58:14 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Lock warning cleanup
Date: Wed, 29 Apr 2020 23:57:21 +0100
Message-Id: <20200429225723.31258-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <0/2>
References: <0/2>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_155819_733450_43F960D0 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbi.octave[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset proposes a solution to functions that regiter context
imbalance warnin, we add annotations to fix the warnings.

Jules Irenge (2):
  cxgb4: Add missing annotation for service_ofldq()
  spi: atmel: Add missing annotation for
    atmel_spi_next_xfer_dma_submit()

 drivers/net/ethernet/chelsio/cxgb4/sge.c | 1 +
 drivers/spi/spi-atmel.c                  | 1 +
 2 files changed, 2 insertions(+)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
