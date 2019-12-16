Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710131216E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 19:33:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WoR8UOqJe6WR2wQurAbprsBbR5gQBk23EQeHzhFcPxI=; b=mzFqJenoaHbjYn
	V8D01wAkdEbwldp0BlzhrEM+UAWK0/MGPPe21W8UXikySUD3vgjzEDoGilLlr7eqM53Bc2Q1glcfA
	fCj3/cV4Ng10OPPLtUsIaUEDL8Hgd2yj2PkISWYmRdtDFB7bwIkPxS/7ivVTqIg6ucq8D5hncW5cI
	SKePWS7Jv+IpxMervZv70a04CyiumZCW624eCjKbAPnGbkSMxnZAayLcnQbLQRO09t4pAJiPLLt9c
	2rfr0XMZbfm7pPG5Kkt30WcIpOg2Lf4+q/9HnpcI1ksJmrItNnAAvSfFBN7inJfwGmY4lrHFIT9PA
	10LGLgNgqvLnxRqgk57A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igvB8-0001q9-Qt; Mon, 16 Dec 2019 18:33:10 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igvAy-0001ol-EB
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 18:33:01 +0000
Received: by mail-pf1-x432.google.com with SMTP id 4so6045459pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 10:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AE2V3ALFgXnuM4KH/ZGtq5/DYxigrAH1uDhREjWEoI8=;
 b=ga7HUHAX1h4QE3PP6mqth/a/7nM8xOS7P58LS+Vr6bsAetaqL0FSKJtf28oL6P4Fl1
 hq7A3CV5a12ogublSXIppg0lWBlBJvSexXtbKO7E5bxl1mn1kWbq5IWm7gwqd1aSHe22
 ZZABhwTOBJ9xx3xL6Eui5eVxu6NEvPVaIpIan6fmDKk5L72eYrHRc/G2oiZn65F91xVn
 5n68sKMxnFxL/L6d0oriN/oQ8foRY2oZDaKcDYTwx5Tp1NjB1J7h1A/Oy7ZHa2mLJp9x
 2WSUEu6FahP6US6GQ0hAUGCaFceEG7ECWJ+vJni75wenv6V5x+EmtpwOHDsvACSTFYKO
 U/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AE2V3ALFgXnuM4KH/ZGtq5/DYxigrAH1uDhREjWEoI8=;
 b=bJs1DPygjmEsDjBFHbPniR8vJM2lHxovS5lGJCzWDvpg/AQhpPe+1WQ75HVc+QplEz
 K50cLf3HrrGdUpTfpuTX6OvxwGVc6m5I3/Godh9Ad/YTQSTwJPcIV0lAyna16eUERqqx
 pD/RDW/qJGAYQqL/PGnQm0RWh0xOWUKAcUpHZhurbC/JMJ7sTYejsRZou63BFEUG+GzM
 lgLK9ah1CD5qSuJbxCHZsfOW7Ir/qfVAGC3J067RTr7VF7G7I0KhzsLEKjXvc8Hl+fVS
 3WaPd1yrbExlCeMVsFvh2UvrmADNXXiVqMzIOkN2Lt13FThQ8jQEOlXdFZoYR9Xy/78G
 KH1Q==
X-Gm-Message-State: APjAAAU5pWYX3VyXnXVZfTpFZWqa0ypezedobp726FL1oGB/7koS6z/f
 vSL/OBE6f/VXxac2HetCDQI=
X-Google-Smtp-Source: APXvYqzpm1tO/KgYTN/EtAsqiBpvTyeVLZuhDUZVaWNPrNhULgxQYSeE4m5xdH5y7ceHy+W7yGStFg==
X-Received: by 2002:a63:7705:: with SMTP id s5mr19621109pgc.379.1576521178970; 
 Mon, 16 Dec 2019 10:32:58 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id d65sm23400738pfa.159.2019.12.16.10.32.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 10:32:58 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/3] net: axienet: Fix random driver issues.
Date: Mon, 16 Dec 2019 10:32:53 -0800
Message-Id: <cover.1576520432.git.richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_103300_478015_956A422C 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richardcochran[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While working on the PTP P2P 1-step series, my hardware under test
just happened to be connected with an axienet MAC.  This series
address three unrelated issues in the driver.

Thanks,
Richard

Richard Cochran (3):
  net: axienet: Propagate registration errors during probe.
  net: axienet: Support software transmit time stamping.
  net: axienet: Pass ioctls to the phy.

 .../net/ethernet/xilinx/xilinx_axienet_main.c | 32 ++++++++++++++++---
 1 file changed, 28 insertions(+), 4 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
