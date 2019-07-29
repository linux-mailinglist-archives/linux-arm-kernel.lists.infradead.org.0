Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9201F79BA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 23:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htorR2fCQ3oUx1YTl5t2k4xgw+O0v5S/xO24bxE/2yY=; b=SuVRTlmVf6M4LZ
	MZLxy6TMApl5ncSrupEarcFKskvnssu4U5yDZy7exkTD+T2xrJDuRhqvoJgAmPCmsjwhncxG3KviA
	4FSZIcxYXCaom+p82iYGntNV5cAUB1DV2+0dMGQGKyOkuYN2l6GTguxbYxU2mu792hDW694Jv8JfW
	HReaVU4ewAC4AnEJdLUTqlSD6spGSUWuPKvjGJT7WA8XZ2EJ00WWVNgl2OfEnAeFhPeh5TEL2RLxG
	/WOc4uGzdrZVC0WJOKGsJAojvP0vVOM48V+tSjnZCoXSUcYGaFNnIJdCcoS+09GRuUiscQmjU+wtO
	k4QQNinSB3vYIQvV+c4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDcs-00079w-3P; Mon, 29 Jul 2019 21:56:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDce-00079Q-9H
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 21:56:01 +0000
Received: by mail-wm1-x342.google.com with SMTP id f17so54775346wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 14:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V9J8GB0xhRh9txEG2lafqBYymsBmgmPy2F9KR/NPWds=;
 b=oN4DFXkGo5BiAvGR0K6DCAaYEbPbSFCUve3irIi2Ulp2uE/8nlxzlEVhB2Hk3ykMdh
 QgK8Ww6Mbcj5k9FS6UAd0OetuEYQ8xnZ/V4hyXdcm7jtHDnxqrO5gATYVhDyqThjO4ms
 lQQ4bPLJuumWO5s4QKgy9zbAocMuraXRW4VOc1PEQ0VF3B0iIzqqeLAbY2bg1BghVQ9T
 mhldSDLURapXKh20wwPLWPXm7M+R4zPlGHOrrg8SQVoQMfPmBE0JDnEc502rNMnX3rjp
 PiRHlolEy6Djq1tkUaTAxJI4YFaNWJhHgBvED2v2LGi7vDLg4VN6dug2nh6mrwEhLZD5
 9QEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V9J8GB0xhRh9txEG2lafqBYymsBmgmPy2F9KR/NPWds=;
 b=Wr0qhXqWPgHde4ROJ4anT8W3dpZo56q/YfFKJKYRBNVBlxVzrgCNslN5/vIGt27/YQ
 wDaoVwnYplYPMZgWUVR37IUHMzb8k7UeXR9NCJRhKa7en1b2HiwGpyquAC+rTowhYlCd
 cgNF4j20BeUzdx3tkRJDfhChYdd8n03GnjtZP1JlrQy4AeXbCuSGvOhygDJTl2UwVZK/
 zALa44IOBvFPVISIsKdMu3BG0YwDQXlG1sCVewEKNrBKHQ6s9rOYte7pnsSRVH1GDNKj
 4jl1xwYmhIRpAEd2E23vkC0W8Qr68kJqr5Ae6wQUWTN8J6ibW0ToygI8YCxsbOlsBxRY
 RbsA==
X-Gm-Message-State: APjAAAXyT5Z7q0i+DOB4JOZtQ3zOa/gNnz33wudactpSNpsyzT3pmSwl
 dvzD9KFh8T8GaETpvpn1ZRlfmo6D6fd56gk+rAQ=
X-Google-Smtp-Source: APXvYqzXFDFvzgcJuqtb/pBjZayKskb/daHPAddpC5NNx1rTiJ1Kj+2Y+VeO1PjfbiAVpdoSN7LZ5uymb/xdUIN6HK4=
X-Received: by 2002:a7b:cae9:: with SMTP id t9mr100637562wml.126.1564437358263; 
 Mon, 29 Jul 2019 14:55:58 -0700 (PDT)
MIME-Version: 1.0
References: <1547808474-19427-1-git-send-email-uli+renesas@fpond.eu>
 <1547808474-19427-3-git-send-email-uli+renesas@fpond.eu>
 <20190726091325.GA13111@vmlxhi-102.adit-jv.com>
 <20190726094724.GA14913@vmlxhi-102.adit-jv.com>
 <CAMuHMdXiOBxUDXLcL6R7jHF4DMoH=72yMkSiv-51aV7cw3my9Q@mail.gmail.com>
 <20190729113244.GA12631@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190729113244.GA12631@e121166-lin.cambridge.arm.com>
From: Eugeniu Rosca <roscaeugeniu@gmail.com>
Date: Tue, 30 Jul 2019 00:55:46 +0300
Message-ID: <CAH3KO=19vy1D1cWUpxZ1+F=dyg=10F2UhytwsLxXG2Z=OnH=fg@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: r8a7795: Add cpuidle support for CA53
 cores
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_145600_324995_7C582CAD 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (roscaeugeniu[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Wischer, Timo \(ADITG/ESM\)" <twischer@de.adit-jv.com>,
 "takeshi.kihara.df@renesas.com" <takeshi.kihara.df@renesas.com>,
 Ulrich Hecht <uli+renesas@fpond.eu>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 "dien.pham.ry@renesas.com" <dien.pham.ry@renesas.com>,
 "Maik.Scholz@de.bosch.com" <Maik.Scholz@de.bosch.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "khiem.nguyen.xt@renesas.com" <khiem.nguyen.xt@renesas.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "Dirk.Behme@de.bosch.com" <Dirk.Behme@de.bosch.com>,
 "horms@verge.net.au" <horms@verge.net.au>,
 Eugeniu Rosca <rosca.eugeniu@gmail.com>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Eugeniu Rosca <erosca@de.adit-jv.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Geert, hello Lorenzo,

Many thanks for your comments and for the willingness to help.

For your information, we've recently discovered that, with all the
findings already described being absolutely valid for the reference
targets, disabling CPUidle on the customer HW is apparently not enough
to fix the audio dropouts. We will first try to identify those
differences (both HW and SW) which keep the issue reproducible on the
customer boards. Once this is hopefully understood, we'll come back
with feedback.

This investigation also happens to overlap with my vacation. Hence I
plan to update you on this topic in 2-4 weeks from now.

Thanks again.

Best regards,
Eugeniu.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
