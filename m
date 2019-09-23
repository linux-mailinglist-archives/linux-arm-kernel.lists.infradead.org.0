Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC2FBBE23
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 23:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEyWRzvEsD9X3BKosnDcvnJS6jvhVmnzgQ+c9t8xQ+g=; b=hwLEDnMhKW2Amd
	Ua23Y9Lj2aArtsqD4HfVsCJNIG7RKkRYLdLuxeei5zkNG+AyN1YbCp32xI5SkS8VUifCcXMv0iI7c
	cmGJuhSb6bGByaOwKs1tWZhzl7xFsxWyqlKvY7LbXo7oIopVTJ+81UQeRpx0bM6NVBadKyf05WAro
	f/saXxGYcpJNb7wQ2CBVGaBA0XzyXKCLGrbXmYOO6iZzBT83JOQv6wU/7LhIJ/2aHG7QiFX6Y/ljE
	hX4hZAkfmtXo6nvl4MNXa8khWA9ZS4s04ylVJcm8nf2F396HalvCwk2Z3JCYk51pMOcbWMB4uSz6E
	kHYL/zz+0uhsXCFrTmFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCWEm-0001fc-Mo; Mon, 23 Sep 2019 21:51:16 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCWEd-0001ev-N5
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 21:51:09 +0000
Received: by mail-pf1-x443.google.com with SMTP id q21so9971040pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 14:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Tk7amWzRilJXyJe6+zs5MYd1x1tWjNgH2dbflW/o9v8=;
 b=msDryTCaccOtQFvzl8l37QzIkUJvMEX3W7Z01qhinubhqGLtANJOGiUhoGSjhFDTZv
 SZ2LrA/8829/mUnbTJ3t2RO/kFrQn0a3wRUZ5jT1pb6wEPdCBTFWlCuRxJaOTGQk4E4r
 gt3Ee2QMlM2iSnNdqQNAB5Dj6GuaazcxmWqyU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Tk7amWzRilJXyJe6+zs5MYd1x1tWjNgH2dbflW/o9v8=;
 b=Mz/WwedQlQFgSGPr0yt/gWptk91U+Avqic7/2Wb33FqIv6rQFWG8VqonKp6qyzT8Wu
 aFQiXVa+fKcDybDd0UB3e42Q3kf3ppLpXXCVEVffY397IXNgJFS6gsW5B+Kwl7BqoMC5
 9Zbzbhc+KOKgQ5HdAVE6DL33ywNi9IKqEIovEal7Dc5XpPX3BjIE71gDS7q6VNkZjqRE
 lmd7UUDnbfYrIDDm4mpM3nb0r80o17hE0REFpYIN3bDWooe4Rm4H8Z2EWIa5M8zNpBzJ
 7/6K5onFh+u861D3+uQmQn5jMcTHZ6A/4Lli/+Gefco8ObbX7ka7j0ZBLk1rdAoA3JBc
 mM2w==
X-Gm-Message-State: APjAAAU0Um4gHDFk4rk70e/fkua05MZMXiDZQ+MGRRX+fxWeJ0+oG8Hw
 B8QNDaB8Y6to8M7+ADnmQhz4VV5Ozz4=
X-Google-Smtp-Source: APXvYqzyDPjPrs2/kSAMfLvql1LRV4Gi3ZeG6MdGfxrPr6j8+kEfTS4Z9/aBndbv8MMSxyd7sUf07g==
X-Received: by 2002:a63:6195:: with SMTP id v143mr2001713pgb.73.1569275465989; 
 Mon, 23 Sep 2019 14:51:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 65sm12698426pff.148.2019.09.23.14.51.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 14:51:04 -0700 (PDT)
Date: Mon, 23 Sep 2019 14:51:03 -0700
From: Kees Cook <keescook@chromium.org>
To: Dragan Cvetic <dragan.cvetic@xilinx.com>
Subject: Re: [PATCH V8 7/8] Docs: misc: xilinx_sdfec: Add documentation
Message-ID: <201909231450.4C6CF32@keescook>
References: <1562458542-457448-1-git-send-email-dragan.cvetic@xilinx.com>
 <1562458542-457448-8-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562458542-457448-8-git-send-email-dragan.cvetic@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_145107_778959_BB190547 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: arnd@arndb.de, gregkh@linuxfoundation.org, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, Derek Kiernan <derek.kiernan@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 07, 2019 at 01:15:41AM +0100, Dragan Cvetic wrote:
> Add SD-FEC driver documentation.
> 
> Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
> Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> ---
>  Documentation/misc-devices/index.rst | 1 +
>  1 file changed, 1 insertion(+)

Hi! It looks like Documentation/misc-devices/xilinx_sdfec.rst went
missing in this revision (and when committed upstream). It looks like it
was present at least in the V7 of the series:
https://lore.kernel.org/lkml/1560274185-264438-11-git-send-email-dragan.cvetic@xilinx.com/

-Kees

> 
> diff --git a/Documentation/misc-devices/index.rst b/Documentation/misc-devices/index.rst
> index a57f92d..f11c5da 100644
> --- a/Documentation/misc-devices/index.rst
> +++ b/Documentation/misc-devices/index.rst
> @@ -20,3 +20,4 @@ fit into other categories.
>     isl29003
>     lis3lv02d
>     max6875
> +   xilinx_sdfec
> -- 
> 2.7.4
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
