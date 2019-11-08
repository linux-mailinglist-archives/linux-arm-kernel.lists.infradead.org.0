Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91871F3FC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9UuysSH9QjBGj8oTiISVYl5AOT07PCwtacbCB6OvHSQ=; b=d0phbLKl+65p0x
	K+14kYhvgkV11HJxb6VkklxzHU0niENcz863S8dFvcu/e+f5LRn2E04BpU62op7zWYwx9D7EH91pO
	pBYBHYS+zDxSwoJ1op3RT+JpHeSzTbXRHBvcfSH7B6QvIjarI4P/5k0evrJ7MsLuRPZdlDsu9G+i6
	YfFl0fXM2Dgb3MgkFq1OfTaxRXXcCF8VdF/n1A6/jL1U6Ex078wS8/E1XdbHAmlyEYA8Xanh5HWVu
	i/Z4r2aThU8ofOl3UL5WgwMM3UbhFVzNLtyJmY5ilzfhSkxnOFz6OWnMpcDJk/1gpiUV22UehIRBa
	7ZD8wfJtlOQzZgyqoNzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwiR-0004QN-LG; Fri, 08 Nov 2019 05:21:47 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwhD-0003Jh-It
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:20:33 +0000
Received: by mail-pl1-x641.google.com with SMTP id d7so1382574pls.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 21:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IsgxuNQAHTHcIJrS856EvYwzkJI0BrRT1sF+4RZoSHY=;
 b=OU9az6yy3IUp3SiSu45yKUKtY2YuK45CZcO2G32kWBQjcf5VxlZGvBPTr5tLfyiIX7
 SX+Y/CAJ6Lohdx8lZQe4N3YilX9GLn2S+d1xDzm0hZAk1CdbQg6PavJ3rw17DojAGuzU
 JPoCoAmi61dj7AkZEAyNdca0u9PUAqaZFXgTXOI9YdCqPg8h7/PwJizXrFHqgm3TTwG6
 CLnz8oNQidGkSa83vKRcr9fDfsgEjcDAV9u1fpop4FVxcVnW3+MK1uuieMt9IEq2gzAb
 qqtL79/JudvPx+EgvVYIAzx5cHcVtft3C5d4MxtTSOhtPB2p1MFfEJp/wfqLgWBGvpQw
 Pp7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=IsgxuNQAHTHcIJrS856EvYwzkJI0BrRT1sF+4RZoSHY=;
 b=VtmAzmEPfToLA6TQgn3SNj2aaK3+kI4nh9jbPHS1ebCfL7g5PH2gHwCcXP5pLYWOSp
 +xgLjl81u3DDCHq650+DplNLF2RQ+P5JPz3SSOBAiuHGTn0W7cRpSAfyCKWDUqhd1t/d
 cF+G97ekix4KxkwTPSrHj6O2QocZ74l+w8ugLQF6qiTedkTIizP70W/O52YPac2UR1hN
 MMdxcSjtL39g1tj0wmAoqSbNrNolyqJiHDiP+BOId8/9gL6Pr4HQcSOLI9VY8L/Q1yA3
 e6LoYRKeZFXw62zYPLwLjvhjEanysWWey65zRm4Bdi7Zu1NMRofeUNQZFAYr9xGUnt1h
 meKA==
X-Gm-Message-State: APjAAAWcd/MK2o1gxa0cyhAXZMpe4fSpmnYUbnp9H+Zk9Gw6ZSx5yKxe
 87NvjfE+trdDueKeex94ZNY=
X-Google-Smtp-Source: APXvYqz3mckpSnE6ff65rlP5g6npFA0fhlUqDe6bSasd/PfFFnQhvBY+LCB6I6q0nqFNDzgJApwWvQ==
X-Received: by 2002:a17:902:b604:: with SMTP id
 b4mr8201575pls.219.1573190430792; 
 Thu, 07 Nov 2019 21:20:30 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id v19sm3798443pjr.14.2019.11.07.21.20.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 21:20:29 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: [PATCH v2 06/11] fsi: fsi_master_class can be static
Date: Fri,  8 Nov 2019 15:49:40 +1030
Message-Id: <20191108051945.7109-7-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191108051945.7109-1-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_212031_669624_F3591BDC 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, kbuild test robot <lkp@intel.com>,
 Alistar Popple <alistair@popple.id.au>, Eddie James <eajames@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: kbuild test robot <lkp@intel.com>

There are no users outside of this file.

Fixes: 0604d53d4da8 ("fsi: Add fsi-master class")
Signed-off-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/fsi/fsi-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/fsi/fsi-core.c b/drivers/fsi/fsi-core.c
index e02ebcb0c9e6..8244da8a7241 100644
--- a/drivers/fsi/fsi-core.c
+++ b/drivers/fsi/fsi-core.c
@@ -1272,7 +1272,7 @@ static struct attribute *master_attrs[] = {
 
 ATTRIBUTE_GROUPS(master);
 
-struct class fsi_master_class = {
+static struct class fsi_master_class = {
 	.name = "fsi-master",
 	.dev_groups = master_groups,
 };
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
