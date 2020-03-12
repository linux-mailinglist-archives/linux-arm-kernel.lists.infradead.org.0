Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA99E183570
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 16:51:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/WlcrBM911F/sU7RNr+/69fyecx3EoMqGplcHPz01g=; b=LRti5JOB3FKp/o
	RX/JJstFcG2iwD6ARH1nDI6/Q5ymUsOHXXKmfJE/IkATQJU8Oko5EH0lfszr/TSFFKGgKXFgKiA0b
	7hnGvjPTIm3S90s5HTCKqAt3t4AeXnmJXPPe9w1/nOmFirDRnsdldUR7OX9XQM10/IvRqkBV9Ttc3
	DPmSgbzhUxjKymyKZBn4ABoDUcjPMF7eRrnR/jXXXr7ErRGLb+c33VQXIOxvU4DXVXoHR/M6aW2sY
	KVpfM5tsO4puWHgxPyXwmzqkmIrj2Lrj5/iwpLXZNCDTiKORuzhpTOI9x31oMVKFaY44K35SpFNsy
	P+i0OU7T6HieidzcgZzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQ7J-0003RV-1u; Thu, 12 Mar 2020 15:51:25 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQ76-0003Qm-Jh; Thu, 12 Mar 2020 15:51:13 +0000
Received: by mail-ot1-f67.google.com with SMTP id a9so6767242otl.6;
 Thu, 12 Mar 2020 08:51:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ikJbvAhzJEgIWg4iBpBnF6s5EbtD/zP7fgvKc2Wxses=;
 b=uNi4u9wxjTABStmKI04WMRhpVm4z1aViyBMw8qbRM3+hZUR6BHdzyDtaVtmI/J49Pe
 6yS5HFpHd2ovVlJ5IM+A2hJoLnL1Q7Dzc990d1U3RdsBM7yvI2qLsyai4bIymM8r5RwE
 c/qVKYD3362dNzgMGDBM2KXu2tjX0q/CnO20a5V3w09eGYKxvwO9K8gUB8wqppKhd9Xb
 2QGilmwBJKFADEgrSTatuiCFe/6LgIDdgQgTENo28xqEod6u0liwyeM0S9DRmhDPC8N/
 uSVdhGkyCNdBqFL7nFdWeaaG76bz5Xqs/WtVMg/ucrC6JwcALNP/yPUomInp2XxOA96Y
 6z2g==
X-Gm-Message-State: ANhLgQ2pUrTCMhAwscYLGb6YnAuoyyjX9Hc+r+81ImR+nx9ZpehCeTCW
 UzChAEdG2l2+7zh+b1kqww==
X-Google-Smtp-Source: ADFU+vswRgTiSFs3jrGhperqQ9lLysFDkyD31XUqW8Fep83FSF5i8XG+iYIQ5XapLA2hxlCgHDWQzQ==
X-Received: by 2002:a9d:2208:: with SMTP id o8mr6706528ota.208.1584028271932; 
 Thu, 12 Mar 2020 08:51:11 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 8sm6621696ois.15.2020.03.12.08.51.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 08:51:11 -0700 (PDT)
Received: (nullmailer pid 26057 invoked by uid 1000);
 Thu, 12 Mar 2020 15:51:10 -0000
Date: Thu, 12 Mar 2020 10:51:10 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 2/5] dt-bindings: i2c: i2c-rk3x: add description for
 rk3036
Message-ID: <20200312155110.GA26004@bogus>
References: <20200305143611.10733-1-jbx6244@gmail.com>
 <20200305143611.10733-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305143611.10733-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_085112_643276_9C831392 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  5 Mar 2020 15:36:08 +0100, Johan Jonker wrote:
> The description below is already in use for rk3036.dtsi,
> but was somehow never added to a document, so add
> "rockchip,rk3036-i2c", "rockchip,rk3288-i2c"
> for i2c nodes on a rk3036 platform to i2c-rk3x.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
