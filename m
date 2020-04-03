Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2679419D664
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 14:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B9RA+bSJ6qeu7BwwvpyUA+8oAuLSwiduG0ihLGTFM6E=; b=PPWrGNs8FWx4VZ
	q1aV88Y1wKeR3/2fXrQXA1BNnBz0I+Yax30AhGPaB5dWC2NiW/R1H5HF5zSog/vCAz6aFuP/k+IGY
	qFscW2s1i/UtJJ985O+gj7ZvO3mUrPdkydg0LwhsQEij2yi8No4v/OSQZwd43c99HzZA1+K6GIeNl
	0msJdj1sQWbIL+qyTkrSxQ4Nmkp8rTRRjl3tNND2KdlTm9/nbJoqb+JQz2spGhJOmK5DBXNv8gqI2
	M9VQ8bdu44gcxP2fJi1cMkNc2rmC6oVSQui5GfHNonYkTJ/mD5+9tn2MG3UCK6YrgEyEYJSjaj/bX
	Yx41g72NP3m0JvXWBqSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKL7s-0006Je-Uo; Fri, 03 Apr 2020 12:08:44 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKL7m-0006J7-Sz
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 12:08:40 +0000
Received: by mail-ed1-f66.google.com with SMTP id v1so8966441edq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 05:08:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xTb1rr50ADmCz5IrPDEklCKRPMu9csBSo16UOelGpMs=;
 b=KvB/Ew/D5rM0BcaAO7dWgAM2XkIRt1Ra2QJ1b7DJIXC9AOTQ8gGsuWtYRDTn1JLwhP
 BuHBPf3NvJVmwQy9REdV6XBtNM0tEqkJFn9YyibqX2E8dJDp6NuJ4LcgqMLnHUqoRi1P
 NE3+smraozbXellsVUDbMK+K/M01Mx4ySbnf5B429P3kOz8lBSpYlAqBIQ+GHhVGqu6A
 FGQzq4NkGPptS4dZ/fpBNi1YTjm5UTE7g16G1oGbNzA2pNUt6CXvLfBBspQaFNxYn3Fh
 ObGvdnlsEnd7FC9ZygrAFajJYukXjlJzxwCZX4nEAwibc52Q+bviOJFj9niSx//8Stw9
 KCQQ==
X-Gm-Message-State: AGi0PuY7YqXEQVYA/vK191EnljIc8UFNSFO11ACgIEiXgP3+ml16mrU6
 UxSIMZC72NAXi/m8xd/xq5k=
X-Google-Smtp-Source: APiQypKSaTXk0j+WTDpvn86z+TkgbukqvVq3ZioNTe2LrhUK9WK3TUoVpoM4Oj6vjSB7L0KfO/P70w==
X-Received: by 2002:a17:906:5e52:: with SMTP id
 b18mr8324983eju.160.1585915717334; 
 Fri, 03 Apr 2020 05:08:37 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id y3sm1608850ejo.27.2020.04.03.05.08.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Apr 2020 05:08:36 -0700 (PDT)
Date: Fri, 3 Apr 2020 14:08:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200403120828.GA30617@kozik-lap>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48@epcas2p4.samsung.com>
 <20200403111511.10598-1-hyunki00.koo@samsung.com>
 <20200403114237.GA3797881@kroah.com>
 <20200403115313.GA29484@kozik-lap>
 <20200403115715.GA3846995@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403115715.GA3846995@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_050838_936687_730CD454 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, Hyunki Koo <hyunki00.koo@samsung.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 01:57:15PM +0200, Greg KH wrote:
> > > If the property is not there, the type will be uninitialized and no
> > > warning will be spit out, are you sure you want to do that?
> > 
> > The default value from initial ourport will be used, which is UPIO_MEM.
> > This way it is backward compatible.
> 
> Where is iotype set to UPIO_MEM as a default?

Here:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/tty/serial/samsung_tty.c?h=v5.6#n1626
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/tty/serial/samsung_tty.c?h=v5.6#n1989

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
