Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C05542FCA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 15:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MDB5K+fg1oMSxNZLWHcCdAhCt1pwRoEJcVE9qIc51BA=; b=L1V13072HmdkOW
	QpXSFHyXtinJW7r3XWNvIczJXF/0iH6qszHEiuA08WUidUuoaJ/c3RWBlPhK9iHvt3oF8JTgYXMLj
	/YrIPEX7MgxH4C9XSa3ndoenqmLd3MBOJuvp01hyEVPwZ1nJQGsbavYQaiazaJ5WzVzxNKzxrGxME
	ib5GWZC+hIi7ELziOSiJyK2pidykl5KYahONhAhIsAzxCj43AC32dRzaftWdqQCB+FvXwMuRD5DiW
	T1rbdzi5YMu+DTBrvyRoRzpn3rXDL3X+/xqWTb7qjNJvsc2YDVbSzJl+3P7lgoIzLChExnbaxUayk
	uZ0YkX/r9AcrKDwTo+aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLPw-0005f6-AS; Thu, 30 May 2019 13:48:28 +0000
Received: from mail-it1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLPp-0005eX-I9
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 13:48:22 +0000
Received: by mail-it1-f195.google.com with SMTP id h20so9936860itk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 06:48:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f4rkyvetspz0f+UlMWFdOOo6R1mEg57wlesDPAijXPo=;
 b=XEEqqfFokXxepyZTxdW3Js3CHiZTi4Mj3slLqD9QtUOd649KjmH0/bWSHDy/L/AFtz
 az1eYqli6hvlFJOBbPR/dwIh1PhTw3pFV0NH7okfjYu4NnUAfoV5eenKXjHrnZ83dR5A
 0qDsEpH+7FOCi47KUhH7i+FQJ/GFiiw+um668s79zPml8kEB8NpAickTU4yeBCl37k2/
 9uuqxc/uO9ybuRmR/+wyi1b10jRGwcr3lgykT9FAsjfdkFWvLt+ml3zyr1yo7UNxzZI1
 0WaAz6ayV+NQrASpFL5fSwpbAeuRj9Xocc9E/INZ0cAOly/XZL4CUKDuv+N72/yKUF4A
 ubXg==
X-Gm-Message-State: APjAAAVJBi3IAiRz0xQ4FtZFd9aunif3jjFEQbNms4qsMCJ+4erJl0Fc
 ntHEk/PRjGMHo5T2qnchcZzNqVlU
X-Google-Smtp-Source: APXvYqwSeZFkU//G4YHVr7Mldv8tSNUgEcpPrzNI0qL2xkV1X1qAsS26l1kQzeovd1A9z4p1LlFqug==
X-Received: by 2002:a05:660c:105:: with SMTP id
 w5mr2896539itj.37.1559224098950; 
 Thu, 30 May 2019 06:48:18 -0700 (PDT)
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com.
 [209.85.166.170])
 by smtp.gmail.com with ESMTPSA id v26sm928859iom.88.2019.05.30.06.48.17
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 06:48:17 -0700 (PDT)
Received: by mail-it1-f170.google.com with SMTP id h20so9936616itk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 06:48:17 -0700 (PDT)
X-Received: by 2002:a24:91d2:: with SMTP id i201mr3054942ite.88.1559224097044; 
 Thu, 30 May 2019 06:48:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190527120910.18964-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190527120910.18964-1-maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 30 May 2019 21:48:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v66uhrm20BwmODkPZjSM6Ek+xEg23w2Cs49ikW3WcU1Lqg@mail.gmail.com>
Message-ID: <CAGb2v66uhrm20BwmODkPZjSM6Ek+xEg23w2Cs49ikW3WcU1Lqg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: Convert Allwinner DSI to a schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_064821_598402_1F3D0515 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sean Paul <seanpaul@chromium.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 8:09 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The Allwinner SoCs have a MIPI-DSI and MIPI-D-PHY controllers supported in
> Linux, with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Looks good to me. However not sure why you replaced the clock index macros
with raw numbers.

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
