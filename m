Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D880035B70
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZpWDjwvhB6Yl4Kt3ncp5PrrCk3I/53I5xksycIFlDjQ=; b=ZRbfy9weRcgqygxEEgI/cg73LL
	bQ3V+IZWQa7En0ebV/ZXLFstqkH+BHQoe8bBqIx3wnmB8iVqUnw0btvWm3DZLHXZUo64WvvnsaSYx
	RoXaCU4QGct0WiBw0xulGEVFK7781uXMvxZijRvt70BbTJ14wk2TOODwLvlKawtu8GESkoCyt72rj
	tnnMaxydS5xndLJwHoW2p6jPmfcGRKfobmEtvvUKMKSclsoRse0C/64wgaTTvHV+jQWOkay28yra9
	hpCviTErpoY/KqpzWO5r8upACuVX8XnK35EykQoUUs1jzTBOELen8ec5iErCeJbMl2H4sg+imRaVl
	cC8ELpYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUK8-0003RN-Qa; Wed, 05 Jun 2019 11:43:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUJz-0003Oa-6l
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 11:43:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id d17so1924513wmb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 04:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jzlILgVOq+qa8QnWXtHWObcbjxta0J+JIjopEg5uUuk=;
 b=Phzisd+Tdhfzrf2cnfJc7/3YsGZ48Ro4ChpgCOPMYGdsND4hfBtzYRbIro3IyIF/ok
 d2VoAM0CSoZqsLeb7daN/0gWZRf5oYOfyq6HbGajovhrFh9+ylcx1OfSnJPxDyboNKNr
 HMsHNOxcL/twPctqJndkmBghg6/cgcpivviP8tG3X6yJFC/6J1FDnX8ZMfAdcOoCwEOE
 wYt3lEugdF3bWe3lo3j+YIfzADWTggVyqZI8qjFBFYZq7yYU/hEkxsZURtN7iMzbDiKy
 SDGdToE7A6QwBNbr1y/nGX+1OFl/mOFABzdOKeAYX/+AtInl2tcDDgusYUFJjEOXiceF
 NJYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jzlILgVOq+qa8QnWXtHWObcbjxta0J+JIjopEg5uUuk=;
 b=GGq4rZl5HnADowqtfi2QiEUw6YGmhHy4POC7RIcYFJSlximjawSQDuH5EbSROepqhG
 lgMZjppDuWArSxevrWr0aU7osefDlQ+3ls8XCapY30CjqUuPnkIse7RCuefhMES5yoP/
 A9gg3Gj6H4iKJ4RQvoN0JljvOu/HkT0EISzC0gyLyeYMOFqGHwcuu+uR8bUTg6vJGKWt
 bO6odxEMTORJg/hNpeaug3k69Ekw9vCMx2GX9bqAGRT3pKUkv4oFsOXpKNf3PEBv0yct
 7o5x23cJT+/iSjx3pvuqk1+7hwLbLVZ2/sdNBcsuKJksNpwddgpOkoWtnmM0plB/9xcZ
 JM9w==
X-Gm-Message-State: APjAAAXqMrgI/cun7JU5ReR5vGV4juvGm1oHVrB9YPceW14szDAEkQgk
 2UG8AFzroL6O8wYO0A3w/EsOaw==
X-Google-Smtp-Source: APXvYqyIKCzRjK5C2cfGwWv0aa6X+yD0CtMUNDQac+1g9TUKp+wHCO+xwEod0nMcftdvvIOKCPSkVg==
X-Received: by 2002:a1c:acc8:: with SMTP id
 v191mr22806026wme.177.1559734988581; 
 Wed, 05 Jun 2019 04:43:08 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id 34sm27718740wre.32.2019.06.05.04.43.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 04:43:08 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Date: Wed,  5 Jun 2019 12:42:56 +0100
Message-Id: <20190605114302.22509-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605114302.22509-1-lee.jones@linaro.org>
References: <20190605114302.22509-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_044311_254400_DC890987 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-i2c@vger.kernel.org, jlhugo@gmail.com, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Qualcomm Geni I2C driver currently probes silently which can be
confusing when debugging potential issues.  Add a low level (INFO)
print when each I2C controller is successfully initially set-up.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 0fa93b448e8d..720131c40fe0 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -598,6 +598,8 @@ static int geni_i2c_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	dev_dbg(&pdev->dev, "Geni-I2C adaptor successfully added\n");
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
