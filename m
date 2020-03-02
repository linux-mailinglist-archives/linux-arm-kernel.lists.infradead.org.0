Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0351764EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 21:27:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5GwXXJ0RP+dWSc1ejS/EZl3oHcT0y9dMzyenh8OZ3Y=; b=aIk5qZkBSvCt0f
	nHdjJIcqRMWxMyLWA3hekJk8WAuN/WmzhLZCxfYkK4CaKcOI5seGjnNLWz1TucydXtJIFS70Dgza/
	fkBD+OlbzS9cDFZkz61fh4neYL+UBheYyRzMTFLM0Q2kMPwc8xzVHUWCsdOBfT9BahVeB23f+ekCT
	P+4vom6mamvScczFYdH2YfBiQ3BeM2G/ydLlZNKx+CpOllIE2NhbvsEAWijz+5zll5U9SebnwD6zd
	ZnVnbiCj4pGHi/906ofT3aOfLfN/8o4FKLi75hD5XGkCvPO+FHikOgw5eS3+qAJ8jV/XEbTuXccYT
	LIl4UFkVbvkEiL6u5xCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8rfB-0007mr-L3; Mon, 02 Mar 2020 20:27:41 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8rf2-0007mS-TC
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 20:27:34 +0000
Received: by mail-oi1-f194.google.com with SMTP id t24so612329oij.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 12:27:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=i7DD9w14+LwnZLIWH8LhqR7TklrWwNpUJ5QRm1PyIXo=;
 b=siQ5I2BClDk2KJ/OpJrrpJyjWIPVKNr6koBQCV/3j7fMs+TPrESOug1xMK5HdNdOaJ
 nnII8i5OpDO8Uqp2pl2aYVazRdnShDRgWFc7v4V0LUc8REWvYvS9miNeBiOMtNVbZB9E
 L4x7Vmibw+nsxKZllyCXPpPLhEkV6J2dEETgaokbzp28LDfs2vYSZ+XCq3ZvcHHgYGs7
 DltMNfhyVuhlZRBX6F1Gf1QYV9NUg8a2uDapPQFdlPU9+VSXrs/M7/kxu86Nsm/32ddM
 uE3duBm3xQJ5/SJMysE68Y1V9hmR6CbX7zhrEO1Eycw+UC9goFmGouP9t7tRzWROc8jq
 T+uQ==
X-Gm-Message-State: ANhLgQ3oO0QSIuz34IDiM1IzicrJeOtufII3nPKRfwzZKELEvS+GP6HI
 +kFXt+eKhwLGRrouk1+hYg==
X-Google-Smtp-Source: ADFU+vsqCz13bJotnNjjms8BCtRlG9YYlJNjx0G1FNsLpe6L4nnArjwUDESqMiSb/ZvXyQ4bpPV1Rw==
X-Received: by 2002:a54:4816:: with SMTP id j22mr125301oij.179.1583180851977; 
 Mon, 02 Mar 2020 12:27:31 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e21sm6201143otr.57.2020.03.02.12.27.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 12:27:31 -0800 (PST)
Received: (nullmailer pid 6436 invoked by uid 1000);
 Mon, 02 Mar 2020 20:27:30 -0000
Date: Mon, 2 Mar 2020 14:27:30 -0600
From: Rob Herring <robh@kernel.org>
To: Ben Levinsky <ben.levinsky@xilinx.com>
Subject: Re: [PATCH 4/5] dt-bindings: remoteproc: Add documentation for
 ZynqMP R5 rproc bindings
Message-ID: <20200302202730.GA4561@bogus>
References: <1582566751-13118-1-git-send-email-ben.levinsky@xilinx.com>
 <1582566751-13118-5-git-send-email-ben.levinsky@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582566751-13118-5-git-send-email-ben.levinsky@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_122732_946113_534474CF 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: ohad@wizery.com, mark.rutland@arm.com, rajan.vaja@xilinx.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, michal.simek@xilinx.com,
 bjorn.andersson@linaro.org, jollys@xilinx.com, Jason Wu <j.wu@xilinx.com>,
 Wendy Liang <jliang@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 09:52:30AM -0800, Ben Levinsky wrote:
> From: Jason Wu <j.wu@xilinx.com>
> 
> Add binding for ZynqMP R5 OpenAMP.
> 
> Represent the RPU domain resources in one device node. Each RPU
> processor is a subnode of the top RPU domain node.
> 
> Signed-off-by: Jason Wu <j.wu@xilinx.com>
> Signed-off-by: Wendy Liang <jliang@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>  .../remoteproc/xilinx,zynqmp-r5-remoteproc.txt     | 135 +++++++++++++++++++++
>  1 file changed, 135 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.txt

DT bindings have moved to DT schema format. See 
Documentation/devicetree/writing-schema.rst.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
