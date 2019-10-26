Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C52D1E5771
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 02:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqlp9dPoFA6maHtl85dYX66vaeki1Nl96GokPoB50NY=; b=imEmxGbN3jO+B0
	kCfc5C553DlUDXNA5ilmqqjhPI5Od/Ygl1580azbFrY44UgF7vCl1afJ5GzzgyoyfoN1o8K9Yu1Br
	batcexJmZHBY0Mk44SO6/DVvDGYQPJwqCDykapOKQd/PaDsWEo04UT6FD52w4Zqx1vvQxd6H1cjVt
	zmxVPEmAN2XnM1ERt5ACR5li4VQ2Sbhl7FkB6zoEE7NbUYH1DtuG1cEFOtKOl4hGdMUw90HZrPsMY
	5I9K0qlc/IjNzwjlyZGmH4BLb+XFGpIko2gNhupfwdlYlFrfXRXNHmK6d46w6nPLIds8a5KiGRRTs
	IJXSPcIpjRwi8cbct+Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9ky-0003OO-I3; Sat, 26 Oct 2019 00:16:36 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9ko-0003Np-WA; Sat, 26 Oct 2019 00:16:28 +0000
Received: by mail-ot1-f67.google.com with SMTP id u13so3268395ote.0;
 Fri, 25 Oct 2019 17:16:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=maK3FFwJzq/lCZMAegdLHsYC4aagUrxvxTswIaSlOUU=;
 b=Z90VZHlkSkJ/gaaC+bPmPnncSrSPetZd+XcBVZPXX/3XiKOPINXchFddWtG1IyDWVU
 MPqIPyW70IodcDpNQbwwC4wZHs/NDa1QierLJagYiwR6+KaUhjWHeyBKmmsnX14f0Xu6
 hxqtM/qf0FAOiqJccvjKmkjSL6vrCEpPA49BiL1OM/uRssKgIocr3ytMWKVktDZEgs1e
 7b5MjCq9Coy+0mrynW0s0yC1J8qJmHA0M4ZJi1aZEeTFDVq+GSPKoSHFlkgEKGoJpKmz
 FfNIU+Qtn1kBGqQbAdK3aoZWhzaxjO+GzZnF/0TV1ym43J1Cl/i4NLrgaoF8cZYArArf
 xzFw==
X-Gm-Message-State: APjAAAVncSOJATc9l2tt0oidWoXNL2EBHJ7OHiT7DvTa/F2FZUT3xNXu
 wU6e+X2YFDQnq0bfbPQSeA==
X-Google-Smtp-Source: APXvYqyTvYVQL2eSr8VqPZVVbg+Et1I+b3zYBzX7DsBds5oAcRAE5Ipdjzk1F5veI5S8s66doEkyeA==
X-Received: by 2002:a9d:7d09:: with SMTP id v9mr4909005otn.292.1572048985772; 
 Fri, 25 Oct 2019 17:16:25 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o5sm1228079otl.73.2019.10.25.17.16.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 17:16:25 -0700 (PDT)
Date: Fri, 25 Oct 2019 19:16:24 -0500
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH v2 02/11] dt-bindings: reset: Add Realtek RTD1195
Message-ID: <20191026001624.GA4883@bogus>
References: <20191023101317.26656-1-afaerber@suse.de>
 <20191023101317.26656-3-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023101317.26656-3-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_171627_034051_EADAA50E 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019 12:13:08 +0200, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Add a header with symbolic reset indices for Realtek RTD1195 SoC.
> Naming was derived from BSP register description headers.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  v2: New
>  =

>  include/dt-bindings/reset/realtek,rtd1195.h | 74 +++++++++++++++++++++++=
++++++
>  1 file changed, 74 insertions(+)
>  create mode 100644 include/dt-bindings/reset/realtek,rtd1195.h
> =


Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
