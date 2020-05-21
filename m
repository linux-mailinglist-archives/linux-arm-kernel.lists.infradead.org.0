Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF7A1DCA07
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 11:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYm5EQrP0vHY6WaeEWphdqRuVzo7CRSJPEmYxnEp+UU=; b=HRoTFSxWkkhZo2
	ArAbetXv5TMmr5VMBbZp7qQDKWqlBZWMukfJu+vQFo/FB2gFfManDsazcP+56gu0JQXIX/WjCvuOJ
	n/R7RuogFA8XiAI/rleyho3X1sKkGAeW36HfslNLQZzzzKnsk+Ej2iaZ2taF3Glp4tTMqU6gs9EfN
	GHbvP4UveyWmj9CUODYFdgw5CIuP8XpWiYwxfRaz2AkCv6DCBgOSKWqCjp+fxLu6sVdWWzwr/XU2O
	5opLE8Ln8pKTo8voHUODR/aCQsCRiroQtnIP7DmEBlKv/d8Naxiib7df6u3mQH4mwaXCa7Ut0OUPa
	glFxlNqJQew2/XWZI75Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhXt-00075R-7c; Thu, 21 May 2020 09:31:21 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhXj-00074I-7S
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 09:31:12 +0000
Received: from mail-qk1-f172.google.com ([209.85.222.172]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MYvHa-1jXHgK3LPc-00UqjZ for <linux-arm-kernel@lists.infradead.org>; Thu,
 21 May 2020 11:31:09 +0200
Received: by mail-qk1-f172.google.com with SMTP id 190so6618656qki.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 02:31:08 -0700 (PDT)
X-Gm-Message-State: AOAM5320hvamLpUGE0JPb1ZHQ0ZU0FKH5lalHC02uL+lzKfX6AQByVNk
 9ahXwTueKjZL5QuK7qc8MreFYRRUeIWN/lqTlqs=
X-Google-Smtp-Source: ABdhPJzbgF8kpiHY8jbqJbvHdKF89SdmVVSXNL4nMi/iekVliG7vUiFck8VHCIJH+/J+6YUDtXi2c8Eovdt4IzQ+dlw=
X-Received: by 2002:a37:434b:: with SMTP id q72mr9455175qka.352.1590053467616; 
 Thu, 21 May 2020 02:31:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200518091222.27467-1-sudeep.holla@arm.com>
 <158999823818.135150.13263761266508812198.b4-ty@kernel.org>
 <CAK8P3a0bx2eOFSqM7ihNkJBWU_KKSh0vGJZZdvpkH=1nppingw@mail.gmail.com>
 <20200521070629.GB1131@bogus>
 <CAK8P3a1h1MR4Mq2sSV_FDUodrfaKRFtyOuOOGPWAbPYbzjc4YQ@mail.gmail.com>
 <20200521075755.GA4668@willie-the-truck> <20200521081055.GD1131@bogus>
 <CAK8P3a3dV0B26XE3oFQGTFf8EWV0AHoLudNtpSSB_t+pCfkOkQ@mail.gmail.com>
 <20200521091736.GA5091@willie-the-truck>
In-Reply-To: <20200521091736.GA5091@willie-the-truck>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 21 May 2020 11:30:51 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3+AjykQpVFcyM9ht9T7FwHGcwSOH3GGo2ziaQ1mpesoA@mail.gmail.com>
Message-ID: <CAK8P3a3+AjykQpVFcyM9ht9T7FwHGcwSOH3GGo2ziaQ1mpesoA@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] firmware: smccc: Add basic SMCCC v1.2 +
 ARCH_SOC_ID support
To: Will Deacon <will@kernel.org>
X-Provags-ID: V03:K1:ko+MiijbzzeG+nWHbJuUu5AD34qLTbCXggZFsyWzh2XGpv0u3VW
 GtNM5c/j7rizIuQrgw+ntrI0NOCurS8uD2ufjhR/IRvl7dhQtKt9NbcgMrqGNIuD+JqdTH2
 zwW82WjaleY63mppIjTXifJHhSueD7kpCp4j2yl+E22JA1t1uJKvJ6pta5Ms3ENOW0TgTjU
 FY/BGI1QTaayB+raTdPlw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Fa5ZwnajJKU=:jUE/lNHOTC+NPzNJvYFl6h
 2EvRZu83tL5oO3wMJyEV0Ep2yLGk7OIGHoPuWWt7NnLdmCZonrFT5kR7TmVeD4yCdJEneyh7v
 ea69YMQrR+i1DWWkgLryiVUXVnCBEkBmgHLD/B5wauLUf5Wi0yrINWEuNM4GSRK3JFq7dov+i
 HpwBtj/TJS3gZ87c7K1uYmFhT4FuzVJGVSJhOGC2oMhneVlnr4uEdFaJfJFRLXsPx/E4RLwir
 vQXebZVGBXF7Sdhh+DJNHf9Zd7c2BZ+/RJqLHsZ7Nyj201WLX210zWveBmFITwr22d0u9UO5f
 cyYgtG4s8wssvppPbY4NXv4sqbqzkWmV+PX+ncul22N9UZK/ofvgtH92fK8TFfZCtIpS5Fy6K
 MsjtDvrslW16S6EiTeTXPUGKm9Qm+lSe/ASUHL4KlXflCXUc5ntPoHHNm9Dub3ftsN5329FwW
 zR/fRU0pENY5yFGaZqxPSKBLUlRa92odWw5DHuc4AprWAOjjMnbw01sLqfHsojIGnupMv9DU5
 9SygAurU0k4bVinFO9eRxwxTcN0tDO602zYSnn5Lil3/HqXeHHEu2Dl8G0Mn4Um89ysTGWKpr
 NUv+Xxo1d5Ub3kIlVGhB5aSJUUt/sMOD1c+FJYZf7X484aAsuCHMDFxQth0CofjhLfRGLGx6w
 rdQPuzyF2FOqczWI38TRq/o0eTEJUaMZ4tcWxdUCgCG8npb5feKVORPMIAHmbiEYDur2jp91C
 waTSMOcidsKoHdIzPDnC2wtORjLhmKGmHRgCZDU0LF0/sJXtjMENPgkEQc+J3xS6EmjO0sZup
 5OpKKJagFdn1+ypjWxMkAjA7z9DSxXIAVPSKOsuziUCRzpCsBU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_023111_557677_232A1F63 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 11:17 AM Will Deacon <will@kernel.org> wrote:
> On Thu, May 21, 2020 at 11:06:23AM +0200, Arnd Bergmann wrote:
> > On Thu, May 21, 2020 at 10:11 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > Note that the warning should come up for either W=1 or C=1, and I also
> > think that
> > new code should generally be written sparse-clean and have no warnings with
> > 'make C=1' as a rule.
>
> Fair enough. Is anybody working on a tree-wide sweep for this, like we've
> done for other things such as zero-length arrays? If so, I can start
> enforcing this in the arch code as well (I haven't been so far, even though
> I do run sparse on every commit).

I've done some work on that a few years ago, and there are always
some cleanup patches for C=1 and W=1 warnings, most recently
with an increase from Huawei's automated build testing + manual
patching.

I have not looked in a while, but it always seemed to be somewhere
between "too much to do by myself" and "small enough that it should
really be done" as build warnings go.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
