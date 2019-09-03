Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B935A6B77
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:30:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVeYXJaV6D6oGbfQy3So/H4Ug2PLPH9/0FaxCWQ9A/M=; b=dgoVGvk9W2FBJM
	Ed/lqa2IWXz/6HWRFdkvEXnLnKTCdKBVed9zjQMWfdeozdbzbKPlWQTVczEWdVbaSOsQ4ut9bJodO
	APIydrrau0cWDO5HOWTjvp6uthRQgmPqjdNKa6kdd64mMRkCYHv5rG4q2PIMi/dHi0hbH4r+xjNG3
	TV1utC/OyakbgD1Rh/+A6zwCY+TIYd/aE0BSEPezJK+ybebGZ/ofELWmDOnVOesrUoK1//6AlcGtl
	LUvwVz5zrnok8W0MqMujsizZAxiD3CfDcwdwcQopBUQV/k9sjf+OuOMtC103VjxXjpTE7QDdKiTCT
	6ytkRrbB9DSBG6Re78bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59p4-0006Ts-NH; Tue, 03 Sep 2019 14:30:18 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59ov-00067C-48
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:30:10 +0000
Received: by mail-qk1-f178.google.com with SMTP id x134so5980654qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 07:30:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=txdROfjUl9dM+2yPuRDkyhhvxXozqecsN8VhuY+SZ7M=;
 b=lNNmmE29Z3jbECBamVU8W/zR0YXoiwsPz+qpvgsx6DPlOEuO6Jb5KiEkWLDWsiSfnt
 LorRYyfSmaALlqAUzwNcCm1gH/Fmk+2ELO6EKh+J8x2cBOvmlAVDwX4ou/3Z1GujPMB+
 lJHHN7pR2pFHAqAVOG/OC6MwIxTZXulm/sGmKRCRvhytsJIYFrtJKkMNiW/oy2YXnR0R
 9fHx2A2CYmy5WA4Y+YW/lwLzQCRRgCLExuOrLFhQoU1TPX/CrznJ21Dn+WqhfuomMxFu
 iqrYUku2CpVgreuJeMkL3tRQY8mK3W4jXPRQEMqwAf1SM7ky389G94VZu0fCb9ZBMc3V
 WssA==
X-Gm-Message-State: APjAAAU5cN7WMdJx/GP3xXegPTchFnoClCzlte0JVkembFyEzy/30ygY
 GlftbEmBO3YAlN0Yim/KPTvPblFwTodUC0hmbJg=
X-Google-Smtp-Source: APXvYqwLjTNx47Gj2QNqFyNsIzMwL+B4ROtxwyKeybUMtTA2U06E+WJnLtr/oIupoTE/Ww1krRjNLWQNdg1l/SO1/Tg=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr33577722qka.3.1567521006053; 
 Tue, 03 Sep 2019 07:30:06 -0700 (PDT)
MIME-Version: 1.0
References: <878srdzjpj.fsf@FE-laptop>
In-Reply-To: <878srdzjpj.fsf@FE-laptop>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 16:29:49 +0200
Message-ID: <CAK8P3a1+mZ43aKg5mEU+LsAtCr5paLseYdCPv5qJ=xH3Qaufjw@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: mvebu: dt for v5.4 (#1)
To: Gregory CLEMENT <gregory.clement@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_073009_170360_113BDD09 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.178 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 12:07 PM Gregory CLEMENT
<gregory.clement@bootlin.com> wrote:

> ----------------------------------------------------------------
> mvebu dt for 5.4 (part 1)
>
>  - Disable the kirkwood RTC that doesn't work on the ts219 board
>

Pulled into arm/dt, thanks!


    Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
