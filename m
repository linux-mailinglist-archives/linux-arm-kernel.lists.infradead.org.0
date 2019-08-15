Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C58C8EBB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiVecHuIn6BfcRCyz3J1Zr9EAUQdDkc1FGPjDC3C7Fw=; b=XwoBeRoPRbD+pL
	e92fLJgfJF0aN30lvr3S6MlQMTWxdRO3ex5eoajuTLNAssXxIwWDlYe1lGicnz2B1+F6KU4SdJQY2
	Wdd1NlrPycbirxTOe58Qh1n/GYJ+tQcHFFoJFngS7BFyQEQ838i2nA9fs5EizlGGO5TwNlbj4s/ci
	AYD0uOOMMx9PARhkzpk2py6aOmID9Km6RM7IxTson/K99L5u33p70W2a2iUAZSN9FkA0UbIvOJXC7
	TMBNJjkwxmbKwzzAV4XhMBQm+yC2ebXnoFhvfL9XO65NRVAjXsYoH9WmNqRkk7pc7Qo6NwGY7ncRg
	I33RS23SuGg2RI0HnaJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyF4Z-0008LO-P5; Thu, 15 Aug 2019 12:41:43 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyF4I-0008Jo-C6
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:41:27 +0000
Received: by mail-qt1-f193.google.com with SMTP id q4so2175700qtp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 05:41:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hwpYiBjJDZ7+bdNmVUOixG51Ert7ISOnYUwElsljZ2A=;
 b=hLNRyPINBkKXm4mnjW3vehRYnwBLE9X8rQvh8/dhaPxIDBTJMQxsVyLEjkQPmbICox
 Ksd91cn0Sj+fJqZo+AcOX/G5kp7PKNMnBH5pmqNt/3Gakh+I45DeleOGzIWnNn1Tqoo+
 Jthv6hOaEo5dX8GLtLLwXAcctuWL/uVxKPMpPZm4yWW3KxNeBytMVBg3sr+RLGEWPk4o
 5usaZuBrjWqW5SB2Rev9CBWnciWsB1SOosZEJU+Q8OaLVHX2gb8ebtkxZQl4lZq2ZPQG
 hBCkJR4OtqJrj9EL3+8x+ieGvHfvSXf1COCVUid3zSeiyY+/JTbaI1Pw3nbmFB/eF5B4
 w/nA==
X-Gm-Message-State: APjAAAWXbEV/MamOgtH/Jdfs7qH7TGVAcndYqlbUMIScrX0eDthN6oiD
 yDedrJSrHAITpA+NXKFSu/XUaPL6KSGyuwc/eTk=
X-Google-Smtp-Source: APXvYqyrGYFxpjQMbhMmuN7tPBGtW/ve/mXOBo5mV9EOHBswi/S2dCJQyMMLa70E/7A00oxBlsX5ExV/NPKqKNSWmME=
X-Received: by 2002:a0c:dd86:: with SMTP id v6mr3108360qvk.176.1565872885533; 
 Thu, 15 Aug 2019 05:41:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190814172408.25995-1-sudeep.holla@arm.com>
In-Reply-To: <20190814172408.25995-1-sudeep.holla@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 15 Aug 2019 14:41:09 +0200
Message-ID: <CAK8P3a2_G9a4QKZPP7RDNWEAdEHraNLqFQjdd2R0gj537n__TQ@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: dts: juno: updates for v5.4
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_054126_513516_CB53B697 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
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
Cc: Kevin Hilman <khilman@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 SoC Team <soc@kernel.org>, ARM SoC Team <arm@kernel.org>,
 Olof Johansson <olof@lixom.net>, ALKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 7:24 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/juno-update-5.4
>
> for you to fetch changes up to a24810673638d5da0336ccae5407c3fd59da14ac:
>
>   arm64: dts: fast models: Remove clcd's max-memory-bandwidth (2019-08-05 11:44:00 +0100)
>
> ----------------------------------------------------------------
> ARMv8 Juno/FVP update for v5.4
>
> Single patch removing optional 'max-memory-bandwidth' property for CLCD
> that enables to allocate and use 32bpp buffers(used on FVP for Android
> development)

Pulled into arm/dt, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
