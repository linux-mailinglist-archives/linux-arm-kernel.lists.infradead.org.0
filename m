Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACDC1FFFC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 03:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hmgp1abyQ9l5XvvWFkwq/un/VfUeAtNxm2lTndXxPrA=; b=MAFOVdmZvbcfJx
	nF20GLwHPZjZ+kXdkTYR3Gm2BBdluLKeKbC+o88yV9B08LiB2lijJwHIq0WTUPHAb/HXfAlqEwqiO
	cCCmxOqs0JbkwId2cYUCFmKrdUuDhi/00nyE9s/hv7WrZHVp3HwDu+3PpM/GUuoUIA7tx1nioWtsJ
	HmJ2G//G8z8DmgqlpZ2ucIJSrVWEoFnbBfpFPJs7Vyx9fmKUNeaA955pB6kIhDcTQTxZHDb00Q2gB
	cAlqq5tLcAi0ZDANTUfzULVd2xtMBc3QZrgYKG7oYAwfDpTR++FPf8K6hWDTW3ixKnmL8e5oCiZXW
	GYOO0YwzeD/KLClT54EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm5yg-0002iX-4O; Fri, 19 Jun 2020 01:37:58 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm5yW-0002iB-G8
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 01:37:49 +0000
Received: by mail-il1-f196.google.com with SMTP id c75so7842902ila.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 18:37:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eAZuGyOCUcDGHINX2PjuvDVGtEm9kqJQdEnXysFjpws=;
 b=ILd6SXcNqWECgw4QCncG7RAIsJX7di3jRZtwQGVPpar//aSe/IN/c9pmAeiUy/+Dq3
 Gwu4+aBQ/A+MxhKX/nuO5JXO5g84ozSBccRx66xaF7ilTlyDh0sd5qFh7TalQ6xsnUmE
 TZCwlQ8fPPl3avbl6XZMtxUMadsPtNmwMufBqGuqvFGBjCZWXS2IQral7jpoDZY81LAC
 jnImULx9nglTFKkUjkwrkUXW/mSUMv1k3K8UJZ0BcCbbTvQy51Zl/WgJ8GPA6YktFYAa
 4VfSTJSzEDsaJ4dHovx/H1dvRMlPIUDj6NS2H2Ij1G/rYr6pxhz4upJ8wmX8CjduYtB9
 zIwg==
X-Gm-Message-State: AOAM531GfP6vKLO9PlZTjsDgMPd+C4rnLHcI+vyZgOBxT2mc2t+yhz8y
 zadKP0IqT/k7NaWqud4iuD4=
X-Google-Smtp-Source: ABdhPJz5WKD2GJFTKbjZdXgRBc5OLyvEKmwOdNWmzub07kHtawv2Fz7DCjunIOTasR1YrjYIsxcNMA==
X-Received: by 2002:a92:dacf:: with SMTP id o15mr1339712ilq.36.1592530662192; 
 Thu, 18 Jun 2020 18:37:42 -0700 (PDT)
Received: from localhost ([2601:647:5b00:1161:a4cc:eef9:fbc0:2781])
 by smtp.gmail.com with ESMTPSA id z16sm2385916ilz.64.2020.06.18.18.37.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 18:37:40 -0700 (PDT)
Date: Thu, 18 Jun 2020 18:37:39 -0700
From: Moritz Fischer <mdf@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/5] dt-bindings: fpga: xilinx-slave-serial: valid for
 the 7 Series too
Message-ID: <20200619013739.GA3685@epycbox.lan>
References: <20200611211144.9421-1-luca@lucaceresoli.net>
 <20200617223841.GA2967136@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617223841.GA2967136@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_183748_539051_68C6D76D 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [moritz.fischer.private[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-fpga@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 Luca Ceresoli <luca@lucaceresoli.net>, Anatolij Gustschin <agust@denx.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 04:38:41PM -0600, Rob Herring wrote:
> On Thu, 11 Jun 2020 23:11:40 +0200, Luca Ceresoli wrote:
> > The Xilinx 7-series uses the same protocol, mention that.
> > 
> > Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
> > ---
> >  .../devicetree/bindings/fpga/xilinx-slave-serial.txt     | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> > 
> 
> Acked-by: Rob Herring <robh@kernel.org>
Applied to for-next,

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
