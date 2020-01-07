Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32799131E0C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 04:44:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qi0PTZufPTrRvQYD/WYNzEBp8kvQCUAm9r3shqCyPfo=; b=sD2SiXVFfN2IQo
	Aij+nXHj+Gmb7cRJN2vj+r5ZWPRWBoInuHu3a0LrU98jHoN/4Qw9kU+fCXJc4YnMrbKXSBxebP49S
	cwU+7d9DyY4LhYiU8RNA3LFK2fO4lJXRPKR2PjISbALdnsSeu/vc4qIxmJ4vz5bMFxT2lf53CwE4K
	iTc2TUglh/mLnSclTtrUPjgiuetO2rxWbDRUx0UlOc1QwsFpwJbCx8+1RSueBFz1f5DVpvqQhRedj
	Xeb8lV40yaF6pMHRJIitp3FKq1mkuZ6gxCFbejWxinRjBLxWh3j4Za5npX/AbYS+41fSbjsI9CSzT
	qdAn3QXrfRK8EG+rtvww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iofmY-0001OQ-Ea; Tue, 07 Jan 2020 03:43:50 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iofmP-0001Np-Cc
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 03:43:43 +0000
Received: by mail-pf1-x443.google.com with SMTP id p14so27896634pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 19:43:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gHUbb7q4zKarJa/jENsWhe5joUzhUsIi3+/OkwV0nCg=;
 b=NE5X04jTW9D4AAlZ1NLkRw5E9lCP2JS0FFDHcxeKeNssEwk0Mk+MrFridEDJinkcxq
 syLjplEhUDUrD8ygUiPRE9enG6yVswHHLvmVT2kvZS/klLV4fLBVu+c3K2OXJswU4afd
 9kIXv1MJ2R5GIvuXapD/4vTtXP60JPelynxOKGpuszywHtf6QU/F1JJ6tx2YkzGVMaop
 UC4Z5ZMiLbiG67W/X8Stcl2y83ASsmSXYLypJP+UVWCQt4rM1FMDNLhTtCPlX6FPvXD9
 I9pu0MoNcHR6B1pSIFLeoMD6/5OFVhTHALCAlBkg4EHpv6yPNsSoL2UeZvr9p6QwpFDP
 CnHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=gHUbb7q4zKarJa/jENsWhe5joUzhUsIi3+/OkwV0nCg=;
 b=GExBRRyOej4XEvLnuJjWUHrwVWJPAK4XOFx4yy6McHpvfGU5AePRn1Np4gtlSS4LQn
 MbZEgxb1QnLVFGSlPO1TIL7hpEz242akhNpom/lzkF/8Dbr4dAIteV/y138AQDWt8c5J
 ip9moBlYnEmyAZbTFPV2U/jaxYd7YRcbsBr+wcBpra3RFg59AfMb5SmMCvRVtTHtoGmB
 zciEGBosOaf68vVPHARW8ovD1kX6XX+KTLeCNfTGxe2LOIXQobZozHboDyYWdSnF796d
 R/hXgXSIn3KkhrkG0BSPbB2Qas0li7QBIOarylbKUb4L3JVudaSmVNxprbhSbPAb9t/N
 NnrQ==
X-Gm-Message-State: APjAAAVnyt1z8oHbEjc0aOMf1I+MsvnA647QLmerliendulOwxIo5HHB
 VBZg7CnjbywxM6H0ubCwciZvgbj+
X-Google-Smtp-Source: APXvYqzKmGQn30OyGYuc8Yfb7XzY/DQP1By/9LJ3V3cFnc8q3uPr3UXvgAaQ6v64km7Wwt3R6On/ZQ==
X-Received: by 2002:a63:ce55:: with SMTP id r21mr97706108pgi.156.1578368620173; 
 Mon, 06 Jan 2020 19:43:40 -0800 (PST)
Received: from voyager.lan ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id g10sm73455929pgh.35.2020.01.06.19.43.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 19:43:39 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 Eddie James <eajames@linux.ibm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 0/3] video: aspeed video engine cleanups
Date: Tue,  7 Jan 2020 14:13:21 +1030
Message-Id: <20200107034324.38073-1-joel@jms.id.au>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_194341_459442_12A6B87D 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When reviewing some patches from Jae I noticed the driver used compile
time tests for some registers. When thinking about how to avoid that, I
came up with a few cleanups.

Jae, feel free to base your patches on this series if you, Eddie and
Mauro are ok with the changes.

Joel Stanley (3):
  media: aspeed: Rework memory mapping in probe
  media: aspeed: Use runtime configuration
  video: aspeed: Update copyright information

 drivers/media/platform/aspeed-video.c | 73 ++++++++++++++++++---------
 1 file changed, 48 insertions(+), 25 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
