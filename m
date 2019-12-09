Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D711178DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:52:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBBIIfuMTEbbWMsnc8If7lETYoOW6xGMjwLtRjrSnzc=; b=Fo/fKRDzAE3ZrF
	BrwIBkuOvNn3jwKxJkSh+NAqNvu6CXRFtsPv05TpGHheaJeNOr4et7Fz6OjFnGLtxwc0x9SLm9364
	7X1O+J20dVz4d1zqYVU2+ECU5Lk5gqNbtBIen1TaVvCAZHNh406VtRzQCFYAZs1+l/sWAZQdPe/Sr
	fX9IR3QjklHkHH/iUpvIy5gjJ/GcOEDbYbHB6Vf6O68Ptz3hPIssLIFSvJpD8uxKJeKpPvjLbvgrn
	+jJJDnh/kQwpjK32jYxtRBdYmBniOr38/x43L86M1ctbOvi9Rz8prpSuZUfl5oxzeBupSZB3bMotY
	RFsgM1wSQwcZNKGWRGDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQxD-0006kp-7A; Mon, 09 Dec 2019 21:52:31 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQwz-0006iw-ME
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:52:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id a33so7564362pgm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 13:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=i5+TnwHki7CwB9DGX3Mta0rJCHBm+w/ZGchbVbmsZYk=;
 b=tY1B/g/W6Gp0eDto/4M5qAgnEJFLIsacGgPoR131eRiJk7fUtWl4e5TQIlC1CAiwdY
 b2TBMj1z/kkjZxyKSMYaCnnAel2maeSAGyyUqpShy5+reGnTxRvNPJnUa54b2HshK+sw
 t+J0fkA28IJXOSml4Jbt+zWayFEF8JZiQi3qqIpF4RsKMh+2RK1GijtLBE9c5vl5ZJ2o
 oK2ucjV+VnSS61VxdpB2OPot2SGhvHBBB+vFt9nNelUOZSqQIPhVC1ofDKm0wlM+tnbe
 yYfDf7wS04Ibq9CrYi9EXfDHETyRs5qRNWbuNJ7rOu+M7/dQiZLDtmcjMWT9YUPboBG/
 vJ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=i5+TnwHki7CwB9DGX3Mta0rJCHBm+w/ZGchbVbmsZYk=;
 b=qUYfw5UZYdwzOjVo+wiShNtiY7iafKHWU0oTHfH4aDaw71Os4ZC4v8iiZx5hXaHoyo
 fWYADerez7zxkJpcVYxSGD4A1Z/ipS5rRT1Amk36089wcOtqcd3FGyP86BRoLpqr7Y3N
 ArNAXCEblh5PT5vYz22mxRnsXb3R7ZB4ROgpf821z5WsFmyx99gZ4dG1HY6DSu7dyRM5
 guXFufLFWG0QD1348S9GMJW7fQVyR/DJ2gUSss5TY5NVDk/7I6NP251d8eqBOxu8vJ/s
 cL9OWALneJ/GzCqKQV/3OmxFWadXIQgkt/o1IrJdwwbX1VarxDgBPW3VJfmt/LsslA8f
 OKOw==
X-Gm-Message-State: APjAAAWCJZ+FTvm8gEqeu6B9Q1M5Tl7xPwBVnoSvk1FIVy4yHjmVIH4D
 7oTq7R00SXlmP+8Bj3Vz4t3H/g==
X-Google-Smtp-Source: APXvYqwJ+lQOvhufrrs8iA3BVrUFuPSN7n3NPPeGKXKlHT1K24DHqB1iVmQmDkzXvU5fBntaC/ym1Q==
X-Received: by 2002:a63:1624:: with SMTP id w36mr19463046pgl.404.1575928336235; 
 Mon, 09 Dec 2019 13:52:16 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id i127sm465841pfe.54.2019.12.09.13.52.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 13:52:15 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Xingyu Chen <xingyu.chen@amlogic.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v3 1/3] arm64: dts: meson: add reset controller for
 Meson-A1 SoC
In-Reply-To: <1569738255-3941-2-git-send-email-xingyu.chen@amlogic.com>
References: <1569738255-3941-1-git-send-email-xingyu.chen@amlogic.com>
 <1569738255-3941-2-git-send-email-xingyu.chen@amlogic.com>
Date: Mon, 09 Dec 2019 13:52:14 -0800
Message-ID: <7hsgltrwtt.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_135217_868744_B89C07EC 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, Xingyu Chen <xingyu.chen@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xiangyu,

Xingyu Chen <xingyu.chen@amlogic.com> writes:

> Add the reset controller device of Meson-A1 SoC family
>
> Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>

I just realized I missed the DT patch for this series.  Sorry about
that.  Generally it helps if you (re)send the DT patches separate from
the driver, and if if it's been a couple weeks and you haven't heard
from me, don't hesitate to ping me.

Queuing this up now, with Neils tag.  Sorry for the delay.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
