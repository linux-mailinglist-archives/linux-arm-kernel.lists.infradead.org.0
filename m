Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD4C4C206
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cLkrFJqDXObFWBHij2XMxinnZ2lJiQVmrUfk6/wkCAg=; b=swkyyFcXcZnDl2m59+WnENVY7A
	vrejlcXQo1XJu3sh247QKPTsvFF7+Tvcgx2WwyvIp+qa9gFRq/PUeXPWq5HHyIBsXIuAxATHgS+rA
	IX9Ropq7crhHsVs37cPd19o3Iv9bi+fdLGtrvUNKsegy7hga6ycW9iVFeboqA5BrCYSkG66arFOTU
	XKvZnoKjLfeg09IOJhHhg3IooRthF+AXzhKxwr0zLz3Y17+zDm+Tl8oflyFxlWSPYwu1KwdVehTiF
	ErNyGjAdDQf46gXRACekGNfSX5J71hEk6UTHQPtmb5ZKsHa6h3uRtvc6gUWIQ1/GaK7a/h3e8gfpZ
	/0oxIK3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgo1-0000TI-3H; Wed, 19 Jun 2019 20:03:41 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeS-0006jx-Jd
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:54 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay6so251485plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DXUk5qmda2XK8XQ2pM+me+/3tfkapIvCeu+/dr6te0Q=;
 b=D7SumMElwipLy66O/ZMn1+WCIIMYzoCOqwwrgl6H5EfM7KvuRRqpSN9RL1tUHuJf5M
 8A5JkRYEyHQxbthu6jPxVcfZcQJwiyIBxKbRHXxnmY3Xh290j37d1y9hqd2W5xfZSMKC
 uKkec/fIBSCDRQT+qfJIfxmDlg3D/xIsA0lTPgK/ui5jTxrdbqMA+xc9bhEUE9kPzzD2
 uX6aJWNwc5Kj7C9s1eDN26z7qpR9WnlmN+bgzAS9hV67FWtZeBKCZeXGLHWPPnqVQjdb
 4sLAXg67eWC1J5DjlZOiCeJ7/CfNVXnsIQeYFgMXdrqyXvoLr++/IHo43fJbql2E5SBF
 GhoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DXUk5qmda2XK8XQ2pM+me+/3tfkapIvCeu+/dr6te0Q=;
 b=U7XXWVg3TfUWTJd72qxQ+zA0llbaaUC33U0vrwuMeGQo6ZEmuI9GwRTHiB1d7VeJqS
 O5xqnfb2dUOmsgvshcdcq/MnJca+P5NZVN2C5uwGswNhTfCnTNtuIjzJoRq/QZMhZ3/k
 oYv4LoxX5d88BJN1Zwci1mWykP5ViQLdtsRfRcE+rdtkqxQRTaXVGAnVv3uCYVIKX6c3
 5iKXDJe375n40SnmgyPFhSWnv/5V1p71bRFBaFDyfOqt6JybKFfU29V4pibnyX7IRrrL
 Xz+nEPtUo85mdqhfGRNn9Ak8llmL0nl2SCkLYiEmdxiNuD9jShURZEKowaiAi0vKVpey
 fLew==
X-Gm-Message-State: APjAAAWTKDbV8/W5GE7YQon+I340yF3KRmHG26+g85bYuaftTVolKaO2
 xIi/Oca8quqOywdlNRmnce6yzZ8kdyDA7w==
X-Google-Smtp-Source: APXvYqy6blWusyZenvL/3DbvgDhX5R8pICjmUdxNuxU3HT7JFS6zCnQEgPYNGBpJph8bNrU7rttqHA==
X-Received: by 2002:a17:902:aa8a:: with SMTP id
 d10mr84248834plr.159.1560974027207; 
 Wed, 19 Jun 2019 12:53:47 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:46 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 28/28] coresight: replicator: Add terminate entry for
 acpi_device_id tables
Date: Wed, 19 Jun 2019 13:53:18 -0600
Message-Id: <20190619195318.19254-29-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125348_801643_1B666698 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wei Yongjun <weiyongjun1@huawei.com>

Make sure acpi_device_id tables have terminate entry.

Fixes: fe446287ec9f ("coresight: acpi: Support for platform devices")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-replicator.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index 542952759941..b7d6d59d56db 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -300,6 +300,7 @@ static const struct of_device_id static_replicator_match[] = {
 #ifdef CONFIG_ACPI
 static const struct acpi_device_id static_replicator_acpi_ids[] = {
 	{"ARMHC985", 0}, /* ARM CoreSight Static Replicator */
+	{}
 };
 #endif
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
