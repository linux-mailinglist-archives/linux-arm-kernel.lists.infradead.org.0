Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE00418BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 01:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=443i7kJo9v9V4t306rQiAErGuxJcYB+QnM7OynSLQEk=; b=Nrk92M8wBHWsI+
	+nVDaFdC4Xr5mwXvmpGaJAquRRKmC2nzDH0skpHx22YhPRGdeecWoohezN1Tt59KPgiVEvwgrt+7E
	PJctZ8nCoHB+dFmo3a5SJRxNHSfljomeXOd4nR3MCduL2NCA4Z2cmBYkF1f95vCmk6TL8oEDsUVbE
	9pfwi3kppaPydwReGLXs+g87ZtDuwQ0AQiiT750xhY2MIdnVKUZ3A1J2L9f8TG/RFFDDEOYJQ0GFW
	jigeFZLrcpKV8tFCPZFf9Z1R39+L8xkvhMHH+sK+875nHnmfM3XI9YArL4Pi/vcPqxH+oCmKZIL59
	KbWOqH5wYbSxeXgc2z4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haq1e-0005U9-2q; Tue, 11 Jun 2019 23:17:58 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haq1X-0005Tq-7p
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 23:17:52 +0000
Received: by mail-io1-f66.google.com with SMTP id e5so11400613iok.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 16:17:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PGXM9n1A3MHJoOWtSrVLBZpVy6n3fT03mPYC+u2yzcs=;
 b=A9R38qud9kcvpwKcmu8iOgkMMhx8TYYFQl1/tjGgvsqdf9SscjWFGSjdMPfiscApX1
 W2jFt6VStkgBwJ1I7d+XbJl89VeSoomlTSbLkUzBwajV93ze1CKc2GGwUcVB36cRha8x
 mYtA58bVGK6os76Zyh5KHoLwWxzCWHaQzRdnf47dd/tqoplDrYplPYOU5n1KyOwpr/10
 2PsNZVCjN+sPi89rzsSwONABSqzs30AIBaGsB/2EUP2y+E3pA7RktGvsKo5ZCIZyKPKJ
 UsA6A6V+B5+dhlU8pc2/dwMQBid6bshQ6tgFoKQ3Ar4cO6JN0VZH2p0atHM/T23E4s9U
 +4Gw==
X-Gm-Message-State: APjAAAURwYG0cxAlaDPkRMsXsWqAAvgN88gSPZa9H+liV4enfRWKa9UG
 DgHD7UNdJq+SMCRiZeFbJQ==
X-Google-Smtp-Source: APXvYqzgSJlYNXRQ5PeO1q5JXCwxtXBbVtD9W0sKPAIdQYJMHeYR2uSP2GJJzZIJpd/7UFmDO9yxvg==
X-Received: by 2002:a5e:c24b:: with SMTP id w11mr28109856iop.111.1560295070269; 
 Tue, 11 Jun 2019 16:17:50 -0700 (PDT)
Received: from localhost (ip-174-149-252-64.englco.spcsdns.net.
 [174.149.252.64])
 by smtp.gmail.com with ESMTPSA id d3sm1917362itg.9.2019.06.11.16.17.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 16:17:49 -0700 (PDT)
Date: Tue, 11 Jun 2019 17:17:45 -0600
From: Rob Herring <robh@kernel.org>
To: Dragan Cvetic <dragan.cvetic@xilinx.com>
Subject: Re: [PATCH V7 01/11] dt-bindings: xilinx-sdfec: Add SDFEC binding
Message-ID: <20190611231745.GA26265@bogus>
References: <1560274185-264438-1-git-send-email-dragan.cvetic@xilinx.com>
 <1560274185-264438-2-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560274185-264438-2-git-send-email-dragan.cvetic@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_161751_280198_9B13C29A 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, Dragan Cvetic <dragan.cvetic@xilinx.com>,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Jun 2019 18:29:35 +0100, Dragan Cvetic wrote:
> Add the Soft Decision Forward Error Correction (SDFEC) Engine
> bindings which is available for the Zynq UltraScale+ RFSoC
> FPGA's.
> 
> Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
> ---
>  .../devicetree/bindings/misc/xlnx,sd-fec.txt       | 58 ++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/misc/xlnx,sd-fec.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
