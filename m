Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66403A71CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 19:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=faQ+AbMiSglFvqPPWGTMLuiCAz7AYn08m3/YI5bUFTk=; b=drwmmIxrS/CGko
	1HHkr/ifbYWzQ5eNzIaDtq7wk3eGYCwjfQGSQPPCFYca0jiijFxJeQMuRnb11BR7NkvkbnbrUoXtR
	h6kTMcRCkjtxq4SgyFAcInirjgKb+FoT35LwYvjizuXscC79kdP6zULqRnhV3jQqrHWhCwA1t6bjj
	B+V25GHN3BfR7tb3ZLCIFdkF+nkwtiibcBV+JQkJu8KyklGMO+1vFL3r7JeeiERH2b4xaBVmjDMYs
	nfQA5035Jbs3toUOMU8yEOeVvZygwe1sBGwc5RsMzmFNWgH9k21FNgAUl31PqdOUGP4njujmncMRB
	/Pi5rk2QSNEp2a5VRBvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ClG-0003Wm-Jn; Tue, 03 Sep 2019 17:38:34 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Cky-0003VG-6o; Tue, 03 Sep 2019 17:38:17 +0000
Received: by mail-wr1-f65.google.com with SMTP id j16so18400454wrr.8;
 Tue, 03 Sep 2019 10:38:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BKVEXZU6W+dO4/h+hhmxBNGUoZMyM7LM4xnC1FiFh60=;
 b=NESLi/vfI4MA7oCeWc/u8aKlXCyPjZP9LNEVTQsXn+pD2NLzPOKD4eQOkjS8uOy0TW
 RpLsbYPLPiZr7OHSg+sm44BsGNjhJFOhgXy1FnIns4BCf1pZYQSW0XUFsAkPwsjmWbw3
 ovJF+claj7y9uGd/zRX8nQaezXFmb1JqThO1JeB4FQ6r8IgvG6eyFTQjt6zF4RN9hgPD
 1bvIWiqbrd/akKmRtTi+GVGzfVaV7FhxZhRdOWymqGjmLHwvxsVl5ReyfGYoSdlMaSQB
 j4V7j6s4FHGr+UhvZGesInOQzYyGPUUeAHNCf00fv3F78QnyXOxSrklM9he2ixJPo2Xl
 3jQg==
X-Gm-Message-State: APjAAAVhYJby4nx2gzcbCiPUvJEXEpEXnojhu0eqRcIla8/346p+hpma
 vrr3+R0eEYYYoZcfInflNg==
X-Google-Smtp-Source: APXvYqzRQYJLzntZeTliorX2sDTxhd2HeDwz/MkYnaY3eYsSmuW3XzY+VKFpZ82MlkNM+XLjzG8B7g==
X-Received: by 2002:a5d:4402:: with SMTP id z2mr11533990wrq.183.1567532294879; 
 Tue, 03 Sep 2019 10:38:14 -0700 (PDT)
Received: from localhost ([176.12.107.132])
 by smtp.gmail.com with ESMTPSA id t22sm326468wmi.11.2019.09.03.10.38.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 10:38:14 -0700 (PDT)
Date: Tue, 3 Sep 2019 18:38:12 +0100
From: Rob Herring <robh@kernel.org>
To: Jianxin Pan <jianxin.pan@amlogic.com>
Subject: Re: [PATCH 2/4] dt-bindings: arm: amlogic: add A1 bindings
Message-ID: <20190903173812.GA30084@bogus>
References: <1567493475-75451-1-git-send-email-jianxin.pan@amlogic.com>
 <1567493475-75451-3-git-send-email-jianxin.pan@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567493475-75451-3-git-send-email-jianxin.pan@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_103816_250486_99D88E11 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Qiufang Dai <qiufang.dai@amlogic.com>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Tao Zeng <tao.zeng@amlogic.com>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Sep 2019 02:51:13 -0400, Jianxin Pan wrote:
> Add bindings for the new Amlogic A1 SoC family.
> 
> A1 is an application processor designed for smart audio and IoT applications,
> with dual core Cortex-A35.
> 
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
