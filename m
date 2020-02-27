Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E707172A67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 22:45:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1LrLl/hdqMBtaW1avDr0p2VC2npEI7QGEMyOTPsipg=; b=Hkljmcan1y6CGN
	firTk3koSi8ODoyUEVSQvsNUohMJr0ifjgMRjSI/sryG2BL2vc4T9XdRRZn4jXdj4vQ6WThOIl11I
	Vni4qRfa+ymEyDo2rB46RXA+jZnOHSWBloh0PPQIHgoF+SjLWLGhpF7tBe0cC+NSoMheVW8U1xTLD
	eDYwkl23Bz5SoVDGX/SD9YCbhEGpAEnz9GsDiNlZ7mkfkYRPr70cgC6o6hP3tgr92s+ChkG6MS0uT
	xhaGnpXum4OprO/7gixzEZzHiKRYVr6iE+o7T3BK+1Vu8q5AUBepI1H72TJbvwsK6XIFw71aJnCaY
	tUvdOZ15hzWv7l/iK/5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7QyP-0002xw-L5; Thu, 27 Feb 2020 21:45:37 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7QyA-0002vJ-BB
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 21:45:23 +0000
Received: by mail-ot1-f67.google.com with SMTP id z9so672152oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 13:45:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PrfKdt2Kd+9fAhpGESasTmBPrNBa2PAXaPKA8tfFiPA=;
 b=Pn9XY5dXHAfWfXsoxNOFdciDxUl4pcPzaG+pkHdbkkaOCYgVpw5JaTZM6wms0l87Mv
 e8PWNwHdpHqmKOY+GdXBDWahRAt9MSsBf/s/S7/j2OZhU0ryityV2jZ1Z5d91K6CLi26
 uSOwusGwFq+OzOL/qnbAwE2N+y8JItDi0zUKopO354xQTAj9xeBEnP9PF8hk916j5QCv
 QSWXnGaXfRkwJ7GgXZEIVQ3ivG7nKdQxmp3YuTIsJ/pYvOsX3qkwqyWBT/b1LLGhbVgq
 7uidSZGi4IJFDMAM0WLz5ALMUU7MNXbhGfBsqSi4TY2DvnpnXkGfVPuF0RGtQthHkB6z
 QoAQ==
X-Gm-Message-State: APjAAAVij9mGAHEIuPQ3mc5O2EN21SmnZFX0ud1qNt7TkjdJivBP2b0B
 /GoavKHA9WExbT2E4Dz1HA==
X-Google-Smtp-Source: APXvYqzDQOqstBQFtdFEAIEMTp1D4ag+GGoIFdtl3iXXISlKVIFUQ2rhO1wbfndZkvnyEkqYFeQIHw==
X-Received: by 2002:a05:6830:22ee:: with SMTP id
 t14mr782756otc.236.1582839921438; 
 Thu, 27 Feb 2020 13:45:21 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g8sm2372764otq.19.2020.02.27.13.45.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 13:45:21 -0800 (PST)
Received: (nullmailer pid 6707 invoked by uid 1000);
 Thu, 27 Feb 2020 21:45:20 -0000
Date: Thu, 27 Feb 2020 15:45:20 -0600
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2 04/13] arm: dts: calxeda: Group port-phys and
 sgpio-gpio items
Message-ID: <20200227214520.GD26010@bogus>
References: <20200227182210.89512-1-andre.przywara@arm.com>
 <20200227182210.89512-5-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227182210.89512-5-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_134522_418670_40A354BA 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 06:22:01PM +0000, Andre Przywara wrote:
> For proper bindings checks we need to properly group the port-phys and
> sgpio-gpio items, so that they match the expected number of items.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm/boot/dts/ecx-common.dtsi | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
