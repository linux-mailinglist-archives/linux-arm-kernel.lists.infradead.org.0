Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0234B70324
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 17:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dclrl2UBEvghIuThwUITikBeFC/Nb4clQsNTHTvggdM=; b=fHyqcD1AXmyF32
	qsgk6vL+c+AD/97bgaSFXxOogu7mmWLUThAVbNxSEdsXlzirIL6q4EmP6pdVfRmSj0N/WIolvRJsI
	a87n9kxBnCvfdUjWSC+kT+D5E3q7ROmqCjuMAxwX3f8T59XhO8nZlFN2LvjcJT0VDnLr8A2TOywXk
	vaaDRmhdfwGaZ9EBom4PA3rFbzDda1h4p8/nfRC+LUHDHhDoksx3t+ckF87BcV9Ma1OSRG5tst9Dh
	ItrNP/eWctWgNI03EPT0/HOYUSHpYK9KgYxgUvqgnfs85L0XlhRhfLoa5d1ViiM5LUdOXBuEN6Kp0
	B2zImhLJ3AzvUrxaRT7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZwJ-0001Ui-7Q; Mon, 22 Jul 2019 15:09:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZvy-0001U9-Ss
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 15:09:04 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C9E6321985
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 15:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563808138;
 bh=UQWsGLdVRsvcxhCicQBhe6YNMoBGdFuYxN4YWFD+D30=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sq5JWRV8CrAc7R2Ja6iTSMJ3Bou1MjIoCmR+9poUxR+nlFakbaHzy75cUxXucbPiz
 23lYAF+zHZfetHUNlReWr56nE8aE6LHIkkVqfNQLVfrZIlWtvi0vPl+e/WYpmd6cf8
 f/Zk22UidrvKbCPSeM8ySjunESR7WBTsx87T8Gy0=
Received: by mail-qk1-f182.google.com with SMTP id r21so28890176qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 08:08:58 -0700 (PDT)
X-Gm-Message-State: APjAAAUZqo1poWmoGh+itsQeCyXdTT6/w9Vh4iegWRAJi5YRDmCuwIW9
 CV41F91zZm5GuZP3TswUE3o0uQW/ZuISIaCWOg==
X-Google-Smtp-Source: APXvYqwtCD5goKriRZ3YbphoGZCOYxJ56Kr0AKrjbE+K6u4y5K4Fa14TSVMPIafIZixsuvMNIJxnv6CK8cAOZkjIlpM=
X-Received: by 2002:a37:6944:: with SMTP id e65mr43415102qkc.119.1563808138073; 
 Mon, 22 Jul 2019 08:08:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-4-maxime.ripard@bootlin.com>
In-Reply-To: <20190722081229.22422-4-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 22 Jul 2019 09:08:46 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJtGWthjrSEpqVUypzPOHxRZGhtWi3PHCtJQS61BoAw9w@mail.gmail.com>
Message-ID: <CAL_JsqJtGWthjrSEpqVUypzPOHxRZGhtWi3PHCtJQS61BoAw9w@mail.gmail.com>
Subject: Re: [PATCH 04/11] dt-bindings: timer: Convert Allwinner A13 HSTimer
 to a schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_080902_952491_565CDE4F 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Chen-Yu Tsai <wens@csie.org>,
 Thomas Gleixner <tglx@linutronix.de>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 2:12 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The newer Allwinner SoCs have a High Speed Timer supported in Linux, with a
> matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../timer/allwinner,sun5i-a13-hstimer.txt     | 26 ------
>  .../timer/allwinner,sun5i-a13-hstimer.yaml    | 79 +++++++++++++++++++
>  2 files changed, 79 insertions(+), 26 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/allwinner,sun5i-a13-hstimer.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
