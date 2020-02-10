Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B9E156F8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 07:37:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eqjwrx401wSjNyIAxRJWLv4XSVTOcqqgzDb4RM02YEA=; b=kPvW2D2VrneXIE
	zvxb2vDWh6ujjVHz4V/olDKcJz149Zn+TPaeRM7xoPVAFdqcxpc2EaXMdfpknpKBTjYxQY5EDCIsb
	KSeviVWzNvKe28J4GlYdNJEZvpBn0/ijLkLVRd9JuILb9hHmynJBhwb3NrpilbVbSfVMNc3pJY2qO
	js3lxIJNWRFwCchHctUiPh6W1NjnO8/+8lw9Ph8gTjmpaJO+gtJX3UZt8CccPiJQ45atm1PdIIHdw
	ndSj778B2AFnjPrANbpyR+rr6nARpMsAMrGhWjTMfAE4ZzAWEZhOlwstTN0YD+wKXyrA1JUplniqo
	9bzcD1qgSCtd5rRZ489A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j12gr-0001aJ-St; Mon, 10 Feb 2020 06:37:05 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j12gF-00017r-RB
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 06:36:29 +0000
Received: by mail-pj1-x1043.google.com with SMTP id gv17so3780572pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 22:36:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8M/+JKdLoe27r1QkgI6hunqV9+SJ7vAk/tNBmFTl07w=;
 b=nIERl2yuhbzfok1YLM6oHhmpJYGu5YzjLocGeIhR2aXGpa0Rzpm2/6PhHvWz5i39zN
 Nf3rkaul93gk4B4Pg34rzr0xC0GvJuPsC0o3imF5nlMLYDU3Rp6+dRa1Ot/kj6pEvNd3
 6vCTh//IQi/I4sv72O3ZB5bWxCFwuw161MP8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8M/+JKdLoe27r1QkgI6hunqV9+SJ7vAk/tNBmFTl07w=;
 b=XYtXAvyv81P8pwLucvUbORvVo23AafhOrBSH3j1tOl5WOYI0g4vrOlRZnxQQMUo7Lg
 B5+t3htDaLLw/k8siJaWFojXeanIXV8QL32aleH2O5XjzhpTEqnCJl4jAWa3kkuithUO
 /ZMgXEk+CGXtgN7WnlTDBnNOnkyfKAFOA0Y+DATDG4simDEWSPf87tG1bULWMSmBzunC
 dysr/g9VWl6++mqJUQz4JgTSXTWOUFiwj7dNqVn3lny+BhPRAINfvB6DL1EZOBp4dUAG
 jT9L4UI01yI0YMX+9RGz0i9Y2+QFyALydTGdZwtHTrBLjo364nCARcYo9yF3BlyROll3
 YGPQ==
X-Gm-Message-State: APjAAAVSdDKP/Is6s5ZIOUY9TLlQb5WtRa8Cq3e5D7oAzgX/ssF03+3x
 nOFh/LowXfJfKMs7msghHpy57padRNajgA==
X-Google-Smtp-Source: APXvYqzeU6ktZruV6307EOPnFu0S/auGICxWezFUqXXV4L/USf6GdEp0kwPmRlzuszsyR45ZVgnnrQ==
X-Received: by 2002:a17:902:7797:: with SMTP id
 o23mr10818758pll.298.1581316586487; 
 Sun, 09 Feb 2020 22:36:26 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id f15sm11070041pgj.30.2020.02.09.22.36.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 22:36:26 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 2/5] arm64: dts: mt8173: add uart aliases
Date: Mon, 10 Feb 2020 14:35:21 +0800
Message-Id: <20200210063523.133333-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
In-Reply-To: <20200210063523.133333-1-hsinyi@chromium.org>
References: <20200210063523.133333-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_223627_890922_8A6CB431 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add serial as uart aliases in mt8173.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 8b4e806d5119..790cd64aa447 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -50,6 +50,10 @@ aliases {
 		mdp_wdma0 = &mdp_wdma0;
 		mdp_wrot0 = &mdp_wrot0;
 		mdp_wrot1 = &mdp_wrot1;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
 	};
 
 	cluster0_opp: opp_table0 {
-- 
2.25.0.225.g125e21ebc7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
