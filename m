Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF8C18FDE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 20:44:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWZLhfQGBECg6vf7GISaYClxnfzk4iXtgaacUE8n8Ik=; b=f99APAJ9KaB+h2
	GyT2Kc3lOBHkm85Hk7UUzxCxh0FAlcfxTh6mhU6RHmpkdMWxKamNrGoP7qf3rB1VGLjE89f8UgxqA
	XH8VJoBS3zDgWdBScfx+79H7fnt/jtie/z9dudBbPmLdL+ZhIPfEl7+UqWM6I5fmGtR0UHqD4wrkh
	cixlX3gG1+INrJUMBkq1z7lTBs11e0dXrWJkqVhfE2QMgTHlBzMP8t1Zuty+GOSyFrd5JHawmeksP
	D6oZVKctU+jYtSjjofJ9Sc/vXLB30tAQ0W1A8HwreAAO4wOUcRE5XaTdwA/ynGOveKmj6/t6e+OP9
	gub7z5U4JKc0IZ4yGFIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGSzb-0005XZ-DW; Mon, 23 Mar 2020 19:44:11 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGSzS-0005XE-9E
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 19:44:03 +0000
Received: by mail-il1-f196.google.com with SMTP id h3so14546997ils.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 12:44:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=z6kwnFs0niH7E9Kzv2VbHKH5UoBOgvaVsFLxKybIkRI=;
 b=gJM6nF7K+yNE4MLPPNGjKxjLzMDRp4zqNtCXglovieTphSfmJofyDfKR1fo5bmTU7w
 3gVOZO/amHHFx1gMg4pESXuRaGFjwwtNMrisQZnhPTCqeXSPbKWmJAfkstI6F35SmR22
 wpDkEdg7UwdOm5gUVrX84jl0RV9woQUKLw9QucNZS6xKCF3yWGiYB48kylz49Rxx5VgO
 k5Nd7fpxEzKIlo4JfhfMAMgdFHhntnvYnyTawA0ARvH8JlZ7yzlwTdvpuHqaoUYOlwql
 Kw9AjE2TKrhQxyhcuehe8SrMAVLIiAuUwC5raCeu3q0pzZWlso1l0vrPyHq47gd2sQv7
 LUyQ==
X-Gm-Message-State: ANhLgQ0BU1S0/+Eu4MOYa5VJIViUMYF+GSycPLYCTAAKAOzxsI0SLk4K
 EQvYyTo8HqgNnhkqFhAySw==
X-Google-Smtp-Source: ADFU+vut6tX/rjj5bh3lZRotPsHXc27nCWaaqY0ASQCB3Fp2ukLJeY95a9TfwnFEy1qAMy5Jtjs3LA==
X-Received: by 2002:a92:aa87:: with SMTP id p7mr21088780ill.63.1584992641642; 
 Mon, 23 Mar 2020 12:44:01 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id n26sm4568483ioo.9.2020.03.23.12.44.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 12:44:00 -0700 (PDT)
Received: (nullmailer pid 19776 invoked by uid 1000);
 Mon, 23 Mar 2020 19:43:58 -0000
Date: Mon, 23 Mar 2020 13:43:58 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH 1/2] dt-bindings: dma: fsl-edma: fix ls1028a-edma
 compatible
Message-ID: <20200323194358.GA19737@bogus>
References: <20200306205403.29881-1-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306205403.29881-1-michael@walle.cc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_124402_317768_7D6081D6 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Peng Ma <peng.ma@nxp.com>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Vinod Koul <vkoul@kernel.org>, Michael Walle <michael@walle.cc>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  6 Mar 2020 21:54:02 +0100, Michael Walle wrote:
> The bootloader will fix up the IOMMU entries only on nodes with the
> compatible "fsl,vf610-edma". Thus make this compatible string mandatory
> for the ls1028a-edma.
> 
> While at it, fix the "fsl,fsl," typo.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> Fixes: d8c1bdb5288d ("dt-bindings: dma: fsl-edma: add new fsl,fsl,ls1028a-edma")
> ---
>  Documentation/devicetree/bindings/dma/fsl-edma.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
