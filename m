Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0C4B56F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 22:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BM67MO/kPMP+mNxCnr4jl8BVFf+41CXFlu/SSvVecTs=; b=Mg0MqrLmHarAil
	/YfAhms47k82dgYz7iREce0/Oigl63pfUxvAb7Ax6S1XXOqoG67vx3OJKtOHpPmMpuBicbbgzOI4B
	SeWnmAOachNU0BMtwqNx/M7xTva+keDVlve9NpH1YLgr2K0EHnSikKtMmbuVrT3JPt/o0FabMudnw
	Y9BocUIx5LztyQ7AnLTshqja5OqzqMV/72FjQ5xjtPAR6wYrJQqfq8kky/cFFPVx87xrkdGnVBoRe
	eopPZaSmmCPZA1JBPGFF205/CjLsaGgGkt7I5uKjhpIWSBjw9Q5jtm5t0on53suK3+G7RL+AdsNNG
	LgflbMk4AWbIlqzkG/ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAK5G-0001b4-JI; Tue, 17 Sep 2019 20:28:22 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAK51-0001aY-E7; Tue, 17 Sep 2019 20:28:08 +0000
Received: by mail-ot1-f65.google.com with SMTP id c10so4270626otd.9;
 Tue, 17 Sep 2019 13:28:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OmuRgprkyi1Y3BeLYMvuW7iFWGhTnGC5Ky9VxrWaoyo=;
 b=W2kgTpmx7EcJAdJAiNgEJLyYJuXKKvLGZ4SKLG64WjDLJ0scoWF+p7XJwWlzyJv6lc
 ZBjiNQFDR6pmt/exV6RMCT0/S6Ji/Sh/JbLglizpA8BLQYvkxl5FKDhVGFZYZNfVKTYG
 onnbsFGjHgcLMBWng8yhw9SGYp+S7gToQx5yWbR1QWlksvWCPTIDsGMu0Z71jlA1QoVk
 5MqnaebdReTd4F3nG3TL1rhFUb4h7nHfAHMfVE4Qvbrwo6xP9Q9iDTTxeyedvkP+93AP
 /UUxAZwNINUAGS53Ol9nBsffPM14UiKlWhAZeSUZneLoRfctb7D6a4BWndc+oPvV+emc
 oM4Q==
X-Gm-Message-State: APjAAAXner3MGHkjzG1kkohqSSOEnUn4t6RXvLaABBiRWtIQeqlSRz/E
 3rZMpy6UWYSn2HHCp4fORg==
X-Google-Smtp-Source: APXvYqyDocPQdmogtqeo027e5xyEsYwS3WJPg0YHLQKJqNfJBn/Ya6ZQgcgCgmx8DGlTDSU3zwJlJw==
X-Received: by 2002:a9d:3647:: with SMTP id w65mr588936otb.70.1568752086445;
 Tue, 17 Sep 2019 13:28:06 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n13sm1000400otl.8.2019.09.17.13.28.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 13:28:05 -0700 (PDT)
Date: Tue, 17 Sep 2019 15:28:05 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v2 04/11] dt-bindings: phy-mtk-tphy: add a new reference
 clock
Message-ID: <20190917202805.GA13405@bogus>
References: <1567149298-29366-1-git-send-email-chunfeng.yun@mediatek.com>
 <1567149298-29366-4-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567149298-29366-4-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_132807_470048_CF5B60E0 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 30 Aug 2019 15:14:51 +0800, Chunfeng Yun wrote:
> Usually the digital and analog phys use the same reference clock,
> but on some platforms, they are separated, so add another optional
> clock to support it.
> In order to keep the clock names consistent with PHY IP's, use
> the da_ref for analog phy and ref clock for digital phy.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v2: fix typo of analog and needed
> ---
>  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
