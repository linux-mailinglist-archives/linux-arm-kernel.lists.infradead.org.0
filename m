Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B3E9832E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ELqcetggLqq9PyZgv+PLVRWr+VIbNdphJi4yGUwUaY=; b=s6TefXJHuMqHu5
	bQMcPh9QSkaljALTK9uwUPhYUcyZcVVNI+HHXZ2RlS8aLTc5694t2NFiO1Zvpfe4GettOs4NJhmML
	Mv6nFOWskKIYsM/eAMSSkmpyJGdNn5obbcPoEy/BoPeYCTChM0bz1tO7HdIe0llFXI8lodluI51yN
	apHuASCN+ATM8CPX+TEC+nws5afE2vywPnzvqDDWD9mO0a+nJhGsK/bMfVgapoROIekfhtcm74eIi
	OmyStAnpUQZ2KUKQR3zsm5EoEi8eKCXClBrMcSIp7iAqAq0nX+mvubDLAcK3LVlZxJ/Q4qa7fydK2
	YbLaWpUgpIPAb4e3TyMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VUW-0002jN-UI; Wed, 21 Aug 2019 18:37:53 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VR0-00069M-6X
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:34:15 +0000
Received: by mail-oi1-f194.google.com with SMTP id o6so2357618oic.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 11:34:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gi2BZPRlk0uA2JzVWQCJU+s6t1qhy8lKwkC+6999UAg=;
 b=oPGXB+cA6NCWfW/PSE57sj8b5BDOF8UP9pNe+zDcfApi2O0/6tkknYE/VhR2TUvppt
 7FecXYclRBtvMoOLE7j3HWZ6+wxg9fK3odk/WiO9k3KvEUZEeSL5dx7w+EB0SKfsc3Qp
 Ht1WDNq9QGntoSQsgKlFvRD0YAEyOeA1IGA333IwAe8XD/u8thcuRbw9CjKYF5g9uzM2
 7b2iYoQFfv8ekbcPqvUC+GUo1yPso4uPs7lgiAEz9smobzTS5PtSVv7HsBU06pdlbZKO
 Mg5eSPnod4Qt00InylDEOFir6+2qsS7nJQXk71x/gcbhTcFGsNFty/06ETRBZW+gfH9h
 hDOw==
X-Gm-Message-State: APjAAAUGBVjhhpvB0ArolkULC+w8xuX30KkRLGPhK1haexO3USnm2IGt
 JsXYLfR+mJoQ9nNRpGs2Kw==
X-Google-Smtp-Source: APXvYqx3DnJdbJxJ1b1jmrQ8KW6WnZtAF9psvXnB9Q4r34aJ0FaUBKFmSuJmxrnz4HGTVJO0BtdgUQ==
X-Received: by 2002:aca:4f48:: with SMTP id d69mr1082979oib.74.1566412453047; 
 Wed, 21 Aug 2019 11:34:13 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v5sm8044571otk.64.2019.08.21.11.34.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:34:12 -0700 (PDT)
Date: Wed, 21 Aug 2019 13:34:11 -0500
From: Rob Herring <robh@kernel.org>
To: Chuanhua Han <chuanhua.han@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: fsl: dspi: Add fsl,ls1088a-dspi
 compatible string
Message-ID: <20190821183411.GA26478@bogus>
References: <20190801083105.30102-1-chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801083105.30102-1-chuanhua.han@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113414_301929_E36578F5 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 broonie@kernel.org, Chuanhua Han <chuanhua.han@nxp.com>, leoyang.li@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  1 Aug 2019 16:31:03 +0800, Chuanhua Han wrote:
> new compatible string: "fsl,ls1088a-dspi".
> 
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> ---
>  Documentation/devicetree/bindings/spi/spi-fsl-dspi.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
