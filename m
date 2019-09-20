Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325A2B956B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 18:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6LwMQKYKmXzp3B1QtPY71Hf20FZFZceRbAZ2DZCuOAM=; b=WqxnqD8i/KfMAM85wDLBBfdPDm
	1zVDizUx0OKEzUW/shYrTtrL3jafvLxGR8Ji0f8azFFXmK/9LUH66Fr6oQhpvlnW0EcK21is6Qk5n
	ckZoGCTwmY7LFH7xWWLS+xkjP+yNPFmKwI9eFjQdMhbHtvYXHjnH8oQSq8dBMRfOCVK0vsV73CVMK
	auaJ1ahHOWpRfWz7Jtt9lnxhWQ5TAbMA72XZgVlTZY+usJrew8Yqmuvp5MsTgOF4cs7tRI/bBFwgE
	V+f9ev2v7WWAVyOHxn776QVl2ohf8WseNGI8EGLBdcECdE3NccVAZhhJr/tYmahHPxlqLTRqJO/1C
	uRhfbUog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBLgp-0006hP-TH; Fri, 20 Sep 2019 16:23:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBLgg-0006dV-MN; Fri, 20 Sep 2019 16:23:15 +0000
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F05921907;
 Fri, 20 Sep 2019 16:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568996594;
 bh=/gY3eyN/99Vwc+rE/mubQe3N1CXXiv7Fbgs2nWfoFDc=;
 h=References:In-Reply-To:From:Date:Subject:To:From;
 b=I5p+hmb6P8nedLs1fqxO6ODqniyBYw/gRUMEovWLLh1yw3O5O1q0GGiWUqwik8sOA
 J4KQSaEWgWFGD4nuUdpolKf4JfqyV5QNVcdSxNLyi13n+KU9g7P53wBElx8Z0Shnn5
 5JMp4vX8nT/yLz1zQIn2jblCh2b9N7frBmft6TGU=
Received: by mail-ot1-f43.google.com with SMTP id 21so6642308otj.11;
 Fri, 20 Sep 2019 09:23:14 -0700 (PDT)
X-Gm-Message-State: APjAAAWuvABjchhnLGMICJdowx1Km59FHj9fhVPeEoqVPGyVVsnqe0vw
 t+AM+8psRuuvu1VOyfhAu0uWnviC+GghPP+iVs0=
X-Google-Smtp-Source: APXvYqyo+eHqYY+wd1hJeskVQu73EQIp1tU7G1a9ZEYeGtJO8llZMStv0HcB/C9UjvxekPWe0ZjxxZedr3kEHQe+9Lc=
X-Received: by 2002:a05:6830:10cc:: with SMTP id
 z12mr6558999oto.20.1568996593576; 
 Fri, 20 Sep 2019 09:23:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190920162124.7036-1-krzk@kernel.org>
In-Reply-To: <20190920162124.7036-1-krzk@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 20 Sep 2019 18:23:00 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcsSjVoHmCJN_AF8a2gkVN3+kQh4D+J01GnxGmMOZh4Hg@mail.gmail.com>
Message-ID: <CAJKOXPcsSjVoHmCJN_AF8a2gkVN3+kQh4D+J01GnxGmMOZh4Hg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: watchdog: Convert Samsung SoC
 watchdog bindings to json-schema
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Kevin Hilman <khilman@baylibre.com>, linux-watchdog@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_092314_749066_77DAC707 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Sep 2019 at 18:21, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Convert Samsung S3C/S5P/Exynos watchdog bindings to DT schema format
> using json-schema.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Changes since v1:
> 1. Indent example with four spaces (more readable),
> 2. Remove unneeded timeout-sec description and include generic bindings.

My bad, this is actually v3.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
