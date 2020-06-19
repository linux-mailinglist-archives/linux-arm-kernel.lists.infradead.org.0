Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 165AE200B64
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 16:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jlE2Lvf/8o073fTp/wxH9VQuK38w79qCnWPd5TPFyj8=; b=kj2zjXAXe4IZ2+
	0eKtua63KmurywAl1jBrJRzmJj0oM0IWq7cHVlFdWbSAGwc9XjnYtLbWcq1vGg3wL7ulSohxcAeO+
	AyNSbkgLm62mKZv5pB0nR2l7uh9DwNuMYziuI3li7wMawIFg3K436iQnl7ghmc4mRUeG6auS5HIKo
	G+zpyjL4b0/s/eYWJiraWO+xGZmUN4v8Ysaz0Hb7Foa1rv8VKkG2dBNS0JZp6+BTzWi79uMSRVlvQ
	Cfix4aRyHvJaijnO+vvqMBmkAxg6BYH99ejQm2HqZOwLeIN1onBODq+GoUYjhA9zGVFdNN9kPG+FH
	CHaYsLC0hL87Ea1Dv6cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmHyd-0004GE-4N; Fri, 19 Jun 2020 14:26:43 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmHyT-0004FS-0C
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 14:26:34 +0000
Received: by mail-ed1-x541.google.com with SMTP id e12so7786108eds.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 07:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8bSED8zl4CrcAER1VVpY4315eH4pyEInk1CBmUlC8tM=;
 b=iJvxOSObVw2uCB3dpRtcU1+kdibcBS4VTzuVUkFDbJVkDGJR2vlGw1hTcAs3wM2Tam
 XGi4UOs8uNemmHbnWqlm0CCGzeFJ81SiGAP0SwH7Pq2QUFjq0FJY5CzfOnE0Tcvvxa2m
 zuXPu5ApOTcKe/fumgtPG45HXts8sUHlDVrWYW02ekrxE9PYZ1ywUt16YRcoS/I3jUvL
 91dteczkbB3+8EXmotE3WGfHl++X8J55oGhOmEYbvRuO5ckaTbuRvRyHKFPfe8f02czo
 lyY6L3nu3z9lFdHy1m0520iP8gG50EdpjIO7ycRH5byCsniK2u7Gtpwq+FFQI5OhqFqN
 xmhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8bSED8zl4CrcAER1VVpY4315eH4pyEInk1CBmUlC8tM=;
 b=t204SwRaPePkhZ937lijIVe9HqwcBm7K/JBrqlr+o4A7qMAmJQOdzHvOKlMh3hjjCl
 Cd7kNSuBlnYwfrN8809PyXJ7+p4n2VtDAWzwBFk3NWeQ/cNuZQjopXAYjb+t4nzCk+iK
 WkrqKP+EWFiyJYVMQW0hflkUPRbkf7NoOL5AIryHIkpXjW2JsEabu5pcsER0sWqevHlf
 mXSq/WXzJF8Oy8ckzJd6mw6AmYDctP5Co6AupX6EJgm+n/0Fj74U9/bg9UOY7+YEJcTD
 KVF4NbpomeOqG+GewmKlhgnNpQfoytz0KkSue2ioCgsFRtcXttC8IrLtWZ6bIkmT9ZPe
 VLLw==
X-Gm-Message-State: AOAM530I1tE6WjuJ3MweLpSH/NWn8qX0f3tTg9JXZ8aFLaXtpc2ungBx
 Q2KqmH+ZcD938KUGr0+wg6w=
X-Google-Smtp-Source: ABdhPJyRnKu5OL+gzHHN41FCxTU48KdilWSjIzi6WQc3xDaIKuUdLn5JhaB8ICPJhCHJj3DTR4VdSA==
X-Received: by 2002:a05:6402:a42:: with SMTP id
 bt2mr3539290edb.42.1592576789902; 
 Fri, 19 Jun 2020 07:26:29 -0700 (PDT)
Received: from ltop.local ([2a02:a03f:b7f9:7600:904f:be8d:1d92:9974])
 by smtp.gmail.com with ESMTPSA id j16sm4736461edp.35.2020.06.19.07.26.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 07:26:29 -0700 (PDT)
Date: Fri, 19 Jun 2020 16:26:28 +0200
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Syed Nayyar Waris <syednwaris@gmail.com>
Subject: Re: [PATCH v8 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <20200619142628.burfxyjoe5uouzuz@ltop.local>
References: <46c05c5deeada60a13ee0de83c68583d578f42fd.1592224129.git.syednwaris@gmail.com>
 <202006160420.iatdr9ab%lkp@intel.com>
 <CACG_h5oiA8mDpTjtyGFYR4eptbxppN9tq+2wUj8T1hsbZ5h47A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACG_h5oiA8mDpTjtyGFYR4eptbxppN9tq+2wUj8T1hsbZ5h47A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_072633_060085_F8B89735 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luc.vanoostenryck[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kbuild-all@lists.01.org, kernel test robot <lkp@intel.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 11:27:18AM +0530, Syed Nayyar Waris wrote:

Hi, 

> Regarding the compilation warning reported above:
> 
> "sparse: shift too big (64) for type unsigned long" at line 639
> "sparse: invalid access past the end of 'old' (8 8)" at line 638
> 
> Kindly refer to the code above, at these line numbers.
> 
> I am in the process of fixing this warning. But what would be the fix?
> ? At the moment can't think of a code-fix to make the compilation
> warning disappear (specially at line 639). Can anyone please explain
> to me the meaning of the compilation warning more deeply?

This error message is caused by sparse doing the check too early.
There is thus nothing to be fixed for it in this code.

Best regards,
-- Luc

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
