Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53967141136
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:56:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F1tjQpFQo17UOjmcJ1477PKv/kY6uG3cQuLBGj5fQw8=; b=euDSn6tz3c5FJq
	N/reHm0BZLtbHA+WyG6rNaYvxIVgR0b5mqhHnMi0xayYT1bjMvb7EmBH6Nt6tNq2TnceEH6BOp7Ek
	rm2VqJAFA0hEzH1v3Cp60Lz1EjbE8So/Ahh6FK9kVGEdxMc94AljvsloAisaySByiyhxjm5S0YQYU
	/rybFrGV6IV04+e0xdSMYE/bs2E3drA9zzHx0JiEbD9OSIe3cG7dcEZkQGezR/eP9j2DZ8QK2KELX
	5rKfeaq2UmNYUFHxr3a/7qSDGSb1xiuFggr+IsDtxg9TS1AqtPz+R2qbbevlw8lKMFTUWWp4oC6dS
	yltCBoLHwsx4dETd7Ovw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isWn7-0006r5-TP; Fri, 17 Jan 2020 18:56:21 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isWmy-0006ph-9z
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:56:13 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s7so3721390pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 10:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zn7SJiodXnAwOg5M6Muzhm0ONI7OtNZPEkZeDUFiNfY=;
 b=LiQopRVJ79gp4QihuIs/56C85VEBfc0tdcq/ZgxIS6Nr4okL8hOAwycduz1da4uuen
 IjFccqYHY70TfTsbaqU0oabyk3KOhBKG1vuxVisln5QjVH0RF7nMYJePxZlIAHO7Mulc
 Fg7M34K7AfSAlnTm5IrV7SRjIZ44pI72TpfbeHKWM4lOeQHjY1k/Jn1y6QGVgXsFp2Fb
 8NyJiat5ZAawoUfbqY2nGtnXnRCyqgbwgXGuYaDR2TdwAFzeDoHRhnmtPQgEJqqP2qwa
 avXzln/SbP7lSTegyZKUsSVatAtRzYZHbrswySZokdYw2eijVb7eVIpS32/quHfv0mWp
 c59Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zn7SJiodXnAwOg5M6Muzhm0ONI7OtNZPEkZeDUFiNfY=;
 b=jv+w4m0OeoJJc2YjG46V0+Clb2FaIY+lWcVMvAGKmaduX7J6/8+NjPJcLGYFBQGbQj
 E3C5oqWV7IulsYjse9SWZuWLnA80OlFbNPrbBT8B7++ykIyUKGmGhW2SsZtToQEzpmfB
 BEbEstR/qpb7gd4ulUNBdOu8Oaox3OU6P4ozV4xwL/aZrP3m3kYeIgXxFrNrgiFdKpcQ
 TJEEKA0xJ+VxKbk9bsbPjOcwOoUqTWptRRehHmZLszrnNJoSaPVHoef00DLxpAtuK960
 +MWFk6lVyvvKoz4hmvU38mBklqu4+F3MJQGaGyMt1El08aI5ZU/84im5jwveNE5nRXPS
 d94A==
X-Gm-Message-State: APjAAAVT87w5kDsg5r8EKtEcsXT0/u7B2J3tXSmSAAlCVvcCwRHHFTvq
 V+G0SoOL0ViTSCO5BnFXDZuK4g==
X-Google-Smtp-Source: APXvYqxs4M+WSzFFsTzfyFwfBPyHM4lFK9mhQvoymIreNN/aRyASSCvsttkCeQ/pAyyHPKDqXnLp5A==
X-Received: by 2002:a17:90a:3747:: with SMTP id
 u65mr7261536pjb.25.1579287369456; 
 Fri, 17 Jan 2020 10:56:09 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id r8sm5899181pjo.22.2020.01.17.10.56.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 10:56:08 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/1] coresight: next v5.5-rc6
Date: Fri, 17 Jan 2020 11:56:06 -0700
Message-Id: <20200117185607.24244-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_105612_390706_4D30CC35 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

Just a single patch to add for the next cycle.

Thanks,
Mathieu

Arnd Bergmann (1):
  coresight: etm4x: Fix unused function warning

 drivers/hwtracing/coresight/coresight-etm4x.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
