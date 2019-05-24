Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA30C29F3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 21:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Ge6CHcVZkLfYrMEH2c3MbEp60Zaz+tDreYlVsgrCrY=; b=SIXsTfbhtooFzA
	Ka1ebtWmVfR+DO1hCOZH5mvcrQGGV+BEyBee6OOjqIoi5toqVvAyZvEb8tGWqky2NlriHHGTiXB5C
	kY0klh2sk+SnyIvx28NjWRaOHs+qmS4LSDNgNogSqieDFgtYZ4ykrxpYckDGL0GyD6byr9c9G+Dsv
	6Wo8rFYaob2wRVyJPZaCwjGOEarry20YxqgjQyrpjMliucGXXoOvsfoqET0f40FMfAcYxYqJ9Cq0z
	PQqUbMxjlaDP0r7yr9ZrmH+A0csy7YPXx36jBFw0sGzExdpMyCQDR/e7d+/wVBn4rXGDafOIvELmg
	dbxPZLckXogdDmBdYQbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUG5B-0008Bb-BQ; Fri, 24 May 2019 19:42:25 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUG52-0008Ad-4k
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 19:42:18 +0000
Received: by mail-pl1-x644.google.com with SMTP id gn7so4531290plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 12:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=2dfVnj0z8UOLBg4J0DLOYq1772RUeCwK2zOSGh4/SWE=;
 b=vZaagkluwNiMRjWKl9RSzMjTzb/+1YkoKYezoNgxeEzDWoAOHNJVRD9hB1opBDxErw
 9xr5lV+VyFR9BaG556Xbp/vjkxeWkT+Hp4S7UOU7UZYUdMd77t6LqmAH/7oIpxRYyGTw
 rq1osS6x3GG1knr0FPHct2FPZQRdXEBjgnwzbFgO/Fm6od5VxJolEgong3iGe/q33LPY
 PECMT6loq99WvXs7EO+G3X2PFC9BhkDxc1L/lWQXJcJ7vUN8vOxDDwzC2YRTmBDjKJpP
 U9YYNomVlkkz70eP704r5h0sK8Zkwn0b6KBYbXBLGrkine52vJuXr20svFAgfonrwn3I
 Zkpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=2dfVnj0z8UOLBg4J0DLOYq1772RUeCwK2zOSGh4/SWE=;
 b=t8LOqWnMQnYg2b6VCV/kVh497w+87tyVFvjeRyzK2A0r/NQJfe6/mleNwC5+tx2Ptf
 RLj7tsJeh5cmzAhwoXgD6z+eJ5HSUngt8HPziEjH9SokogTER9qffJQG+XzMbmwwIdeT
 lb2e5ShPjovhiY8yFD8pf4nrfQ4h5mncttYfptOWPxKebmsWzxPg/Xb0ifnfnoEOvXR0
 eO8ddkdiGgQN1ZOPVEBlftKwrWflvQohDpgrb4m7LzxXHuZpS1SIqmkYr4hAPfouPtW2
 M+dyslXmquCxVrzHDn0qtj47N/6bjL89kLzdWLkpo5ggqSsa2VPoU49ATdNv+RSgqN7O
 Osug==
X-Gm-Message-State: APjAAAVSm9+EOWD/NOESub4AdaX79ciDO6fh0suijkg3ZPl/Jii3SI5J
 Xfoa4Pbl5mjN3cipAuNR2ir5ZA==
X-Google-Smtp-Source: APXvYqyVtWnRm6ZPuzBDAHjyTx+TyF/ONuADCQywreRoi5SrfW3rQzlo+xq+gy2RDJoIMj5p7saM+A==
X-Received: by 2002:a17:902:1347:: with SMTP id
 r7mr64611826ple.45.1558726935160; 
 Fri, 24 May 2019 12:42:15 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:ed4f:2717:3604:bb3f])
 by smtp.googlemail.com with ESMTPSA id r71sm8643926pjb.2.2019.05.24.12.42.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 12:42:14 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 0/1] ARM: meson8b-mxq: better support for the TRONFY MXQ
In-Reply-To: <20190524181936.29470-1-martin.blumenstingl@googlemail.com>
References: <20190524181936.29470-1-martin.blumenstingl@googlemail.com>
Date: Fri, 24 May 2019 12:42:13 -0700
Message-ID: <7hblzr1vxm.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_124216_300977_01038886 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 hexdump0815@googlemail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> A while ago a user asked on #linux-amlogic about the state of the
> TRONFY MXQ in mainline. I did some research (mainly downloading an
> Android firmware image for that device and looking at the .dtb) and
> updated the mainline .dts accordingly.
>
> I kept this patch in my tree but didn't hear back from anyone with one
> of these boards (who could actually test my patch). That was until
> today where I got the following message on IRC:
>   any plans to submit your latest own version of the meson8b mxq dtb
>   to mainline? it works really well for me and the one in mainline is
>   too simple to be usedful ...

Any chance of getting a Tested-by: from that IRC user on the patch?

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
