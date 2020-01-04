Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0A313047F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 22:08:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Dod//Wl2CnTCJc/iZck0J6RCrgY0wp2U+PFTtK6DGs=; b=KrYiW1HbHK1qIF
	R7yAJtgr6R4+CyGjCdGGk8ch6oGIfftxkftRySIrt4nqeoy0T8hw8l6IuMw5zdjNAZs7HkWuqBfv5
	zbwqKULg1N44PGM3h3dfgHhQlG4RgfuUYL9EAdh6uW4Gnecqp6xgMXjNMv/jKvv/CMQxaS3c3e3gH
	vwzcvHHwj0Nz1ZTHdu5DKO9Fa0lV6hEVwF+c2OFeoDK20eOyoCBO/zBPGMT0EuYe0xxLB0KILcjlC
	J/xXtxHBMOdzgk2WEathRGxR4e/G1VOsDkLRQO594xeoZTzHA0HZVrv6nVUr0/V3rNf2sdAcvSLfn
	9ekYt99hFP+D/VOeQg4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inqeK-0004ri-24; Sat, 04 Jan 2020 21:07:56 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inqeD-0004qW-T7
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 21:07:51 +0000
Received: by mail-io1-f67.google.com with SMTP id b10so44712631iof.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Jan 2020 13:07:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LPOl0x7Aub5aLxVDzb4tsAOVCc/ocGDdfg2ZVh/x324=;
 b=TdfzkYDJ6Bl4maDVJEhOcXhLMQFXd3/t5DH2ZqBc3RUAQOEXIIGdHvYCHIGIIFQ6v1
 ZU8WXeGwGXLejAqx/18PxLix3g8feVoc849jZtuqw304x9I5rj+ymvbjK6YOcvuQTdAR
 cXHMimwB4M64e3Nldn1SzIiZU4kToxB7fbrbePlTQfxJit17LihUA6YKCLfuDv5SGE9K
 PyhOTNqaYE5VN0l3XQL+Hk+r86FGJzRvhnH8yHXZHYSzB5GA85gUOk1ci92M4IPI5gD8
 nf7qLK34FZRrBUSTuvKqvEhOlYErXbQ3yRDdycevnMsFluyBQzn9ZAgVx2CTnB2hW63c
 jG9g==
X-Gm-Message-State: APjAAAWDQwNoY+Xv8vLnArP1SnJ6E+Qyo2rgN2RP8gAAT7BbcBhyvD9a
 U60h6pCLvT3n1C8Cs7V2DLebmWI=
X-Google-Smtp-Source: APXvYqwVbgBQiDJ0KtQZ2SqURclCKYJkNP47Y/0fnN57BXVHKmjwvGqXQPmxm+sIzkEzONsVyFeIJQ==
X-Received: by 2002:a02:b14c:: with SMTP id s12mr73979513jah.67.1578172066601; 
 Sat, 04 Jan 2020 13:07:46 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id d7sm15605459ioo.68.2020.01.04.13.07.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 13:07:45 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219a3
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Sat, 04 Jan 2020 14:07:43 -0700
Date: Sat, 4 Jan 2020 14:07:43 -0700
From: Rob Herring <robh@kernel.org>
To: James Tai <james.tai@realtek.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: realtek: Document RTD1319 and
 Realtek PymParticle EVB
Message-ID: <20200104210743.GA12979@bogus>
References: <20191228150553.6210-1-james.tai@realtek.com>
 <20191228150553.6210-2-james.tai@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191228150553.6210-2-james.tai@realtek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_130749_940745_887D182C 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 28, 2019 at 11:05:52PM +0800, James Tai wrote:
> Define compatible strings for Realtek RTD1319 SoC and Realtek PymParticle
> EVB.
> 
> Signed-off-by: James Tai <james.tai@realtek.com>
> ---
>  Documentation/devicetree/bindings/arm/realtek.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
