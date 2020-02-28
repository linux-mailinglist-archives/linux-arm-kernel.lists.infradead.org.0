Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCAB17427D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 23:48:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdewGMtskd7/AsZ+gpxM7FAxVsxud+Fv4EyBoYsjZso=; b=LH+dLl9nJScO+f
	OPBLbuCicu0Yxi73NujepLL9nxJoA6nFbpktCAwLI3NUEj3SdD5i4rgpey4COBtSLJn9hXzK2KKp8
	A2PAdwZh+fWInY0ilFvIm0769Myf6Zhg8Qna81WOzUtkIY0cAwe/IilX/lRDt0VOc/jvc7cwUYN/j
	ooLYui1Dw8iL0PMON0WLSwh/oPTc0AzYhp+OzQnuoF/GLWlaW4tm+8a/AxWRpUECH9NwNCSeerFxl
	4VDk+X8WonO6nKJKHS1bj9Y3LpdQPJjIKA38qpcVP28ujQyHqvwA+4Ona4JFqwchM6C8EdMVB3WIN
	izGIZtgRqjS0B3i4Ix9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7oQa-0000t0-Sj; Fri, 28 Feb 2020 22:48:16 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7oLE-000415-8p
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 22:42:57 +0000
Received: by mail-yw1-xc42.google.com with SMTP id n1so4407352ywe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 14:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rBNZ2vXyhxdKjjPVhgfvGeeO+0/SInHI1a05bF63DNs=;
 b=ov0h+3Mevwwb7JRSBbaI50cmb7TS6mbPJ85QLtqhRoY2Mft7RJCqE1A4usLDBEQfyq
 SxAEj3TBAZAtIpkm6hvcucBiWKG1yvNMVWw7Tndoebn1PSGqRUQIvj/gocZHd30nrMY2
 3sFmrT/5Z+WkrnzUVbRQ6A/YCQgFco6VeahzBTAUOY5Oq5ZBee02REQpiF1DhZykiZvg
 10vjo/ZUBgSgkds/weBbcpmiEVGV/6wFXiG3cnAScX17dXX4qbsD2KTerTyMpTeTfq3d
 1tzwWXA6afl03yCz7+nEB//eOnXi+agCBFc7fEX8vdmt2uT3CSAWVGxGFa8BOHow8vP2
 PXLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rBNZ2vXyhxdKjjPVhgfvGeeO+0/SInHI1a05bF63DNs=;
 b=uMwK6ARtmVUiClzXXqFvvkFpJ8Zc6q+R9W/7h7Lb3/kY7w+nkbxzsEyvu/5nUbrIpb
 0fQVmQV5ilXCE31yOH+EuM36NBdSw1ILMq6rwqwzluIzym/LHJQ0G9oI2CimeUjNE07v
 ujL7QP3dtGsQwqErioIuy+zrEiFmT9dhOVlXcCwpeu4tqzkMPiRUI5cPMTx/2DLmcp9J
 lsfGAfS2Zt4QLkKxuVx+EVQOY4bL/Ag8a+vUSIPVr8WQIhMst4mQiyLPsRDKXRiV45HW
 DDjijMAxPBIQnDMRQtdb/2PAOClHjfMeaXD9k7zjzUKOpW0tFW5n6Yp2aU0+/eq7jwQ8
 hELA==
X-Gm-Message-State: APjAAAVEo+6bLjBvSNtZaomfF2Ik8wHhALFVO5Zt0OEtbkwk1UzwRZ+z
 1RpKnofCFGgEMDbp031EyXXXbA==
X-Google-Smtp-Source: APXvYqzCnkaSsbmC+fcQRH5hKJw0WVbqzYQqbj5IN6MRfe4oJ4isWav3JGkTyME63rxVAVn0nktf4g==
X-Received: by 2002:a81:27cc:: with SMTP id n195mr6712318ywn.491.1582929763518; 
 Fri, 28 Feb 2020 14:42:43 -0800 (PST)
Received: from localhost.localdomain (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.gmail.com with ESMTPSA id d188sm4637830ywe.50.2020.02.28.14.42.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 14:42:43 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	David Miller <davem@davemloft.net>
Subject: [PATCH 16/17] MAINTAINERS: add entry for the Qualcomm IPA driver
Date: Fri, 28 Feb 2020 16:42:03 -0600
Message-Id: <20200228224204.17746-17-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228224204.17746-1-elder@linaro.org>
References: <20200228224204.17746-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_144244_475004_F390162E 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index fcd79fc38928..49a680b0c945 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13664,6 +13664,12 @@ L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
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
