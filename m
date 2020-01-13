Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A73139819
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 18:52:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1Qj8A1HleYvpfpR6MNtbexMx0PQGa0Xu1BqC6RRA3E=; b=Vt8wpLImpIQpD9
	GYZJpZi2deIejLZJe/Zou08Edzhq1pkE3wGh2G3yDJJEJp5dDVmij47446tIO8Gzf9YxrfjutGZZf
	sL8/OEzy6B6F9Srs9FRLmrDRdTagDUg/yaO6GlZgz5TjSiUWXa1ht7LA9CDwlTMHIPTumYKl/DlL0
	suZipoUXTDeIGkmrTgN/aSOEc9jvJbUb2108SAsi4jTQRsAY9hyo7T0VchKZWnrxf4pPJh9zN9CHe
	P2OLVLDLPEEt0J8VtRFzG+PmL8NWRKsThs25ZtY+O6zbuJxJo1K8UJvscnFIBsJKMBMgL0l87oD3F
	RkLtZQnjUm6+mf1ifzPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir3tH-0006ST-HC; Mon, 13 Jan 2020 17:52:39 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir3t5-0006Qk-UM
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 17:52:29 +0000
Received: by mail-il1-x143.google.com with SMTP id t2so8905227ilq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 09:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tR/PVmec9Acg9lLoWkjAACYeH6TaFlhfszmRPXAXo1I=;
 b=MfRDokUBQY6p/kpal7XLw/g38Gh/IYdjm7i351TEXrATsDe15BahgFzUxUw2OmWv3l
 PYV4Mv2Il9WIz8LTiICJ1SBtYdi5VjGf38h8gB80wwGQAUlIlbhv7UhJhatiNCgeoZqk
 JM+eizhJUClZ7yCT3TMjSjHSi++Sn0aZWVSBOv53ifvZlTrnUsu+yNtpcbvb46ywW/TC
 Sb536csF4MpO14QhxwoKAlHNmxLu++s2/9SMwgGmd+4wnm1E+JUuxkJZSlGgL9zxpGzD
 3Zelh6J1MpWq1zuisaeDHXlCuztNvunhxSLppqDpUE8fmnD09ZPY7oFLG0MX/nyceWlV
 3umg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tR/PVmec9Acg9lLoWkjAACYeH6TaFlhfszmRPXAXo1I=;
 b=dG5rU+TUTnvL3dl+l2kCc74HfpGL+E5VrJBYlRQEDHamHPuiBqgyp9TYmwFOmEHMbW
 kIy2BDcW712KgkN7f3yDhS9/3Ekw4ylaXbLqGUkf0Q6uxM/teof6qsAq3wSdJCbb042U
 8xgE1JRY3Cal+G++3/lmuMkTfRDLmqPSjMYAf5Mbv1G9M0bRa43DcaNJKtPizl9AKTyg
 FNuHVtjPa+Pc/Rz/JWVjlgFBdDbbkaIzJpqNoVzLyNk+8+0fXbFPyXBhbSo/xhyvOXSd
 OxfREyUFzmKdcORTTvpxLbWXXqeN8sFAD5MTBEY+U4+910jcoIJCnHan7RRyJi6+q8y5
 KRfQ==
X-Gm-Message-State: APjAAAVJPFn05IqWVMob5xYFpqqda3t8q7aEWP2OFRKwRYIifq7pRlNx
 /1m/cacfjjyp1DcGSs3LbfO1L8Xsx3ZquK2PF3St0xyU7oQ=
X-Google-Smtp-Source: APXvYqwmifsPMIM7NR3deurhYvdhd2YslDh3Tb150YC7L/n4Un9cMt8a1ojcsrjY1X3Jknn0LNc6fVsXk09C2r1UTTE=
X-Received: by 2002:a92:db49:: with SMTP id w9mr14818680ilq.277.1578937945418; 
 Mon, 13 Jan 2020 09:52:25 -0800 (PST)
MIME-Version: 1.0
References: <20200113065808.25f28c40@canb.auug.org.au>
 <CAOesGMifHn6DbNgYm6YUbdKjSL5rNgdWrq+HX9dEusrOr9xX2A@mail.gmail.com>
 <20200113113837.130c3936@canb.auug.org.au>
 <caeb1af8-4aa2-71dc-0a70-127c0b474f93@st.com>
 <20200113224620.5d33fa63@canb.auug.org.au>
In-Reply-To: <20200113224620.5d33fa63@canb.auug.org.au>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 13 Jan 2020 09:52:13 -0800
Message-ID: <CAOesGMh0yfq_0RPzASjNPUgff4P+PMdo2fEB3BFO++Y6zz1n0g@mail.gmail.com>
Subject: Re: linux-next: Signed-off-by missing for commit in the arm-soc tree
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_095228_119981_55270ABA 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Yann Gautier <yann.gautier@st.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Ludovic Barre <ludovic.barre@st.com>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 3:46 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi Alexandre,
>
> On Mon, 13 Jan 2020 09:17:08 +0100 Alexandre Torgue <alexandre.torgue@st.com> wrote:
> >
> > Sorry for this oversight. DO I have something to do ? (except to not
> > forget to check my signed-off next time).
>
> That is up to the arm-soc tree maintainers.

Nothing needed at this time.

The point of making sure maintainers sign off on patches is to track
their path into the tree. In this case we still know it comes in via
you. But make sure you're diligent on this for future patches.


Thanks!

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
