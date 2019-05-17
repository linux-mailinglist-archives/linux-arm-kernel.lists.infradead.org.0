Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3872120D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 04:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkGadwjZslCmFd/Ahdq2LObQRosW8hUK0KBGIx2VpuA=; b=BC0EoKNrwnU8rE
	uMFXuRdBwoEN/AzNPTsNg7AfKfJmlhNNWQXb3GkKji3CDt0yAhoM0nDGKYRJWS2f/b3T9gVSMgS7U
	evYzZn/NoSzwDzCWH9S+YzDdIqSGd1WzE41RuTKvLDdyt3VD/B8wYQvG5Hsu1PDo/xL4XAVn8kq/i
	FPitmwipWJzZYlGea4awaM0UZkQZt9agFCF2NnmK+PkvPqrdNnHUJwe9zindZHZSNLyztyzJpWDpY
	L3jyHbvbvVHv7SJR7CgtuLFlRHG4H+Mec/9LGJudtLbuHheYvVJPhmIvoc1+qMZp/qP1TY1vMclAp
	+kI2NgaDhaMYZGmut3Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRSej-0007y6-BS; Fri, 17 May 2019 02:31:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRSeb-0007xd-Me
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 02:31:26 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37F6B20862
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558060285;
 bh=2+A5A1BXytEqa5zIBoSTMI9tuxv/jN00Tdx46eTZmoQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=yotMRwZ4W+solrrj1jYJMw6aVU6pgmrP+hLdtSkoG2pvNu1ymuBA8jw/nH6faKu7W
 lRFoyTnwZIwhW2JC8aqjOfiZOwLY1z+0uMpcUxYb+N/8ZFTAiOB1gGlyk7qN6KrgYk
 aRqW/7B7ygh/P8TE3AWOe2aUlC33OuSyq6eB/Rig=
Received: by mail-qt1-f171.google.com with SMTP id y22so6372983qtn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 19:31:25 -0700 (PDT)
X-Gm-Message-State: APjAAAV8mKCREBpXQ9oZ+e8gwOSs0ubx++vn8aU9mphAE3/p5J27SYeC
 lxJSHwvS3XqAiU11AllcIBzmRei58TC2KqGdsw==
X-Google-Smtp-Source: APXvYqx/rQhhXbs3Zm1ZaazZt73ewsKquxIsvA5TGLe4WlO6glcLO4+7Y8HWssTf0uDrB5YLL8uyMOMq6PTvVt3CsaI=
X-Received: by 2002:aed:3f5b:: with SMTP id q27mr44580598qtf.143.1558060284526; 
 Thu, 16 May 2019 19:31:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190514132822.27023-1-angus@akkea.ca>
 <20190514132822.27023-4-angus@akkea.ca>
In-Reply-To: <20190514132822.27023-4-angus@akkea.ca>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 16 May 2019 21:31:13 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+p_Hu5hY3XGx168iq8jo+-rD1qu8tbGfQdBXASi7H+mg@mail.gmail.com>
Message-ID: <CAL_Jsq+p_Hu5hY3XGx168iq8jo+-rD1qu8tbGfQdBXASi7H+mg@mail.gmail.com>
Subject: Re: [PATCH v12 3/4] dt-bindings: Add an entry for Purism SPC
To: "Angus Ainslie (Purism)" <angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_193125_757003_EDDB15E6 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 8:28 AM Angus Ainslie (Purism) <angus@akkea.ca> wrote:
>
> Add an entry for Purism, SPC
>
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
>  1 file changed, 1 insertion(+)

I've converted this file to json-schema as of v5.2-rc1. See commit
8122de54602e. Sorry, but you will have to rework this patch.


Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
