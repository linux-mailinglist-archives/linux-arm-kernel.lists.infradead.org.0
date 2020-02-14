Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B9315F6A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 20:15:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xNRbMyupAtb8Xt1wm8wrIsi30vKosCP381hHncPJpk=; b=VhHLZxtBTx4whj
	AXiKgyDsrrD6L18SCjdKIPU1+2zIfiX22F/zYKpR+b+JPkxZGeNGrkO9aAnv4Xfin6ptxOpU1V++F
	mCTfzF3o6zLIkKWgixYK9y/vCRLgdWu9ZmDwtTr1Pi3qZffT2eJ8D7avuct2Ul4lFl6zx6089wdj8
	ERjhuHc8bmBHLn6eQNS2nER5SumjjH5nInbiDvPzSYNAkprpZpePje7ykvR213WPOrEf0GjXuxqqV
	gJR7OJ1mrELlSqDMwiT7a2iaAHnvx+PjQ76aiCJ4HGyfY0XuALrX2oxspQ+dgFFTyng1D2UV6zFQ0
	KjpcYTQdvvl8F6IaU3Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2gQj-00041t-Sh; Fri, 14 Feb 2020 19:15:13 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2gQO-00040F-EE
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 19:14:54 +0000
Received: by mail-wm1-x342.google.com with SMTP id g1so11068043wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 11:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=3/uupSJ5RdwyA7ehfydikl3HpiFLgfBAqG7GerpJi7c=;
 b=bhg9/ibeciuu4Ehv/+5VnxzdhVR6BHlImtjOZ+pPpe4yBnv3DYy5GkYmSdTQ0lf3wI
 ulBkqUncQAxNdUqMhsIWhWlhC88PGD1o+rW4i8a3nBi1xj65vzIjPEKwHZnAs/fwBE2x
 cDbmW6ayWu9v5S3BLzcVxXkdcDiFgbNaR86dZ7S1c2aEWE68cE49eX1Z9GHikMH9M2tY
 DkjeV5xIBEucE8volM/K6bNCmnRL7Pg2raIr8DOxI0/2n/JvPlxmFrco1AByyKR/eM0m
 xxR2PIOVmDxUK2hAFYs8kAf4X11yxS/8Edi2bzzIxpxNW5Hwr19KuARUlkbAIzYXFO5S
 KxWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=3/uupSJ5RdwyA7ehfydikl3HpiFLgfBAqG7GerpJi7c=;
 b=ZXD53gRxoOzZACvUXZn0re5gomYv4pr9UjSskmHIHJhUdkgdG5xiTuwqArDMdzd2id
 HzZGBrSUyOPnZWlkbZaZqt5/YAQw/frCpsTWw44BXuQR0Nn+8X2TIJo31Mexzv64YcdQ
 yYDZgHoAzR6ZF8pLFGLBIwquHIIdAddCLEkAWGshv/EHKwgechyba2/P9qOT2/7JsLA8
 yc7PjYdWdIyzC1NAMr7Y78wD127XTTr3M7Dv03XKeX/5QJox9jtjYbc7GMvIElMj5NnE
 rRzMC1gAzf40deQrsSheAWIJZjOfzPJU8a0FX6pYdbKoC2yvXn0vkvzNTROXvRTPTF5x
 7TqQ==
X-Gm-Message-State: APjAAAXiAypV6+cqnb3rTFESusYJA9TOYOmSsvwHNR/w0+MBvLhWWcjs
 yeGCP7Mq+G1g9A14TBtwnfJOFg==
X-Google-Smtp-Source: APXvYqwOROtwg8ZpOG1fo2gk0W+2Y4A+QNx4Yrvyeo3f6izuFJXQ4Xs25CzIa4xAOjzg1uSQfJHE/A==
X-Received: by 2002:a1c:5441:: with SMTP id p1mr6420025wmi.161.1581707690024; 
 Fri, 14 Feb 2020 11:14:50 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id x21sm7922966wmi.30.2020.02.14.11.14.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Feb 2020 11:14:49 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Jianxin Pan <jianxin.pan@amlogic.com>, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v6 0/4] arm64: meson: add support for A1 Power Domains
In-Reply-To: <1579087831-94965-1-git-send-email-jianxin.pan@amlogic.com>
References: <1579087831-94965-1-git-send-email-jianxin.pan@amlogic.com>
Date: Fri, 14 Feb 2020 11:14:46 -0800
Message-ID: <7hd0ahasm1.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_111452_623770_46EC9127 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 linux-pm@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jianxin Pan <jianxin.pan@amlogic.com> writes:

> This patchset introduces a "Secure Power Doamin Controller". In A1/C1, power
> controller registers such as PWRCTRL_FOCRSTN, PWRCTRL_PWR_OFF, PWRCTRL_MEM_PD
> and PWRCTRL_ISO_EN, are in the secure domain, and should be accessed from ATF
> by smc.

Series queued for v5.7 with Rob's ack on the DT bindings.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
