Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B105B1925E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 11:39:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dMtlJmiFsoZMVMEXTGt9++KCHKacjZd7iGth48LtgAs=; b=ZwuQ9qRCuBOlEf
	dtWUwVgAmxDucgoQ00fBDw7L+no/yhgLWOlDjI52PRioZdubEY2E7u4tjHcK+H+x5dSv/OlEwsqhX
	TRAD0uo71kel+yeMNCVUv3FeGLKlQ75TndQb2GmtinJy9MeO1wNRJi3cJqdqc3QhI3l3y2dmjDtE9
	GHTzB8UO9/O/oMB7AceHeCn6ZwLs7hvmktYjDQDT5fUv7t6Her5uKiq9mJ2nQ+OjOECYBx3v0GG9+
	zf+I7wFKVIhHAtAI4DyUyf4trhrrEUOh4JonPy2ZkKOA6pZElrYcK5fNr08e5Wylg4R3IcIea9ixj
	6+JFryPmX+JICkBlywTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3RV-0007lm-1r; Wed, 25 Mar 2020 10:39:25 +0000
Received: from mail-ed1-f42.google.com ([209.85.208.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3Qv-0007Py-1m
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 10:38:50 +0000
Received: by mail-ed1-f42.google.com with SMTP id b18so1728867edu.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 03:38:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rChnKt/buGlg4oMgDuHolFkSTfOBDmB/aUQmKVJ+Bu8=;
 b=bRsjx6EdWorpN22jMmAsWkOJjbp2GjZj3ohBv7V6I3DIUAGAVjuop03xypcpIzae6L
 M+lk4ZcU1RX+SIHkJrf+0RycLBkcPhqAcTMevNUEUomyVVDnuDd4dbtmcOKUuER1k52x
 2hmbCAB0OLjoqmaeNuhbmC41wFmmh6Gbdol503cIpndpAgd+FUVLP/KpkPHsCpn6jJyZ
 j4i7E4RgMyKWTnwnt5zfEk+d9FFeYWq08i4pqmU1ewYUGZdLatcPvNTNkOTy2Az+1heG
 4zEimmcOcYdscifJVRG2Da1tpO2STYbMJIjUSWG9zePD9qquaTkSUvUOKk0WjOPJaG3T
 YCDA==
X-Gm-Message-State: ANhLgQ21MvNjo12+k1PU8QM/RPm16cUe+99w3eoKn+0UPEJaonzcYmI7
 2y0Jdidzd5bh7z/vF+lJq1jNMwwk
X-Google-Smtp-Source: ADFU+vu6wOHo0Oo5RedHizV/zMZxQCP2qEaIJff3a9ZAD1Wu4ZYA7zr+gdDKh5A2BskBFG1jRYSWGw==
X-Received: by 2002:aa7:c610:: with SMTP id h16mr2228662edq.348.1585132727057; 
 Wed, 25 Mar 2020 03:38:47 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id s7sm1458659edr.15.2020.03.25.03.38.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 25 Mar 2020 03:38:46 -0700 (PDT)
Date: Wed, 25 Mar 2020 11:38:43 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
Subject: Re: [GIT PULL 0/3] ARM: exynos: Pull for v5.7
Message-ID: <20200325103843.GA17099@kozik-lap>
References: <20200316175652.5604-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316175652.5604-1-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_033849_149584_3D27017F 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.42 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 06:56:49PM +0100, Krzysztof Kozlowski wrote:
> Hi,
> 
> One patch for drivers at the end of these series. I also sent a fixes patch separately.
> 
> As you asked, I updated the Google Docs with Exynos entries.

Hi Arnd and Olof,

Any comments on this pull request?

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
