Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DC46A7A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 13:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPgcZi1xVvbpvX96AExrae858qO0kJucZJ8PxSbcCZo=; b=YZTcdcbvDSXcUa
	y7dlRjrcvXPFtXNCfTQRXAZm1zVy2q+dqbbc0hVGJxNrXKNf0S8xt2enIN+LEgUG2NILxsgmIEO9/
	rP9srpBvtOXictfSQLMjSBqdREXfjKYz1Zzbq53WXZftFKmb0KGM62RBjkrH3TJ8PfdmkdPuukMUl
	NHlm4DxFjFgRLqR3NdAGCEcGJYUmF4dyKW1moEZb5CHeBC6jAKUaSdcMGpNpYQG3HtBmcmPtGGUUY
	2fADDPS6/dG30eBoHE51AOI0T6hpoC5UmxWlJeXUYsnK9Ym7fHhOSgAlbBunOQ7IqTyMixsu8R7ch
	Ml/59cTNmISzT47AHUTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnLvv-000779-Mj; Tue, 16 Jul 2019 11:47:47 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnLvj-00076Y-7p
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 11:47:36 +0000
Received: by mail-pg1-x544.google.com with SMTP id n9so3102674pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 04:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=qPnqoEfs2c2FJiT2itcjWmfJK1RsKaw7z2dBi7iQTJ8=;
 b=GWz4yv38B5GHtENqY4vKofVQ91e0o/Wf3To5Ps1dYZG0HD5Ek2EHO2Dc7Ow7eTInF8
 6V2Ylge8TO9m/bByMpQYgvAJMrZvdG3hSLoe3le3WrAf4DJkafN2xpBGM8XjRxts22Wl
 fwEiPyHbfrkm6UMLSuHMn/gd7z8YK8aSErG8WB+A5roIC5O0ZPZ/6GMpagTh5qiyB+K7
 yG6MrQ7ON432Xy90IZVQ3KnMcyWz9iH91bIQQjqhHjYLmAxiZwGFc9kDORakmYFFow9m
 dvKHxsEKn/ChfEWmG3TrgmHbJEuO1ziKFvpkOF6Z/rwgSAH09LcgUIkZ09KBkugy6xrh
 5rJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=qPnqoEfs2c2FJiT2itcjWmfJK1RsKaw7z2dBi7iQTJ8=;
 b=bLSB05c2TleyBsTX88IvjV8UlGaAXAK6il9P6db3SulFsX63pCpb3LiFjrX+6GrErL
 ihyGNuMtBQmDkrRDHCIpQK0TJneF2Rp6Lj0V0oC612K79QNQ+7tKHoJciGCTLrfTYW8H
 YPHuf5MzOE1JVoG1sjj8ZyCEohbIA0Y4sH3haZm5k1+XD+NVk6ww1IMPFgnbIR063u2C
 NOcuG1fRJBXZOjkvp0jho566ynQVn+/IHBpxZ8G9cxFeJfWg7lwT7icmogukhp1Al5wC
 z71wGBZJLGmEeqpwn1KjXutpA+2l5IEIW/W+ltGWPRgtB9vFXE6Ov3dwTQQY92PSKRYF
 NioA==
X-Gm-Message-State: APjAAAVdbjmdx3sEjYueBO49dWqrRdHXCghfYRLKmcWWNnloFV+VYl4V
 jVAlDvU5qvLO4BcKl/3fwY4=
X-Google-Smtp-Source: APXvYqzHZwrzaDAsguaX2IsIyUiWc2RXpFglPckISYDzHT896XmmxWdI422IRFIGhq+LtZkupLz2ig==
X-Received: by 2002:a63:60a:: with SMTP id 10mr2299610pgg.381.1563277654138;
 Tue, 16 Jul 2019 04:47:34 -0700 (PDT)
Received: from localhost ([203.220.8.141])
 by smtp.gmail.com with ESMTPSA id t10sm19804313pjr.13.2019.07.16.04.47.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 04:47:33 -0700 (PDT)
Date: Tue, 16 Jul 2019 21:47:27 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH v3 0/5] Add NUMA-awareness to qspinlock
To: Alex Kogan <alex.kogan@oracle.com>, arnd@arndb.de, bp@alien8.de,
 guohanjun@huawei.com, hpa@zytor.com, jglauber@marvell.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, longman@redhat.com,
 mingo@redhat.com, peterz@infradead.org, tglx@linutronix.de,
 will.deacon@arm.com, x86@kernel.org
References: <20190715192536.104548-1-alex.kogan@oracle.com>
In-Reply-To: <20190715192536.104548-1-alex.kogan@oracle.com>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1563277166.m9swqogbqb.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_044735_309030_C1F271AC 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: rahul.x.yadav@oracle.com, dave.dice@oracle.com, steven.sistare@oracle.com,
 daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Alex Kogan's on July 16, 2019 5:25 am:
> Our evaluation shows that CNA also improves performance of user 
> applications that have hot pthread mutexes. Those mutexes are 
> blocking, and waiting threads park and unpark via the futex 
> mechanism in the kernel. Given that kernel futex chains, which
> are hashed by the mutex address, are each protected by a 
> chain-specific spin lock, the contention on a user-mode mutex 
> translates into contention on a kernel level spinlock. 

What applications are those, what performance numbers? Arguably that's
much more interesting than microbenchmarks (which are mainly useful to
help ensure the fast paths are not impacted IMO).

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
