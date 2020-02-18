Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEC3162CA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:23:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjDyM2KhriiB9+nrJXKeFOmbkkXlbc6joyqRfi29ugc=; b=ElYdm6E+EWVkqd
	9sFXsgIpFp+MdIV4zu7cxdUhfqdno18caHgYuXrqmKMafwmLyEBxNhYFVwpsIYppNPAPXdJpCl21L
	7qzAsq2vuJWUg8FGYQ3jDjy3y+04Cd34dhXuio67qHKhu1UsrGIdHYNkdHRMlvCcE1jInbjBsJMLn
	TQTdV9wQN8kWKXGLXwdHpKTkGjcsVIdyH65V+zjLFCQEZggf4QZf0OwMJSh4IuflP78rehAV2UQpO
	S69hGYVUooNMyVCj3ezUJptKdUIgASjikEA30oxS2lezyl+9hp77zPN265wsT0jd+hzkod2UDIn/G
	XEXMx1gZdQIT3dXLi8Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46aY-0000pS-IA; Tue, 18 Feb 2020 17:23:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46aO-0000p9-JS
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:23:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5306F20801;
 Tue, 18 Feb 2020 17:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582046584;
 bh=j2Iac1zey820mNpdh5yJdPFMBBkcx1p+/nwylqP9Bj4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pGRedyRNM0efhtBXW3mukIv+0Uyx6UFrCDbXNxScGGlS2kUHuf6Z9u5cvnGH2VWIy
 VkGS9156ykY8H/gDdmCTkV+MFWiVdh3DiGfyr7ajOhFrJqs4dkwqrQ6H6z1Yn7urSI
 cJWxWOtaqgY9/KrBPR/ucs/jZ3LiWrbmvtYMmeq8=
Date: Tue, 18 Feb 2020 17:22:56 +0000
From: Will Deacon <will@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [RFC PATCH 11/11] dt-bindings: Remove Calxeda platforms bindings
Message-ID: <20200218172255.GG1133@willie-the-truck>
References: <20200218171321.30990-1-robh@kernel.org>
 <20200218171321.30990-12-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218171321.30990-12-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_092304_663515_7F517FE7 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Langsdorf <mlangsdo@redhat.com>, kvm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-ide@vger.kernel.org,
 linux-clk@vger.kernel.org, soc@kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 Jon Loeliger <jdl@jdl.com>, linux-pm@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Tony Luck <tony.luck@intel.com>,
 Alexander Graf <graf@amazon.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, Matthias Brugger <mbrugger@suse.com>,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Cornelia Huck <cohuck@redhat.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Borislav Petkov <bp@alien8.de>, Robin Murphy <robin.murphy@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 11:13:21AM -0600, Rob Herring wrote:
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/arm/calxeda.yaml      | 22 ----------
>  .../devicetree/bindings/arm/calxeda/l2ecc.txt | 15 -------
>  .../devicetree/bindings/ata/sata_highbank.txt | 44 -------------------
>  .../devicetree/bindings/clock/calxeda.txt     | 17 -------
>  .../memory-controllers/calxeda-ddr-ctrlr.txt  | 16 -------
>  .../devicetree/bindings/net/calxeda-xgmac.txt | 18 --------
>  .../bindings/phy/calxeda-combophy.txt         | 17 -------

You can drop the "calxeda,smmu-secure-config-access" from the Arm SMMU
binding doc too (either here, or as part of the other patch).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
