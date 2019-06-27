Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F8357B97
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VyVYkAysb0PmP1nvlypEMCwGA3nEoLBnmN5JtTUaJk=; b=jAysYRcoPZ/lUE
	dIYcFur/rOr5gF26SOYUScxTQjCKjV0Cn7egBUAg1zRY3UKYGJEFyXXSZhTuSKnyopyL8J+Fi6Jne
	XqRi7MLqFrjRF0t1yMra8AdKBkBEYprMxbbAGJO0CRuAfcg23e6N+3GNAD9XHygX7waiANYnL7XIN
	IWFa1w9O/53fWNHUR2BHsug2kMrfaEUtf5IKgdp6Xf5eIWe6cuSdquauADGYhSCrN2YmaCEtUKiP+
	m1cxQ8AFmaofF/OqwpsH6hHO5LX8EF2RP4LB6FqdsEp6Urhju1V4zxCxTugKTYWEt/oRUH9XFIK5u
	9knlzzgDwOQn9kTnIEmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN6k-0000Rz-1u; Thu, 27 Jun 2019 05:38:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMqO-0006Q2-F4
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LukHuzspVdtsbWmPrQxtJofMfIkJuuBn4KLHq+hXvnA=; b=RbDXOJzfXGRGHCbO8/Y4qSyL8
 Zb6gmFWL+FNqCEPgulas5s+IWAlmnWzjNAnnlmvY8Txgcb09MtmveC8UWVCToIFEQ6L9qHHb7HBY8
 MOgxV4TvB3fgs49IqstgPs41UWniFdBz9NKYJHWLp/ZO8jmgWupfYW0z0uaZVD+MBBBSbW9wrHF8a
 hMO5snvXGveUV85XNldqvZC722kNdWcZxjVnVW+LOOQxxcv8AQ2hQbUnAgqLgjKtya1FPRQRiT3gz
 STPYvPPkROvd8jaVPPM3O0FLsEEOAzh3/ypFm3+hVVIWrktHc6j1S6G2gjuFwiu0SSsCVj0lISCJa
 FqGo9PjiQ==;
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIpx-0005M8-FG
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 01:04:31 +0000
Received: by mail-io1-xd42.google.com with SMTP id m24so1009867ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 18:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=LukHuzspVdtsbWmPrQxtJofMfIkJuuBn4KLHq+hXvnA=;
 b=S+FOaFSkDCDJ8fulPJ2UtIixLPm6C3blKm64Y26FpWliH1L0Kug+UoWJSnPzdI0Hcj
 WIpQSV5+lHeemPxtT7Xcm9l2PGDireS9Cy5y9WyCF6nc8MvNf86DT26n4Uj7szEVflXK
 7TdcSck6au5p+xNo79U3stPs5H1RUiTS20Kh1vpGpP8BZLL1aurZbclNgue4GAr053eG
 IbbEFmsd4K4jnK/HKIBOTzUgeV8PgouYszZgI9mVl29aXMFMCPbfE0b+q6K1Srmh1sdH
 CjXuVDZOcP7s9hMhGovvS1kStrCycR0lygvxsnRqkr3dk1iFcCEqAziHpxKtYM1HyLRb
 9oCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=LukHuzspVdtsbWmPrQxtJofMfIkJuuBn4KLHq+hXvnA=;
 b=NnoFko/QBR2qRkXk6l8rB51JDGwBTaWvMruMB78vVMNfCyHvOLLKyL8cMhSxLFaonf
 9Mo7DoGKhHLp1+Svz1OuZf4NU9/h8z66La5JfzkrNVJww7W1BbuLviou2XYoWkC0Un6P
 5HDvYMNZmxjMdVjRs3l1UrJ0JAFY6Oiv8E33bffTdx8kpAy+2DDWfJKdkCaPFkgIiKuO
 A1LuCAKdDewdfdMEeR48PsWoZ2wKtXa+Q3VrdvB6tNvVj0fjr9XphBC7YloK/9J5fEdk
 63lTQ5bBvivEcq9vxsJHhEkG0cWhXBdYyBWdqUa3TIPALPWWYhGLkC+d+URv+IK7BSyp
 ZnmQ==
X-Gm-Message-State: APjAAAWHbzR+elZWiQeEV3D6ghCXjG4GoDg7uUs33QcVtzQzQqhxBTVn
 AZ4PMlLDPJ3xHKYibM4UQsDu4A==
X-Google-Smtp-Source: APXvYqxH6d/kyIhVX9FR3/pclmA0eMPc/eQpoi25e5p7JBHqOX5DR5DbYu4JLM1fBKxoY3ScgDchXQ==
X-Received: by 2002:a6b:f711:: with SMTP id k17mr1267637iog.273.1561597343694; 
 Wed, 26 Jun 2019 18:02:23 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 p10sm1457892iob.54.2019.06.26.18.02.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 18:02:23 -0700 (PDT)
Date: Wed, 26 Jun 2019 18:02:22 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: Limit cpus schema to only check Arm
 'cpu' nodes
In-Reply-To: <20190627000044.12739-1-robh@kernel.org>
Message-ID: <alpine.DEB.2.21.9999.1906261759390.29311@viisi.sifive.com>
References: <20190627000044.12739-1-robh@kernel.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_020429_564544_E9BDEA65 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019, Rob Herring wrote:

> Matching on the 'cpus' node was a bad choice because the schema is
> incorrectly applied to non-Arm cpus nodes. As we now have a common cpus
> schema which checks the general structure, it is also redundant to do so
> in the Arm CPU schema.
> 
> The downside is one could conceivably mix different architecture's cpu
> nodes or have typos in the compatible string. The latter problem pretty
> much exists for every schema.

The RISC-V patch applies cleanly, but this one doesn't apply here on 
either master or next-20190626.  Is there a different base commit?


- Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
