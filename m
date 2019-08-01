Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14507DD5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qh/7JLEpvXsc/Ow3Bbln/W04N9i6GUoSBvvN/kPWsNU=; b=jIIYZLlEf/E3YP
	LpSXzGjo4tmAZlbvLyDVuuyB/B38As5cyIFb/eq5k4kkIukCo7O/+31JCbz+fbKxuhyNwtk5+HumG
	CD9MsEDPbn3QHuuVdegbslpYEanCGO7aR5gFvdcBnTi0QGlCEnFp9wmMikjdMLgVQgv+Rh2fq3ZK4
	j9b5W3L9iKB5eB+XbMi7tCEcNjHbXfAsvxsgDtGHvzJrV7JOKfuihb/wA5yWv+HiYq3lssKAe+y4z
	//s5XAArSq+4C+5cCgu+B81KupiuSKFITo31PUP7vMrlD498tNkoRFEqiTxpFk5uqfkID7w9rokOo
	T8X1YvtfzMZ7VRHJmS4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBiN-0007Su-69; Thu, 01 Aug 2019 14:05:55 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBiD-0007SZ-KS
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:05:47 +0000
Received: by mail-qt1-x843.google.com with SMTP id x22so65382484qtp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 07:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:content-transfer-encoding:thread-index;
 bh=B0HpJfA+L0im+NOz6C8Ku5rEryHPOLsgW5YkYUCRdrE=;
 b=iPIWxBnpmNGTcvPXCQB26geHPgxcvzesy5vMmnP0MifrlGYAFwb2E4LLuqFMXLxs4N
 ckwxbmktHTok5HI7yPnXaf1iuxSrkeoCIAEluRk6Njb0MYL4JJbtPwn/vTozRjDMhBQB
 YmT7nxZww2PpWirGfHmdgAKLGKAezkDZXDs+9F7YO7h8h1x7mB3Zzs7CJ/wdfNFLvTSA
 aUYY7ij45aE2jUykm9nxGtn8thbJ87g4Wt8wah5TT/ZkEkr8nhDIFultB0lD+wogSF0F
 xQoORDlqQ+NbpZG7JJZZRwsKKZpsncMVrvr8v8NztwyTT5v+mahJZTO3QlXHAmWRipHV
 D5UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:content-transfer-encoding:thread-index;
 bh=B0HpJfA+L0im+NOz6C8Ku5rEryHPOLsgW5YkYUCRdrE=;
 b=fXJX3gCfm+i7APiigo6Va9mI934ua3jea8d+9pXXUwAQh6KNzLXcb1i96hCdll5k37
 jTdRt2Zzpf97pGghfXP3CopHEbCbbDl+u88N/RvO6jwIOdhy6aYDyl9QqFrG6mJsz56g
 8cWtBPi3IlK2QDleIsScJAfold/JvZHrdwSVGIvxfUfdv0gplq5xHCO0SNFxz6a6e30G
 1RqjPlHswqKWXSJKPEwqHcBiZE9xFr5WQQ1sdkLxsl4oXRwJDazswuzEmOnrccmJgFxX
 XXn88GphRP9yO2d8hscwDz8e2Obqy1LkSN39RCpPW6T8yxHQoWx9YB7WL5XIKAdO7/Df
 RfSw==
X-Gm-Message-State: APjAAAWHaocBkrtGpOIkl99qJYStmC2P6zgupev1nB6PLoHzpdehDSgC
 cXLwwnCYZGC++FCJNzDAcY7GUzjv
X-Google-Smtp-Source: APXvYqxEmRzH4gWZvlZ2vdjoG6WAsSxwjWzd0Q1A6OCXWM0mo157QludxrvT2l5vQ9TRmnJojfXUhw==
X-Received: by 2002:a0c:d0fc:: with SMTP id b57mr92560209qvh.78.1564668343894; 
 Thu, 01 Aug 2019 07:05:43 -0700 (PDT)
Received: from GirolesWin7 (magopq1505w-lp140-01-70-26-203-177.dsl.bell.ca.
 [70.26.203.177])
 by smtp.gmail.com with ESMTPSA id b4sm28649361qtp.77.2019.08.01.07.05.41
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 07:05:42 -0700 (PDT)
From: "Martin Ayotte" <martinayotte@gmail.com>
To: "'Chen-Yu Tsai'" <wens@csie.org>, "'Sunil Mohan Adapa'" <sunil@medhas.org>
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
In-Reply-To: <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
Subject: RE: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
Date: Thu, 1 Aug 2019 10:05:40 -0400
Message-ID: <E9391E7989BB4725BCE9BA74449EA8A5@GirolesWin7>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdVIEsk75UVkikK+StOHJZJS6WhggwAX13XQ
X-MIMEOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_070545_674265_F2EA06C2 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martinayotte[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: 'Maxime Ripard' <maxime.ripard@bootlin.com>,
 'linux-arm-kernel' <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If my SOB could help here, I don't mind since I've done the commit more than
a year ago for Armbian ...


Signed-off-by: Martin Ayotte <martinayotte@gmai.com>
Tested-by: Martin Ayotte <martinayotte@gmai.com>


-----Message d'origine-----
De=A0: Chen-Yu Tsai [mailto:wens@csie.org] =

Envoy=E9=A0: Wednesday, July 31, 2019 10:42 PM
=C0=A0: Sunil Mohan Adapa
Cc=A0: linux-arm-kernel; Maxime Ripard; Martin Ayotte
Objet=A0: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
A64-OLinuXino

On Sun, Jul 28, 2019 at 5:03 AM Sunil Mohan Adapa <sunil@medhas.org> wrote:
>
> A64-OLinuXino board has three variants that have eMMC support. Add support
for
> eMMC on boards that have it.
>
> This patch has been tested on A64-OLinuXino-1Ge16GW with Linux 5.0 from
Debain.
> Basic benchmarks using Flexible IO Tester show reasonable performance from
the
> eMMC.
>
> eMMC - Random Write: 23.1MiB/s
> eMMC - Sequential Write: 74.5MiB/s
> SD Card - Random Write: 1690KiB/s
> SD Card - Sequential Write: 11.0MiB/s
>
> v2: Fix descriptions for VCC and VCCQ.
>
> [sunil@medhas.org Fix descriptions for VCC and VCCQ]
> Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
> Tested-by: Sunil Mohan Adapa <sunil@medhas.org>
>
> From: Martin Ayotte <martinayotte@gmail.com>
> Link:
https://github.com/armbian/build/commit/174953de1eb09e6aa1ef7075066b573dba62
5398

Thanks. The patch looks good overall. The authorship is a little confusing
though. If it was initially done by Martin (CC-ed), then he should be the
author, and we should get his Signed-off-by if possible.

ChenYu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
