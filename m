Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E8C5E979
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5KXBQ+Xs6m/Om7+ZIX92xG/QKn9/JQOqBxtla9ZqjA=; b=jaMbJTiiZh2KDA
	XRvNY9E+2VEtiagvmfVO0AaK6SgjaPOtNCz8b9XNKYJmCF5H2vAjkm4vUTt5e/GH3GaOcHMm2qUUU
	bEf2CEdbymRa5iaEe0A18WOtIT1WMKfBlbjht6Y9SuKZjEhfuHP0jl8wO0NAfBkU+MaMdGGtzUN2S
	6s3KQzHfBXY7YooNO7GwkF8lg2AcnZ8bzCwe4h8blExH7+JT1r687m9UeYUjg9uU3KOwGmZXwds/a
	yp3746XsdiYouBHB9ktn5p1RMIGHZvLitnnFUd40iOTUGqtqbzZz50KMojJuJ1TREacJ0zhuZqIJX
	EGF17t0XfiYH9V9VOEXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiOg-0000Hn-Np; Wed, 03 Jul 2019 16:46:18 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiOU-0000HB-3x
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 16:46:08 +0000
Received: by mail-ed1-x544.google.com with SMTP id k8so2735148eds.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 09:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=08FT7ddsmk9tLgvVvr2oQycyQXe5HFBk71BAZ/FmXUk=;
 b=TWa4pc2EdmtLNNbcdyQZTBp7Y2NNRNhRU25KJV9GQNIpuMKkvzYyNvnWH7nRRamPjb
 /caum6h7iO4vYiEkff6fwK5UakxNxnG7joCZz2ztHg18jvm1EzUT1MVhQUAdq6q6nmlh
 82j59LytSemhPZWkaRojDdtxLTfmB0aT4QJc8vxqebnnxqkcQ6Wtz6QBDJXsWnnofHPh
 2WF0ehgVKHOIAaLQ6W69V8wxdHlaBd0SOTcldZ+6dWpo3IR2VBG8l/WRdWfnpOcQFk7Q
 KkRJJkh4BFNw5XmVgmjlpoBmP5BhcLKyzDbmUjJ9zdsbCCnt6JHPtnNQj0qqrIbVFNEh
 aSng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=08FT7ddsmk9tLgvVvr2oQycyQXe5HFBk71BAZ/FmXUk=;
 b=ZfAstdwoWQSqjA576HFSwSf63yIvLx/Wte9MmPM5dmkL6z0v5UBSwtzPgaC3rGy3eV
 xdTRHGzaocxC29glqISPJSERVDr3wfghDH3RMlordYZPIPJl8tl3sCaJi1A2wXkiw+Zq
 oTTGb+mI5yMP+kCAbM0wzClppfzHSNphBx934jNmEMFPxTt+2vNab8zEdJLRE9Kin1nG
 b2NY0yI5XTY6TQSU1tdxNEWS2ap6fSPQzur+upnKTth3rYm56OtYnP9k0hNtRJ6wmZMa
 hW3GQsRCq11F+4uykgPP3CvT7PNggiBr69btED9IzJ6ZzL3RM/rGUcrKMdgu4Keg6ASW
 YIrg==
X-Gm-Message-State: APjAAAWoc8K4dUC1yNWitwo8qGqSl+UaiZrlESO4GRbNF/AU8efAQZUl
 FlWmUhXqPgmk0nXyv93plp4=
X-Google-Smtp-Source: APXvYqyQneHl9k0YePcXIOIWu0hzBiE7uHghqSPjYIrF6KJ/fdAgv7pH7XVLT+Hdo0nRWBLT+8kdhg==
X-Received: by 2002:aa7:c754:: with SMTP id c20mr43184865eds.265.1562172363746; 
 Wed, 03 Jul 2019 09:46:03 -0700 (PDT)
Received: from localhost (ip1f10d6e1.dynamic.kabel-deutschland.de.
 [31.16.214.225])
 by smtp.gmail.com with ESMTPSA id h10sm845881eda.85.2019.07.03.09.46.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 09:46:02 -0700 (PDT)
Date: Wed, 3 Jul 2019 18:46:00 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCHv3 0/2] Variscite DART-6UL SoM support
Message-ID: <20190703164600.GA9261@ripley>
References: <1559839624-12286-1-git-send-email-oliver.graute@gmail.com>
 <20190613013830.GC20747@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613013830.GC20747@dragon>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_094607_146775_03FE776F 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 narmstrong@baylibre.com, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/06/19, Shawn Guo wrote:
> On Thu, Jun 06, 2019 at 06:47:00PM +0200, Oliver Graute wrote:
> > Need feedback to the following patches which adds support for a DART-6UL Board
> > 
> > Product Page: https://www.variscite.com/product/evaluation-kits/dart-6ul-kits
> > 
> > Oliver Graute (2):
> >   ARM: dts: imx6ul: Add Variscite DART-6UL SoM support
> >   ARM: dts: Add support for i.MX6 UltraLite DART Variscite Customboard
> 
> It's already v3?  I did not find previous versions.  What's changed
> since previous versions?

The first two version you can find here. I splitted board and SoM part
according Neils and Fabios comments.

v1
https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=59259

v2 
https://patchwork.kernel.org/patch/10748361/

Please review the latest version v4:

https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=137257

Thx for your time and patience.

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
