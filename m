Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BFE4EBE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHEtZ0UOkpxleVEZ1rc5H6qHFdXc/KV0Yrxpdb3+NdY=; b=b7i7F6xNs96XZh
	/hUjy8nWcSlgiLSGfarEkkqqDGKgBiLGd1oyKGLy1wX4C9FcD8Q5GdR12PFalfN8SoIXPoNaeDnTp
	j3wpP80CO2565a0YuVy92OLZaYZoPpXupjuC+zWObb8r394zwKpIXhu31O3k9IAxcBeDrDn6znYgB
	LOb5Nxsse6+2990sMPAtOOo1X0xZj0olvLMCFyhall+UeaBoa09Mg/2LNLL7JYh+4VSXR8ytlpZ9L
	C1wF0QTT6ElEXA/yv9mtt9Pc2bAi2u3OxM0VFzNpEaEpTg2pGH/2VEpqqoRQ6soCWSj+9eAJDA7j9
	xr6klNWy3AE2Qhr6Z4/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLOh-0004Vy-HI; Fri, 21 Jun 2019 15:24:15 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLOT-0004Ur-3g; Fri, 21 Jun 2019 15:24:02 +0000
Received: by mail-qk1-x743.google.com with SMTP id b18so4673443qkc.9;
 Fri, 21 Jun 2019 08:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/6B5uybL/vQOh7w8hweF75PWuFBXAaXmKLIlmiYqweg=;
 b=g0pqzczqGaVMaTZuZJeMymSTykrdujS2tAjfaNFFWLMkC/jEKcq2X+4DUkCTSiw785
 5grPt95cpg2/4gapBk+7Y6G/j8akoUl9Jihm9TukMh1OjVN08v67LpXJS2ykJC880QLK
 7GCjhqPWjkEfvtlklmrAGzHyNnd7Eo7jIsyESfSBbhV7HHQNj/nHkZQD3rbq3iz0jFjc
 OPJV11qdzzV+jpVVNLCSmnIR6saHkkm59p63wVfhAsOpyk7hmK6CPLgtZdbLgbtuDQVT
 0umQw9nk0PgzL9ODZ9wzFM5y+GXTbwF4w4Udey3EuEZjmNmd/ARY4x2zBg2uY+4nvOvq
 w4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/6B5uybL/vQOh7w8hweF75PWuFBXAaXmKLIlmiYqweg=;
 b=G+48knEv7XXtHIWWDGNq6r5PslH80sATuik+AqNdw9rvfwNcZ7O5VKeD3CwIGJaBz3
 mS1hRcLfIouBVv21LxsdYyuiR8j+Pn74c3IMFrX7k3vtN45YPRQvwQuI3Szch8QeDkSU
 xY798JVRsybFV+TeCDKiFvMWVztnxQtX4S7VzV2AZ/POnrgKkn0Dxtibd+kkI8nYpJhi
 DImEv0toke0dVFgqeVjojc363rjSmBWMUCIAm+DDmW8PSHaV7tWWqgAQtTy/onS7Fzp8
 PbfYBJZT63jLfEJs7KzIiolFqxtLOqQkCGm41qXv1YZokViRpCeGwdUJsZHZnCsDeguB
 WoCg==
X-Gm-Message-State: APjAAAUAmib+irxLT18GYBYzxkChKlHQ+CmTlEDpWV2xghut3OfHiQrj
 m/tzNaxM41EDrYIo8mLJgqY=
X-Google-Smtp-Source: APXvYqyBh9OcvZBK+oCI8iXmztevd3t+ZZMXFFIpU7nhEYNgk9EMn749PuLBYmOO/b3CptX6ggx2LA==
X-Received: by 2002:a37:4e8f:: with SMTP id
 c137mr75046030qkb.127.1561130639395; 
 Fri, 21 Jun 2019 08:23:59 -0700 (PDT)
Received: from ubuntu (ool-18b82048.dyn.optonline.net. [24.184.32.72])
 by smtp.gmail.com with ESMTPSA id g2sm1660017qkb.80.2019.06.21.08.23.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 08:23:58 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:23:55 -0400
From: Vivek Unune <npcomplete13@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add support for SkyKirin X99 TV Box
Message-ID: <20190621152355.GA88160@ubuntu>
References: <20190618051025.458-1-npcomplete13@gmail.com>
 <2273961.GTPgWWlV5T@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2273961.GTPgWWlV5T@phil>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_082401_433727_05518453 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (npcomplete13[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npcomplete13[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 03:31:51PM +0200, Heiko Stuebner wrote:
> Hi Vivek,
> 
> > +	disable-wp;
> > +	num-slots = <1>;
> 
> drop num-slots
> 
> 
> Thanks
> Heiko
> 
> 

Thanks feedback Heiko, I'll revert with updated patch as suggested.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
