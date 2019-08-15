Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 158E58EBE9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:51:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/W3ijKwqHRQvsFjsiNumfQUzsjp6HnjsldPU2uzgVc=; b=ReNeOglgcXkVU2
	9RgOB30WJBJXv9NscmxSSFkAjWW66TjZIRn0Grb7r8h8CTdHyschzs4mRKrb5rsWWcsA1IemCMWc/
	3j8LClEZ9jDr9P/xxCCkFJPN3UfDWdjzQtJQXwE6406+FeV3Q3HTXylzRntrRBcs5n+qJ1cPoyxYN
	YzLI5MSqFNvHx1taD8ZUeqZObUbfroW3zPwaC84DQDLRXXLFIbCwbOkjaoOtWmvr4M2x09Sgh1XCY
	ZOSZvk7xHIJDsst5//M9/2OYv8iMp2+vYxPWhM1/XUA6l+uDNU4CLYH8QUHvCpGSBKZUFW/7VZJBM
	Gi3K1AucNDmzPROTnddw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFDr-0004Fl-Qo; Thu, 15 Aug 2019 12:51:19 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFDe-0004Ez-PB
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:51:08 +0000
Received: by mail-qt1-f196.google.com with SMTP id j15so2116742qtl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 05:51:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B1lEp5PyZBdDBHiupkP9bKsHo4K0FiqVKGpFRU1M0Xg=;
 b=nqxoFNB6HrLK8zoBbY9D7nqfAntkSRcO2FU/CNwEGVIEnl1YpodstjGAeiU4hCtN3q
 VH7OlRj7kbdADSyHaHp9AawxkTYHQ1Qez6FTV0PetQE02qDTanb6hkvT0DhEQTIs2mjk
 TxJutCa5nzrDVbtIZ121ddU1tfMls6tjfGPX+oEtnO0pRhdCUL/EOaznzAKFnUFm1Q4W
 DlAzhV1Tn0O5w8YTmPbiY1iGNQ2/6gD48QkWBoVMjKvhR+M2lAojCFpOEbrbw/Cuire7
 jRQrN71a+hdiTh7g6bPnZHZl3wd7w0SuPdn3LXbV3nDKiTp3WDhmUZ0X0mgmjfh2kQxV
 cqUQ==
X-Gm-Message-State: APjAAAXcijwgopSf90qyZ8c/Y2CRxrcaxIbWv4xUmIL4AWtdmqKYEUn4
 dknJAhy5NhTQUNhhTYwNQyQsDEy7TTS8A+lirkIXBweP
X-Google-Smtp-Source: APXvYqwkQBKp3R1Yg7oTxWFJzWFaQqWuK8Viazq1y/ALVI0IBmojXa+4NngsiUBUwVrkjaAm3MqnvjzxBjTjR+lmfsc=
X-Received: by 2002:aed:3363:: with SMTP id u90mr3744274qtd.7.1565873462689;
 Thu, 15 Aug 2019 05:51:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190809162956.488941-1-arnd@arndb.de>
In-Reply-To: <20190809162956.488941-1-arnd@arndb.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 15 Aug 2019 14:50:46 +0200
Message-ID: <CAK8P3a1TiPyopF9N40TOEDX+Ud7UrMknWS5ObZD_B3LULLtDXQ@mail.gmail.com>
Subject: Re: [PATCH 0/7] ARM: preparation for multiplatform iop32x
To: SoC Team <soc@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_055106_821928_019A8C69 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Dave Jiang <dave.jiang@intel.com>, Linus Walleij <linus.walleij@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Dan Williams <dan.j.williams@intel.com>, Imre Kaloz <kaloz@openwrt.org>,
 Martin Michlmayr <tbm@cyrius.com>, Lennert Buytenhek <buytenh@wantstofly.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 6:30 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> I'm looking into converting some of the remaining ARMv5
> platforms in arch/arm/ to work together in a single kernel
> binary.
>
> IOP32x seems to be a fairly easy target for multiplatform
> by itself, but the way the plat-iop code interacts with
> three generations of the code, and how the dma-adma driver
> is configured at compile-time for each version gets in the
> way.
>
> I considered adding more indirection layers for those two,
> but removing iop33x and iop13xx is much easier in comparison,
> so this is the first approach I'm posting.
>
> If we conclude that iop33x and iop13xx are indeed not used
> any more, the remaining patches in this series are
> straightforward. The actual multiplatform conversion also
> requires changes to the irqchip driver that are not completely
> mechanic, and we can discuss those after deciding what to do
> with the first set.
>
> Adding a few people to Cc that historically worked on IOP.

I applied the IOP series to to the arm/soc branch now,
thanks for the reviews!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
