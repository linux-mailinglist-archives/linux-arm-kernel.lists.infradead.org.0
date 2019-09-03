Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D79A6A9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 15:59:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9j2VBwBeF/oA4wSTsSuQ2RxT2ygg7MK2vE6fKUOiez4=; b=S48O6UNpH3BgC5
	eGdU4RRdSAF4ya/yM5mptiCK2qYmdfcZtqIcYqr3hzNEWbJ6o5QzP932RLGo8B95OTfKmz2Ds9Eil
	kE+T06zMg1A3fEkXTaQhK8BVedDXlsAxnu5W5+F/npayf+RIXkUW3NhplFUNl9cprkNqhn0WU8XL0
	Kf5NrVfv6ufuxrgetU7+e4cKOFdL7f2Gh99bc6cOpB3E9fNLGZXmC6X7eTEt5M060UiNCYFzs9XuK
	0NBr5d9T+LjuS9Y8ASUi3sQhULhstpAeGUEInDNB6dDvb3F+wDUwAz35zzkdr7xcCwU0szJX8s+Mn
	otAk479Y7LIYzRJ3eHNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59LU-0007uF-LK; Tue, 03 Sep 2019 13:59:44 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59LI-0007tt-BL; Tue, 03 Sep 2019 13:59:33 +0000
Received: by mail-qk1-f175.google.com with SMTP id f13so15952739qkm.9;
 Tue, 03 Sep 2019 06:59:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0e17as3VR/oC2DAawaVGien76iBfAI0N9aX1yddagwk=;
 b=g0aF0TsKYVSqP4BzsK92FnRN951b5S+hYVzca9UaVHM3SdXaWJNy/aOhAtYMsBY0a3
 ER0zb3ZiokkDIYcoxyEpGTdHyVoc385BiMLoT84btia+1+cszNvFLsViln5m89r25q9T
 ARKZtYMiBB/MLPYrgYBcpt7b9K51wvw1zh3F2NJFJDIKSnEv7HTKm5d9MyJWDha5r7pP
 qyNqNgM2EoK+rozZgxtn5TEtTSF16XsD3qq8HFL922sk6DOe6yHkg7LXES3doY5tB6fj
 ag59KwQL7j/4UcAhSMf93/wXf9ULgV9BN1mzpe6SJQ4tqf0rGfV54PwKckSRVPwy/+26
 GnTA==
X-Gm-Message-State: APjAAAXQf19TsPmaZwh7tmVlQmY+FHPer40p4KSRl/FyFRMM9eN0zWAI
 e/XT9NaFTYdK/GMHpLJ/btAcF37XMYv2KsFg8Qc=
X-Google-Smtp-Source: APXvYqzr7Y2nACxjnlza8RHOen7v2iumyOkQyWRsYZGIEbQRqwbFluHY84dRhwjRgGpVYA8d0LG1M+9kGxj9HDZsDww=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr34471317qki.352.1567519170245; 
 Tue, 03 Sep 2019 06:59:30 -0700 (PDT)
MIME-Version: 1.0
References: <e236f659-2851-21b8-1873-314cd72ed6be@gmail.com>
In-Reply-To: <e236f659-2851-21b8-1873-314cd72ed6be@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 15:59:14 +0200
Message-ID: <CAK8P3a3s+SPF4YpfQUKw5wOhF6hQF2e8J8qsLcC1kmhZY+Ff0w@mail.gmail.com>
Subject: Re: [GIT PULL] arm: mediatek: dts32 updates for v5.4
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_065932_385128_5E06CFB1 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.175 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>, Ryder Lee <ryder.lee@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 6:40 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:

>
>   https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/
> tags/v5.3-next-dts32
>
> for you to fetch changes up to cc212241df0b8975bb0e6d7f9028405a9c664e49:
>
>   arm: dts: mediatek: add basic support for MT7629 SoC (2019-08-22 11:22:17 +0200)
>
> ----------------------------------------------------------------
> add support for the mt7629 reference board
>

Pulled into arm/dt, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
