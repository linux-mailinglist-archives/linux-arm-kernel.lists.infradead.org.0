Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599865A2EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 19:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnO8vLjVERc1KdPP/VMBqBUIpBtBYILFaDshenjUI0Q=; b=O5Qj/MMHZ0lXUP
	rDRIKbhEIKW/5f25aJdRDkxjjSGhe/VF22/JCF0IGUbhRL1PwyZ2wJdbGxH08KZl6bSPILvPunsZd
	StBGTkBTK3oz9nBRshsPgr1RmjUnOQbk0Cy/YAOlWtsz55Jv9D0oOUkbV8UHMpEQ5I1pdT9SylAIl
	J3cFWX3111NMBtGekgdi4xekgkCsrQLt4NsUE2DpKePQWMnYP0fSE7lv0cwCwkSHo2IvjGiNnICih
	MqE5fTWFpu7+uVBNMdv2UItazuVfDg8ay6ka66wJunKBHRNkrbhYedWpj4s9reKvm5E/0d9E9Z2R0
	NfiRRZPRcsqTFuHJghMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgv8d-0000VV-8o; Fri, 28 Jun 2019 17:58:19 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgv8I-0000TW-Rg
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 17:58:01 +0000
Received: by mail-pl1-x629.google.com with SMTP id i2so3655806plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 10:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=JXDx5Of53xKpwKzie292LEzpOCIt7HdxAp/TZojOC98=;
 b=QidYQZ1e5tVfpSNlbzJAwZ1PSEo4dbT1h4HX6qlUhaYy/0WDP2DbYNFPTucwsPtXtJ
 P5Da3q4BSmLlg7YBmA0owHM1bUPrEb7BS8gzdHoNIWge3t/+SscDfMMBa3vx9swwjY5n
 LFvDrn5pgiwG3LzawIGsvptYLxKuORQdAVK4jqhJjDPscsuEl0XBsIcIhtmOUiqLnY31
 rl5J0Is/8LGOWfkwroXrx5lrTEZnf+8x1H9rCHGrYrmt0cwF3/5ZHvKqdnUE5x9l17cs
 65Qi5bpDUOP3xQ2tieEt795doUy4MrobU1fhvRK9NMQeo5arbU4RPh5V9yXTVNhCQ2rL
 ovHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=JXDx5Of53xKpwKzie292LEzpOCIt7HdxAp/TZojOC98=;
 b=AW62eH/cLEF2Y+QT0DmWuTpYb1AJWLCe/qQreRoOzdep0Up0LKJtoU7uSPNQV58Ley
 Fg59XvSW10uLifqMDwu5LICekF2UucMp7pGB3BEfVAugRMjenYebzego8iRRZy/AL75Y
 Em+Z+KJROPfGBUb/ZvCcgsWaAFMY832tCgET3yO7hffR2ntP/Km5rDycQ66Jk9PNsa09
 Jdy/ZsHO/MuE5tMH+7ZLpZft9QlVP8qVZR/pmnLys7Uw+W2vMGT9PEq89SPeEbQYOcpC
 sajBrhE6FL8MEqObOzGcv78W1TVR3ExtpARtglE+NdDJJNOhWXV8CBU0zyD1rtuK/Zbq
 LPmA==
X-Gm-Message-State: APjAAAXHzMsEOPbsJ5GeX+JyDVUQ9quKGTzLSTHechTeBIcE6JVeH271
 Q7TLja+prWLxXnGzc09A2r8eeA==
X-Google-Smtp-Source: APXvYqxBvlNYSLn6PRoeEXRuFeavrw3x9z3+yywP5RFfiMDYAfvzlGijWI2kL3fNFlbko9TEHruOVA==
X-Received: by 2002:a17:902:3341:: with SMTP id
 a59mr12892929plc.186.1561744677360; 
 Fri, 28 Jun 2019 10:57:57 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id c26sm2814912pfr.172.2019.06.28.10.57.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Jun 2019 10:57:56 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, jbrunet@baylibre.com
Subject: Re: [RFC/RFT v2 05/14] soc: amlogic: meson-clk-measure: protect
 measure with a mutex
In-Reply-To: <20190626090632.7540-6-narmstrong@baylibre.com>
References: <20190626090632.7540-1-narmstrong@baylibre.com>
 <20190626090632.7540-6-narmstrong@baylibre.com>
Date: Fri, 28 Jun 2019 10:57:56 -0700
Message-ID: <7hsgrtr3rv.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_105758_894194_69924E94 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:629 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> In order to protect clock measuring when multiple process asks for
> a mesure, protect the main measure function with mutexes.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
