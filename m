Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639661F7B5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 18:03:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3H+vSTNTJkLHBF7UQv9i2wyxQ1WaEmbVVxt6C9dDFgQ=; b=U1s5wSP5sggcUh
	wo5fWjKT+MZw2lYSlbf0zuyctUDfsjFs/OM7tYfFowd99edJlgyH/FSy1f6UKMYH6xKqolghNa0l0
	Cn0RKniXCnc1XInyN+YPtlClpJTJReS8EKKBmoUKcv4lwwAFv7GT0cz0rlPzs2fYIDGBy+HMx6S4i
	INE77kLROkHjpHpcRVclQv+15HFNrwgVHD7HABM2JydKJK3CK8u8fFr2tTUSD6ov1CgAxZ1X8PtPA
	lXiGULNbGNNsi3kbpT1goMdwr9cmm5/4sT+4BKu+JtsgEBHF7k7+wyIdvyzzvT27i4PywDa3Z6MVX
	f8sDMZv106rgDX2b3cog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjm9l-0002aD-5y; Fri, 12 Jun 2020 16:03:49 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjm9e-0002Zj-3z
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 16:03:43 +0000
Received: by mail-pj1-x102e.google.com with SMTP id d6so4034456pjs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 09:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2PKPk7BQfppfNr7O5EBp2nwpc5uqRbW/+JPiDE2SzHo=;
 b=gzTXSx88SmeQROG5/rGF7+StSAeA8oieFghvZiWRXbsX0YrIDy6ZLYFtzpEQtqm7QT
 j9lg6c7oS2UP0q7Iw3M6MOt2bmEB004fbzsC58/BqPpUmVDLElY/NOHMhrQHLjbI11Ju
 jGCwCQUrcu2XqrbsIx3BMvnm4sJBsZI6iRFVvEiFdcgkcHFleXct5bJ3C7hTuw6/07ZV
 vcluFltq1gR7/RtS5iW5InpEDUPnHaGihu6oe3MzewquFXcGwB/RBBWmtXXwmjz8iKud
 8b7zcMHKQUxRudHvmMtf6PKgmIz4Kv0MVxY9dhZSvQm7AWFAJu20+uDM3OtaRdHSECQQ
 Lc/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2PKPk7BQfppfNr7O5EBp2nwpc5uqRbW/+JPiDE2SzHo=;
 b=AHQqp9tlVQZSjyEtuL01oGl0qxu7SIOhZv9834ci/aNQOZpb29/fSavVvue+HjkUv3
 NTM2WsB4YLsTgo2yTZNVNNUipcUu1uU7h8rjEe6CYyrYMUdDtYJMe6aqwDbz57N4njwy
 h5DnwONH2GXF8+pb6Q7TzlBHaKZ0xm/Yni1sZ1omMfQOpSfax9yWXHI+twoGyrIONkxY
 aMUt1X1T0G1d+nR+ihHm7z5efF8hm0Z8J0qhPoyOSWdSOYOsX4IgYv+o9MyKZ25xj/vu
 Gim1bu5v9Pk/rYV3/qJwhIGaaUWpH1DFTQ0w80rlGnb4w8XfXM9l/1MbtNZUYaR62a0s
 f01g==
X-Gm-Message-State: AOAM530EL1hauensz1z3mV7jhxuCaq8ecL7cSDYxQ6fgDiRA8f25bA0Q
 Bg/1XKAQXrZJ7qw0jogmI8I=
X-Google-Smtp-Source: ABdhPJwG6QKhN5cTOdTvAF2ijD+ToA4XjdemGeBA1Y9qXvZuwAPSipLJGT8MuHp8NJ/Dd0Udn0cN+A==
X-Received: by 2002:a17:90a:e08f:: with SMTP id
 q15mr14574510pjy.178.1591977821425; 
 Fri, 12 Jun 2020 09:03:41 -0700 (PDT)
Received: from localhost ([49.205.221.68])
 by smtp.gmail.com with ESMTPSA id h8sm10524409pjb.1.2020.06.12.09.03.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 12 Jun 2020 09:03:40 -0700 (PDT)
Date: Fri, 12 Jun 2020 21:33:38 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Nicolas Pitre <nico@fluxnic.net>
Subject: Re: [RFC 0/3] ARM: copy_{from,to}_user() for vmsplit 4g/4g
Message-ID: <20200612160338.GA31501@afzalpc>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <nycvar.YSQ.7.77.849.2006121117250.3341460@knanqh.ubzr>
 <20200612160112.GA27659@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612160112.GA27659@afzalpc>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_090342_161424_B6459C6D 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Jun 12, 2020 at 09:31:12PM +0530, afzal mohammed wrote:

>                  512     1K      4K     16K     32K     64K     1M
>  
> normal           30      46      89     95      90      85      65
> 
> uaccess_w_memcpy 28.5    45      85     92      91      85      65
> 
> w/ series        22      36      72     79      78      75      61

For the sake of completeness all in MB/s, w/ various 'dd' 'bs' sizes.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
