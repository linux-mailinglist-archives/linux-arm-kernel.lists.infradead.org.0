Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1F91074F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 16:33:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVQy2bqfl9B4qcdO9UeybNbI0id+4mdRqjiCOrOpeas=; b=cQJmjxnUJNbc3D
	xRLICnGLfJoJT/7RXqdkV+UBwqGhYuYwFrmIpC+hU367ffx4NctR/B+//qKpLaq1IQAaDoWBMaagb
	75gkFgGA+MJhP+0wjqY2M1GhraDLm4kM4v9FNHbnwBGg1MyjBiBHvML6/0DbHWCU2YaZ7bEKvnW2y
	sevx277cdxsNBOmzkA8sJYlFuduYyfMvNt4qSEnYUaK85pDIfaVe4mZyrD0KMsh5tqUreewXxYtBU
	lxlIdWA2WFHOd3NdGNci7d2dZ5LehvgbGK4kDIxwfCi1N1Tfbkw1uI744ZD9LcICkeit71NXZPBPV
	70pV7mF9rFFM/WH8uK3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYAvs-0003jy-Hn; Fri, 22 Nov 2019 15:33:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYAvj-0003jd-AR
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 15:33:08 +0000
Received: by mail-wr1-x441.google.com with SMTP id a15so9101751wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 07:33:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LQ0qY4Da80FqTT8SCe/q1MMW5kmKX6FKTTmrD9FMwQA=;
 b=AgTSYuNm6XEfw9a1bin5Mb4/xCbTQ+NinMuVrvghSeEv3dFsAecF1XJPbn2iv1M6hY
 p0cpqzbGPXGEzyjwmISfMojE0LxhDCyXfa7O2GrFOBPRPXKuA+np+l5lv+sd9iltRTGl
 40ixAedr0XBP0RObe/d0u6Kl85Lo7q6+M9uiiTyuCvGh/7qkjHt2Zq4kMpQER1oGToOy
 rUOFCo4z9GDEZTsAvXfugh8vyqyedf0J0SPQLCi87POM0biTYvmX+sFQlV/zavO9a9u0
 P8VMOSvA9vHtkz3cLbYbYkxR93aPdU1+xJbHJ1IsxNrJ+8+Zdneft3cnMtP6yGDS/0pX
 XQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LQ0qY4Da80FqTT8SCe/q1MMW5kmKX6FKTTmrD9FMwQA=;
 b=jt3et7wT0X6WVA2r/5gwHwQW+uKr+koAmeDzi8vC/B2XmadNQuuOvocZ8Q2gK/VLAi
 fAUDdEuf21Hijki3BcVx9iOdE5mAFNwhZZJloastBPXwqixDSO3TaAeXLRJyQGKOMIqJ
 9Cr6Uh7apeyvmWwzgh+a4vp4+bgceP+r2qt+jlT0Zii+HrEnTx44ZSTJN0qj33AwYfD6
 op/9gf37wFGaAk26EViGyfapNWZCG/vqZZWhJkCf81/uXYscdXzBSLOLCTPR5up1I7pq
 q1cGRnG5XMAhtUfwYeIUHfbB2NwwNUaZoOJV6rPFpBZy7xpEX8Tfyf1Nh+crFfJ82CYu
 T7sw==
X-Gm-Message-State: APjAAAXg1sYDB0XurQEK78piqW+hjIssOtnyQ/3MYq1q1klzTVYS0n9r
 EjWl21WEQCpPAtp8gJA8XVLpduzTeXo=
X-Google-Smtp-Source: APXvYqzX6JrW+q24Zk8k1hZ/pOgzDIL1U2YSPMN1DIk72zz9G9tgaPGNFMdZipoYaSd2Rw5YaSO23g==
X-Received: by 2002:adf:f20d:: with SMTP id p13mr17340480wro.325.1574436784658; 
 Fri, 22 Nov 2019 07:33:04 -0800 (PST)
Received: from lophozonia (xdsl-188-155-204-106.adslplus.ch. [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id y6sm8172846wrw.6.2019.11.22.07.33.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 07:33:03 -0800 (PST)
Date: Fri, 22 Nov 2019 16:33:01 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jonathan Cameron <jonathan.cameron@huawei.com>
Subject: Re: [PATCH v2 8/8] iommu/arm-smmu-v3: Add support for PCI PASID
Message-ID: <20191122153301.GC810215@lophozonia>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
 <20191108152508.4039168-9-jean-philippe@linaro.org>
 <20191111160529.00006dcd@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111160529.00006dcd@huawei.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_073307_361760_8B297883 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 eric.auger@redhat.com, robin.murphy@arm.com, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, guohanjun@huawei.com,
 zhangfei.gao@linaro.org, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jonathan,

On Mon, Nov 11, 2019 at 04:05:29PM +0000, Jonathan Cameron wrote:
> On Fri, 8 Nov 2019 16:25:08 +0100
> Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:
> 
> > Enable PASID for PCI devices that support it. Since the SSID tables are
> > allocated by arm_smmu_attach_dev(), PASID has to be enabled early enough.
> > arm_smmu_dev_feature_enable() would be too late, since by that time the
> > main DMA domain has already been attached. Do it in add_device() instead.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> Seems straightforward.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> 
> Thanks for working on this stuff.  I hope we an move to get the rest of the
> SVA elements lined up behind it so everything moves quickly in the next
> cycle (or two).

Thanks a lot for the thorough review. I'm aiming for v5.6 for the PASID
series, and then realistically v5.7 for the rest of SVA, but I'll try to
send it sooner.

Thanks,
Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
