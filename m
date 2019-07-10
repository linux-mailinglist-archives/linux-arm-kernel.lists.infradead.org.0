Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852B264B30
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 19:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4d1Sz2pJJGtZtzoXDdPxH9W1jC8C4FC90+fivMyn0M=; b=q54u3rZbfWjPU7
	YBr8ASkkQi8Rv5TnpIkFkTkZG+AxhyUNbq9060LwnqA0hA9AS5iWjxiCnD7xk5cZdAxTxOgNMtzEh
	NJqA52N0BjcIYm4BMT12rALvvD8gfrh4fwL0QnJIwDfYtYV/z9nnSg4WqSslEMgJihPjP9h/8RHkA
	+1h7a3VkgUXHXIFBhBLwovqmIXdl6w8g7m/r3C8cD5zw0/UFQjJ0dgRqQaTmiCMIGfWEDzIbrDdTL
	cdXwAtjI+a4ak8iHCydlWDKSILLOZ8kW6aGsKS/YZlx/3dqxcO8y9vuQG55sViAXrZbnokfrO1gDd
	i2GEefvjpzinc2qHEDAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlG1m-0005Ti-BU; Wed, 10 Jul 2019 17:05:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlG1Q-0005TN-0S
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 17:04:49 +0000
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4EBE020665
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 17:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562778287;
 bh=km9vPhTYYLcAIVJu82GKQsQYAIy+sydY/n0IPVosDgc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QEdrpaFHEh3zW9nuvHZ2o0yq4u5FY9FL+bVTPcBgZUHm4q/qQAxpw8MsX+rC4tNe8
 nmiubxPig3xHGBJxnnEDuewzemKphiwkiqIPluplYGE9HBxTmKssI2IJNqKwpxFm7N
 xGnFqer8J+u7KD4dmyfWWG/ZMt1mJyqMYso3iU+Q=
Received: by mail-lj1-f171.google.com with SMTP id v18so2829251ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 10:04:47 -0700 (PDT)
X-Gm-Message-State: APjAAAWaTAMPYRLFtueBLMVqCVoc0fjg2sD1pg19G6XMSMPDmu/Itz0o
 T/YUoQYF7vQXea9R6UYelAp0J61yfj/0aGSfKvU=
X-Google-Smtp-Source: APXvYqzfmGhkpnNV2qvF32P4a3uf1qBrtt+rh5QtV7zEQaa2I7op29+r7aQ7NFhCLGgPnbKn++N3IYyRGjYZWs6YKD8=
X-Received: by 2002:a2e:6e0c:: with SMTP id j12mr17994402ljc.123.1562778285653; 
 Wed, 10 Jul 2019 10:04:45 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190708141200eucas1p144ca3b2a5b4019aaa5773d23c0236f31@eucas1p1.samsung.com>
 <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <20190708141140.24379-3-k.konieczny@partner.samsung.com>
In-Reply-To: <20190708141140.24379-3-k.konieczny@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 10 Jul 2019 19:04:34 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfWr-2t_e3f6oi7E6KLLRAbskzgEKz26XyK5n_9C8wV1w@mail.gmail.com>
Message-ID: <CAJKOXPfWr-2t_e3f6oi7E6KLLRAbskzgEKz26XyK5n_9C8wV1w@mail.gmail.com>
Subject: Re: [PATCH 2/3] devfreq: exynos-bus: convert to use
 dev_pm_opp_set_rate()
To: k.konieczny@partner.samsung.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_100448_068964_9BA1B306 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jul 2019 at 16:12, <k.konieczny@partner.samsung.com> wrote:
>
> From: Kamil Konieczny <k.konieczny@partner.samsung.com>
>
> Reuse opp core code for setting bus clock and voltage. As a side
> effect this allow useage of coupled regulators feature (required
> for boards using Exynos5422/5800 SoCs) because dev_pm_opp_set_rate()
> uses regulator_set_voltage_triplet() for setting regulator voltage
> while the old code used regulator_set_voltage_tol() with fixed
> tolerance. This patch also removes no longer needed parsing of DT
> property "exynos,voltage-tolerance" (no Exynos devfreq DT node uses

Please also update the bindings in such case. Both with removal of
unused property and with example/recommended regulator couplings.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
