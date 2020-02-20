Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51ACA165C41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 11:56:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiu1qEH1qE8ff98u1NcxKaKO0hgaIGI1X0WYwpbY11g=; b=ScXBisnT9BXIEW
	ilpjuCNc5hBbApfxYU7pKgCuLEZXgGX/nQaX6LTToonfv5VAX0Xx7Y81ySnlMekmRb8WvuXByGx8q
	3h7FS25uhFBNnCsGG4czxIFeKcUSV/DEiK4hXu+ayfDTtyr5G4O/116MdY8C7iqGEXNIn76UButS9
	bVdJvtMLWOCaaCrz+/eequt8HZk+iXWc2uSxzW4/iQhgcf5T/enG03HBZTpuo9qVOT0IsV/gRWNHP
	LAOy680I/Q2PROFiXe3En/O6041YM+Fsb6up5ncWZp9vjsssqOVviEEJbrzTVgI31ctE5g7BPIZbn
	feNNAH7U1s2icL307kkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4jUp-0001aq-U6; Thu, 20 Feb 2020 10:55:55 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4jUf-0001Zm-3p
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 10:55:46 +0000
Received: by mail-ed1-f66.google.com with SMTP id dc19so33136545edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 02:55:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HxC4605+KVWJsNCk5tm1pp2NBu/lLGZBF0ln8nNCRHI=;
 b=APEQjvsLqNLRXg6QF0VwfGD5TSjeXc4qQvRIk98QwdaUNwm7kRv/MEml2QF3oYd/Zt
 df6GzXdhkgLbzpiZysHK7J+u7Vgtt9DeT/xPd/VOfdQkNsp4YO8Q/chn0gE84fUMKWlx
 /CmzkMi4y5WfdLAMrvZtdINnMO+qdd0xgT/Z8RZ7AFvEEM5W0tNGa/KldxB5891dIstO
 goa7z3N24XkzdsOarWOSF031UM/JiMw1AbZPLeZz0qfNe5FP0QQQBxaawYqYm1MnrWoq
 xJKWyroxfPQKC0p4BSBSxPNt6Jbw7KfF41WAYSWB9zCpcAIUixu0uUl04CbWwP5xV6dE
 6Zpw==
X-Gm-Message-State: APjAAAXygX+fGZOhgMHSua92+ecVC0iRqeR/+YI/1jL9tx/jFjT80lat
 GDFiTIhkx3/LmTsc9gPo+G0=
X-Google-Smtp-Source: APXvYqzTLPh931RWB799Q6pryHxossHIt8rBOWsQX0wPKNGao+iaWcMDnUGW9wCQFJALFke4UzixDQ==
X-Received: by 2002:a17:906:4089:: with SMTP id
 u9mr29314401ejj.184.1582196143675; 
 Thu, 20 Feb 2020 02:55:43 -0800 (PST)
Received: from pi3 ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id cb20sm84735edb.1.2020.02.20.02.55.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 02:55:43 -0800 (PST)
Date: Thu, 20 Feb 2020 11:55:41 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] tty: serial: samsung_tty: remove SERIAL_SAMSUNG_DEBUG
Message-ID: <20200220105541.GB24587@pi3>
References: <20200220102628.3371996-1-gregkh@linuxfoundation.org>
 <20200220102628.3371996-2-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220102628.3371996-2-gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_025545_166589_CB541DA9 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: Donghoon Yu <hoony.yu@samsung.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shinbeom Choi <sbeom.choi@samsung.com>,
 Hyunki Koo <kkoos00@naver.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 11:26:28AM +0100, Greg Kroah-Hartman wrote:
> Since a05025d0ce72 ("tty: serial: samsung_tty: use standard debugging
> macros") this configuration option is not used at all, so remove it from
> the Kconfig file.
> 
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Donghoon Yu <hoony.yu@samsung.com>
> Cc: Hyunki Koo <kkoos00@naver.com>
> Cc: HYUN-KI KOO <hyunki00.koo@samsung.com>
> Cc: Shinbeom Choi <sbeom.choi@samsung.com>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Jiri Slaby <jslaby@suse.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-samsung-soc@vger.kernel.org
> Cc: linux-serial@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/tty/serial/Kconfig | 9 ---------
>  1 file changed, 9 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
