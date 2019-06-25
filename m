Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A0954FE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6ZzPAAkcJ6ghxDZoQkV+BhA75sAJ58R/MzYm2ivMXw=; b=UABPQckU482JiL
	bysNA9DFbylghNfNEH+VDuI8xGwC3iRZvpZ3lgiEjTzE9hoq4t/WZndwnsJrQEvROssQsYkhFO/+d
	itF0AC2eYmMF94RVf1BI5qr5aBV221iAOuyivbomnoE6Zbd+ZJMwtrpwh/2eeMlqWsclAY62Zq6/e
	5Esfa8hMNwQdT0OPc5v9clrsxBxcmEKEWO8bvyy8CbkWuEAAfB6PEFfhNmUgNJhb7YhpUJpOtYcX/
	I64+9crCyk3XQVb1260lQv9CV/BG1mOPJci52TVWEebVN+35ueAZ6lWg9cEXdKmMK6vO/geNJbcgS
	JsK8myIJIH80RA2S5+Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflDn-0008IL-8L; Tue, 25 Jun 2019 13:10:51 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl8E-0001te-Qq
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:05:10 +0000
Received: by mail-lj1-x242.google.com with SMTP id a21so16170540ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rhjA7fAZNw2Q+XRq13cvAZPnDW7DPX+n1NAELCO47tA=;
 b=LfHbIsT+MKGzl37e5b3/djYl7tNsPEoicdbf8f84U9Jc/HwPda16Ip86TC8prlKRzw
 9jr1WNfZDoPsfJHf13b2qyRIPCj+0SqUWAe3QWmQMlrQS9TIB+JHs66Norpx+BqfqdT9
 HyNj4q63nK+hTIJ7NIE3oAtdluaQ3vSSanI6jfMwXvIOegq7f3epI8dMcwFo5Gd9TvZz
 xTvohVnwcuW+FX4Lr4avIc9bF8fXpyIjEHuf6qDN9RIYEZq1I/00olWpkw4jX2jSa65Z
 sd/46f0DwcKa065kRAAiy0HW33qXQ8+ndfxxSoHgLj3GEMkjuvhn3YWkwVgLDlotidtr
 qoRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rhjA7fAZNw2Q+XRq13cvAZPnDW7DPX+n1NAELCO47tA=;
 b=qgkuvWKoKyuRfQ3jNgVwJPL52LFj3rVTKvmZWdac1JsEh91yoY6A99ot0cICQ/khNU
 BdoNFRE8g283/lAoyFZiwmldxdE5GPuuNkxNwrZ4bod3rNYM9IGPAmiHI/QVzxa1Mifc
 uStTYYMYcT8nEp+xfcKlssdT1ma9Ia5jxX7El4oZpJqCi/YpMbV8v6JzHqVtmoTYhZvt
 7decxJzR26Ddd7IEgYEdd7DUwtUn+Qumz1U/Fv5qwliEDuPsj8LdskV+lNw3TPty1A0N
 vb3O4Gv+hBbi5BiWXNKFec5DIc7h0oUSETVryR2Cv+Vbsf2RZt6Oo/wAsHNqWp6IY6Yv
 SIdw==
X-Gm-Message-State: APjAAAUuf1J3VPjujaKae4+XGLPSF3/+ytN8YJa/ZzB8xgfKJC4m0doz
 vknvj/J/9cT9/IMRhYzknsHw5g==
X-Google-Smtp-Source: APXvYqxO7jGcSIN6o2p0xOqoXuQRSIPIC8p02T/19CY/zaU3Oj4P2pDHi25ey9bgYE90rV9DmbXdCA==
X-Received: by 2002:a2e:9ec9:: with SMTP id h9mr45947747ljk.90.1561467902864; 
 Tue, 25 Jun 2019 06:05:02 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id p9sm2284328lji.107.2019.06.25.06.05.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:05:01 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:49:24 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Renesas ARM Based SoC Updates for v5.3
Message-ID: <20190625124924.ubpi3pxwggbz5cbw@localhost>
References: <cover.1561105093.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1561105093.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060507_298682_72CD83A0 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 11:12:04AM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these Renesas ARM based SoC updates for v5.3.
> 
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm-soc-for-v5.3
> 
> for you to fetch changes up to 02af9f90941b6cce5fb672ee058c142adcc11a2f:
> 
>   soc: renesas: Enable RZ/A1 IRQC on RZ/A1H and RZ/A2M (2019-06-06 10:37:06 +0200)
> 
> ----------------------------------------------------------------
> Renesas ARM Based SoC Updates for v5.3
> 
> * Auto-enable RZ/A1 IRQC on RZ/A1H and RZ/A2M
> * Don't init CNTVOFF/counter if PSCI is available
> 
> ----------------------------------------------------------------
> Geert Uytterhoeven (1):
>       soc: renesas: Enable RZ/A1 IRQC on RZ/A1H and RZ/A2M
> 
> Oleksandr Tyshchenko (1):
>       ARM: mach-shmobile: Don't init CNTVOFF/counter if PSCI is available

Merged, thanks.

Note that in this patch, code like this:

+#ifdef CONFIG_ARM_PSCI_FW
+       if (psci_ops.cpu_on)
+               need_update = false;
+#endif
+
+       if (need_update == false)
+               goto skip_update;


Can either be replaced with a goto under the ifdef, or at the very least, no
need to do a 'need_update == false' -- 'if (need_update)' is sufficient.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
