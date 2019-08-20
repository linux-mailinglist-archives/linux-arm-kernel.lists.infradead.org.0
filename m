Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96061954B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcacDXZUaDNPghH1J0TKiUmWkJOPCeGI9mS91I+9TVc=; b=FNCVc/3tK6zMtx
	zaDMqJZ+sWI0Zqtasqiu+TM28SkCh07kdmphOHtsYg99/s4z0vHjmN1HP8oBtlc/w1PdiCRtjEKa8
	SjRnSVk6HKJv9lhjDjXZ+Osh0ZTeiq1b5K363YiBZSWAjsoQwOGFQU34gKk6dBarhQ6INWMybJVWR
	PbhRTdQJoaK7ef3WSilwmwtR6zUyZNw97F45ZTtlDKhN4Ee/WmKqLpO9Ko2C1cx0aVOh1sQxbAlHU
	9ZjCmntG8c+yE7cvNMK6/fsrVpu33XnoKST50kpX5JA45YQ4IREtHTHOqt0+iufWTg2La/T16ZHy0
	2dn0TuUTkEwdvdimfadA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzuOs-0000fT-4Y; Tue, 20 Aug 2019 03:01:34 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzuOf-0000eh-Bf
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:01:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id go14so1958374plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 20:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HcHMT4PO4aRPYDjhgvvcGFKWPsyZ2i/AKZp147gpb5c=;
 b=viL6XfoedAqOcc/HJQnJMBOYsdVq2vOZFFWALl/6A16nYkuuAVsJHbhTaeECSJc5Zz
 hzWGJA4gfwyZsEad9v+PIB1172n7T7M2E400hAOkUFPq7Aj0uLS9A2YAxUNLe+T4PG1P
 ABkkGE50E/dJxcxRzf+07PFLDwK6NkNCEYKsqdIgZ5vS36/b+subF11lyZJMf65sycaw
 u3kl8jnMdCK9+9ljUmJMs3whQ1VMAS9LC5FYZ6M88g/URRNO9ehEkCjJ8gb+Tb+aCwUz
 uKKtx390D8iHg3JeksxQPB1bBKqsL/UtWOkxjT6NZSJBiGilrKbGyRK5uYO6GABTo56l
 VZqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HcHMT4PO4aRPYDjhgvvcGFKWPsyZ2i/AKZp147gpb5c=;
 b=OcymjVpCuJ4n3kP687azsFIHclgNjiOI6gopLq0NwBp9mKrGNcMb7ZLZ7dDiCHSC82
 y/A0IAEtMOQNFtU8BdzJtDFY+ADImvPKkJmJcU5GrGXgHNZJN9tHGhlw1MtUZvwFSIW7
 84qujQTsWYNaWLQ25zp8AWBmbn6alwPtnZrbWPqERD7G37CQMj1OOjNFJEQcJ2tE3rd/
 JhTfPZb/IO5o/MdfHDelrcBAX1e7xsFOiQRbzcUX58pqrOek/31z9NPfR9GnPJaUH9VX
 CvXANGQR5o4++IRnl98QR3KFmxkyEjKMh57e7lq+4ukP48jUiBbq7wO9Zni6RyKTLrlC
 2efw==
X-Gm-Message-State: APjAAAWotaxXp+0zasbn4+xybGpmkEoDZ6lj+mQMlk/uoUXdnRKMmPvm
 jmaw0RLqmsqqov4uZnBeV8jFCxKXuOo=
X-Google-Smtp-Source: APXvYqxt17woC6XIhk4kgcxthGKuzkZCAMPDaISXnF4cF6l1VR+/21W6CcuyWj97AkLWty58n/BIoA==
X-Received: by 2002:a17:902:54d:: with SMTP id
 71mr25255114plf.140.1566270079363; 
 Mon, 19 Aug 2019 20:01:19 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id n7sm17609938pff.59.2019.08.19.20.01.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 20:01:18 -0700 (PDT)
Date: Tue, 20 Aug 2019 08:31:14 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 0/9] Exynos Adaptive Supply Voltage support
Message-ID: <20190820030114.6flnn2omeys3lih3@vireshk-i7>
References: <CGME20190718143117eucas1p1e534b9075d10fbbbe427c66192205eb1@eucas1p1.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190723020450.z2pqwetkn2tfhacq@vireshk-i7>
 <5ef302a4-5bbf-483d-dfdf-cf76f6f69cee@samsung.com>
 <20190725022343.p7lqalrh5svxvtu2@vireshk-i7>
 <562dd2e7-2b24-8492-d1c1-2dc4973f07be@samsung.com>
 <20190819090928.pke6cov52n4exlbp@vireshk-i7>
 <b831d7c5-c830-fd65-20cf-02e209889c28@samsung.com>
 <20190819112533.bvfyinw7fsebkufr@vireshk-i7>
 <b7093aaf-ea56-c390-781f-6f9d0780bd8e@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7093aaf-ea56-c390-781f-6f9d0780bd8e@samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_200121_429931_3A09A6D5 
X-CRM114-Status: GOOD (  14.18  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, pankaj.dubey@samsung.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-08-19, 15:39, Sylwester Nawrocki wrote:
> Unfortunately not, the patch set as I see it is another way of updating 
> an OPP after it was parsed from DT.  OPP remove/add could work equally 
> well in our use case.

Adding OPPs dynamically has limitations, you can't set many values which are
otherwise possible with DT. And removing/adding is not the right thing to do
technically.

> The problem is that we have the information on how to translate the 
> common OPP voltage to a voltage specific to given silicon encoded jointly 
> in the ASV tables and the CHIPID registers (efuse/OTP memory). 
> Additionally, algorithm of selecting ASV data (OPP voltage) based on 
> the "key" data from registers is not generic, it is usually different 
> per each SoC type.
> 
> I tried to identify some patterns in those tables in order to simplify 
> possible DT binding, but that was not really successful. I ended up just 
> keeping whole tables.

Sorry but I am unable to understand the difficulty you are facing now. So what I
suggest is something like this.

- Use DT to get a frequency and voltage for each frequency.
- At runtime, based on SoC, registers, efuses, etc, update the voltage of the
  OPPs.
- This algo can be different for each SoC, no one is stopping you from doing
  that.

Am I missing something ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
