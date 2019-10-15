Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57841D7F74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 20:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGDOyIG2AgHgZ8xFyeLqmVYD1kTmkdoi4w6/N7EBrKI=; b=W562PwNi8bM9KF
	fjh+og5HY8+1SOyQxwHEzMSDRLQ9TQ/IBjRMYtxiKRTqC+tQPZ6YLPF0gJak/sTYTFzUB/sZe7e7b
	8rr3oVvr3rWZHetdbXQx8tdLvRPrj/w7RaDIseuVB2+JginplgaYLohVQ/TfhporlI9UjPq9+MBCm
	G+9z6Tol+n1cuVlk/BXiZC0z28g+Idw21p/9+XV5z+kku6+qbdLWtxycQHmIhZsL1GRkGaZc9DsFB
	kumeAfSv7f3jBteSRV5jv2WlmvVrmYuXAJWtfr+oHMKTToWDUHMWIEZRzsQPecd4tESdDivra5EIf
	TWuh0ZkxJyCKwr+ZSubA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKS2f-00011g-IK; Tue, 15 Oct 2019 18:59:33 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKS2U-00010X-7X; Tue, 15 Oct 2019 18:59:23 +0000
Received: by mail-oi1-f194.google.com with SMTP id k20so17784407oih.3;
 Tue, 15 Oct 2019 11:59:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=71Wb7b/0yCm9bssMx4aB/LI8BIio7aNdnZ8+kJtjPq0=;
 b=NNIfSp0dqo7FGFdDIWmibbncmTEqgKdvA8DOocXIzA79rOcna9yXzNcwaxpm1OLXq0
 Ruzud7l4LVyPqtL4t3KlJdhwQitIk2g11B7fpqzfNMhe0gY978eMrS3eA3SbnRKwL6+4
 qoS5cCf1T/34D7FUZswtQRJxnHorPKYkl34opmPApVpLp0uKL9n42jLUX+Z+4U84o+uG
 M9hO7U3vtmPq/meSmXHZSHmP8jhAmSQVNw/BcWMe2URh9bsSzAsQ+saGnma0zoEEz3kQ
 ikcwBTwe5591a4KIVNPbeh2nkfsH9CeED7N63TSVT9+CgXRZ2AnfuVNMpkfGN4otdUNH
 M7cg==
X-Gm-Message-State: APjAAAWrRiqEvDTSA+kSryNV4w8L+jNqrC298w/Nytf0RZav+bcY7LfA
 JRCmuYG/W4KHmFr13D2aqw==
X-Google-Smtp-Source: APXvYqzT2LJQzrzNosAbkxBk/0GI7gvyDnwpb0aWZ6ydWCGS4zdvQsjb5mnvTW61pltsIBY83ceZxA==
X-Received: by 2002:aca:3242:: with SMTP id y63mr55005oiy.114.1571165960668;
 Tue, 15 Oct 2019 11:59:20 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d69sm6593697oig.32.2019.10.15.11.59.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 11:59:19 -0700 (PDT)
Date: Tue, 15 Oct 2019 13:59:19 -0500
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 2/7] dt-bindings: interrupt-controller: Add
 brcm,bcm7211-armctrl-ic binding
Message-ID: <20191015185919.GA26464@bogus>
References: <20191001224842.9382-1-f.fainelli@gmail.com>
 <20191001224842.9382-3-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001224842.9382-3-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_115922_278733_BB8FE2C1 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Scott Branden <sbranden@broadcom.com>,
 Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Ray Jui <rjui@broadcom.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  1 Oct 2019 15:48:37 -0700, Florian Fainelli wrote:
> BCM7211 features a second level interrupt controller similar in nature
> to BCM2836, with a few modifications to the register offsets, document
> that specific compatible string.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../interrupt-controller/brcm,bcm2835-armctrl-ic.txt        | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
