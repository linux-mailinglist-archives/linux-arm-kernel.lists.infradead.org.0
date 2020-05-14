Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 357361D3248
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61HjMQX33P2z366nM3XTLb9OISI97L5uSAcA0DyB/Ho=; b=rLjITSoQ9/Mxzd
	oyLKIAzYM7iXEmCIE2rcXZeVI+RBJYoIv9bxCx+pS2mwZVo1HtKwYsQQUyy3jp7J4Ftp/e8Qfk7DJ
	xAAwkEv8USw6HyCJdsEhFvRRnZitGQW8XwgNvTssdksOv+Kd3g8bIWKPfcrKR5ClxFTOPID18aMdQ
	s4wI/PAx8cV5Ht7XT1DEILbNfkluMR7dwKVxW34llfK0o3SvFM3ZPOnC6+cFawTQaUpd0bFCBoR1j
	z6HSwYVSd/ZjNXAvi7aAqnStpQV0rHIkfSxU5Ek5AvN6HDTh6CimMgYA30Vq0gjkK1E1i0IHo90NA
	V/Jbt7G/UFF9Wlj4tIOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEZm-0007yS-In; Thu, 14 May 2020 14:11:06 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEZa-0007y9-Lq
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:10:55 +0000
Received: by mail-wm1-x342.google.com with SMTP id m24so20968435wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 07:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hoAYDgtRggFxMiZjO1bVW1903dGoWfRGsSFbkYw4jm4=;
 b=oGIR/NgZPhgsGNIQ8Zk5BnAdNRaUEMX0VgrvEYjok/yp4Q8NKg2exbRNOfezD+isVV
 V4tXhdggfj4apHIDb05+IdKTkWgRKBHBKcJLF44Ot6PWxQf/t0VPyOxku1zh/OwkQ1if
 W6wiDDyKwHfUZSxMHLpJHXm9iDYF5biGg5fKMDQCUciWgFamxGj7QLwsaj4YCF8V5sQ5
 GCxNOdSMn2B2wVPBPwGiJ6TqNyq/t9xdfpfyOSrEycW6XyhF2E8L98ytJI36ukMmUA9F
 YBDMnfx6qy7rIrkEdY6atGqEMbjLvks/WkcjWXq5k8Pg64slciI4bBkMMQNwiGciBqgc
 pmVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hoAYDgtRggFxMiZjO1bVW1903dGoWfRGsSFbkYw4jm4=;
 b=lVFnnobnvyZK9G/qy+ro3Yga4obRbeQ+qKyrgPDqx1kFKpToZzDytPEAEnx08QbuTM
 1LnkVzOPBdLUyHAKCg0kGWnv1iXbAZYqE9a+k5bIIm7XZPbR/v3hTNSypdqekR3H93aN
 pBpXZqGdgrimUmTe6RZzbFSgHgKfsrVuHRalHoJ3Q9aX90eckq4wJWGPoOT6g9ug6ODd
 /XrTQy1ndRlK6Dj2+p6cGMU9eoyHp6HuOhtXCTSML7T2LYHLXHTKcnFKiCdjCisow9wv
 vqZ0fL74DBUL95jsWVpSKOjLpGgQJtpTtcEIiuWe5jTPZgF0S0Ox7i9ua1i9X4+OBlpy
 tZdg==
X-Gm-Message-State: AGi0PuaDbj/0qiEmxveVINin/kCOuzhJBFMMcCnJ6auACD6D/VYRVu6Q
 ZCpXJZgb1UPdEzbGnalBkbb6hA==
X-Google-Smtp-Source: APiQypLK4m/UIQG/wE+O0YZKAmuvLLyiAggfiVqRnl6+26HL/7yIPecMv61BfyYTxYq4PpvRanuwAA==
X-Received: by 2002:a7b:caf2:: with SMTP id t18mr26185465wml.35.1589465452810; 
 Thu, 14 May 2020 07:10:52 -0700 (PDT)
Received: from localhost.localdomain ([37.120.32.219])
 by smtp.gmail.com with ESMTPSA id n9sm4315672wru.90.2020.05.14.07.10.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 07:10:51 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: bjorn.andersson@linaro.org
Subject: Re: arm64: defconfig: Enable Qualcomm SC7180 pinctrl and gcc
Date: Thu, 14 May 2020 16:10:48 +0200
Message-Id: <20200514141048.1344235-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200116045457.2489704-1-bjorn.andersson@linaro.org>
References: <20200116045457.2489704-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_071054_711869_3F00A039 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anson.Huang@nxp.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Robert Foss <robert.foss@linaro.org>, marcin.juszkiewicz@linaro.org,
 dinguyen@kernel.org, will@kernel.org, maxime@cerno.tech,
 linux-arm-msm@vger.kernel.org, olof@lixom.net, leonard.crestez@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Enable the Qualcomm SC7180 pinctrl and gcc driver, in order to allow the
> kernel to boot to console.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Reviewed-by: Robert Foss <robert.foss@linaro.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
