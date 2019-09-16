Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5310B3E9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 18:16:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eZYXm80IJTsuJNvvgEh9TkT96zv/i4k+guvkU1KpMIY=; b=XRHBBwBOCYtxDpfelx+EdNlKWy
	bznlVQ8QbzkiYBZ30Olw4PRBHGMjUp4tTTIZMiYq3hBKJItQGpga0QgdR5LkPQIcG4jaCkQ0WCcFo
	t9qQYX8yjTYYpGdj56e0C36z9P82udHQITYbUQwZfdUqamuX+TEes5x1F2rSaSWF9JiUf2FV3+0pl
	DzPD1D08O+efe4NK+LwO1F/tSDXBteT3036MOd1F9KztVmhsAqnWz6LF8pJClmFmO8KWfyXIhPnpw
	ibxZ/elZQeGUiYVnMHv7AlVoTtX5ymj80sunkxrfI7GxCIM6FcZG6TaIHezwHFgPe6o93jHcKpGvU
	xmkBDKBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tfY-00041U-2T; Mon, 16 Sep 2019 16:16:04 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9teh-0003W7-EK
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 16:15:13 +0000
Received: by mail-pl1-x643.google.com with SMTP id t11so116563plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 09:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=a/DBFL5pnFxmW7r8pfJ654oUFkPKTYmOJJb8EXbuSt0=;
 b=sYJTtMzaFQwnHrfE0d9bJhN5rJL+SO2sue5FpfF9LXaYmhdpitHfR1Mc6XMxU1Oth+
 JQAA2gJlVkMivG0TmPvinQOqimNim8N/21fhacTw0RdNDLtxPidi7L9R2U43pM6SLVaQ
 ua24bR6jkaW/OpEH84OUVaTt5s3KO3zFAZPV1earH/37b07DVZ/iKbah7H78F9ruW6dn
 BckDQs5uhXLjdbUq/WfcMG7QausOcDfiKMi/tFmNhYQCx/ddbG/CDzBXCEc2cH0dGrc5
 KFx+mQF1bn5iJK9R3+e439dl8iIWf/BRAUXaj7JeJ9DvsUXa1qV0jRfO6F4Q3IyBRncZ
 dtLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=a/DBFL5pnFxmW7r8pfJ654oUFkPKTYmOJJb8EXbuSt0=;
 b=thsM/DW/XHHhKB8qIAuhgTrPMELeKOIDWxsmY9o/NHTfN+VSbGXw/NAK5pzkCrWQFc
 Gmg8Xlzi561YDxlaBV4Pp3SCJBAlWh6Vi8FtVUnXgkkai2YlWiLsSeRIxaFsNn4wKOWB
 BPHd4Iqw2V1Q3kYSA4DBNizopggNA8mXH1A11M8h2WWt0Md/96vMJNIBpyQ0Y3xqCUne
 WiBFt+YKvupSJQVPNAz7jXnag8m5vjcdSIOpQls30J6xhFQDRrOrCJshDh2zQJJnyHX5
 HumY3HOKvP4CDwublVJWCi8s1qDADFVITGoqFFCknnGJw93BBPnnSD3m+SmGQXpwU03y
 N8Gw==
X-Gm-Message-State: APjAAAWboYpIwy+FiJKGXF7AJKAOM7fqd0WSzLxTAdInq/20PvU9KjZJ
 1m3jlCa33lixRWfw4Mg3M+jD
X-Google-Smtp-Source: APXvYqwai5hRsIjr6Sio2D633cSZ/kBiyCycKeMWSitnZm0JKjOMYo+90556s/ze4/hobdpZhKTxwA==
X-Received: by 2002:a17:902:7296:: with SMTP id
 d22mr607247pll.41.1568650510819; 
 Mon, 16 Sep 2019 09:15:10 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 h66sm614134pjb.0.2019.09.16.09.15.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 09:15:10 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v5 2/8] clk: Warn if clk_init_data is not zero initialized
Date: Mon, 16 Sep 2019 21:44:41 +0530
Message-Id: <20190916161447.32715-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_091511_886682_F82D7C0B 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new implementation for determining parent map uses multiple ways
to pass parent info. The order in which it gets processed depends on
the first available member. Hence, it is necessary to zero init the
clk_init_data struct so that the expected member gets processed correctly.
So, add a warning if multiple clk_init_data members are available during
clk registration.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/clk/clk.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index c0990703ce54..7d6d6984c979 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -3497,6 +3497,14 @@ static int clk_core_populate_parent_map(struct clk_core *core)
 	if (!num_parents)
 		return 0;
 
+	/*
+	 * Check for non-zero initialized clk_init_data struct. This is
+	 * required because, we only require one of the (parent_names/
+	 * parent_data/parent_hws) to be set at a time. Otherwise, the
+	 * current code would use first available member.
+	 */
+	WARN_ON((parent_names && parent_data) || (parent_names && parent_hws));
+
 	/*
 	 * Avoid unnecessary string look-ups of clk_core's possible parents by
 	 * having a cache of names/clk_hw pointers to clk_core pointers.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
