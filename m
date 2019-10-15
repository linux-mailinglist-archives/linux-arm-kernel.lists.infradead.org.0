Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3C6D7F80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9ojKqD3RCDn8EfCtpiAMd3ISVHjEEBtxES5BCHyhmg=; b=D2mRdOU3pBW9eI
	2ANY3LJFUfn9yxbTHZV1tTAKOvZb52sXWa86ppUbfkh7OwUNeoC4Z2HjfjTIzczW8XMJa4p7QZ0/0
	2mlxQde7l0k65FNhKA9u3Oi1Pc3LtJzE1UE2ZGUhF9MG4vj70oNIKbFTMdM9p52TdbZqe+xfCzYNM
	9SCT7GjLeRT6Qt90QxMzVfQbKtDViFxtYGYSiglS+Vk26LtE9mUkb9ucKTmrZh9PzDYT2P7i8qgC2
	uEv27VAmFRG4WmdD0zrYtvAD+csZWOTDO6rLqxXpvIfg2fwDZ+p/UMDPdMpso6wy7Sb1jB5evnHVe
	1dffuyH7iyMRQnIG4Hdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKS4k-0003NK-9N; Tue, 15 Oct 2019 19:01:42 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKS48-00039V-Gh
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 19:01:07 +0000
Received: by mail-oi1-f195.google.com with SMTP id k25so17757017oiw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 12:01:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wDHyOUpqrv7nCNXxMncnfKZuhS0DDSRvQf7daN1HJps=;
 b=eIwejepnB097E5P18VcUqs881SvKkuGA7hcQ0FBV205qDJRvtky9yEMs4tgFpSWNkI
 JsQR/atr21P5V56nTAAQgcotXapaxnoBpJGOckLYedfIDOUx2XgPY4vSkjTBe0yo/KOk
 /OWG+K1uVzfcXlZWLYlHDDM4TM/yx9nApy+WltRs+reh/RcMxA4Vmm6AZHJcvK0JAdgh
 O/nLBG4NIvglTlB9tjlT0eM+HDoZWDopBICcpBDgWVITkI9skkGjWwZsHSFeggBpfQk8
 5WPZuJDsykCoxsSYZj6/m/a3626PM9Cu1IY8RO9xSyczFZyrB4F5HoDqjtDTghtnj1oU
 rxfw==
X-Gm-Message-State: APjAAAVs3hqMJ2ZoyXPVcD0ncgkyMVZmPmgZ82GWQq8fvfB3rNts8UFU
 UnDO8YnVXnDglc92GHPm3g==
X-Google-Smtp-Source: APXvYqzWSK8f7AUbAV3hUyGym4wGyacoh1czYoWtoJaS6CqSc2Sr8mD/Lh+uTddneZJ19P8nSkiI4Q==
X-Received: by 2002:aca:1c02:: with SMTP id c2mr41124oic.73.1571166063181;
 Tue, 15 Oct 2019 12:01:03 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 101sm7119645otd.18.2019.10.15.12.01.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 12:01:02 -0700 (PDT)
Date: Tue, 15 Oct 2019 14:01:01 -0500
From: Rob Herring <robh@kernel.org>
To: "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>
Subject: Re: [PATCH 2/2] dt-bindings: peci: aspeed: Add AST2600 compatible
Message-ID: <20191015190101.GA29195@bogus>
References: <20191002061200.29888-1-chiawei_wang@aspeedtech.com>
 <20191002061200.29888-3-chiawei_wang@aspeedtech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002061200.29888-3-chiawei_wang@aspeedtech.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_120104_703125_23189D3A 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 jae.hyun.yoo@linux.intel.com, ryan_chen@aspeedtech.com,
 linux-aspeed@lists.ozlabs.org, andrew@aj.id.au, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 jason.m.bills@linux.intel.com, chiawei_wang@aspeedtech.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2 Oct 2019 14:12:00 +0800, "Chia-Wei, Wang" wrote:
> Document the AST2600 PECI controller compatible string.
> 
> Signed-off-by: Chia-Wei, Wang <chiawei_wang@aspeedtech.com>
> ---
>  Documentation/devicetree/bindings/peci/peci-aspeed.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
