Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D8A39A40
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 05:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5eBlF32f6bH/zm4XHML7ReGe3Mn2lG8oCA/N94Kaa0=; b=cFTzE6hQ5TCMpf
	ODBnidPPSz50UQ+SWIhT0ajNtyGflmi3EENbiMVQ++N6qPNmsfevN4RPgPZibuUSLlFGc5UIuH9fH
	BwYx1zh7CSF5th6G4i3LQxzRl25W/FGlnFtvKidXcKCGUNXA/w1QmlZt1PImlJyf+uCL41419zNb5
	52WTdiuU8bAYY6FEHC9+3MXUlOfQplSESMtdW3d01NnIxsYj/RsEzQ1GG7kqAWGuneht/66MQw92r
	x0Ad7EMrpdLx+HOog6t2IuYfqdOXuN0osVcDrr8qbZxUIIYQJKQL6Dh+MqGD7Feky2avaYuL95MvH
	2YcoeY2JDIyKGkU1P48Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZS1X-0007nL-7a; Sat, 08 Jun 2019 03:28:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZS1N-0007mu-VZ
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 03:27:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id s27so2126681pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 20:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=73rlx0Al8Bi2D+T3uFyrwNuDhtIRdfkSfNSwNdqApLY=;
 b=vZnuo1omaf1ebaOYnIivvcEKMipbWLSXSetiJzjAuMDkwFvEejTvw/LERyGnyTtTFD
 Ut/KBH2OgucYOakJ3plFjqVP2fvA4EA6KgyKv5PHmzdtl7dSUlO7jVHUCmNAk4zNViXh
 pKGSg82xwCrwAUhhUNdijgGe48Eal15iGLO+rrKF3pUswZcPEdRRUXAa7WX8c4x90r2a
 ibzcUYjSYhTrrD3IDphUlAXAX9JJvjekdKspwLeNpKUjPyFbTFB57z13q+YsY8RTEyW4
 djtelDTKb5XyY1rK5bbAxOwrhja/IYeH4U5HhA4o4Pu9+b9HFxOAh4wtCClptpI3FMnd
 CRaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=73rlx0Al8Bi2D+T3uFyrwNuDhtIRdfkSfNSwNdqApLY=;
 b=UV1GkyyIiQSaNldTcz2fYIXRCMA/z4zb8UVCy2MsvOeNdgxu5581dcplr5ibPjqDNQ
 AAcBD82odkkAfB93LMJbuU+GXYaWDPaZNyBLnirOrUs0PVAYunS/OeYAZMmV/51kLdYc
 H5docksxi5bL21jqui9u0POYsrpOBvfQl+BKaGxYtUHBcdsZzf6FbUTJyAkm3ZweU0S7
 1yE4qM1HyXZ9jNsUKhuH5hVmV+DvfkGmWEugyYYtrrgss+xU78eFe4NvESZNRYjtXeIW
 JlC/RKZ8mei8dxxndSv9GYKXKVEFPKjKADhu/LZY6/d+ul/QqzR4ywj/GsQtjz4IF2dr
 trqw==
X-Gm-Message-State: APjAAAXdhC6DHabt60xfJ3H86HWQpy/SiYIDOLpazUUQesvf97JneDQc
 7ohEraYv4gMqNoQxwwz99+ODaA==
X-Google-Smtp-Source: APXvYqzoWjPhd12ySZSr68F6QXinc6DRO2r16B7jrtAvC5fo2zqsmgssrm3j46hlC4Q0mg/vp7bIdw==
X-Received: by 2002:a63:1650:: with SMTP id 16mr5875706pgw.164.1559964477334; 
 Fri, 07 Jun 2019 20:27:57 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id j37sm3189251pgj.58.2019.06.07.20.27.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 20:27:56 -0700 (PDT)
Date: Fri, 7 Jun 2019 20:27:54 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH 2/6] dt-bindings: qcom: Add ipq6018 bindings
Message-ID: <20190608032754.GD24059@builder>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-3-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559754961-26783-3-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_202758_017478_4AF96D4C 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, sboyd@codeaurora.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 05 Jun 10:15 PDT 2019, Sricharan R wrote:

> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> Signed-off-by: speriaka <speriaka@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index f6316ab..7b19028 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -36,6 +36,7 @@ description: |
>    	mdm9615
>    	ipq8074
>    	sdm845
> +	ipq6018

It would be nice if these lists where sorted, but as that's not the
case, please sort it wrt the other ipq at least.

Regards,
Bjorn

>  
>    The 'board' element must be one of the following strings:
>  
> @@ -45,6 +46,7 @@ description: |
>    	mtp
>    	sbc
>    	hk01
> +	cp01-c1
>  
>    The 'soc_version' and 'board_version' elements take the form of v<Major>.<Minor>
>    where the minor number may be omitted when it's zero, i.e.  v1.0 is the same
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
