Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C9344DF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 22:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpUeSzGlEOzyspVE6RdY7Ob6x5D2MsvdZQBK6FJCBtw=; b=VATle9iX/TMuUv
	W3Wg8etI90euogbmw8Wxki3rSyA+hC3Bkp3EYZ/tSf2i+fR1Su2tMKZwaC2MrFFaC1QRvzSZyuUHf
	060HYz9j2uBBPTLbeaEazl+WOuhdBl4zFnkSsosJCJ16th1UzwrKGIHsWoE6LvL7nFglseGhRUnsf
	t0bS58jNoQCvNCn15I3IOGR8kzP/bzVkaHjyt2Jeduaekvi3qLBYAq5TSkMSliJBuSGO4BvFvyefH
	0uTk3UKFTBydIn3fdtsQcQJrq435oEfwDUAuR0R6WsTeG3PUsyUdPlmJRoK1xiRxhfhVL2d3vr+qu
	mQj9240Wh9OcfTBOm3Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbWoz-0004Er-Ae; Thu, 13 Jun 2019 20:59:45 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbWoq-0004E0-5u
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 20:59:37 +0000
Received: by mail-qk1-f194.google.com with SMTP id g18so329678qkl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 13:59:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8gS1dRlTY9NF+DtZtqCgP0hW6HfTe3z8OAdjlpLy23g=;
 b=lk7RgFgnA69EOjxdy1XgodaJHJwq0ih2Qyuw4zHhPOeqWUdcN5a9d9mNW+oHr3WNr9
 VcKZQ3maehpY7hJToq9eFKeKk2d35Tz1EdxiveVGATVL7VxHZonu9XIL/9WeXC0M7cAt
 sISwSg1A4+EAiCuZnXk0iCKciPKHeD4HoFSWVDQ8tlY0ox93NdbTHWgeQAav9RrRqrju
 IFi96S3mDJL4QL+bZcrDSI+2p6awyTcBd+iYuU+HV0sHPceYWxOIf5t1ztuNTSRZpv1l
 CCFRm3co5gqA1LVz++CUaVojd4xnA9KvUssfTPBrSjbe8yllurHqSWOZYa6LNc1NqhjM
 jVKw==
X-Gm-Message-State: APjAAAW4w4DQU7XcQVhQvXyFdJuy/OkIkxnfkEG5DCA6REEAxsz4VHwJ
 JKTvUjHS8KzWnkvChJF9FA==
X-Google-Smtp-Source: APXvYqwDgSwF2dSbUU9DX5FRctIU1tJHSsxmp68E6P2oHV84xkfNE37T6Ih+B8DDpnB0ICrYTBnkTA==
X-Received: by 2002:a37:a48e:: with SMTP id n136mr233325qke.223.1560459572884; 
 Thu, 13 Jun 2019 13:59:32 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id a11sm431020qkn.26.2019.06.13.13.59.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 13:59:31 -0700 (PDT)
Date: Thu, 13 Jun 2019 14:59:30 -0600
From: Rob Herring <robh@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: pci: layerscape-pci: add compatible
 strings "fsl,ls1028a-pcie"
Message-ID: <20190613205930.GA9003@bogus>
References: <20190515072747.39941-1-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515072747.39941-1-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_135936_225798_0366B450 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, roy.zang@nxp.com, lorenzo.pieralisi@arm.com,
 Xiaowei Bao <xiaowei.bao@nxp.com>, arnd@arndb.de, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, kstewart@linuxfoundation.org,
 linuxppc-dev@lists.ozlabs.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, minghuan.Lian@nxp.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, pombredanne@nexb.com,
 bhelgaas@google.com, leoyang.li@nxp.com, shawnguo@kernel.org,
 shawn.lin@rock-chips.com, mingkai.hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 May 2019 15:27:45 +0800, Xiaowei Bao wrote:
> Add the PCIe compatible string for LS1028A
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
>  .../devicetree/bindings/pci/layerscape-pci.txt     |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
