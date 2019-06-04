Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D66133DAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 06:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duoA/9c1LE6SUfibYY15d4ApbgwM6w5BGhJuGo0N82A=; b=Pol9OCMEaJ911s
	FO9egxyi02+3fpJT7OKmn5KrzjEmGMdaSaK10s3o9FFKQRPpmC9k0HKu4v2jxlnblcpxNp5Dey7Y4
	DG/kMAH8TVCjaYuybbun9a4pYsUbsG7x46ETSD3JihI1BVBzT4AzBhN0Uai3wCK77JD8Ybz4wKbz7
	nJxd0Bj2LkwKFFPdHfxEp6LH/cUkOwnz8gufyCiJGn8GzLFtsyBxdZHCkvMU6QphNj+sJ4EHmR2Rn
	9uNr2ejDg3RUFDpk9Q0ufBW+B0rLLTSV86gmOEcjLEOoLaX32BTbt9Gw36AhVyISWVkmuRVVtVzSd
	8Hw0wJ1gXAp3Uf/TjyGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY0ff-0003UX-J0; Tue, 04 Jun 2019 04:03:35 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY0fY-0003Tb-Op
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 04:03:30 +0000
Received: by mail-pl1-x642.google.com with SMTP id g21so7802901plq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 21:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=f+q8eC1oiPgskruXaD+lspZshT3DmysyCU4e5tlyJjQ=;
 b=PiqMpK43hy+ZR1dHjSMjo96+17tuIuN5HH32kvTcLbSyEtz417yLi/xM2Vwho6JqM4
 1lGnBHIw8zkZJun7qWrPkc2vbORsLIlvB2I/4P0zndCq3csZylWmWq+7zA4RpaZq5Yx/
 zCjR21x2u0bOtrwfKymJzTptoNBTTv63izIHleLACD+2Eud5Nq2GtoejJY+ZW8/zzzrv
 WllsQ9qulkia+37jLN7algupIoPuUy7/VgtNbaY23XAOfmKrzObetXyXz0xtP/79W5Bq
 mbSHWqZACJ7FBI1aaUDsg2YH9Aj6Magje6JiHRHoyGRJx1snURU3rjECHPe32HcDYO3q
 FHtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=f+q8eC1oiPgskruXaD+lspZshT3DmysyCU4e5tlyJjQ=;
 b=NofvYri8Pi3DvCEDsXbI+jcT/v+2e72YyAYQLy8wcSCXYDCmBUz4Z6C64r74YD7Y1h
 ZYlB6Ae0zyq3dzFTR7aezopkAUHxUVjY/zShpc8ZIxEwZcZQu6PvnDgyWn7fPKQ9LI7w
 SPiQ1o/YQGiTNcDl9f/AzJwT76RoNyScS8/0Tj9a/1eAruFNNaDOvfQSf/HvIiHWZkYo
 nwokhxvO3a666m5Izz9i3201ntJiaKSX51CoOcNikF4X8r8RtA3g6K3S58dzBjNxSqTK
 Xxy5GmPKJheHZdxndtHAJDGu0QnnsErs6+5pZzJDogh4WL8EGMmj5yQvv9YXcLh5W14m
 f0VA==
X-Gm-Message-State: APjAAAXcSlfh91PTopatONQWQ6Ogjr1hM+Zouv/sbPuyGncH32T5FICq
 Vqv9YzrhNL5PIc2WgUAkCmVlow==
X-Google-Smtp-Source: APXvYqwiYYNeL6yX8LBntiessg9e2/wQoMr5l0ZNyv/tZHZlDbqLoD3Gv+ai7+HDa9fvLwX3+pDpFQ==
X-Received: by 2002:a17:902:f20b:: with SMTP id
 gn11mr34004883plb.126.1559621007496; 
 Mon, 03 Jun 2019 21:03:27 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id m123sm16735468pfm.39.2019.06.03.21.03.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 21:03:25 -0700 (PDT)
Date: Tue, 4 Jun 2019 09:33:23 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Markus Mayer <mmayer@broadcom.com>
Subject: Re: [PATCH 0/2] cpufreq: brcmstb-avs-cpufreq: Couple fixes
Message-ID: <20190604040323.vzunculbiqgkemrx@vireshk-i7>
References: <20190522184547.31791-1-f.fainelli@gmail.com>
 <3734641.73qX0VsHyn@kreacher>
 <013ec7c0-0984-cfc9-ea3a-0180719f5ac4@gmail.com>
 <CAGt4E5tZ1YLbtCDJDXTTZrH5S4Jmw_BVOfz+i-KF=TUjA=yvkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGt4E5tZ1YLbtCDJDXTTZrH5S4Jmw_BVOfz+i-KF=TUjA=yvkQ@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_210328_945884_80B10CFA 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS CPUFREQ DRIVER" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM STB AVS CPUFREQ DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Markus Mayer <code@mmayer.net>, Brian Norris <computersforpeace@gmail.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03-06-19, 12:55, Markus Mayer wrote:
> On Wed, 29 May 2019 at 10:02, Florian Fainelli <f.fainelli@gmail.com> wrote:
> >
> > On 5/27/19 3:51 AM, Rafael J. Wysocki wrote:
> > > On Wednesday, May 22, 2019 8:45:45 PM CEST Florian Fainelli wrote:
> > >> Hi Rafael, Viresh,
> > >>
> > >> These patch series contains two minor fixes for the brcmstb-avs-cpufreq
> > >> driver.
> > >>
> > >> Florian Fainelli (2):
> > >>   cpufreq: brcmstb-avs-cpufreq: Fix initial command check
> > >>   cpufreq: brcmstb-avs-cpufreq: Fix types for voltage/frequency
> 
> To both of these
> 
> Acked-by: Markus Mayer <mmayer@broadcom.com>

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
