Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C65717B5BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 05:35:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Z60FhZ0KdF7cmxcthJWrr3I8ZalkUMhgUIaUPfmmdM=; b=h32H1r6ZMVyIcG
	lQFkZZR2vImz4EmuQnMdHZXe9/k9ocY1GrjtBPOJAqJbIhA7Fe6U0Wv57nbgj6ae0gEkgl0kq/guZ
	3N4kBjk+ph1Je8cTysH7sxn2Fzo/8iObhWSNpYkQsnuoFWtGqIV99/wvopkCXhkxRwwD6YyAnO2T5
	6rE42UtUufp6IH1ZJZxYx7qTuGcn71d6ce38K2c3yt7mKkKuXASbVhEjLR3sPexI8JF4YCV4UoccQ
	OBZjeCAEs42f2cxLqalcTSLtnfi9TIJF7K1ReSYsykGPuIZcEUtPJNcncvJfNe5XP+NgoG4zkpgBU
	EKP3hzISxJ+Q3kQz4G7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA4i0-0001Ao-Ua; Fri, 06 Mar 2020 04:35:36 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA4bk-0002yM-Oz
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 04:29:20 +0000
Received: by mail-yw1-xc41.google.com with SMTP id d79so38642ywd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 20:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yRfDYcfz4PClGgSHNiGQSObIaHKPYjVoLJsVmUvy8Lo=;
 b=OXDXHwpEpqm9D6EcBAAjatlE+DkIqArtmlE79u330SGvIljyyQS5qNc8upKinTIUFS
 2rVoFnb4MEcaWdeNW4ZLBTNsSq4JgxMVEwAAFjzXvkl31MSvgkWqP+ZGX1CyrF+flEY3
 b7hSc7mD3NO11fAQX5vLYMveEjpzSvfcyULcFMrpq+ZL0oB7vA9bFxwQeobDEZ8P1WUz
 sWq99rV4yu0jDyj8aWwi3hCgBT6QrkXNhljWXdm+57lPXotGyvyecDybaMHut2cUCoYm
 ksiCCYCTqPFmR0IGa5hOny86DRJUr0yOif35Wc1WpAufYd5NlFH7UeLFEvyEMDax3aYw
 GTng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yRfDYcfz4PClGgSHNiGQSObIaHKPYjVoLJsVmUvy8Lo=;
 b=KAyb+AShTk0lqEppqkiTnEO4izs/VdtRalo1t8kWhrUoN0zUOxqIN+uU62c7pBTSwz
 thPB8T9M/0gVhiAdqVRqCC1LsuTndP3j2758j31oGNoBhrf4S59KGkSPeSq5ETy0CrCf
 PJPP3VCg2qdtLgG9C2zDPqtjRSNcLhLz8N+QtbR1hzqmP66Y29u32IBDuxcfE2k5eDvn
 xfAI3MbOYQl7ZDh9rMEj/hByCWufOOCIpdNIMb1/BkaKt2rE2Fkd7ACgvlFsFdwpJ4U6
 +/SBbVaCTMUzdVpVZJPoIAfwYchPp9hABMIn7VAfNhMB+fPGJ0NrKaI7pi6/ilMV9jQp
 x+WQ==
X-Gm-Message-State: ANhLgQ04KL+mXG7ELBFUZYPgy/kdy0cSLFNfo9Ur4n3IU7ZBNQnO71j8
 dnX95tMYlXZ7V9rwZtL42d/owA==
X-Google-Smtp-Source: ADFU+vtbD6s3KdGkoHIR3Jf3W+cODKnwpaKznF0IhVNkYrhsjL5c3tCJAgWOSqj4enQpmdrmxj8CdA==
X-Received: by 2002:a81:6c06:: with SMTP id h6mr2166065ywc.302.1583468947687; 
 Thu, 05 Mar 2020 20:29:07 -0800 (PST)
Received: from presto.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id x2sm12581836ywa.32.2020.03.05.20.29.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 20:29:07 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: David Miller <davem@davemloft.net>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 16/17] MAINTAINERS: add entry for the Qualcomm IPA driver
Date: Thu,  5 Mar 2020 22:28:30 -0600
Message-Id: <20200306042831.17827-17-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200306042831.17827-1-elder@linaro.org>
References: <20200306042831.17827-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_202908_844392_D5926D6A 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, devicetree@vger.kernel.org,
 Dan Williams <dcbw@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
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
index 2ec6a539fa42..e8666f980a21 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13662,6 +13662,12 @@ L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
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
