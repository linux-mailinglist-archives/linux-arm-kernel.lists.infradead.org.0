Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B4819D388
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7hK0SLtNFirlL4NMH6hRIf2MB/us8h2NTpZ7vhc5eZw=; b=ATaBMi05vWdWvi
	2v+/mSrBSDx56vIQmQwk8rKUqt3E4zto0VLCtyFybBJMwSert+bA6gb7eaNH+ZV7yDt9X7fZGcB4K
	2ARb5oS5GRIiY5V66rj/79dvp94uNT+zt+NNURIf+nHIbarii8s8A4za/ydsNlJ+4E2s6kt5qN2pD
	oyNYMQh0Klf6h5cJ65YIaAgdlcs1SXA8rT50NqbKS5veihMw65TVwx/6Zozt34XSuR91K1OUeDu0g
	ZkU1QqEIkHWhQcads57Rb+NRcG6T3Ivzwpu1Smd5jYpAQNw3wE31H3kCb8LBNMBDldNhLRwGxQLRm
	tcgm8TXG6U5idzPfNumA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIZN-0002IZ-F5; Fri, 03 Apr 2020 09:24:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIZD-0002Gk-6O
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:24:48 +0000
Received: by mail-wm1-x343.google.com with SMTP id d202so6925143wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 02:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P2C4d5NmswJWeckiXBSWO+i/RqWs4DFLHWnnzQXBbFA=;
 b=gqhu+E44z7/tR4IXKE4IpvLY/8f7+/6tJD7GkhkODruq8WzixSxPBhazMOZvq6lcMJ
 BQN+GsYtYZGfcVkBLsgW8yZ8720okStAbR/lwr8bq0fbCPSTlOYCYrdlROtWiXSesXXx
 fwa7MG393R4f3LiQkL5mcaPZUeuMJikgJOzVILzhWTj0cbQPHmCvhJGb+WVDCgYZ3wax
 gigyS/cE4HeAzlfpTWg+ODiKiktS22p//6yoAGCxnUN/cFsG/cOT+E6GfQeEtjBoTl5m
 zreYhiUDxqZmA9q9YbX6nBYNj9crWX/HW7cxhK793lI3u+LzDWngrunvKwtkuHRABe7+
 2XHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=P2C4d5NmswJWeckiXBSWO+i/RqWs4DFLHWnnzQXBbFA=;
 b=oVJVQRw8Z0vDaY0WZmc2MTg6Tr69GYWzxvzWC78O1SgdPt5myv+nqEej/85lBxUOpS
 5VTTSwc23vFVPPXHn+s7C5dE9PqYWG89ueDKAP7olbsT/h3k7c3QcqjnYCE33EiRqq6N
 HdfXjy6h+UT6BA3LcRLiTeHLqzg8vgDqLtKRJ1a4nj6RdEYya76mNJySFrXbWJ6jpiH3
 6l9tN/EzrHkenKE7V2cM9jhaOLfkmClzLCFvefh6rRJTEGuGV2pL8nAH2zuFpT+xg2fR
 2x4bwDB3anROQ00l6H0YE3n/6BdEoapQbdA/p1/2NzoZ2c31zMusBhWwvaR71bt9DWEa
 x4kQ==
X-Gm-Message-State: AGi0PubDGJZZLzsz0zytr9IFQQu2kPQpdMzyMdIK+VDEL1fuZShgXowX
 SiyMTGVu3kxHXR/fr371bSymEg==
X-Google-Smtp-Source: APiQypLTpeJt4+Ib//Vb193DmCYveXVs4p7/l3vAVHCIw5JsK4aB2q5mGfApnZykvKVLR9WqeJrYlw==
X-Received: by 2002:a1c:81c8:: with SMTP id c191mr2187738wmd.14.1585905881902; 
 Fri, 03 Apr 2020 02:24:41 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id z12sm11550525wrt.27.2020.04.03.02.24.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 02:24:41 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: johan@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 monstr@monstr.eu, michal.simek@xilinx.com, git@xilinx.com
Subject: [PATCH 0/7] serial: uartps: Revert dynamic port allocation
Date: Fri,  3 Apr 2020 11:24:29 +0200
Message-Id: <cover.1585905873.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_022447_276688_E8E30261 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

there were several changes done in past in uartps drivers which have been
also done in uartlite driver.
Here is the thread about it
https://lore.kernel.org/linux-serial/20191203152738.GF10631@localhost/

This series reverts all patches which enabled dynamic port allocation and
returning driver to the previous state. There were added some features in
meantime which are not affected by this series.

Thanks,
Michal


Michal Simek (7):
  Revert "serial: uartps: Fix uartps_major handling"
  Revert "serial: uartps: Use the same dynamic major number for all
    ports"
  Revert "serial: uartps: Fix error path when alloc failed"
  Revert "serial: uartps: Do not allow use aliases >=
    MAX_UART_INSTANCES"
  Revert "serial: uartps: Change uart ID port allocation"
  Revert "serial: uartps: Move Port ID to device data structure"
  Revert "serial: uartps: Register own uart console and driver
    structures"

 drivers/tty/serial/xilinx_uartps.c | 211 +++++++----------------------
 1 file changed, 49 insertions(+), 162 deletions(-)

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
