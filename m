Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21158B279D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 23:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CechNZyfaHnLA15W4kkvo2MQ2jZ2h8dNU+N7sNKb0Os=; b=Wow59saq6x+nYR
	ynPUVpGhmzkJnCxyxUsizy2XIyzJwP1ZHui5y8i8N2i8Wlc7JNVLkXuKCyKmsCXnU3HTrabMJ+Rqk
	sszMkjujLJAimLE6vwIcXq85QJCKOfOL6b7kGdNWIDgpCs8hOs9ujPhC+w2V40MzDi9eWQBiG1UXq
	wMWl5zxjOvfNyoeeDZ+XVeE1gl+QBVFdHjOvOMbgohPUYmxFjG9LWzNhjPQ36BKiCcXjEJZIRwEXd
	6j1ASB2QUlf9S1B/F+1QfXzh0MHvKLFwAx6M3Z6Lfzjf1r59Aykt9p+JT5/6jpYAQeRXVlVIyz+AU
	FfznhFqP8sD9Ok6Y/kDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8taJ-00077N-KN; Fri, 13 Sep 2019 21:58:31 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8ta0-00075h-BT; Fri, 13 Sep 2019 21:58:13 +0000
Received: by mail-oi1-f195.google.com with SMTP id w144so3910509oia.6;
 Fri, 13 Sep 2019 14:58:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=AQ3PXKKEYAPpTNJc/PTOp8Ob+kx8WcDFX3XJj1y+xiY=;
 b=PtDFfACV1nfQYbgKbGBPqASqnkORZyMpCtCBHYpqwUQpbzg1qmQqRo6GzHvU8uz5XQ
 K+LJY/rlfYYTbxXHFMtWrqqwrN1Ab08RX+MP32TEOYvV9CAxfCpiHscHy57BckgxmInO
 cGzFIma5f9hwRWC+fpmvxgB7cNHAf5vRzcdaEa7V+/W3ypEEgvmGOxqaaU6x1ZPifsKZ
 cS2I9dCppO/4ZK1qMmxOqeRQZEIPp/t/SpwySa9WSgHmSa2u37btIauzq3ZPxm1yWihJ
 AfKiizJn3E9oz0gpVWEuIz6j0Gni0DyN0umaO1EeFlN7a7Fh/q8iBT0q87UOSggIP59P
 n/7g==
X-Gm-Message-State: APjAAAWPFpy8lCRfEyqoBWq4j7Kq3dEXAUNV0y3b2eyjZfDnz0xFGX/1
 w4jrtqT82KcbEhK/DFReSw==
X-Google-Smtp-Source: APXvYqwcvObB3Yb/Y4El/uikyKAQB52Tnw3hLnBRUoI7ZLHlgxb3ip7OrKPwaxSV60bB8sfAR8RFlA==
X-Received: by 2002:a05:6808:b19:: with SMTP id
 s25mr5498975oij.126.1568411890436; 
 Fri, 13 Sep 2019 14:58:10 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 34sm11938701ots.47.2019.09.13.14.58.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 14:58:09 -0700 (PDT)
Date: Fri, 13 Sep 2019 16:58:09 -0500
From: Rob Herring <robh@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v1 2/2] of: Let of_for_each_phandle fallback to
 non-negative cell_count
Message-ID: <20190913215809.GA11833@bogus>
References: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
 <20190824132846.8589-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190824132846.8589-2-u.kleine-koenig@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_145812_395572_C5FD9DEF 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 kernel@pengutronix.de, Matthias Brugger <matthias.bgg@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 24 Aug 2019 15:28:46 +0200, =3D?UTF-8?q?Uwe=3D20Kleine-K=3DC3=3DB6n=
ig?=3D          wrote:
> Referencing device tree nodes from a property allows to pass arguments.
> This is for example used for referencing gpios. This looks as follows:
> =

> 	gpio_ctrl: gpio-controller {
> 		#gpio-cells =3D <2>
> 		...
> 	}
> =

> 	someothernode {
> 		gpios =3D <&gpio_ctrl 5 0 &gpio_ctrl 3 0>;
> 		...
> 	}
> =

> To know the number of arguments this must be either fixed, or the
> referenced node is checked for a $cells_name (here: "#gpio-cells")
> property and with this information the start of the second reference can
> be determined.
> =

> Currently regulators are referenced with no additional arguments. To
> allow some optional arguments without having to change all referenced
> nodes this change introduces a way to specify a default cell_count. So
> when a phandle is parsed we check for the $cells_name property and use
> it as before if present. If it is not present we fall back to
> cells_count if non-negative and only fail if cells_count is smaller than
> zero.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/of/base.c | 25 +++++++++++++++++--------
>  1 file changed, 17 insertions(+), 8 deletions(-)
> =


Applied both patches, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
