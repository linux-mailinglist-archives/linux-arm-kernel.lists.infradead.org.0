Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A35DB65
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 07:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9je+QsJ2OarLkMyk2+FyfSeG/WYQ3ZK4sQGeZQkZe80=; b=uKjjlMs1vZMJCy
	Ff2/NKUf8csV4ycth+XPNt3ZxR5Wgv6uDAngVh2UywF+2dgMwI2EDg3aqaXsqIYJC/Pz7pMyfcT2a
	60HPI1LbdL+hU8Q4x+9CVb0LVs965ZrGUft7NKxZmo0aBelz0+WITX6OM17tUI5Yb5Qgc/UuVwBOR
	0m/E4apVoitr8iLnrPl6AhYvi7FMiBgAph+zfStCwVO5CvHU+mnPXdu7Vj432lPw/6Z2ovR18iKoT
	UnE0SdbuaMtYaZXPOaNcUOJA6K/P4IAo8PHDwqy/9094SWy+CXgPSN8LnW1QZM8mcFWaKejbc+xit
	gxLNlWaQurswbsA5eByA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKyUR-0001fO-8m; Mon, 29 Apr 2019 05:06:07 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKyUH-0001eI-9l
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 05:05:58 +0000
Received: by mail-pg1-x543.google.com with SMTP id c13so3596118pgt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 22:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Qj9YETNydjNMQcaIugQ0/y5r8JQ4NukLRy/wJNb8ytk=;
 b=hVUTRFp0/CjfOwfxnBUcCGTbnqyOUK+4Lt2ILJ/bzeQWJawcwGo9GWA3ULufZA2Eci
 K9JLe0UyrwXDsHLj+nGKssSmtwYk3ER1Rp3eDMJ0xpKxzxuUoteVRQrXwJ0Qgx9ctPle
 9FmJ9kLK8yHAFvA4uamDN7gsZZwMTONRx0dBPHUU7IGMi4uQWpuTqmnFO0zIcTcsJ3ur
 mwnpVsqCdGiTjZkoL4ozW4RBbfYYMq7L1+vLgAj90IjA9v4DBYfSNo6Fmf9RVwlbgPtu
 VbhyCmr/yOkn6CxXMmNDxRIL3KqZTyZTuWebHxuZesf7KozLazgpiPjxQrVd/y7Xjz4S
 f/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Qj9YETNydjNMQcaIugQ0/y5r8JQ4NukLRy/wJNb8ytk=;
 b=MXpL1f7ULQf/OXwkFtr/ivdARN0UDo7DxP8ol+eUE2lFkhn+whR/T6CS9XjFKwTPTR
 yczCykqjHpw3QQ/WmbmY2RJz68BxqAY1rwncClQIPcBbbrV0LCJMnaz1SsBcWnwL1hu3
 k+j+YCfD1mG317wIkuSypstWe2R1f4nclh8C2H1c2Jb3G0MF++sTkPDWcyJNr/ay2gWp
 g5nd5UzlnoHX2AD8RvPKB2x+zF1IVszy0y8lUps7xxZZXd6EYg9TGdBKHH9ts1doYzzc
 BFZkMKkgGB4fg0z/HI5UK9y6hRqqgepFe259TWbWbFFQVAEtBK+jIx97YZ8ZKzYvbtr4
 hc9g==
X-Gm-Message-State: APjAAAUIgu8584HHQ9ISAjw53OwXsxrvwi1TgeO7apXclS5sc9+USh5N
 c9SvoAJE5WSVlWofHe/KnswjxLKcUA==
X-Google-Smtp-Source: APXvYqw1TKpJg9tMVsEp86rxyPDhievnkZpDgyM7NvDE0+mu1+HdQ23zPZIL5RWR5Zlk2v6jRIqpLg==
X-Received: by 2002:a63:700f:: with SMTP id l15mr58270358pgc.3.1556514356028; 
 Sun, 28 Apr 2019 22:05:56 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:7241:e9f8:e0e7:64d9:38a4:57a4])
 by smtp.gmail.com with ESMTPSA id o2sm34678519pgq.1.2019.04.28.22.05.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 22:05:54 -0700 (PDT)
Date: Mon, 29 Apr 2019 10:35:48 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Bitmain changes for v5.2
Message-ID: <20190429050548.GA2384@Mani-XPS-13-9360>
References: <20190423153720.GA4496@Mani-XPS-13-9360>
 <20190428195631.qexzfws3uj66fgr2@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190428195631.qexzfws3uj66fgr2@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_220557_354317_4B3DEE86 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-unisoc@lists.infradead.org, arm@kernel.org, arnd@arndb.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,

On Sun, Apr 28, 2019 at 12:56:31PM -0700, Olof Johansson wrote:
> Hi Mani,
> 
> 
> On Tue, Apr 23, 2019 at 09:07:20PM +0530, Manivannan Sadhasivam wrote:
> > Hi Arnd, Olof,
> > 
> > Please consider pulling the Bitmain SoC changes for v5.2. For this
> > cycle only couple of dts changes are added and the details are in
> > signed tag.
> > 
> > Thanks,
> > Mani
> > 
> > ---
> > 
> > The following changes since commit 085b7755808aa11f78ab9377257e1dad2e6fa4bb:
> > 
> >   Linux 5.1-rc6 (2019-04-21 10:45:57 -0700)
> 
> Unfortunately you based your branch on a very recent -rc. We always strive to
> keep most new branches based on older -rcs, to avoid polluting our tree with
> repeated back-merges of mainline to make diffstats easier to parse.
> 

Sorry, I'm not aware of that!

> Would you mind respinning this with -rc3 or so as a base? Thanks!
> 

Sure, I'll send a PR with -rc3 as a base.

Thanks,
Mani

> 
> -Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
