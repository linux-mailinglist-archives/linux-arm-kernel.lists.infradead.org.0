Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3078AD4B40
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 01:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDznnpEKso8ToMY45Ns89HUlWjuwVBYqw5KtXhYltPU=; b=g5WTPEQgH5p5Vw
	wpO96Ulys5pK37VJ9cbyNah7DmiY2q/pibZR3EylsP5+rNOmHTlw6IJL0eoPiJei6h6b0XAHEHggd
	w67K4wk+yJo8aKwiDyt/J5mT7R93ALh3ni9b5r11f30N9M1M35qzUgtMhZqE/1/e04zck9+yFM1At
	ByjtqCt+blp9WfN6PKxvp1ZBtohLjTkwjmKRuH1vGnXNNdRf/Z9ynZtW8qc3HwU+yhx9NbIiJBU4J
	dTuWOShPcYPmkMi0InTZ5uBqYHKOv1vuLQ/I7Amm/pqMYteGIBURsnlGQFTA+CJZ/dJxL/FXg7BM+
	7uyqgwzf96cPsyFuzlww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ4lU-0004lI-9W; Fri, 11 Oct 2019 23:56:08 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ4lL-0004kw-O4
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 23:56:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id y5so6983434pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 16:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=B53cihCDlQEMDEXWkPSpWvvJvFe4J1DmTtw67eP/AR8=;
 b=focYvhDusq7k7Sglq+SIQ8pVkuU3dKBEqSJ35alrt50LvSHfrQWxNay7wgpupYLQSG
 6uMdheHpg/2DhAWDIuxvXJrcFjL9nUCd4pKzlZsiZvmX9JpRvn0SSA83m9DC5QNkJGaN
 04lt3hs9g6a/yr/VWcV+/5Z5hpkxBHrSsEzk0uvDU7SY8oIXGbSnX8+B6PVpLiLbsgrY
 zgf/0+fhrHM9kp14pAEz5SG59oEj85K0WxS/wqYKcHoJqNBCVFUMyO+u2fGQHK0Mjwvd
 i29oRue0YJI2wFfoJcUg4IRt9fqMeHklgvR/KLHGzXw8NnUbf7qro7qdHXTdQXX9ynJw
 xE2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=B53cihCDlQEMDEXWkPSpWvvJvFe4J1DmTtw67eP/AR8=;
 b=Tmni1+BiQzqx2W3FOlKXDU4hCG6a2qzydQP2DUvKnTa+sv72JwDhUAz+OJ2WrXCQrL
 7hfHnGycMwmhhvbXDgd1Sxk4pX8VQs8qT2khHgZVlBJNxcM5zi1QyslSwxZMrJcL5zjj
 PsIdKf95x0eK5QylI5uzuXdJKTBioic93KHiahmpU8tgYyd8YGOpIjD5wWYmbsqkGuHr
 +nhzFqJYukd/qVARb5d16Nzbtqpw8Ap9q2dBbltVgr2eHpUXNVxAr0viY4dkChpKlb9j
 DR1ei100+ftuH4OCcDnDhOWYEZRDmeK0beCx4wa254kiBv55ofCJS+G9FAxs+s1Fcx77
 hFEg==
X-Gm-Message-State: APjAAAWl2+wrV1KrOapIhMPsTxJLOdWkeMwLvIE3XWvu2iHVpcLUepxV
 kCWf8sNXbnUziPk+x6W2iUI=
X-Google-Smtp-Source: APXvYqykbanmhecTAUKKoCbXPpv7i5TVrqw+8GQSS1J+dImn1y1yvpKb9BgeUI0Fa24oEauLCUbPHw==
X-Received: by 2002:a62:d402:: with SMTP id a2mr19167165pfh.115.1570838158481; 
 Fri, 11 Oct 2019 16:55:58 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id g12sm16155270pfb.97.2019.10.11.16.55.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 11 Oct 2019 16:55:58 -0700 (PDT)
Date: Fri, 11 Oct 2019 16:55:25 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 0/2] iommu/arm-smmu: Add an optional "input-address-size"
 property
Message-ID: <20191011235524.GA20683@Asurada-Nvidia.nvidia.com>
References: <20191011034609.13319-1-nicoleotsuka@gmail.com>
 <e99e07c2-88c6-e4d8-af80-c46d36bc6cd0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e99e07c2-88c6-e4d8-af80-c46d36bc6cd0@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_165559_809737_86B336DF 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, joro@8bytes.org,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 10:16:28AM +0100, Robin Murphy wrote:
> On 2019-10-11 4:46 am, Nicolin Chen wrote:
> > This series of patches add an optional DT property to allow an SoC to
> > specify how many bits being physically connected to its SMMU instance,
> > depending on the SoC design.
> 
> This has come up before, and it doesn't work in general because a single
> SMMU instance can have many master interfaces, with potentially different
> sizes of address bus wired up to each. It's also a conceptually-wrong
> approach anyway, since this isn't a property of the SMMU; it's a property of
> the interconnect(s) upstream of the SMMU.
> 
> IIRC you were working on Tegra - if so, Thierry already has a plan, see this
> thread:
> https://lore.kernel.org/linux-arm-kernel/20190930133510.GA1904140@ulmo/

Thanks for the reply and link!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
