Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9811D01A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 00:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2oYmL9P5+Tq6Acs1dYHyl8gen5Z+QmtYTG+EIQnteAo=; b=dQm410VXI0XTUl
	tPxXcSqag/HF3SpwXkRLck69jqo/fJHbJpGl2b+H/1FfYDc+nS7ReC+Cc28UeUqt1cWfMACxv1+N/
	Hy4B5pi+7du8Hxyby/O7KUGtLq+DvDx5AIMZyD9U0AanufRTbScExx0lIWyQgqgqNmq7H0i2+bZGH
	uPJir2FCc+2KbQ1DxqqO7Y4vTpNe+kI5N5ryZrRIfag6rliFiO4oS6pc0sDA3ac/rlCot/UF/oqpZ
	lasjFkay5pVDqXrOBkfvfuQUbZgbOXasoVXbncopn5RbanKziV38SyF7AH7TPwv7+0Xv4vmzW82o5
	fZLYx69BOtfZ/sZ13TKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYd7d-0004Qo-Hz; Tue, 12 May 2020 22:11:33 +0000
Received: from mail-oo1-f68.google.com ([209.85.161.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYd7S-0004Q5-Ui
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 22:11:24 +0000
Received: by mail-oo1-f68.google.com with SMTP id x16so3059573oop.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 15:11:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vb85lby5smdr9lABRmv+r/bmfnu8fDinRBVbOkh3wjw=;
 b=GUciHizCq96iixdZcDyGvXi+b8jXGP8MmISkG9fui4pIM2A+io1atQ7DkXS9pQ9FZv
 /VnB/tnHMrQN6DU+r5XdAPSVKlIzjZVrqkOqLILKPzfOKlh0oWdJQEwnSUaNdNIdNoTs
 s/jizLh5hs/FNyKQopeRkPxo4MetA47yFBnYP/g6/coHMDft/frEsHQoHHWqX3WvOoOT
 BOF4Y6P7k7F1aOQuLJKGfU4v4RTJZH1QrVVqm6/qV4ls2cnfXj5if7XwBZ1SzTvkFu9M
 KNdgQ+fjX+TxBh9f+Ate6fjJBgBBXQfiYdV/rV+hKOhufRmJTtjrBC3WCn9NCSoEN59L
 0iig==
X-Gm-Message-State: AGi0PuaSBDg1nVqyeCQV4cYEqapGaHBx4z2ZrYLccXe226rGp51GTWDX
 52MlOZoaDfW+MwtFAr9qDA==
X-Google-Smtp-Source: APiQypJDa6xxDF1mECnAsxooolHAenXcUzoYJryZ/jaOLAe4RkkE9Z5kOjIQF1ih/KxpCTGR6wXarg==
X-Received: by 2002:a4a:3556:: with SMTP id w22mr13971182oog.20.1589321481994; 
 Tue, 12 May 2020 15:11:21 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 65sm1055089otd.77.2020.05.12.15.11.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 15:11:21 -0700 (PDT)
Received: (nullmailer pid 25223 invoked by uid 1000);
 Tue, 12 May 2020 22:11:20 -0000
Date: Tue, 12 May 2020 17:11:20 -0500
From: Rob Herring <robh@kernel.org>
To: mani@kernel.org
Subject: Re: [PATCH v2 3/6] dt-bindings: arm: stm32: Document Stinger96
 compatible
Message-ID: <20200512221120.GA25157@bogus>
References: <20200503154215.23654-1-mani@kernel.org>
 <20200503154215.23654-4-mani@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200503154215.23654-4-mani@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_151122_985221_242B6934 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun,  3 May 2020 21:12:12 +0530,  wrote:
> From: Manivannan Sadhasivam <mani@kernel.org>
> 
> Document devicetree compatible of Shiratech Stinger96 board.
> 
> Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
