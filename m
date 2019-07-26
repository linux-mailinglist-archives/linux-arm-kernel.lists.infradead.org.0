Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 366317603A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 09:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKSp8WjflxokxL1A2Hdz+IP+ecE0KIgVel4XIrrGkJ8=; b=lpbWQG0P2WJQU3
	7uffdWEMJFDUTBUUuSyIDB+hP8lr20fZ49ECyx+A+K3CGHDxhl+Zp1gxW2+2wZW00AZVDGQSvMFLY
	GTR+1/Hsw5UOEzFQ3ilf9IxLbRK+uWLXIloJbgFySUOnAQ0sxs00ClQEV/vv+cwt/PVLMknxCy7Zt
	1kTba3AKGFv96E53up6UWXrIwU9MsxcHHneUD7aC7GkoAyb6tTNGqVyhPU+Ahw7JBWTnmyEBzZvpe
	NJKa6ZDg04cQ89+t0jL2jfGcP0fKqbb6nLK3JytaN3cxAGE+F2yMZw4fbrxp/uV9POAaE/1HUcrBv
	zRwvy1nREqLAgn7VsWjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqv6R-0003eC-L3; Fri, 26 Jul 2019 07:57:23 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqv69-0003dZ-Un
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 07:57:07 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 2AB0A412D2;
 Fri, 26 Jul 2019 07:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 user-agent:in-reply-to:content-disposition:content-type
 :content-type:mime-version:references:message-id:subject:subject
 :from:from:date:date:received:received:received; s=mta-01; t=
 1564127814; x=1565942215; bh=t7R6X8nvFz+0QciEa3VrF8VwhbSoAtsuItD
 wYQ0loc4=; b=hpcgBbvByqr1Xb893BxdoU1Cbaaf36vBPH9hCTucba2X0xOPeyb
 O0RdOn5CcQzjxevvIR7J7f0PsQG+BICWXFCRKWdoRA/Uk2dHCcxvOrz3ATANxP6e
 EdLoB6R8qbQMg0lDsbc/25vKxrFDq+YySIcgsNhCuA4L5+oMhrH/DmPQ=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XJyaxH08dzGi; Fri, 26 Jul 2019 10:56:54 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 0BB6741185;
 Fri, 26 Jul 2019 10:56:53 +0300 (MSK)
Received: from localhost (172.17.14.115) by T-EXCH-02.corp.yadro.com
 (172.17.10.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Fri, 26
 Jul 2019 10:56:53 +0300
Date: Fri, 26 Jul 2019 10:56:53 +0300
From: "Alexander A. Filippov" <a.filippov@yadro.com>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH 04/17] ARM: dts: vesnin: Add unit address for memory node
Message-ID: <20190726075653.GA10397@bbwork.lan>
References: <20190726053959.2003-1-andrew@aj.id.au>
 <20190726053959.2003-5-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726053959.2003-5-andrew@aj.id.au>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Originating-IP: [172.17.14.115]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_005706_189041_A01BBC0B 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Alexander Filippov <a.filippov@yadro.com>, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 03:09:46PM +0930, Andrew Jeffery wrote:
> Fixes the following warnings:
> 
>     arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dt.yaml: /: memory: False schema does not allow {'reg': [[1073741824, 536870912]]}
>     arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dt.yaml: memory: 'device_type' is a required property
> 
> Cc: Alexander Filippov <a.filippov@yadro.com>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> index 0b9e29c3212e..81d9dcb752a0 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> @@ -14,7 +14,7 @@
>  		bootargs = "console=ttyS4,115200 earlyprintk";
>  	};
>  
> -	memory {
> +	memory@40000000 {
>  		reg = <0x40000000 0x20000000>;
>  	};
>  
> -- 
> 2.20.1
> 

Tested-by: Alexander Filippov <a.filippov@yadro.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
