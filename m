Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706B6A57DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IkJBhp7j08Dy2m5KJkoBR0sWhNOhkB/i5kBXsT1GtkU=; b=k4sJVrQsGEnm+q6asnn1MpxVrn
	wBTzWF3YepUunte9bKXAljQXPzc7PQtS6GHgmLrhUOt9T6SZ9VHQI5YdUdzYF3z5OFDGZujwpuOHO
	tEIlVcxcX5u3bY9Ql4qKjGVvW0T+ivHb+HYEIYY54BG0otPGzYW8CbfzHXYeVWRrIgAXs2Vt/y5+4
	5doDFgyR2eDNR42jUkySGyCSNebxFX56Sc6+tHzl1so7FvfIq30bKTfS98LuyVkDY/29GaYrOFg8o
	YAQKkY3rX1r8mGHBP34ztuWfYYtgCVdwvZaCT/P1d8/ACAtshQ87y2FkhavqkW6P7lHs20GR6NPvq
	qZwTX1dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mZD-00034r-Ij; Mon, 02 Sep 2019 13:40:23 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mXl-0001EV-KO
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:38:54 +0000
Received: by mail-wm1-f65.google.com with SMTP id c10so2734454wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 06:38:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=MUHGsZO7Q+UL7B/0Bo+ObMbSvRnyd9TzsXp9a78oerg=;
 b=CyHZSc0kMBQxfHShj95PfiV6kT/3AhMAbR+Jfy7xJbOdPRmypCiqpvQ3Hk+ZiwLZDF
 HABjpWGnUgoPdOZmOwkgLAELVTPerRW9+K6Zt4IXM7oSZs8GmMoaD3z95l0gRc5aBBGr
 FndSArle5cztKWHe7OOdX1dF1U8Gd7hOoK25OhaJeAvHnNj85Pzwjno3KDTYGJ6qHQw4
 L2yTGeoSi5E8iZSBDSLUenAW7t0ozzkU30sKH23+ChOFAr/bGycBVtkZgy7kFzt60dGu
 aGovpqZTURjY1Lbkv70spbmZ0mgzCdgaDCxNQjQnUqq0aPe7dRHAb8G2fTltJ4Q+8z4c
 qiNg==
X-Gm-Message-State: APjAAAXl79gsXz4jSWqer3911EszI3FI7s6p1x+PT1c5ly1ruuRY7RFR
 Qe55VTR2ll8WvsE0uM8zTA==
X-Google-Smtp-Source: APXvYqyvLTbczPJL2Kgv5aZwJae8V+vC19nEZctvk8m+po+VCSqy5grfmLXTj04W+bRvfuCa0/8m2A==
X-Received: by 2002:a7b:c441:: with SMTP id l1mr94851wmi.170.1567431531911;
 Mon, 02 Sep 2019 06:38:51 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id j18sm12521185wrr.20.2019.09.02.06.38.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:38:51 -0700 (PDT)
Message-ID: <5d6d1b6b.1c69fb81.37811.4cd5@mx.google.com>
Date: Mon, 02 Sep 2019 14:38:50 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH V3 2/6] dt-bindings: PCI: tegra: Add PCIe slot supplies
 regulator entries
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <20190828172850.19871-3-vidyas@nvidia.com>
In-Reply-To: <20190828172850.19871-3-vidyas@nvidia.com>
To: Vidya Sagar <vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063853_715497_617E04D9 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, vidyas@nvidia.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, jonathanh@nvidia.com, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, digetx@gmail.com, kishon@ti.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 28 Aug 2019 22:58:46 +0530, Vidya Sagar wrote:
> Add optional bindings "vpcie3v3-supply" and "vpcie12v-supply" to describe
> regulators of a PCIe slot's supplies 3.3V and 12V provided the platform
> is designed to have regulator controlled slot supplies.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * None
> 
> V2:
> * None
> 
>  .../devicetree/bindings/pci/nvidia,tegra194-pcie.txt      | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
