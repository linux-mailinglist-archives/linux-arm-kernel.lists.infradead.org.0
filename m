Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBBD134073
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:27:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRgipPAFqbw9+6kkPq7Dp3EoJBxvsifJsl3+A99gK2s=; b=EINvTQ4P2eecCF
	1jfMt4WJYXFJGE4bcRKTUHSK/NSBTprfiZApY1yTqjaMAXWcK5Q5lK3Lb/UP9X531fnk/YUvPhxJP
	giMgauXATTKjK0wbwL/NNZ5dYWnKB979EXIm+ICTYaMeZ/E/Ffgv9nTTL5Ugh+EGIFhKdY+drkrvM
	QmSi3gYa0SFq8Bfw0vN+v8jYYIVB0nG9btRL8wOwFJttMuexwmmkJYW47yIa8PrsK/QMm/Jn8MhN0
	xmKLJdbAq8759zyO/KJw/XowsE+WiaBDrICtU+207TJpiwEOv/P2ehoUdA+xicRMeoEysVxHnNVT/
	1bY+cI2jDNZX+F3QgSPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9UQ-0007JP-5K; Wed, 08 Jan 2020 11:27:06 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9UH-0007It-4c
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:26:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id r11so1446828pgf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 03:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OyEwIf+brcpdIFP5riG0lncLBlwH96PTMEeMCIA2zzA=;
 b=D3NAVIM7clRMhS/BZxyoNCJNM+BYQBpegIc9wBhDjGqfApLd5n9Nv/ynfk6/6oM3oJ
 YgdPdNOTXxUEXbDSdCDABMCmDjaYibstmrINYgVo5rPaRHcMRn9vQSucVDKF6EfxpNo3
 Bc1qfwBOPV8u73bTwcHGS4Itg1v6X1sZQ6Q4uvoTsmgkS/KbgTdW9V7CVVHNsOg2JluG
 +WSFFi3KEyYrZUM7hYq8jpjWXk6rtQj8ajFKPtkCeBcMkxsdgUuT3wGAgrAGT2OelZG5
 8T5uqPSa9jdnX225AzmhovdA4fABGD8WZmBAocWpRaDUBJEOSIJ8hLQ0VJsXgNuMa/E7
 CUnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OyEwIf+brcpdIFP5riG0lncLBlwH96PTMEeMCIA2zzA=;
 b=qj9PPiGqT/322tNKZ9EItIijKY8Bg+yxrRj3NA8e4EZQjmu5Swlly0xrpJgk3lV2t5
 780mDGSXbhXBeKpnR4DDx/rVpOq/THOEjIjyzWGxDXulpbDZBfXclP8IFHtnjMTunaab
 O7XPVoldkpe7WsxIi75k/aQgst+0++iBXdE2piH5lpnG/4jxW+86asb84pmTy78efKT6
 IPrBuE8jeLbABTjDkQ1qMpYUcLuJPMO9pxq5oOGVo1G+Vg5NdmIldXsx/SGYHhr/ENML
 1PleSYkeK9/brtc6ZgmS9Pe2PZNUyPhGvYwcEZgFoJxYb3EewHDAGeIPc6aUKAciUTJ2
 uV1A==
X-Gm-Message-State: APjAAAXH+tdGjbxVfxM1rpE6S7f+gaZyZhpxA3jHGsgvH7rUH3qVbwuD
 QVzIdoJZwG8FDa9ADAl3kBc=
X-Google-Smtp-Source: APXvYqxLYaAC/+wgObu27QstOjgjV05SmQu9JZgFn+fS5p/fUwMT2k3N03riIS+dfV4lMRDQ1G3iug==
X-Received: by 2002:a63:4723:: with SMTP id u35mr4546002pga.194.1578482816504; 
 Wed, 08 Jan 2020 03:26:56 -0800 (PST)
Received: from localhost (199.168.140.36.16clouds.com. [199.168.140.36])
 by smtp.gmail.com with ESMTPSA id w20sm3297806pfi.86.2020.01.08.03.26.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 Jan 2020 03:26:55 -0800 (PST)
Date: Wed, 8 Jan 2020 19:26:52 +0800
From: Dejin Zheng <zhengdejin5@gmail.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH v2 0/2] net: stmmac: remove useless code of phy_mask
Message-ID: <20200108112652.GA5316@nuc8i5>
References: <20200108072550.28613-1-zhengdejin5@gmail.com>
 <BN8PR12MB326627D0E1F17AE7515B78E4D33E0@BN8PR12MB3266.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN8PR12MB326627D0E1F17AE7515B78E4D33E0@BN8PR12MB3266.namprd12.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_032657_179514_EFC540A7 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zhengdejin5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhengdejin5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "weifeng.voon@intel.com" <weifeng.voon@intel.com>,
 "martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "treding@nvidia.com" <treding@nvidia.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 07:57:14AM +0000, Jose Abreu wrote:
> From: Dejin Zheng <zhengdejin5@gmail.com>
> Date: Jan/08/2020, 07:25:48 (UTC+00:00)
> 
> > Changes since v1:
> > 	1, add a new commit for remove the useless member phy_mask.
> 
> No, this is not useless. It's an API for developers that need only 
> certain PHYs to be detected. Please do not remove this.
>
Hi Jose:

Okay, If you think it is a feature that needs to be retained, I will
abandon it. since I am a newbie, after that, Do I need to update the
other commit in this patchset for patch v3? Thanks!

BR,
dejin

> ---
> Thanks,
> Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
