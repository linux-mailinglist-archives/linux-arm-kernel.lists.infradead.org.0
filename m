Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230C615F726
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 20:51:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qkISDbJ3zSkz9esn/XSeXRr33m6BTJzfhk2TNm2aqgk=; b=NZmeOF4iwAYiTP
	aMaSi0jb9UTkDEHWa/TDnYzZhp3bJO99wWn47LuUf7TEo2DaRZLFJduUhSIv5H6cze8cqVMwTZFte
	/X++RQVOoAH0UXS7hwnDLO9EcUFvHW07X9LM+InhCK85FxmM9MGkC09idaGL3jMmzXkpdhskGz9pj
	eTh3BUFb87GDsrH4f5dp+eQEAclm08t2G1aQVaKjy/ZnNyTn5EXPPZLlN4td19cOpZs2cdoclQnD1
	e+o8+5zSOhu+vL0cdchfHo/F8JRTPJd9GOSleN6qutTgE0W+SwNh7F1Fkx/VSj8AW7fp2flxp4rHs
	0X2pvczKB/DJc4emkBBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2gzU-0001oX-Es; Fri, 14 Feb 2020 19:51:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2gzI-0001mo-Jd
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 19:50:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id r11so12249121wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 11:50:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=RC5diiaR31GO1rhNQqP799z+UvDMaz6Wswnev5LOZWQ=;
 b=nxT8uiE/z52YUercio9Z5U9t7IR3335+MJiJlP80FZE6VyMExWaZrdmMWfDGExAHJH
 UyKPXipXu0iaHR4UEWlfizHzMWSOaQxyrEdJJR783jkcXSGK9VsyV01m2xMT0Mw8wlbO
 AaGiC16TBHGyAKgukrHgBCtrmcFsmgrF8VJJq46pfS7/biBsMnKlXrp9aIxSIXpEtxtR
 PLM75PKRSTkJnEZE5X9BssKTdQqAQ9xFVsjDPMDtFdM5VT2ICVDPbK3G/1E4QLJcjL04
 PtD8CJCvmor2gmivTA7eV+66UuAsYVEzIRikVpVo0FnB49W3iDElogQ0zRQxZRC0XeSm
 dj0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=RC5diiaR31GO1rhNQqP799z+UvDMaz6Wswnev5LOZWQ=;
 b=gU8nMS1ndjaiTv24zWS/HDl3LllieJvL26hryUhCHifxL37AeIv6QucWgChLt6uGse
 z/0f9KSo9wHMtugsykowr9WTEiIroR5vMECyuatnlUFNPwoZPPK7RsPwPAAZCAsgTYrB
 /n+sf5kUs835hivIga47CLlKl7ewdsCbYyPQKvYkRiR2oOQ/IpOlBJfFonbugV39Hwqn
 nnv3Zt94zQHKr4Bpz5DCkyfsiqJLXgofN+2+HXm5o7D4r4DJgrJpSOnWJvIlO83BkPhG
 93+0c+qQPmpdDgr+k+u/OLmEh/eQ7VciZn2mQvh1QUarn41aPbgQKQF48YyYGukD06WQ
 GqMg==
X-Gm-Message-State: APjAAAXIfNPFezLFpYyQD1jWibnqBBFzhrE2n/WaNMUIAFNZy3y8K8iA
 DAb9Msa3XbMs8+Q/v/038osh0Q==
X-Google-Smtp-Source: APXvYqxJ0lDeRgZFQoYhh/V5X69ykQbrkOdOXgABmMtigig5INOR94v2BGam/S6IxkftSmbnVRCbIg==
X-Received: by 2002:a5d:540f:: with SMTP id g15mr5387293wrv.86.1581709854692; 
 Fri, 14 Feb 2020 11:50:54 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id 21sm8793510wmo.8.2020.02.14.11.50.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Feb 2020 11:50:54 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v4] arm64: dts: meson-a1: add I2C nodes
In-Reply-To: <20200109031756.176547-1-jian.hu@amlogic.com>
References: <20200109031756.176547-1-jian.hu@amlogic.com>
Date: Fri, 14 Feb 2020 11:50:51 -0800
Message-ID: <7htv3t9cdg.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_115056_643204_C2B34339 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob
 Herring <robh@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Wolfram Sang <wsa@the-dreams.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Jian Hu <jian.hu@amlogic.com>,
 linux-i2c@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jian Hu <jian.hu@amlogic.com> writes:

> There are four I2C controllers in A1 series,
> Share the same comptible with AXG. Compared to AXG,
> Drive strength feature is newly added in A1.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>
> ---
> This patch depends on A1 clock patchset at [0][3]

Just FYI, due the dependency, I'm waiting on the clock series to merge
before queuing this.  When the clock series is ready, please repost this
since it no longer applies to current mainline.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
