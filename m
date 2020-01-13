Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31ABD139D89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 00:41:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwH5SieJps2mJzmxWSTOK88AUJxY4SQ/TnzC23TeEnM=; b=gp03MjzoHqlA8f
	GxXPtiiVuSo7opJGc8CCGp5le9AcqJkidpiBLVm6yrt2CVaDeNzlOara8JQB8lgLzbZcPFh1UobIt
	aIaBoWH+2s4vhAp8k/HLU8D0RoWU5Vy1i/4nZPUNpnPTnWwAyrXH0uA4JCBVtiD1NG1HuMdrUFNh1
	rIiKCKY7NZXXROf1OnZ+23OnWhPTUMuR8zKpKdW1EizXpAKyVtHIoiT+1qB3W3/BoFmCe8oQaUXMI
	ulzWjwEVMSNkSWNvjscuVz8MrBceYVZ3yn9ttxi4dMHlXFfk5uQ7aoI5mDXo/ckpWbRQOzcdf7KUN
	8EH0vt+pmKg8KwFRLgEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9Kv-00045l-Mf; Mon, 13 Jan 2020 23:41:33 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9Jn-0003FK-SG
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 23:40:25 +0000
Received: by mail-pf1-x441.google.com with SMTP id n9so5618106pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 15:40:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=sO+iqS5at4kQoqKYaj93x28+XPq7u/VZF7pgBa0PTKw=;
 b=Ox+WPUIgcZKuEnZWTkLLPQgzYp0JAP6+RHmNZarXHOR1VEGRUFuB3vTek415XOepq0
 T1NSsiZB7v7KbLRXYYYv/0yKmrgtGstw2OHUg4uo193MIY3mW8dAuo2BhttsmEdDXsGf
 hQY1jh58eJp6Zex+n1KUCz+YfneiZYP3+vOcHHdcShOZx9YPW6qyBfEKE4Q7I22oj8SX
 Ixg+YB3Zxv98M4zeXiWrXtWbgOXkobDXN5OsDDK11D1EdvzjpcfSb4HbnYYcx9lhXceA
 uZHFuRjkq6c5LEX6Vi3iY9gOP2qzhfbfu16G9H1LoHOT0rLJ6zfFU4XYyn5ed/BPFvX8
 aKEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=sO+iqS5at4kQoqKYaj93x28+XPq7u/VZF7pgBa0PTKw=;
 b=ghu038Q2SJZrBcus+xE1nRpeQd8emVbPMNVciuYm8grYNFGhejl4JLh3JWR8OMB97u
 wOG586sJNMVDQR9DSJWxp61NYbsvG0bS0UiMXcqCRTWquMpivC36F/CDOaYkBJ0ONF0O
 KrQKAAsiBhM9xw4d6v9+UOomrn2ha9iTeyOUWHA37NhbU127FTy/Il850gU4ctI1/kcP
 0Ro/Q/4W9PsMV88OtUr7spV3RJV/8gC/tKOe7ZqcjyZkwzom2AKIoMaVBs5Dgi9Dwoem
 bDsHTMEYKIoNW2QNSZGQaYMWrlTM0SLDHZzi+bkhgo5zQ9LVGR+7QCn4/iDn/XkfH/jE
 UW5Q==
X-Gm-Message-State: APjAAAW6qORd5iXLNY1ubfWzPZlWGe9K6CUtHMme6J5Sva5An0GCfMpJ
 byY4Np+9sgZI511TS+h41uv48w==
X-Google-Smtp-Source: APXvYqxOFnkt4NJld1GAc3enPtDOXFGVXS9iJaH6cGEgh6sJnOSmCeK3VGF0VCf5MdcABcrSc1YLIA==
X-Received: by 2002:a63:114a:: with SMTP id 10mr23486632pgr.250.1578958822095; 
 Mon, 13 Jan 2020 15:40:22 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id 144sm16256684pfc.124.2020.01.13.15.40.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Jan 2020 15:40:21 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Jianxin Pan <jianxin.pan@amlogic.com>, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v5 0/4] arm64: meson: add support for A1 Power Domains
In-Reply-To: <1573532930-39505-1-git-send-email-jianxin.pan@amlogic.com>
References: <1573532930-39505-1-git-send-email-jianxin.pan@amlogic.com>
Date: Mon, 13 Jan 2020 15:40:21 -0800
Message-ID: <7h7e1vdixm.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_154023_951218_D67FC015 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
>
> Changes since v4 at [3]:                                                         
>  - add SM_A1_ prefix for PWRC_SET/GET
>  - rename variable and update comments

Thanks for those updates

After the bindings issues are worked out, this is ready for merge.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
