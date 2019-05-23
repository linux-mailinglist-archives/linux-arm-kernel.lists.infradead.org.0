Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B19827EAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 15:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJjD9rEG4tlMCmkMSFCpVTLcYAFoxo5eHrDqdauMMak=; b=KDIWMgTubEq4u5
	9G2on4TBXHjEHqKZmD900/+344WG90gBjT4rEYslbXowJAnIgM022xzpiVa4HyVS/4z2NWiNRnP+4
	NGfH+TG2WhdbznWZ+w/zF8Ez+m/8RMpz3ptlRsHdMpgJ6tDopSnVpMAHYDFOaRscJBDDbYqgdiqnZ
	/GG7dUCV1X841YNHetEDD4wopGmxKt13/SwnWnzwvgLWv0/FtQz8p1jzgbVDw/k+eL3kMh1xkBoNL
	1+Q2EBDkqzTP9Mrycipx9HxjOk1eaGTPVCgRwojwfSvtyxLjlwk74fJMsjhytdyzjYPfo47ATT/Mw
	6OphJp+R1VqfcgMQz+cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTo65-0000Hb-Io; Thu, 23 May 2019 13:49:29 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTo5E-0008Gp-Sl
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 13:48:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id g9so2793270plm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 06:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+gf6TK/DBZkbbPD59gjM5EzSFnmu0bkE4KJafULy65Y=;
 b=rnsqyg44lH8m7taWbuklaTCCz+35oJR/l6Qvu3nboiWywtVJszAN5r1JZZHNf22TlL
 EC6rzSjYQa/QR0ivyeZMdANgKAjULdQ8jZm65iQGs+q82LE2KLJ5xf+OjAK4S7BR91Es
 b5zTbN82WIaV6D95qOmUz/zqRV7tuLDrhiG4juw5hDWhRZyiifIizk4b+8z67j38wZKR
 roz6c8S7JRou1K+Hp2d8pEigq64HClfp+59fhiSKhLvwcIhL+H00WgbMyFXI9TPHSfoD
 ZXrtrGkrt/NwdtN+K0dNuzbfEX4sRH8aTyhUQJBSLp3RtWGgpvzEhwJlbNbAH95jHOjo
 K+7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+gf6TK/DBZkbbPD59gjM5EzSFnmu0bkE4KJafULy65Y=;
 b=sD3+b6m8tMptdUJFwCBSr6mwBjVcVKBOlWRJyhcYoMwtbq2lwSFW+2WqI6SO+djjKM
 jlGEF1PCBIwYMRHIoWN+P8vCtbJq8Qic77sV4z3dOctG62PrkpZP1VueAYsDU7PMhFaE
 MMViYnTtAjEvOUxRReFEFI9hMFYOHdKqkSJiqSr2SCG1KKZawzPVmXSK1AM4kPaqLHGp
 XjeYMuSlcAljuW3AFM0drarxsrq87+LXuF4hyMdDlUpijatLTHKdQIharM5+9gS06zZo
 d8kY0G5VkvIqVde/ETsf/wwe7pz3zdf+/wAjOQNBeANKLQK9DSDtpnnGO5DAhu/bPefZ
 JYUw==
X-Gm-Message-State: APjAAAWBWExz/NRrdVmscVVOqgqVvmq3GWb35lTB549sJNj16O6TNPQ1
 ILgv6ldux2E7CyO9PPXKNBg=
X-Google-Smtp-Source: APXvYqwKUTsNLMMZr3WT+JsRYI+XStFLzKHLL4taI1RlLURXHZmDRyhRh2+PrNYZ032j2fi3xT6L8g==
X-Received: by 2002:a17:902:728f:: with SMTP id
 d15mr24384602pll.167.1558619315442; 
 Thu, 23 May 2019 06:48:35 -0700 (PDT)
Received: from localhost (c-73-222-71-142.hsd1.ca.comcast.net. [73.222.71.142])
 by smtp.gmail.com with ESMTPSA id y191sm2667986pfb.179.2019.05.23.06.48.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 06:48:34 -0700 (PDT)
Date: Thu, 23 May 2019 06:48:32 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Y.b. Lu" <yangbo.lu@nxp.com>
Subject: Re: [PATCH net-next v2, 0/4] ENETC: support hardware timestamping
Message-ID: <20190523134832.xzupnwvhhlljtoyh@localhost>
References: <20190523023451.2933-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523023451.2933-1-yangbo.lu@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_064837_008576_9BDBA25E 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richardcochran[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, David Miller <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 02:33:24AM +0000, Y.b. Lu wrote:
> This patch-set is to support hardware timestamping for ENETC
> and also to add ENETC 1588 timer device tree node for ls1028a.

Please, in the future, summarize the changes from the last series in
the cover letter.  It helps the reviewers to focus.

Thanks,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
