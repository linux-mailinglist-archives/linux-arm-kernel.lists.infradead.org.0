Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C30170A92
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:37:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kS/ecChESklr+pQzGKLy1FivrUFe3DitXommn7bJQxc=; b=d30dq9BzFCHbIT
	CVxAh54UbsTy9KUEkmGszAQjJTotRXls+kSGyeSbaNpbqgTwuTvBqGFrlpNkD+xWWOQC8VdU/gQZs
	nEQabiUXLSofFgs04w11Bc5oPU/aaxzCMRZYgqtrpWaLH1nMKIRz3vmW2tL12dRCB5zLUku/3HwDQ
	oO0uPP+JVaMSr25IBucRDRQVGg1S21gtMbwX2xBTmGirs2I/OF/g55Ygd3zbohS5ZsPJ0tUkd5Y7d
	EubQX7H/6qrzjmnZHs2UIQQ2MV/wfAQtzf/rlAcyknVILSIFMn0Yg4+oOFQwyhqqsV6RHHDgPe17+
	2rkLGFMjkde3A1K5Faqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74Mx-0001Yp-4o; Wed, 26 Feb 2020 21:37:27 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74Mr-0001YT-5c
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:37:22 +0000
Received: by mail-ot1-f68.google.com with SMTP id 59so869155otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 13:37:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BUfZ3V0xBDGwOALHfUr9ZrS1JEBM9H8lpVzraU/a970=;
 b=cPYwEhkSi76WKPu2i8qXjVElfGx/LBSbuHj9UFx7fMFrEDn9ypXDq+PipnDuktcN0R
 KG8G8Lnyz13YRLtOs0RyjMONabFxuSP6JB8nic/9axVYjeugbtL4xIigqwryKwNyQ20r
 m3nvMM+gItC98VKhCTRl8aYd5vSVs3a7Ahb3uGpgzUQhd0xGeNe2m2i+hw5qHbPX2huA
 1dlRNL/ru68PNFLInCwWXcF3Zba5sLzfUQ5xXcTNECw9lupJy4cH8hpqkOmPlCA0SpdZ
 +qkqIa0tA+DIoXWeW16FMMeWNHgOk176AuV6GCUm51J/Xcp3ohdVhwh6dejsZ2w9EUVc
 XWHQ==
X-Gm-Message-State: APjAAAXJhiOfPx2sla3z/TNoT85/MZG7RoQfTaRpqHeGe4NuyIhrqnY3
 ebUl1D8HsLiDVplLCS95pg==
X-Google-Smtp-Source: APXvYqwVcJhepVheqsHg5PUb4PEPVIuEdNpHnqGYdfi/G+PyJBA9spLO6DGQPJWkCR7g20EWo5LDMQ==
X-Received: by 2002:a9d:5885:: with SMTP id x5mr704064otg.132.1582753039707;
 Wed, 26 Feb 2020 13:37:19 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k18sm1209704oiw.44.2020.02.26.13.37.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 13:37:19 -0800 (PST)
Received: (nullmailer pid 2770 invoked by uid 1000);
 Wed, 26 Feb 2020 21:37:18 -0000
Date: Wed, 26 Feb 2020 15:37:18 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v2 5/9] dt-bindings: serial: lpuart: add ls1028a
 compatibility
Message-ID: <20200226213718.GA2712@bogus>
References: <20200221174754.5295-1-michael@walle.cc>
 <20200221174754.5295-6-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221174754.5295-6-michael@walle.cc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_133721_211142_E424AD34 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Feb 2020 18:47:50 +0100, Michael Walle wrote:
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  .../devicetree/bindings/serial/fsl-lpuart.txt          | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
