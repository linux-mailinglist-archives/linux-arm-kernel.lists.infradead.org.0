Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC5D631E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85F61fBfTMYP61PFdWO38T7l+qSHOI7nvk17JcAEFl0=; b=KpHXMS10WX6hbD
	RqsLKxiWb9H+wwIb/DXdlJJV8VYuLPLKFXT1sK/Ao0LvikRvQvuPVHNhFZ8Pg+Xjen5qY9e8TmKg1
	H9vYPLDNh4pxjJ+AMAHnBquzGh73lWQfWEG6Whquts+d4CFnJW8PN+coE24LeqhqN8rUgxV/URNk4
	V6Vln26kWtlvyX/qEIf2eQNjR3BmW6DY4UfByGnD6xWlaXRlmlp+yfZRyiYSeWPaki6vyAopXtlrk
	vSI7zbFrEW8SLc7nJBmG/0hjlr51kwb4Cy5JwmeyykESfk/UoSektTsFrgPIKkmSWmxNgbr3R/A0R
	a2FsSHFHf7QVCa2/5d9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkUZ-0004cN-M8; Tue, 09 Jul 2019 07:24:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkTq-0004FK-1B
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:24:03 +0000
Received: by mail-wm1-x342.google.com with SMTP id s3so1910709wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 00:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=03TkoezjgkAZL2YmFuoEqna7NSM8InGqJI+3ARKjL1o=;
 b=FDJIw/XXd8rciEohBUKmddB8phPThT/PekIFiIN1cV+l66VsdC0Itam9we2NMoOqYP
 zBHeqKlzeTGyY3g/sM4yKyKMITVauqjdMGiSqi7Qe4u+ideDdLeEycXFIt1qMs8O091N
 IeEHWcipFxAp5FvVKok6cqbLm6foJ2Zf78DS35yfTVQp2IRNPHG4wJGKr5BCgRYX1fsC
 Gal52Dc2u9+vN7WHfgRi/AJPwy43zH8kL5FeQ6phfuf96q/RVuy7h5wgcKb5pNvQxq19
 j822OniI4eL5t2RDAoE5UHnZycbkUczRRXkOvxqbuVFHb0Bmuj/7/zlTbr6HBedkBEHo
 b7uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=03TkoezjgkAZL2YmFuoEqna7NSM8InGqJI+3ARKjL1o=;
 b=rqKHmE7JT2JLJ4DoWLPRck4rickurqYWIaWh2do3o/2XwGJKQHf1L/+SZw+iCF6lWH
 1MmPzTbfWiVUL/4Ql3eIu0WrkkoihaBvfNiDYfjtBBIIZbdHUAdAyegB0FXeylpVDqwW
 m0K3elWuCrTXIHgbs/FZUHn5y2GQfIC+r4eaADZtvqhENSOrHEvevbsGFUfYMe0eDK1b
 WHNP82kicm43R591LzkFj6i5scOkQFygybihPo884g/nXslB18Sfj8hRRj5PLzayv0/D
 kf9ysGDRlzetQJ/pDFpdo3pzmNKkS3HtVetEZjlH+CP6TZcNorWxLN7l/+ScLyP9Ew8a
 W9ZQ==
X-Gm-Message-State: APjAAAUL7Iz/9DYM6biACXzY3g+E9w3uIoaxHWFtfdRAxxisHzFDe7Ug
 WAX1+vaaRxy4eUneT/VfDeyAeA==
X-Google-Smtp-Source: APXvYqwV3mcuJnhnz6QQouw2JqDfmNZCuA8kTITJotydtLJak8JAyntXVQPkwnHos7Fs8wIPg2lpNg==
X-Received: by 2002:a7b:cae9:: with SMTP id t9mr20552772wml.126.1562657039819; 
 Tue, 09 Jul 2019 00:23:59 -0700 (PDT)
Received: from apalos (athedsl-428434.home.otenet.gr. [79.131.225.144])
 by smtp.gmail.com with ESMTPSA id v67sm2225652wme.24.2019.07.09.00.23.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 00:23:59 -0700 (PDT)
Date: Tue, 9 Jul 2019 10:23:56 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next v3 3/3] net: stmmac: Introducing support for
 Page Pool
Message-ID: <20190709072356.GA4599@apalos>
References: <BN8PR12MB32666359FABD7D7E55FE4761D3F50@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190705152453.GA24683@apalos>
 <BN8PR12MB32667BCA58B617432CACE677D3F60@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190708.141515.1767939731073284700.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708.141515.1767939731073284700.davem@davemloft.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_002402_203161_A6B76B11 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Jose.Abreu@synopsys.com, Joao.Pinto@synopsys.com, alexandre.torgue@st.com,
 arnd@arndb.de, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 brouer@redhat.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello, 

> From: Jose Abreu <Jose.Abreu@synopsys.com>
> Date: Mon, 8 Jul 2019 16:08:07 +0000
> 
> > From: Ilias Apalodimas <ilias.apalodimas@linaro.org> | Date: Fri, Jul 
> > 05, 2019 at 16:24:53
> > 
> >> Well ideally we'd like to get the change in before the merge window ourselves,
> >> since we dont want to remove->re-add the same function in stable kernels. If
> >> that doesn't go in i am fine fixing it in the next merge window i guess, since
> >> it offers substantial speedups
> > 
> > I think the series is marked as "Changes Requested" in patchwork. What's 
> > the status of this ?
> 
> That means I expect a respin based upon feedback or similar.  If Ilias and
> you agreed to put this series in as-is, my apologies and just resend the
> series with appropriate ACK and Review tags added.

The patch from Ivan did get merged, can you change the free call to
page_pool_destroy and re-spin? You can add my acked-by

Thanks
/Ilias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
