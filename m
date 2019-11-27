Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5DA10B0B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 14:59:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8f1kbV40KMlIV5ga2HrZRaIwkws1Zh+BpaiDGlxgtU=; b=Tv61Ma6PZXYJjr
	1aZIGB5rTV3H3OPYgX4+mXLq3RwVg30U/pLfR+YYljqN6mLBD1CDi5v3N2YTLUlMd2TDumxvZC3JK
	RCkYWVkEsJUEqQl7PSVuxe5VnoHJMEBeSkTrRXEVPf1f2fhEw66MUWyRaKGwZ7TsSy2gui3xKd2pe
	nXk2jgbYDtPdt8oyJ5IB+ymQ8Lea2gqbe6NTXs5ncYgY3EvZW6inGdsMzG1ETyO6D+Ng2JC5NIEP1
	6AV1aoAMv2gNPuIyV+TQe6kh+dXMOERsAT6IgUTF8pOG36DsrRkWjkzJd8UZNrSMWDmeKNTvINKWu
	y7l2Bgd5VR8P4Ge9Ntmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZxqc-00068p-02; Wed, 27 Nov 2019 13:59:14 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZxqS-000683-DN
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 13:59:05 +0000
Received: by mail-vs1-xe43.google.com with SMTP id m9so15246974vsq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 05:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gAq++vOmWlGE0rfhdloa1GAF3bf8ceEKuBq/5jw6JRM=;
 b=autV2GM15bvqwiA+NNcmk4/aTXU/HSFEF/5su4++BbyqM9TTPEl160Dl4aSSi4PSHx
 7dEzEqyacVs+yewRvnBZ83UHqscNkWGpzMcJWLLLi+QCkk1xhjhnBlxejNfHU/qVmTuj
 T8igdSS/tZRj5c7YLCT4H6AYMtIaHIBwPBfL+kI7kHRiUmSNwFnRVIFTZRS1Wyt1h3R3
 cyqBUvI2GSXDWeDlgidAaqloDquB80gWY3CD6nCyEEBi1JxlLSFZcsLD22SLWLifDTD2
 +z7R1ny87pHoyTM6Q6jqCBqMtdOrTs+pljEMTkDmflCfHXKg6KEMU4pBGfyFDHpkZxXz
 MSgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gAq++vOmWlGE0rfhdloa1GAF3bf8ceEKuBq/5jw6JRM=;
 b=UYJvTJ4I4Tk13KG5rAYb6d+aDY0JfqKtgiCEc96Y8/NRyFlKQR9IJR7m7Z52zbeMSx
 oXPCfkhyUwNTUhBp+SUwRJC/6RziY/g/c70liGoM4SjV04FWlqmdO6iIfmEhoa6cVwQS
 XHM3vCI0f/KV07IklzXsretygbWV0r2HtvNn3Pebv5aFehEvDz1q5sb7UouFxVAkhfFJ
 Qmi/e6Hu2iWJcI6QzTpU0Tr3qEImt73IZ4bJ4zG6rb+53j6J3Xkp6HufT7ybMX4uvmO3
 Hx8SX9SeP9xhtgFUztCGpg72r/Oe9LGXrF/JQyqdUjNaJXLO+smhS5WmVLltYIT4ILrb
 TXng==
X-Gm-Message-State: APjAAAW+ruKQ3IW6Qx3tfVqMMXrIhVkdqHIjN0iQNV3vonN34vuSIDTM
 gjPO7uRHjGxauIfxOf0vCvdStpiDxHF8sYj4F5QKhA==
X-Google-Smtp-Source: APXvYqyf8H0dROBB9bvOXaLHvIe1OfTnJRLDLNL9AnIDcuNOVVLHNLEtVlUz2d1I4D3NhQ2ISu26ZnJQDRyo/JcRIiU=
X-Received: by 2002:a67:88c8:: with SMTP id k191mr3366250vsd.86.1574863141682; 
 Wed, 27 Nov 2019 05:59:01 -0800 (PST)
MIME-Version: 1.0
References: <20191124195728.32226-1-stephan@gerhold.net>
In-Reply-To: <20191124195728.32226-1-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 27 Nov 2019 14:58:50 +0100
Message-ID: <CACRpkdagXoVamNGj6hQ-0YQAoDpwTVOY8uUCVB8wwsXY9aQj4A@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ux500: Add "simple-bus" compatible to soc node
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_055904_482267_3588A159 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 24, 2019 at 8:58 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> The "soc" node in the Ux500 device tree does not need any special
> handling - it is just a simple I/O bus that can be accessed without
> additional configuration.
>
> Therefore we can additionally describe it as compatible with "simple-bus".
> This can be used by platforms to probe devices under the soc node without
> special handling for our custom "stericsson,db8500" compatible
> (e.g. in U-Boot).
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
