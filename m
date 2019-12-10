Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EE7118C42
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 16:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dAki/7gaF6XD8hsaEJPGojSipNPBLksS0cXXucLtuxA=; b=tLVsJ7i5YablkW
	z7PMavEBCpwz2mVi4KPflIZx/M/tFOCHidq2yrcKaHslIvrhpSbroC9sMaPDH6Z37l/oKYyi8n03V
	EhXCBbRqR4JFt2cBWZx7nNsTdELAB0M7H5bEPu58AzfGCitAznQJnUNiowg9J2QxoD5uGZughoPhZ
	RJFKFNsEd9zBQEcSWkJjlJQFBQJWJZvsJd55rXfEm1DIpNQq3Npwhe3yL3ijWHWjyRbd0/BB+69PO
	E3eC/CjWSNhnlEvdT6fJIoK89fgud0QU+rP1+A/RfYbyAPWkBqMca9UY3QgGZzKGO2EpTjrdFr4Fn
	re2DD3qVbp43dcvlDllA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iehDe-00028C-7u; Tue, 10 Dec 2019 15:14:34 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iehDT-00027j-CR
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 15:14:24 +0000
Received: by mail-ed1-f65.google.com with SMTP id cm12so16248143edb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 07:14:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rX25mRS0R7g3H36vg6LDxr3jtSDYFtlmlEW5V9/gpU8=;
 b=Xx1iOVvhDiCSwgeb0ZN3LqJ/OsszAHV/PsBQFrklfIb5BkTM2FgtMTz9ZTzH+yzVSF
 OtkSEfUWvpdQ9sMAb6P0hBgQoSfMhKdcOPOilxqUBSK5UbgTMjN1x7DeGOt+O0iqZ54i
 4Js4nGMKMQiPb+jXDnfdszIrkS5x+SFs70vVnh8GsdX73YzBoU+nCz7KzRI5ltpRaelp
 8xxhl82UDcmrTgQ2eFpglZkS+tOW4nlUz13thH723GEGG9GNAZaXqyyxm1H0AxE810Uk
 E5zrZrHHn2oycXMozMbuepL7BOUi0TSwJqwKRxRLbzX4adotWYVSV+dImfrsOciA0wq9
 EHAA==
X-Gm-Message-State: APjAAAXJeQ7B79r8SMCqqG4fujEgbpa024GFgFwMj1Qv12V4k00dy7r8
 /ThM6S4Exwc0O2T5RBePV+A=
X-Google-Smtp-Source: APXvYqxNSi19yPBjqzrP1CJjzpcPh+Cif4qA9wuPjYukX6ukeWARbEqHYn1ret7hPkYE00vjlNw0tg==
X-Received: by 2002:a17:906:ff01:: with SMTP id
 zn1mr4176403ejb.323.1575990861966; 
 Tue, 10 Dec 2019 07:14:21 -0800 (PST)
Received: from pi3 ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id r4sm73616edb.82.2019.12.10.07.14.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 07:14:21 -0800 (PST)
Date: Tue, 10 Dec 2019 16:14:19 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 09/10] tty: serial: samsung_tty: fix up minor comment
 formatting
Message-ID: <20191210151419.GJ11222@pi3>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-9-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210143706.3928480-9-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_071423_422289_D4C328D8 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
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

On Tue, Dec 10, 2019 at 03:37:05PM +0100, Greg Kroah-Hartman wrote:
> Fix up some minor formatting of comment blocks to make checkpatch
> happier and to make things look more uniform.
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
>  drivers/tty/serial/samsung_tty.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
(also if combined with next one)

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
