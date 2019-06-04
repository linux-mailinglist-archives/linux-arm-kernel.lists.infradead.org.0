Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D9F34E0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:54:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:From:To:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76ql38hapwVI1NP+upa6cCB18IWwdDA7rIP2oK/2Y+E=; b=EJL8ltGdxl82iJ
	kl1su3hLFqzWtgAvSy5XogtOTJTnCtNgHct9aEjLO+gW6b3jtd9Q0hZIvjL9Lw4sXAJitabK8I1ZN
	pIqXZRlgvof7w/B1OKudkKgDOr/bc3Py+0EKDc1NAMAa9GG8quWl6KLjOUUlQXDavwjAb5uu3zICW
	8NT4g0w1cOuUEKO2qe83x3T9BRhNmQQYK2Fa9Xbdxsx/z12p/tok8S3hV9Ju2vNiugj6uE7+0LZRr
	cMX3jRMVnLb4oa/D1KPBPZb7sekRgfI87g6Cjs9T1rJui/zbifY7FgWV4aeta+ymIWyXL/pfhzHXS
	GrX00CRUSYIj1W5bo0/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYChy-0003Yc-0w; Tue, 04 Jun 2019 16:54:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYChq-0003Xc-GD
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:54:39 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so2826386pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:cc:to:from:subject:user-agent:date;
 bh=gsZInba9qrm7ODb1Yq1UhqmbBbAzbVjS4lLusubD2Ls=;
 b=LswJWZfy0lu8/m4EY2hN5vUBYjLbzIT/pf+JSF0lQ6U9Y9NIEvJa6+GFHY9rgaj8qi
 qU4lFztnpLWhlZy9grrENap6Snf4V/1jQk0ZHyBIEqqGQ7BxCKyacYn5gvRSp6IiOTa/
 u10YwlK6hJfJNh2+Vb2RSJ5qHGVtCqk6ZBheE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:cc:to:from:subject
 :user-agent:date;
 bh=gsZInba9qrm7ODb1Yq1UhqmbBbAzbVjS4lLusubD2Ls=;
 b=oq61vYcy5YOBreIrHZxqGoXU1Xg6IkxDW/KlvGkBnLXb61qRHb7j/v8Dq0gS+0+hfA
 QBD0UTjB/1r1E1HbC1PKfkkXRD54I/0I9TjDWIsNJdPEY3vnBa5VXnpUMGHJstJ3vWWh
 U2QA5D//cahTgoI9IigH23KI8VkHSXex+Eyk3Nq1eW+S9/BjeKevT3HwMuFeoAPho0j/
 ta1VUvkhdZrCfc9BucD0+VIkh0wKxkGEhva5eWMSV21nw8X5e0Yb+rF/b41jpoV9qA8r
 vyn4e6YtQEkPpKaIfYB3uTk+oD66yaFn4+SDlTM8t8YXX1+FilNdBWlCauF86ysamRTX
 7xeg==
X-Gm-Message-State: APjAAAV5Q+mIl+RC4Rqrr8mj5TjnraiiVMsSTRBcZ4dPwKEjlP40adED
 xD9DIChe3Zab04Ih2ZKUIa6HBg==
X-Google-Smtp-Source: APXvYqw9pQz0rGAmcjPIXcqIkj2VDqLOxoPXUACeihkAkH8amjHnLXEgaHBbXE2DoKkgmbIh57yGoA==
X-Received: by 2002:a65:56cb:: with SMTP id w11mr36437881pgs.236.1559667277056; 
 Tue, 04 Jun 2019 09:54:37 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id g3sm22917280pfm.150.2019.06.04.09.54.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 09:54:36 -0700 (PDT)
Message-ID: <5cf6a24c.1c69fb81.c970e.907e@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190603155612.GC63283@arrakis.emea.arm.com>
References: <20190517164746.110786-1-swboyd@chromium.org>
 <20190517164746.110786-5-swboyd@chromium.org>
 <20190603155612.GC63283@arrakis.emea.arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [RFC/PATCH 4/5] arm64: Add support for arch_memremap_ro()
User-Agent: alot/0.8.1
Date: Tue, 04 Jun 2019 09:54:35 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_095438_566774_3D3F27C8 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Catalin Marinas (2019-06-03 08:56:13)
> On Fri, May 17, 2019 at 09:47:45AM -0700, Stephen Boyd wrote:
> > Pass in PAGE_KERNEL_RO to the underlying IO mapping mechanism to get a
> > read-only mapping for the MEMREMAP_RO type of memory mappings that
> > memremap() supports.
> > 
> > Cc: Evan Green <evgreen@chromium.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: Andy Gross <agross@kernel.org>
> > Cc: Will Deacon <will.deacon@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Dan Williams <dan.j.williams@intel.com>
> > Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> 
> Not sure what the plans are with this series but if you need an ack for
> arm64:
> 
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>

Thanks. I'll resend without the RFC tag and see how it goes.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
