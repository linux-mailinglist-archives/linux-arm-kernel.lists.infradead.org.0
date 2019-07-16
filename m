Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF9A6AFB6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 21:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dX6LTA5FMdBbya2FakbzAGUhmmnr9LdqnjFbQuwR+tw=; b=X1uxxOiG0CGWRV
	UO0u1nZ2pNSXDU7xP1p4YtC+kjgPgkzFoRQByYVzKFpb9+kmNLktz4vDfuYJbcHVVhh0IYXyR3LuD
	plvKsTZxwW7sN2PdW6wbOhMNJ6O+QxkC1wcIFX8jBf64TSthzsdXXlqGL3yeB6g/bcSK38jF9rTdM
	74iIw1M0IYedsRK/onTc2uSAe4eaaXhPIFaGCix54rRKLX2klGG7jcSz0eXlxM4xbGElS5+xsrz/R
	LhcMPJL6Ng28w+paFVnRqAuScUAQIE7Rgfci13P/GAE/LqajkGYMr+0YY6bRNxBX6nAQ3akawg2FP
	w9ymP8E5LSwOJc/46ugQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnT4N-0006Df-QV; Tue, 16 Jul 2019 19:24:59 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnT4A-0006Cy-Ao
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 19:24:47 +0000
Received: by mail-lf1-x142.google.com with SMTP id 62so9689145lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 12:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=47dsVCKrSoPe/pZADR7jkZb/IS3gSAN3kYpdocS+6Gk=;
 b=TVwoK5PvCTdlFm50cwj1ghgfLICUPGD3FpnvlwlLQJLKTj5HsmMMHVNIYSPqStP543
 kecXULtc+un7k2+WkzQTZPiUgMnckZu7+pZg+PwT2CioRmoWUBSOYAlrVMe5Zze+8QJ/
 q5Cw7mRYOee6yeFwXiHd9iLNiieZ7qOKOFVkoTG8P63oW70CIIcNN1gIErQwl0xE99oB
 ZiqGjEdr2fKQSb45X3qWNdXOlhm2haNSfhWt3FmqjNw6Fm8durrMZdau2wAs94oQjWyN
 1+if+SuNommVj71P8vqWR06zVppyR/NKLtFDsxItlkbkfFXsNfA3XIkfj+sBrPnYQOfZ
 URhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=47dsVCKrSoPe/pZADR7jkZb/IS3gSAN3kYpdocS+6Gk=;
 b=bdZzYQIuXxVJOkmM3G+P7JS1N9dyYmG0SSN3tTZJw29ZUDYK6C/oHINpq+b8NfEJc3
 7ho1EbzOn6pX0rwbHOLEH5aavN/bpSRXTbCmp/ocMaJH6Tyox1iae+q//+TGSL1sloUH
 tuMVkyjTo2fTBnLebLZK4mXkHyyikuMIdU/XU7di2DdIyCzcluJWEJxy3Q5xjrp/QmpB
 lgq1kPm3POOhNQw9niZR0YAk0xxAaevKklr2AllWb2oBYllWtBFOIiPaz/m4rriJOE0l
 tHNRUNXCONfEERGZW53k+1j0ifMGw8M5mTC+ybxCAkaks/WgQqc+qdzStBrB9d4XSk21
 NCkA==
X-Gm-Message-State: APjAAAU34ndeZOcRM1dsxHdoj7eRA7ZFdfnJx4Lhp9KVbF9LNobdCCUk
 b7GJIA93kB7BXI0lD2hrAS4n4YV9pcnRFScbPMY=
X-Google-Smtp-Source: APXvYqzGG+VZT1KJvBcsGagEHLjmhbhyCJKjQH9GWIB86Z6aJnoxMnTy+yfEXMr+gzbwaVnJr8OYERTSeYLO6dJHsBA=
X-Received: by 2002:a19:5044:: with SMTP id z4mr14962771lfj.80.1563305083752; 
 Tue, 16 Jul 2019 12:24:43 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-16-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-16-git-send-email-aisheng.dong@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 16 Jul 2019 16:24:40 -0300
Message-ID: <CAOMZO5CTmAdxRK4FZu+Lw3WxkBzdufNJ=gE11TFSoizdYwXnbw@mail.gmail.com>
Subject: Re: [PATCH v2 15/15] arm64: defconfig: add imx8qm mek support
To: Dong Aisheng <aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_122446_399483_1EEFA2D3 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Dong Aisheng <dongas86@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dong,

On Tue, Jul 16, 2019 at 12:38 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> add imx8qm mek support

The Subject and commit log does not match with the patch content.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
