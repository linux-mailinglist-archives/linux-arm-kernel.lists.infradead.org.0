Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8658AC8D2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 17:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flLkdql+xPYsuf6f37PB+T85dqAb0poeFzdex66DW6I=; b=D7HOf9L2OE3B1s
	VfsC5dqPGeCcZZZkr0IUduTLACLzp2v12gKi93Efc+aax0plL51Zb310rSMtcKFTiRFZTfPUWqlJ3
	PFkotxtD6hSuNLPK0m0qY3IgvCczFYyhw7c686WUzfr7Htysape/uJTCyqMHUjlbmscoYA8GMf/Ve
	fq9B+SoIrFyy+gCqr8dUYi9BRA0cjjl0E/iyje025ti1JmJdMP0KK1wg6SYJe5ypZBiO1xkzQwLdS
	v0W0BRqWHIXPZeg58m8HMq4QhQpH/7Ij1eumc4EM1pJr1l0qfJeiIa0aKiYbwV1w4Rleoi1/e7JVZ
	DqaWwFtAmLOJV+g7rYsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFgoT-0007pJ-HY; Wed, 02 Oct 2019 15:45:13 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFgo9-0007kz-3e
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:44:54 +0000
Received: by mail-wm1-f68.google.com with SMTP id v17so7495290wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 08:44:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=P0EZ/+e8qucG/cQYiHJqjOhVj0ZUu3vDLKFzG8b8i9s=;
 b=jtFWRl8V6HfjLmsZMRV+FA2MEGr1otnJ6fNw/taT3SPM4Zl9IVEJh97mLk2RjStp/N
 O+kIgJeIW8mwVH0IxhsxCZYD7Zb+4E/Eb+6n9114tY21G4rXiu0NTPZ0a72H1KYB8W1z
 21X1nBgKmNf76ktkbH6H4+rLLC7HvvG2XmWUdm6I2On7VtHaMEfnFD4KdCoctI5YKQ5b
 SZNgodksBGLubhLRRivll2q9svLzxQEwS/mS8iw0Yvn8L5hO1hekXpoq2O5wH7PTSIX1
 URAfYN2gtaTfPNrX8nmDmq6QnUCJlL3UrcUKT/0agZekvUGVwy6dFdLLDWLW99W5D01g
 /Gkw==
X-Gm-Message-State: APjAAAVNyos9vo4m++kz60Hq3+16mLNEMl50iDiCAcJW/wUGH6kPEKQ3
 sc52BD9netD7Ru5MmLhFwOU=
X-Google-Smtp-Source: APXvYqwb5maeTNZ54okVFennzadNPAKBnKZfrg1xA+6SFQtS7oKo7yiFyyqi8xS+MXyKqTMuCwNHqg==
X-Received: by 2002:a7b:cf33:: with SMTP id m19mr3582106wmg.143.1570031091409; 
 Wed, 02 Oct 2019 08:44:51 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id 90sm3976343wrr.1.2019.10.02.08.44.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 08:44:50 -0700 (PDT)
Date: Wed, 2 Oct 2019 17:44:48 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v4 6/6] ARM: dts: Add samsung,asv-bin property for
 odroidxu3-lite
Message-ID: <20191002154448.GC3469@kozik-lap>
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123647eucas1p176bc817bbdae813e5aa9ab4745f9c285@eucas1p1.samsung.com>
 <20190910123618.27985-7-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910123618.27985-7-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_084453_153181_34AF5FFC 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 02:36:18PM +0200, Sylwester Nawrocki wrote:
> The Exynos5422 SoC used on Odroid XU3 Lite boards belongs to
> a special ASV bin but this information cannot be read from the
> CHIPID block registers. Add samsung,asv-bin property for XU3
> Lite to ensure the ASV bin is properly determined.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v2:
>  - none
> 
> Changes since v1 (RFC):
>  - new patch
> ---
>  arch/arm/boot/dts/exynos5422-odroidxu3-lite.dts | 4 ++++

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
