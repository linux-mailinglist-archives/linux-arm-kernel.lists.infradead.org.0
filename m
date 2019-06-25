Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240EA54FE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLncjmEAMl2WHSzdVYdHTc2SkbTMC3agEdmfa7Ms0k4=; b=PJAXe94lBcG8m4
	JKJ34HHYnRzTqct59hShAsITf0s2+cV4Q2/y0DGji7AjpI74vWuximbYrsjOxSqbEauqIYg35BwDW
	pjcXHKGmhgJP7sDwk4M2TH3r9dZuxpYZIE94c4g003gL5o0WidDg+i2uovfrAekI9JE5QjeAJ1Vav
	1+XsXtD0vIqvZmDhFl3YvIkIeG+WBbZKDFbbzHRy4tOvw5SxcIvXe4/gXPIQr3qNx4iOyLLVwiTmz
	20yNyNpOIc+b/yFf++KABKyGj2WuGqkD/dXq7qcwqYGaG8XwXjxodjFeIiwxNV/coapsvse7/ns11
	RI2BbJdamMVn6tRoTWyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflEX-0000a7-CA; Tue, 25 Jun 2019 13:11:37 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl8J-0002T7-GU
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:05:16 +0000
Received: by mail-lj1-x234.google.com with SMTP id v18so16177056ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JLn6AET/8VToy+Z4v7YXskGIYrPaOsm+sZy4mfmS+z4=;
 b=jc9EHeWRtH848W8d/DpjnAtrBVzXH3vnLpbv7txAg3eOVBvlhPTrL/eOHUOTYCmyX7
 UDtigNW674HJmrghRii9ZdOWJbiKSauqqRrHFFgSVdB1Mmaq65tmBOk741xLj28EfgyI
 rnX6rVDbk5+jm4f2RRty/A2D1LHmRCOpQUwcqEVcjsy+QUtYFCGucb6NQeX2MR3rBXC8
 Gj4ToLVK843+3Se/wle57+GRTk98QVh0U7A+K+aaGtqtX4pFBlbUUExpugIjhWb65D7E
 v1jzj0Vnbfyx+VC+Omv9BRbvLk4tQgulSaW523+pNjfJz4HvEFGq0xOSNEzE2cTI4eeR
 1pDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JLn6AET/8VToy+Z4v7YXskGIYrPaOsm+sZy4mfmS+z4=;
 b=dCQMFos2EOjFLc630U6WfFI/PKi6ni3mehE0CbtamXY0A8gYrXxDV8r4ji5/UTjAKK
 sG02vR+ABufp05vZN4cv0dJ9iYlrw89+rrTUV0nzXxu+lrr1XHHLR2vsKXC17k9apDo9
 SSvkXGQVN+Egu3Mn0pJp1Irvh3/jmbNkBkijOho04GdJDjYdgkj5MDbeZgTX4flRVjJL
 X4H9mBHVENH9OVtigtAY6iktU8RAc7YwBD/ydzcA2UYywVzWGdKwlh1j+++x5CXpirMJ
 ZNqTGb4rsxDtCIG8GPvVVdTRZa9rfCKxumeLzoAv6XneGXRz9BCwJP2gAnzKeC83l+u1
 xYpQ==
X-Gm-Message-State: APjAAAVuzkUk62fu+IDwQma9ZCOGhSoB8AbIhB7qA6nM8GoJc1r9tTd1
 9nZvQRv+LcQDOeBA/U3vt7dbpm591ISgxg==
X-Google-Smtp-Source: APXvYqw+dT584PJUu9ALIvoWVlIQpQI9LlB1ZZaTRG3Bbpcl8J02HKzJj2xM5/njLha6K7db6EIDBg==
X-Received: by 2002:a2e:8744:: with SMTP id q4mr15699448ljj.77.1561467909419; 
 Tue, 25 Jun 2019 06:05:09 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id u22sm2609366ljd.18.2019.06.25.06.05.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:05:08 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:51:42 -0700
From: Olof Johansson <olof@lixom.net>
To: Robert Jarzmik <robert.jarzmik@free.fr>
Subject: Re: [GIT PULL] pxa for v5.3
Message-ID: <20190625125142.4jvynofoz734mld6@localhost>
References: <878stqyg9h.fsf@belgarion.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <878stqyg9h.fsf@belgarion.home>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060511_684495_A6C38575 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arm@kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Mack <zonque@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 08:44:58PM +0200, Robert Jarzmik wrote:
> Hi Arnd, Kevin, and Olof,
> 
> This is the pxa pull request for 5.3. Can you please consider pulling ?
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/rjarzmik/linux.git tags/pxa-for-5.3-2
> 
> for you to fetch changes up to f5a38c8ecf523e3b14c3766acf0d3119d96e8438:
> 
>   ARM: pxa/lubbock: remove lubbock_set_misc_wr() from global view (2019-06-24 11:37:30 +0200)
> 
> ----------------------------------------------------------------
> This is the pxa changes for 5.3 cycle :
>  - a simple cleanup for lubbock

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
