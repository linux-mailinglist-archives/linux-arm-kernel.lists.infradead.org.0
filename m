Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3081A7EEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zso1q1Z8D+ctgrAFFPg8ClnzC8Oc99oK6jwlU7O8TNc=; b=q9FgUwzyJhRAuH
	dLhX9hTjvb9XHjh6gDzK8ZBQDS+F9veMsTW5fty5MiIYHpr0KrfWaNoMqjsdIQfM5upjFrwgZd89m
	bU/lrO8wvh9YY3khBP/aIc7K3JBN0ANb/0oFAwOf4klYeRo5d8t7i1FwTpR4qtWRgyqn1oq8B75pm
	5EwqZBWi4Ir/mVuvl2vHbzAQiLITuBK8ch80elaGfQvYjZnRfmJDdFsRSl7ytI3PUbItABL5XWuJm
	nA4eCbi7IM96QkqKNZ2NNmuJki8ldklPVtxGVon81lDvtIAClo/U1z8WjSGhuG1oCTwJKxK/ynQZ+
	MevbYkZ3JgckslYoNMAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOM2T-0007KF-G7; Tue, 14 Apr 2020 13:55:45 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOM2H-0007J9-Ak; Tue, 14 Apr 2020 13:55:34 +0000
Received: by mail-oi1-f196.google.com with SMTP id j16so10449168oih.10;
 Tue, 14 Apr 2020 06:55:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FjapXsJJ1fyLNoa0nVkaYgxq1rkyUWv/mPY5Av8L+lI=;
 b=p8c0S17zk0RhbS2gC4Lv5JVrcg0QVOvYhJuLxwByi4lcrVzKJAURqVhMLGghISRY2g
 T88i28fz01MLaw6M1zoz6VLYWj9LE5bB0vHNHENbrFN/uan0F/cY5zbsndCiC7DH9eYs
 H85GC6ptwv5XDEXla6qkpVze9cJQGq/mv6Lt3aqxqjDTTpW5eMjBcC8zpR+xHSSA+ZlZ
 07M9MFQTdAh8xrhhQXMDPbIImobbnGwzPfUrxJKBhVAxzn+0cgpmQaxoMaLBEn88AL5R
 ggAtdwxqC/aa7lytKyF+q9AVX823CQJ3WrmsoN9yn3lFXpfbevwXBUhYwaWUiDp1/R8c
 6unw==
X-Gm-Message-State: AGi0PuYqOrO8Zbvp30nVjgWwNKufR8vOl4MwRGLFm6dVPWFjszAERYFG
 JjtsmQ2TUXOtRnLqEI3F/w==
X-Google-Smtp-Source: APiQypLcp/5uJ/D4DypcS679K7Ewi00Jt/u7fJHXM5Ahks0NWkXNW+M1+Flus8mNofz8AEHBNeHjiw==
X-Received: by 2002:aca:d705:: with SMTP id o5mr15988391oig.67.1586872531843; 
 Tue, 14 Apr 2020 06:55:31 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r205sm5589832oih.47.2020.04.14.06.55.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 06:55:31 -0700 (PDT)
Received: (nullmailer pid 29150 invoked by uid 1000);
 Tue, 14 Apr 2020 13:55:29 -0000
Date: Tue, 14 Apr 2020 08:55:29 -0500
From: Rob Herring <robh@kernel.org>
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Subject: Re: [PATCH 5/5] [5/5] dt-bindings: mmc: mediatek: Add document for
 mt6779
Message-ID: <20200414135529.GA28611@bogus>
References: <1586165281-11888-1-git-send-email-chun-hung.wu@mediatek.com>
 <1586165281-11888-6-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586165281-11888-6-git-send-email-chun-hung.wu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_065533_678775_C6F0B98F 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, wsd_upstream@mediatek.com,
 linux-mmc@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Al Cooper <alcooperx@gmail.com>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Florian Fainelli <f.fainelli@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Andy Gross <agross@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Chaotian Jing <chaotian.jing@mediatek.com>, kernel-team@android.com,
 Pan Bian <bianpan2016@163.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, Chun-Hung Wu <chun-hung.wu@mediatek.com>,
 mirq-linux@rere.qmqm.pl, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Stanley Chu <stanley.chu@mediatek.com>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 6 Apr 2020 17:28:01 +0800, Chun-Hung Wu wrote:
> Add compatible node for mt6779 mmc
> 
> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/mmc/mtk-sd.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
