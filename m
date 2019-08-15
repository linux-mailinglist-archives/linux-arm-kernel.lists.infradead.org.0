Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8459D8F345
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwX2+TQtp/6X27HBSrG+O3Q+qDDWXKlUZo025fM8lpA=; b=YfHzz9yDP5/YQk
	DA9e12p83TM8ETdmQ7Vx/Pfcpg+o01OBX9hvdXpIBeNaJegk0spLqvvPUdvJp/vQg8i4kXtZVs8t+
	dUsuuj/x59x721jR0f63bD6Kk31zDrJ5uik6pxe9iaJ263oCtHTd6vMrUR23z3wwlqiTjPusoDk9+
	zppC2F1fleuKcUVm5USYMw5MDXuPc1h7nhug5amYqrmc2kt/m0DNPwuS0feXxp5wLcBUg4WZbhUPe
	fL7kF951raqHHcpHX+m9JhWWQwxF9uIbIMst8g3IVynLJwJGMVjExp+b68Yqby4TE2LgDOuQcksso
	UHKwCWoPfjqMLsnEpldw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKQY-0006XT-TT; Thu, 15 Aug 2019 18:24:47 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKQM-0006Wn-C0
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:24:35 +0000
Received: by mail-wm1-f66.google.com with SMTP id o4so2032203wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 11:24:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I8LpUlYZvhVr6pk/y17OXv83aq2SFVNq4KhnnC2cLW4=;
 b=TJE3uyEI0ZLHpYyP+FHYzG/XbOAOZ5Ti4qIes85sH+1/BTzIxAfGMV4nsTbgEd6sqx
 qSXdkUouvseQJF9lKvCZf3yZxoyruWnyazC4v9WjXIPIN63603n9MeFbe/VRx0DVLSKw
 0ptcuhnHRMJVicW/0vT4WIo7XNb/cofkwDIFubYOCsptthB48iI3Bq6B5Fi13fIh1U58
 ckmcuX8mj8Osp6tjt+5uW66NQEEuVN2quNe98yfzl0Bf0rNiTCsLV4PkYka5h9arw4qO
 CAqWoqn5XR2h44HhFDJiXTdzSB/HT5D2P7zmLHIbsx7RpYW8ji4E2QHWZmqwTmB3A/wS
 +kMg==
X-Gm-Message-State: APjAAAWtYNQN3b4MLYuiNRjJvyEi/Bnz2Mg/ZKxMn4oBzir5pw6HD6v/
 EkPjREiyO6bO1UIJ0nZTpBJvLi7w
X-Google-Smtp-Source: APXvYqxK3boAcUy6fh+CU/UaSq4E+pD5s5IvBqlD5jfe0NnSfwNIE99uIt2toexVhRW42hSSyaU2AA==
X-Received: by 2002:a1c:c5c2:: with SMTP id v185mr4214329wmf.161.1565893472805; 
 Thu, 15 Aug 2019 11:24:32 -0700 (PDT)
Received: from kozik-lap ([194.230.155.124])
 by smtp.googlemail.com with ESMTPSA id o9sm2587458wrj.17.2019.08.15.11.24.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 15 Aug 2019 11:24:32 -0700 (PDT)
Date: Thu, 15 Aug 2019 20:24:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v3 7/9] soc: samsung: Update the CHIP ID DT binding
 documentation
Message-ID: <20190815182430.GD14360@kozik-lap>
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150858eucas1p1a5fbf425753e4911c50631c3a6d34ffd@eucas1p1.samsung.com>
 <20190813150827.31972-8-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813150827.31972-8-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_112434_418431_754845F4 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 vireshk@kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 05:08:25PM +0200, Sylwester Nawrocki wrote:
> This patch adds documentation of a new optional "samsung,asv-bin"
> property in the chipid device node and documents requirement of
> "syscon" compatible string.  These additions are needed to support
> Exynos ASV (Adaptive Supply Voltage) feature.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v2:
>  - none
> 
> Changes since v1 (RFC):

Title should match bindings, so:
dt-bindings: samsung:

Also please put it before the driver change using these bindings.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
