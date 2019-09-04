Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03805A85FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVURiJJGijAVKS3LhyrCMjHrsSx4LIQasm91hrboFsk=; b=dPKlZzXgHwERVo
	rdAOD0XgCbdoz4RvmQlGUJ3uHPQEWudK2rua2/0LbuNax2Fhkg6XSYgHbeg2XT52LBvGxmrCGQgN7
	/eFL/KWrYQdWhpKV+RYbNDesv+TZFsV7Wa5Rc/QpFpDgMryRIFtbEPny6BiijBhIJ4ey3dQ4irgSb
	X0LhsmJDSrHomyH8b9GOSSaTDfqsPy3PhjaYyr0+5Rh5kn47YR4zcyMUVDL/1v2t5T72158/T210T
	qcFidvdYGA11qNut++rkzllDFgw6u+A1DZq3hcQUxsKWI0Mbtm9F+QjNxtxEPkEVk7tPnvz+y89ks
	W83HvI6khgIHBtrYC7tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Wvq-0000VC-0P; Wed, 04 Sep 2019 15:10:50 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Wv6-0007bR-PR
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:10:06 +0000
Received: by mail-qk1-f196.google.com with SMTP id o11so525683qkg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 08:10:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jQ37U1P5cGyfzKjPymXuFm8nIXURCK34LUc9c2XKlYo=;
 b=dJ2kNddMaI6aSM79FbJ4SG2BuVlJrLIycLZpgEooltHuMAp6+fYpiVM06892iT0gJ2
 0mCZucP3qSVtqMGP/rkwsfUJuWGqO+4vq9msB7d/G5ibdQ31lbd9F4+4vwFfgugLj9Mk
 BSE9MEa+x5PNmsj39n1gJpNUuL0cY8LGu21YMEHf+yjFSmZ6bEd3Xb14Io6KIr5/e+TW
 vYshtMvY2uNkdvP+R3VxHOLUyx+WnoM05EzcDNnTl3LsRNJRVsrlbhKY6p8wiEFnLC/K
 668O1ODNV8ANbtMEUBASDBk4yUMRm9dFs8u6VP5uqeN6KqhPZFRcZmDVSkpGZOox5KcE
 9onw==
X-Gm-Message-State: APjAAAWaafKSXCzsjJm7Gj436LxaD0ffLRpwa1763OmdVpRpmReXZcKf
 Q9cvEpvdLudn9YM+aloaY43kdNmQ5VId8OKoSSA=
X-Google-Smtp-Source: APXvYqwVxsJtmwK8v0tdFXjRDq+bPa0/JL+uIX7Nr/y5QkNc41fZGRKTFOXi1DoZJPrmMwbHbJzDzDrMbXMrvhx1UTY=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr39289518qka.3.1567609802118; 
 Wed, 04 Sep 2019 08:10:02 -0700 (PDT)
MIME-Version: 1.0
References: <1567317285-8555-1-git-send-email-agross@kernel.org>
 <1567317285-8555-4-git-send-email-agross@kernel.org>
In-Reply-To: <1567317285-8555-4-git-send-email-agross@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 17:09:46 +0200
Message-ID: <CAK8P3a295gmeD9ebhW5cyAXmiLo5drsdO=4wuRaZ18U1gLCFMg@mail.gmail.com>
Subject: Re: [GIT PULL] Qualcomm Driver updates for 5.4
To: Andy Gross <agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_081005_130754_CE8EDB01 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
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
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 arm-soc <arm@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 1, 2019 at 7:54 AM Andy Gross <agross@kernel.org> wrote:

> Qualcomm ARM Based Driver Updates for v5.4
>
> * Add AOSS QMP support
> * Various fixups for Qualcomm SCM
> * Add socinfo driver
> * Add SoC serial number attribute and associated APIs
> * Add SM8150 and SC7180 support in Qualcomm SCM
> * Fixup max processor count in SMEM
>

Pulled into arm/drivers, thanks!

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
