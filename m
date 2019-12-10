Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1177118B8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:52:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJbBf/haB3xDb7yHLkBBfrZ1lAZ/VBJ+GJR0n/mDjeY=; b=VcSwcALasd5aOP
	zF3SbXqYo82O/f7Q9ZyjzCmL0xlU5mGW/qzwAnjLymZGS2OjZ9Z3Ys8kLZs3cVYr4gRKn/dJ1G9uA
	eIOGuIN7p9wxQtY56diVkwN62rrgpzA10jJgHmm0V4AXEdSLctrT2hd0pAixSO/+Hq2/IICme4K9F
	Ce5GvH7jos3QZ5li3i+2FGD63mqoIdYgzW4wEyTc/tTfu3ONu2rRowQSjcR4heNm1ZeD8hS9dwlVM
	Wv9eaPd8kiVCtU6+Psd2fLeg6YDbheTtkt4xbSGhwzxkEuiSsqiiTNdYzzPRlrcXFtSOBg2/cXiVX
	+qiyWVit6LO6T/S04cUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegs1-0005Gq-Lf; Tue, 10 Dec 2019 14:52:13 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegru-0005GR-F4
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:52:07 +0000
Received: by mail-ed1-f67.google.com with SMTP id e10so16188303edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 06:52:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vnMo0Q3LhdLOTfXftmwazBAlZMLfT/1Z0Eq6LrQUqdc=;
 b=so/kiRaNggPCC66u240CDSpVgsWgl2BdP1kjmomgy8KafiGK4LytLcK/I0Ap5TC2i5
 EJpP4uusX0Ib8RMsNRnqnJX8CcEoutRxRNJaAqE3dwovywY113uUX8kpAXJrcuarTrWW
 FAThC/jTxjuYuFweQbwX4wbQhg3aNfXbCUv9eufJFTrZHA4009liCcIO3FdEfcsWxK0P
 icrd3bk3/ugRfR6TQLs5drufIZ6hir5MTqnOSqARJUrXD3AhSSzA+SYDIcLnipiVAV4Q
 PpI/hFLeOz27T/kgJkews3dYTsPuxYSsqPb8QAsGI2a/5gJ80HC+DsxxDftsgeWjC8Al
 YLzQ==
X-Gm-Message-State: APjAAAVPr6ByEabCGPMK+MV/7lE8/UWBHzvGSo5fwJe6EJcM+MANy8JB
 OcV+omM2GWUk3OtIhZ+NrKI=
X-Google-Smtp-Source: APXvYqw8E22/mA1z+Pv20fl6fJbN59CqfIhZcA5CUD+tWG45/U1MB8pFtq/LQzK21g3Bfic01PlZWQ==
X-Received: by 2002:a05:6402:17f2:: with SMTP id
 t18mr40260410edy.9.1575989524821; 
 Tue, 10 Dec 2019 06:52:04 -0800 (PST)
Received: from pi3 ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id m17sm76622edq.37.2019.12.10.06.52.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 06:52:04 -0800 (PST)
Date: Tue, 10 Dec 2019 15:52:02 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 05/10] tty: serial: samsung_tty: delete samsung.h
Message-ID: <20191210145202.GD11222@pi3>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-5-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210143706.3928480-5-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065206_500887_33BC5FA6 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Shinbeom Choi <sbeom.choi@samsung.com>, Hyunki Koo <kkoos00@naver.com>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 03:37:01PM +0100, Greg Kroah-Hartman wrote:
> There is no need for a .h file for a single .c file, so just move all of
> the content of samsung.h into samsung_tty.c
> 
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Hyunki Koo <kkoos00@naver.com>
> Cc: HYUN-KI KOO <hyunki00.koo@samsung.com>
> Cc: Shinbeom Choi <sbeom.choi@samsung.com>
> Cc: Jiri Slaby <jslaby@suse.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-samsung-soc@vger.kernel.org
> Cc: linux-serial@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/tty/serial/samsung.h     | 144 -------------------------------
>  drivers/tty/serial/samsung_tty.c | 133 +++++++++++++++++++++++++++-
>  2 files changed, 130 insertions(+), 147 deletions(-)
>  delete mode 100644 drivers/tty/serial/samsung.h

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
