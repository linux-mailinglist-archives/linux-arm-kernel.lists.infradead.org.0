Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C136BE8F6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 19:40:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vzr5RhrJcH192FdCo5L2D3TCkzAH3va8GQO6L0ldDJ8=; b=OaqXGfCfidrpwp
	HePQqsure/duFNPUOyPW8zbHv5pA7aARvP6l2BYbGzpA+IwxVzyPnYuyns7qBYM3h+qhh4CLZqwVG
	0aPnUgSXE0DL8uFUwLCgySmSZxi3v4RpSWeZ8H8WI5W7CTVCKQGPHvbCPEB/9ns5l0lAoIxjTjhFA
	AnV1QYBb2BvNo4RqkNOmOqCl4iyJI+gJAy2qT7GWUNUjpac7S+YhG15rbJlyfjtvIrTX0lw8k9CEP
	Pwgt+j1Rlh76JT7T4aW9XAp25g433Wx0mDqP7XSj8mrUPUcSkVFd2rD1PlYZX1ZcM8m8y7HqWMMwn
	FeH8eBGW2D3UaRH/2Ilg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPWPv-0003yh-N7; Tue, 29 Oct 2019 18:40:31 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPWPl-0003wp-LX
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 18:40:22 +0000
Received: by mail-ot1-f65.google.com with SMTP id 89so10633330oth.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 11:40:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iDxdZruyiKYu6zF9b1JiWGiLIkNbAfqYufuqttmPvyM=;
 b=GoTS0+fhxCH3ISVEBGV8gtAYBXcnUTSRGgnlX5Rd5rQpTY8kcZA3vztG/SWVDi5cYU
 X7QdOgOqJgfaqc1v3DeIvYU6q/3AxXj1JC7yTcMaGnc+IFb9HtSL9z9hSxISonyOwPMF
 aP5zlNn/MAPWnmiDPRWPamuofG4lcKiq/cC6/NTQVzgj1K2zBOLdqOoAe3XqVVVFjJHM
 Q3Nu8nbWqQAEgZNMJXTtOHgxCeoT03vUF+T21QO6aFdJBs3XgUCRIbRxd0EK8JyD0Fka
 RQ7X4O+fAdvLQNXV+VlaCoiB+TC4uP9MW3zVqc+3RlQVJl4qoXGnSHMPvrJ00BGfbOUh
 49ug==
X-Gm-Message-State: APjAAAXu5GaP/AMU4SDHpnMLbXcH8mp4oJCNkZ346HcnknqrHZHM2Aat
 V031SdnWM68391zqUwN0Rg==
X-Google-Smtp-Source: APXvYqxGDWSxCV3m1MjSffGqN3eqpsL9XchgtHMl706xJRcvchuAFMgZoqmBkf0ja7eF7gUpCpJdCQ==
X-Received: by 2002:a9d:ef0:: with SMTP id 103mr18967111otj.2.1572374416544;
 Tue, 29 Oct 2019 11:40:16 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z1sm3178864oih.14.2019.10.29.11.40.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 11:40:15 -0700 (PDT)
Date: Tue, 29 Oct 2019 13:40:14 -0500
From: Rob Herring <robh@kernel.org>
To: Manish Narani <manish.narani@xilinx.com>
Subject: Re: [PATCH v4 2/8] dt-bindings: mmc: arasan: Update Documentation
 for the input clock
Message-ID: <20191029184014.GA837@bogus>
References: <1572345042-101207-1-git-send-email-manish.narani@xilinx.com>
 <1572345042-101207-2-git-send-email-manish.narani@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572345042-101207-2-git-send-email-manish.narani@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_114021_704545_44860CDB 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com, linux-mmc@vger.kernel.org,
 adrian.hunter@intel.com, michal.simek@xilinx.com, robh+dt@kernel.org,
 manish.narani@xilinx.com, linux-arm-kernel@lists.infradead.org,
 jolly.shah@xilinx.com, linux-kernel@vger.kernel.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 29 Oct 2019 16:00:36 +0530, Manish Narani wrote:
> Add documentation for an optional input clock which is essentially used
> in sampling the input data coming from the card.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
