Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A8A7D682
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yC8tCHKT7JfldKEGRw/twun7khvKSxGr+oTpwf4gxU=; b=jl6dpehsxCxFDd
	9mhsbAHsk+mVK+y7ckIBn7fa7z6thWgp1Ii83pcMF1uCMofWaYocoMTYMOYVpRRAWQb2TX4X5TVK2
	kJjV8KzGUU6uRGlikDKzvc3ecZJXk6QnXAXE2TIK+O15cXBV/pHywA/dgCmNlBYfWYn6wQgyYJePB
	G7mRHJv2KalqLulUoFc2o50WevDce4vpfOfpS890BpLR1sFDJF/FQQE/XdQslNcLsPGhCFsLR/Xyf
	XAB0l1hBjDJDYMWAyvmyHDvhNGl2AtGSMXijOvhz+50vYlsVUmQAMaWeadRKlK/RHscPNDv18GeeE
	p2/rfTve8UzD7K2BgqHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5ia-0005Gx-9c; Thu, 01 Aug 2019 07:41:44 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5iQ-0005GR-Ek
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:41:38 +0000
Received: by mail-pg1-x543.google.com with SMTP id f5so24849890pgu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 00:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=stRY7i1GZrfY6D+PTgs0D4UrvfUCsK1idtnpqO9v05A=;
 b=FIzQTHdYyzbSF4UXVeIZHy3ZAwIm6WNjJ/7SFU/GqKhukmbYUPc5uoLrynWLyUBJVb
 fRHC5adeqiJFVkCnJcahOseTMZ7e2ZkBrgl6yzcXksAwGWJhQu+I8pPcCuRU+gQJMZrt
 6zWlCDe679nJhA/Frtiufn5nm9bM8CDM32JZOhtmzzcvNFyU0tW2INMvtpZKKuJlNGB1
 Z05sWFHKHngzHjtuXq+dCNMtQE/y0N5oT7ENpWnZjy2HUF3NgPHY0YsXwrYwcAhAhbfK
 BwVZloDwEUKpWfOLiuawIFKfuHlNJKEVWD08Fy5DVw55YcQkMA1MTyaNgn+YACVYM24+
 I9QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=stRY7i1GZrfY6D+PTgs0D4UrvfUCsK1idtnpqO9v05A=;
 b=VYnjSERdqhdDXVB5iJDJF5REnGFVJ28rysWW9mA/rICJysgk2fQ57lFTRixn0bUdgy
 I5QRLZWtc1XLR2apkw7m+4jPGfGEfYIIGRP1O2xaqfBwljfFJWhuOFxQOWwySrzD246t
 J1/JBWxr4Z0ZQxw4VIfXvXWndvKgpbOQstOwIe6wVj1RA24IkET+HUkciP4C4tC3pWQL
 WJC+wpBVDZKzC3gHP8bEyTkIfvQS/mQMD+aQUX28nOu1NJRDIeKdiSAORsu6JhVGN09V
 SAru3BrpOpi4RyTB7WqC0hnRpkyF3OAUqu1yEbB+bLqHaKqZvkl6La4yLK3OnFGgC5ZY
 w+4Q==
X-Gm-Message-State: APjAAAWt9WknOconpT4VuBn4O4hqcDVFfuh5c0+aSljnzmpG2IaaTyqS
 hcNloFawisgoetIg9gRA2LhwOg==
X-Google-Smtp-Source: APXvYqyjrB9ZTQXX8An99agwlE3etMrgkqcBgU4z6N9t7CiNe210eVe0fuU/nEZOBJMkJFfzCzTgfw==
X-Received: by 2002:a17:90a:228b:: with SMTP id
 s11mr6888100pjc.23.1564645293756; 
 Thu, 01 Aug 2019 00:41:33 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id u97sm4101405pjb.26.2019.08.01.00.41.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 00:41:32 -0700 (PDT)
Date: Thu, 1 Aug 2019 13:11:31 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4.4 V2 25/43] arm64: Move BP hardening to
 check_and_switch_context
Message-ID: <20190801074131.526h5d4hwpxutlq2@vireshk-i7>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <f655aaa158af070d45a2bd4965852b0c97a08838.1562908075.git.viresh.kumar@linaro.org>
 <59b252cf-9cb7-128b-4887-c21a8b9b92a9@arm.com>
 <20190801050940.h65crfawrdifsrgg@vireshk-i7>
 <86354576-fc54-a8b7-4dc9-bc613d59fb17@arm.com>
 <20190801063544.ruw444isj5uojjdx@vireshk-i7>
 <20190801065700.GA17391@kroah.com>
 <20190801070541.hpmadulgp45txfem@vireshk-i7>
 <20190801073444.4n45h6kcbmejvzte@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801073444.4n45h6kcbmejvzte@willie-the-truck>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_004137_272891_59F61C7C 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Greg KH <greg@kroah.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01-08-19, 08:34, Will Deacon wrote:
> On Thu, Aug 01, 2019 at 12:35:41PM +0530, Viresh Kumar wrote:
> > On 01-08-19, 08:57, Greg KH wrote:
> > > On Thu, Aug 01, 2019 at 12:05:44PM +0530, Viresh Kumar wrote:
> > > > On 01-08-19, 07:30, Julien Thierry wrote:
> > > > > I must admit I am not familiar with backport/stable process enough. But
> > > > > personally I think the your suggestion seems more sensible than
> > > > > backporting 4 patches.
> > > > > 
> > > > > Or you can maybe ignore patch 25 and say in patch 24 that among the
> > > > > changes made for the 4.4 codebase, the call arm64_apply_bp_hardening()
> > > > > was moved from post_ttbr_update_workaround as it doesn't exist and
> > > > > placed in check_and_switch_context() as it is its final destination.
> > > > 
> > > > Done that and dropped the other two patches.
> > > > 
> > > > > However, I really don't know what's the best way to proceed according to
> > > > > existing practices. So input from someone else would be welcome.
> > > > 
> > > > Lets see if someone comes up and ask me to do something else :)
> > > 
> > > Keeping the same patches that upstream has is almost always the better
> > > thing to do in the long-run.
> > 
> > That would require two additional patches to be backported, 22 and 23
> > from this series. From your suggestion it seems that keeping them is
> > better here ?
> 
> Yes. Backporting individual patches as they appear upstream is definitely
> the preferred method for -stable. It makes the relationship to mainline
> crystal clear, as well as any dependencies between patches that have been
> backported. Everytime we tweak something unecessarily in a stable backport,
> it just creates the potential for confusion and additional conflicts in
> future backports, so it's best to follow the shape of upstream as closely as
> possible, even if it results in additional patches.
> 
> So I wouldn't worry about total number of patches. I'd worry more about
> things like conflicts, deviation from mainline and overall testing coverage.

Okay, I won't make these changes then. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
