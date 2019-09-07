Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7159DAC896
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZFBAV/rI8HB8ondFACtv73AYXjzT+ABy6HizqRXJQ8=; b=a0OmuHlgSTOrwj
	aoe0jSWfVCnR+VrL0mrpRjigIBeQB2iJ6fFdPrz71MNvoAut/PYrZ1zNggw6rsKmt0SoZVl0X6wYb
	Z3t7X+4a+1ykDZ1ndyusqB5Cw4tU1WWJQtd8WncTlwWbebHkSK27dtEUKjOhaiYqTfhNZPViCkuX8
	snr+pTlGqw8pRHcw5phi7DTHbI+Nplvh0AtVK+wJ+dNgubDh2n1LBfxNr+bamJo5mHTYf44/t3m2W
	Fu/2w5C3h6Ny/BtW7lgbHvkYcJWEuQt5QRgGGUhn5OLtsQqL99a28agzhB64quB1unyFV6K0ZY+Oo
	Nw9lx4e98GPbCBHGKMUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6ewB-0005Jk-Qw; Sat, 07 Sep 2019 17:55:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6evz-0005JN-Fu
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:55:40 +0000
Received: by mail-wm1-x341.google.com with SMTP id y135so9687184wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 10:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3wpNe8V3UrhAI6XklnxJ3sJ6UGQlN9isQ2mYokQ0hG8=;
 b=rgnOU8GR1wP/gPWZ9q1A7NP1pe8gXPcpsG3QiGf8k3zTaO8laKW5QM1WujYDqhAETc
 1FYvt4fQ80P4SmepTW8Bop8cNdYYBt811EWdn3CJRAJJA1K0FaM4TdCL4YFtvmZZLqSo
 wZzqTQN1VQa0nKp/cGU5fotA70aHocW31OR574oEMX5mrVjyaVSf1HQ6wKYj+NGEhReC
 3gNlQc9aWhmoKuR82NrxMcmkbmz+ua7b1tkJOgbGPKmjUHIqJUgdxoF4zCgoXfygb2ua
 Bi+FX9zk9t6xmDb061ZRtPHE17vqXtIhuZh8dXSMZnT8u6mhMlbIzvsy9ZWCoOGc5TEW
 MXnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3wpNe8V3UrhAI6XklnxJ3sJ6UGQlN9isQ2mYokQ0hG8=;
 b=COo+lsw4FyRUciqECOxJMDg5ruopvNHFErQxOthLLnrzirN2EcRTQQxloc6dTotOJa
 RvZAA15m+1udD3rqi7ydv70RgKYZkDZALt73mIqvOHRZfGuw3GQeNGXP+loEhY0s80ia
 v6aPkQtG7TYR/ViUaVFBAoa7kwIvg8V9Gvt5qhqx0QS5hn4XUOo9yb07pIX84/7Xn/Zg
 pDmgQzpa0MQ9yy6/bGC/+AGe/ekrGgIKHU/VwQ9LNAdgK1U7nNH7iR/6QnhLViX9Vpcr
 IFo5uXmgoOZaHbY+fkWPj40z6hYmVvW7ubDgKWMyVCzVMc67kDx6+HRy2Yl6vEHaR4Ya
 M6Cw==
X-Gm-Message-State: APjAAAVnmPByKsUcpp74b593gRz9yPiL3+jnvzbIpVvU2J4tyYe2i8AS
 eOP98/JTSaQABVQek9KwsXQ=
X-Google-Smtp-Source: APXvYqwlrwfx0Is+/JNRJMqvpbryoTm/JZ4/crdni7AQFg+tmOyjJefUlXUedDWZ9ZJEL2WOztVGTg==
X-Received: by 2002:a7b:ca50:: with SMTP id m16mr11529116wml.158.1567878938197; 
 Sat, 07 Sep 2019 10:55:38 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id e15sm7279930wru.93.2019.09.07.10.55.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Sep 2019 10:55:37 -0700 (PDT)
Date: Sat, 7 Sep 2019 19:55:35 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 9/9] sunxi_defconfig: add new crypto options
Message-ID: <20190907175535.GD2628@Red>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-10-clabbe.montjoie@gmail.com>
 <20190907040353.hrz7gmqgzpfpo4xj@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907040353.hrz7gmqgzpfpo4xj@flea>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_105539_549052_CD82C2D0 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 07:03:53AM +0300, Maxime Ripard wrote:
> On Fri, Sep 06, 2019 at 08:45:51PM +0200, Corentin Labbe wrote:
> > This patch adds the new allwinner crypto configs to sunxi_defconfig
> >
> > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > ---
> >  arch/arm/configs/sunxi_defconfig | 2 ++
> >  1 file changed, 2 insertions(+)
> 
> Can you also enable it in arm64's defconfig as a module?
> 

Will do.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
