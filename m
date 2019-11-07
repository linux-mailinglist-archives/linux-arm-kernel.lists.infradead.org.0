Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2700F396B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 21:18:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yS7WQE2qNkwpW/m8A6ItQOfvX/lqab8L5qtmO6x6whU=; b=fp0C6oPgknTB+H
	uj6esIY+iakKL2MdFMU5GctxBTy0G4Nq80m9I5OW8kchczfjbghzbPxal/Gh63c4LAorsIst4nzHs
	TkndVAPgeg3K0yiUycF2+v6PgEPrXlX0Ribbvx79gPE3rP1plkWL/jRZLqwn28a9EuADIZRxcD4sI
	Xkuqmf6pCsFcjT6IQttuFHddFlzSON9zTpeHNiLlABJuSKzLsysK6PPfC308gRMV4mNsq2JPFdgAy
	AcknBue4HwayJoQInOpLT3MtypDqYeuwsdObgKkA8PBqpG0+81oKHRzehkdDZLcsBHf8PPucfqsk1
	eMGt/Mp3ya7/YEJ76W1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSoEG-0006rN-Lg; Thu, 07 Nov 2019 20:18:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSoDO-0006AM-R0
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 20:17:12 +0000
Received: by mail-wr1-x443.google.com with SMTP id e6so4605660wrw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 12:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CmH4Sn1DdXunw1TL7f6sfjm3qJQSjiedEKITkUOQrRc=;
 b=dD3bgNfBay8ldyW/wTKnzuDbWLyYPl9wqdt360DazEyPc+zkaFEvjjAwZyme4xR0of
 YpzlFpdOVt3HEMliEp/pzdVcFPBNpdytncF4Mnrngda/K/Ld7QSO6/a5msBWe6RUpvYx
 jrYL9k5TKCXxTFJDavRz87FW6ZKZetilAcNBwA7eLMXLNa6YdAd3voAmhH6N45aBPCV3
 HkOLWYaR4oOjExVV56NiTL1VfZtLQwCfqXS2BY5KNyADh4EtxQ4spV73b/174e8p66Ke
 kggAjzd1S+7PqyV2pUBZZBeJ1sFY+KSFYMRgV+TnSPU79hEDxckUOpSe3KnWRfUacQya
 mgDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CmH4Sn1DdXunw1TL7f6sfjm3qJQSjiedEKITkUOQrRc=;
 b=qF2M1/ULLO/GXbghpop34NbLQOpf/o/vXLdlj8uSYeO8RDReYobvIYZNoUklIIOYVz
 L+EJoPXH/LwD2PhYPqIK0kXRIbkQj8YPpg4zvKDjS5xuCFlAslDtyIT78IWlbFJo6xcR
 X2XjKsGNOQFGuZRSFUyDtLRIishNHBntiF0BzWqFIQgia7BevfHlht1xUBGHf8VvuBEo
 bDrWyb9vHp0TskWP8AWOux8tdbLTssx9l3qMgfacvtnGiSuXOyK6jvCSZUqoJkb1nubF
 jDMv/dbL5tFh9MLPSUVrfzhL9rM3nsEUefMCud8DJm/wESOoslzgQNSA1YQx/T3gpIhz
 PINQ==
X-Gm-Message-State: APjAAAWbi3R1lgGhtcX/HtokbXX3n6Xieis5K4bUaBPGgAC6B1ukW7mu
 27BDmN+dQ07wtTvaXABPUhBD3Q==
X-Google-Smtp-Source: APXvYqzj4L+0U+5qBm9k8ytHroUi7rJ9GvABgTsk0w/eIsHl2OaCQNODEhgAMGDB5z6jZPEoi9l7ww==
X-Received: by 2002:adf:8123:: with SMTP id 32mr5012062wrm.300.1573157829246; 
 Thu, 07 Nov 2019 12:17:09 -0800 (PST)
Received: from localhost.localdomain ([95.147.198.88])
 by smtp.gmail.com with ESMTPSA id d11sm3215162wrn.28.2019.11.07.12.17.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 12:17:08 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@google.com
Subject: [PATCH 04/10] mwifiex: Abort at too short BSS descriptor element
Date: Thu,  7 Nov 2019 20:16:56 +0000
Message-Id: <20191107201702.27023-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107201702.27023-1-lee.jones@linaro.org>
References: <20191107201702.27023-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_121710_869148_85B28F1F 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Takashi Iwai <tiwai@suse.de>,
 linux-kernel@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Takashi Iwai <tiwai@suse.de>

[ Upstream commit 685c9b7750bfacd6fc1db50d86579980593b7869 ]

Currently mwifiex_update_bss_desc_with_ie() implicitly assumes that
the source descriptor entries contain the enough size for each type
and performs copying without checking the source size.  This may lead
to read over boundary.

Fix this by putting the source size check in appropriate places.

Signed-off-by: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Change-Id: I8812db5f71b733e14573cacb6136e8a1a23036df
---
 drivers/net/wireless/mwifiex/scan.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/mwifiex/scan.c b/drivers/net/wireless/mwifiex/scan.c
index 81a50d8af370..cff755475bc0 100644
--- a/drivers/net/wireless/mwifiex/scan.c
+++ b/drivers/net/wireless/mwifiex/scan.c
@@ -1296,6 +1296,9 @@ int mwifiex_update_bss_desc_with_ie(struct mwifiex_adapter *adapter,
 			break;
 
 		case WLAN_EID_VENDOR_SPECIFIC:
+			if (element_len + 2 < sizeof(vendor_ie->vend_hdr))
+				return -EINVAL;
+
 			vendor_ie = (struct ieee_types_vendor_specific *)
 					current_ptr;
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
