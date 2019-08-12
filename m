Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BA28A8AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 22:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PeYbBbizTa1jvGNOU5FqJ9kszedHa35xECX2vxvAEoM=; b=iMOu6PVtw55GsN
	z45EIsR9C4YmkTPquVDy5yXZ/iYnhYI4ixSSn6aZUepsm4tgfzL2lTWZw4N3i6IfeuLxrh8r03pCj
	ze8y5lhY8V5jZfO6Oqi+v9dVs67NSQLtaCY7pTpMvnD95bt1RW9WAELdc5HPBAGJ4slmQfZDKoIQk
	bp10QFqPi6X98GZ4xh3zA72m0IyQANCd9wji5hYCc9cnlVxdlQDSRIoVEFr7wCiIRo7affSeFOTAz
	+/BhH7+YUVcqlN/l66QnSF1BBKwwrlFOfqoexOYxzD6wl2YadPm+87HdClRU74ZZN3BNKwthOrXoN
	bAT4nMEDYlNoow8CPkjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHLS-0005dq-JV; Mon, 12 Aug 2019 20:55:11 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHL3-0005cT-Ql
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 20:54:48 +0000
Received: by mail-pf1-x442.google.com with SMTP id b13so50303965pfo.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 13:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=G96ttrylkozavtp+GkCFPZaZpJ1CXYrccgmyLzpILSM=;
 b=2MsEqrq6jeAHonuDnFidSEMvA40eV2EV9rHP09a8PVmfQV2q1l2rUXiOBofFeJytCi
 yI+eiJfH2QzC7hIdvHRPsVJrkoZa71GBYet+8I26skuXpSKSI6mp1hI99ctHa29GprZ2
 D/4QHSTBBh999SSdtRaZg4Rga9dfc1HV1AYHPPnxvfQKvLeYaRfUTi4mGfAxKSdbp0xQ
 xRoZd/5mUSybTsWNHCDHg3TkIxncgGBdxcipbrzEf7yrtBKbhoA2r8VNePoJpE/r4e0E
 Y6Id0y55Va4n6Rzm1NfozTcxT848JRvEm9+JoESTp70CMatneEjveslZJC4XPk6RIZqy
 O17Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=G96ttrylkozavtp+GkCFPZaZpJ1CXYrccgmyLzpILSM=;
 b=inlj46xi+acZRCVlla4UsoLSs/XEKy36Gv7+rkZKx7p3F5h6nKovQ7nHuN96Se4UaA
 q0Z7w7gg6NFpMPlTtf59if5UdOQlPc4YSRgw/Msm+oLnAd/OVrE6mR44/AVnPs65xEmr
 gHHpC2WZ/ML+Ij0RtgBqSs8HDIEzzzOqh1V/KkPDH/ycZ+gz9oh6/UPF4B/7nq23eU5v
 C4A5oT8zPaMwBaBXX2GmFKMvrDgBuI4m8FKC4rAijlT++CCs8t3A+Cu92E10S5Gh/TJO
 rstuMXS1u/pWoTpEsI1i4hG/ouxlL3vJpG4mSi4JG/476iVoVreSeKXXopQTdKNjG9oq
 eUiA==
X-Gm-Message-State: APjAAAVC6PqfoKYkqLC07EyAIMdRmJg9kT6l2QxjfUz7Hny/6CdzHDEJ
 ObU7EgIckVZIbM5wcGf/1jW5Kg==
X-Google-Smtp-Source: APXvYqzbET0UNtAEOW/tFOjsj6Fj901cwmJjrYlflO9pmbo1TxhTMwyLzIaz0Ye07PH9P2f/B/glkw==
X-Received: by 2002:a62:f245:: with SMTP id y5mr3845900pfl.156.1565643285235; 
 Mon, 12 Aug 2019 13:54:45 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:14bb:580e:e4d6:b3a8])
 by smtp.gmail.com with ESMTPSA id cx22sm405480pjb.25.2019.08.12.13.54.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 13:54:44 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/6] arm64: g12a: add support for DVFS
In-Reply-To: <7hk1bn43fq.fsf@baylibre.com>
References: <20190729132622.7566-1-narmstrong@baylibre.com>
 <7hwofrh1md.fsf@baylibre.com> <7hk1bn43fq.fsf@baylibre.com>
Date: Mon, 12 Aug 2019 13:54:43 -0700
Message-ID: <7hpnla14vg.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_135445_988121_AC158829 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

After merging Jerome's tag for clk DT, I've queued this for v5.4,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
