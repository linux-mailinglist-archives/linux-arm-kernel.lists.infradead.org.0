Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE088824C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 20:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdhkqDkz1Z30F8+T+LkEVziXvchGE6M9Ib766yeN4k4=; b=ghqvjv/hTyIz64
	YU9yvtIEhU3dMpIcRGxBbsJip9bkm1JxUC5UchpvQTmXmh5W+L1qh66IpWb9M7bPOAl5apJ/1urCL
	546Mm8b91uDhENu/4doyFcrydB9guV2RVb1s6+I/1Jemrytf7Ccdigx17eECK/mf2Jo79axgnonaV
	rTUbrsBPWL1okyKJ5yob4Pop/ySVW3d4uUjYwl4E/H4ABKTLoXjznuoEJdfV+ua/lyBhEbfRv+rc4
	OjsGnH6vEqWfIwvyWVKv3+wL+BtUTsADY6JlSiWJw23XMFE2jtGgupyY84WOx0ZLVMNzu+8bAxSQi
	HnldUZssMu70PvQXGzlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw9WZ-0004LI-61; Fri, 09 Aug 2019 18:21:59 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw9WM-0004KD-Jj
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 18:21:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so46244709pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 11:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=NoJS3EPA4E/Zez3LCtMYEWvxXoiMwupWncuL9aQv4k0=;
 b=DoZQM3CBR5/yXZ1WMe8/vQbS+GqyAmVL1BAEgCZz7s6gcMvJ9lvCGZh27xL4I98oBr
 UZpZv/EnPLXjGSuK+aH9AJCEEgoXXptR/WtBbhxqxjaDlsy+XLvZ+9gMAcpRyEAKU8iH
 G7NQrLUbsbIbeknuokH2wZBuy1TPlfCa9FDNxPHbC9W+hRDdDJDbl3wbMt7u+Bq3tuME
 2DMTxeA+rqV+2qb/ovRnbjOndxKjeuKWJVlKc3n9S/8CxnopAdDXLwfSe7t/B4W+O77i
 9STGtWhsZy8PRubMtpqDHycH0jJGdbAUfbWztJ9oeeXvd5SJi386nAeFHWfKHZGKSMZA
 KozQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=NoJS3EPA4E/Zez3LCtMYEWvxXoiMwupWncuL9aQv4k0=;
 b=QoUuNPfVXEflPY0Tn39McXeK4NeHgYIzkwOQOQdSZhUuZ8gyLHMMxxHY78UrAt9Cbt
 of2ZXSBXNNkGjd1pcx3eQTqc7Kgk8BEd3YgvyYpKlxsu0R9EhgwyCTLAisJ+KoHlTvqr
 LWk3dVZ4MJCBW0/Vf+8BJqS0DavPZfuipScEZGrbxFPzdIaAg8I77wIqhqlIv7vzLfWE
 NOOv3pnt7hxRU4qV2KCe9CTDBo7r3MKzlAZtHpIjhE3NrkBNE5gYPFbNHr5eaCc0d7qx
 oJQbrG7eg0NBHDdvIA/7tBB4fxbdaNY5eEdh4lITxVgPzRmjXIV/mLmLaXlchrI25iLJ
 LJXw==
X-Gm-Message-State: APjAAAWPSWF5cyArVbYJ4fE3Y5BFKIjRfueJPHw0//s3riyyVnbU7tzK
 IuPIH/rTqNI1sKuzbOsrF9uTpg==
X-Google-Smtp-Source: APXvYqyJVLva9n72E7jE6jYUxrqVOTKGDoQHkgCTXp4MT8/0tRLXX0iCYQKo/mt/9fdtrQTkogz0oA==
X-Received: by 2002:a62:ae01:: with SMTP id q1mr22290623pff.219.1565374905793; 
 Fri, 09 Aug 2019 11:21:45 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:b873:707a:e893:cdb3])
 by smtp.gmail.com with ESMTPSA id d129sm110949243pfc.168.2019.08.09.11.21.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 11:21:45 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/6] arm64: g12a: add support for DVFS
In-Reply-To: <7hk1bn43fq.fsf@baylibre.com>
References: <20190729132622.7566-1-narmstrong@baylibre.com>
 <7hwofrh1md.fsf@baylibre.com> <7hk1bn43fq.fsf@baylibre.com>
Date: Fri, 09 Aug 2019 11:21:44 -0700
Message-ID: <7h1rxu42tj.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_112146_653580_85FE7251 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kevin Hilman <khilman@baylibre.com> writes:

> Kevin Hilman <khilman@baylibre.com> writes:
>
>> Neil Armstrong <narmstrong@baylibre.com> writes:
>>
>>> The G12A & G12B SoCs has kernel controllable CPU clocks and PWMs for
>>> voltage regulators.
>>>
>>> This patchsets moves the meson-g12a.dtsi to meson-g12-common.dtsi to simplify
>>> handling the G12A & G12B differences in the meson-g12a.dtsi & meson-g12b.dtsi
>>> files, like the OPPs and CPU nodes.
>>>
>>> Then G12A & G12B OPP tables are added, followed by the CPU voltages regulators
>>> in each boards DT.
>>>
>>> It was voluntary chosen to enabled DVFS (CPU regulator and CPU clocks) only
>>> in boards, to make sure only tested boards has DVFS enabled.
>>>
>>> This patchset :
>>> - moves the G12A DT to a common g12a-common dtsi
>>> - adds the G12A and G12B OPPs
>>> - enables DVFS on all supported boards
>>>
>>> Dependencies:
>>> - None
>>
>> Not quite.  The last patch to enable DVFS on odroid-n2 has a build-time
>> dependency on the clock series that adds the CPUB clock.
>>
>> I'll apply the rest of the series to v5.4/dt64 until there's a stable
>> clock tag I can use for the clocks.
>
> In order to test this, I noticed another dependency needed for the PWM
> regulators to work:
>
>    https://lore.kernel.org/linux-amlogic/20190729125838.6498-1-narmstrong@baylibre.com/
>
> With that and the clock deps, it's working well on my odroid-n2.
>
> Tested-by: Kevin Hilman <khilman@baylibre.com>

Also now tested on g12a: u200, x96-max and sei510 boards.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
