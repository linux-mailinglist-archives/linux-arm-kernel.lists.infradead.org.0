Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D39863077C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 05:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEqNGfM3m5lEYIJK7qTQIHHirV1FOSL80LEOXHu5mPo=; b=UydlqW6Y/q/CAb
	xRO96hRIRfdQ8R+dMudKHdZ23KKx7pW9s2p2fYB/y+rVP0Sx5wkW3I6+Yxv+SNWTI07r8Q21Ecjxj
	5rrANGnPRmV7VeiJB+ST6S7m82xBKYDKx0dZE1tk5ruHCuh5LPlSj81cKY6MweO8ZVdMJo9elYpFU
	3Zd972uuj0E/a4RGB5YixsLhww4o0F9HglBEISWkRqDIQWWCD367iK+hWtqvcpYADJK47HsE9lG/m
	LhxwIwprpK+epv3caTsqa3w3kH/raX3AJWUvbIK24C2jbvPTSysim1A62Q8GOKNY5R2jqnCGQPCxy
	1W4WCaHj7J2slClDl6Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWYg7-0007Mw-0I; Fri, 31 May 2019 03:58:03 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWYcS-0002sP-Ar
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 03:54:27 +0000
Received: by mail-io1-xd43.google.com with SMTP id x24so7020681ion.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 20:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AD2v4+YBh23vSrSakkquxEV0xAfLkc+oDW+gsObgm4g=;
 b=v1Im+dSykIZ/o17BF2dZBN6qKUORfLiTIwGOO21jMWRdRFVgvCgye8wMMCE2pTy9mO
 dzHZGVmPOV+yUJSAChQU8I1hW74bryP1A8PNhrYJyXRDQHkatWnUORM7hhHV//8JIVqq
 1vJu4XMk1QmOluxXtFqS/p16+wp7r+E82bnLZNBw5zk9lMr988zMbe44q+gzQgxsqULY
 hUWB3Asp1j5ktucxfoyRCUrr6xbSwwX1rUURVIB0V5NIosbfr7BARxFvkJb9TYnCkFMa
 Tm3ZpQq7ApNQPFkYHvQ+uWJjGJDXjch4E2gN7wC/sYMAOaJZVC3PpOeVFaLRpsxkfm3B
 J//Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AD2v4+YBh23vSrSakkquxEV0xAfLkc+oDW+gsObgm4g=;
 b=PJbL8b+aCwvKn2ClKMBcLvJColQ5c23w0izhV7PKBULE2P3GLwFrwIqgmRn8SNuVTB
 uEtlpK2mMS4QEAxNWApiZ6hIIj67wZkt/oI6AxOFYNlK+4AP2XEC6pvxT+iSg6aFqi9H
 4z8DpM4kQtv8I2g8dVwGU257tUw1/DYHif56P0ahzVwea2eCMp1zvlx0CVtaX3XazXLz
 uphQU/cawQWdE8rRKCv2vwSWdAmip75wdPGixhj4mZliEppLebp2p8/7M4YdylMWiO7z
 fytmGsY5BV4eu2dayhCYhYBvhk1nfu2iJhltHD8aCbEA71uexhy+lcmtX79Uc8N6nXF0
 4QoQ==
X-Gm-Message-State: APjAAAVQh5Emi5JCJ+7guiPYY5jVZObyOaWsIbLVUV63eBKVLq52RGV+
 4LX7QWPvwA/gnloS7TEX61tgJg==
X-Google-Smtp-Source: APXvYqycI8C7GJZADcTmt8i31xiUOJTKNoLAX+58tPg2SEvn+jL2s46fJt29gnMhTlelRCo9iy5FmA==
X-Received: by 2002:a05:6602:50:: with SMTP id
 z16mr5477434ioz.302.1559274855582; 
 Thu, 30 May 2019 20:54:15 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id q15sm1626947ioi.15.2019.05.30.20.54.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 20:54:15 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: davem@davemloft.net, arnd@arndb.de, bjorn.andersson@linaro.org,
 ilias.apalodimas@linaro.org
Subject: [PATCH v2 15/17] MAINTAINERS: add entry for the Qualcomm IPA driver
Date: Thu, 30 May 2019 22:53:46 -0500
Message-Id: <20190531035348.7194-16-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531035348.7194-1-elder@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_205416_570410_24B9E4E5 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, abhishek.esse@gmail.com,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an entry in the MAINTAINERS file for the Qualcomm IPA driver

Signed-off-by: Alex Elder <elder@linaro.org>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 429c6c624861..a2dece647641 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12872,6 +12872,12 @@ L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
 S:	Supported
 F:	sound/soc/qcom/
 
+QCOM IPA DRIVER
+M:	Alex Elder <elder@kernel.org>
+L:	netdev@vger.kernel.org
+S:	Supported
+F:	drivers/net/ipa/
+
 QEMU MACHINE EMULATOR AND VIRTUALIZER SUPPORT
 M:	Gabriel Somlo <somlo@cmu.edu>
 M:	"Michael S. Tsirkin" <mst@redhat.com>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
