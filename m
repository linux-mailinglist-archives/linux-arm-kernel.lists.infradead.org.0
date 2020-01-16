Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A3B13DB45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:16:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9uMtuBShPx/KeDcQA3Hg6QvBOEPCy83RioTbWi+xMKY=; b=l/hhaolnJcZw2/
	nNxGCSMtWDtt2uae0lnt73RIgrjIVf8FQwT88c+GRcXuCbKwWUaqWbJMWERKFoJcYLGsAppABTlcV
	9bGx7kSqziIUVttKMhy2PtDEY1M6m312f03rqi+LvwAOGvKbDLq3kkeVqzVhr3T+Is1g/DS9H4b8g
	Y/bnDl9KyB1RGGZJyUYQp4/nLc+fqDlspx818iI3vALz/baNr7fakEFucn9UMm0pVA8nQEuWPjhJt
	9OQedN8vZjOfDnacz8ZneOkUxlcuxdNxxWsxIDDIJyU7CH6PTsc2wTmmSMmyNkfZULy03GSjXzC2n
	jPodGkQZK7fiZcxVzyZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is50e-0002jt-La; Thu, 16 Jan 2020 13:16:28 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is50K-0002iU-Ku
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:16:14 +0000
Received: by mail-wm1-x341.google.com with SMTP id d139so7163086wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 05:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2fUXK8SpQFeNUTHHjq17WKEa2HX3RjBEp1dlf1605d8=;
 b=QctqX+SABPym4k6LOX1hzx5gGwkEvbayU2AwkCvhTMCpEs7ix0z3Y9lzgR8BIzExGs
 7Nmlqo7vmRyMi5++i7LRdKtmyQT8h2AfO8p5VVGLeEuuRSByY4ji0ucCpYlyiAntiLhu
 VsZz2FGp/upKFVJQvg0CGbvNSY1KlWk+pFvE8a8aihQPntSsMDotWqDTQIiPgwfSrpeP
 kj7Hfcr35pFToHNz5/Ub5rPit4WdGxYOcZuxPMdDsVrPknOEcggUKzQu2umL1Fkw76g8
 oiToDbmSTMNxl31Lfusng0BIhaz9f+r7aGAksBjS7megI67hE+Gmn+5o41tNxzsfXU5V
 +X6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2fUXK8SpQFeNUTHHjq17WKEa2HX3RjBEp1dlf1605d8=;
 b=I9DCPYM/O9USzf2jTfnnXQ4ZvNKYKO0f2XZaiDBQqIh1fYwBk7EMLoAvPDb3zCVdlV
 agf3FJ3SUC8HtJ6AqonmnaI4VmtZOpa5RMIFdzv/SPGL6MJt51b8cdsky5ftWkha0/s0
 WgBhc2Ib+O0UYNDOsC4Ebb5FvI/3S+eXMAr435YZPt5rhcQxpgsYixYtx7DvtmOUysta
 b3onzENJT/LpCbZKn6lYpowdYPOKFu7U7xkgGruVSVvk+2AGUBykm1jSrBJFMJJF2i/E
 evICKzT/2qPUmqfpQKxVvnmkPbUO0OHvdCrfyLumXyzw5sOlN563UuisA+P3R5mRj8e+
 NxpQ==
X-Gm-Message-State: APjAAAX5fPf5G7QrpUtkPyQhc+H0XP62HJnaFstRe0Hly6h5XzEAVJ3s
 GfWFQHjFio0IibngP5Ak1ks=
X-Google-Smtp-Source: APXvYqy+KZj1RE5Da5UJUk8yDqkXjQ9G20krvYN+N07Q3VSfPwOBls/Wn9bvazOAR6xdN4I5BNBNVg==
X-Received: by 2002:a05:600c:224d:: with SMTP id
 a13mr6139437wmm.70.1579180566478; 
 Thu, 16 Jan 2020 05:16:06 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id y139sm3415692wmd.24.2020.01.16.05.16.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 05:16:05 -0800 (PST)
Date: Thu, 16 Jan 2020 14:16:03 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Iuliana Prodan <iuliana.prodan@nxp.com>
Subject: Re: [PATCH RFC 00/10] crypto: engine: permit to batch requests
Message-ID: <20200116131603.GA26487@Red>
References: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
 <VI1PR04MB444530675D82743E8AFFD8FE8C360@VI1PR04MB4445.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB444530675D82743E8AFFD8FE8C360@VI1PR04MB4445.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_051608_709675_E0D05AD7 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aymen Sghaier <aymen.sghaier@nxp.com>,
 "herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>,
 Horia Geanta <horia.geanta@nxp.com>,
 "linux-sunxi@googlegroups.com" <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, "wens@csie.org" <wens@csie.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 11:33:24AM +0000, Iuliana Prodan wrote:
> On 1/14/2020 3:59 PM, Corentin Labbe wrote:
> > Hello
> > 
> > The sun8i-ce hardware can work on multiple requests in one batch.
> > For this it use a task descriptor, and chain them.
> > For the moment, the driver does not use this mechanism and do requests
> > one at a time and issue an irq for each.
> > 
> > Using the chaning will permit to issue less interrupts, and increase
> > thoughput.
> > 
> > But the crypto/engine can enqueue lots of requests but can ran them only
> > one by one.
> > 
> > This serie introduce a way to batch requests in crypto/engine by
> > - setting a batch limit (1 by default)
> > - refactor the prepare/unprepare code to permit to have x requests
> >    prepared/unprepared at the same time.
> > 
> > For testing the serie, the selftest are not enough, since it issue
> > request one at a time.
> > I have used LUKS for testing it.
> > 
> > Please give me what you think about this serie, specially maintainers
> > which have hardware with the same kind of capability.
> > 
> Hi,
> 
> I'm working on CAAM, on adding support for crypto-engine.
> These modifications are not working on CAAM.
> They seem to be specific to requests that are linked. CAAM can work on 
> multiple request, at the same time, but they are processed independently.
> So, I believe the parallelization is a good idea, but the requests still 
> need to be independent.
> I'll follow up with comments on each patch.

Hello

Thanks for the review.
Yes my serie is for doing "linked" request.
For the CAAM, if you can do multiple request independently, why not having x crypto engine ? (like sun8i-ce/sun8i-ss/amlogic)

> 
> Also, IMO you should send the patches for crypto-engine improvements in 
> a separate series from the one for allwinner driver.

For this RFC serie, I tried to do real atomic patch, for let people see the whole process.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
