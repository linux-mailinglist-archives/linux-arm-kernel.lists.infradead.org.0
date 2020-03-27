Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87908195D21
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:49:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHVktoxO2MVb+qER4yfy8pyluIUMth+7rjxu1NssDL4=; b=ipf4fG3aUlAFjH
	6Nf4WKnS2TRkKjWoOJ9r/WPy0+GIl1Syh4fr8mI82zlbwykq/3Xr/30yWXO6ejcr8+iuuQufDCiit
	lWoRKjO/0WBnq/Vw/rJHDOUrFRwgWjfpUACU6Cf4eHNDvhD/8Z69PMh/b9x9RzY78CRd6Bcvxzq8u
	GR2m4TGccHDLpKxVLC8WtUhI3DC0zxa79husYh1x5CL5yZNvBvjwrnYldE3S5smKPrSYK2x0i7VAD
	0Lt/HR3AWtcCYbwCv5/uFSwGELaFtiRRgDSt6qBfNxBl5Bb8JSoDEjIoE+s0uwR6U16wpbIrttDZK
	Uwxpgvmc0x0lI+AUS2pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHt6G-0000O6-Jq; Fri, 27 Mar 2020 17:48:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHt68-0000Ng-Kb
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 17:48:49 +0000
Received: by mail-wm1-x344.google.com with SMTP id d1so13300923wmb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 10:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ahItD5ciKQlH35hkuZa9rsjTTheAXpNOZVWcDd0E20Y=;
 b=Nhep4Mv0Ct5wh4tYFff+xDjvhfee2zYaRMnPgSPjcib1z6wOJALzhhNrSp7vtOSzim
 /50aB9L7BEsDjtBO6dCXY50uEsqW9IZGMoyu0t+TJ3yZyz38Yeh5mfOruWQW3MSn6luC
 Cak3tRDx1n5xrS4Gi0PyJpLugknQEBeGaHr5jmJxLJknJJw5T0TfSb5ZrXHV4kHqWawj
 q40zxiOcKCG+tcrmmuwiPVmb4yZNZtGh6pDowziZfZ8cfFrzoqW1Yqg8f+Y+QfYl7nn0
 dcbsAzGu6wVFHdWHjCjsrInt/OqECzACb2Mp12aGBHO8yaaLjIHdr4ZESrP22powmxB8
 74UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ahItD5ciKQlH35hkuZa9rsjTTheAXpNOZVWcDd0E20Y=;
 b=jgHpx5qFEdB/eT9IND2W1qdGOdB+fUgFAuEz/EzHPPr5LZVm0gFhvU9BZY/Tdf+B4H
 2Sm7joMHGew9H/cRN7mRBFtJtpy9q1/5gFbYYb4ro02PXQ0jlY1Qj/SwwxxARqriv/QL
 LQ/XbGPufx1SsLTbVek16PR2Dy/Xzyg6/+nHpCgGvmXTm9X54xI86HAq8jPGk9K7TMzi
 gbvkRN44h4VbLlgvOrs49lJ1O/aMBP1Q3tZlHq1PvWSsnvhYwFH/WcH13S2xO/yzNY6U
 bw56o6etDgIoep3Zw77KyAGQHCQ4mITVQTk2sBeqHfF+NveQv9d51zUnCJyiqIXsYSdi
 ryPg==
X-Gm-Message-State: ANhLgQ1UAn6zlb9H2DtOdZeSwaAAhmsCk4UoGEOjt3s585WZ6cPgYPxt
 SjAI399s1izWqw36dRX1+7Njqw==
X-Google-Smtp-Source: ADFU+vuj6jzPUh/Z88x9sm8cEUTuPhAXo/pdaIEKP0x+19gSf3BxmtaPc3dTBP0v3lRurwkOFeOKKg==
X-Received: by 2002:a1c:2c85:: with SMTP id s127mr6493410wms.18.1585331323915; 
 Fri, 27 Mar 2020 10:48:43 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id p10sm9508117wrm.6.2020.03.27.10.48.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 10:48:43 -0700 (PDT)
Date: Fri, 27 Mar 2020 17:48:38 +0000
From: Andrew Scull <ascull@google.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [RFC PATCH] arm64: unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
Message-ID: <20200327174838.GD178422@google.com>
References: <20200327143941.195626-1-ascull@google.com>
 <1705907b-234c-6f56-1360-f598c8047d1d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1705907b-234c-6f56-1360-f598c8047d1d@arm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_104848_701766_FA1CC14C 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "qwandor@google.com" <qwandor@google.com>,
 "qperret@google.com" <qperret@google.com>, Marc Zyngier <maz@kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Will Deacon <will@kernel.org>,
 "wedsonaf@google.com" <wedsonaf@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 James Morse <James.Morse@arm.com>, "dbrazdil@google.com" <dbrazdil@google.com>,
 "kernel-team@android.com" <kernel-team@android.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "tabba@google.com" <tabba@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks, Steven. Could we look into the EPD* caching microarch details
Marc was referring to for these A55 and A76 cores?

If the behaviour is the same as A57/A72 then it sounds safe. Otherwise,
there'll need to be some invalidation to avoid that issue.

And thanks for the pointer to your previous patch, it's a very helpful
reference.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
