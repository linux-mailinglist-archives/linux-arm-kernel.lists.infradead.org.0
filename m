Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 893A01271E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:57:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hu7TUOycbQSATVGet62uI26RgdQVt4TnuTShrZ5EWX0=; b=ZdATBnkorpFmgP
	l6892nskMc4U3UuM5NvreIB4eUHC+bOMgWB+xlH+ubBpMheAxdDyvbSsnDr6yn1UqKzTILSoAfsUh
	2lFgNxKNpgRyo5bTuGLcA56E2VZhmYnShWCJRue/dtHP4i7nJ4xwZew+oDmkv+6+s9LZ2xtfIDZPu
	FoHsgi9JTcA2UcGzRZ4efZAK7CI82uahbCurVxbE90aJwdHwlMjGchJCJge8NXHCMGsVo56Ckd/i5
	TMe4aIl4DnOgWDM2CiDdN25f+2JNQaxuAUlre/rGwhwC9gf6tMlkntI/XB2gZELLZej++MzHafemc
	nl4bj/Lr7nrTQ0G6/PTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5fz-0007y3-Jb; Thu, 19 Dec 2019 23:57:51 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5fq-0007xP-N5
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 23:57:43 +0000
Received: by mail-ot1-f66.google.com with SMTP id p8so9376433oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 15:57:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OMWLX5Po0CxgTAHf6iS/ph0HUz8ijxk+7R2/Fb1wd4g=;
 b=kO6b8OQUtTg7AUMM48SqXjsahd+ZWJOV1uReXKL67pSA6n2fRjgpgHmlFuU1q7Kq+4
 jHQxbgGkXKk4bkOrp3iyKbWOaxbsnfV2/zDkc/aEBVaU2PEHbyeHcFVR0LcvtnrE4PPv
 JMCIoMan+eGxI7oiyU5UzuBR/Lk9p/HK3zs8CXosJgNCv3toFsbfyoIi9IMzRiVjc/Em
 plEVdyAhZaU3ed/DrdIeQqUkfgBNWSsI5CvzgRnucdkYFRXhMCiGV52EmUwnvHdFU43O
 pwhpBQX1NsgAXxASzXs8kub1Lc44g9H5aLj7WRqZqjnsEmG9yyKrvUvRGYQfgPxjWWJ7
 RrcA==
X-Gm-Message-State: APjAAAVPn47eM1DenUdpGBL2uW4YD/N+4dRJIbDOzqCFaFT8bYNhUdXa
 8HA7o35GaG+PVjn3wTidI/rvQ1A=
X-Google-Smtp-Source: APXvYqxv+LQx4Guvz+TFTpgo3HvUnB9BUM567dRykno2DvnkBi1TbWKC+9CFro+YU4KP1Nf5E/9now==
X-Received: by 2002:a9d:7a88:: with SMTP id l8mr12190373otn.187.1576799861704; 
 Thu, 19 Dec 2019 15:57:41 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id p184sm2574797oic.40.2019.12.19.15.57.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:57:41 -0800 (PST)
Date: Thu, 19 Dec 2019 17:57:38 -0600
From: Rob Herring <robh@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 02/14] dt-bindings: media: sun4i-csi: Add compatible for
 CSI0 on R40
Message-ID: <20191219235738.GA11443@bogus>
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-3-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191215165924.28314-3-wens@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_155742_753814_8236B0AD 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 00:59:12 +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The CSI0 block in the Allwinner R40 SoC looks to be the same as the one
> in the A20. The register maps line up, and they support the same
> features. The R40 appears to support BT.1120 based on the feature
> overview, but it is not mentioned anywhere else. Also like the A20, the
> ISP is not mentioned, but the CSI special clock needs to be enabled for
> the hardware to function. The manual does state that the CSI special
> clock is the TOP clock for all CSI hardware, but currently no hardware
> exists for us to test if CSI1 also depends on it or not.
> 
> Add a compatible string for the CSI0 block in the R40, with the A20
> compatible string as a fallback.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  .../devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml     | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
