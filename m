Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951F5BFA22
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 21:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHbZ5QNe8Z9RXeHIT2QLZhN9xNtHrZzKMI380Gg3+ug=; b=dXxRfD07gdcj3A
	FrFMIQH+MXDRB+DrFqNNERruhyK+vrQ+1WUysLjWyive9dzWuRcOVAWeak17VjGg17c4OweEdPF2j
	/mq1EkEsbbyx5jRfzP9t/YmvhqlOJwlDDapj4gwchit3qOEPXVVsIH00xAewHI+9DM6sWgAYwJmfu
	USQmq17yXm4zUI9sIPhDy/opEVFwcuFRbkDHCjeAFaxtaLxTcE5CuE2JltGQaD6sIYn++iiCeXrQL
	UYTTF03cvzwkmvLcPJWEP9+tMvN5n2gluaQ3THRdSgoTR9N9rkvzCIrxf9LmAMa48RWbWSWy05SE/
	AUDr6AdpNfpESF+qaFwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZVT-0004Dp-Vn; Thu, 26 Sep 2019 19:32:52 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZTk-000264-DE
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 19:31:06 +0000
Received: by mail-lj1-x241.google.com with SMTP id 7so89933ljw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 12:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z8nKiwxqvEVkSC8bjnHhL2rSKeHZeY+99QwUiS0BzNY=;
 b=x6e5ZgDDdZyxGUBJfhfmqswAYXEyDmuPKFoVH2fpMRnIDRkVbvE/k+nQyZyoyOtZ1y
 iq2BS34ltXtkhNncT5YWLrq2rdDBGE99wix6R0bQxgbpvSYJtqjrJPpKvHlPvC1K3AK8
 M+9J0nzpvH2fOuP8fSyFsuaSTtRiPhZ/36EmbWzIQLUJp6XIj+CZ0meDo6VBumXdGxay
 aTg3YNYBTZHF2MLJBqKgAYilmPDLGYtRMliMrhUJLPuUuKBENWlM6MMQLapW8k3c6cZL
 Ls+vEIhE61K4r90KjOP3iLXvDNKA1otUNHa1I5avo4FHvKfhjp5jWgl57dxTrtaWBSIL
 MDiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z8nKiwxqvEVkSC8bjnHhL2rSKeHZeY+99QwUiS0BzNY=;
 b=Bv1nVNHZNbyl5gV2uKS+qWXwbILlwiq1kSSH+kAxtqD2SayH8R+KBo6DUY3SpI+/zt
 Mo8ZgEOjKrO4DkX2v/MFjN2bhruVBQqeykCHcybcSuHN5VfUKSpTQw7jf4U5+/BY5av4
 qMexwHEcXn4U1Vd2sP1UTC3lm8HmJ49LrVE/cnzdzh5bq/1VaUhA1rpF79Qo4675vTbT
 TSRbwz+cOkZ4Z3/nlPUwTMQL730ZB9GgdSXsnod/WxdbSrhcX/vO8npJhvjPYyC0oMXx
 DDw99skP936ou1uMfu1vEBOyvhe1br2fO292NELauaD5h79OgDXgFQrYUPiTHzZ4sasl
 1mhA==
X-Gm-Message-State: APjAAAWgYI0imbsLNCJRu7S1gBtii0WRzflQNZycO9NzvQu/yCQ47THk
 la68MsJkboFE+jIBlv5eFiMIcQ==
X-Google-Smtp-Source: APXvYqyPCLciNb7qX4Zjm7aNczaVgDK+J+9vmAw3bKwlSiQhmh0siXn6ZKwOs2oTn76/1DnH4277HA==
X-Received: by 2002:a2e:7d0d:: with SMTP id y13mr213314ljc.170.1569526262671; 
 Thu, 26 Sep 2019 12:31:02 -0700 (PDT)
Received: from localhost (c-413e70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.62.65])
 by smtp.gmail.com with ESMTPSA id c16sm31923lfj.8.2019.09.26.12.31.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 12:31:01 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH 2/3] arm64: configs: unset CMDLINE_FORCE
Date: Thu, 26 Sep 2019 21:30:29 +0200
Message-Id: <20190926193030.5843-4-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926193030.5843-1-anders.roxell@linaro.org>
References: <20190926193030.5843-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_123105_316613_94A0FBD1 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
CONFIG_CMDLINE_FORCE gets enabled. Which forces the user to pass the
full cmdline to CONFIG_CMDLINE="...".

Rework so that we disable CONFIG_CMDLINE_FORCE in the defconfig file so
we don't have to pass in the CONFIG_CMDLINE="..." when building an
allmodconfig kernel. Since CONFIG_CMDLINE_FORCE is unset default, so
when doing 'make savedefconfig' CONFIG_CMDLINE_FORCE will be dropped.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 52a32b53b2ed..878f379d8d84 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -854,3 +854,4 @@ CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_KERNEL=y
 # CONFIG_SCHED_DEBUG is not set
 CONFIG_MEMTEST=y
+# CONFIG_CMDLINE_FORCE is not set
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
