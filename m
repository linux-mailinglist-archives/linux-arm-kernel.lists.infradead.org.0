Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313602005C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhfMf2Ufgnodlhu3axo0B3tc0NKxUNvhBoCJKvLn1Kk=; b=jP1U/XiZmryTbC
	8mICiebikkXz8PCDA0vg+DwCmwGudCdPI3CMD+YNr8DOFh7sNUGSX6OXiP+A/wNcjsTJT36FXqEl8
	PWpwWM6GcAvPIMOCzZSGrfp+ozLrI0Aj92ihFcTfCD6lHZjEReLCYloa6D7TvhIY6mZmWyCTeDFQV
	5hf5YYE/F2ac2yDyUspGnON2jfmIBrHfmRf0HQ+GCc/1So5xED0Qk8zJvE0COwUBS93UgCg3k2Gzq
	B6QHTUB5Ig8WPsrzTpAH4Yls6EBDIeZTS1l3fvnDOck2wTlk64VZi6NN5EyOxX1x0fxw1+DBc8m8Y
	uhXhU5VCFGHia2pe03Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDgq-0005is-0J; Fri, 19 Jun 2020 09:52:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDgC-0005Ph-Ip
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 09:51:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id q2so6616725wrv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 02:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LnPwgU2Ku49ZJqPfwVOOBQKnYQ6yhIFp57++bexGok8=;
 b=FJ9xI3Wc7r4gcCFA8b8VjMefoKs5sNRH3+a0+UgRIipP3eDy53lralSiPmJ2KKUFPg
 c8JE5injQrqn5LsaHztBYGk8O4wl0wTfZQ6+qhNUY9qhfFCkv8b1pnDv5iH18Xdm0WMi
 eKKFHQDAzU8UZiB0zYkRR1sUz5Gv/fxVnDv6KD3O75/BkpcJa/5+cnKfmquBjd4ldZ8H
 LJ8RPvIoEisWbDMTOmgvM92LnIDCMnfxSjjZWuGO3e2YkGQhBsChs0Lk1ivwcgtZLQDx
 bXA4SH/dgcKnh9hM7Rtsy7wMH4IVdnpAo8z8gw8PFBje6DFMogBezcJDiPBM088rzVZl
 vegg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LnPwgU2Ku49ZJqPfwVOOBQKnYQ6yhIFp57++bexGok8=;
 b=Tuq5hcavl98u2VI+B79Y6fTQDR8ywk15bSnT3EhnQO/B9VkvXVyiWg5kI4VA8YRqvQ
 W1quE1+7bFRaqIF1snTvwYFGWnDmUZ0nuKLzolRuRNjQpKTcdXULtbahphV4x9D2EgR2
 l903s975tn2WfPo8ERD8qzn4oGM8Q63M76AsGBjdKERO6HF734hFM7YjZVX9kh2CIUOy
 Ci+hZkHzpWOjsgKcZ7rn8auRK0ZGaQ090LRsMVGS9qOcuuKVREs3fG4RFHgB7Isk5ub5
 Ce5N8DPEiV4x5l8gzHp7INkShBh4kgEd4vTJIuu24h5VWwf95X2SC3Ir5uKlvPGMuZr7
 YX7A==
X-Gm-Message-State: AOAM530QILBdWqgTPBJ3ytNN/Lo3naIZQ/hUK4LJq7u5EbGyd90jK52O
 Xljl1I7+R64phARXIeQMOPH89A==
X-Google-Smtp-Source: ABdhPJy/P5GyQ6zftQjFqjZk4Eo0bUBjfqGjrRHEc55ESeQvI7/VsuC7NR2YjKFzBIldf4CGa6pbQw==
X-Received: by 2002:a5d:67c8:: with SMTP id n8mr3139455wrw.343.1592560282184; 
 Fri, 19 Jun 2020 02:51:22 -0700 (PDT)
Received: from google.com ([2a01:4b00:8523:2d03:d994:d48b:4a9:7c2b])
 by smtp.gmail.com with ESMTPSA id n7sm6628302wrx.82.2020.06.19.02.51.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 02:51:21 -0700 (PDT)
Date: Fri, 19 Jun 2020 10:51:20 +0100
From: David Brazdil <dbrazdil@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v3 02/15] arm64: kvm: Move __smccc_workaround_1_smc to
 .rodata
Message-ID: <20200619095120.wenkbs5bl3wbyiyh@google.com>
References: <20200618122537.9625-1-dbrazdil@google.com>
 <20200618122537.9625-3-dbrazdil@google.com>
 <02322fdac903aa1786c334d0ddd7f38a@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <02322fdac903aa1786c334d0ddd7f38a@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_025124_643863_B46D1247 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kernel-team@android.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 android-kvm@google.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Marc,

> > -	.popsection
> 
> I'd be tempted to leave the .popsection in place, if only for symmetry  with
> the initial .pushsection.

I removed it because other .S files don't pop either. It must have been added
here purely for the smccc workaround code. Happy to add it back if you prefer,
but the pushsection is removed later in the series, so this would disappear
as well.

> > +	.pushsection	.rodata
> > +	.global		__smccc_workaround_1_smc
> > +__smccc_workaround_1_smc:
> 
> You probably want to replace this with SYM_DATA_START (and SYM_DATA_END at
> the end).

Done

Thanks for reviewing,
David

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
