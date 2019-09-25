Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F399BE80F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 00:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tIoNbKHPRPBYo2xlhCbwrB3SX9wgRBZhbJUAcCesH0=; b=IQnm7HZ9rmQ2oi
	WHz1RM7z4WxCUpObe+TQ5yFPMPvSdHpi4wpoHiWwiW7/MogAYUMkjfC0yBR6rQn4A1MNcUEdzkVaB
	PwMZGY/5zvdUlFhNVPBlejsMufZc0DDwXQ+d6HL5W4VjtwBc5+tVQJNhO3NN4FrOi8AUCivFY+MFe
	axLmlPk9mRvsl2jGcK2Vntf/YXt2gp/28YTiQbW5tqLiyAAXILNKFxXMD1Okuax3UCp2zO1+LZxqV
	n1kwvzYAUR2EpbSFqYTkk9E7jnJB6C0imu4htvmvbXZhYa0/60nvOs8o1/9TBpD93l46Pn4+zlOSs
	FbI4rjRhpHBtUYuZSXPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDFOi-00018e-KQ; Wed, 25 Sep 2019 22:04:32 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDFOR-00017H-Bw
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 22:04:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id y35so119621pgl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 15:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=YeAl8mUR5ysBqtVRjeF0K3lTpX9dLqo1DLUgKRVNBCs=;
 b=kAVODz2SbNFA24N12lzrYsnEjoiYTW3A/X9GWMAh7zTc/1Ob81Oe4TIe5eKAasPbUh
 Gcj8UMKYeOZvrglDEs7YXZaghdGe5VaUL/57m7dcHuvxDDQn+T+RrA7OjJwFVWNKMWkx
 Of9C1jOw2N+/hiP/r2wCEA/4oker4WI2s5mabRiTe7+2jhNSZl7rcLAjHE52L8GidDll
 puzBzXPLuLLtvTV+K4oo4UBV/wiOmwrGJglJendCO5lcfCZUoqB/8ZnIrdDN6C5Ac6M6
 gertYQ5e0Qh2hZr4n+3kJDBVd8dsGcxbQpNEWuh4R2A/UqiES232s2FufTAuq24CN+lv
 xEZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=YeAl8mUR5ysBqtVRjeF0K3lTpX9dLqo1DLUgKRVNBCs=;
 b=j7CeSIAWmPM9zEs2uvmIMR+02nJJVKDAmPvxYNH5jMeKPzVTexYamhHOClsdJ3ls6z
 1tD3bi5w26iK7TdAcAFeqcDnFJ6i7++szTDeowCHD1ue9C/rvN/XN0daLQ7hFoBfsQAK
 dpsO9jxhKL4bJ/QvhnbSXFK7O95+jdW4ma8hi/EhaE4k1l7hKYS353d0doRVDvRKrQE1
 l0mNZgO0kZpztfGL86cqVBaUKizCXaSgeXCNCBMilDO/bGeOiFHmWH7IoL52jBF6rP/n
 8rHSveilcKMUxIz3BySZQhur4w1kzrlJFFiJoWEhUzXigCEETnFJ++a6mvoZ9beCMO0o
 FzTQ==
X-Gm-Message-State: APjAAAW9bY4LtNGM/jLZuIuvD1VIrKAUu6O/ii4NrcJPhSznJvBSxzWU
 lHdcC/3iE8sFOn3Djs5ojWXCSQ==
X-Google-Smtp-Source: APXvYqxUwa/wf6Ah6xwPK6rJPAIvd99PeWHWaExNxLuo5zzuQAq8iypBAr7+D2+VjDRrb42Q/pp6Hw==
X-Received: by 2002:a17:90a:f0d7:: with SMTP id
 fa23mr8733337pjb.120.1569449054656; 
 Wed, 25 Sep 2019 15:04:14 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id y80sm18688pfc.30.2019.09.25.15.04.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 25 Sep 2019 15:04:14 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCHv4-next 0/3] Odroid c2 usb fixs rebase on linux-next
In-Reply-To: <20190902054935.4899-1-linux.amoon@gmail.com>
References: <20190902054935.4899-1-linux.amoon@gmail.com>
Date: Wed, 25 Sep 2019 15:04:13 -0700
Message-ID: <7ha7asuj6q.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_150415_437078_7B0C03BD 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anand Moon <linux.amoon@gmail.com> writes:

> Some time ago I had tired to enable usb bus 1 for Odroid C2/C1
> but it's look like some more work is needed to u-boot and
> usb_phy driver to initialize this port.
>
> Below patches tries to address the issue regarding usb bus 2 (4 port)
> while disable the usb bus 1 on this board.
>
> Previous patch
> [0] https://lkml.org/lkml/2019/1/29/325
>
> Re send below series based re based on linux-next-20190830.
> For review and testing.
>
> [1] https://patchwork.kernel.org/cover/11113091/
>
> Small changes from previous series.
> Fix the commit message for patch 1

Queued for v5.5.

I fixed up the typo in patch 2/3 when applying as suggested by Martin.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
