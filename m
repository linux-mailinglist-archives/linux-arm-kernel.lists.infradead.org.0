Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AD8F99B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 20:28:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlJ+TT59Og++3p+lQbbVQOJpzdk58qBE6fu8VlQml8o=; b=tpEK4oEIItx5nh
	tmTYOcCU9CgmPcFObTCV8DcQYHPjKasTrOXdwZGUOJEz/V1m1TDiwl8IDSJpirDbKAuyW2wc/F+cB
	1j7z97KkruVBlweeLj7GXLvfCpBXT66zxfXQucPkMnWcpNxwscaQWbcUyua2LGg3eC5qNlZF5PXWJ
	dqsvcgNdfChPC5KhJx7T2aei8hUHh6IJ7Ud6sB3Ez/lyGDCWh/L6qFBSz/lQ6qTQd5anPAOta9QTH
	/rS7IAyh3L5LkM41s+hojU43/TRb1Te/MyWh2yq5v7ZLChlVwdcV1BAmFFfT7a7RMsEzTPhshWQN4
	cBfDVrOiKtF2fT4MumKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUbqA-0007RC-HQ; Tue, 12 Nov 2019 19:28:38 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUbq2-0007QZ-B6
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 19:28:33 +0000
Received: by mail-oi1-f195.google.com with SMTP id i185so15902241oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 11:28:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1f1t/vx7cjzieQA+2HB6mtVDWaZlhCcx6hNFD68YUMg=;
 b=BFSNkSMqMDdQpv4vluhWmXBEUJmyQluBXDeuNZ4kNgQXu2SI1AZu7DwOiYd/bwb3hN
 diVEifccimJ/jexLhe/y+JQPnUIjZeCTSOT31C8n/bHNorC3xkjZGXIEEpdQXo39DZbu
 VYAXWPzY4pFxSbpeBOwZQVMOI42OhlvnBxkIEx9U/zeEek0GhzoeGatHCG04aY01TDi4
 edlSsv5C3pb/0RT/mt5pQeUbC6aLE5SfQtn7pPC/NLZd5PkDzMx7SMM6vPRLhi2I9YfN
 mTdxTEaGzLKY4cezlS+3Na1pYoOaGS9BBkpk+EpYV2ZzchO2A3VwpESsalVoyG6TeB+x
 KUPw==
X-Gm-Message-State: APjAAAVtzWQFD32S35JeSvnzbEVBvuZcXNL0b0d1P90Iflt3BNFGsSRe
 /KXvuaJY43pMHeUEPBLBMQ==
X-Google-Smtp-Source: APXvYqzGgQOQC2/469EBUJJsFsEKSD9Q14S9vX3Bn2KAqFS+UEKvvAoHAngSDKJXbrXmpNbXhc15CQ==
X-Received: by 2002:a05:6808:8d3:: with SMTP id
 k19mr466822oij.171.1573586909412; 
 Tue, 12 Nov 2019 11:28:29 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t2sm5366972otm.75.2019.11.12.11.28.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 11:28:28 -0800 (PST)
Date: Tue, 12 Nov 2019 13:28:28 -0600
From: Rob Herring <robh@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V5 net-next 3/7] dt-bindings: net: bcmgenet: Add BCM2711
 support
Message-ID: <20191112192828.GA21918@bogus>
References: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
 <1573501766-21154-4-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573501766-21154-4-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_112832_160689_922FF73D 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Matthias Brugger <mbrugger@suse.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@kernel.org>, Doug Berger <opendmb@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 Nov 2019 20:49:22 +0100, Stefan Wahren wrote:
> 
> The BCM2711 has some modifications to the GENET v5. So add this SoC
> specific compatible.
> 
> Suggested-by: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  Documentation/devicetree/bindings/net/brcm,bcmgenet.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
