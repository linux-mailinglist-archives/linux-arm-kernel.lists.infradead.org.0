Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE09111B15
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 22:39:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3UYBAJNIu55kaorHDf5W3plFUGgGOZ2d+fb5LGF9Zc=; b=CjgkaagaE/qnzN
	3SuWAqBdWGhBngNCA/SIQKHUQGzyH+2bFyTzIhtDn5T9pYAwckkO2amLG/xf0RdV9heiin30r+DOT
	zjev2RdhLR0m6sXFI0l/95TL7yZ9TUVpvB9agyC2DEZ4F3SLSdoo+kfzH5FIDpw1XmHhO4sGaDS7T
	7VbCftsedjevlE2wamG2R/xx1wI2peHRYBzh8EDnNmb0hN3DfM3/dyZdwe/orBkR8CrfJhq7rqteh
	EtgiZ9do/rsJ+hB9wcNPSLtnJknl5WQvtR31Vpo7cs1z4zh7dCVfJYw10foT7x5Yk/kXYvKTpjCtf
	SJnI8TcKaaHbXOXCwLDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icFsc-0007nw-6L; Tue, 03 Dec 2019 21:38:46 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icFsQ-0007nY-2K
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 21:38:35 +0000
Received: by mail-oi1-f196.google.com with SMTP id j22so4805679oij.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 13:38:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+da6B0jmMyrdi3GDw/H4jStaTbThsKFt1wFsD48o1f0=;
 b=oPJCvHTmnvMThSiVGnzR+7tHq2iY30sVqjCy18YiTAAJZqQ03TX/pRDlUwthnOy85V
 +bokTPlPXmmK1FnuYdFs4XO/b7o9YD+SfAgizDpArEq5nbmP4+WPP/lpVGHOJ+56VjzY
 NuQ5PDUEip9zuT54kA2lyqQ5zT0ICvMGtqvdmxsGUbkfgDzmz2Cnem8MDPQjbpFynpPQ
 ow6mJjEfQJeJmGU9Du1xDkVUF46YZLywWITxZL7183VdEzFIf8GRkJAvKhIjiP2ppU/q
 CYZGhsOkC5RcF5zck2indUYacHe3ow3edmZZvdQmQqi/L5mjemp9iSs8q8VF0/HafhyX
 5Skg==
X-Gm-Message-State: APjAAAXrflK3FUk/TGDEB9ddH8JvapInZwNDfZqKYXSS6eADTiwiVYkV
 plkarE7Q1OAlir2OnJd1zw==
X-Google-Smtp-Source: APXvYqwiKFzIGyg2XnZep58aEU+/D3z1Ps19/TvwlP1+rXM117+CqKroFVFWg6WMidvSdTwId+pGDw==
X-Received: by 2002:a05:6808:b18:: with SMTP id s24mr70968oij.31.1575409112895; 
 Tue, 03 Dec 2019 13:38:32 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 47sm1496199otf.54.2019.12.03.13.38.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 13:38:32 -0800 (PST)
Date: Tue, 3 Dec 2019 15:38:31 -0600
From: Rob Herring <robh@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH 1/3] dt-bindings: mmc: fsl-imx-esdhc: add imx8qm
 compatible string
Message-ID: <20191203213831.GA19512@bogus>
References: <1573995530-14573-1-git-send-email-aisheng.dong@nxp.com>
 <20191203193437.GA9654@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203193437.GA9654@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_133834_141857_B23145FD 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, dongas86@gmail.com, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 01:34:37PM -0600, Rob Herring wrote:
> On Sun, 17 Nov 2019 20:58:48 +0800, Dong Aisheng wrote:
> > Add imx8qm compatible string.
> > 
> > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > ---
> >  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> 
> Acked-by: Rob Herring <robh@kernel.org>

I guess since only Cc'ed to me, you want me to apply. So I have.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
