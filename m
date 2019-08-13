Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 107FD8B832
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 14:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4MXbnnBzsFoO/Qoi6/r8WY99A3DmZZYzdgyp8PXke8=; b=Pcdcxx18Xucw3j
	6TGUqUfYsA1NnoTwadX6XJVDAvZhxLA3qBHNqhA5RzbVGvF4cUTZkllNdt2/JN4viqIlteXg7B81O
	Qu8LVDK2wAFks3n8NOz56kyGylN1AUE66/6rCu6E/FXiV29/c63A6/riSi5O/z6qJ/bh4/ujFQaqW
	8FY5mGt6jD5mLjFy0apZZir3w62kxJiWDpf0vWX1Nwj7rvI7rSss/GGmdZCaIIoPDmejQku24MLo4
	aatYHua33nK3sAuMBGkyejuhHAzJjzVMuGmBTpXBahLoOeKccUqQ4zlIrpdOwYI+quVlONo9RPjzE
	PwEGBPPXI39f/AYUituA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxViu-0002dN-H9; Tue, 13 Aug 2019 12:16:20 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxVik-0002cz-7K
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 12:16:11 +0000
Received: by mail-pg1-x543.google.com with SMTP id d1so18354464pgp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 05:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HVlLJiIzjaXDxFFkRwCgsS9CVo3aI/KKzGwIYcEyzZU=;
 b=XNUFdEtT15n7SWbDoymnDWB6S1FHl3jTRMDvFq1tpn+deX4cDMtdSaifhruzfd5utA
 Zm6EOCAz2i2aXTj/LvosazkuB1chumYOVHkJVyOztRrzdHDgtxXKQsag4uSefxubT8x+
 x8F9fAzkGkBc7u9QgBuN/hq7bzEW/tmUINBC0DuoIUPEe455xY7RjQ2NFB3+cTbPFKny
 eYCN6EhLj+4oY6s+oDAWKtGbhZo4r+HhznjjdW37EgA0ODTPkQnXJkWn5QB6sCpwgMb9
 3jfjohhGwfSx4Y7y23bjrgF8Dgs8wqn4QCUrhRRoUK+AqAEGBXjikFMhsCwTCF9uuNa7
 1VnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HVlLJiIzjaXDxFFkRwCgsS9CVo3aI/KKzGwIYcEyzZU=;
 b=oD0bTBmcosUTLv3j6ZrNmruTZYzeLpmhRk0+9doObnoB14hLRODhtuJnUNh+xEeBcd
 Kc+zVK/+daCTujKU5e0jbILhksq4jofNqmT3p+Z21PCmVV9yUd9kYQ5UyQdMOSscY1Cv
 lcRKTqnkjR0WYx/dJViIYdZx7OxW7eT7JwQljh+10V5lIRm+xtQ1rbTHHZqHOQSJwRDW
 n8Q2TMob9TAIqT4l2qz3N9+IpZ1OT2Y6r8i2zb7BbT+t563cgneXcAaEP2/U68zPoxOT
 adFeP/2pZ3BELTQgGePMt25VzqgfNP0Z2YmA82a/olYMaj+gNqDUuXaZY68gRHmr0hdr
 xjOA==
X-Gm-Message-State: APjAAAWsr1vt5zLh8k7iFwoVgbJEH4UxmUG/Os17u+bPdYoNXe1rKaMJ
 OzW/WxflDD83P/ykNrJ5gYfX
X-Google-Smtp-Source: APXvYqyqBDGNMo4tLSC5P2L0ZMq6zP+MdPBF4+rrYMx7vSuFUW2VLy1NayISlC8n8x8eROfvPHOiTw==
X-Received: by 2002:a17:90a:fe07:: with SMTP id
 ck7mr1936580pjb.68.1565698569207; 
 Tue, 13 Aug 2019 05:16:09 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:649c:6ce0:9d44:669c:5d6c:bc5f])
 by smtp.gmail.com with ESMTPSA id o24sm200027991pfp.135.2019.08.13.05.16.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 13 Aug 2019 05:16:08 -0700 (PDT)
Date: Tue, 13 Aug 2019 17:46:01 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v2 1/3] dt-bindings: media: i2c: Add IMX290 CMOS sensor
 binding
Message-ID: <20190813121601.GB29378@Mani-XPS-13-9360>
References: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
 <20190806130938.19916-2-manivannan.sadhasivam@linaro.org>
 <20190813115427.GC2527@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813115427.GC2527@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_051610_274482_5B92EBEF 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 02:54:27PM +0300, Sakari Ailus wrote:
> On Tue, Aug 06, 2019 at 06:39:36PM +0530, Manivannan Sadhasivam wrote:
> ...
> > +Required Properties:
> > +- compatible: Should be "sony,imx290"
> > +- reg: I2C bus address of the device
> > +- clocks: Reference to the xclk clock.
> > +- clock-names: Should be "xclk".
> > +- clock-frequency: Frequency of the xclk clock.
> > +- vdddo-supply: Sensor digital IO regulator.
> > +- vdda-supply: Sensor analog regulator.
> > +- vddd-supply: Sensor digital core regulator.
> 
> Could you also add the link-frequencies property, please?
> 

Sure, will do.

Thanks,
Mani

> -- 
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
